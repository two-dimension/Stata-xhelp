{smcl}
{* *! version 1.0.4  15may2018}{...}
{viewerdialog "SEM Builder" "stata sembuilder"}{...}
{vieweralsosee "[SEM] Builder" "mansection SEM Builder"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[SEM] sem introduction" "help sem_intro_zh"}{...}
{vieweralsosee "[SEM] sem examples" "help sem_examples_zh"}{...}
{viewerjumpto "Menu" "sem_builder_zh##menu"}{...}
{viewerjumpto "Description" "sem_builder_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "sem_builder_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "sem_builder_zh##remarks"}{...}
{viewerjumpto "Video example" "sem_builder_zh##video"}
{help sem_builder:English Version}
{hline}{...}
{p2colset 1 18 20 2}{...}
{p2col:{bf:[SEM] Builder} {hline 2}}SEM Builder{p_end}
{p2col:}({mansection SEM Builder:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > SEM（结构方程模型） > 模型构建和估计}


{marker description}{...}
{title:描述}

{pstd}
SEM Builder 允许您创建 SEM 的路径图，拟合这些模型，并在路径图上显示结果。在这里我们讨论标准线性 
SEM；有关使用 Builder 创建具有广义响应和多层结构模型的信息，请参见 {help gsem_builder_zh:[SEM] Builder, generalized}。

{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection SEM BuilderRemarksandexamples:备注与示例}

{pstd}
上述部分不包括在此帮助文件中。


{marker remarks}{...}
{title:备注}

{pstd}
请参见 {manlink SEM Builder}。

{pstd}
{cmd:sem} 还提供命令语言接口。此接口与路径图类似，并且可以输入。请参见 
{helpb sem_and gsem path_notation:[SEM] sem and gsem path notation}。
{p_end}


{marker video}{...}
{title:视频示例}

{phang}
{browse "http://www.youtube.com/watch?v=Xj0gBlqwYHI":Stata中的 SEM Builder}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <sem_builder.sthlp>}