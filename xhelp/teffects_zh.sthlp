{smcl}
{* *! version 1.0.6  19oct2017}{...}
{viewerdialog teffects "dialog teffects"}{...}
{vieweralsosee "[TE] teffects" "mansection TE teffects"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TE] teeffects intro" "help teffects_intro_zh"}{...}
{vieweralsosee "[TE] teffects intro advanced " "mansection TE teffectsintroadvanced"}{...}
{vieweralsosee "[TE] teffects multivalued" "help teffects_multivalued_zh"}{...}
{viewerjumpto "语法" "teffects_zh##syntax"}{...}
{viewerjumpto "描述" "teffects_zh##description"}
{help teffects:English Version}
{hline}{...}
{p2colset 1 18 20 2}{...}
{p2col:{bf:[TE] teffects} {hline 2}}观察数据的处理效应估计{p_end}
{p2col:}({mansection TE teeffects:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 15 2}
{cmd:teffects} {it:subcommand} ... [{cmd:,} {it:options}]

{synoptset 16}{...}
{synopthdr:subcommand}
{synoptline}
{synopt :{helpb teffects aipw:aipw}}增强的逆概率加权{p_end}
{synopt :{helpb teffects ipw:ipw}}逆概率加权{p_end}
{synopt :{helpb teffects ipwra:ipwra}}逆概率加权回归调整{p_end}
{synopt :{helpb teffects nnmatch:nnmatch}}最近邻匹配{p_end}
{synopt :{helpb teffects overlap:overlap}}重叠图{p_end}
{synopt :{helpb teffects psmatch:psmatch}}倾向得分匹配{p_end}
{synopt :{helpb teffects ra:ra}}回归调整{p_end}
{synoptline}
{p2colreset}{...}


{marker description}{...}
{title:描述}

{pstd}
{cmd:teffects}使用观察数据估计潜在结果均值（POMs）、平均处理效应（ATEs）和对处理组的平均处理效应（ATETs）。提供回归调整、逆概率加权和匹配估计量，以及结合回归调整和逆概率加权的双重稳健方法。{cmd:teffects overlap}绘制每个处理水平获得的概率的估计密度图。

{pstd}
结果可以是连续的、二元的、计数的、分数的或非负的。处理模型可以是二元的，也可以是多项的，允许多值处理。

{pstd}
有关每种估计量的简要描述和示例，请参见{helpb teffects_intro##remarks:{it:备注}}中的{helpb teffects intro}。{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <teffects.sthlp>}