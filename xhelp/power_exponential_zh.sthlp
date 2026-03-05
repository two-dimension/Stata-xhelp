{smcl}
{* *! version 1.0.15  12mar2019}{...}
{viewerdialog power "dialog power_exponential"}{...}
{vieweralsosee "[PSS-2] power exponential" "mansection PSS-2 powerexponential"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[PSS-2] power" "help power_zh"}{...}
{vieweralsosee "[PSS-2] power cox" "help power cox"}{...}
{vieweralsosee "[PSS-2] power logrank" "help power logrank"}{...}
{vieweralsosee "[PSS-2] power, graph" "help power_optgraph_zh"}{...}
{vieweralsosee "[PSS-2] power, table" "help power_opttable_zh"}{...}
{vieweralsosee "[PSS-5] Glossary" "help pss_glossary_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[ST] streg" "help streg_zh"}{...}
{vieweralsosee "[R] test" "help test_zh"}{...}
{viewerjumpto "Syntax" "power_exponential_zh##syntax"}{...}
{viewerjumpto "Menu" "power_exponential_zh##menu"}{...}
{viewerjumpto "Description" "power_exponential_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "power_exponential_zh##linkspdf"}{...}
{viewerjumpto "Options" "power_exponential_zh##options"}{...}
{viewerjumpto "Remarks: Using power exponential" "power_exponential_zh##remarks"}{...}
{viewerjumpto "Examples" "power_exponential_zh##examples"}{...}
{viewerjumpto "Stored results""power_exponential##results"}
{help power_exponential:English Version}
{hline}{...}
{p2colset 1 30 32 2}{...}
{p2col:{bf:[PSS-2] power exponential} {hline 2}}用于双样本指数检验的功效分析{p_end}
{p2col:}({mansection PSS-2 powerexponential:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{phang}
计算样本量

{p 6 8 2}
指定危险率

{p 8 20 2}
{opt power} {opt exp:onential} [{it:h1} [{it:h2}]]
[{cmd:,} {opth p:ower(numlist)} 
{it:{help power_exponential##synoptions:选项}}] 

{p 6 8 2}
指定生存概率

{p 8 20 2}
{opt power} {opt exp:onential} {it:s1} [{it:s2}]{cmd:,}
{opt t:ime(#)} [{opth p:ower(numlist)} 
{it:{help power_exponential##synoptions:选项}}] 


{phang}
计算功效 

{p 6 8 2}
指定危险率

{p 8 20 2}
{opt power} {opt exp:onential} [{it:h1} [{it:h2}]]{cmd:,}  
{opth n(numlist)}
[{it:{help power_exponential##synoptions:选项}}]

{p 6 8 2}
指定生存概率

{p 8 20 2}
{opt power} {opt exp:onential} {it:s1} [{it:s2}]{cmd:,}
{opt t:ime(#)} {opth n(numlist)}
[{it:{help power_exponential##synoptions:选项}}] 


{phang}
其中 

{phang2}
{it:h1} 是对照组的危险率;

{phang2}
{it:h2} 是实验组的危险率;

{phang2}
{it:s1} 是对照组在参考（基准）时间 {it:t} 的生存概率; 以及

{phang2}
{it:s2} 是实验组在参考（基准）时间 {it:t} 的生存概率。

{pstd}
{it:h1}、{it:h2} 和 {it:s1}、{it:s2} 都可以以单个数字或括号中的值列表的方式指定（参见 {help numlist_zh}）。


{synoptset 30 tabbed}{...}
{marker synoptions}{...}
{synopthdr:选项}
{synoptline}
{syntab:主要}
{p2coldent:* {opt t:ime(#)}}参考时间 {it:t} 的生存概率 {it:s1} 和 {it:s2}{p_end}
{p2coldent:* {opth a:lpha(numlist)}}显著性水平; 默认值为 {cmd:alpha(0.05)}{p_end}
{p2coldent:* {opth p:ower(numlist)}}功效; 默认值为 {cmd:power(0.8)}{p_end}
{p2coldent:* {opth b:eta(numlist)}}第二类错误的概率; 默认值为 {cmd:beta(0.2)}{p_end}
{p2coldent:* {opth n(numlist)}}总样本量; 计算功效时必需{p_end}
{p2coldent:* {opth n1(numlist)}}对照组的样本量{p_end}
{p2coldent:* {opth n2(numlist)}}实验组的样本量{p_end}
{p2coldent:* {opth nrat:io(numlist)}}样本量比，即 {cmd:N2/N1}; 默认值为 {cmd:nratio(1)}，这意味着组大小相等{p_end}
{synopt:{opt nfrac:tional}}允许小数样本量{p_end}
{p2coldent:* {opth hr:atio(numlist)}}实验组与对照组的危险比（效应大小）；默认值为 {cmd:hratio(0.5)}；不能与 {cmd:lnhratio()} 或 {cmd:hdifference()} 一起使用{p_end}
{p2coldent:* {opth lnhr:atio(numlist)}}实验组与对照组的对数危险比（效应大小）；不能与 {cmd:hratio()} 或 {cmd:hdifference()} 一起使用{p_end}
{p2coldent:* {opth hdiff:erence(numlist)}}实验组和对照组危险率之间的差异（效应大小）；不能与 {cmd:hratio()} 或 {cmd:lnhratio()} 一起使用{p_end}
{p2coldent:* {opth diff:erence(numlist)}}{cmd:hdifference()} 的同义词{p_end}
{p2coldent:* {opt logh:azard}}对数危险的差异的测试功效或样本量计算；默认情况下假设为危险的差异的测试{p_end}
{p2coldent:* {opt unc:onditional}}使用无条件方法进行功效或样本量计算{p_end}
{synopt:{cmdab:effect(}{it:{help power_exponential##effect:效应}}{cmd:)}}指定要报告的效应类型；默认值为特定方法{p_end}
{synopt :{opt onesid:ed}}单尾检验；默认为双尾{p_end}
{synopt: {opt par:allel}}在指定多个值的星号选项或命令参数时，将数字列表视为并行（而不枚举所有可能的值组合）{p_end}

{syntab:招募/随访}
{p2coldent:* {opth studyt:ime(numlist)}}研究持续时间; 如果未指定，假设研究持续到所有参与者都经历事件（失败）{p_end}
{p2coldent:* {opth fp:eriod(numlist)}}随访期的长度；如果未指定，假设研究持续到所有参与者都经历事件（失败）{p_end}
{p2coldent:* {opth ap:eriod(numlist)}}招募期间的长度；默认值为 {cmd:aperiod(0)}，表示没有招募{p_end}
{p2coldent:* {opth apr:ob(numlist)}}在截尾指数招募下，到达时间 {it:ta} 的累积参与者比例；默认值为 {cmd:aprob(0.5)}{p_end}
{p2coldent:* {opth apt:ime(numlist)}}招募时期的比例 {it:ta}/{cmd:aperiod()}，其中 {cmd:aprob()} 指定的参与者比例被招募; 默认值为 {cmd:aptime(0.5)} {p_end}
{p2coldent:* {opth at:ime(numlist)}}参考招募时间 {it:ta} ，在此时间参与者比例 {cmd:aprob()} 被招募; 默认值为 0.5 x {cmd:aperiod()}{p_end}
{p2coldent:* {opth ash:ape(numlist)}}截尾指数招募分布的形状；默认值为 {cmd:ashape(0)}，这意味着均匀招募{p_end}
{p2coldent:* {opth losspr:ob(numlist)}}在对照组和实验组的时间 {cmd:losstime()} 失访的参与者比例；默认值为 {cmd:lossprob(0)}，这意味着没有失访{p_end}
{p2coldent:* {opth lossprob1(numlist)}}在对照组的时间 {cmd:losstime()} 失访的参与者比例；默认值为 {cmd:lossprob1(0)}，这意味着对照组没有失访{p_end}
{p2coldent:* {opth lossprob2(numlist)}}在实验组的时间 {cmd:losstime()} 失访的参与者比例；默认值为 {cmd:lossprob2(0)}，这意味着实验组没有失访{p_end}
{p2coldent:* {opth losst:ime(numlist)}}参考时间 {it:tL} ，在此时间中，{cmd:lossprob()}、{cmd:lossprob1()} 或 {cmd:lossprob2()} 指定的参与者比例失访；默认值为 {cmd:losstime(1)}{p_end}
{p2coldent:* {opth lossh:az(numlist)}}对照组和实验组的失访危险率；默认值为 {cmd:losshaz(0)}，表示没有失访{p_end}
{p2coldent:* {opth losshaz1(numlist)}}对照组的失访危险率；默认值为 {cmd:losshaz1(0)}，表示对照组没有失访{p_end}
{p2coldent:* {opth losshaz2(numlist)}}实验组的失访危险率；默认值为 {cmd:losshaz2(0)}，表示实验组没有失访{p_end}

{syntab:表格}
{synopt :[{cmdab:no:}]{cmdab:tab:le}[{cmd:(}{it:{help power_exponential##tablespec:tablespec}}{cmd:)}]}抑制表格或将结果显示为表格; 参见 {manhelp power_opttable PSS-2:power, table}{p_end}
{synopt :{cmdab:sav:ing(}{it:{help filename_zh}}[{cmd:, replace}]{cmd:)}}将表格数据保存到 {it:filename}；使用 {cmd:replace} 来覆盖现有的 {it:filename}{p_end}

INCLUDE help pss_graphopts.ihlp

{syntab:报告}
{synopt: {opt show}}显示特定组的事件数量，并在出现失访时显示失访数量{p_end}
{synopt: {opth show:(power_exponential##showspec:showspec)}}显示特定组的事件数量、失访数量和事件概率{p_end}

INCLUDE help pss_reportopts.ihlp
{synoptline}
{p2colreset}{...}
INCLUDE help pss_numlist.ihlp
{p 4 6 2}{cmd:notitle} 在对话框中不出现。{p_end}


{synoptset 17}{...}
{marker effect}{...}
{synopthdr :效应}
{synoptline}
{synopt:{opt hr:atio}}危险比{p_end}
{synopt:{opt lnhr:atio}}对数危险比{p_end}
{synopt:{opt hdiff:erence}}危险率之差{p_end}
{synopt:{opt lnhdiff:erence}}对数危险率之差（等同于对数危险比）{p_end}
{synopt:{opt diff:erence}}{cmd:hdifference} 的同义词{p_end}
{synoptline}


{synoptset 17}{...}
{marker showspec}{...}
{synopthdr :showspec}
{synoptline}
{synopt:{opt events}}事件数量{p_end}
{synopt:{opt losses}}失访数量{p_end}
{synopt:{opt eventpr:obs}}事件概率{p_end}
{synopt:{opt all}}以上所有{p_end}
{synoptline}


{marker tablespec}{...}
{pstd}
其中 {it:tablespec} 是

{p 16 16 2}
{it:{help power_exponential##column:column}}[{cmd::}{it:label}]
[{it:column}[{cmd::}{it:label}] [...]] [{cmd:,} {it:{help power_opttable##tableopts:tableopts}}]

{pstd}
{it:column} 是下面定义的列之一，{it:label} 是列标签（可以包含引号和复合引号）。

{synoptset 28}{...}
{marker column}{...}
{synopthdr :column}
{synoptline}
{synopt :{opt alpha}}显著性水平{p_end}
{synopt :{opt power}}功效{p_end}
{synopt :{opt beta}}第二类错误概率{p_end}
{synopt :{opt N}}参与者总数{p_end}
{synopt :{opt N1}}对照组中的参与者数量{p_end}
{synopt :{opt N2}}实验组中的参与者数量{p_end}
{synopt :{opt nratio}}样本规模比，实验组与对照组{p_end}
{synopt :{opt delta}}效应大小{p_end}
{synopt :{opt s1}}对照组的生存概率{p_end}
{synopt :{opt s2}}实验组的生存概率{p_end}
{synopt :{opt time}}参考生存时间{p_end}
{synopt :{opt h1}}对照组的危险率{p_end}
{synopt :{opt h2}}实验组的危险率{p_end}
{synopt :{opt hdiff}}危险率之差{p_end}
{synopt :{opt hratio}}危险比{p_end}
{synopt :{opt lnhratio}}对数危险比{p_end}
{synopt :{opt studytime}}研究持续时间{p_end}
{synopt :{opt fperiod}}随访期{p_end}
{synopt :{opt aperiod}}招募期{p_end}
{synopt :{opt aprob}}截至时间 {cmd:atime} 累计的参与者比例（或招募时期的 {cmd:aptime} x 100%）{p_end}
{synopt :{opt aptime}}招募期的比例，通过 {cmd:aprob} x 100% 来累积的参与者的比例{p_end}
{synopt :{opt atime}}参考招募时间{p_end}
{synopt :{opt ashape}}招募分布的形状{p_end}
{synopt :{opt E0}}零假设下的事件总数{p_end}
{synopt :{opt E01}}零假设下对照组的事件数量{p_end}
{synopt :{opt E02}}零假设下实验组的事件数量{p_end}
{synopt :{opt Ea}}备择假设下的事件总数{p_end}
{synopt :{opt Ea1}}备择假设下对照组的事件数量{p_end}
{synopt :{opt Ea2}}备择假设下实验组的事件数量{p_end}
{synopt :{opt Pr_E01}}零假设下对照组事件的概率{p_end}
{synopt :{opt Pr_E02}}零假设下实验组事件的概率{p_end}
{synopt :{opt Pr_Ea1}}备择假设下对照组事件的概率{p_end}
{synopt :{opt Pr_Ea2}}备择假设下实验组事件的概率{p_end}
{synopt :{opt lossprob}}对照组和实验组的失访参与者比例{p_end}
{synopt :{opt lossprob1}}对照组的失访参与者比例{p_end}
{synopt :{opt lossprob2}}实验组的失访参与者比例{p_end}
{synopt :{opt losstime}}参考失访时间{p_end}
{synopt :{opt losshaz}}对照组和实验组的失访危险率{p_end}
{synopt :{opt losshaz1}}对照组的失访危险率{p_end}
{synopt :{opt losshaz2}}实验组的失访危险率{p_end}
{synopt :{opt L0}}零假设下的失访总数{p_end}
{synopt :{opt L01}}零假设下对照组的失访数量{p_end}
{synopt :{opt L02}}零假设下实验组的失访数量{p_end}
{synopt :{opt La}}备择假设下的失访总数{p_end}
{synopt :{opt La1}}备择假设下对照组的失访数量{p_end}
{synopt :{opt La2}}备择假设下实验组的失访数量{p_end}
{synopt :{opt target}}目标参数；{cmd:h2} 或 {cmd:hratio} 的同义词{p_end}
{synopt :{opt _all}}显示所有支持的列{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}若指定选项 {cmd:beta()} ，则在默认表中显示列 {cmd:beta} 代替列 {cmd:power}。{p_end}
{p 4 6 2}
若指定选项 {cmd:hratio()} 或命令隐含该选项，则在默认表中显示列 {cmd:hratio}。{p_end}
{p 4 6 2}
若指定相应选项，将在默认表中显示列 {cmd:nratio} 和 {cmd:lnhratio}。{p_end}
{p 4 6 2}
当指定相应命令参数时，显示列 {cmd:h1}、{cmd:h2}、{cmd:s1} 和 {cmd:s2}。{p_end}
{p 4 6 2}
当指定相应选项时，显示列 {cmd:time}、{cmd:studytime}、{cmd:fperiod}、{cmd:aperiod}、{cmd:aprob}、{cmd:aptime}、{cmd:atime}、{cmd:ashape}、{cmd:losshaz}、{cmd:losshaz1}、{cmd:losshaz2}、{cmd:lossprob}、{cmd:lossprob1}、{cmd:lossprob2} 和 {cmd:losstime}。{p_end}
{p 4 6 2}
如果指定或相应选项 {cmd:show(events)}、{cmd:show(losses)}，或 {cmd:show(eventprobs)} 被使用，则显示事件数量、失访数量和事件概率。 如果指定 {cmd:show}，则显示事件数量和失访数量。如果指定 {cmd:show(all)}，则显示事件数量、失访数量和概率。{p_end}


INCLUDE help menu_pss


{marker description}{...}
{title:描述}

{pstd}
{cmd:power exponential} 计算用于比较两个指数生存函数的样本量或功效，使用参数检验进行危险之间的差异的检测，或者可选地进行对数风险差异的检测。它适应两个组之间的不等分配，灵活地招募研究参与者，以及特定组的失访。招募分布可以选择在固定的招募期内均匀或截尾指数。失访被假定为指数分布。此外，可以使用条件或无条件方法进行计算。


{marker linkspdf}{...}
{title:链接到PDF文档}

        {mansection PSS-2 powerexponentialQuickstart:快速开始}

        {mansection PSS-2 powerexponentialRemarksandexamples:备注和示例}

        {mansection PSS-2 powerexponentialMethodsandformulas:方法和公式}

{pstd}
上述部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主要}

{phang}
{opt time(#)} 指定固定时间 {it:t}（参考生存时间），使得在这个时间点，还有存活的对照组和实验组的参与者比例分别为 {it:s1} 和 {it:s2}。如果指定该选项，输入参数 {it:s1} 和 {it:s2} 是在固定时间 {it:t} 的生存概率 {it:S1(t)} 和 {it:S2(t)}。
否则，假设输入参数为危险率 lambda1 和 lambda2，分别给定为 {it:h1} 和 {it:h2}。

{phang}
{cmd:alpha()}、{cmd:power()}、{cmd:beta()}、{cmd:n()}、{cmd:n1()}、{cmd:n2()}、{cmd:nratio()}、{cmd:nfractional}; 参见 {manhelp power##mainopts PSS-2: power}。

{phang}
{opth hratio(numlist)} 指定实验组与对照组的危险比（效应大小）。默认值为 {cmd:hratio(0.5)}。该值通常定义了所希望在具有一定功效的测试中检测到的实验程序相对于对照程序的临床显著改善。如果给定了 {it:h1} 和 {it:h2}（或 {it:s1} 和 {it:s2}），则不允许使用 {cmd:hratio()}，危险比按 {it:h2}/{it:h1} [或 ln({it:s2})/ln({it:s1})] 计算。也参见 {mansection PSS-2 powerexponentialRemarksandexamplessub1:{it:指定效应大小的替代方法}} 在 {bf:[PSS-2] power exponential} 中的不同效应大小的规格说明。

{pmore}
该选项不允许与效应大小的确定共同使用，也不能与 {cmd:lnhratio()} 或 {cmd:hdifference()} 一起使用。

{phang}
{opth lnhratio(numlist)} 指定实验组与对照组的对数危险比（效应大小）。该值通常定义了所希望在具有一定功效的测试中检测到的实验程序相对于对照程序的临床显著改善。如果给定了 {it:h1} 和 {it:h2}（或 {it:s1} 和 {it:s2}），则不允许使用 {cmd:lnhratio()}，对数危险比计算为 ln({it:h2}/{it:h1}) [或 ln{c -(}ln({it:s2})/ln({it:s1}){c )-}]。也参见 {mansection PSS-2 powerexponentialRemarksandexamplessub1:{it:指定效应大小的替代方法}} 在 {bf:[PSS-2] power exponential} 中的不同效应大小的规格说明。

{pmore}
该选项不允许与效应大小的确定共同使用，也不能与 {cmd:hratio()} 或 {cmd:hdifference()} 一起使用。

{phang}
{opth hdifference(numlist)} 指定实验组的危险率与对照组的危险率之间的差异。它要求指定对照组的危险率，即命令参数 {it:h1}。{cmd:hdifference()} 提供了一种指定效应大小的方法；详细信息见 {mansection PSS-2 powerexponentialRemarksandexamplessub1:{it:指定效应大小的替代方法}} 在 {bf:[PSS-2] power exponential} 中。

{pmore}
该选项不允许与效应大小的确定共同使用，也不能与 {cmd:hratio()} 或 {cmd:lnhratio()} 一起使用。

{phang}
{cmd:loghazard} 请求对数危险的差异的测试的样本量或功效计算（或对数危险比测试）。该选项意味着均匀招募。默认情况下，假定进行危险的差异的测试。

{phang}
{cmd:unconditional} 请求进行无条件的方法进行样本量或功效计算；见 {mansection PSS-2 powerexponentialRemarksandexamples{it:无条件与条件的方法}} 和 {mansection PSS-2 powerexponentialMethodsandformulas:{it:方法和公式}} 在 {bf:[PSS-2] power exponential} 中的详细信息。

{phang}
{opt effect(effect)} 指定要在输出中报告的效应大小类型为 {cmd:delta}。 {it:effect} 可以是 {cmd:hratio}、{cmd:lnhratio}、{cmd:hdifference} 或 {cmd:lnhdifference}。默认情况下，效应大小 {cmd:delta} 是风险比，{cmd:effect(hratio)} 是危险比测验的结果，当指定为对数危害比时，{cmd:effect(lnhratio)} （当指定为 {cmd:schoenfeld} 时）。

{phang}
{cmd:onesided}、{cmd:parallel}; 参见 {manhelp power##mainopts PSS-2: power}。

{dlgtab:招募/随访}

{phang}
{opth studytime(numlist)} 指定研究的持续时间，{it:T}。默认情况下，假设参与者将被跟踪，直到最后一个参与者经历事件（失败）。（最小）随访期取决于最后一个参与者招募到研究的时间，直至研究结束的时间长度。如果 {it:r} 是招募期间的长度，{it:f} 是随访期的长度，那么 {it:T}={it:r}+{it:f}。您只能指定三个选项中的两个 {cmd:studytime()}、{cmd:fperiod()} 和 {cmd:aperiod()}。

{phang}
{opth fperiod(numlist)} 指定研究的随访期，{it:f}。默认情况下，假设参与者将被跟踪，直到最后一个参与者经历事件（失败）。（最小）随访期取决于最后一个参与者招募到研究的时间，直至研究结束的时间长度。如果 {it:T} 是研究的持续时间，{it:r} 是招募期间的长度，那么随访期为 {it:f}={it:T}-{it:r}。您只能指定三个选项中的两个 {cmd:studytime()}、{cmd:fperiod()} 和 {cmd:aperiod()}。

{phang}
{opth aperiod(numlist)} 指定招募期间，{it:r}，在此期间应该招募参与者到研究中。默认值为 {cmd:aperiod(0)}，表示没有招募。您只能指定三个选项中的两个 {cmd:studytime()}、{cmd:fperiod()} 和 {cmd:aperiod()}。

{phang}
{opth aprob(numlist)} 指定预计在时间 {it:t}* 中根据截尾指数分布招募的参与者比例。默认值为 {cmd:aprob(0.5)}。当形状参数未知但在特定时间已经知道招募的参与者比例时，这个选项非常有用。{cmd:aprob()} 通常与 {cmd:aptime()} 或 {cmd:atime()} 一起使用。此选项不得与 {cmd:ashape()} 或 {cmd:loghazard} 一起指定，并且需要在 {cmd:aperiod()} 中指定非零的招募期。

{phang}
{opth aptime(numlist)} 指定招募时期的比例，{it:t}*/{it:r}，通过在指定的 {cmd:aprob()} 中的参与者比例预期在该比例的时间内被招募。默认值为 {cmd:aptime(0.5)}。此选项不得与 {cmd:atime()}、{cmd:ashape()} 或 {cmd:loghazard} 一起使用，并且需要在 {cmd:aperiod()} 中指定非零的招募期。

{phang}
{opth atime(numlist)} 指定时间点 {it:t}*，参考招募时间，在此以给定比例 {cmd:aprob()} 预期招募的参与者。默认值为 0.5 x {it:r}。此选项不得与 {cmd:aptime()}、{cmd:ashape()} 或 {cmd:loghazard} 一起使用，并且需要在 {cmd:aperiod()} 中指定非零的招募期。{cmd:atime()} 中的值不得超过 {cmd:aperiod()} 中的值。

{phang}
{opth ashape(numlist)} 指定截尾指数招募分布的形状，gamma。默认值为 {cmd:ashape(0)}，表示均匀招募。此选项与 {cmd:loghazard} 不能一起使用，并且需要在 {cmd:aperiod()} 中指定非零的招募期。

{phang}
{opth lossprob(numlist)} 指定在对照组和实验组的时间 {cmd:losstime()} 中失访的参与者比例。默认值为 {cmd:lossprob(0)}，表示没有参与者失访。此选项需要指定 {cmd:aperiod()} 或 {cmd:fperiod()}，并且不得与 {cmd:lossprob1()}、{cmd:lossprob2()}、{cmd:losshaz()}、{cmd:losshaz1()} 或 {cmd:losshaz2()} 一起使用。

{phang}
{opth lossprob1(numlist)} 指定在对照组的时间 {cmd:losstime()} 中失访的参与者比例。默认值为 {cmd:lossprob1(0)}，表示对照组没有失访。此选项需要指定 {cmd:aperiod()} 或 {cmd:fperiod()}，并且不得与 {cmd:lossprob()}、{cmd:losshaz()}、{cmd:losshaz1()} 或 {cmd:losshaz2()} 一起使用。

{phang}
{opth lossprob2(numlist)} 指定在实验组的时间 {cmd:losstime()} 中失访的参与者比例。默认值为 {cmd:lossprob2(0)}，表示实验组没有失访。此选项需要指定 {cmd:aperiod()} 或 {cmd:fperiod()}，并且不得与 {cmd:lossprob()}、{cmd:losshaz()}、{cmd:losshaz1()} 或 {cmd:losshaz2()} 一起使用。

{phang}
{opth losstime(numlist)} 指定失访比例在时间 {cmd:losstime()}，也称为参考失访时间.  默认值为 {cmd:losstime(1)}。此选项需要指定 {cmd:lossprob()}、{cmd:lossprob1()} 或 {cmd:lossprob2()}。

{phang}
{opth losshaz(numlist)} 指定对照组和实验组共有的失访的指数危险率。默认值为 {cmd:losshaz(0)}，表示没有失访。此选项需要指定 {cmd:aperiod()} 或 {cmd:fperiod()}，并且不得与 {cmd:lossprob()}、{cmd:lossprob1()}、{cmd:lossprob2()}、{cmd:losshaz1()} 或 {cmd:losshaz2()} 一起使用。

{phang}
{opth losshaz1(numlist)} 指定对照组的失访的指数危险率，eta1。默认值为 {cmd:losshaz1(0)}，表示对照组没有失访。此选项需要指定 {cmd:aperiod()} 或 {cmd:fperiod()}，并且不得与 {cmd:lossprob()}、{cmd:lossprob1()}、{cmd:lossprob2()}、{cmd:losshaz()} 一起使用。

{phang}
{opth losshaz2(numlist)} 指定实验组的失访的指数危险率，eta2。默认值为 {cmd:losshaz2(0)}，表示实验组没有失访。此选项需要指定 {cmd:aperiod()} 或 {cmd:fperiod()}，并且不得与 {cmd:lossprob()}、{cmd:lossprob1()}、{cmd:lossprob2()}、{cmd:losshaz()} 一起使用。

INCLUDE help pss_taboptsdes.ihlp

INCLUDE help pss_graphoptsdes.ihlp
另见 {it:{mansection PSS-2 powerexponentialSyntaxcolumn:列}} 中的 {bf:[PSS-2] power exponential} 的表格以获取图表所用符号的列表。

{dlgtab:报告}

{phang}
{cmd:show} 和 {opt show(showspec)} 指定显示包含事件数量、失访数量和事件概率的附加输出。如果 {cmd:show} 被指定，则特定组的事件数量和在失访情况出现时特定组的失访数量将显示在零假设和备择假设中。通过表格输出，这些数量将作为附加列显示。

{pmore}
{it:showspec} 可以包含 {cmd:events}、{cmd:losses}、{cmd:eventprobs} 和 {cmd:all} 的任意组合。{cmd:events} 将在零假设和备择假设下显示特定组的事件数量。如果存在 {cmd:losses}，则它将显示特定组在零假设和备择假设下的失访数量。{cmd:eventprobs} 将显示在零假设和备择假设下特定组的事件概率。{cmd:all} 将显示上述所有内容。

{pstd}
以下选项在 {cmd:power exponential} 中可用，但并未显示在对话框中：

INCLUDE help pss_reportoptsdes.ihlp


{marker remarks}{...}
{title:备注：使用 power exponential}

{pstd}
{cmd:power exponential} 计算两个指数生存函数之间比较的样本量或功效的测试。所有计算都是针对双尾假设测试进行的，默认显著性水平设置为 0.05。您可以通过指定 {cmd:alpha()} 选项来更改显著性水平。您可以指定 {cmd:onesided} 选项请求单尾检验。默认情况下，所有计算假设均衡或完全分配设计；有关如何指定不平衡设计的描述，请参见 {manlink PSS-4 不平衡设计}。

{pstd}
要计算总样本量，您需要在 {cmd:power()} 选项中指定效应大小并根据需要指定测试的功效。默认功效设置为 0.8。默认情况下，计算得出的样本量将向上取整。您可以使用 {cmd:nfractional} 选项查看相应的分数样本量；见 {mansection PSS-4 UnbalanceddesignsRemarksandexamplesFractionalsamplesizes:{it:分数样本量}} 在 {bf:[PSS-4] Unbalanced designs} 中的示例。{cmd:nfractional} 选项仅在确定样本量时允许使用。

{pstd}
要计算功效，您必须在 {cmd:n()} 选项中指定总样本量和效应规模。

{pstd}
效应大小可以通过在选项 {cmd:hratio()} 中指定危险比、在选项 {cmd:lnhratio()} 中指定对数危险比或在选项 {cmd:hdifference()} 中指定危险率之间的差异来指定。默认情况下，假设危险比为 0.5。对于固定持续时间的研究，必须指定对照组的危险率 {it:h1} 或对照组的生存概率 {it:s1}。请参见 {mansection PSS-2 powerexponentialRemarksandexamplessub1:{it:指定效应大小的替代方法}} 在 {bf:[PSS-2] power exponential} 中了解详细信息。

{pstd}
您可以在 {cmd:n1()} 和 {cmd:n2()} 中指定各组的特定样本量或者在计算功效或效应大小时指定一个组的样本量和 {cmd:nratio()}。有关更多详细信息，请参见 {mansection PSS-4 UnbalanceddesignsRemarksandexamplesTwosamples:{it:两个样本}} 在 {bf:[PSS-4] Unbalanced designs} 中。

{pstd}
如果指定了 {cmd:time()} 选项，则命令的输入参数为在固定时间 {it:t}（参考生存时间）中对照组（或不利组）的生存概率 {it:S1(t)} 和实验组的 {it:S2(t)}，分别给定为 {it:s1} 和 {it:s2}。否则，假设输入参数为对照组的危险率，lambda1，实验组的危险率，lambda2，给定为 {it:h1} 和 {it:h2}。如果指定了生存概率，则通过使用指数生存函数的公式和 {cmd:t()} 中的时间值将其转换为危险率。

{pstd}
默认情况下，将报告对危险的差异测试的样本量或功效的估计。这可以通过使用 {cmd:loghazard} 选项更改为对对数危险的差异的测试。默认的条件方法可以通过使用 {cmd:unconditional} 来替换；见 {mansection PSS-2 powerexponentialRemarksandexamplesTheconditionalversusunconditionalapproaches:{it:条件与无条件的方法}} 在 {bf:[PSS-2] power exponential}。

{pstd}
如果未指定研究的持续时间 ({it:T}) （在 {cmd:studytime} 选项中)、随访期的长度 ({it:f}) (在 {cmd:fperiod()} 选项中) 或招募期的长度 ({it:r}) (在 {cmd:aperiod()} 选项中)，则假设研究将持续到所有参与者经历事件（失败），无论需要多长时间。如果只指定了 {cmd:studytime()} 或只指定了 {cmd:fperiod()}，则招募期的长度假定为零，随访期等于研究的持续时间。如果只指定了 {cmd:aperiod()}，则假定随访期为零，研究的持续时间等于招募期的长度（在研究结束时连续招募）。如果在组合中指定了 {cmd:aperiod()} 或 {cmd:fperiod()}，则使用关系 {it:T}={it:r}+{it:f} 计算另一项。如果未指定 {cmd:studytime()}，则假定有固定持续时间为 {it:T}={it:r}+{it:f} 的研究。

{pstd}
如果在 {cmd:aperiod()} 选项中指定了长度为 {it:r} 的招募期，则假定在 [0, {it:r}] 的期间均匀招募。当在 {cmd:ashape()} 中指定形状参数时，招募分布可以更改为截尾指数。可以使用 {cmd:aprob()} 和 {cmd:aptime()}（或 {cmd:atime()}）选项来请求截尾指数招募的期望形状。有关示例，请参见 {mansection PSS-2 powerexponentialRemarksandexamplesNonuniformaccrual:{it:非均匀招募}} 在 {bf:[PSS-2] power exponential} 中。

{pstd}
要考虑指数失访，您可以使用 {cmd:losshaz()} 或 {cmd:lossprob()} 和 {cmd:losstime()} 选项。您可以使用选项 {cmd:losshaz1()} 和 {cmd:losshaz2()} 或 {cmd:lossprob1()} 和 {cmd:lossprob2()} 来指定特定组的失访，而不指定所有组的共同失访。有关示例，请参见 {mansection PSS-2 powerexponentialRemarksandexamplesExponentiallossestofollow-up:{it:失访的指数分布}} 在 {bf:[PSS-2] power exponential} 中。


{marker examples}{...}
{title:示例}

    {title:示例：计算样本量}

{pstd}
计算所需样本量，以便检测实验组危险率为 0.2，当对照组的危险率为 0.1；假定进行双尾假设测试，显著性水平为 5%、所需的功效为 80% 和每组观察数量相等（默认值）

{phang2}{cmd:. power exponential 0.1 0.2}

{pstd}
同上，除了基于对数危险差异的测试

{phang2}{cmd:. power exponential 0.1 0.2, loghazard}

{pstd}
同上，除了指定对照组的危险率和危险比

{phang2}{cmd:. power exponential 0.1, hratio(2) loghazard}

{pstd}
同上，除了在时间 2 指定对照组和实验组的生存概率

{phang2}{cmd:. power exponential 0.8187 0.6703, time(2) loghazard}

{pstd}
计算假设在 5 年的随访期内所需的参与者数量，使用单尾 5% 的检验

{phang2}{cmd:. power exponential 0.1 0.2, fperiod(5) onesided}

{pstd}
计算所需样本量，假设 2 年的招募期和 3 年的随访期，假设招募分布为形状参数为 -1 的指数分布

{phang2}{cmd:. power exponential 0.1 0.2, aperiod(2) ashape(-1) fperiod(3)}

    {title:示例：计算功效}

{pstd}
继续前面的示例，我们认为在对照组中只能招募 100 名参与者，实验组中招募 50 名。我们调查此情况下测试的功效。

{phang2}{cmd:. power exponential 0.1 0.2, n1(100) n2(50) aperiod(2) ashape(-1) fperiod(3)}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:power exponential} 在 {cmd:r()} 中存储以下内容：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:r(alpha)}}显著性水平{p_end}
{synopt:{cmd:r(power)}}功效{p_end}
{synopt:{cmd:r(beta)}}第二类错误的概率{p_end}
{synopt:{cmd:r(delta)}}效应大小{p_end}
{synopt:{cmd:r(N)}}总样本量{p_end}
{synopt:{cmd:r(N_a)}}实际样本量{p_end}
{synopt:{cmd:r(N1)}}对照组的样本量{p_end}
{synopt:{cmd:r(N2)}}实验组的样本量{p_end}
{synopt:{cmd:r(nratio)}}样本量比 {cmd:N2/N1}{p_end}
{synopt:{cmd:r(nratio_a)}}实际样本量比{p_end}
{synopt:{cmd:r(nfractional)}}如果指定了 {cmd:nfractional} 为 {cmd:1}，否则为 {cmd:0}{p_end}
{synopt:{cmd:r(onesided)}}如果为单尾检验则为 {cmd:1}；否则为 {cmd:0}{p_end}
{synopt:{cmd:r(hratio)}}危险比{p_end}
{synopt:{cmd:r(lnhratio)}}对数危险比{p_end}
{synopt:{cmd:r(hdiff)}}危险率之差{p_end}
{synopt:{cmd:r(h1)}}对照组的危险率（如指定）{p_end}
{synopt:{cmd:r(h2)}}实验组的危险率{p_end}
{synopt:{cmd:r(s1)}}对照组的生存概率（如指定）{p_end}
{synopt:{cmd:r(s2)}}实验组的生存概率（如指定）{p_end}
{synopt:{cmd:r(time)}}参考生存时间（如指定 {cmd:time()}）{p_end}
{synopt:{cmd:r(aperiod)}}招募期的长度（如指定）{p_end}
{synopt:{cmd:r(fperiod)}}随访期的长度（如指定）{p_end}
{synopt:{cmd:r(studytime)}}研究持续时间（如指定）{p_end}
{synopt:{cmd:r(ashape)}}形状参数（如指定 {cmd:aperiod()}）{p_end}
{synopt:{cmd:r(aprob)}}形状参数（如指定 {cmd:aprob()}）{p_end}
{synopt:{cmd:r(aptime)}}招募期比例（如指定 {cmd:aptime()}）{p_end}
{synopt:{cmd:r(atime)}}参考招募时间（如指定 {cmd:atime()}）{p_end}
{synopt:{cmd:r(losshaz)}}两个组共享的失访的危险率（如指定）{p_end}
{synopt:{cmd:r(losshaz1)}}对照组的失访危险率（如指定）{p_end}
{synopt:{cmd:r(losshaz2)}}实验组的失访危险率（如指定）{p_end}
{synopt:{cmd:r(lossprob)}}失访的参与者比例（如指定 {cmd:lossprob()}）{p_end}
{synopt:{cmd:r(losstime)}}参考失访时间（如指定 {cmd:losstime()}）{p_end}
{synopt:{cmd:r(unconditional)}}如果指定了 {cmd:unconditional} 则为 {cmd:1}，否则为 {cmd:0}{p_end}
INCLUDE help pss_rrestab_sc.ihlp

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:r(type)}}{cmd:test}{p_end}
{synopt:{cmd:r(method)}}{cmd:exponential}{p_end}
{synopt:{cmd:r(test)}}{cmd:危险差}或{cmd:对数危险差}{p_end}
{synopt:{cmd:r(accrual)}}{cmd:均匀}或{cmd:指数}{p_end}
{synopt:{cmd:r(effect)}}{cmd:hratio}、{cmd:lnhratio}、{cmd:hdifference}或{cmd:lnhdifference}{p_end}
INCLUDE help pss_rrestab_mac.ihlp

{synoptset 20 tabbed}{...}
{p2col 5 15 19 2: 矩阵}{p_end}
INCLUDE help pss_rrestab_mat.ihlp
{synopt:{cmd:r(Pr_vec)}}计算时，事件的 1x4 概率矩阵{p_end}
{synopt:{cmd:r(Ea_vec)}}计算时，备择假设下预期事件数量的 1x3 矩阵{p_end}
{synopt:{cmd:r(E0_vec)}}计算时，零假设下预期事件数量的 1x3 矩阵{p_end}
{synopt:{cmd:r(La_vec)}}计算时，备择假设下预期失访数量的 1x3 矩阵{p_end}
{synopt:{cmd:r(L0_vec)}}计算时，零假设下预期失访数量的 1x3 矩阵{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <power_exponential.sthlp>}