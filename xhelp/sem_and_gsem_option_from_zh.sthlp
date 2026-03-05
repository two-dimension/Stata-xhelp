{smcl}
{* *! version 2.0.6  14may2018}{...}
{viewerdialog "SEM Builder" "stata sembuilder"}{...}
{vieweralsosee "[SEM] sem 和 gsem 的 from() 选项" "mansection SEM semandgsemoptionfrom()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[SEM] sem" "help sem_command_zh"}{...}
{vieweralsosee "[SEM] gsem" "help gsem_command_zh"}{...}
{vieweralsosee "[SEM] sem 和 gsem 路径表示法" "help sem_and_gsem_path_notation_zh"}{...}
{vieweralsosee "[SEM] sem 模型描述选项" "help sem_model_options_zh"}{...}
{vieweralsosee "[SEM] gsem 模型描述选项" "help gsem_model_options_zh"}{...}
{vieweralsosee "[SEM] gsem 估计选项" "help gsem_estimation_options_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] maximize" "help maximize_zh"}{...}
{viewerjumpto "语法" "sem_and_gsem_option_from_zh##syntax"}{...}
{viewerjumpto "描述" "sem_and_gsem_option_from_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "sem_and_gsem_option_from_zh##linkspdf"}{...}
{viewerjumpto "选项" "sem_and_gsem_option_from_zh##option"}{...}
{viewerjumpto "备注" "sem_and_gsem_option_from_zh##remarks"}{...}
{viewerjumpto "示例" "sem_and_gsem_option_from_zh##examples"}
{help sem_and_gsem_option_from:English Version}
{hline}{...}
{p2colset 1 37 39 2}{...}
{p2col:{bf:[SEM] sem 和 gsem 的 from()} {hline 2}}指定起始值{p_end}
{p2col:}({mansection SEM semandgsemoptionfrom():查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{c -(}{cmd:sem}|{cmd:gsem}{c )-} ... [{cmd:,} ... {cmd:from(}{it:matname}
                     [{cmd:,} {opt skip}]{cmd:)} ...]

{p 8 12 2}
{c -(}{cmd:sem}|{cmd:gsem}{c )-} ... [{cmd:,} ... {cmd:from(}{it:svlist}{cmd:)} ...]

{pstd}
其中 {it:matname} 是 Stata 矩阵的名称

{pstd}
其中 {it:svlist} 是一个以空格分隔的列表，格式为

{phang2}{it:eqname}{cmd::}{it:name} {cmd:=} {it:#}{p_end}


{marker description}{...}
{title:描述}

{pstd}
有关起始值的描述，请参见 {manlink SEM Intro 12}。

{pstd}
通常不需要指定起始值。当存在收敛问题时，往往需要指定起始值。可以通过以下方式指定起始值：

{phang2}
1.  使用子选项 {opt init()}，如在 
{helpb sem_and gsem path_notation##item16:[SEM] sem 和 gsem 路径表示法} 中所述，或使用

{phang2}
2.  如此处所述的选项 {opt from()}。

{pstd}
选项 {opt from()} 尤其方便用于将一个模型的解作为另一个模型的起始值。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection SEM semandgsemoptionfrom()Remarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker option}{...}
{title:选项}

{phang}
{cmd:skip} 是 {opt from(matname)} 的一个选项。它指定忽略 {it:matname} 中在拟合模型时未出现的任何参数。
如果未指定此选项，存在此类参数会导致 {cmd:sem} ({cmd:gsem}) 发出错误信息。


{marker remarks}{...}
{title:备注}

{pstd}
有关更多信息，请参见
{it:{mansection SEM semandgsemoptionfrom()Remarksandexamples:备注和示例}} 
关于 {manlink SEM sem 和 gsem 的 from()} 的信息。


{marker examples}{...}
{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse sem_2fmm}{p_end}

{pstd}拟合一个简化的两因子测量模型{p_end}
{phang2}{cmd:. sem (Affective -> a1 a2 a3 a4)}{break}
	{cmd:(Cognitive -> c1 c2 c3 c4)}{p_end}

{pstd}将结果复制到 {cmd:e(b)} {p_end}
{phang2}{cmd:. matrix b = e(b)}{p_end}

{pstd}在上述模型中添加参数并指定起始值{p_end}
{phang2}{cmd:. sem (Affective -> a1 a2 a3 a4 a5)}{break}
	{cmd:(Cognitive -> c1 c2 c3 c4 c5), from(b)}{p_end}

{pstd}使用替代表示法指定起始值列表{p_end}
{phang2}{cmd:. sem (Affective -> a1 a2 a3 a4 a5)}{break}
	{cmd:(Cognitive -> c1 c2 c3 c4 c5),}{break}
	{cmd: from(a2:Affective = 1 a3:Affective = 1)}{p_end}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse gsem_cfa}{p_end}

{pstd}拟合一个单因子测量模型{p_end}
{phang2}{cmd:. gsem (MathAtt -> att1-att5, ologit)}{p_end}

{pstd}将结果复制到 {cmd:e(b)}{p_end}
{phang2}{cmd:. matrix b = e(b)}{p_end}

{pstd}使用来自单因子模型的结果作为起始值拟合一个两因子测量模型{p_end}

{phang2}{cmd:. gsem (MathAtt -> att1-att5, ologit)}{break} 
        {cmd:(MathAb -> q1-q8, logit), from(b)}{p_end}

    {hline}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <sem_and_gsem_option_from.sthlp>}