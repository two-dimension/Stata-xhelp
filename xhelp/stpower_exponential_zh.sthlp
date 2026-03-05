{smcl}
{* *! version 1.2.2  20aug2018}{...}
{viewerdialog "stpower exponential" "dialog stpower_exponential"}{...}
{vieweralsosee "之前文档" "help prdocumented_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[ST] stpower" "help stpower_zh"}{...}
{vieweralsosee "[ST] stpower cox" "help stpower_cox_zh"}{...}
{vieweralsosee "[ST] stpower logrank" "help stpower_logrank_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[ST] 术语表" "help st_glossary_zh"}{...}
{vieweralsosee "[ST] streg" "help streg_zh"}{...}
{vieweralsosee "[R] test" "help test_zh"}{...}
{viewerjumpto "语法" "stpower_exponential_zh##syntax"}{...}
{viewerjumpto "菜单" "stpower_exponential_zh##menu"}{...}
{viewerjumpto "描述" "stpower_exponential_zh##description"}{...}
{viewerjumpto "选项" "stpower_exponential_zh##options"}{...}
{viewerjumpto "stpower exponential 的简要介绍" "stpower_exponential_zh##remarks1"}{...}
{viewerjumpto "stpower exponential 中使用的方法备注" "stpower_exponential_zh##remarks2"}{...}
{viewerjumpto "示例" "stpower_exponential_zh##examples"}{...}
{viewerjumpto "存储结果" "stpower_exponential_zh##results"}{...}
{viewerjumpto "参考文献" "stpower_exponential_zh##references"}
{help stpower_exponential:English Version}
{hline}{...}
{pstd}
{cmd:stpower} 继续有效，但自 Stata 14 起不再是 Stata 的正式部分。这是原始帮助文件，我们将不再更新它，因此某些链接可能不再有效。

{pstd}
请参阅 {manhelp power PSS-2} 以获取 {cmd:stpower} 的推荐替代方案，尤其是请查看 {manhelp power_cox PSS-2:power cox}、{manhelp power_logrank PSS-2:power logrank} 和 {manhelp power_exponential PSS-2:power exponential}。

{title:标题}

{p2colset 5 33 35 2}{...}
{p2col :{hi:[ST] stpower exponential} {hline 2}}样本大小和指数检验的功效{p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{phang}
样本大小确定

{p 6 0 0}
指定危险率

{p 8 16 2}
{opt stpow:er} {opt exp:onential} [{it:h1} [{it:h2}]] [{cmd:,}
   {help stpower exponential##options_table:{it:options}}]


{p 6 0 0}
指定生存概率

{p 8 40 2}
{opt stpow:er} {opt exp:onential} {it:s1} [{it:s2}] {cmd:,} {opt t(#)}
    [{help stpower exponential##options_table:{it:options}}]
 


{phang}
功效确定

{p 6 0 0}
指定危险率

{p 8 16 2}
{opt stpow:er} {opt exp:onential} [{it:h1} [{it:h2}]] {cmd:,} 
{opth n(numlist)} [{help stpower exponential##options_table:{it:options}}]


{p 6 0 0}
指定生存概率

{p 8 16 2}
{opt stpow:er} {opt exp:onential} {it:s1} [{it:s2}] {cmd:,} 
{opt t(#)} {opth n(numlist)} [{help stpower exponential##options_table:{it:options}}]


{phang}
其中

{phang2}
{it:h1} 是对照组的危险率；{p_end}
{phang2}
{it:h2} 是实验组的危险率；{p_end}
{phang2}
{it:s1} 是对照组在参考（基准）时间 t 下的生存概率；并且{p_end}
{phang2}
{it:s2} 是实验组在参考（基准）时间 t 下的生存概率。{p_end}
{p 8 8}
{it:h1}、{it:h2} 和 {it:s1}、{it:s2} 均可分别指定为一个数字或一系列值（见 {it:{help numlist_zh}}），并用括号括起来。{p_end}


{synoptset 28 tabbed}{...}
{marker options_table}{...}
{synopthdr}
{synoptline}
{syntab :主要}
{synopt: {opt t(#)}}生存概率 {it:s1} 和 {it:s2} 的参考时间 t{p_end}
{p2coldent:* {opth a:lpha(numlist)}}显著性水平；默认值为 {cmd:alpha(0.05)}{p_end}
{p2coldent:* {opth p:ower(numlist)}}功效；默认值为 {cmd:power(0.8)}{p_end}
{p2coldent:* {opth b:eta(numlist)}}第二类错误的概率；默认值为 {cmd:beta(0.2)}{p_end}
{p2coldent:* {opth n(numlist)}}样本大小；计算功效所必需{p_end}
{p2coldent:* {opth hrat:io(numlist)}}实验组与对照组的危险比，{it:h2}/{it:h1} 或 ln({it:s2})/ln({it:s1})；默认值为 {cmd:hratio(0.5)}{p_end}
{synopt: {opt onesid:ed}}单边检验；默认值为双边检验{p_end}
{p2coldent:* {opth p1(numlist)}}对照组中受试者的比例；默认值为 {cmd:p1(0.5)}，表示组大小相等{p_end}
{p2coldent:* {opth nrat:io(numlist)}}样本大小的比例，N2/N1；默认值为 {cmd:nratio(1)}，表示组大小相等{p_end}
{synopt: {opt logh:azard}}功效或样本大小计算用于检验对数危险的差异；默认值为检验危险之间的差异{p_end}
{synopt: {opt unc:onditional}}功效或样本大小计算使用无条件方法{p_end}
{synopt: {opt par:allel}}在指定每个选项时将带星号的选项视为并行（不枚举所有可能的值组合）{p_end}

{syntab: 招募/随访}
{synopt: {opt fp:eriod(#)}}随访期间的长度；如果未指定，假定研究持续到所有受试者经历事件（失败）{p_end}
{synopt: {opt ap:eriod(#)}}招募期间的长度；默认值为 {cmd:aperiod(0)}，表示不招募{p_end}
{synopt: {opt apr:ob(#)}}根据截断指数招募到时间 t* 的受试者比例；默认值为 {cmd:aprob(0.5)}{p_end}
{synopt: {opt apt:ime(#)}}招募期间的比例，t*/{cmd:aperiod()}，在此期间招募的受试者比例为 {cmd:aprob()}；默认值为 {cmd:aptime(0.5)}{p_end}
{synopt: {opt at:ime(#)}}参考招募时间 t*，此时招募的受试者比例为 {cmd:aprob()}；默认值为 0.5*{cmd:aperiod()}{p_end}
{synopt: {opt ash:ape(#)}}截断指数招募分布的形状；默认值为 {cmd:ashape(0)}，表示均匀招募{p_end}
{synopt: {opt losspr:ob(# #)}}在对照组和实验组中到时间 {cmd:losstime()} 的受试者失访的比例；默认值为 {cmd:lossprob(0 0)}，表示没有失访{p_end}
{synopt: {opt losst:ime(#)}}（参考）时间，此时在 {cmd:lossprob()} 中指定的失访受试者比例；默认值为 {cmd:losstime(1)}{p_end}
{synopt: {opt lossh:az(# #)}}对照组和实验组的失访危险率；默认值为 {cmd:losshaz(0 0)}，表示没有失访{p_end}

{syntab:报告}
{synopt: {opt detail}}更详细的输出{p_end}
{synopt: {opt tab:le}}以默认列显示结果的表格{p_end}
{synopt: {opth col:umns(stpower_exponential##colnames:colnames)}}以指定的 {it:colnames} 列显示结果的表格{p_end}
{synopt: {opt noti:tle}}抑制表标题{p_end}
{synopt: {opt noleg:end}}抑制表图例{p_end}
{synopt: {opt colw:idth(# [# ...])}}列宽；默认值为 {cmd:colwidth(9)}{p_end}
{synopt: {opt sep:arator(#)}}每 {it:#} 行绘制一条水平分隔线；默认值为 {cmd:separator(0)}，表示没有分隔线{p_end}
{synopt: {cmdab:sav:ing(}{it:{help filename_zh}}[{cmd:,} {cmd:replace}]{cmd:)}}将表格数据保存到 {it:filename}；使用 {opt replace} 来覆盖现有的 {it:filename}{p_end}

{synopt: {opt nohead:er}}抑制表头；很少使用{p_end}
{synopt: {opt cont:inue}}在表格输出中绘制续表边框；很少使用{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
* 星号选项可以分别指定为一个数字或一系列值（见 {it:{help numlist_zh}}）。{p_end}
{p 4 6 2}
{opt noheader} 和 {opt continue} 未在对话框中显示。
{p_end}

{synoptset 28}{...}
{marker colnames}{...}
{synopthdr :colnames}
{synoptline}
{synopt: {opt a:lpha}}显著性水平{p_end}
{synopt: {opt p:ower}}功效{p_end}
{synopt: {opt b:eta}}第二类错误概率{p_end}
{synopt: {opt n}}受试者总数{p_end}
{synopt: {opt n1}}对照组的受试者数量{p_end}
{synopt: {opt n2}}实验组的受试者数量{p_end}
{synopt: {opt hr}}危险比{p_end}
{synopt: {opt loghr}}危险比的对数（对数危险之间的差异）{p_end}
{synopt: {opt diff}}危险之间的差异{p_end}
{synopt: {opt h1}}对照组的危险率{p_end}
{synopt: {opt h2}}实验组的危险率{p_end}
{synopt: {opt s1}}对照组的生存概率{p_end}
{synopt: {opt s2}}实验组的生存概率{p_end}
{synopt: {opt t}}参考生存时间{p_end}
{synopt: {opt p1}}对照组中受试者的比例{p_end}
{synopt: {opt nrat:io}}样本规模比例，实验组与对照组{p_end}
{synopt: {opt fp:eriod}}随访期{p_end}
{synopt: {opt ap:eriod}}招募期{p_end}
{synopt: {opt apr:ob}}在时间 {cmd:atime}（或在 {cmd:aptime} % 的招募期）到达时招募的受试者比例{p_end}
{synopt: {opt apt:ime}}招募期的百分比，受 {cmd:aprob} % 的受试者在此期间被招募{p_end}
{synopt: {opt at:ime}}参考招募时间{p_end}
{synopt: {opt ash:ape}}招募分布的形状{p_end}
{synopt: {opt lpr1}}对照组中失访受试者的比例{p_end}
{synopt: {opt lpr2}}实验组中失访受试者的比例{p_end}
{synopt: {opt losst:ime}}参考失访时间{p_end}
{synopt: {opt lh1}}对照组中的失访危险率{p_end}
{synopt: {opt lh2}}实验组中的失访危险率{p_end}
{synopt: {opt eo}}在原假设下预期的事件（失败）总数{p_end}
{synopt: {opt eo1}}在原假设下对照组中的事件数量{p_end}
{synopt: {opt eo2}}在原假设下实验组中的事件数量{p_end}
{synopt: {opt ea}}在备择假设下预期的事件（失败）总数{p_end}
{synopt: {opt ea1}}在备择假设下对照组中的事件数量{p_end}
{synopt: {opt ea2}}在备择假设下实验组中的事件数量{p_end}
{synopt: {opt lo}}在原假设下预期的失访总数{p_end}
{synopt: {opt lo1}}在原假设下对照组中的失访数量{p_end}
{synopt: {opt lo2}}在原假设下实验组中的失访数量{p_end}
{synopt: {opt la}}在备择假设下预期的失访总数{p_end}
{synopt: {opt la1}}在备择假设下对照组中的失访数量{p_end}
{synopt: {opt la2}}在备择假设下实验组中的失访数量{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
默认情况下显示以下 {it:colnames}：{p_end}
{phang2}
{cmd:power}、{cmd:n}、{cmd:n1}、{cmd:n2} 和 {cmd:alpha} 始终显示；{p_end}
{phang2}
如果指定了危险率，则会显示 {cmd:h1} 和 {cmd:h2}，否则，如果指定了生存概率，则会显示 {cmd:s1} 和 {cmd:s2}；{p_end}
{phang2}
如果指定了危险差异检验，则会显示 {cmd:diff}，如果指定了对数危险差异检验，则会显示 {cmd:loghr}；{p_end}
{phang2}
如果指定了招募期（{cmd:aperiod()}），则会显示 {cmd:aperiod}；{p_end}
{phang2}
如果指定了随访期（{cmd:fperiod()}），则会显示 {cmd:fperiod}；并且{p_end}
{phang2}
如果指定了 {cmd:losshaz()}，则会显示 {cmd:lh1} 和 {cmd:lh2}，或者如果指定了 {cmd:lossprob()}，则会显示 {cmd:lpr1} 和 {cmd:lpr2}。

{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 生存分析 > 功效和样本大小}


{marker description}{...}
{title:描述}

{pstd}
{cmd:stpower} {cmd:exponential} 估算比较两个指数生存函数所需的样本大小和功效，通过使用对危险之间差异的参数检验或可选的对数危险之间的差异进行检验。它允许两组之间的不等分配，灵活的受试者招募以及特定组的失访。招募分布可以选择在固定的招募期 R 内均匀分布或在 [0,R] 的截断指数分布。失访假定遵循指数分布。此外，计算可以使用条件或无条件方法进行。

{pstd}
您可以使用 {cmd:stpower} {cmd:exponential} 来

{phang2}
o  当您知道功效和效应大小（以危险率、生存概率或危险比表示）时，计算预期事件数量和所需样本大小，适用于包括跟进和招募期间的研究，允许不同的招募模式并考虑到失访

{phang2}
o  当您知道样本大小和效应大小（以危险率、生存概率或危险比表示）时，计算功效，适用于包括跟随和招募期间的研究，允许不同的招募模式并考虑到失访。

{pstd}
如果指定了 {cmd:t()} 选项，则命令的输入参数为对照组（或不利组）中的生存概率值 S1(t) 和实验组中的生存概率值 S2(t)，在固定时间 t（参考生存时间）下在 {cmd:t()} 中给出，分别记为 {it:s1} 和 {it:s2}。否则，输入参数假定为对照组中的危险率 {it:lambda1} 和实验组中的危险率 {it:lambda2}，分别记为 {it:h1} 和 {it:h2}。如果指定了生存概率，使用参考生存函数的公式和 {cmd:t()} 中的时间值将其转换为危险率。


{marker options}{...}
{title:选项}

{dlgtab:主要}

{phang}
{opt t(#)} 指定固定时间 t（参考生存时间），使得对照组和实验组中在此时间点后仍存活的受试者比例如 {it:s1} 和 {it:s2} 所指定。如果指定了此选项，则输入参数 {it:s1} 和 {it:s2} 是生存概率 S1(t) 和 S2(t)。否则，输入参数假定为危险率 {it:lambda1} 和 {it:lambda2}，分别给出为 {it:h1} 和 {it:h2}。

{phang}
{opth alpha(numlist)} 设置检验的显著性水平。默认值为 {cmd: alpha(0.05)}。

{phang} 
{opth power(numlist)} 设置检验的功效。默认值为 {cmd:power(0.8)}。如果指定了 {cmd:beta()}，则此值设置为 {bind:1-{cmd:beta()}}。只能指定 {cmd:power()} 或 {cmd:beta()} 之一。

{phang} 
{opth beta(numlist)} 设置检验的第二类错误概率。默认值为 {cmd:beta(0.2)}。如果指定了 {cmd:power()}，则此值设置为 {bind:1-{cmd:power()}}。只能指定 {cmd:beta()} 或 {cmd:power()} 之一。

{phang}
{opth n(numlist)} 指定用于计算检验功效的受试者数量。默认假定进行样本大小计算。此选项不能与 {cmd:beta()} 或 {cmd:power()} 一起使用。

{phang}
{opth hratio(numlist)} 指定实验组与对照组的危险比。默认值为 {cmd:hratio(0.5)}。此值定义了希望通过检验检测到的实验程序与对照之间的临床显著改善，并具有在 {cmd:power()} 中指定的功效。如果给出 {it:h1} 和 {it:h2}（或 {it:s1} 和 {it:s2}），则不允许使用 {cmd:hratio()}，而是计算为 {it:h2}/{it:h1}（或 ln({it:s2})/ln({it:s1}））。

{phang}
{opt onesided} 指示单边检验。默认为双边检验。

{phang}
{opth p1(numlist)} 指定对照组中受试者的比例。默认值为 {cmd:p1(0.5)}，表示对照组和实验组的受试者平等分配。只能指定 {cmd:p1()} 或 {cmd:nratio()} 之一。

{phang}
{opth nratio(numlist)} 指定实验组相对于对照组的样本大小比例，N2/N1。默认值为 {cmd:nratio(1)}，表示两组之间的平等分配。只能指定 {cmd:nratio()} 或 {cmd:p1()} 之一。

{phang}
{opt loghazard} 请求对数危险的差异检验的功效或样本大小计算（或对数危险比的检验）。此选项意味着均匀招募。默认假定进行危险差异的检验。

{phang}
{opt unconditional} 请求无条件方法进行样本大小或功效计算；请参见 {it:条件和无条件方法} 以及 {it:方法和公式} 在 {bf:[ST] stpower exponential} 中的详细信息。

{phang}
{cmd:parallel} 按顺序（并行）报告结果，针对允许 {it:{help numlist_zh}} 的选项中提供的数字列表。默认情况下，结果是通过所有组合计算的，按以下嵌套顺序： {cmd:alpha()}; {cmd:p1()} 或 {cmd:nratio()}; 危险率列表 {it:h1} 和 {it:h2} 或生存概率 {it:s1} 和 {it:s2}; {cmd:hratio()}; {cmd:power()} 或 {cmd:beta()}; 和 {cmd:n()}。此选项要求具有多个值的选项每个都包含相同数量的元素。

{dlgtab:招募/随访}

{phang}
{opt fperiod(#)} 指定研究的随访期 f。默认情况下假定受试者在最后一名受试者经历事件（失败）之前继续随访。（最小）随访期被定义为在最后一名受试者招募后到研究结束的时间差。如果 T 是研究的持续时间，R 是招募期的长度，则随访期为 {bind:f = T - R}。

{phang}
{opt aperiod(#)} 指定招募期 R，在此期间将招募受试者进行研究。默认值为 {cmd:aperiod(0)}，表示不招募。

{phang}
{opt aprob(#)} 指定根据截断指数分布预期在时间 t* 时招募的受试者比例。默认值为 {cmd:aprob(0.5)}。当形状参数未知但在特定时间知道受试者比例时，此选项非常有用。{cmd:aprob()} 通常与 {cmd:aptime()} 或 {cmd:atime()} 一起使用。此选项不得与 {cmd:ashape()} 或 {cmd:loghazard} 一起指定，并且需要在 {cmd:aperiod()} 中指定一个非零的招募期。

{phang}
{opt aptime(#)} 指定招募期的比例，t*/R，从中预期按截断指数分布招募的受试者比例为 {cmd:aprob()}。默认值为 {cmd:aptime(0.5)}。此选项不得与 {cmd:atime()}、{cmd:ashape()} 或 {cmd:loghazard} 一起结合使用，且必须在 {cmd:aperiod()} 中指定非零招募期。

{phang}
{opt atime(#)} 指定 t* 的时间点，参考招募时间，在此时间下预期按截断指数分布招募的受试者比例为 {cmd:aprob()}。默认值为 0.5*R。该选项不得与 {cmd:aptime()}、{cmd:ashape()} 或 {cmd:loghazard} 结合使用，并要求在 {cmd:aperiod()} 中指定一个非零的招募期。{cmd:atime()} 中的值不得超过 {cmd:aperiod()} 中的值。

{phang}
{opt ashape(#)} 指定截断指数招募分布的形状 {it:gamma}。默认值为 {cmd:ashape(0)}，表示均匀招募。此选项不允许与 {cmd:loghazard} 一起使用，并要求在 {cmd:aperiod()} 中指定非零的招募期。

{phang}
{opt lossprob(# #)} 指定在时间 {cmd:losstime()} 失访的受试者比例，在对照组和实验组中分别。默认值为 {cmd:lossprob(0 0)}，表示没有失访。此选项要求在 {cmd:aperiod()} 或 {cmd:fperiod()} 中指定，并且不得与 {cmd:losshaz()} 结合使用。

{phang}
{opt losstime(#)} 指定在 {cmd:lossprob()} 中指定的失访受试者失访的时间，即参考失访时间。默认值为 {cmd:losstime(1)}。此选项要求指定 {cmd:lossprob()}。

{phang}
{opt losshaz(# #)} 指定对照组和实验组的失访的指数危险率 {it:eta1} 和 {it:eta2}。默认值为 {cmd:losshaz(0 0)}，表示没有失访。此选项要求指定 {cmd:apore()} 或 {cmd:fperiod()} ，并且不得与 {cmd:lossprob()} 结合使用。

{dlgtab:报告}

{phang}
{opt detail} 显示更详细的输出；在原假设和备择假设下的预期事件（失败）和失访数量将被显示。此选项不适合表格输出。

{phang}
{cmd:table} 以表格格式显示结果，如果任何数字列表 contain 的元素超过一个，则默认为此选项。如果您一次生成一个案例的结果并想通过 {cmd:forvalues} 循环构建自己的自定义表格，此选项非常有用。

{phang}
{opth "columns(stpower_exponential##colnames:colnames)"} 指定在表中以指定的 {it:colnames} 列显示结果。输出表中列的顺序与在 {cmd:columns()} 中指定的 {it:colnames} 的顺序相同。 {cmd:columns()} 中的列名必须以空格分隔。

{phang}
{cmd:notitle} 阻止显示表标题。

{phang}
{cmd:nolegend} 阻止显示表_legends 和列标题不被标记。

{phang}
{opt colwidth(# [# ...])} 指定列宽。默认值为 9 对于所有列。指定的值数量不得超过表中的列数。可以指定缺失值（{cmd:.}）以指示默认宽度（9）。如果指定的宽度少于表中列的数量，则最后指定的宽度将用于剩余的列。

{phang}
{opt separator(#)} 指定在表行之间绘制分隔线的频率。默认值为 {cmd:separator(0)}，表示不显示分隔线。

{phang}
{cmd:saving(}{it:{help filename_zh}}[{cmd:,} {cmd:replace}]{cmd:)} 创建一个 Stata 数据文件（{cmd:.dta} 文件），该文件包含表值，变量名称与显示的 {it:{help stpower_exponential##colnames:colnames}相对应.} {cmd:replace} 指定如果存在，则覆盖该 {it:filename}。{cmd:saving()} 仅适合表格输出。

{pstd} {cmd:stpower exponential} 有以下选项，但未在对话框中显示：

{phang}
{cmd:noheader} 防止显示表头。此选项在多次发出命令时非常有用，例如在循环中。{cmd:noheader} 暗示 {cmd:notitle}。

{phang}
{cmd:continue} 在表底部绘制续边框。此选项在多次发出命令时非常有用，例如在循环中。

{marker remarks1}{...}
{title:stpower exponential 的简要介绍}

{pstd}
默认情况下，{cmd:stpower} {cmd:exponential} 计算测试两个危险率之间差异所需的样本大小，使用 {cmd:power(0.8)}（或等效地，使用 {cmd:beta(0.2)}）。可以通过使用 {cmd:power()} 或 {cmd:beta()} 更改功效或第二类错误概率的默认设置。如果希望进行功效确定，则必须指定样本大小 {cmd:n()}。如果希望进行对数危险比（对数危险之间的差异）检验，则必须指定选项 {cmd:loghazard}。

{pstd}
测试的默认第一类错误概率为 0.05，但可以通过使用选项 {cmd:alpha()} 更改。可以通过使用 {cmd:onesided} 请求单边检验。通过指定 {cmd:p1()} 或 {cmd:nratio()}，可以更改默认的组均分配。

{pstd}
如果在选项 {cmd:fperiod()} 或 {cmd:aperiod()} 中都未指定随访期 f 的长度或招募期 R 的长度，则假定研究继续进行，直到所有受试者经历事件（失败），而不论需要多少时间。如果提供这两个选项中的任意一个，则假定为固定持续时间的研究长度 {bind:T = R + f}。

{pstd}
如果在选项 {cmd:aperiod()} 中指定了长度为 R 的招募期，则假定在时间段 [0,R] 内均匀招募。通过在 {cmd:ashape()} 中指定形状参数，可以更改招募分布为截断指数。可以将选项 {cmd:aprob()} 和 {cmd:aptime()}（或 {cmd:atime()}）结合使用来替代选项 {cmd:ashape()}，以请求所期望的截断指数招募的形状。

{pstd}
要考虑失访的指数损失，可以使用选项 {cmd:losshaz()} 或 {cmd:lossprob()} 和 {cmd:losstime()}。有关详细信息，请参见 {it:不均匀招募和失访的指数损失} 在 {bf:[ST] stpower exponential} 中。

{pstd}
可选地，可以使用 {cmd:table} 或 {cmd:columns()} 将结果显示在表格中，如 {it:{help stpower_exponential##examples:示例}} 中演示的那样，以及在 {help stpower_zh:[ST] stpower} 中。有关如何绘制功效曲线的示例，请参见 {it:{help stpower_exponential##examples:示例}} 、{help stpower_zh:[ST] stpower} 以及 {bf:[ST] stpower logrank} 中的示例 7。

{marker remarks2}{...}
{title:stpower exponential 中使用的方法备注}

{pstd}
默认情况下，{cmd: stpower exponential} 计算所需样本大小，以便在指定功效下检测危险率之间的差异，采用 {help stpower exponential##L1981:Lachin (1981)} 方法。如果指定了 {cmd:loghazard}，则报告在指定功效下检测危险比对数所需的样本量，使用 {help stpower exponential##GD1974:George 和 Desu (1974)} 导出的公式。在存在招募期的情况下，使用 {help stpower exponential##LF1986:Lachin 和 Foulkes (1986)} 方法，或仅用于均匀招募的情况下，使用 {help stpower exponential##RGS1981:Rubinstein、Gail 和 Santner (1981)}（如果指定了 {cmd:loghazard} 和 {cmd:unconditional}）的方法。

{marker examples}{...}
{title:示例}

{pstd}
在以下示例中，我们假设对照组和实验组的生存函数都是指数分布。我们知道，根据先前的研究，对照组成员的年危险率为 0.3，而我们希望检测实验组中的危险率为 0.2（相应的危险比为 0.667）。

{pstd}
计算基于对数危险差异的双侧 5% 检验所需的样本大小，功效为 80%{p_end}
{phang2}
{cmd:. stpower exponential 0.3 0.2, loghazard}
{p_end}

{pstd}
与上述命令相同，但以表格显示结果
{p_end}
{phang2} 
{cmd:. stpower exponential 0.3 0.2, loghazard table} 
{p_end}

{pstd}
假设随访期为 5 年，计算所需的受试者数量，使用单侧 5% 检验{p_end}
{phang2}
{cmd:. stpower exponential 0.3 0.2, fperiod(5) onesided}
{p_end}

{pstd}
计算在 2 年招募期和 3 年随访期下所需的样本大小{p_end}
{phang2}
{cmd:. stpower exponential 0.3 0.2, aperiod(2) fperiod(3)}
{p_end}

{pstd}
计算样本大小为 300 的功效，假设招募分布为指数分布，形状参数为 -2（意味着在期初招募较慢，而在期末招募较快）{p_end}
{phang2}
{cmd:. stpower exponential 0.3 0.2, n(300) aperiod(2) ashape(-2)}
{p_end}

{pstd}
获得一系列危险比和两个样本大小的功效{p_end}
{phang2}
{cmd:. stpower exponential 0.3, hratio(0.1(0.2)0.9) n(50 100)}
{p_end}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:stpower exponential} 在 {cmd:r()} 中存储以下内容：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:r(power)}}检验功效{p_end}
{synopt:{cmd:r(alpha)}}检验的显著性水平{p_end}
{synopt:{cmd:r(hratio)}}危险比{p_end}
{synopt:{cmd:r(onesided)}}{cmd:1} 如果是单边检验，{cmd:0} 否则{p_end}
{synopt:{cmd:r(h1)}}对照组中的危险率{p_end}
{synopt:{cmd:r(h2)}}实验组中的危险率{p_end}
{synopt:{cmd:r(t)}}参考生存时间（如果指定 {cmd:t()}）未指定{p_end}
{synopt:{cmd:r(p1)}}对照组中受试者的比例{p_end}
{synopt:{cmd:r(fperiod)}}（如果已指定）随访期的长度{p_end}
{synopt:{cmd:r(aperiod)}}（如果已指定）招募期的长度{p_end}
{synopt:{cmd:r(ashape)}}（如果指定了 {opt aperiod()}）形状参数{p_end}
{synopt:{cmd:r(lh1)}}对照组中的失访危险率{p_end}
{synopt:{cmd:r(lh2)}}实验组中的失访危险率{p_end}
{synopt:{cmd:r(lt)}}参考失访时间（如果指定 {cmd:losstime()}）{p_end}

{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:r(method)}}方法的类型（{cmd:危险差异}或 {cmd:对数危险差异}）{p_end}
{synopt:{cmd:r(accrual)}}输入分布的类型（{cmd:均匀}或 {cmd:指数}）（如果请求）{p_end}
{synopt:{cmd:r(type)}}方法的类型（{cmd:条件}或 {cmd:无条件}）{p_end}

{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:r(N)}}所需样本大小的 1x3 矩阵{p_end}
{synopt:{cmd:r(Pr)}}事件的概率的 1x4 矩阵（计算时）{p_end}
{synopt:{cmd:r(Ea)}}备择假设下预期事件的 1x3 矩阵（计算时）{p_end}
{synopt:{cmd:r(Eo)}}原假设下预期事件的 1x3 矩阵（计算时）{p_end}
{synopt:{cmd:r(La)}}备择假设下预期的失访数量的 1x3 矩阵（计算时）{p_end}
{synopt:{cmd:r(Lo)}}原假设下预期的失访数量的 1x3 矩阵（计算时）{p_end}
{p2colreset}{...}


{marker references}{...}
{title:参考文献}

{marker GD1974}{...}
{phang}
George, S. L., 和 M. M. Desu. 1974. 
研究临床试验规模和持续时间以探究到达某种关键事件的时间。 {it: Journal of Chronic Diseases} 27: 15-24.{p_end}

{marker L1981}{...}
{phang}
Lachin, J. M. 1981.
临床试验中样本大小确定和功效分析的介绍。 {it: Controlled Clinical Trials} 2: 93-113.{p_end}

{marker LF1986}{...}
{phang}
Lachin, J. M., 和 M. A. Foulkes. 1986. 
在考虑患者进入性不均匀性、失访、依从性和分层情况下评估样本大小和功效。 {it: Biometrics} 42: 507-519.{p_end}

{marker RGS1981}{...}
{phang}
Rubinstein, L. V., M. H. Gail, 和 T. J. Santner. 1981.
规划具有失访和随访期的比较临床试验的持续时间。 {it: Journal of Chronic Diseases} 34: 469-479.{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <stpower_exponential.sthlp>}