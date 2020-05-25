insert overwrite table yh_dw.dw_jxfp
select
        concat(nvl(t.jxfp_id,''),"x",nvl(d.sjswjg_dm,''),'') id,
        nvl(t.fp_lb,'') fplb,
        nvl(d3.fp_lb_mc,'') fplbmc,
        nvl(t.fpdm,'') fpdm,
        nvl(t.fphm,'') fphm,
        nvl(t.rzrq,'') rzrq,
        nvl(t.kprq,'') kprq,
        nvl(t.gf_nsrsbh,'') gfnsrsbh,
        nvl(t.gf_nsrmc,'') gfnsrmc,
        nvl(t.xf_nsrsbh,'') xfnsrsbh,
        nvl(t.xf_nsrmc,'') xfnsrmc,
        nvl(t.je,'') je,
        nvl(t.se,'') se,
        nvl(d.xjswjg_dm,'') gfswjgdm,
        nvl(t.skm,'') skm,
        nvl(d.xjswjg_mc,'') gfswjgmc,
        nvl(d2.fddbr_mc,'') fddbrmc,
        nvl(d2.frzjhm,'') frzjhm,
        nvl(d2.cwlxr,'') cwlxr,
        nvl(d2.scjydz,'') scjydz,
        nvl(t.jxfp_id,'') jxfpid,
        nvl(d.sjswjg_dm,'') sjswjgdm,
        nvl(t.date_key,'') datekey,
        nvl(h.hy_dm,'') hydm,
        nvl(h.mldm,'') mldm,
        nvl(d2.nsrmc,'') nsrmc,
        nvl(d2.nsrsbh,'') nsrsbh,
        nvl(d.swjglevel,'') swjglevel,
        nvl(t.dkbz,'') dkbz
from    dw.dw_fact_jxfp t
join    dw.dw_dim_swjg_jc d on t.gf_swjg_key = d.xjswjg_key
join    dw.dw_fplb d3 on t.fp_lb = d3.fp_lb
join    dw.dw_dm_nsr d2 on t.gf_nsr_key = d2.nsr_key
join    dw.dw_dim_hy h on h.hy_key = d2.hy_key 
;


insert overwrite table yh_dw.dw_jxfpmx
select  concat(nvl(t.jxfpmx_key,''),"x",nvl(hash(t.wp_mc),''),"x",nvl(hash(t.wp_xh),''),"x",nvl(t.wp_dw,''),"x",nvl(d.sjswjg_dm,'')) id,
        nvl(t.jxfp_id,'') jxfpid,
        nvl(t.fp_lb,'') fplb,
        nvl(d3.fp_lb_mc,'') fplbmc,
        nvl(t.fpdm,'') fpdm,
        nvl(t.fphm,'') fphm,
        nvl(t.rzrq,'') rzrq,
        nvl(t.kprq,'') kprq,
        nvl(t.gf_nsrsbh,'') gfnsrsbh,
        nvl(t.gf_nsrmc,'') gfnsrmc,
        nvl(t.xf_nsrsbh,'') xfnsrsbh,
        nvl(t.xf_nsrmc,'') xfnsrmc,
        nvl(t.wp_mc,'') wpmc,
        nvl(t.wp_xh,'') wpxh,
        nvl(t.wp_dw,'') wpdw,
        nvl(t.wp_sl,'') wpsl,
        nvl(t.dj,'') dj,
        nvl(t.je,'') je,
        nvl(t.sl,'') sl,
        nvl(t.se,'') se,
        nvl(d.xjswjg_dm,'') gfswjgdm,
        nvl(d.xjswjg_mc,'') gfswjgmc,
        nvl(t.gf_nsr_key,'') gfnsrkey,
        nvl(d2.fddbr_mc,'') fddbrmc,
        nvl(d2.frzjhm,'') frzjhm,
        nvl(d2.cwlxr,'') cwlxr,
        nvl(d2.scjydz,'') scjydz,
        nvl(d2.nsrmc,'') nsrmc,
        nvl(d.sjswjg_dm,'') sjswjgdm,
        nvl(t.date_key,'') datekey,
        nvl(h.hy_dm,'') hydm,
        nvl(h.mldm,'') mldm,
        nvl(d.swjglevel,'') swjglevel,
        nvl(t.qdbz,'') qdbz,
        nvl(t.dkbz,'') dkbz
from    dw.dw_fact_jxfpmx t
join    dw.dw_fplb d3 on t.fp_lb = d3.fp_lb
join    dw.dw_dm_nsr d2 on t.gf_nsr_key = d2.nsr_key
join    dw.dw_dim_region d4 on d2.region_key = d4.region_key
join    dw.dw_dim_swjg_jc d on d.xjswjg_key = d2.swjg_key
join    dw.dw_dim_hy h on h.hy_key = d2.hy_key
;




insert overwrite table yh_dw.dw_xxfp
select
        concat(nvl(t.xxfp_id,''),"x",nvl(d.sjswjg_dm,'')) id,
        nvl(t.xxfp_id,'') xxfpid,
        nvl(t.fp_lb,'') fplb,
        nvl(d3.fp_lb_mc,'') fplbmc,
        nvl(t.fpdm,'') fpdm,
        nvl(t.fphm,'') fphm,
        nvl(t.kprq,'') kprq,
        nvl(t.gf_nsrsbh,'') gfnsrsbh,
        nvl(t.gf_nsrmc,'') gfnsrmc,
        nvl(t.xf_nsrsbh,'') xfnsrsbh,
        nvl(t.xf_nsrmc,'') xfnsrmc,
        nvl(t.je,'') je,
        nvl(t.se,'') se,
        nvl(d.xjswjg_dm,'') xjswjgdm,
        nvl(d.xjswjg_mc,'') xjswjgmc,
        nvl(d2.fddbr_mc,'') fddbrmc,
        nvl(d2.frzjhm,'') frzjhm,
        nvl(d2.cwlxr,'') cwlxr,
        nvl(d2.scjydz,'') scjydz,
        nvl(d2.nsrsbh,'') nsrsbh,
        nvl(d.sjswjg_dm,'') sjswjgdm,
        nvl(t.date_key,'') datekey,
        nvl(h.hy_dm,'') hydm,
        nvl(h.mldm,'') mldm,
        nvl(d.swjglevel,'') swjglevel,
        nvl(t.dkbz,'') dkbz
from    dw.dw_fact_xxfp t
join    dw.dw_dm_nsr d2 on t.xf_nsr_key = d2.nsr_key
join    dw.dw_dim_swjg_jc d on d.xjswjg_key = d2.swjg_key
join    dw.dw_fplb d3 on t.fp_lb = d3.fp_lb
join    dw.dw_dim_region d4 on d2.region_key = d4.region_key
join    dw.dw_dim_hy h on h.hy_key = d2.hy_key 
;


insert overwrite table yh_dw.dw_xxfpmx
select
        concat(nvl(t.xxfpmx_key,''),"x",nvl(hash(t.wp_mc),''),"x",nvl(hash(t.wp_xh),''),"x",nvl(t.wp_dw,''),"x",nvl(d.sjswjg_dm,'')) id,
        nvl(t.fp_lb,'') fplb,
        nvl(d3.fp_lb_mc,'') fplbmc,
        nvl(t.fpdm,'') fpdm,
        nvl(t.fphm,'') fphm,
        nvl(t.kprq,'') kprq,
        nvl(t.gf_nsrsbh,'') gfnsrsbh,
        nvl(t.gf_nsrmc,'') gfnsrmc,
        nvl(t.xf_nsrsbh,'') xfnsrsbh,
        nvl(t.xf_nsrmc,'') xfnsrmc,
        nvl(t.wp_mc,'') wpmc,
        nvl(t.wp_xh,'') wpxh,
        nvl(t.wp_dw,'') wpdw,
        nvl(t.wp_sl,'') wpsl,
        nvl(t.dj,'') dj,
        nvl(t.je,'') je,
        nvl(t.sl,'') sl,
        nvl(t.se,'') se,
        nvl(d.xjswjg_dm,'') xjswjgdm,
        nvl(d.xjswjg_mc,'') xjswjgmc,
        nvl(d2.fddbr_mc,'') fddbrmc,
        nvl(d2.frzjhm,'') frzjhm,
        nvl(d2.cwlxr,'') cwlxr,
        nvl(d2.scjydz,'') scjydz,
        nvl(t.xxfp_id,'') xxfpid,
        nvl(d2.nsrsbh,'') nsrsbh,
        nvl(d2.nsrmc,'') nsrmc,
        nvl(d.sjswjg_dm,'') sjswjgdm,
        nvl(t.date_key,'') datekey,
        nvl(h.hy_dm,'') hydm,
        nvl(h.mldm,'') mldm,
        nvl(d.swjglevel,'') swjglevel,
        nvl(t.qdbz,'') qdbz,
        nvl(t.dkbz,'') dkbz
from    dw.dw_fact_xxfpmx t
join    dw.dw_dm_nsr d2 on t.xf_nsr_key = d2.nsr_key
join    dw.dw_dim_swjg_jc d on d.xjswjg_key = d2.swjg_key
join    dw.dw_fplb d3 on t.fp_lb = d3.fp_lb
join    dw.dw_dim_region d4 on d2.region_key = d4.region_key
join    dw.dw_dim_hy h on h.hy_key = d2.hy_key
;


insert overwrite table yh_dw.dw_fplyd
select
        concat(nvl(t.jxfp_id,''),"x",nvl(d.sjswjg_dm,'')) id,
        nvl(t.fp_lb,'') fplb,
        nvl(d3.fp_lb_mc,'') fplbmc,
        nvl(t.fpdm,'') fpdm,
        nvl(t.fphm,'') fphm,
        nvl(t.rzrq,'') rzrq,
        nvl(t.kprq,'') kprq,
        nvl(t.gf_nsrsbh,'') gfnsrsbh,
        nvl(t.gf_nsrmc,'') gfnsrmc,
        nvl(t.xf_nsrsbh,'') xfnsrsbh,
        nvl(t.xf_nsrmc,'') xfnsrmc,
        nvl(round(t.je,2),'') je,
        nvl(round(t.se,2),'') se,
        nvl(d.xjswjg_dm,'') gfswjgdm,
        nvl(d.xjswjg_mc,'') gfswjgmc,
        nvl(d2.fddbr_mc,'') fddbrmc,
        nvl(d2.frzjhm,'') frzjhm,
        nvl(d2.cwlxr,'') cwlxr,
        nvl(d2.scjydz,'') scjydz,
        nvl(t.jxfp_id,'') jxfpid,
        nvl(d.sjswjg_dm,'') sjswjgdm,
        nvl(t.date_key,'') datekey,
        nvl(h.hy_dm,'') hydm,
        nvl(h.mldm,'') mldm,
        nvl(d4.bjdm,'') dqdm
from    dw.dw_fact_jxfp t
join  dw.dw_dm_nsr d2 on t.xf_nsr_key = d2.nsr_key
join  dw.dw_fplb d3 on t.fp_lb = d3.fp_lb
join  dw.dw_dim_region d4 on d2.region_key = d4.region_key
join  dw.dw_dm_nsr d6 on t.gf_nsr_key = d6.nsr_key
join  dw.dw_dim_swjg_jc d on d.xjswjg_key = d6.swjg_key
join  dw.dw_dim_hy h on h.hy_key = d6.hy_key
;


insert overwrite table yh_dw.dw_fplyd_mx
select  concat(nvl(t.jxfpmx_key,''),"x",nvl(hash(t.wp_mc),''),"x",nvl(hash(t.wp_xh),''),"x",nvl(t.wp_dw,''),"x",nvl(d.sjswjg_dm,'')) id,
        nvl(t.fp_lb,'') fplb,
        nvl(d3.fp_lb_mc,'') fplbmc,
        nvl(t.fpdm,'') fpdm,
        nvl(t.fphm,'') fphm,
        nvl(t.rzrq,'') rzrq,
        nvl(t.kprq,'') kprq,
        nvl(t.gf_nsrsbh ,'') gfnsrsbh,
        nvl(t.gf_nsrmc ,'') gfnsrmc,
        nvl(t.xf_nsrsbh ,'') xfnsrsbh,
        nvl(t.xf_nsrmc ,'') xfnsrmc,
        nvl(t.wp_mc ,'') wpmc,
        nvl(t.wp_xh ,'') wpxh,
        nvl(t.wp_dw ,'') wpdw,
        nvl(t.wp_sl ,'') wpsl,
        nvl(t.dj,'') dj,
        nvl(t.je,'') je,
        nvl(t.sl,'') sl,
        nvl(t.se,'') se,
        nvl(d.xjswjg_dm ,'') gfswjgdm,
        nvl(d.xjswjg_mc ,'') gfswjgmc,
        nvl(t.gf_nsr_key,'') gfnsrkey,
        nvl(d2.fddbr_mc,'') fddbrmc,
        nvl(d2.frzjhm,'') frzjhm,
        nvl(d2.cwlxr,'') cwlxr,
        nvl(d2.scjydz,'') scjydz,
        nvl(d.sjswjg_dm,'') sjswjgdm,
        nvl(t.date_key,'') datekey,
        nvl(t.jxfp_id,'') jxfpid,
        nvl(h.hy_dm,'') hydm,
        nvl(h.mldm,'') mldm,
        nvl(d4.bjdm,'') dqdm,
        nvl(t.qdbz,'') qdbz
from    dw.dw_fact_jxfpmx t
join    dw.dw_dm_nsr d6 on t.gf_nsr_key = d6.nsr_key
join    dw.dw_dim_swjg_jc d on d.xjswjg_key = d6.swjg_key
join    dw.dw_fplb d3 on t.fp_lb = d3.fp_lb
join    dw.dw_dm_nsr d2 on t.xf_nsr_key = d2.nsr_key
join    dw.dw_dim_region d4 on d2.region_key = d4.region_key
join    dw.dw_dim_hy h on h.hy_key = d6.hy_key
;



insert overwrite table yh_dw.dw_fplxd
select
        concat(nvl(t.xxfp_id,''),"x",nvl(d.sjswjg_dm,'')) id,
        nvl(t.fp_lb,'') fplb,
        nvl(d3.fp_lb_mc,'') fplbmc,
        nvl(t.fpdm,'') fpdm,
        nvl(t.fphm,'') fphm,
        nvl(t.kprq,'') kprq,
        nvl(t.gf_nsrsbh,'') gfnsrsbh,
        nvl(t.gf_nsrmc,'') gfnsrmc,
        nvl(t.xf_nsrsbh,'') xfnsrsbh,
        nvl(t.xf_nsrmc,'') xfnsrmc,
        nvl(t.je,'') je,
        nvl(t.se,'') se,
        nvl(d.xjswjg_dm,'') xjswjgdm,
        nvl(d.xjswjg_mc,'') xjswjgmc,
        nvl(d2.fddbr_mc,'') fddbrmc,
        nvl(d2.frzjhm,'') frzjhm,
        nvl(d2.cwlxr,'') cwlxr,
        nvl(d2.scjydz,'') scjydz,
        nvl(t.xxfp_id,'') xxfpid,
        nvl(d.sjswjg_dm,'') sjswjgdm,
        nvl(d4.bjdm,'') dqdm,
        nvl(t.date_key ,'') datekey,
        nvl(h.hy_dm,'') hydm,
        nvl(h.mldm,'') mldm
from    dw.dw_fact_xxfp t
join    dw.dw_dm_nsr d2 on t.gf_nsr_key = d2.nsr_key
join    dw.dw_fplb d3 on t.fp_lb = d3.fp_lb
join    dw.dw_dim_region d4 on d2.region_key = d4.region_key
join    dw.dw_dm_nsr d6 on t.xf_nsr_key = d6.nsr_key
join    dw.dw_dim_swjg_jc d on d.xjswjg_key = d6.swjg_key
join    dw.dw_dim_hy h on h.hy_key = d6.hy_key
;



insert overwrite table yh_dw.dw_fplxd_mx
select  concat(nvl(t.xxfpmx_key,''),"x",nvl(hash(t.wp_mc),''),"x",nvl(hash(t.wp_xh),''),"x",nvl(t.wp_dw,''),"x",nvl(d.sjswjg_dm,'')) id,
        nvl(t.fp_lb,'') fplb,
        nvl(d3.fp_lb_mc,'') fplbmc,
        nvl(t.fpdm,'') fpdm,
        nvl(t.fphm,'') fphm,
        nvl(t.kprq,'') kprq,
        nvl(t.gf_nsrsbh,'') gfnsrsbh,
        nvl(t.gf_nsrmc,'') gfnsrmc,
        nvl(t.xf_nsrsbh,'') xfnsrsbh,
        nvl(t.xf_nsrmc,'') xfnsrmc,
        nvl(t.wp_mc,'') wpmc,
        nvl(t.wp_xh,'') wpxh,
        nvl(t.wp_dw,'') wpdw,
        nvl(t.wp_sl,'') wpsl,
        nvl(t.dj,'') dj,
        nvl(t.je,'') je,
        nvl(t.sl,'') sl,
        nvl(t.se,'') se,
        nvl(d.xjswjg_dm,'') xjswjgdm,
        nvl(d.xjswjg_mc,'') xjswjgmc,
        nvl(d2.fddbr_mc,'') fddbrmc,
        nvl(d2.frzjhm,'') frzjhm,
        nvl(d2.cwlxr,'') cwlxr,
        nvl(d2.scjydz,'') scjydz,
        nvl(t.xxfp_id,'') xxfpid,
        nvl(d.sjswjg_dm,'') sjswjgdm,
        nvl(t.date_key,'')  datekey,
        nvl(d4.bjdm,'') dqdm,
        nvl(h.hy_dm,'') hydm,
        nvl(h.mldm,'')  mldm,
        nvl(t.qdbz,'') qdbz
from    dw.dw_fact_xxfpmx t
join    dw.dw_dm_nsr d2 on t.gf_nsr_key = d2.nsr_key
join    dw.dw_fplb d3 on t.fp_lb = d3.fp_lb
join    dw.dw_dim_region d4 on d2.region_key = d4.region_key
join    dw.dw_dm_nsr d6 on t.xf_nsr_key = d6.nsr_key
join    dw.dw_dim_swjg_jc d on d.xjswjg_key = d6.swjg_key
join    dw.dw_dim_hy h on h.hy_key = d6.hy_key
;

insert overwrite table yh_dw.dw_hwl_jx
select
        concat(nvl(dw.nsrsbh,''),'x',nvl(t.date_key,''),'x',nvl(t.fp_lb,''),'x',nvl(t.wp_mc,''),'x',nvl(t.wp_dw,'')) id ,
        nvl(t.wp_mc,'') wpmc,
        nvl(round(sum(t.je), 2),'') je,
        nvl(round(sum(t.se), 2),'') se,
        nvl(round(sum(t.wp_sl), 2),'') wp_sl,
        nvl(sum(t.fpfs),'') fpfs,
        nvl(t.fp_lb,'') fplb,
        nvl(max(d.fp_lb_mc),'') fplbmc,
        nvl(t.wp_dw,'') wpdw,
        nvl(dw.nsrsbh,'') nsrsbh,
        nvl(t.date_key,'') datekey
from    ( select * from dw_bak.dw_agg_jxfx_wp where datekey = ${hivevar:datekey} ) t
join    dw.dw_fplb d on t.fp_lb = d.fp_lb
join    dw.dw_dm_nsr dw on t.gf_nsr_key = dw.nsr_key
group by t.wp_mc, t.fp_lb, t.wp_dw, dw.nsrsbh, t.date_key
;

insert overwrite table yh_dw.dw_hwl_xx
select
        concat(nvl(dw.nsrsbh,''),'x',nvl(t.date_key,''),'x',nvl(t.fp_lb,''),'x',nvl(t.wp_mc,''),'x',nvl(t.wp_dw,'')) id ,
        nvl(t.wp_mc,'') wpmc,
        nvl(round(sum(t.je), 2),'') je,
        nvl(round(sum(t.se), 2),'') se,
        nvl(round(sum(t.wp_sl), 2),'') wp_sl,
        nvl(sum(t.fpfs),'') fpfs,
        nvl(t.fp_lb,'') fplb,
        nvl(max(d.fp_lb_mc),'') fplbmc,
        nvl(t.wp_dw,'') wpdw,
        nvl(dw.nsrsbh,'') nsrsbh,
        nvl(t.date_key,'') datekey
from    ( select * from dw_bak.dw_agg_xxfx_wp where datekey = ${hivevar:datekey} ) t
join    dw.dw_fplb d on t.fp_lb = d.fp_lb
join    dw.dw_dm_nsr dw on t.xf_nsr_key = dw.nsr_key
group by t.wp_mc, t.fp_lb, t.wp_dw, dw.nsrsbh, t.date_key
;


insert overwrite table yh_dw.dw_jxxcy_jx
select
        concat(nvl(dw.nsrsbh,''),'x',nvl(t.date_key,''),'x',nvl(t.fp_lb,''),'x',nvl(t.wp_mc,''),'x',nvl(t.wp_dw,'')) id ,
        nvl(t.wp_mc,'') wpmc,
        nvl(round(sum(t.je), 2),'') je,
        nvl(round(sum(t.se), 2),'') se,
        nvl(round(sum(t.wp_sl), 2),'') wp_sl,
        nvl(sum(t.fpfs),'') fpfs,
        nvl(t.fp_lb,'') fplb,
        nvl(max(d.fp_lb_mc),'') fplbmc,
        nvl(t.wp_dw,'') wpdw,
        nvl(dw.nsrsbh,'') nsrsbh,
        nvl(t.date_key,'') datekey
from    ( select * from dw_bak.dw_agg_jxfx_wp_twelve where datekey = ${hivevar:datekey} ) t
join    dw.dw_fplb d on t.fp_lb = d.fp_lb
join    dw.dw_dm_nsr dw on t.gf_nsr_key = dw.nsr_key
group by t.wp_mc, t.fp_lb, t.wp_dw, dw.nsrsbh, t.date_key
;

insert overwrite table yh_dw.dw_jxxcy_xx
select
        concat(nvl(dw.nsrsbh,''),'x',nvl(t.date_key,''),'x',nvl(t.fp_lb,''),'x',nvl(t.wp_mc,''),'x',nvl(t.wp_dw,'')) id ,
        nvl(t.wp_mc,'') wpmc,
        nvl(round(sum(t.je), 2),'') je,
        nvl(round(sum(t.se), 2),'') se,
        nvl(round(sum(t.wp_sl), 2),'') wp_sl,
        nvl(sum(t.fpfs),'') fpfs,
        nvl(t.fp_lb,'') fplb,
        nvl(max(d.fp_lb_mc),'') fplbmc,
        nvl(t.wp_dw,'') wpdw,
        nvl(dw.nsrsbh,'') nsrsbh,
        nvl(t.date_key,'') datekey
from    ( select * from dw_bak.dw_agg_xxfx_wp_twelve where datekey = ${hivevar:datekey} ) t
join    dw.dw_fplb d on t.fp_lb = d.fp_lb
join    dw.dw_dm_nsr dw on t.xf_nsr_key = dw.nsr_key
group by t.wp_mc, t.fp_lb, t.wp_dw, dw.nsrsbh, t.date_key
;

-- insert overwrite table yh_dw.dw_hwl_jx
-- select
        -- concat(nvl(dw.nsrsbh,''),'x',nvl(t.date_key,''),'x',nvl(t.fp_lb,''),'x',nvl(hash(t.wp_mc),''),'x',nvl(t.wp_dw,''),'x',nvl(round(sum(t.je), 2),''),'x',nvl(round(sum(t.se), 2),'')) id ,
        -- nvl(t.wp_mc,'') wpmc,
        -- nvl(round(sum(t.je), 2),'') je,
        -- nvl(round(sum(t.se), 2),'') se,
        -- nvl(sum(t.fpfs),'') fpfs,
        -- nvl(t.fp_lb,'') fplb,
        -- nvl(max(d.fp_lb_mc),'') fplbmc,
        -- nvl(t.wp_dw,'') wpdw,
        -- nvl(dw.nsrsbh,'') nsrsbh,
        -- nvl(t.date_key,'') datekey
-- from    dw.dw_agg_jxfx_wp t
-- join    dw.dw_fplb d on t.fp_lb = d.fp_lb
-- join    dw.dw_dm_nsr dw on t.gf_nsr_key = dw.nsr_key
-- group by t.wp_mc, t.fp_lb, t.wp_dw, dw.nsrsbh, t.date_key
-- ;

-- insert overwrite table yh_dw.dw_hwl_xx
-- select
        -- concat(nvl(dw.nsrsbh,''),'x',nvl(t.date_key,''),'x',nvl(t.fp_lb,''),'x',nvl(hash(t.wp_mc),''),'x',nvl(t.wp_dw,''),'x',nvl(round(sum(t.je), 2),''),'x',nvl(round(sum(t.se), 2),'')) id ,
        -- nvl(t.wp_mc,'') wpmc,
        -- nvl(round(sum(t.je), 2),'') je,
        -- nvl(round(sum(t.se), 2),'') se,
        -- nvl(sum(t.fpfs),'') fpfs,
        -- nvl(t.fp_lb,'') fplb,
        -- nvl(max(d.fp_lb_mc),'') fplbmc,
        -- nvl(t.wp_dw,'') wpdw,
        -- nvl(dw.nsrsbh,'') nsrsbh,
        -- nvl(t.date_key,'') datekey
-- from    dw.dw_agg_xxfx_wp t
-- join    dw.dw_fplb d on t.fp_lb = d.fp_lb
-- join    dw.dw_dm_nsr dw on t.xf_nsr_key = dw.nsr_key
-- group by t.wp_mc, t.fp_lb, t.wp_dw, dw.nsrsbh, t.date_key
-- ;

-- insert overwrite table yh_dw.dw_jxxcy_jx
-- select
        -- concat(nvl(dw.nsrsbh,''),'x',nvl(t.date_key,''),'x',nvl(t.fp_lb,''),'x',nvl(hash(t.wp_mc),''),'x',nvl(t.wp_dw,''),'x',nvl(round(sum(t.je), 2),''),'x',nvl(round(sum(t.se), 2),'')) id ,
        -- nvl(t.wp_mc,'') wpmc,
        -- nvl(round(sum(t.je), 2),'') je,
        -- nvl(round(sum(t.se), 2),'') se,
        -- nvl(sum(t.fpfs),'') fpfs,
        -- nvl(t.fp_lb,'') fplb,
        -- nvl(max(d.fp_lb_mc),'') fplbmc,
        -- nvl(t.wp_dw,'') wpdw,
        -- nvl(dw.nsrsbh,'') nsrsbh,
        -- nvl(t.date_key,'') datekey
-- from    dw.dw_agg_jxfx_wp_twelve t
-- join    dw.dw_fplb d on t.fp_lb = d.fp_lb
-- join    dw.dw_dm_nsr dw on t.gf_nsr_key = dw.nsr_key
-- group by t.wp_mc, t.fp_lb, t.wp_dw, dw.nsrsbh, t.date_key
-- ;

-- insert overwrite table yh_dw.dw_jxxcy_xx
-- select
        -- concat(nvl(dw.nsrsbh,''),'x',nvl(t.date_key,''),'x',nvl(t.fp_lb,''),'x',nvl(hash(t.wp_mc),''),'x',nvl(t.wp_dw,''),'x',nvl(round(sum(t.je), 2),''),'x',nvl(round(sum(t.se), 2),'')) id ,
        -- nvl(t.wp_mc,'') wpmc,
        -- nvl(round(sum(t.je), 2),'') je,
        -- nvl(round(sum(t.se), 2),'') se,
        -- nvl(sum(t.fpfs),'') fpfs,
        -- nvl(t.fp_lb,'') fplb,
        -- nvl(max(d.fp_lb_mc),'') fplbmc,
        -- nvl(t.wp_dw,'') wpdw,
        -- nvl(dw.nsrsbh,'') nsrsbh,
        -- nvl(t.date_key,'') datekey
-- from    dw.dw_agg_xxfx_wp_twelve t
-- join    dw.dw_fplb d on t.fp_lb = d.fp_lb
-- join    dw.dw_dm_nsr dw on t.xf_nsr_key = dw.nsr_key
-- group by t.wp_mc, t.fp_lb, t.wp_dw, dw.nsrsbh, t.date_key
-- ;

insert overwrite table yh_dw.dw_zgkpxe
select
        nvl(d3.xxfp_id ,'')id,
        nvl(a.fp_lb,'') fplb,
        nvl(b.fp_lb_mc,'') fplbmc,
        nvl(a.fpdm,'') fpdm,
        nvl(a.fphm,'') fphm,
        nvl(a.kprq,'') kprq,
        nvl(a.gf_nsrsbh,'') gfnsrsbh,
        nvl(a.gf_nsrmc,'') gfnsrmc,
        nvl(a.xf_nsrsbh,'') xfnsrsbh,
        nvl(a.xf_nsrmc,'') xfnsrmc,
        nvl(a.je,'') je,
        nvl(a.se,'') se,
        nvl(d2.fddbr_mc,'') fddbrmc,
        nvl(d2.frzjhm,'') frzjhm,
        nvl(d2.cwlxr,'') cwlxr,
        nvl(d2.scjydz,'') scjydz,
        nvl(d3.xxfp_id ,'') xxfpid,
        nvl(a.date_key,'') datekey
from    dw.dw_agg_nsr_dbkj_day_fp a
join    dw.dw_fplb b on a.fp_lb = b.fp_lb
join    dw.dw_dm_nsr d2 on a.xf_nsrsbh = d2.nsrsbh
join    dw.dw_fact_xxfp d3 on d3.fpdm = a.fpdm  and d3.fphm = a.fphm
;


insert overwrite table yh_dw.dw_zgkpxe_mx
select
        concat(nvl(d3.xxfpmx_key,'')) id ,
        nvl(a.fp_lb ,'')  fplb,
        nvl(b.fp_lb_mc ,'')  fplbmc,
        nvl(a.fpdm,'') fpdm,
        nvl(a.fphm,'') fphm,
        nvl(a.kprq,'') kprq,
        nvl(a.gf_nsrsbh ,'')  gfnsrsbh,
        nvl(a.gf_nsrmc ,'') gfnsrmc,
        nvl(a.xf_nsrsbh ,'')  xfnsrsbh,
        nvl(a.xf_nsrmc ,'')  xfnsrmc,
        nvl(d3.je,'') je,
        nvl(d3.se,'') se,
        nvl(d2.fddbr_mc ,'') fddbrmc,
        nvl(d2.frzjhm,'') frzjhm,
        nvl(d2.cwlxr,'') cwlxr,
        nvl(d2.scjydz,'') scjydz,
        nvl(d3.wp_mc,'') wpmc,
        nvl(d3.wp_xh,'') wpxh,
        nvl(d3.wp_dw,'') wpdw,
        nvl(d3.wp_sl,'') wpsl,
        nvl(d3.sl,'') sl,
        nvl(d3.dj,'') dj,
        nvl(d3.xxfp_id ,'') xxfpid,
        nvl(a.date_key ,'') datekey,
        nvl(d3.qdbz,'') qdbz
from    dw.dw_agg_nsr_dbkj_day_fp a
join    dw.dw_fact_xxfpmx d3 on a.fpdm = d3.fpdm and a.fphm = d3.fphm
join    dw.dw_fplb b on a.fp_lb = b.fp_lb
join    dw.dw_dm_nsr d2 on a.xf_nsrsbh = d2.nsrsbh
;







