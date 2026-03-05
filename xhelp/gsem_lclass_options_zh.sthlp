{smcl}
{* *! version 1.0.7  14may2018}{...}
{viewerdialog "LCA (latent class analysis)" "dialog lca"}{...}
{vieweralsosee "[SEM] gsem lclass options" "mansection SEM gsemlclassoptions"}{...}
{vieweralsosee "[SEM] Intro 2" "mansection SEM Intro2"}{...}
{findalias asgsemlca}{...}
{findalias asgsemlcagof}{...}
{findalias asgsemlpa}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[SEM] gsem" "help gsem_command_zh"}{...}
{viewerjumpto "Syntax" "gsem_lclass_options_zh##syntax"}{...}
{viewerjumpto "Description" "gsem_lclass_options_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "gsem_lclass_options_zh##linkspdf"}{...}
{viewerjumpto "Options" "gsem_lclass_options_zh##options"}{...}
{viewerjumpto "Remarks" "gsem_lclass_options_zh##remarks"}{...}
{viewerjumpto "Example" "gsem_lclass_options_zh##example"}
{help gsem_lclass_options:English Version}
{hline}{...}
{p2colset 1 30 32 2}{...}
{p2col:{bf:[SEM] gsem lclass options} {hline 2}}拟合具有潜在类别的模型{p_end}
{p2col:}({mansection SEM gsemlclassoptions:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{cmd:gsem} {it:paths} ...{cmd:,}
... {opt lclass}{cmd:(}{it:lcname} {it:#} [{cmd:,} {opt base(#)}]{cmd:)}
{opt lcin:variant(pclassname)}

{synoptset 24}{...}
{synopthdr:lclass_options}
{synoptline}
{synopt :{opt lclass()}}拟合具有潜在类别的模型{p_end}
{synopt :{opt lcin:variant(pclassname)}}指定参数在潜在类别之间相等{p_end}
{synoptline}

{marker pclassname}{...}
{synoptset 24}{...}
{p2col:{it:pclassname}}描述{p_end}
{p2line}
{p2col:{opt cons}}截距和切点{p_end}

{p2col:{opt coef}}固定系数{p_end}

{p2col:{opt errv:ar}}误差的协方差{p_end}
{p2col:{opt scale}}缩放参数{p_end}
{p2line}
{p2col:{opt all}}以上所有{p_end}
{p2col:{opt none}}以上都不{p_end}
{p2line}
{p2colreset}{...}
{p 4 6 2}
{cmd:lcinvariant(errvar scale)} 是默认值，若
{opt lcinvariant()} 未指定。{p_end}


{marker description}{...}
{title:描述}

{pstd}
{cmd:gsem} 可以拟合具有指定数量的潜在类别的分类潜在变量模型。一些参数可以在类别之间变化，而其他参数则被约束为在类别之间相等。

{pstd}
当指定 {opt lclass()} 选项时，{cmd:gsem} 执行这样的估计。 {opt lcinvariant(pclassname)} 选项指定哪些参数在潜在类别之间被约束为相等。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection SEM gsemlclassoptionsRemarksandexamples:备注与示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{opt lclass}{cmd:(}{it:lcname} {it:#} [{cmd:,} {opt base(#)}]{cmd:)}
指定模型如上所述进行拟合。

{pmore}
{it:lcname}
指定一个分类潜在变量的名称，{it:#} 指定潜在类别的数量。潜在类别是从 {cmd:1} 开始到 {it:#} 的连续整数。

{pmore}
{opt base(#)} 指定将 {it:lcname} 的类别视为基础类别。默认值为 {cmd:base(1)}。

{phang}
{opth lcinvariant:(gsem_lclass_options##pclassname:pclassname)}
指定哪些模型参数类在潜在类别之间应被约束为相等。类别如上所定义。默认是 {cmd:lcinvariant(errvar scale)}。


{marker remarks}{...}
{title:备注}

{pstd}
请参阅 {manlink SEM Intro 2}，并参阅 {findalias gsemlca}，{findalias gsemlcagof} 和 {findalias gsemlpa}。


{marker example}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse gsem_lca1}{p_end}

{pstd}潜在类别模型{p_end}
{phang2}{cmd:. gsem (accident play insurance stock <- ), logit lclass(C 2)}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <gsem_lclass_options.sthlp>}