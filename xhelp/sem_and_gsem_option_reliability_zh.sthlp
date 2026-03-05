{smcl}
{* *! version 2.0.3  19oct2017}{...}
{viewerdialog "SEM Builder" "stata sembuilder"}{...}
{vieweralsosee "[SEM] sem 和 gsem 选项 reliability()" "mansection SEM semandgsemoptionreliability()"}{...}
{findalias assemrel}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[SEM] sem" "help sem_command_zh"}{...}
{vieweralsosee "[SEM] gsem" "help gsem_command_zh"}{...}
{vieweralsosee "[SEM] sem 模型描述选项" "help sem_model_options_zh"}{...}
{vieweralsosee "[SEM] gsem 模型描述选项" "help gsem_model_options_zh"}{...}
{viewerjumpto "语法" "sem_and_gsem_option_reliability_zh##syntax"}{...}
{viewerjumpto "描述" "sem_and_gsem_option_reliability_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "sem_and_gsem_option_reliability_zh##linkspdf"}{...}
{viewerjumpto "选项" "sem_and_gsem_option_reliability_zh##option"}{...}
{viewerjumpto "备注" "sem_and_gsem_option_reliability_zh##remarks"}{...}
{viewerjumpto "示例" "sem_and_gsem_option_reliability_zh##examples"}
{help sem_and_gsem_option_reliability:English Version}
{hline}{...}
{p2colset 1 44 46 2}{...}
{p2col:{bf:[SEM] sem 和 gsem 选项 reliability()} {hline 2}}不由于测量误差的方差比例{p_end}
{p2col:}({mansection SEM semandgsemoptionreliability():查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{cmd:sem}|{cmd:gsem} ... [{cmd:,} ... {cmd:reliability(}{varname} {it:#}
        [{varname} {it:#} [...]]{cmd:)}]

{pstd}
其中 {it:varname} 是观测变量的名称， {it:#} 是不由于测量误差的方差的比例或百分比：

{phang2}{cmd:. {sem|gsem} ..., ... reliability(x1 .8  x2 .9)}{p_end}

{phang2}{cmd:. {sem|gsem} ..., ... reliability(x1 80%  x2 90%)}{p_end}


{marker description}{...}
{title:描述}

{pstd}
选项 {opt reliability()} 允许您指定测量变量中不由于测量误差的方差比例。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection SEM semandgsemoptionreliability()Remarksandexamples:备注和示例}

{pstd}
上述部分未包含在本帮助文件中。


{marker option}{...}
{title:选项}

{phang}
{cmd:reliability(}{varname} {it:#} [...]{cmd:)}
指定变量 {it:varname} 的可靠性。可靠性在 0 到 1 之间，等于

{phang3}{cmd:1 - 噪声方差/总方差}{p_end}

{p 8 8 2}
当未指定时，可靠性假定为 1。


{marker remarks}{...}
{title:备注}

{pstd}
请参见 {findalias semrel}。

{pstd}
请参见 {manlink SEM sem 和 gsem 选项 reliability()} 中的以下部分：

{phang2}{mansection SEM semandgsemoptionreliability()RemarksandexamplesBackground:背景}{p_end}
{phang2}{mansection SEM semandgsemoptionreliability()RemarksandexamplesDealingwithmeasurementerrorofexogenousvariables:处理外生变量的测量误差}{p_end}
{phang2}{mansection SEM semandgsemoptionreliability()RemarksandexamplesDealingwithmeasurementerrorofendogenousvariables:处理内生变量的测量误差}{p_end}
{phang2}{mansection SEM semandgsemoptionreliability()RemarksandexamplesWhatcangowrong:可能出错的地方}{p_end}


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse sem_rel}{p_end}

{pstd}拟合不考虑可靠性的模型{p_end}
{phang2}{cmd:. sem (x1 x2 <- X) (y <- X)}{p_end}

{pstd}将 {cmd:x1} 的可靠性设为 50%{p_end}
{phang2}{cmd:. sem (x1 <- X) (y <- X), reliability(x1 .5)}{p_end}

{pstd}为多个变量设置可靠性{p_end}
{phang2}{cmd:. sem (x1 x2 <- X) (y <- X), reliability(x1 .5 x2 .5)}{p_end}

{pstd}使用百分比表示法{p_end}
{phang2}{cmd:. sem (x1 x2 <- X) (y <- X), reliability(x1 50% x2 50%)}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <sem_and_gsem_option_reliability.sthlp>}