{smcl}
{* *! version 1.0.0  11feb2019}{...}
{viewerdialog irt "dialog irt"}{...}
{vieweralsosee "[IRT] estat greport" "mansection IRT estatgreport"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[IRT] irt" "help irt_zh"}{...}
{vieweralsosee "[IRT] irt, group()" "help irt_group_zh"}{...}
{vieweralsosee "[IRT] irt 1pl" "help irt 1pl"}{...}
{vieweralsosee "[IRT] irt 2pl" "help irt 2pl"}{...}
{vieweralsosee "[IRT] irt 3pl" "help irt 3pl"}{...}
{vieweralsosee "[IRT] irt grm" "help irt grm"}{...}
{vieweralsosee "[IRT] irt hybrid" "help irt hybrid"}{...}
{vieweralsosee "[IRT] irt nrm" "help irt nrm"}{...}
{vieweralsosee "[IRT] irt pcm" "help irt pcm"}{...}
{vieweralsosee "[IRT] irt rsm" "help irt rsm"}{...}
{viewerjumpto "语法" "estat greport##syntax"}{...}
{viewerjumpto "菜单" "estat greport##menu_irt"}{...}
{viewerjumpto "描述" "estat greport##description"}{...}
{viewerjumpto "PDF文档链接" "estat_greport_zh##linkspdf"}{...}
{viewerjumpto "选项" "estat greport##options"}{...}
{viewerjumpto "示例" "estat greport##examples"}{...}
{viewerjumpto "存储结果" "estat greport##results"}
{help estat_greport:English Version}
{hline}{...}
{p2colset 1 24 26 2}{...}
{p2col:{bf:[IRT] estat greport} {hline 2}}报告估算的组 IRT 参数{p_end}
{p2col:}({mansection IRT estatgreport:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 16 2}
        {cmd:estat} {cmdab:grep:ort} 
	[{cmd:,} {it:options}]


{synoptset 26 tabbed}{...}
{synopthdr}
{synoptline}
{synopt :{cmd:sort(}{it:p}[{cmd:,} {opt d:escending}]{cmd:)}}根据
    估算的 {it:p} 参数对项目进行排序； {it:p} 可以是 {cmd:a}、{cmd:b} 或 {cmd:c}
    {p_end}
{synopt :{opt byp:arm}}按参数而不是按项目排列表格行{p_end}

{syntab:主要}
{synopt :{opt alab:el(string)}}指定 {cmd:a} 参数标签；默认值为 {cmd:Discrim}{p_end}
{synopt :{opt blab:el(string)}}指定 {cmd:b} 参数标签；默认值为 {cmd:Diff}{p_end}
{synopt :{opt clab:el(string)}}指定 {cmd:c} 参数标签；默认值为 {cmd:Guess}{p_end}
{synopt :{opt seq:label}}按顺序标记参数{p_end}
{synopt :{opt post}}将估算的 IRT 参数及其 VCE 作为估算结果发布{p_end}

{syntab:报告}
{synopt :{cmd:b}[{cmd:(}{help format_zh:{bf:%}{it:fmt}}{cmd:)}]}如何格式化
报告的系数{p_end}
{synopt :{cmd:se}[{cmd:(}{help format_zh:{bf:%}{it:fmt}}{cmd:)}]}报告标准
误差并使用可选格式{p_end}
{synopt :{cmd:t}[{cmd:(}{help format_zh:{bf:%}{it:fmt}}{cmd:)}]}报告 t 或 z
统计量并使用可选格式{p_end}
{synopt :{cmd:p}[{cmd:(}{help format_zh:{bf:%}{it:fmt}}{cmd:)}]}报告 p 值
并使用可选格式{p_end}
{synopt :{opt parmw:idth(#)}}使用 {it:#} 字符来显示变量和
 参数名称{p_end}
{synopt :{opt grw:idth(#)}}使用 {it:#} 字符来显示组名
和统计数据{p_end}
{synopt :{cmdab:sty:le}{cmd:(oneline)}}在变量名称后显示垂直线；这是默认选项{p_end}
{synopt :{cmdab:sty:le}{cmd:(columns)}}在列之间显示垂直线{p_end}
{synopt :{cmdab:sty:le}{cmd:(noline)}}抑制所有垂直线{p_end}
{synopt :{opt grlab:el(string)}}组的列标签{p_end}
{synopt :{opt ti:tle(string)}}表格标题{p_end}
{synoptline}
{p2colreset}{...}


INCLUDE help menu_irt


{marker description}{...}
{title:描述}

{pstd}
{opt estat greport} 显示估算的组 IRT 参数。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection IRT estatgreportQuickstart:快速开始}

        {mansection IRT estatgreportRemarksandexamples:备注与示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{cmd:sort(}{it:p}[{cmd:,} {opt descending}]{cmd:)}
请求根据参数 {it:p} 排序项目，
其中 {it:p} 是 {cmd:a}、{cmd:b} 或 {cmd:c} 之一。

{phang2}
{cmd:sort(a)} 指定根据估算的
辨别率参数进行排序。

{phang2}
{cmd:sort(b)} 指定根据估算的
难度参数进行排序。

{phang2}
{cmd:sort(c)} 指定根据估算的
伪猜测参数进行排序。它仅在指定了选项 {cmd:sepguessing} 的 3PL 模型中相关。

{phang2}
{cmd:descending} 请求按降序报告排序的项目。
默认情况下，排序项目按升序报告。

{phang}
{opt byparm}
请求按参数而不是按项目对表格行进行分组。

{dlgtab:主要}

{phang}
{opt alabel(string)}
用 {it:string} 标记区分度参数。
默认标签为 {cmd:Discrim}。

{phang}
{opt blabel(string)}
用 {it:string} 标记难度参数。
默认标签为 {cmd:Diff}。

{phang}
{opt clabel(string)}
用 {it:string} 标记伪猜测参数。
默认标签为 {cmd:Guess}。
此选项仅适用于 3PL 模型。

{phang}
{opt seqlabel}
按顺序标记每个分类项目内的估算难度参数，
从 1 开始。
在 NRM 中，{opt seqlabel} 也会按顺序标记每个项目内的估算辨别率参数，
从 1 开始。
此选项仅适用于分类模型。

{phang}
{opt post}
使 {opt estat greport} 表现得像 Stata 估算 (e-class)
命令。
{opt estat greport} 将估算的 IRT 参数的向量
以及相应的方差-协方差矩阵发布到 {opt e()}，
因此您可以将估算的 IRT 参数视为其他估算命令的结果。
例如，您可以使用 {opt test} 对参数进行假设的同时检验，或者使用 {opt lincom} 创建线性组合。

{dlgtab:报告}

{phang}
{cmd:b}{cmd:(}{help format_zh:{bf:%}{it:fmt}}{cmd:)}
指定如何显示系数。您可能
会指定 {cmd:b(%9.2f)} 以使小数点对齐。
还有一个 {cmd:b} 选项，指定要显示系数，但这是仅为与 {cmd:se}、{cmd:t} 和 {cmd:p} 选项的一致性而包括的。
系数总是会被显示。

{phang}
{cmd:se}、{cmd:t} 和 {cmd:p} 指定显示标准误差、t 或 z 统计量，
和 p 值。默认情况下不显示它们。
{opth se(fmt)}、{opt t(%fmt)} 和 {opt p(%fmt)} 指定每种的显示格式。

{phang}
{opt parmwidth(#)} 指定用于显示
变量和参数名称的字符位置数。默认值为 {cmd:parmwidth(12)}。

{phang}
{opt grwidth(#)} 指定用于显示
组名称和统计数据的字符位置数。默认值为 {cmd:grwidth(12)}。

{phang}
{opt style(stylespec)} 指定系数表的样式。

{pmore}
{cmd:style(oneline)} 指定在变量之后显示一条垂直线，但不在组之间显示。这是默认设置。

{pmore}
{cmd:style(columns)} 指定在每列之后显示垂直线。

{pmore}
{cmd:style(noline)} 指定不显示任何垂直线。

{phang}
{opt grlabel(string)} 指定组列的标签。默认情况下，使用组变量的值标签，或者如果组变量没有值标签，则使用每个级别的因子变量指示符。

{phang}
{opt title(string)} 指定显示在表格上方的标题。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse masc2}{p_end}
{phang2}{cmd:. irt 2pl q1-q5, group(female)}{p_end}

{pstd}显示估算的难度和辨别率参数
每个组有一个单独的列{p_end}
{phang2}{cmd:. estat greport}{p_end}

{pstd}如上所述，但按升序排序难度{p_end}
{phang2}{cmd:. estat greport, sort(b)}{p_end}

{pstd}如上所述，但按参数类型排序，然后按难度排序{p_end}
{phang2}{cmd:. estat greport, sort(b) byparm}{p_end}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:estat greport} 在 {cmd:r()} 中存储以下内容：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 宏}{p_end}
{synopt:{cmd:r(names)}}用作组名称的标签{p_end}

{p2col 5 15 19 2: 矩阵}{p_end}
{synopt:{cmd:r(b)}}估算的 IRT 参数向量{p_end}
{synopt:{cmd:r(b_pclass)}}参数类别{p_end}
{synopt:{cmd:r(V)}}估算的 IRT 参数的方差-协方差矩阵{p_end}
{p2colreset}{...}


{pstd}
{cmd:estat greport} 与 {cmd:post} 选项一起还会在 {cmd:e()} 中存储以下内容：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 宏}{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}

{p2col 5 15 19 2: 矩阵}{p_end}
{synopt:{cmd:e(b)}}估算的 IRT 参数向量{p_end}
{synopt:{cmd:e(V)}}估算的 IRT 参数的方差-协方差矩阵{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <estat_greport.sthlp>}