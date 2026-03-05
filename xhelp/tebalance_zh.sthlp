{smcl}
{* *! version 1.0.6  20sep2018}{...}
{viewerdialog tebalance "dialog tebalance"}{...}
{vieweralsosee "[TE] tebalance" "mansection TE tebalance"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TE] stteffects" "help stteffects_zh"}{...}
{vieweralsosee "[TE] tebalance box" "help tebalance box"}{...}
{vieweralsosee "[TE] tebalance density" "help tebalance density"}{...}
{vieweralsosee "[TE] tebalance overid" "help tebalance overid"}{...}
{vieweralsosee "[TE] tebalance summarize" "help tebalance summarize"}{...}
{vieweralsosee "[TE] teffects" "help teffects_zh"}{...}
{viewerjumpto "语法" "tebalance_zh##syntax"}{...}
{viewerjumpto "描述" "tebalance_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "tebalance_zh##linkspdf"}
{help tebalance:English Version}
{hline}{...}
{p2colset 1 19 21 2}{...}
{p2col:{bf:[TE] tebalance} {hline 2}}在 teffects 或 stteffects 估计后检查平衡{p_end}
{p2col:}({mansection TE tebalance:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 15 2}
{cmd:tebalance} {it:subcommand} ... [{cmd:,} {it:options}]

{synoptset 16}{...}
{synopthdr:子命令}
{synoptline}
{synopt :{helpb tebalance summarize:summarize}}比较原始和已平衡数据的均值和方差{p_end}
{synopt :{helpb tebalance overid:overid}}过度识别检验{p_end}
{synopt :{helpb tebalance density:density}}原始和已平衡数据的核密度图{p_end}
{synopt :{helpb tebalance box:box}}已平衡数据中每个处理水平的箱形图{p_end}
{synoptline}
{p2colreset}{...}


{marker description}{...}
{title:描述}

{pstd}
{cmd:tebalance} 后续命令生成诊断统计量、检验统计量和诊断图，以评估 {help teffects_zh} 或 {help stteffects_zh} 命令是否在处理水平上平衡了协变量。
{p_end}


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection TE tebalanceRemarksandexamples:备注和示例}

        {mansection TE tebalanceMethodsandformulas:方法和公式}

{pstd}
上述部分未包含在此帮助文件中。


{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <tebalance.sthlp>}