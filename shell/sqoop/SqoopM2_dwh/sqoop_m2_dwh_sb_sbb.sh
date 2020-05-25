#!/bin/bash
#sql=" SELECT SB.NSRSBH,SB.NSRMC,SB.SKSSQQ,SB.SKSSQZ,YB.JXSEZC FROM HX_SB.SB_SBB SB LEFT JOIN HX_SB.SB_ZZS_YBNSR YB ON YB.SBUUID = SB.SBUUID WHERE SB.YZPZZL_DM = 'BDA0610606' AND SB.SKSSQQ = to_date('$1', 'yyyy-mm-dd') AND SB.SKSSQZ = to_date('$2', 'yyyy-mm-dd') AND SB.ZFBZ_1 = 'N' AND SB.GZLX_DM_1 IN ('1', '5', '4') AND YB.EWBLXH IN (1) and  \$CONDITIONS"
#map=SKSSQQ=STRING,SKSSQZ=STRING
#bash ${UtilPath}/SqoopJdbc_M2_dwh.sh ${m2_dwh_username} m2_dwh SB_SBB "$sql" $map

#sql=" SELECT SB.NSRSBH,SB.NSRMC,SB.SKSSQQ,SB.SKSSQZ,YB.JXSEZC FROM HX_SB.SB_SBB SB LEFT JOIN HX_SB.SB_ZZS_YBNSR YB ON YB.SBUUID = SB.SBUUID WHERE SB.YZPZZL_DM = 'BDA0610606' AND SB.SKSSQQ = to_date('$1', 'yyyy-mm-dd') AND SB.SKSSQZ = to_date('$2', 'yyyy-mm-dd') AND SB.ZFBZ_1 = 'N' AND SB.GZLX_DM_1 IN ('1', '5', '4') AND YB.EWBLXH IN (1) and  \$CONDITIONS"
sql=" SELECT SB.NSRSBH,SB.NSRMC,SB.SKSSQQ,SB.SKSSQZ,YB.JXSEZC FROM HX_SB.SB_SBB SB LEFT JOIN HX_SB.SB_ZZS_YBNSR YB ON YB.SBUUID = SB.SBUUID WHERE SB.YZPZZL_DM = 'BDA0610606' AND SB.SKSSQQ = to_date('$1', 'yyyy-mm-dd') AND SB.ZFBZ_1 = 'N' AND SB.GZLX_DM_1 IN ('1', '5', '4') AND YB.EWBLXH IN (1) and  \$CONDITIONS"

map=SKSSQQ=STRING,SKSSQZ=STRING
bash ${UtilPath}/SqoopJdbc_M2_dwh.sh ${m2_dwh_username} m2_dwh SB_SBB "$sql" $map

