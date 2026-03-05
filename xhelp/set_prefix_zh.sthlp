{smcl}
{* *! version 1.0.2  10jan2017}{...}
{vieweralsosee undocumented "help undocumented"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[P] creturn" "help creturn_zh"}{...}
{viewerjumpto "Syntax" "set_prefix_zh##syntax"}{...}
{viewerjumpto "Description" "set_prefix_zh##description"}
{help set_prefix:English Version}
{hline}{...}
{title:标题}

{p2colset 4 22 24 2}{...}
{p2col:{hi:[P] set prefix} {hline 2}}为 c(prefix) 添加一个前缀名称
{p_end}


{marker syntax}{...}
{title:语法}

{p 8 16 2}
{cmd:set}
{cmd:prefix}
{it:前缀名称}


{marker description}{...}
{title:描述}

{pstd}
{cmd:set} {cmd:prefix} 将 {it:前缀名称} 添加到 {cmd:c(prefix)}，允许其他程序知道当前正在运行的前缀命令。
{p_end}

{pstd}
以下前缀命令使用 {cmd:set} {cmd:prefix} 将它们的名称添加到 {cmd:c(prefix)}：
{p_end}

{* do not add fmm to the list.}{...}
{pmore}
{help bayes_zh},
{help bootstrap_zh},
{help fp_zh},
{help jackknife_zh},
{help mfp_zh},
{help mi_zh},
{help nestreg_zh},
{help permute_zh},
{help rolling_zh},
{help simulate_zh},
{help statsby_zh},
{help stepwise_zh},
{help svy_zh},
{help xi_zh}
{p_end}

{pstd}
当程序或 do-file 退出时，{cmd:c(prefix)} 会重置为其原始值。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <set_prefix.sthlp>}