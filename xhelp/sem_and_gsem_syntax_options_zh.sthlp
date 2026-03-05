{smcl}
{* *! version 2.0.4  23oct2017}{...}
{viewerdialog "SEM Builder" "stata sembuilder"}{...}
{vieweralsosee "[SEM] sem 和 gsem 语法选项" "mansection SEM semandgsemsyntaxoptions"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[SEM] gsem" "help gsem_command_zh"}{...}
{vieweralsosee "[SEM] sem" "help sem_command_zh"}{...}
{vieweralsosee "[SEM] sem 和 gsem 路径表示法" "help sem and gsem path notation"}{...}
{viewerjumpto "语法" "sem_and_gsem_syntax_options_zh##syntax"}{...}
{viewerjumpto "描述" "sem_and_gsem_syntax_options_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "sem_and_gsem_syntax_options_zh##linkspdf"}{...}
{viewerjumpto "选项" "sem_and_gsem_syntax_options_zh##options"}{...}
{viewerjumpto "备注" "sem_and_gsem_syntax_options_zh##remarks"}{...}
{viewerjumpto "示例" "sem_and_gsem_syntax_options_zh##examples"}
{help sem_and_gsem_syntax_options:English Version}
{hline}{...}
{p2colset 1 38 40 2}{...}
{p2col:{bf:[SEM] sem 和 gsem 语法选项} {hline 2}}影响语法解释的选项{p_end}
{p2col:}({mansection SEM semandgsemsyntaxoptions:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{cmd:sem} {it:{help sem and gsem path notation:paths}} ... {cmd:,} ... {it:syntax_options}

{p 8 12 2}
{cmd:gsem} {it:{help sem and gsem path notation:paths}} ... {cmd:,} ... {it:syntax_options}

{synoptset 24}{...}
{synopthdr:语法选项}
{synoptline}
{synopt :{opt lat:ent}{cmd:(}{it:names}{cmd:)}}显式指定潜变量名称{p_end}
{synopt :{opt nocaps:latent}}不将大写的 {it:Names} 视为潜变量{p_end}
{synoptline}

{pstd}
其中 {it:names} 是潜变量名称的空格分隔列表。


{marker description}{...}
{title:描述}

{pstd}
这些选项影响 {cmd:sem} 和 {cmd:gsem} 输入内容的一些小问题。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection SEM semandgsemsyntaxoptionsRemarksandexamples:备注和示例}

{pstd}
上述部分不包括在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{opt latent(names)} 指定 {it:names} 是潜变量的完整名称集。
{cmd:sem} 和 {cmd:gsem} 通常假设潜变量的首字母大写，观察变量的首字母小写；见
{helpb sem_and gsem path_notation:[SEM] sem 和 sem 路径表示法}。当你指定 {opt latent(names)} 时，{cmd:sem} 和 {cmd:gsem} 将列出的变量视为潜变量，其他变量无论大小写都视为观察变量。 {opt latent()} 隱式表示 {opt nocapslatent}。

{phang}
{opt nocapslatent} 指定首字母大写不表示潜变量。当仅拟合观察变量的模型时，且数据集中某些观察变量的首字母大写时，可使用此选项。


{marker remarks}{...}
{title:备注}

{pstd}
我们建议使用默认命名约定。如果你的数据集中包含首字母大写的变量，可以通过输入以下命令将变量转换为小写名称

{phang2}{cmd:. rename *, lower}{p_end}

{pstd}
见 {help rename_group_zh:[D] rename groups}。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse sem_2fmm}{p_end}

{pstd}双因子测量模型{p_end}
{phang2}{cmd:. sem (Affective -> a1 a2 a3 a4 a5) (Cognitive -> c1 c2 c3 c4 c5)}{p_end}

{pstd}直接指定潜变量{p_end}
{phang2}{cmd:. sem (Affective -> a1 a2 a3 a4 a5) (Cognitive -> c1 c2 c3 c4 c5),}{break}
	{cmd: latent(Affective Cognitive)}{p_end}

{pstd}重命名 {cmd:a1} 和 {cmd:a2}{p_end}
{phang2}{cmd:. rename (a1 a2) (A1 A2)}{p_end}

{pstd}不将大写名称视为潜变量{p_end}
{phang2}{cmd:. sem (affective -> A1 A2 a3 a4 a5) (cognitive -> c1 c2 c3 c4 c5),}{break}
	{cmd:  nocapslatent latent(affective cognitive)}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <sem_and_gsem_syntax_options.sthlp>}