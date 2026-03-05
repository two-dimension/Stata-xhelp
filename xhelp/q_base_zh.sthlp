
{smcl}
{* *! version 1.4.2  20jun2019}{...}
{bf:Stata 基础参考手册的 数据集，版本 16}
{hline}
{help q_base:English Version}
{hline}
{p}
Stata 文档中使用的数据集的选择旨在演示如何使用 Stata。某些数据集已被修改以解释特定功能。请勿将这些数据集用于分析。
{p_end}
{hline}

    {title:{help anova_zh}}
	apple.dta{col 32}{stata "use http://www.stata-press.com/data/r16/apple.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/apple.dta":describe}
	systolic.dta{col 32}{stata "use http://www.stata-press.com/data/r16/systolic.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/systolic.dta":describe}
	manuf.dta{col 32}{stata "use http://www.stata-press.com/data/r16/manuf.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/manuf.dta":describe}
	byssin.dta{col 32}{stata "use http://www.stata-press.com/data/r16/byssin.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/byssin.dta":describe}
	census2.dta{col 32}{stata "use http://www.stata-press.com/data/r16/census2.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/census2.dta":describe}
	machine.dta{col 32}{stata "use http://www.stata-press.com/data/r16/machine.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/machine.dta":describe}
	sewage.dta{col 32}{stata "use http://www.stata-press.com/data/r16/sewage.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/sewage.dta":describe}
	reading.dta{col 32}{stata "use http://www.stata-press.com/data/r16/reading.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/reading.dta":describe}
	latinsq.dta{col 32}{stata "use http://www.stata-press.com/data/r16/latinsq.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/latinsq.dta":describe}
	t43.dta{col 32}{stata "use http://www.stata-press.com/data/r16/t43.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/t43.dta":describe}
	t77.dta{col 32}{stata "use http://www.stata-press.com/data/r16/t77.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/t77.dta":describe}
	t713.dta{col 32}{stata "use http://www.stata-press.com/data/r16/t713.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/t713.dta":describe}

    {title:{help anova postestimation}}
	machine.dta{col 32}{stata "use http://www.stata-press.com/data/r16/machine.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/machine.dta":describe}
	sewage.dta{col 32}{stata "use http://www.stata-press.com/data/r16/sewage.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/sewage.dta":describe}
	systolic.dta{col 32}{stata "use http://www.stata-press.com/data/r16/systolic.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/systolic.dta":describe}
	canfill.dta{col 32}{stata "use http://www.stata-press.com/data/r16/canfill.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/canfill.dta":describe}
	twowaytrend.dta{col 32}{stata "use http://www.stata-press.com/data/r16/twowaytrend.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/twowaytrend.dta":describe}

    {title:{help areg_zh}}
	auto2.dta{col 32}{stata "use http://www.stata-press.com/data/r16/auto2.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/auto2.dta":describe}

    {title:{help areg postestimation}}
	auto2.dta{col 32}{stata "use http://www.stata-press.com/data/r16/auto2.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/auto2.dta":describe}

{hline}

    {title:{help betareg_zh}}
	sprogram.dta{col 32}{stata "use http://www.stata-press.com/data/r16/sprogram.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/sprogram.dta":describe}

    {title:{help betareg postestimation}}
	sprogram.dta{col 32}{stata "use http://www.stata-press.com/data/r16/sprogram.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/sprogram.dta":describe}

    {title:{help binreg_zh}}
	binreg.dta{col 32}{stata "use http://www.stata-press.com/data/r16/binreg.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/binreg.dta":describe}

    {title:{help biprobit_zh}}
	school.dta{col 32}{stata "use http://www.stata-press.com/data/r16/school.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/school.dta":describe}

    {title:{help bitest_zh}}
	quick.dta{col 32}{stata "use http://www.stata-press.com/data/r16/quick.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/quick.dta":describe}

    {title:{help bootstrap_zh}}
	auto.dta{col 32}{stata "use http://www.stata-press.com/data/r16/auto.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/auto.dta":describe}
	lowbirth2.dta{col 32}{stata "use http://www.stata-press.com/data/r16/lowbirth2.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/lowbirth2.dta":describe}

    {title:{help bootstrap postestimation}}
	auto.dta{col 32}{stata "use http://www.stata-press.com/data/r16/auto.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/auto.dta":describe}

    {title:{help boxcox_zh}}
	nhanes2.dta{col 32}{stata "use http://www.stata-press.com/data/r16/nhanes2.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/nhanes2.dta":describe}

    {title:{help boxcox postestimation}}
	nhanes2.dta{col 32}{stata "use http://www.stata-press.com/data/r16/nhanes2.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/nhanes2.dta":describe}

    {title:{help brier_zh}}
	bball.dta{col 32}{stata "use http://www.stata-press.com/data/r16/bball.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/bball.dta":describe}

    {title:{help bsample_zh}}
	bsample1.dta{col 32}{stata "use http://www.stata-press.com/data/r16/bsample1.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/bsample1.dta":describe}
	bsample2.dta{col 32}{stata "use http://www.stata-press.com/data/r16/bsample2.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/bsample2.dta":describe}

    {title:{help bstat_zh}}
	auto.dta{col 32}{stata "use http://www.stata-press.com/data/r16/auto.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/auto.dta":describe}

{hline}

    {title:{help centile_zh}}
	auto.dta{col 32}{stata "use http://www.stata-press.com/data/r16/auto.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/auto.dta":describe}

    {title:{help churdle_zh}}
	fitness.dta{col 32}{stata "use http://www.stata-press.com/data/r16/fitness.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/fitness.dta":describe}

    {title:{help churdle postestimation}}
	fitness.dta{col 32}{stata "use http://www.stata-press.com/data/r16/fitness.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/fitness.dta":describe}

    {title:{help ci_zh}}
	auto.dta{col 32}{stata "use http://www.stata-press.com/data/r16/auto.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/auto.dta":describe}
	petri.dta{col 32}{stata "use http://www.stata-press.com/data/r16/petri.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/petri.dta":describe}
	petrinone.dta{col 32}{stata "use http://www.stata-press.com/data/r16/petrinone.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/petrinone.dta":describe}
	promo.dta{col 32}{stata "use http://www.stata-press.com/data/r16/promo.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/promo.dta":describe}
	promonone.dta{col 32}{stata "use http://www.stata-press.com/data/r16/promonone.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/promonone.dta":describe}
	peas_normdist.dta{col 32}{stata "use http://www.stata-press.com/data/r16/peas_normdist.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/peas_normdist.dta":describe}
	peas_tdist.dta{col 32}{stata "use http://www.stata-press.com/data/r16/peas_tdist.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/peas_tdist.dta":describe}

    {title:{help clogit_zh}}
	clogitid.dta{col 32}{stata "use http://www.stata-press.com/data/r16/clogitid.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/clogitid.dta":describe}
	lowbirth2.dta{col 32}{stata "use http://www.stata-press.com/data/r16/lowbirth2.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/lowbirth2.dta":describe}
	union.dta{col 32}{stata "use http://www.stata-press.com/data/r16/union.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/union.dta":describe}

    {title:{help clogit postestimation}}
	clogitid.dta{col 32}{stata "use http://www.stata-press.com/data/r16/clogitid.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/clogitid.dta":describe}

    {title:{help cloglog_zh}}
	auto.dta{col 32}{stata "use http://www.stata-press.com/data/r16/auto.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/auto.dta":describe}
	union.dta{col 32}{stata "use http://www.stata-press.com/data/r16/union.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/union.dta":describe}

    {title:{help cloglog postestimation}}
	auto.dta{col 32}{stata "use http://www.stata-press.com/data/r16/auto.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/auto.dta":describe}

    {title:{help cnsreg_zh}}
	auto.dta{col 32}{stata "use http://www.stata-press.com/data/r16/auto.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/auto.dta":describe}

    {title:{help constraint_zh}}
	sysdsn1.dta{col 32}{stata "use http://www.stata-press.com/data/r16/sysdsn1.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/sysdsn1.dta":describe}

    {title:{help contrast_zh}}
	cholesterol.dta{col 32}{stata "use http://www.stata-press.com/data/r16/cholesterol.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/cholesterol.dta":describe}
	bpchange.dta{col 32}{stata "use http://www.stata-press.com/data/r16/bpchange.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/bpchange.dta":describe}
	cont3way.dta{col 32}{stata "use http://www.stata-press.com/data/r16/cont3way.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/cont3way.dta":describe}
	cholesterol2.dta{col 32}{stata "use http://www.stata-press.com/data/r16/cholesterol2.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/cholesterol2.dta":describe}
	sat.dta{col 32}{stata "use http://www.stata-press.com/data/r16/sat.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/sat.dta":describe}
	cholesterol3.dta{col 32}{stata "use http://www.stata-press.com/data/r16/cholesterol3.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/cholesterol3.dta":describe}
	census3.dta{col 32}{stata "use http://www.stata-press.com/data/r16/census3.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/census3.dta":describe}
	hospital.dta{col 32}{stata "use http://www.stata-press.com/data/r16/hospital.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/hospital.dta":describe}
	jaw.dta{col 32}{stata "use http://www.stata-press.com/data/r16/jaw.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/jaw.dta":describe}

    {title:{help contrast postestimation}}
	cholesterol.dta{col 32}{stata "use http://www.stata-press.com/data/r16/cholesterol.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/cholesterol.dta":describe}

    {title:{help correlate_zh}}
	census13.dta{col 32}{stata "use http://www.stata-press.com/data/r16/census13.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/census13.dta":describe}
	auto1.dta{col 32}{stata "use http://www.stata-press.com/data/r16/auto1.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/auto1.dta":describe}

    {title:{help cpoisson_zh}}
	trips.dta{col 32}{stata "use http://www.stata-press.com/data/r16/trips.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/trips.dta":describe}

    {title:{help cpoisson postestimation}}
	trips.dta{col 32}{stata "use http://www.stata-press.com/data/r16/trips.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/trips.dta":describe}

    {title:{help cumul_zh}}
	hsng.dta{col 32}{stata "use http://www.stata-press.com/data/r16/hsng.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/hsng.dta":describe}
	citytemp.dta{col 32}{stata "use http://www.stata-press.com/data/r16/citytemp.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/citytemp.dta":describe}

    {title:{help cusum_zh}}
	auto.dta{col 32}{stata "use http://www.stata-press.com/data/r16/auto.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/auto.dta":describe}

    {title:{help Diagnostic plots}}
	auto.dta{col 32}{stata "use http://www.stata-press.com/data/r16/auto.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/auto.dta":describe}

    {title:{help dotplot_zh}}
	auto.dta{col 32}{stata "use http://www.stata-press.com/data/r16/auto.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/auto.dta":describe}
	dotgr.dta{col 32}{stata "use http://www.stata-press.com/data/r16/dotgr.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/dotgr.dta":describe}
	dotdose.dta{col 32}{stata "use http://www.stata-press.com/data/r16/dotdose.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/dotdose.dta":describe}

    {title:{help dstdize_zh}}
	mortality.dta{col 32}{stata "use http://www.stata-press.com/data/r16/mortality.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/mortality.dta":describe}
	1962.dta{col 32}{stata "use http://www.stata-press.com/data/r16/1962.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/1962.dta":describe}
	hbp.dta{col 32}{stata "use http://www.stata-press.com/data/r16/hbp.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/hbp.dta":describe}
	popkahn.dta{col 32}{stata "use http://www.stata-press.com/data/r16/popkahn.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/popkahn.dta":describe}
	kahn.dta{col 32}{stata "use http://www.stata-press.com/data/r16/kahn.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/kahn.dta":describe}

{hline}

    {title:{help eform_option_zh}}
	nhanes2d.dta{col 32}{stata "use http://www.stata-press.com/data/r16/nhanes2d.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/nhanes2d.dta":describe}

    {title:{help eivreg_zh}}
	auto.dta{col 32}{stata "use http://www.stata-press.com/data/r16/auto.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/auto.dta":describe}

    {title:{help Epitab}}
	irxmpl.dta{col 32}{stata "use http://www.stata-press.com/data/r16/irxmpl.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/irxmpl.dta":describe}
	irxmpl2.dta{col 32}{stata "use http://www.stata-press.com/data/r16/irxmpl2.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/irxmpl2.dta":describe}
	irxmpl3.dta{col 32}{stata "use http://www.stata-press.com/data/r16/irxmpl3.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/irxmpl3.dta":describe}
	rm.dta{col 32}{stata "use http://www.stata-press.com/data/r16/rm.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/rm.dta":describe}
	dollhill3.dta{col 32}{stata "use http://www.stata-press.com/data/r16/dollhill3.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/dollhill3.dta":describe}
	csxmpl.dta{col 32}{stata "use http://www.stata-press.com/data/r16/csxmpl.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/csxmpl.dta":describe}
	ugdp.dta{col 32}{stata "use http://www.stata-press.com/data/r16/ugdp.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/ugdp.dta":describe}
	ccxmpl.dta{col 32}{stata "use http://www.stata-press.com/data/r16/ccxmpl.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/ccxmpl.dta":describe}
	downs.dta{col 32}{stata "use http://www.stata-press.com/data/r16/downs.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/downs.dta":describe}
	bdesop.dta{col 32}{stata "use http://www.stata-press.com/data/r16/bdesop.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/bdesop.dta":describe}
	bdendo11.dta{col 32}{stata "use http://www.stata-press.com/data/r16/bdendo11.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/bdendo11.dta":describe}
	bdendo.dta{col 32}{stata "use http://www.stata-press.com/data/r16/bdendo.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/bdendo.dta":describe}

    {title:{help esize_zh}}
	depression.dta{col 32}{stata "use http://www.stata-press.com/data/r16/depression.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/depression.dta":describe}
	fuel.dta{col 32}{stata "use http://www.stata-press.com/data/r16/fuel.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/fuel.dta":describe}

    {title:{help estat classification}}
	lbw.dta{col 32}{stata "use http://www.stata-press.com/data/r16/lbw.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/lbw.dta":describe}

    {title:{help estat gof}}
	lbw.dta{col 32}{stata "use http://www.stata-press.com/data/r16/lbw.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/lbw.dta":describe}

    {title:{help estat ic}}
	sysdsn1.dta{col 32}{stata "use http://www.stata-press.com/data/r16/sysdsn1.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/sysdsn1.dta":describe}

    {title:{help estat summarize}}
	sysdsn1.dta{col 32}{stata "use http://www.stata-press.com/data/r16/sysdsn1.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/sysdsn1.dta":describe}
	supDem.dta{col 32}{stata "use http://www.stata-press.com/data/r16/supDem.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/supDem.dta":describe}

    {title:{help estat vce}}
	sysdsn1.dta{col 32}{stata "use http://www.stata-press.com/data/r16/sysdsn1.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/sysdsn1.dta":describe}

    {title:{help estimates_zh}}
	auto.dta{col 32}{stata "use http://www.stata-press.com/data/r16/auto.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/auto.dta":describe}

    {title:{help estimates describe}}
	auto.dta{col 32}{stata "use http://www.stata-press.com/data/r16/auto.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/auto.dta":describe}

    {title:{help estimates for}}
	auto.dta{col 32}{stata "use http://www.stata-press.com/data/r16/auto.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/auto.dta":describe}

    {title:{help estimates notes}}
	auto.dta{col 32}{stata "use http://www.stata-press.com/data/r16/auto.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/auto.dta":describe}

    {title:{help estimates replay}}
	auto.dta{col 32}{stata "use http://www.stata-press.com/data/r16/auto.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/auto.dta":describe}

    {title:{help estimates save}}
	auto.dta{col 32}{stata "use http://www.stata-press.com/data/r16/auto.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/auto.dta":describe}

    {title:{help estimates selected}}
	auto.dta{col 32}{stata "use http://www.stata-press.com/data/r16/auto.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/auto.dta":describe}

    {title:{help estimates stats}}
	auto.dta{col 32}{stata "use http://www.stata-press.com/data/r16/auto.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/auto.dta":describe}

    {title:{help estimates store}}
	auto.dta{col 32}{stata "use http://www.stata-press.com/data/r16/auto.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/auto.dta":describe}

    {title:{help estimates table}}
	auto.dta{col 32}{stata "use http://www.stata-press.com/data/r16/auto.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/auto.dta":describe}

    {title:{help estimates title}}
	auto.dta{col 32}{stata "use http://www.stata-press.com/data/r16/auto.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/auto.dta":describe}

    {title:{help exlogistic_zh}}
	hiv1.dta{col 32}{stata "use http://www.stata-press.com/data/r16/hiv1.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/hiv1.dta":describe}
	hiv_n.dta{col 32}{stata "use http://www.stata-press.com/data/r16/hiv_n.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/hiv_n.dta":describe}
	schizophrenia.dta{col 32}{stata "use http://www.stata-press.com/data/r16/schizophrenia.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/schizophrenia.dta":describe}

    {title:{help exlogistic postestimation}}
	hiv_n.dta{col 32}{stata "use http://www.stata-press.com/data/r16/hiv_n.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/hiv_n.dta":describe}

    {title:{help expoisson_zh}}
	cerebacc.dta{col 32}{stata "use http://www.stata-press.com/data/r16/cerebacc.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/cerebacc.dta":describe}
	heartvalve.dta{col 32}{stata "use http://www.stata-press.com/data/r16/heartvalve.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/heartvalve.dta":describe}

    {title:{help expoisson postestimation}}
	smokes.dta{col 32}{stata "use http://www.stata-press.com/data/r16/smokes.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/smokes.dta":describe}

{hline}

    {title:{help fp_zh}}
	auto.dta{col 32}{stata "use http://www.stata-press.com/data/r16/auto.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/auto.dta":describe}
	igg.dta{col 32}{stata "use http://www.stata-press.com/data/r16/igg.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/igg.dta":describe}
	legulcer1.dta{col 32}{stata "use http://www.stata-press.com/data/r16/legulcer1.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/legulcer1.dta":describe}
	smoking.dta{col 32}{stata "use http://www.stata-press.com/data/r16/smoking.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/smoking.dta":describe}

    {title:{help fp postestimation}}
	igg.dta{col 32}{stata "use http://www.stata-press.com/data/r16/igg.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/igg.dta":describe}
	legulcer1.dta{col 32}{stata "use http://www.stata-press.com/data/r16/legulcer1.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/legulcer1.dta":describe}
	smoking.dta{col 32}{stata "use http://www.stata-press.com/data/r16/smoking.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/smoking.dta":describe}

    {title:{help fracreg_zh}}
	401k.dta{col 32}{stata "use http://www.stata-press.com/data/r16/401k.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/401k.dta":describe}

    {title:{help fracreg postestimation}}
	401k.dta{col 32}{stata "use http://www.stata-press.com/data/r16/401k.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/401k.dta":describe}

    {title:{help frontier_zh}}
	greene9.dta{col 32}{stata "use http://www.stata-press.com/data/r16/greene9.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/greene9.dta":describe}
	frontier1.dta{col 32}{stata "use http://www.stata-press.com/data/r16/frontier1.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/frontier1.dta":describe}
	frontier2.dta{col 32}{stata "use http://www.stata-press.com/data/r16/frontier2.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/frontier2.dta":describe}

    {title:{help frontier postestimation}}
	frontier1.dta{col 32}{stata "use http://www.stata-press.com/data/r16/frontier1.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/frontier1.dta":describe}

    {title:{help fvrevar_zh}}
	auto2.dta{col 32}{stata "use http://www.stata-press.com/data/r16/auto2.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/auto2.dta":describe}

    {title:{help fvset_zh}}
	auto2.dta{col 32}{stata "use http://www.stata-press.com/data/r16/auto2.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/auto2.dta":describe}

{hline}

    {title:{help glm_zh}}
	lbw.dta{col 32}{stata "use http://www.stata-press.com/data/r16/lbw.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/lbw.dta":describe}
	ldose.dta{col 32}{stata "use http://www.stata-press.com/data/r16/ldose.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/ldose.dta":describe}
	beetle.dta{col 32}{stata "use http://www.stata-press.com/data/r16/beetle.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/beetle.dta":describe}
	idle2.dta{col 32}{stata "use http://www.stata-press.com/data/r16/idle2.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/idle2.dta":describe}
	airline.dta{col 32}{stata "use http://www.stata-press.com/data/r16/airline.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/airline.dta":describe}

    {title:{help glm postestimation}}
	ldose.dta{col 32}{stata "use http://www.stata-press.com/data/r16/ldose.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/ldose.dta":describe}
	beetle.dta{col 32}{stata "use http://www.stata-press.com/data/r16/beetle.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/beetle.dta":describe}

    {title:{help gmm_zh}}
	auto.dta{col 32}{stata "use http://www.stata-press.com/data/r16/auto.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/auto.dta":describe}
	hsng2.dta{col 32}{stata "use http://www.stata-press.com/data/r16/hsng2.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/hsng2.dta":describe}
	cattaneo2.dta{col 32}{stata "use http://www.stata-press.com/data/r16/cattaneo2.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/cattaneo2.dta":describe}
	docvisits.dta{col 32}{stata "use http://www.stata-press.com/data/r16/docvisits.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/docvisits.dta":describe}
	poisson1.dta{col 32}{stata "use http://www.stata-press.com/data/r16/poisson1.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/poisson1.dta":describe}
	poisson2.dta{col 32}{stata "use http://www.stata-press.com/data/r16/poisson2.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/poisson2.dta":describe}
	cr.dta{col 32}{stata "use http://www.stata-press.com/data/r16/cr.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/cr.dta":describe}
	klein.dta{col 32}{stata "use http://www.stata-press.com/data/r16/klein.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/klein.dta":describe}
	abdata.dta{col 32}{stata "use http://www.stata-press.com/data/r16/abdata.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/abdata.dta":describe}
	poissonwts.dta{col 32}{stata "use http://www.stata-press.com/data/r16/poissonwts.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/poissonwts.dta":describe}

    {title:{help gmm postestimation}}
	docvisits.dta{col 32}{stata "use http://www.stata-press.com/data/r16/docvisits.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/docvisits.dta":describe}

    {title:{help grmeanby_zh}}
	auto1.dta{col 32}{stata "use http://www.stata-press.com/data/r16/auto1.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/auto1.dta":describe}

{hline}

    {title:{help hausman_zh}}
	nlswork4.dta{col 32}{stata "use http://www.stata-press.com/data/r16/nlswork4.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/nlswork4.dta":describe}
	sysdsn3.dta{col 32}{stata "use http://www.stata-press.com/data/r16/sysdsn3.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/sysdsn3.dta":describe}

    {title:{help heckman_zh}}
	womenwk.dta{col 32}{stata "use http://www.stata-press.com/data/r16/womenwk.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/womenwk.dta":describe}
	twopart.dta{col 32}{stata "use http://www.stata-press.com/data/r16/twopart.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/twopart.dta":describe}

    {title:{help heckman postestimation}}
	womenwk.dta{col 32}{stata "use http://www.stata-press.com/data/r16/womenwk.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/womenwk.dta":describe}

    {title:{help heckoprobit_zh}}
	womensat.dta{col 32}{stata "use http://www.stata-press.com/data/r16/womensat.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/womensat.dta":describe}

    {title:{help heckoprobit postestimation}}
	womensat.dta{col 32}{stata "use http://www.stata-press.com/data/r16/womensat.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/womensat.dta":describe}

    {title:{help heckpoisson_zh}}
	patent.dta{col 32}{stata "use http://www.stata-press.com/data/r16/patent.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/patent.dta":describe}

    {title:{help heckpoisson postestimation}}
	patent.dta{col 32}{stata "use http://www.stata-press.com/data/r16/patent.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/patent.dta":describe}

    {title:{help heckprobit_zh}}
	school.dta{col 32}{stata "use http://www.stata-press.com/data/r16/school.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/school.dta":describe}

    {title:{help hetoprobit_zh}}
	eathealth15.dta{col 32}{stata "use http://www.stata-press.com/data/r16/eathealth15.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/eathealth15.dta":describe}

    {title:{help hetregress_zh}}
	foodexp.dta{col 32}{stata "use http://www.stata-press.com/data/r16/foodexp.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/foodexp.dta":describe}
	salary.dta{col 32}{stata "use http://www.stata-press.com/data/r16/salary.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/salary.dta":describe}

    {title:{help hetregress postestimation}}
	salary.dta{col 32}{stata "use http://www.stata-press.com/data/r16/salary.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/salary.dta":describe}

    {title:{help histogram_zh}}
	sp500.dta{col 32}{stata "use http://www.stata-press.com/data/r16/sp500.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/sp500.dta":describe}
	auto.dta{col 32}{stata "use http://www.stata-press.com/data/r16/auto.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/auto.dta":describe}
	voter.dta{col 32}{stata "use http://www.stata-press.com/data/r16/voter.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/voter.dta":describe}

{hline}

    {title:{help icc_zh}}
	judges.dta{col 32}{stata "use http://www.stata-press.com/data/r16/judges.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/judges.dta":describe}
	adoption.dta{col 32}{stata "use http://www.stata-press.com/data/r16/adoption.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/adoption.dta":describe}

    {title:{help intreg_zh}}
	womenwage2.dta{col 32}{stata "use http://www.stata-press.com/data/r16/womenwage2.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/womenwage2.dta":describe}

    {title:{help intreg postestimation}}
	womenwage2.dta{col 32}{stata "use http://www.stata-press.com/data/r16/womenwage2.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/womenwage2.dta":describe}

    {title:{help ivpoisson_zh}}
	website.dta{col 32}{stata "use http://www.stata-press.com/data/r16/website.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/website.dta":describe}
	trip.dta{col 32}{stata "use http://www.stata-press.com/data/r16/trip.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/trip.dta":describe}

    {title:{help ivpoisson postestimation}}
	website.dta{col 32}{stata "use http://www.stata-press.com/data/r16/website.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/website.dta":describe}

    {title:{help ivprobit_zh}}
	laborsup.dta{col 32}{stata "use http://www.stata-press.com/data/r16/laborsup.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/laborsup.dta":describe}

    {title:{help ivprobit postestimation}}
	laborsup.dta{col 32}{stata "use http://www.stata-press.com/data/r16/laborsup.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/laborsup.dta":describe}

    {title:{help ivregress_zh}}
	hsng.dta{col 32}{stata "use http://www.stata-press.com/data/r16/hsng.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/hsng.dta":describe}
	nlswork.dta{col 32}{stata "use http://www.stata-press.com/data/r16/nlswork.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/nlswork.dta":describe}

    {title:{help ivregress postestimation}}
	hsng.dta{col 32}{stata "use http://www.stata-press.com/data/r16/hsng.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/hsng.dta":describe}

    {title:{help ivtobit_zh}}
	smedia.dta{col 32}{stata "use http://www.stata-press.com/data/r16/smedia.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/smedia.dta":describe}

    {title:{help ivtobit postestimation}}
	smedia.dta{col 32}{stata "use http://www.stata-press.com/data/r16/smedia.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/smedia.dta":describe}

{hline}

    {title:{help jackknife_zh}}
	auto.dta{col 32}{stata "use http://www.stata-press.com/data/r16/auto.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/auto.dta":describe}

{hline}

    {title:{help kappa_zh}}
	rate2.dta{col 32}{stata "use http://www.stata-press.com/data/r16/rate2.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/rate2.dta":describe}
	rate2no3.dta{col 32}{stata "use http://www.stata-press.com/data/r16/rate2no3.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/rate2no3.dta":describe}
	p612.dta{col 32}{stata "use http://www.stata-press.com/data/r16/p612.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/p612.dta":describe}
	p615.dta{col 32}{stata "use http://www.stata-press.com/data/r16/p615.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/p615.dta":describe}
	p615b.dta{col 32}{stata "use http://www.stata-press.com/data/r16/p615b.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/p615b.dta":describe}
	rvary.dta{col 32}{stata "use http://www.stata-press.com/data/r16/rvary.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/rvary.dta":describe}
	rvary2.dta{col 32}{stata "use http://www.stata-press.com/data/r16/rvary2.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/rvary2.dta":describe}

    {title:{help kdensity_zh}}
	trocolen.dta{col 32}{stata "use http://www.stata-press.com/data/r16/trocolen.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/trocolen.dta":describe}
	auto.dta{col 32}{stata "use http://www.stata-press.com/data/r16/auto.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/auto.dta":describe}

    {title:{help ksmirnov_zh}}
	ksxmpl.dta{col 32}{stata "use http://www.stata-press.com/data/r16/ksxmpl.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/ksxmpl.dta":describe}

    {title:{help kwallis_zh}}
	census.dta{col 32}{stata "use http://www.stata-press.com/data/r16/census.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/census.dta":describe}

{hline}

    {title:{help ladder_zh}}
	auto.dta{col 32}{stata "use http://www.stata-press.com/data/r16/auto.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/auto.dta":describe}
	citytemp.dta{col 32}{stata "use http://www.stata-press.com/data/r16/citytemp.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/citytemp.dta":describe}

    {title:{help level_zh}}
	auto.dta{col 32}{stata "use http://www.stata-press.com/data/r16/auto.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/auto.dta":describe}

    {title:{help lincom_zh}}
	regress.dta{col 32}{stata "use http://www.stata-press.com/data/r16/regress.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/regress.dta":describe}
	lbw3.dta{col 32}{stata "use http://www.stata-press.com/data/r16/lbw3.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/lbw3.dta":describe}
	sysdsn1.dta{col 32}{stata "use http://www.stata-press.com/data/r16/sysdsn1.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/sysdsn1.dta":describe}

    {title:{help linktest_zh}}
	auto.dta{col 32}{stata "use http://www.stata-press.com/data/r16/auto.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/auto.dta":describe}

    {title:{help lnskew0_zh}}
	auto.dta{col 32}{stata "use http://www.stata-press.com/data/r16/auto.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/auto.dta":describe}

    {title:{help logistic_zh}}
	lbw.dta{col 32}{stata "use http://www.stata-press.com/data/r16/lbw.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/lbw.dta":describe}
	hospid1.dta{col 32}{stata "use http://www.stata-press.com/data/r16/hospid1.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/hospid1.dta":describe}
	hospid2.dta{col 32}{stata "use http://www.stata-press.com/data/r16/hospid2.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/hospid2.dta":describe}

    {title:{help logistic postestimation}}
	lbw.dta{col 32}{stata "use http://www.stata-press.com/data/r16/lbw.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/lbw.dta":describe}

    {title:{help logit_zh}}
	auto.dta{col 32}{stata "use http://www.stata-press.com/data/r16/auto.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/auto.dta":describe}
	repair.dta{col 32}{stata "use http://www.stata-press.com/data/r16/repair.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/repair.dta":describe}
	logitxmpl.dta{col 32}{stata "use http://www.stata-press.com/data/r16/logitxmpl.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/logitxmpl.dta":describe}

    {title:{help logit postestimation}}
	repair.dta{col 32}{stata "use http://www.stata-press.com/data/r16/repair.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/repair.dta":describe}
	lbw.dta{col 32}{stata "use http://www.stata-press.com/data/r16/lbw.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/lbw.dta":describe}

    {title:{help loneway_zh}}
	auto7.dta{col 32}{stata "use http://www.stata-press.com/data/r16/auto7.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/auto7.dta":describe}

    {title:{help lowess_zh}}
	lowess1.dta{col 32}{stata "use http://www.stata-press.com/data/r16/lowess1.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/lowess1.dta":describe}
	auto.dta{col 32}{stata "use http://www.stata-press.com/data/r16/auto.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/auto.dta":describe}

    {title:{help lpoly_zh}}
	motorcycle.dta{col 32}{stata "use http://www.stata-press.com/data/r16/motorcycle.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/motorcycle.dta":describe}

    {title:{help lroc_zh}}
	heart.dta{col 32}{stata "use http://www.stata-press.com/data/r16/heart.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/heart.dta":describe}
	lbw3.dta{col 32}{stata "use http://www.stata-press.com/data/r16/lbw3.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/lbw3.dta":describe}

    {title:{help lrtest_zh}}
	lbw.dta{col 32}{stata "use http://www.stata-press.com/data/r16/lbw.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/lbw.dta":describe}

    {title:{help lsens_zh}}
	lbw.dta{col 32}{stata "use http://www.stata-press.com/data/r16/lbw.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/lbw.dta":describe}
	lbw3.dta{col 32}{stata "use http://www.stata-press.com/data/r16/lbw3.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/lbw3.dta":describe}

    {title:{help lv_zh}}
	auto.dta{col 32}{stata "use http://www.stata-press.com/data/r16/auto.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/auto.dta":describe}

{hline}

    {title:{help margins_zh}}
	margex.dta{col 32}{stata "use http://www.stata-press.com/data/r16/margex.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/margex.dta":describe}
	peach.dta{col 32}{stata "use http://www.stata-press.com/data/r16/peach.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/peach.dta":describe}
	hstandard.dta{col 32}{stata "use http://www.stata-press.com/data/r16/hstandard.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/hstandard.dta":describe}
	acmemanuf.dta{col 32}{stata "use http://www.stata-press.com/data/r16/acmemanuf.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/acmemanuf.dta":describe}
	estimability.dta{col 32}{stata "use http://www.stata-press.com/data/r16/estimability.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/estimability.dta":describe}

    {title:{help margins postestimation}}
	margex.dta{col 32}{stata "use http://www.stata-press.com/data/r16/margex.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/margex.dta":describe}

    {title:{help margins, contrast}}
	margex.dta{col 32}{stata "use http://www.stata-press.com/data/r16/margex.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/margex.dta":describe}
	nlsw88.dta{col 32}{stata "use http://www.stata-press.com/data/r16/nlsw88.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/nlsw88.dta":describe}

    {title:{help margins, pwcompare}}
	nhanes2.dta{col 32}{stata "use http://www.stata-press.com/data/r16/nhanes2.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/nhanes2.dta":describe}

    {title:{help marginsplot_zh}}
	nhanes2.dta{col 32}{stata "use http://www.stata-press.com/data/r16/nhanes2.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/nhanes2.dta":describe}
	auto.dta{col 32}{stata "use http://www.stata-press.com/data/r16/auto.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/auto.dta":describe}

    {title:{help mean_zh}}
	fuel.dta{col 32}{stata "use http://www.stata-press.com/data/r16/fuel.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/fuel.dta":describe}
	hbp.dta{col 32}{stata "use http://www.stata-press.com/data/r16/hbp.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/hbp.dta":describe}
	nhanes2.dta{col 32}{stata "use http://www.stata-press.com/data/r16/nhanes2.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/nhanes2.dta":describe}

    {title:{help mfp_zh}}
	brcancer.dta{col 32}{stata "use http://www.stata-press.com/data/r16/brcancer.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/brcancer.dta":describe}

    {title:{help mfp postestimation}}
	brcancer.dta{col 32}{stata "use http://www.stata-press.com/data/r16/brcancer.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/brcancer.dta":describe}

    {title:{help misstable_zh}}
	studentsurvey.dta{col 32}{stata "use http://www.stata-press.com/data/r16/studentsurvey.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/studentsurvey.dta":describe}

    {title:{help mkspline_zh}}
	mksp1.dta{col 32}{stata "use http://www.stata-press.com/data/r16/mksp1.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/mksp1.dta":describe}
	mksp2.dta{col 32}{stata "use http://www.stata-press.com/data/r16/mksp2.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/mksp2.dta":describe}

    {title:{help ml_zh}}
	auto.dta{col 32}{stata "use http://www.stata-press.com/data/r16/auto.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/auto.dta":describe}
	cancer.dta{col 32}{stata "use http://www.stata-press.com/data/r16/cancer.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/cancer.dta":describe}

    {title:{help mlexp_zh}}
	cpswage.dta{col 32}{stata "use http://www.stata-press.com/data/r16/cpswage.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/cpswage.dta":describe}
	sysdsn1.dta{col 32}{stata "use http://www.stata-press.com/data/r16/sysdsn1.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/sysdsn1.dta":describe}

    {title:{help mlogit_zh}}
	sysdsn1.dta{col 32}{stata "use http://www.stata-press.com/data/r16/sysdsn1.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/sysdsn1.dta":describe}

    {title:{help mlogit postestimation}}
	sysdsn1.dta{col 32}{stata "use http://www.stata-press.com/data/r16/sysdsn1.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/sysdsn1.dta":describe}

    {title:{help mprobit_zh}}
	sysdsn1.dta{col 32}{stata "use http://www.stata-press.com/data/r16/sysdsn1.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/sysdsn1.dta":describe}

    {title:{help mprobit postestimation}}
	sysdsn1.dta{col 32}{stata "use http://www.stata-press.com/data/r16/sysdsn1.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/sysdsn1.dta":describe}

{hline}

    {title:{help nbreg_zh}}
	rod93.dta{col 32}{stata "use http://www.stata-press.com/data/r16/rod93.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/rod93.dta":describe}

    {title:{help nbreg postestimation}}
	rod93.dta{col 32}{stata "use http://www.stata-press.com/data/r16/rod93.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/rod93.dta":describe}

    {title:{help nestreg_zh}}
	census4.dta{col 32}{stata "use http://www.stata-press.com/data/r16/census4.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/census4.dta":describe}
	lbw.dta{col 32}{stata "use http://www.stata-press.com/data/r16/lbw.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/lbw.dta":describe}

    {title:{help nl_zh}}
	production.dta{col 32}{stata "use http://www.stata-press.com/data/r16/production.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/production.dta":describe}
	auto.dta{col 32}{stata "use http://www.stata-press.com/data/r16/auto.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/auto.dta":describe}

    {title:{help nl postestimation}}
	auto.dta{col 32}{stata "use http://www.stata-press.com/data/r16/auto.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/auto.dta":describe}

    {title:{help nlcom_zh}}
	regress.dta{col 32}{stata "use http://www.stata-press.com/data/r16/regress.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/regress.dta":describe}
	trafint.dta{col 32}{stata "use http://www.stata-press.com/data/r16/trafint.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/trafint.dta":describe}
	airline.dta{col 32}{stata "use http://www.stata-press.com/data/r16/airline.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/airline.dta":describe}

    {title:{help nlsur_zh}}
	petridish.dta{col 32}{stata "use http://www.stata-press.com/data/r16/petridish.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/petridish.dta":describe}
	mfgcost.dta{col 32}{stata "use http://www.stata-press.com/data/r16/mfgcost.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/mfgcost.dta":describe}
	food.dta{col 32}{stata "use http://www.stata-press.com/data/r16/food.dta

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <q_base.sthlp>}