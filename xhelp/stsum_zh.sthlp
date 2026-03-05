{smcl}
{* *! version 1.1.8  19oct2017}{...}
{viewerdialog stsum "dialog stsum"}{...}
{vieweralsosee "[ST] stsum" "mansection ST stsum"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[ST] stci" "help stci_zh"}{...}
{vieweralsosee "[ST] stdescribe" "help stdescribe_zh"}{...}
{vieweralsosee "[ST] stgen" "help stgen_zh"}{...}
{vieweralsosee "[ST] stir" "help stir_zh"}{...}
{vieweralsosee "[ST] stptime" "help stptime_zh"}{...}
{vieweralsosee "[ST] sts" "help sts_zh"}{...}
{vieweralsosee "[ST] stset" "help stset_zh"}{...}
{vieweralsosee "[ST] stvary" "help stvary_zh"}{...}
{viewerjumpto "Syntax" "stsum_zh##syntax"}{...}
{viewerjumpto "Menu" "stsum_zh##menu"}{...}
{viewerjumpto "Description" "stsum_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "stsum_zh##linkspdf"}{...}
{viewerjumpto "Options" "stsum_zh##options"}{...}
{viewerjumpto "Examples" "stsum_zh##examples"}{...}
{viewerjumpto "Video example" "stsum_zh##video"}{...}
{viewerjumpto "Stored results" "stsum_zh##results"}
{help stsum:English Version}
{hline}{...}
{p2colset 1 15 17 2}{...}
{p2col:{bf:[ST] stsum} {hline 2}}汇总生存时间数据{p_end}
{p2col:}({mansection ST stsum:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 14 2}
{cmd:stsum} {ifin} [{cmd:,} {opth by(varlist)} {opt nosh:ow}]

{pstd}
在使用 {cmd:stsum} 之前，您必须先 {cmd:stset} 您的数据；请参见 {manhelp stset ST}.{p_end}
{pstd}
允许使用 {cmd:by}；请参见 {manhelp by D}.{p_end}
{pstd}
可以使用 {cmd:stset} 指定 {opt fweight}、{opt iweight} 和 {opt pweight}；请参见 {manhelp stset ST}.{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 生存分析 > 汇总统计、检验和表格 >}
      {bf:汇总生存时间数据}


{marker description}{...}
{title:描述}

{pstd}
{cmd:stsum} 提供摘要统计信息：风险时间、发生率、受试者数以及生存时间的第 25 个、第 50 个和第 75 个百分位数。

{pstd}
{cmd:stsum} 可用于单记录或多记录，或单事件或多事件的生存数据。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection ST stsumQuickstart:快速入门}

        {mansection ST stsumRemarksandexamples:备注和示例}

        {mansection ST stsumMethodsandformulas:方法和公式}

{pstd}
上述部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主}

{phang}
{opth by(varlist)} 请求为每个组提供单独的汇总以及总体总和。如果观察值在 {it:varlist} 的变量值相等，则在同一组中。 {it:varlist} 可以包含任意数量的字符串或数值变量。

{phang}
{opt noshow} 阻止 {cmd:stsum} 显示关键生存分析变量。此选项不常用，因为大多数人通过输入 {cmd:stset, show} 或 {cmd:stset, noshow} 来设置是否希望在每个生存命令的输出顶部看到这些变量；请参见 {manhelp stset ST}。


{marker examples}{...}
{title:使用单次事件数据的示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse page2}

{pstd}汇总单记录生存数据{p_end}
{phang2}{cmd:. stsum}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse stan3}

{pstd}汇总多记录生存数据{p_end}
{phang2}{cmd:. stsum}

{pstd}汇总不同类别的多记录生存数据 {cmd:posttran}{p_end}
{phang2}{cmd:. stsum, by(posttran)}

{pstd}报告在时间上 {cmd:posttran} 的值是否在主题内变化{p_end}
{phang2}{cmd:. stvary posttran}{p_end}
    {hline}


{title:使用多事件数据的示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse mfail2}

{pstd}显示生存设置{p_end}
{phang2}{cmd:. st}

{pstd}创建 {cmd:nf}，包含观察进入时间点的每个主题的累计故障数{p_end}
{phang2}{cmd:. stgen nf = nfailures()}

{pstd}按 {cmd:nf} 的类别汇总数据{p_end}
{phang2}{cmd:. stsum, by(nf)}


{marker video}{...}
{title:视频示例}

{phang}
{browse "https://www.youtube.com/watch?v=zw8UvYdI8y8":如何描述和汇总结存数据}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:stsum} 在 {cmd:r()} 中存储以下内容：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:r(p25)}}第 25 个百分位数{p_end}
{synopt:{cmd:r(p50)}}第 50 个百分位数{p_end}
{synopt:{cmd:r(p75)}}第 75 个百分位数{p_end}
{synopt:{cmd:r(risk)}}风险时间{p_end}
{synopt:{cmd:r(ir)}}发生率{p_end}
{synopt:{cmd:r(N_sub)}}受试者数{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <stsum.sthlp>}