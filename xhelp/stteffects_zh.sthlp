{smcl}
{* *! version 1.0.4  19oct2017}{...}
{viewerdialog stteffects "dialog stteffects"}{...}
{vieweralsosee "[TE] stteffects" "mansection TE stteffects"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TE] stteffects intro" "help stteffects_intro_zh"}{...}
{viewerjumpto "Syntax" "stteffects_zh##syntax"}{...}
{viewerjumpto "Description" "stteffects_zh##description"}
{help stteffects:English Version}
{hline}{...}
{p2colset 1 20 22 2}{...}
{p2col:{bf:[TE] stteffects} {hline 2}}观察性生存时间数据的治疗效应估计{p_end}
{p2col:}({mansection TE stteffects:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 15 2}
{cmd:stteffects} {it:子命令} ... [{cmd:,} {it:选项}]

{synoptset 16}{...}
{synopthdr:子命令}
{synoptline}
{synopt :{helpb stteffects ra:ra}}回归调整{p_end}
{synopt :{helpb stteffects ipw:ipw}}逆概率加权{p_end}
{synopt :{helpb stteffects ipwra:ipwra}}逆概率加权回归调整{p_end}
{synopt :{helpb stteffects wra:wra}}加权回归调整{p_end}
{synoptline}
{p2colreset}{...}


{marker description}{...}
{title:描述}

{pstd}
{cmd:stteffects} 使用观察性生存时间数据估计平均治疗效应、对治疗组的平均治疗效应和潜在结果均值。可用的估计方法包括回归调整、逆概率加权以及更高效的结合回归调整和逆概率加权的方法。

{pstd}
有关每种估计方法的简要描述和示例，请参见 {it:{mansection TE stteffectsintroRemarksandexamples:备注和示例}} 在 {bf:[TE] stteffects intro} 中。{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <stteffects.sthlp>}