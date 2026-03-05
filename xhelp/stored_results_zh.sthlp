{smcl}
{* *! version 1.0.4  14may2018}{...}
{viewerdialog "return/ereturn list" "dialog return_list"}{...}
{vieweralsosee "[R] 存储结果" "mansection R Storedresults"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[P] ereturn" "help ereturn_zh"}{...}
{vieweralsosee "[P] return" "help return_zh"}{...}
{viewerjumpto "语法" "stored_results_zh##syntax"}{...}
{viewerjumpto "描述" "stored_results_zh##description"}{...}
{viewerjumpto "链接到 PDF 文档" "stored_results_zh##linkspdf"}{...}
{viewerjumpto "选项" "stored_results_zh##option"}{...}
{viewerjumpto "备注" "stored_results_zh##remarks"}{...}
{viewerjumpto "示例" "stored_results_zh##examples"}
{help stored_results:English Version}
{hline}{...}
{p2colset 1 23 25 2}{...}
{p2col:{bf:[R] 存储结果} {hline 2}}存储结果{p_end}
{p2col:}({mansection R Storedresults:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{pstd}列出来自一般命令的结果，这些结果存储在 r()

{p 8 15 2}{opt ret:urn} {opt li:st} [{cmd:,} {cmd:all}]


{pstd}列出来自估算命令的结果，这些结果存储在 e()

{p 8 15 2}{opt eret:urn} {opt li:st} [{cmd:,} {cmd:all}]


{pstd}列出来自解析命令的结果，这些结果存储在 s()

{p 8 15 2}{opt sret:urn} {opt li:st}


{marker description}{...}
{title:描述}

{pstd}
许多 Stata 命令存储计算结果，以便可以轻松访问并替换为后续命令。

{pstd}
{opt return} {opt list} 列出存储在 {opt r()} 中的结果。

{pstd}
{opt ereturn} {opt list} 列出存储在 {opt e()} 中的结果。

{pstd}
{opt sreturn} {opt list} 列出存储在 {opt s()} 中的结果。

{pstd}
本条目讨论使用存储结果。希望存储结果的程序员应参见 {help return_zh:[P] return} 和 {help ereturn_zh:[P] ereturn}。


{marker linkspdf}{...}
{title:链接到 PDF 文档}

        {mansection R StoredresultsRemarksandexamples:备注和示例}

{pstd}
上述部分不包括在此帮助文件中。


{marker option}{...}
{title:选项}

{phang}
{opt all} 用于 {opt return list} 和 {opt ereturn list}。 {opt all}
指定同时列出隐藏和历史存储结果以及通常的存储结果。此选项很少使用。有关更多信息，请参见
{mansection P returnRemarksandexamplesUsinghiddenandhistoricalstoredresults:{it:使用隐藏和历史存储结果}}
和
{mansection P returnRemarksandexamplesProgramminghiddenandhistoricalstoredresults:{it:编程隐藏和历史存储结果}}
在 {bf:[P] return} 的 {it:备注和示例} 下。这些部分是以 {cmd:return list} 为条件，但所说的一切同样适用于 {cmd:ereturn list}。

{pmore}
{cmd:all} 不允许与 {cmd:sreturn list} 一起使用，因为 {cmd:s()} 不允许隐藏或历史结果。


{marker remarks}{...}
{title:备注}

{pstd}
Stata 命令被分类为

        r-class  一般命令，将结果存储在 {cmd:r()}
        e-class  估算命令，将结果存储在 {cmd:e()}
        s-class  解析命令，将结果存储在 {cmd:s()}
        n-class  不将结果存储在 {cmd:r()}、{cmd:e()} 或 {cmd:s()} 的命令

{pstd}
还有一个 c-class，{cmd:c()}，包含系统参数和设置的值，以及某些常量，例如 π 的值；请参见 {help creturn_zh:[P] creturn}。但是，程序不能是 c-class。

{pstd}
您可以查看命令的手册条目的 {it:存储结果} 部分，以确定它是 r-class、e-class、s-class 还是 n-class，但很容易猜测。

{pstd}
产生统计结果的命令要么是 r-class，要么是 e-class。
如果它们呈现估算结果，则为 e-class，否则为 r-class。
s-class 是程序员使用的类别，主要用于执行解析的子程序。
n-class 命令明确说明结果的去向。例如，{cmd:generate} 和 {cmd:replace} 是 n-class，因为它们的语法是 {cmd:generate} {it:varname} {cmd:=} ... 和 {cmd:replace}
{it:varname} {cmd:=} ....

{pstd}
执行命令后，可以键入 {cmd:return} {cmd:list}、{cmd:ereturn} {cmd:list} 或 {cmd:sreturn} {cmd:list} 以查看已存储的内容。


{marker examples}{...}
{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse auto}

{pstd}显示 {cmd:mpg} 的摘要统计{p_end}
{phang2}{cmd:. summarize mpg}

{pstd}列出 {cmd:summarize} 存储的结果{p_end}
{phang2}{cmd:. return list}

{pstd}创建标准化的 {cmd:mpg} 变量{p_end}
{phang2}{cmd:. generate double mpgstd = (mpg-r(mean))/r(sd)}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse auto, clear}

{pstd}使用线性回归拟合 {cmd:mpg} 在 {cmd:weight} 和 {cmd:displacement} 上的模型{p_end}
{phang2}{cmd:. regress mpg weight displacement}

{pstd}列出 {cmd:regress} 存储的结果{p_end}
{phang2}{cmd:. ereturn list}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse auto}

{pstd}描述内存中的数据{p_end}
{phang2}{cmd:. describe}

{pstd}列出 {cmd:describe} 存储的结果{p_end}
{phang2}{cmd:. return list}

{pstd}列出 {cmd:describe} 存储的结果，包括历史结果{p_end}
{phang2}{cmd:. return list, all}{p_end}

    {hline}


{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <stored_results.sthlp>}