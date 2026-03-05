{smcl}
{* *! version 1.1.7  15jun2019}{...}
{viewerdialog sample "dialog sample"}{...}
{vieweralsosee "[D] sample" "mansection D sample"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] bsample" "help bsample_zh"}{...}
{vieweralsosee "[D] splitsample" "help splitsample_zh"}{...}
{viewerjumpto "语法" "sample_zh##syntax"}{...}
{viewerjumpto "菜单" "sample_zh##menu"}{...}
{viewerjumpto "描述" "sample_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "sample_zh##linkspdf"}{...}
{viewerjumpto "选项" "sample_zh##options"}{...}
{viewerjumpto "示例" "sample_zh##examples"}
{help sample:English Version}
{hline}{...}
{p2colset 1 15 17 2}{...}
{p2col:{bf:[D] sample} {hline 2}}抽取随机样本{p_end}
{p2col:}({mansection D sample:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 15 2}
{cmd:sample}
{it:#}
{ifin}
[{cmd:,} {opt c:ount} {opth by:(varlist:groupvars)}]

{p 4 6 2}
{opt by} 是允许的；请参见 {manhelp by D}。


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 重抽样 > 抽取随机样本}


{marker description}{...}
{title:描述}

{pstd}
{opt sample} 从内存中的数据中抽取随机样本。这里的“取样”定义为不放回地抽取观测值；请参阅 {manhelp bsample R} 了解放回抽样。

{pstd}
抽取的样本大小可以以百分比或计数的形式指定：

{pin}
    {opt sample} 不带 {opt count} 选项时，会抽取一个 {it:#}% 的伪随机样本，因此丢弃（100 - {it:#})% 的观测值。

{pin}
    {opt sample} 带 {opt count} 选项时，会抽取一个 {it:#} 观测值的伪随机样本，因此丢弃 {cmd:_N} - {it:#} 观测值。{it:#} 可以大于 {help _N}，在这种情况下，会保留所有观测值。

{pstd}
在这两种情况下，不满足可选的 {opt if} 和 {opt in} 条件的观测值都会被保留（以 100% 抽样）。

{pstd}
如果您希望复现结果，必须首先设置随机数种子；请参见 {manhelp set_seed R:set seed}。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection D sampleQuickstart:快速开始}

        {mansection D sampleRemarksandexamples:备注与示例}

{pstd}
上述部分未包括在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{opt count} 指定 {it:#} 在 {opt sample} {it:#} 被解释为观测值计数而不是百分比。输入 {opt sample 5} 而不带 {opt count} 选项意味着抽取一个 5% 的样本；然而，输入 {opt sample 5, count} 则会抽取 5 个观测值的样本。

{pmore}
    指定 {it:#} 大于数据集中的观测值数量不是错误。

{phang}
{opth by:(varlist:groupvars)} 指定在每个 {it:groupvars} 的值集内抽取一个 {it:#}% 的样本，从而保持每组的比例。

{pmore}
    {opt count} 可以与 {opt by()} 一起使用。例如，输入 {bind:{cmd:sample 50, count by(sex)}} 会分别为男性和女性抽取 50 的样本。

{pmore}
    指定 {bind:{cmd:by} {it:varlist}{cmd::} {cmd:sample} {it:#}} 等同于指定 {bind:{cmd:sample} {it:#}{cmd:,} {cmd:by(}{it:varlist}{cmd:)}}；使用您更喜欢的语法。


{marker examples}{...}
{title:示例}

    {hline}
    设置
{phang2}{cmd:. webuse nlswork}

{pstd}描述数据{p_end}
{phang2}{cmd:. describe, short}

{pstd}抽取 10% 样本{p_end}
{phang2}{cmd:. sample 10}

{pstd}描述结果数据{p_end}
{phang2}{cmd:. describe, short}

    {hline}
    设置
{phang2}{cmd:. webuse nlswork, clear}

{pstd}创建一个单变量频率计数表{p_end}
{phang2}{cmd:. tab race}

{pstd}保留 100% 的 {cmd:race} != 1 的女性，但只保留 10% 的 {cmd:race} = 1 的女性{p_end}
{phang2}{cmd:. sample 10 if race == 1}

    {hline}
    设置
{phang2}{cmd:. webuse nlswork, clear}

{pstd}保留每个三类 {cmd:race} 的 10%{p_end}
{phang2}{cmd:. sample 10, by(race)}

    {hline}
    设置
{phang2}{cmd:. webuse nlswork, clear}

{pstd}抽取 2,500 的样本{p_end}
{phang2}{cmd:. sample 2500, count}

{pstd}描述结果数据{p_end}
{phang2}{cmd:. describe, short}{p_end}
    {hline}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <sample.sthlp>}