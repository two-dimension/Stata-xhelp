{smcl}
{* *! version 1.1.10  14may2018}{...}
{viewerdialog cumul "dialog cumul"}{...}
{vieweralsosee "[R] cumul" "mansection R cumul"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] 诊断图" "help diagnostic_plots_zh"}{...}
{vieweralsosee "[R] 核密度估计" "help kdensity_zh"}{...}
{vieweralsosee "[D] 堆叠" "help stack_zh"}{...}
{viewerjumpto "语法" "cumul_zh##syntax"}{...}
{viewerjumpto "菜单" "cumul_zh##menu"}{...}
{viewerjumpto "描述" "cumul_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "cumul_zh##linkspdf"}{...}
{viewerjumpto "选项" "cumul_zh##options"}{...}
{viewerjumpto "示例" "cumul_zh##examples"}
{help cumul:English Version}
{hline}{...}
{p2colset 1 14 16 2}{...}
{p2col:{bf:[R] cumul} {hline 2}}累积分布{p_end}
{p2col:}({mansection R cumul:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 14 2}
{cmd:cumul}
{varname}
{ifin}
[{it:{help cumul##weight:权重}}]
{cmd:,}
{opth g:enerate(newvar)}
[{it:选项}]

{synoptset 20 tabbed}{...}
{synopthdr}
{synoptline}
{syntab :主要}
{p2coldent :* {opth g:enerate(newvar)}}创建变量 {it:newvar}{p_end}
{synopt :{opt f:req}}使用频率单位进行累积{p_end}
{synopt :{opt eq:ual}}对相同值生成相等的累积{p_end}
{synoptline}
{p 4 6 2}
* {opt generate(newvar)} 是必需的。{p_end}
{p 4 6 2}
{opt by} 是允许的；请参阅 {manhelp by D}.{p_end}
{marker weight}{...}
{p 4 6 2}
{opt fweight} 和 {opt aweight} 是允许的；请参阅 {help weight_zh}.{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 摘要、表格和测试 > 分布图和测试}
      {bf:> 生成累积分布}


{marker description}{...}
{title:描述}

{pstd}
{opt cumul} 创建 {newvar}，定义为 {varname} 的经验累积分布函数。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection R cumulQuickstart:快速入门}

        {mansection R cumulRemarksandexamples:备注和示例}

{pstd}
上述部分不包括在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主要}

{phang}
{opth generate(newvar)} 是必需的。它指定要创建的新变量的名称。

{phang}
{opt freq} 指定累积应该以频率单位表示；否则，它会进行标准化，使得 {newvar} 在 {varname} 的最大值处为 1。

{phang}
{opt equal} 请求具有相同值的观察在 {newvar} 中获得相同的累积值。


{marker examples}{...}
{title:示例}

{pstd}
要绘制累积分布：{p_end}

{phang2}{cmd:. webuse hsng}{p_end}
{phang2}{cmd:. cumul faminc, gen(cum)}{p_end}
{phang2}{cmd:. line cum faminc, sort}

{pstd}
要在同一图上绘制两个累积分布：{p_end}

{phang2}{cmd:. sysuse citytemp, clear}{p_end}
{phang2}{cmd:. cumul tempjan, gen(cjan)}{p_end}
{phang2}{cmd:. cumul tempjuly, gen(cjuly)}{p_end}
{phang2}{cmd:. stack cjan tempjan  cjuly tempjuly, into(c temp) wide clear}{p_end}
{phang2}{cmd:. line cjan cjuly temp, sort}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <cumul.sthlp>}