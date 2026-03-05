{smcl}
{* *! version 1.1.14  19oct2017}{...}
{viewerdialog "tssmooth ma" "dialog tssmooth_ma"}{...}
{vieweralsosee "[TS] tssmooth ma" "mansection TS tssmoothma"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TS] tsset" "help tsset_zh"}{...}
{vieweralsosee "[TS] tssmooth" "help tssmooth_zh"}{...}
{viewerjumpto "Syntax" "tssmooth ma##syntax"}{...}
{viewerjumpto "Menu" "tssmooth ma##menu"}{...}
{viewerjumpto "Description" "tssmooth ma##description"}{...}
{viewerjumpto "Links to PDF documentation" "tssmooth_ma_zh##linkspdf"}{...}
{viewerjumpto "Options" "tssmooth ma##options"}{...}
{viewerjumpto "Examples" "tssmooth ma##examples"}{...}
{viewerjumpto "Video example" "tssmooth ma##video"}{...}
{viewerjumpto "Stored results" "tssmooth ma##results"}
{help tssmooth_ma:English Version}
{hline}{...}
{p2colset 1 21 23 2}{...}
{p2col:{bf:[TS] tssmooth ma} {hline 2}}移动平均滤波器{p_end}
{p2col:}({mansection TS tssmoothma:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{phang}
均匀权重的移动平均

{p 8 23 2}
{cmd:tssmooth} {cmd:ma} {dtype} {newvar} {cmd:=} {it:{help exp_zh}} {ifin}{cmd:,} 
{opt w:indow}{cmd:(}{it:#l}[{it:#c}[{it:#f}]]{cmd:)} [{cmd:replace}]


{phang}
指定权重的移动平均

{p 8 23 2}
{cmd:tssmooth} {cmd:ma} {dtype} {newvar} {cmd:=} {it:{help exp_zh}} {ifin}{cmd:,}
{opt we:ights}{cmd:(}[{it:{help numlist_zh:numlist_l}}] {cmd:<}{it:#c}{cmd:>}
   [{it:{help numlist_zh:numlist_f}}]{cmd:)} [{cmd:replace}]


{p 4 6 2}您必须在使用 
{cmd:tssmooth ma} 之前 {cmd:tsset} 您的数据； {help tsset_zh:[TS] tsset}.{p_end}
{p 4 6 2}{it:exp} 可能包含时间序列运算符；请参见 
{help tsvarlist_zh}.{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 时间序列 > 平滑器/单变量预测器 >}
    {bf:移动平均滤波器}


{marker description}{...}
{title:描述}

{pstd}
{cmd:tssmooth ma} 创建一个新序列，其中每个观察值是原始序列中相邻观察值的平均值。移动平均可以使用均匀或用户指定的权重进行计算。缺失期将从计算中排除。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection TS tssmoothmaQuickstart:快速入门}

        {mansection TS tssmoothmaRemarksandexamples:备注和示例}

        {mansection TS tssmoothmaMethodsandformulas:方法和公式}

{pstd}
上述部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{cmd:window(}{it:#l}[{it:#c}[{it:#f}]]{cmd:)} 描述均匀加权的移动平均的范围。

{pmore}
{it:#l} 指定要包含的滞后项的数量，
{bind:0 {ul:<} {it:#l} {ul:<} 一半} 样本中的观察值数量。

{pmore}
{it:#c} 是可选的，指定是否在滤波器中包含当前观察值。0 表示排除，1 表示包含。默认情况下，当前观察值被排除。

{pmore}
{it:#f} 是可选的，指定要包含的前导项数量，
{bind:0 {ul:<} {it:#f} {ul:<} 一半} 样本中的观察值数量。

{phang}
{cmd:weights(}[{it:{help numlist_zh:numlist_l}}] {cmd:<}{it:#_c}{cmd:>}
[{it:numlist_f}]{cmd:)}
是计算加权移动平均所需的，描述移动平均的范围，以及应用于平均中每项的权重。中间项实际上被
{cmd:<} 和 {cmd:>} 包围，因此您可以输入 
{cmd:weights(1/2 <3> 2/1)}。

{pmore}
{it:numlist_l} 是可选的，指定在计算移动平均时应用于滞后项的权重。

{pmore}
{it:#_c} 是必需的，指定应用于当前项的权重。

{pmore}
{it:numlist_f} 是可选的，指定在计算移动平均时应用于前导项的权重。

{pmore}
每个 {it:numlist} 中的元素数量限于样本中的一半观察值数量。

{phang}
{opt replace} 替换如果 {newvar} 已经存在。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse sales1}{p_end}
{phang2}{cmd:. tsset}{p_end}

{pstd}创建 {cmd:sales} 的均匀加权移动平均，使用 2 个滞后项、3 个前导项，以及在滤波器中的当前观察值{p_end}
{phang2}{cmd:. tssmooth ma sm1=sales, window(2 1 3)}

{pstd}创建 {cmd:sales} 的加权移动平均，使用 1 和 2 作为滞后项的权重，3 作为当前项的权重，以及 2 和 1 作为前导项的权重{p_end}
{phang2}{cmd:. tssmooth ma sm2=sales, weights(1/2 <3> 2/1)}


{marker video}{...}
{title:视频示例}

{phang2}{browse "http://www.youtube.com/watch?v=KRhroFkSviw":移动平均平滑器}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:tssmooth ma} 将以下内容存储在 {cmd:r()} 中：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:r(N)}}观察值数量{p_end}
{synopt:{cmd:r(w0)}}当前观察值的权重{p_end}
{synopt:{cmd:r(wlead}{it:#}{cmd:)}}前导 {it:#} 的权重（如果指定了前导项）{p_end}
{synopt:{cmd:r(wlag}{it:#}{cmd:)}}滞后 {it:#} 的权重（如果指定了滞后项）{p_end}

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 宏}{p_end}
{synopt:{cmd:r(method)}}平滑方法{p_end}
{synopt:{cmd:r(exp)}}指定的表达式{p_end}
{synopt:{cmd:r(timevar)}}在 {cmd:tsset} 中指定的时间变量{p_end}
{synopt:{cmd:r(panelvar)}}在 {cmd:tsset} 中指定的面板变量{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <tssmooth_ma.sthlp>}