{smcl}
{* *! version 1.1.13  19oct2017}{...}
{viewerdialog stci "dialog stci"}{...}
{vieweralsosee "[ST] stci" "mansection ST stci"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[ST] stdescribe" "help stdescribe_zh"}{...}
{vieweralsosee "[ST] stir" "help stir_zh"}{...}
{vieweralsosee "[ST] stptime" "help stptime_zh"}{...}
{vieweralsosee "[ST] sts" "help sts_zh"}{...}
{vieweralsosee "[ST] stset" "help stset_zh"}{...}
{vieweralsosee "[ST] stvary" "help stvary_zh"}{...}
{viewerjumpto "Syntax" "stci_zh##syntax"}{...}
{viewerjumpto "Menu" "stci_zh##menu"}{...}
{viewerjumpto "Description" "stci_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "stci_zh##linkspdf"}{...}
{viewerjumpto "Options" "stci_zh##options"}{...}
{viewerjumpto "Examples" "stci_zh##examples"}{...}
{viewerjumpto "Stored results" "stci_zh##results"}
{help stci:English Version}
{hline}{...}
{p2colset 1 14 16 2}{...}
{p2col:{bf:[ST] stci} {hline 2}}生存时间的均值和百分位数的置信区间{p_end}
{p2col:}({mansection ST stci:查看完整 PDF 手册条目}){p_end}


{marker syntax}{...}
{title:语法}

{p 8 13 2}
{cmd:stci} {ifin} [{cmd:,} {it:选项}]

{synoptset 16 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:主要}
{synopt :{opth by(varlist)}}对每个{it:varlist}的组执行单独计算{p_end}
{synopt :{opt m:edian}}计算中位生存时间；默认值{p_end}
{synopt :{opt r:mean}}计算受限于最长随访时间的均值生存时间{p_end}
{synopt :{opt e:mean}}通过将生存曲线指数延伸到零来计算均值生存时间{p_end}
{synopt :{opt p(#)}}计算生存时间的第{it:#}个百分位数{p_end}
{synopt :{opt cc:orr}}使用连续性修正计算{opt rmean}的标准误{p_end}
{synopt :{opt nosh:ow}}不显示 st 设置信息{p_end}
{synopt :{opt dd(#)}}设定报告的小数位数的最大值{p_end}
{synopt :{opt l:evel(#)}}设定置信水平；默认是 {cmd:level(95)}{p_end}
{synopt :{opt g:raph}}绘制指数延伸的生存函数{p_end}
{synopt :{opt t:max(#)}}设定要绘制的最大分析时间为{it:#}{p_end}

{syntab:绘图}
{synopt :{it:{help cline_options_zh}}}影响绘制线条的呈现{p_end}

{syntab:添加图形}
{synopt :{opth "addplot(addplot_option:plot)"}}将其他图形添加到生成的图形中{p_end}

{syntab:Y 轴, X 轴, 标题, 图例, 总体}
{synopt :{it:twoway_options}}任何除{opt by()}外的选项，详细记录在
    {manhelpi twoway_options G-3}{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
在使用 {cmd:stci} 之前，您必须{cmd:stset}您的数据；请参见
{manhelp stset ST}.{p_end}
{p 4 6 2}
允许使用{opt by}；请参见 {manhelp by D}。


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 生存分析 > 摘要统计、检验和表格 >}
       {bf:生存时间的均值和百分位数的置信区间}


{marker description}{...}
{title:描述}

{pstd}
{cmd:stci} 计算生存时间的均值和百分位数、标准误及置信区间。对于多事件数据，生存时间是直到失败的时间。

{pstd}
{cmd:stci} 可用于单记录或多记录，单失败或多失败的生存数据。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection ST stciQuickstart:快速入门}

        {mansection ST stciRemarksandexamples:备注和示例}

        {mansection ST stciMethodsandformulas:方法和公式}

{pstd}
上述部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主要}

{phang}
{opth by(varlist)} 指定对每个由{it:varlist}中的变量相等值识别的组进行单独计算，从而生成单独的摘要和总体总和。{it:varlist} 可以包含任意数量的变量，每个变量可以是字符串或数字。

{phang}
{opt median} 指定中位生存时间。这是默认值。

{phang}
{opt rmean} 和 {opt emean} 指定均值生存时间。如果最长的随访时间被截尾，{opt emean}（扩展均值）通过将生存曲线指数延伸到零来计算均值生存，而 {opt rmean}（受限均值）计算受限于最长随访时间的均值生存。如果最长的随访时间是失败，受限均值生存时间和扩展均值生存时间是相等的。

{phang}
{opt p(#)} 指定要计算的生存时间的百分位数。例如，{cmd:p(25)}将计算生存时间的第25百分位数，而{cmd:p(75)}将计算生存时间的第75百分位数。指定{cmd:p(50)}与指定{opt median}选项相同。

{phang}
{opt ccorr} 指定计算受限均值生存时间的标准误使用连续性修正。{opt ccorr} 仅在使用{opt rmean}选项时有效。

{phang}
{opt noshow} 防止 {cmd:stci} 显示关键的 st 变量。此选项很少使用，因为大多数人输入 {cmd:stset, show} 或 {cmd:stset, noshow} 来设置是否希望在每个 st 命令的输出顶部看到提到的这些变量；请参见 {manhelp stset ST}。

{phang}
{opt dd(#)} 指定标准误和置信区间报告的小数位数的最大值。此选项仅影响值的报告方式，而不影响计算方式。

{phang}
{opt level(#)} 指定置信区间的置信水平，以百分比表示。默认值为 {cmd:level(95)} 或由 {helpb set level} 设置。

{phang}
{opt graph} 指定绘制指数延伸的生存函数。此选项仅在同时指定了{opt emean}选项时有效，并且不能与{opt by()}选项一起使用。

{phang}
{opt tmax(#)} 用于{opt graph}选项。它指定要绘制的最大分析时间。

{dlgtab:绘图}

{phang}
{it:cline_options} 影响绘制线条的呈现；请参见{manhelpi cline_options G-3}。

{dlgtab:添加图形}

{phang}
{opt addplot(plot)} 提供了一种将其他图形添加到生成图形中的方法；请参见{manhelpi addplot_option G-3}。

{dlgtab:Y 轴, X 轴, 标题, 图例, 总体}

{phang}
{it:twoway_options} 是 {manhelpi twoway_options G-3} 中记录的任何选项，不包括 {opt by()}。这些包括图形标题的选项（见 {manhelpi title_options G-3}）和将图形保存到磁盘的选项（见 {manhelpi saving_option G-3}）。


{marker examples}{...}
{title:单记录生存数据示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse page2}

{pstd}计算中位生存时间{p_end}
{phang2}{cmd:. stci}

{pstd}按组计算中位生存时间{p_end}
{phang2}{cmd:. stci, by(group)}

{pstd}计算生存时间的第25百分位数{p_end}
{phang2}{cmd:. stci, p(25)}

{pstd}按组计算生存时间的第25百分位数{p_end}
{phang2}{cmd:. stci, p(25) by(group)}

{pstd}按组计算受限于最长随访时间的均值生存时间{p_end}
{phang2}{cmd:. stci, rmean by(group)}

{pstd}通过将生存曲线延伸到 0 计算均值生存时间{p_end}
{phang2}{cmd:. stci, emean}

{pstd}与上面相同，但还绘制指数延伸的生存函数{p_end}
{phang2}{cmd:. stci, emean graph}


{title:多记录生存数据示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse stan3}

{pstd}计算中位生存时间{p_end}
{phang2}{cmd:. stci}

{pstd}按组计算中位生存时间{p_end}
{phang2}{cmd:. stci, by(posttran)}

{pstd}报告在同一受试者内 {cmd:posttran} 的值是随着时间变化的{p_end}
{phang2}{cmd:. stvary posttran}


{title:多失败数据示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse mfail2}

{pstd}显示 st 设置{p_end}
{phang2}{cmd:. stset}

{pstd}计算中位生存时间{p_end}
{phang2}{cmd:. stci}

{pstd}创建 {cmd:nf}，包含截至观察的进入时间时每个受试者的累积失败次数{p_end}
{phang2}{cmd:. stgen nf = nfailures()}

{pstd}按组计算中位生存时间{p_end}
{phang2}{cmd:. stci, by(nf)}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:stci} 将以下内容存储在 {cmd:r()} 中：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:r(N_sub)}}受试者数量{p_end}
{synopt:{cmd:r(p}{it:#}{cmd:)}}第{it:#}个百分位数{p_end}
{synopt:{cmd:r(rmean)}}受限均值{p_end}
{synopt:{cmd:r(emean)}}扩展均值{p_end}
{synopt:{cmd:r(se)}}标准误{p_end}
{synopt:{cmd:r(lb)}}置信区间的下界{p_end}
{synopt:{cmd:r(ub)}}置信区间的上界{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <stci.sthlp>}