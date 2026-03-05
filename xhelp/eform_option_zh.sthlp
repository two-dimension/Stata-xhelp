{smcl}
{* *! version 1.1.8  19oct2017}{...}
{vieweralsosee "[R] eform_option" "mansection R eform_option"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[P] _coef_table" "help _coef_table_zh"}{...}
{vieweralsosee "[R] ml" "help ml_zh"}{...}
{viewerjumpto "描述" "eform_option_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "eform_option_zh##linkspdf"}{...}
{viewerjumpto "示例" "eform_option_zh##examples"}
{help eform_option:English Version}
{hline}{...}
{p2colset 1 21 23 2}{...}
{p2col:{bf:[R]} {it:eform_option} {hline 2}}显示指数化系数{p_end}
{p2col:}({mansection R eform_option:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:描述}

{pstd}
一个 {it:eform_option} 使得系数表以指数化形式显示：为每个系数，显示 exp(b) 而不是 b。标准误差和置信区间也被转换。

{pstd}
一个 {it:eform_option} 包含以下选项：

{p2colset 9 32 36 2}{...}
{p2col :{it:eform_option}}描述{p_end}
{p2line}
{p2col :{opth eform:(strings:string)}}使用 {it:string} 作为列标题{p_end}

{p2col :{opt eform}}指数化
	系数，{it:string} 是 {cmd:exp(b)}{p_end}
{p2col :{opt hr}}风险比，{it:string} 是 {cmd:Haz. Ratio}{p_end}
{p2col :{opt shr}}子风险比，{it:string} 是 {cmd:SHR}{p_end}
{p2col :{opt ir:r}}发生率比，{it:string} 是 {cmd:IRR}{p_end}
{p2col :{opt or}}优势比，{it:string} 是 {cmd:Odds Ratio}{p_end}
{p2col :{opt rr:r}}相对风险比，{it:string} 是 {cmd:RRR}{p_end}
{p2line}


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection R eform_optionRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker examples}{...}
{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse nhanes2d}

{pstd}使用 {cmd:svy} 前缀执行 logit 回归，并显示优势比而非系数{p_end}
{phang2}{cmd:. svy, or: logit highbp female black}{p_end}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse lbw}

{pstd}拟合补充 log-log 模型，显示指数化系数{p_end}
{phang2}{cmd:. cloglog low age lwt i.race smoke ptl ht ui, eform}{p_end}

    {hline}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <eform_option.sthlp>}