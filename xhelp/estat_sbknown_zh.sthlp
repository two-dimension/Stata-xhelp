{smcl}
{* *! version 1.0.8  15may2018}{...}
{viewerdialog estat "dialog estat"}{...}
{vieweralsosee "[TS] estat sbknown" "mansection TS estatsbknown"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TS] estat sbcusum" "help estat sbcusum"}{...}
{vieweralsosee "[TS] estat sbsingle" "help estat sbsingle"}{...}
{vieweralsosee "[TS] tsset" "help tsset_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] ivregress" "help ivregress_zh"}{...}
{vieweralsosee "[R] regress" "help regress_zh"}{...}
{viewerjumpto "语法" "estat sbknown##syntax"}{...}
{viewerjumpto "estat菜单" "estat sbknown##menu_estat"}{...}
{viewerjumpto "描述" "estat sbknown##description"}{...}
{viewerjumpto "PDF文档链接" "estat_sbknown_zh##linkspdf"}{...}
{viewerjumpto "选项" "estat sbknown##options"}{...}
{viewerjumpto "示例" "estat sbknown##examples"}{...}
{viewerjumpto "存储结果" "estat sbknown##results"}
{help estat_sbknown:English Version}
{hline}{...}
{p2colset 1 23 25 2}{...}
{p2col:{bf:[TS] estat sbknown} {hline 2}}检验带有已知断裂日期的结构性断裂{p_end}
{p2col:}({mansection TS estatsbknown:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 16 2}
        {cmd:estat sbknown}{cmd:,}
	{opth break:(estat_sbknown##tcl:时间常量列表)}
	[{it:选项}]

{synoptset 34 tabbed}{...}
{synopthdr}
{synoptline}
{p2coldent:* {opth break:(estat_sbknown##tcl:时间常量列表)}}指定一个或多个断裂日期{p_end}
{synopt :{cmd:breakvars(}[{varlist}][{cmd:,} {opt cons:tant}]{cmd:)}}指定要包含在检验中的变量；默认情况下，检验所有系数{p_end}
{synopt :{opt wald}}请求进行Wald检验；默认值{p_end}
{synopt :{opt lr}}请求进行LR检验{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
* {opt break()} 是必需的。{p_end}
{p 4 6 2}
在使用 {cmd:estat sbknown} 之前，您必须 {cmd:tsset} 您的数据；请参见 {help tsset_zh:[TS] tsset}。


INCLUDE help menu_estat


{marker description}{...}
{title:描述}

{pstd}
{opt estat sbknown} 执行Wald检验或似然比（LR）检验，以确定时间序列回归中的系数是否在由已知断裂日期定义的时间段内变化。

{pstd}
{opt estat sbknown} 要求当前的估计结果来自 {help regress_zh} 或 {help ivregress_zh:ivregress 2sls}。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection TS estatsbknownQuickstart:快速入门}

        {mansection TS estatsbknownRemarksandexamples:备注和示例}

        {mansection TS estatsbknownMethodsandformulas:方法和公式}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{opt break(时间常量列表)} 指定一个或多个假定的断裂日期。 {opt break()} 是必需的，至少需有一个断裂日期。

{marker tcl}{...}
{phang2}
{it:时间常量列表} 是一个由一个或多个 {it:时间常量} 元素组成的列表，使用Stata内部格式（SIF）或人类可读格式（HRF）进行指定。如果您使用HRF指定 {it:时间常量列表}，则必须使用其中一个日期时间伪函数；请参见 {help datetime_zh:[D] Datetime}。

{phang}
{cmd:breakvars(}[{varlist}][{cmd:,} {cmd:constant}]{cmd:)} 指定要包含在检验中的变量。默认情况下，检验所有系数。

{phang2}
{opt constant} 指定将常量包含在要检验的变量列表中。 {opt constant} 只能在原始模型是用常量项拟合时才可指定。

{phang}
{opt wald} 请求执行Wald检验。这是默认设置。

{phang}
{opt lr} 请求执行LR检验，而不是Wald检验。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse usmacro}{p_end}
{phang2}{cmd:. regress fedfunds L.fedfunds}{p_end}

{pstd}通过在 {cmd:1970q1} 和 {cmd:1995q1} 指定断裂日期，检验结构性断裂日期并将数据分为三个子样本{p_end}
{phang2}{cmd:. estat sbknown, break(tq(1970q1) tq(1995q1))}{p_end}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:estat sbknown} 在 {cmd:r()} 中存储以下内容：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:r(chi2)}}卡方检验统计量{p_end}
{synopt:{cmd:r(p)}}卡方检验的p值{p_end}
{synopt:{cmd:r(df)}}自由度{p_end}

{p2col 5 15 19 2: 宏}{p_end}
{synopt:{cmd:r(breakdate)}}断裂日期列表{p_end}
{synopt:{cmd:r(breakvars)}}其系数包含在检验中的变量列表{p_end}
{synopt:{cmd:r(test)}}检验的类型{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <estat_sbknown.sthlp>}