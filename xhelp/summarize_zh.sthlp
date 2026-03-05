{smcl}
{* *! version 1.2.4  14may2018}{...}
{viewerdialog summarize "dialog summarize"}{...}
{vieweralsosee "[R] summarize" "mansection R summarize"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] ameans" "help ameans_zh"}{...}
{vieweralsosee "[R] centile" "help centile_zh"}{...}
{vieweralsosee "[R] ci" "help ci_zh"}{...}
{vieweralsosee "[D] codebook" "help codebook_zh"}{...}
{vieweralsosee "[D] describe" "help describe_zh"}{...}
{vieweralsosee "[D] inspect" "help inspect_zh"}{...}
{vieweralsosee "[R] mean" "help mean_zh"}{...}
{vieweralsosee "[R] proportion" "help proportion_zh"}{...}
{vieweralsosee "[R] ratio" "help ratio_zh"}{...}
{vieweralsosee "[ST] stsum" "help stsum_zh"}{...}
{vieweralsosee "[SVY] svy estimation" "help svy_estimation_zh"}{...}
{vieweralsosee "[R] table" "help table_zh"}{...}
{vieweralsosee "[R] tabstat" "help tabstat_zh"}{...}
{vieweralsosee "[R] tabulate, summarize()" "help tabulate_summarize_zh"}{...}
{vieweralsosee "[R] total" "help total_zh"}{...}
{vieweralsosee "[XT] xtsum" "help xtsum_zh"}{...}
{viewerjumpto "Syntax" "summarize_zh##syntax"}{...}
{viewerjumpto "Menu" "summarize_zh##menu"}{...}
{viewerjumpto "Description" "summarize_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "summarize_zh##linkspdf"}{...}
{viewerjumpto "Options" "summarize_zh##options"}{...}
{viewerjumpto "Examples" "summarize_zh##examples"}{...}
{viewerjumpto "Video example" "summarize_zh##video"}{...}
{viewerjumpto "Stored results" "summarize_zh##results"}
{help summarize:English Version}
{hline}{...}
{p2colset 1 18 20 2}{...}
{p2col:{bf:[R] summarize} {hline 2}}汇总统计{p_end}
{p2col:}({mansection R summarize:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 18 2}
{cmdab:su:mmarize} [{varlist}]
{ifin}
[{it:{help summarize##weight:权重}}]
[{cmd:,}
{it:选项}]

{synoptset 16 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:主要}
{synopt:{opt d:etail}}显示额外统计量{p_end}
{synopt:{opt mean:only}}抑制显示; 仅计算均值; 程序员选项{p_end}
{synopt:{opt f:ormat}}使用变量的显示格式{p_end}
{synopt:{opt sep:arator(#)}}在每{it:#}个变量后绘制分隔线; 默认值为
{cmd:separator(5)}{p_end}
{synopt :{it:{help summarize##display_options:显示选项}}}控制
           间距、行宽、基础和空单元{p_end}

{synoptline}
{p2colreset}{...}
{p 4 6 2}
  {it:varlist} 可以包含因子变量; 参见 {help fvvarlist_zh}。
  {p_end}
{p 4 6 2}
  {it:varlist} 可以包含时间序列运算符; 参见 {help tsvarlist_zh}。
  {p_end}
{p 4 6 2}
  {opt by}、{opt rolling} 和 {opt statsby} 都被允许；参见 {help prefix_zh}。
  {p_end}
  {marker weight}{...}
{p 4 6 2}
  {opt aweight}、{opt fweight} 和 {opt iweight} 都被允许。然而，
  {opt iweight}不能与 {opt detail} 选项一起使用；
  参见 {help weight_zh}。
  {p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 汇总、表格和检验 >}
     {bf:汇总和描述性统计 > 汇总统计}


{marker description}{...}
{title:描述}

{pstd}
{opt summarize} 计算并显示多种单变量汇总统计。如果未指定 {it:{help varlist_zh}}，将对数据集中的所有变量计算汇总统计。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection R summarizeQuickstart:快速入门}

        {mansection R summarizeRemarksandexamples:备注和示例}

        {mansection R summarizeMethodsandformulas:方法和公式}

{pstd}
上述部分不包括在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主要}

{phang}
{opt detail} 生成额外统计量，包括偏度、峰度、四个最小值和四个最大值，以及各种百分位数。

{phang}
{opt meanonly} 仅在未指定 {opt detail} 的情况下允许，抑制结果的显示和方差的计算。ado 文件编写者会发现这对于快速调用很有用。

{phang}
{opt format} 请求使用与变量关联的显示格式而不是默认的
{opt g} 显示格式显示汇总统计；参见 {manhelp format D}。

{phang}
{opt separator(#)} 指定在输出中插入分隔线的频率。默认值为 {cmd:separator(5)}，意味着在每五个变量之后绘制一条线。 {cmd:separator(10)} 会在每十个变量之后绘制一条线。 {cmd:separator(0)} 将抑制分隔线的出现。

{marker display_options}{...}
{phang}
{it:显示选项}：
{opt vsquish}，
{opt noempty:cells}，
{opt base:levels}，
{opt allbase:levels}，
{opt nofvlab:el}，
{opt fvwrap(#)}，和
{opt fvwrapon(style)}；
    参见 {helpb estimation options##display_options:[R] 估计选项}。


{marker examples}{...}
{title:示例}

{phang}{cmd:. sysuse auto}{p_end}
{phang}{cmd:. summarize}{p_end}
{phang}{cmd:. summarize mpg weight}{p_end}
{phang}{cmd:. summarize mpg weight if foreign}{p_end}
{phang}{cmd:. summarize mpg weight if foreign, detail}{p_end}
{phang}{cmd:. summarize i.rep78}


{marker video}{...}
{title:视频示例}

{phang}
{browse "http://www.youtube.com/watch?v=kKFbnEWwa2s":Stata中的描述性统计}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:summarize} 将以下内容存储在 {cmd:r()} 中：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:r(N)}}观察数量{p_end}
{synopt:{cmd:r(mean)}}均值{p_end}
{synopt:{cmd:r(skewness)}}偏度 ({cmd:detail} 仅适用){p_end}
{synopt:{cmd:r(min)}}最小值{p_end}
{synopt:{cmd:r(max)}}最大值{p_end}
{synopt:{cmd:r(sum_w)}}权重总和{p_end}
{synopt:{cmd:r(p1)}}第1百分位数 ({cmd:detail} 仅适用){p_end}
{synopt:{cmd:r(p5)}}第5百分位数 ({cmd:detail} 仅适用){p_end}
{synopt:{cmd:r(p10)}}第10百分位数 ({cmd:detail} 仅适用){p_end}
{synopt:{cmd:r(p25)}}第25百分位数 ({cmd:detail} 仅适用){p_end}
{synopt:{cmd:r(p50)}}第50百分位数 ({cmd:detail} 仅适用){p_end}
{synopt:{cmd:r(p75)}}第75百分位数 ({cmd:detail} 仅适用){p_end}
{synopt:{cmd:r(p90)}}第90百分位数 ({cmd:detail} 仅适用){p_end}
{synopt:{cmd:r(p95)}}第95百分位数 ({cmd:detail} 仅适用){p_end}
{synopt:{cmd:r(p99)}}第99百分位数 ({cmd:detail} 仅适用){p_end}
{synopt:{cmd:r(Var)}}方差{p_end}
{synopt:{cmd:r(kurtosis)}}峰度 ({cmd:detail} 仅适用){p_end}
{synopt:{cmd:r(sum)}}变量总和{p_end}
{synopt:{cmd:r(sd)}}标准差{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <summarize.sthlp>}