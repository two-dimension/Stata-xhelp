{smcl}
{* *! version 1.0.4  19oct2017}{...}
{viewerdialog "SEM Builder" "stata sembuilder"}{...}
{vieweralsosee "[SEM] Builder, generalized" "mansection SEM Builder,generalized"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[SEM] sem intro" "help sem_intro_zh"}{...}
{vieweralsosee "[SEM] sem examples" "help sem_examples_zh"}{...}
{viewerjumpto "Menu" "gsem_builder_zh##menu"}{...}
{viewerjumpto "Description" "gsem_builder_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "gsem_builder_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "gsem_builder_zh##remarks"}{...}
{viewerjumpto "Video example" "gsem_builder_zh##video"}
{help gsem_builder:English Version}
{hline}{...}
{p2colset 1 31 33 2}{...}
{p2col:{bf:[SEM] Builder, generalized} {hline 2}}广义模型的SEM构建器{p_end}
{p2col:}({mansection SEM Builder,generalized:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > SEM（结构方程建模） > 模型构建和估计}

{phang}
通过单击{bf:切换到广义SEM}按钮，将构建器切换到广义SEM模式。


{marker description}{...}
{title:描述}

{pstd}
SEM构建器允许你创建广义SEM的路径图，拟合这些模型，并在路径图上显示结果。这里我们扩展了关于{help sem_builder_zh:[SEM] 构建器}的讨论。请先阅读该条目。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection SEM Builder,generalizedRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{pstd}
请参阅{manlink SEM Builder, generalized}。

{pstd}
{cmd:gsem}还提供了命令语言接口。此接口类似于路径图，并且可以输入。请参见{helpb sem_and gsem path_notation:[SEM] sem 和 gsem 路径符号}。
{p_end}


{marker video}{...}
{title:视频示例}

{phang}
{browse "http://www.youtube.com/watch?v=Xj0gBlqwYHI":Stata中的SEM构建器}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <gsem_builder.sthlp>}