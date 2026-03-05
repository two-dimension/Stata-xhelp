{smcl}
{* *! version 1.4.6  12oct2018}{...}
{viewerdialog tsset "dialog tsset"}{...}
{vieweralsosee "[TS] tsset" "mansection TS tsset"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TS] tsfill" "help tsfill_zh"}{...}
{viewerjumpto "语法" "tsset_zh##syntax"}{...}
{viewerjumpto "菜单" "tsset_zh##menu"}{...}
{viewerjumpto "描述" "tsset_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "tsset_zh##linkspdf"}{...}
{viewerjumpto "选项" "tsset_zh##options"}{...}
{viewerjumpto "示例" "tsset_zh##examples"}{...}
{viewerjumpto "视频示例" "tsset_zh##video"}{...}
{viewerjumpto "存储的结果" "tsset_zh##results"}
{help tsset:English Version}
{hline}{...}
{p2colset 1 15 17 2}{...}
{p2col:{bf:[TS] tsset} {hline 2}}声明数据为时间序列数据{p_end}
{p2col:}({mansection TS tsset:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{pstd}声明数据为时间序列

{p 8 15 2}
{cmd:tsset} {it:timevar} [{cmd:,} {it:options}]

{p 8 15 2}
{cmd:tsset} {it:panelvar} {it:timevar} [{cmd:,} {it:options}]


{pstd}显示当前数据的 tsset 状态

{p 8 15 2}
{cmd:tsset}


{pstd}清除时间序列设置

{p 8 15 2}
{cmd:tsset, clear}


{pstd}
在声明语法中，{it:panelvar} 标识面板，而 
{it:timevar} 标识时间。

{synoptset tabbed}{...}
{synopthdr:选项}
{synoptline}
{syntab:主要}
{synopt :{help tsset##unitoptions:{it:unitoptions}}}指定 {it:timevar} 的单位
{p_end}

{syntab:时间间隔}
{synopt :{help tsset##deltaoption:{it:deltaoption}}}指定 {it:timevar} 的时间段长度
{p_end}

{synopt :{opt noquery}}抑制摘要计算和输出{p_end}
{synoptline}
{p 4 6 2}
{opt noquery} 不会显示在对话框中。
{p_end}

{marker unitoptions}{...}
{synoptset}{...}
{synopthdr:单位选项}
{synoptline}
{synopt :{it:(default)}}{it:timevar} 的单位来自于 
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
在所有情况下，允许负 {it:timevar} 值。
{p_end}
{p2colreset}{...}

{marker deltaoption}{...}
{pstd}
{it:deltaoption} 指定 {it:timevar} 单位间的观察周期 
可以指定为

{synoptset}{...}
{p2coldent:{it:deltaoption}}示例{p_end}
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
允许的 {cmd:%tc} 和 {cmd:%tC} {it:timevars} 单位有

		{hline 35}
		{cmd:seconds     second      secs    sec}
		{cmd:minutes     minute      mins    min}
		{cmd:hours       hour}
		{cmd:days        day}
		{cmd:weeks       week}
		{hline 35}

{pstd}
对于所有其他 {cmd:%t} {it:timevars}，指定的单位必须与数据的频率匹配；例如，对于{cmd:%ty}，单位必须是年或几年。


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 时间序列 > 设置和工具 >}
    {bf:声明数据集为时间序列数据}


{marker description}{...}
{title:描述}

{pstd}
{cmd:tsset} 管理数据集的时间序列设置。
{cmd:tsset} {it:timevar} 声明内存中的数据为时间序列。
这使您能够使用
{mansection U 11.4.3.6使用因子变量与时间序列运算符:Stata 的时间序列运算符}
并使用 {cmd:ts} 命令分析数据。
{cmd:tsset} {it:panelvar} {it:timevar} 声明数据为面板数据，
也称为横截面时间序列数据，包含每个 {it:panelvar} 值的一个时间序列。
这使您也能够使用 {cmd:xt} 命令来分析数据，而无需
{help xtset_zh} 数据。

{pstd}
不带参数的 {cmd:tsset} 显示当前数据的设置状态
并按照 {it:timevar} 或 {it:panelvar} {it:timevar} 进行排序。

{pstd}
{cmd:tsset,} {cmd:clear} 是一个不常用的程序员命令，用以声明数据不再是时间序列。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection TS tssetQuickstart:快速入门}

        {mansection TS tssetRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主要}

{phang}
{it:unitoptions} {cmd:clocktime}, {cmd:daily}, {cmd:weekly}, {cmd:monthly},
    {cmd:quarterly}, {cmd:halfyearly}, {cmd:yearly}, {cmd:generic}, 
    和 {opth format(%fmt)} 指定 {it:timevar} 记录的单位。

{pmore}
    {it:timevar} 通常将是一个 {cmd:%t} 变量； 
    见 {manhelp Datetime D}。  
    如果 {it:timevar} 已经被指定了一个 {cmd:%t} 显示格式，您不需要指定 {it:unitoption}；{cmd:tsset} 将从格式中获取
    单位。如果您尚未设计任何适当的 {cmd:%t} 格式，您可以使用 {it:unitoptions} 通知 {cmd:tsset} 单位。然后 {cmd:tsset} 将为您设置
    {it:timevar} 的显示格式。因此，{it:unitoptions} 是方便选项；它们允许您跳过格式化时间变量。
    以下所有选择具有相同的最终结果：

            替代方案 1        替代方案 2        替代方案 3
            {hline 62}
            {cmd:format t %td}         {it:(t 未格式化)    (t 未格式化)}
            {cmd:tsset t              tsset t, daily       tsset t, format(%td)}

{pmore}
    {it:timevar} 不必是 {cmd:%t} 变量；它可以是您自己构造的任何变量，只要它只接受整数值。在这种情况下，它被称为通用变量并被视为 {cmd:%tg}。指定 {it:unitoption} {cmd:generic} 或附加特殊格式给 {it:timevar}，并不是必要的，因为 {cmd:tsset} 将假定该变量是通用的，如果它具有任何数值格式，而不是 {cmd:%t} 格式（或如果它具有 {cmd:%tg} 格式）。

{phang}
{opt clear} -- 用在 {cmd:tsset,} {cmd:clear} -- 使 Stata 忘记
    数据曾经是 {cmd:tsset}。这是一个不常用的程序员选项。

{dlgtab:时间间隔}

{phang}
{cmd:delta()} 指定观察间隔中的 {it:timevar} 单位，通常在 {it:timevar} 为 {cmd:%tc} 时使用。 {cmd:delta()} 仅在与其他 {cmd:%t} 格式或通用时间变量一起使用时偶尔使用。

{pmore}
    如果未指定 {cmd:delta()}，则默认假定 {cmd:delta(1)}。这意味着在 {it:timevar} = 5 时，上一个时间为 {it:timevar} = 5-1 = 4，下一个时间为 {it:timevar} = 5+1 = 6。例如，滞后和前导运算符将以此方式工作。这种假设适用于 {it:timevar} 的任何单位。

{pmore}
    如果您指定了 {cmd:delta(2)}，则在 {it:timevar} = 5 时，上一个时间为 {it:timevar} = 5-2 = 3，下一个时间为 {it:timevar} = 5+2 = 7。滞后和前导运算符将以此方式工作。在一个 {it:timevar} = 5 的观察中，{cmd:L.price} 将是 {it:timevar} = 3 的 {cmd:price} 的值，而 {cmd:F.price} 将是 {it:timevar} = 7 的 {cmd:price} 的值。如果您然后添加一个 {it:timevar=4} 的观察，运算符仍然会正常工作；也就是说，在 {it:timevar} = 5 时，{cmd:L.price} 仍会有 {it:timevar} = 3 的 {cmd:price} 的值。

{pmore}
    {it:timevar} 有两个方面：它的单位和时间段的长度。{it:unitoptions} 设置单位。{cmd:delta()} 设置时间段的长度。

{pmore}
    我们提到过，{cmd:delta()} 通常与 {cmd:%tc} {it:timevars} 一起使用，因为 Stata 的 {cmd:%tc} 变量的单位为毫秒。如果未指定 {cmd:delta()} 并且在某个模型中引用了 {cmd:L.price}，那么您将引用 1 毫秒前的 {cmd:price} 的值。很少有人会有周期为毫秒的数据。也许您的数据是每小时的。您可以指定 {cmd:delta(3600000)}。或者您可以指定 {cmd:delta((60*60*1000))}，因为 {cmd:delta()} 将允许如果您包含一对额外的括号来使用表达式。或者您可以指定 {cmd:delta(1} {cmd:hour)}。它们的含义都是一样的：{it:timevar} 的周期为 3,600,000 毫秒。在 {it:timevar} = 1,489,572,000,000（对应于 2007年3月15日 10:00:00）的观察中，{cmd:L.price} 将是 {it:timevar} = 1,489,572,000,000 - 3,600,000 = 1,489,568,400,000（对应于 2007年3月15日 9:00:00）的观察值。

{pmore}
    当您 {cmd:tsset} 数据并指定 {cmd:delta()} 时，{cmd:tsset} 验证所有观察是否遵循指定的周期性。例如，如果您指定了 {cmd:delta(2)}，则 {it:timevar} 可以包含 {c -(}..., -4, -2, 0, 2, 4, ...{c )-} 的任何子集，或者可以包含 {c -(}..., -3, -1, 1, 3, ...{c )-} 的任何子集。如果 {it:timevar} 包含的值混合，{cmd:tsset} 将发出错误消息。如果您还指定了 {it:panelvar} -- 即您键入 {cmd:tsset} {it:panelvar} {it:timevar}{cmd:,} {cmd:delta(2)} -- 则对每个面板进行独立检查。一个面板可能包含来自一个集合的 {it:timevar} 值，而另一个面板可能包含来自另一个集合的值，这样是可以的。

{pstd}
{cmd:tsset} 的以下选项在对话框中不可见：

{phang}
{opt noquery} 阻止 {cmd:tsset} 执行大多数摘要计算并抑制输出。使用此选项，仅发布以下结果：

	    {cmd:r(tdelta)}
	    {cmd:r(panelvar)}
	    {cmd:r(timevar)}
	    {cmd:r(tsfmt)}
	    {cmd:r(unit)}
	    {cmd:r(unit1)}


{marker examples}{...}
{title:示例}

{pstd}
对于通用时间序列，变量 {cmd:time} 取值 1, 2, ...：

            {cmd:. webuse idle2}
	    {cmd:. tsset time}

{pstd}
对于年度时间序列，{cmd:time} 取值如 1990，1991，
...：

            {cmd:. webuse sunspot}
	    {cmd:. tsset time}
{pstd}或{p_end}
	    {cmd:. tsset time, yearly}

{pstd}
对于季度时间序列，{cmd:qtr} 取 0 意味着 1960q1，1 意味着
1960q2，...：

            {cmd:. webuse lutkepohl2}
	    {cmd:. tsset qtr}
        or
	    {cmd:. tsset qtr, quarterly}

{pstd}
（如果 {cmd:qtr} 尚未分配 {cmd:%tq} 格式，请使用第二种方式）

{pstd}
对于每月时间序列，{cmd:month} 取 0 意味着 1960m1，1 意味着
1960m2，...：

            {cmd:. webuse monthly}
	    {cmd:. tsset month}
{pstd}或{p_end}
	    {cmd:. tsset month, monthly}

{pstd} 
对于每日时间序列，{cmd:date} 是一个 {cmd:%td} 变量并且 
已经被分配了 {cmd:%td} 格式：

            {cmd:. webuse dow1}
	    {cmd:. tsset date}

{pstd} 
如果 {cmd:date} 尚未分配格式：

	    {cmd:. tsset date, daily}
{pstd}或{p_end}
	    {cmd:. format date %td}
	    {cmd:. tsset date}

{pstd}
对于每周时间序列，但 {cmd:date} 是一个 {cmd:%td}（每日）变量：

            {cmd:. webuse mondays}
	    {cmd:. tsset date, daily delta(7)}
{pstd}或{p_end}
	    {cmd:. tsset date, daily delta(7 days)}

{pstd}
对于每小时时间序列，{cmd:time} 是一个 {cmd:%tc} 变量：

            {cmd:. webuse hourlytemp}
	    {cmd:. tsset time, clocktime delta(1 hour)}

{pstd}
如果 {cmd:time} 已经有一个 {cmd:%tc} 显示格式，以上操作
可以简化为

	    {cmd:. tsset time, delta(1 hour)}

{pstd} 
对于通用面板数据，变量 {cmd:company} 是面板识别 
变量，{cmd:time} 是通用时间：

            {cmd:. webuse invest2}
	    {cmd:. tsset company time}

{pstd}
对于年度面板数据，变量 {cmd:company} 是
面板 ID 变量，{cmd:year} 是四位数的日历年：

            {cmd:. webuse grunfeld}
	    {cmd:. tsset company year, yearly}

{pstd}
对于每小时面板数据，变量 {cmd:pid} 是患者 ID
而 {cmd:tod} 是一个 {cmd:%tc} 变量，包含一天中的时间：

            {cmd:. webuse patienttimes}
	    {cmd:. tsset pid tod, clocktime delta(30 minutes)}


{marker video}{...}
{title:视频示例}

{phang2}{browse "http://www.youtube.com/watch?v=SOQvXICIRNY":格式化和管理日期}


{marker results}{...}
{title:存储的结果}

{pstd}
{cmd:tsset} 存储以下信息在 {cmd:r()} 中：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:r(imin)}}最小面板 ID{p_end}
{synopt:{cmd:r(imax)}}最大面板 ID{p_end}
{synopt:{cmd:r(tmin)}}最小时间{p_end}
{synopt:{cmd:r(tmax)}}最大时间{p_end}
{synopt:{cmd:r(tdelta)}}时间间隔{p_end}
{synopt:{cmd:r(gaps)}}{cmd:1} 如果存在间隙，{cmd:0} 否则{p_end}

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 宏}{p_end}
{synopt:{cmd:r(panelvar)}}面板变量的名称{p_end}
{synopt:{cmd:r(timevar)}}时间变量的名称{p_end}
{synopt:{cmd:r(tdeltas)}}格式化的时间间隔{p_end}
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
	     {cmd:strongly balanced}; 如果面板都有相同的时间值，则面板被认为是强平衡的，如果观察数量相同但时间值不同则为弱平衡，否则为不平衡{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <tsset.sthlp>}