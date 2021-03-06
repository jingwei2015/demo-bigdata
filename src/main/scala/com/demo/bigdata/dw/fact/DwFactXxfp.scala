package com.demo.bigdata.dw.fact

import com.demo.bigdata.utils._


/**
 * DW销项发票实时表 从etl.etl_xxfp抽取数据到dw.dw_fact_xxfp
 * @author Liruiming
 */
object DwFactXxfp {
  def main(args: Array[String]){
  val task = LogUtils.start("dwFactXxfp")
  try {
    val spark = SparkUtils.init("dwFactXxfp")
    UdfRegister.getDateKey(spark)
    UdfRegister.isFpdk(spark)
    UdfRegister.getTimestamp(spark)
    
    val result = spark.sql("SELECT D.XXFP_ID XXFP_KEY,D.GF_SWJG_DM GF_SWJG_KEY,D.XF_SWJG_DM XF_SWJG_KEY, "+
	      " getDateKey(D.KPRQ) DATE_KEY,D.GF_NSRSBH GF_NSR_KEY,D.XF_NSRSBH XF_NSR_KEY,"+
        " isFpdk(D.XF_NSRSBH) DKBZ,D.FP_LB,D.JE,D.SL,D.SE,TRIM(D.ZFBZ) ZFBZ,D.XF_NSRMC,"+
        " D.GF_NSRMC,getTimestamp(D.KPRQ) KPRQ,D.XXFP_ID,D.FPDM,D.FPHM,getTimestamp(D.BSSJ) BSSJ,"+
        " D.XF_NSRSBH,D.GF_NSRSBH,D.SKM,D.SHRSBH,D.SHRMC,D.FHRSBH,D.FHRMC,D.QYD,D.SKPH,D.JSHJ,D.CZCH,"+
        " D.CCDW,D.YSHWXX,D.BZ,D.GF_SWJG_DM,D.XF_SWJG_DM,D.TSPZBZ "+
        " FROM etl.etl_xxfp D WHERE (TRIM(D.ZFBZ)='N' or D.ZFBZ is null)").repartition(3)
    DataFrameUtils.saveOverwrite(result, "dw", "dw_fact_xxfp")
        
    //将数据存放到hdfs 供外部表读取
    val resultTemp = spark.sql("select xxfp_key,gf_swjg_key,xf_swjg_key,date_key,gf_nsr_key,"+
        " xf_nsr_key,fp_lb,je,se,sl,zfbz,xf_nsrmc,gf_nsrmc,kprq,xxfp_id,fpdm,fphm,bssj,"+
        " xf_nsrsbh,gf_nsrsbh,skm,shrsbh,shrmc,fhrsbh,fhrmc,qyd,skph,jshj,czch,ccdw,yshwxx,bz "+
        " from dw.dw_fact_xxfp")
	  PartitionUtils.saveToHdfsPath(resultTemp, "dw_fact_xxfp_external")

    LogUtils.end(task)
    } catch { case ex:Exception  => LogUtils.error(task, ex) }
  }    
  

}