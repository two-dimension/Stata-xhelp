{smcl}
{* *! version 1.2.25  12oct2018}{...}
{viewerdialog xtset "dialog xtset"}{...}
{vieweralsosee "[XT] xtset" "mansection XT xtset"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TS] tsset" "help tsset_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[XT] xtdescribe" "help xtdescribe_zh"}{...}
{vieweralsosee "[XT] xtsum" "help xtsum_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TS] tsfill" "help tsfill_zh"}{...}
{viewerjumpto "Syntax" "xtset_zh##syntax"}{...}
{viewerjumpto "Menu" "xtset_zh##menu"}{...}
{viewerjumpto "Description" "xtset_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "xtset_zh##linkspdf"}{...}
{viewerjumpto "Options" "xtset_zh##options"}{...}
{viewerjumpto "Examples" "xtset_zh##examples"}{...}
{viewerjumpto "Stored results" "xtset_zh##results"}
{help xtset:English Version}
{hline}{...}
{p2colset 1 15 17 2}{...}
{p2col:{bf:[XT] xtset} {hline 2}}声明数据为面板数据{p_end}
{p2col:}({mansection XT xtset:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{pstd}声明数据为面板

{p 8 15 2}
{cmd:xtset} {it:panelvar}

{p 8 15 2}
{cmd:xtset} {it:panelvar} {it:timevar} [{cmd:,} {it:tsoptions}]


{pstd}显示当前数据的 xtset 状态

{p 8 15 2}
{cmd:xtset}


{pstd}清除 xt 设置

{p 8 15 2}
{cmd:xtset, clear}


{pstd}
在声明语法中，{it:panelvar} 确定面板，而可选的 {it:timevar} 确定面板内的时间。{it:tsoptions} 涉及 {it:timevar}。

{synoptset}{...}
{synopthdr:tsoptions}
{synoptline}
{synopt :{it:{help xtset##unitoptions:单位选项}}}指定 {it:timevar} 的单位
{p_end}
{synopt :{it:{help xtset##deltaoption:间隔选项}}}指定 {it:timevar} 的时间间隔长度
{p_end}

{synopt :{opt noquery}}抑制摘要计算和输出{p_end}
{synoptline}
{p 4 6 2}
{opt noquery} 在对话框中未显示。
{p_end}

{marker unitoptions}{...}
{synoptset}{...}
{synopthdr:单位选项}
{synoptline}
{synopt :{it:(默认)}}{it:timevar} 的单位来自 
{it:timevar} 的显示格式{p_end}

{synopt :{opt c:locktime}}{it:timevar} 是 {cmd:%tc}：
{bind:0 = 1jan1960 00:00:00.000}, 
{bind:1 = 1jan1960 00:00:00.001}, 
...
{p_end}
{synopt :{opt d:aily}}{it:timevar} 是 {cmd:%td}：
{bind:0 = 1jan1960},
{bind:1 = 2jan1960},
...
{p_end}
{synopt :{opt w:eekly}}{it:timevar} 是 {cmd:%tw}：
{bind:0 = 1960w1},
{bind:1 = 1960w2},
...
{p_end}
{synopt :{opt m:onthly}}{it:timevar} 是 {cmd:%tm}：
{bind:0 = 1960m1},
{bind:1 = 1960m2},
...
{p_end}
{synopt :{opt q:uarterly}}{it:timevar} 是 {cmd:%tq}：
{bind:0 = 1960q1},
{bind:1 = 1960q2},
...
{p_end}
{synopt :{opt h:alfyearly}}{it:timevar} 是 {cmd:%th}：
{bind:0 = 1960h1},
{bind:1 = 1960h2},
...
{p_end}
{synopt :{opt y:early}}{it:timevar} 是 {cmd:%ty}：
{bind:1960 = 1960},
{bind:1961 = 1961},
...
{p_end}
{synopt :{opt g:eneric}}{it:timevar} 是 {cmd:%tg}：
{bind:0 = ?},
{bind:1 = ?},
...
{p_end}

{synopt :{opth f:ormat(%fmt)}}指定 {it:timevar} 的格式并 
然后应用默认规则
{p_end}
{synoptline}
{p 4 6 2}
在所有情况下，允许负的 {it:timevar} 值。
{p_end}
{p2colreset}{...}

{marker deltaoption}{...}
{pstd}
{it:deltaoption} 指定 {it:timevar} 单位中的观察之间的时间间隔，可以指定为

{synoptset}{...}
{p2coldent:{it:deltaoption}}示例{p_end}
{synoptline}
{synopt :{opt del:ta}{cmd:(}{it:#}{cmd:)}}{...}
{cmd:delta(1)} 或 {cmd:delta(2)}
{p_end}
{synopt :{opt del:ta}{cmd:((}{it:{help exp_zh}}{cmd:))}}{...}
{cmd:delta((7*24))}
{p_end}
{synopt :{opt del:ta}{cmd:(}{it:# units}{cmd:)}}{...}
{cmd:delta(7 days)} 或 
{cmd:delta(15 minutes)} 或 
{bind:{cmd:delta(7 days 15 minutes)}}
{p_end}
{synopt :{opt del:ta}{cmd:((}{it:{help exp_zh}}{cmd:)} {it:units}{cmd:)}}{...}
{cmd:delta((2+3) weeks)}
{p_end}
{synoptline}
{p2colreset}{...}

{pstd}
允许的 {cmd:%tc} 和 {cmd:%tC} {it:timevars} 单位为

		{hline 35}
		{cmd:seconds     second      secs    sec}
		{cmd:minutes     minute      mins    min}
		{cmd:hours       hour}
		{cmd:days        day}
		{cmd:weeks       week}
		{hline 35}

{pstd}
其他所有 {cmd:%t} {it:timevars} 的单位为

		{hline 30}
		{cmd:days          day}
		{cmd:weeks         week}
		{hline 30}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 纵向/面板数据 > 设置和实用工具 >}
      {bf:声明数据集为面板数据}


{marker description}{...}
{title:描述}

{pstd}
{cmd:xtset} 管理数据集的面板设置。在使用其他 {cmd:xt} 命令之前，您必须 {cmd:xtset} 您的数据。{cmd:xtset} {it:panelvar} 声明内存中的数据为一个面板，其中观察顺序不相关。{cmd:xtset} {it:panelvar} {it:timevar} 声明数据为一个面板，其中观察顺序相关。当您指定 {it:timevar} 后，可以使用
{mansection U 11.4.3.6使用因子变量与时间序列运算符:Stata 的时间序列运算符}
并使用 {cmd:ts} 命令分析您的数据，而无需对数据 {help tsset_zh}。

{pstd}
不带参数的 {cmd:xtset} 显示数据当前的 {cmd:xtset} 状态。如果数据设置了 {it:panelvar} 和 {it:timevar}，并且指定了 {it:timevar}，{cmd:xtset} 还会按 {it:panelvar} {it:timevar} 对数据进行排序。如果数据仅使用 {it:panelvar} 设置，则排序顺序不会更改。

{pstd}
{cmd:xtset,} {cmd:clear} 是一个很少使用的程序员命令，用以声明数据不再被视为面板。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection XT xtsetQuickstart:快速开始}

        {mansection XT xtsetRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{it:unitoptions} {cmd:clocktime}, {cmd:daily}, {cmd:weekly}, {cmd:monthly},
    {cmd:quarterly}, {cmd:halfyearly}, {cmd:yearly}, {cmd:generic}, 和
    {opth format(%fmt)} 指定 {it:timevar} 记录的单位。

{pmore}
    {it:timevar} 通常是一个计数变量 1, 2, ...，
    并应解读为调查的第一年、第二年，...或治疗的第一月、第二月，.... 在这些情况下，您不需要指定 {it:unitoption}。

{pmore}
    在其他情况下，{it:timevar} 可能是年份变量或类似的值，例如 2001、2002 等，并应解读为调查年份等。在这种情况下，您不需要指定 {it:unitoption}。

{pmore}
    在其他更复杂的情况下，{it:timevar} 可能是一个完整的 {cmd:%t} 变量；请参见 {manhelp Datetime D}。
    如果 {it:timevar} 已经有一个分配给它的 {cmd:%t} 显示格式，您无需指定 {it:unitoption}； {cmd:xtset} 将从格式中获取单位。然而，如果您尚未为 {cmd:%t} 变量分配适当的 {cmd:%t} 格式，您可以使用 {it:unitoptions} 来告知 {cmd:xtset} 单位。然后 {cmd:xtset} 将为您设置 {it:timevar} 的显示格式。因此，{it:unitoptions} 是方便选项；它们允许您跳过时间变量的格式化。以下所有方案均有相同的最终结果：

            方案 1                方案 2                方案 3
            {hline 62}
            {cmd:format t %td}         {it:(t 未格式化)    (t 未格式化)}
            {cmd:xtset pid t          xtset pid t, daily   xtset pid t, format(%td)}

{pmore}
    {it:timevar} 不是必须是 {cmd:%t} 变量；它可以是您自己制定的任何
    变量，只要它只取整数值。当您 {cmd:xtset} 一个不是 {cmd:%t} 的时间变量时，显示格式不会更改，除非您指定 {it:unitoption}
    {cmd:generic} 或使用 {cmd:format()} 选项。

{phang}
{cmd:delta()} 指定 {it:timevar} 中观察之间的时间间隔，通常在 {it:timevar} 为 {cmd:%tc} 时使用。 {cmd:delta()} 只在与其他 {cmd:%t} 格式或通用时间变量一起使用时才不常见。

{pmore}
    如果未指定 {cmd:delta()}，则假定为 {cmd:delta(1)}。这意味着在 {it:timevar} = 5 时，前一个时间为 {it:timevar} = 5-1=4，下一个时间将是 {it:timevar} = 5+1=6。例如，滞后和超前运算符将以这种方式工作。无论 {it:timevar} 的单位如何，都将假定此项。

{pmore}
    如果您指定了 {cmd:delta(2)}，那么在 {it:timevar} = 5 时，前一个时间将是 {it:timevar} = 5-2 = 3，下一个时间将是 {it:timevar} = 5+2 = 7。滞后和超前运算符将以这种方式工作。在 {it:timevar} = 5 的观察中，{cmd:L.income} 将是 {cmd:income} 在 {it:timevar} = 3 时的值，{cmd:F.income} 将是 {cmd:income} 在 {it:timevar} = 7 时的值。如果您随后添加一个 {it:timevar=4} 的观察，运算符仍将正常工作；也就是说，在 {it:timevar} = 5 时，{cmd:L.income} 仍将具有 {it:timevar} = 3 时的 {cmd:income} 的值。

{pmore}
    {it:timevar} 有两个方面：其单位和其期间长度。
    {it:unitoptions} 设置单位。{cmd:delta()} 设置期间长度。您无需指定一个即指定另一个。您可能有一个通用的 {it:timevar}，但它的计数是 12：0、12、24、.... 您会跳过指定 {it:unitoptions}，但会指定 {cmd:delta(12)}。

{pmore}
    我们提到过 {cmd:delta()} 通常与 {cmd:%tc}
    {it:timevars} 一起使用，因为 Stata 的 {cmd:%tc} 变量具有毫秒单位。如果未指定 {cmd:delta()}，并且在某个模型中引用 {cmd:L.bp}，则您将参考 1 毫秒前的 {cmd:bp} 值。很少有人拥有毫秒周期的数据。
    也许您的数据是按小时记录的。您可以指定 {cmd:delta(3600000)}。或者您可以指定 {cmd:delta((60*60*1000))}，因为 {cmd:delta()} 将允许表达式，如果您包含一对额外的括号。或者您可以指定 {cmd:delta(1} {cmd:hour)}。它们的意思都是一样的：{it:timevar} 的周期性为 3,600,000 毫秒。在 {it:timevar} = 1,489,572,000,000 的观察中（对应于 2007 年 3 月 15 日 10:00:00），{cmd:L.bp} 将是 {it:timevar} = 1,489,572,000,000 - 3,600,000 = 1,489,568,400,000（对应于 2007 年 3 月 15 日 9:00:00）的观察值。

{pmore}
    当您 {cmd:xtset} 数据并指定 {cmd:delta()} 时，{cmd:xtset} 会验证所有观察是否遵循指定的周期性。例如，如果您指定 {cmd:delta(2)}，则 {it:timevar} 可以包含任何子集 {c -(}..., -4, -2, 0, 2, 4, ...{c )-}，或者它可以包含任何子集 {c -(}..., -3, -1, 1, 3, ...{c )-}。如果 {it:timevar} 包含混合值，{cmd:xtset} 将发出错误消息。检查是独立针对每个面板进行的，因此一个面板可能包含来自一个集合的 {it:timevar} 值，而下一个面板可能包含另一个，这样也是可以的。

{phang}
{opt clear} -- 用于 {cmd:xtset,} {cmd:clear} -- 使 Stata 忘记数据曾经被 {cmd:xtset}。这是一个很少使用的程序员选项。

{pstd}
以下选项可与 {cmd:xtset} 一起使用，但在对话框中未显示：

{phang}
{opt noquery} 防止 {cmd:xtset} 执行大部分摘要计算并抑制输出。使用此选项，仅发布以下结果：

	    {cmd:r(tdelta)}
	    {cmd:r(panelvar)}
	    {cmd:r(timevar)}
	    {cmd:r(tsfmt)}
	    {cmd:r(unit)}
	    {cmd:r(unit1)}


{marker examples}{...}
{title:示例}

    {title:没有时间变量的示例}

{pstd}
对于没有时间变量的面板数据集，如包含 {cmd:country} 的数据集以及各国的城市观察，请输入

	    {cmd:. xtset country}

{pstd}
    变量 {cmd:country} 必须是数字。如果变量是字符串，请输入

	    {cmd:. egen cntry = group(country)}
            {cmd:. xtset cntry}
    或者
	    {cmd:. encode country, gen(cntry)}
            {cmd:. xtset cntry}

{pstd}
    第一个将生成一个数字变量 {cmd:cntry}，其中包含 1、2、...，
    用于不同国家。第二个也会做到这一点，但还会创建一个值标签并标记新变量，以便当您
    {cmd:list} 该变量时，它看起来与原始值相同。


    {title:年度面板数据的示例}

{pstd}
对于年度面板数据集，例如包含 {cmd:country} 和 {cmd:year} 的数据集，请输入

	    {cmd:. xtset country year}
   或者
	    {cmd:. xtset country year, yearly}

{pstd}
    使用哪个都没什么大不了的，只有输出会格式化得不同。在第二种情况下，{cmd:year} 变量必须包含值，如 1990 和 2006。在第一种情况下，{cmd:year} 可以包含任何年份编码，包括 1990 和 2006。


    {title:季度面板数据的示例}

{pstd}
对于关于 {cmd:company} 和 {cmd:quarter} 的季度面板数据，请输入 

	    {cmd:. xtset company quarter}

{pstd}
    如果季度编码为 1=1960q1, 2=1960q2 等，您可以输入

	    {cmd:. xtset company quarter, quarterly}

{pstd}
    输出看起来会更好。


    {title:每日面板数据的示例}

{pstd}
对于每日时间面板，{cmd:pid} 是数字人识别 
    号，而 {cmd:date} 是一个 {cmd:%td} 变量，并且已经分配了一个 {cmd:%td} 格式，请输入

	    {cmd:. xtset pid date}

{pstd} 
    如果 {cmd:date} 尚未给定格式：

	    {cmd:. format date %td}
	    {cmd:. xtset pid date}
    或
	    {cmd:. xtset pid date, daily}


    {title:每小时面板数据的示例}

{pstd}
对于每小时面板数据，{cmd:pid} 是病人 ID，{cmd:tod} 是一个 {cmd:%tc}
    变量：

	    {cmd:. xtset pid tod, clocktime delta(1 hour)}

{pstd}
    如果 {cmd:tod} 已经有 {cmd:%tc} 显示格式，则上述操作可以简化为

	    {cmd:. xtset pid tod, delta(1 hour)}


    {title:您可以尝试的示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse pig}

{pstd}声明面板和时间变量{p_end}
{phang2}{cmd:. xtset id week}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse airacc}

{pstd}声明面板和时间变量并指定 1 作为时间单位之间的观察周期{p_end}
{phang2}{cmd:. xtset airline time, delta(1)}

{pstd}与上面的相同{p_end}
{phang2}{cmd:. xtset airline time}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse xtsetxmpl}

{pstd}声明面板和时间变量；指定时钟时间单位并设置 1 小时的间隔{p_end}
{phang2}{cmd:. xtset pid tod, clocktime delta(1 hour)}

{pstd}或者，与上述相同{p_end}
{phang2}{cmd:. webuse xtsetxmpl}{p_end}
{phang2}{cmd:. format tod %tc}{p_end}
{phang2}{cmd:. xtset pid tod, delta(1 hour)}{p_end}

    {hline}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:xtset} 将以下结果存储在 {cmd:r()} 中：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:r(imin)}}最小面板 ID{p_end}
{synopt:{cmd:r(imax)}}最大面板 ID{p_end}
{synopt:{cmd:r(tmin)}}最小时间{p_end}
{synopt:{cmd:r(tmax)}}最大时间{p_end}
{synopt:{cmd:r(tdelta)}}间隔{p_end}
{synopt:{cmd:r(gaps)}}{cmd:1} 如果有间隙，{cmd:0} 否则{p_end}

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 宏}{p_end}
{synopt:{cmd:r(panelvar)}}面板变量的名称{p_end}
{synopt:{cmd:r(timevar)}}时间变量的名称{p_end}
{synopt:{cmd:r(tdeltas)}}格式化的间隔{p_end}
{synopt:{cmd:r(tmins)}}格式化的最小时间{p_end}
{synopt:{cmd:r(tmaxs)}}格式化的最大时间{p_end}
{synopt:{cmd:r(tsfmt)}}{cmd:%}{it:fmt} 的时间变量{p_end}
{synopt:{cmd:r(unit)}}时间变量的单位：
{cmd:Clock}, {cmd:clock}, {cmd:daily}, {cmd:weekly}, 
{cmd:monthly},
{cmd:quarterly}, {cmd:halfyearly}, {cmd:yearly}, 或 {cmd:generic}{p_end}
{synopt:{cmd:r(unit1)}}时间变量的单位：
{cmd:C}, {cmd:c}, 
{cmd:d}, {cmd:w}, {cmd:m}, {cmd:q}, {cmd:h}, {cmd:y}, 或 ""{p_end}
{synopt:{cmd:r(balanced)}}{cmd:unbalanced}, {cmd:weakly balanced}, 或
	      {cmd:strongly balanced}； 如果面板都有相同的时间值，则面板是强平衡的，如果观察数量相同但时间值不同，则是弱平衡的，否则是未平衡的{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <xtset.sthlp>}