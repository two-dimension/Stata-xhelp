
{smcl}
{* *! version 1.1.1  30may2019}{...}
{bf:Stata 空间自回归模型参考手册的数据集, 第16版}
{hline}
{help q_sp:English Version}
{hline}
{p}
用于 Stata 文档的数据集被选择用来演示如何使用 Stata。一些数据集已被更改以解释特定特征。请勿将这些数据集用于分析。
{p_end}
{hline}

    {title:{help estat moran}}
	homicide1990.dta{col 32}{stata "use http://www.stata-press.com/data/r16/homicide1990.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/homicide1990.dta":describe}
	homicide1990_shp.dta{col 32}{stata "use http://www.stata-press.com/data/r16/homicide1990_shp.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/homicide1990_shp.dta":describe}

    {title:Intro 4} 
	project_cs.dta{col 32}{stata "use http://www.stata-press.com/data/r16/project_cs.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/project_cs.dta":describe}
	project_panel.dta{col 32}{stata "use http://www.stata-press.com/data/r16/project_panel.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/project_panel.dta":describe}

    {title:Intro 7} 
	texas_ue.dta{col 32}{stata "use http://www.stata-press.com/data/r16/texas_ue.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/texas_ue.dta":describe}

    {title:{help spbalance_zh}}
	counties.dta{col 32}{stata "use http://www.stata-press.com/data/r16/counties.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/counties.dta":describe}
	cbp05_14co.dta{col 32}{stata "use http://www.stata-press.com/data/r16/cbp05_14co.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/cbp05_14co.dta":describe}

    {title:{help spivregress_zh}}
	dui_southern.dta{col 32}{stata "use http://www.stata-press.com/data/r16/dui_southern.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/dui_southern.dta":describe}
	dui_southern_shp.dta{col 32}{stata "use http://www.stata-press.com/data/r16/dui_southern_shp.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/dui_southern_shp.dta":describe}

    {title:{help spmatrix create}}
	homicide_1960_1990.dta{col 32}{stata "use http://www.stata-press.com/data/r16/homicide_1960_1990.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/homicide_1960_1990.dta":describe}
	homicide_1960_1990_shp.dta{col 32}{stata "use http://www.stata-press.com/data/r16/homicide_1960_1990_shp.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/homicide_1960_1990_shp.dta":describe}

    {title:{help spmatrix spfrommata}}
	exports.dta{col 32}{stata "use http://www.stata-press.com/data/r16/exports.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/exports.dta":describe}

    {title:{help spregress_zh}}
	homicide1990.dta{col 32}{stata "use http://www.stata-press.com/data/r16/homicide1990.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/homicide1990.dta":describe}
	homicide1990_shp.dta{col 32}{stata "use http://www.stata-press.com/data/r16/homicide1990_shp.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/homicide1990_shp.dta":describe}

    {title:{help spxtregress_zh}}
	homicide_1960_1990.dta{col 32}{stata "use http://www.stata-press.com/data/r16/homicide_1960_1990.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/homicide_1960_1990.dta":describe}
	homicide_1960_1990_shp.dta{col 32}{stata "use http://www.stata-press.com/data/r16/homicide_1960_1990_shp.dta":use} | {stata "describe using  http://www.stata-press.com/data/r16/homicide_1960_1990_shp.dta":describe}
{hline}

{p}
StataCorp 感谢一些参考手册中的数据集为专有数据，并在我们的印刷文档中获得了版权持有者的明确许可。如果任何版权持有者认为 StataCorp 公开提供这些数据集违反了任何此类协议的条文或精神，请联系 {browse "mailto:tech-support@stata.com":tech-support@stata.com}，我们将从该网页中移除任何此类材料。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <q_sp.sthlp>}