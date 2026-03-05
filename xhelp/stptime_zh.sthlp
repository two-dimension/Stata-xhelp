{smcl}
{* *! version 1.2.4  15oct2018}{...}
{viewerdialog stptime "dialog stptime"}{...}
{vieweralsosee "[ST] stptime" "mansection ST stptime"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[ST] strate" "help strate_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] Epitab" "help epitab_zh"}{...}
{vieweralsosee "[ST] stci" "help stci_zh"}{...}
{vieweralsosee "[ST] stir" "help stir_zh"}{...}
{vieweralsosee "[ST] stset" "help stset_zh"}{...}
{vieweralsosee "[ST] stsplit" "help stsplit_zh"}{...}
{viewerjumpto "语法" "stptime_zh##syntax"}{...}
{viewerjumpto "菜单" "stptime_zh##menu"}{...}
{viewerjumpto "描述" "stptime_zh##description"}{...}
{viewerjumpto "PDF文档链接" "stptime_zh##linkspdf"}{...}
{viewerjumpto "选项" "stptime_zh##options"}{...}
{viewerjumpto "示例" "stptime_zh##examples"}{...}
{viewerjumpto "视频示例" "stptime_zh##video"}{...}
{viewerjumpto "存储结果" "stptime_zh##results"}
{help stptime:English Version}
{hline}{...}
{p2colset 1 17 19 2}{...}
{p2col:{bf:[ST] stptime} {hline 2}}计算人时、发生率和标准化死亡率{p_end}
{p2col:}({mansection ST stptime:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 16 2}
{cmd:stptime} [{it:{help if_zh}}] [{cmd:,} {it:options}] 

{synoptset 29 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:主要}
{synopt :{opth at(numlist)}}在指定区间计算人时；默认情况下计算总体人时和发生率{p_end}
{synopt :{opt trim}}排除小于等于最小值或大于最大值的观察值 {opt at()} {p_end}
{synopt :{opth by(varname)}}按 {it:varname} 计算发生率或标准化死亡率{p_end}

{syntab:选项}
{synopt :{opt per(#)}}用于报告的比率的单位{p_end}
{synopt :{opt dd(#)}}显示的小数位数{p_end}
{synopt :{opt smr(groupvar ratevar)}}在 {opt using()} 数据集中使用 {it:groupvar} 和 {it:ratevar} 来计算标准化死亡率{p_end}
{synopt :{opth u:sing(filename)}}指定要合并的包含 {opt smr()} 变量的文件名{p_end}
{synopt :{opt l:evel(#)}}设置信心水平；默认值为 {cmd:level(95)}{p_end}
{synopt :{opt nosh:ow}}不显示 st 设置信息{p_end}

{syntab:高级}
{synopt :{opt j:ackknife}}jackknife置信区间{p_end}
{synopt :{opth t:itle(strings:string)}}用 {it:string} 标记输出表{p_end}
{synopt :{cmdab:out:put:(}{it:{help filename_zh}} [{cmd:,replace}]{cmd:)}}将摘要数据集保存为 {it:filename}；使用 {opt replace} 以覆盖现有的 {it:filename}{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
在使用 {cmd:stptime} 前必须 {cmd:stset} 您的数据；请参阅 {manhelp stset ST}.{p_end}
{p 4 6 2}
允许使用 {cmd:by}；请参阅 {manhelp by D}.{p_end}
{p 4 6 2}
可通过 {cmd:stset} 指定 {opt fweight}s、{opt iweight}s 和 {opt pweight}s；请参阅 {manhelp stset ST}。

{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 生存分析 > 摘要统计、检验和表格 >}
        {bf:人时、发生率和标准化死亡率}

{marker description}{...}
{title:描述}

{pstd}
{cmd:stptime} 计算人时和发生率。{cmd:stptime} 在使用 {opt using()} 选项合并具有适当标准比率的文件后，计算标准化死亡率/疾病比率 (SMR)。

{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection ST stptimeQuickstart:快速入门}

        {mansection ST stptimeRemarksandexamples:备注和示例}

{pstd}
上述部分不包括在此帮助文件中。

{marker options}{...}
{title:选项}

{dlgtab:主要}

{phang}
{opth at(numlist)} 指定要计算人时的区间。区间以分析时间 t 单位指定。如果未指定 {opt at()}，则计算总体人时和发生率。

{pmore}
例如，如果您指定 {cmd:at(5(5)20)} 且未指定 {opt trim} 选项，则报告的人时为 t = (0 - 5]、t = (5 - 10]、t = (10 - 15] 和 t = (15 - 20] 的区间。

{phang}
{opt trim} 指定排除小于等于 {opt at()} 中列出的最小值或大于最大值的观察值。

{phang}
{opth by(varname)} 指定按 {it:varname} 计算的分类变量，该变量用于计算发生率或标准化死亡率。

{dlgtab:选项}

{phang}
{opt per(#)} 指定用于报告比率的单位。例如，如果分析时间以年为单位，指定 {cmd:per(1000)} 会导致每1,000人-年报告比率。

{phang}
{opt dd(#)} 指定报告比率、比率和置信区间的最大小数位数。此选项仅影响值的显示方式，而不影响计算方式。

{phang}
{opt smr(groupvar ratevar)} 指定 {opt using()} 数据集中的两个变量。{it:groupvar} 标识用于匹配内存中的数据和 {opt using()} 数据集的年龄组或日历期变量。{it:ratevar} 变量包含适当的参考比率。然后，{cmd:stptime} 计算标准化死亡率而不是发生率。

{phang}
{opth using(filename)} 指定包含标准比率文件的文件名，该文件将与数据合并，以便计算标准化死亡率。

{phang}
{opt level(#)} 指定置信区间的置信水平，作为百分比。默认值为 {cmd:level(95)} 或 {helpb set level} 中设置的值。

{phang}
{opt noshow} 防止 {cmd:stptime} 显示关键 st 变量。该选项很少使用，因为大多数人输入 {cmd:stset, show} 或 {cmd:stset, noshow} 来设置是否希望在每个 st 命令的输出顶部查看这些变量；请参阅 {manhelp stset ST}。

{dlgtab:高级}

{phang}
{opt jackknife} 指定生成 jackknife 置信区间。如果在 {cmd:stset} 数据集中指定了 {opt pweight}s 或 {opt iweight}s，则这是默认值。

{phang}
{opth title:(strings:string)} 用 {it:string} 替换输出表中的默认“人时”标签。

{phang}
{cmd:output(}{it:{help filename_zh}} [{cmd:, replace}]{cmd:)} 将摘要数据集保存为 {it:filename}。该文件包含失败计数和人时、发生率（或标准化死亡率）、置信限制和识别时间区间的分类变量。该数据集可用于进一步计算或简单作为 {cmd:table} 命令的输入。

{pmore}
{opt replace} 指定如果 {it:filename} 存在则覆盖它。该选项在对话框中未显示。


{marker examples}{...}
{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse stptime}

{pstd}列出部分数据{p_end}
{phang2}{cmd:. list in 1/5}

{pstd}声明数据为生存时间数据{p_end}
{phang2}{cmd:. stset year, fail(fail) id(id) noshow}

{pstd}计算人时和发生率{p_end}
{phang2}{cmd:. stptime}

{pstd}计算每1,000人年的发生率和人时{p_end}
{phang2}{cmd:. stptime, per(1000)}

{pstd}与上述相同，但以十年为间隔进行汇总，并将比率显示到小数点后四位{p_end}
{phang2}{cmd:. stptime, per(1000) at(0(10)40) dd(4)}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse diet}{p_end}

{pstd}声明数据为生存时间数据{p_end}
{phang2}{cmd:. stset dox, origin(time dob) enter(time doe) id(id)}
           {cmd:scale(365.25) fail(fail==1 3 13) noshow}

{pstd}计算每1,000人年的发生率和人时，以十年为间隔，并排除小于等于40或大于70的观察值{p_end}
{phang2}{cmd:. stptime, per(1000) at(40(10)70) trim}

{pstd}通过使用 {cmd:ageband} 和 {cmd:rate} 在 {cmd:smrchd.dta} 中计算标准化死亡率{p_end}
{phang2}{cmd:. stptime, smr(ageband rate)}
          {cmd:using(https://www.stata-press.com/data/r16/smrchd) per(1000)}
	  {cmd:at(40(10)70) trim}

{pstd}按 {cmd:hienergy} 的类别计算每1,000人年的发生率和人时{p_end}
{phang2}{cmd:. stptime, per(1000) by(hienergy)}

{pstd}与上述相同，但以十年为间隔汇总，并排除小于等于40或大于70的观察值{p_end}
{phang2}{cmd:. stptime, per(1000) by(hienergy) at(40(10)70) trim}

{pstd}与上述相同，但使用 {cmd:ageband} 和 {cmd:rate}在 {cmd:smrchd.dta} 中计算标准化死亡率{p_end}
{phang2}{cmd:. stptime, smr(ageband rate)}
         {cmd:using(https://www.stata-press.com/data/r16/smrchd) per(1000)}
	 {cmd:by(hienergy) at(40(10)70) trim}{p_end}
    {hline}


{marker video}{...}
{title:视频示例}

{phang}
{browse "https://www.youtube.com/watch?v=ItmXrcfpTfE&list=UUVk4G4nEtBS4tLOyHqustDA":如何计算发生率和发生率比}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:stptime} 在 {cmd:r()} 中存储以下内容：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:r(ptime)}}人时{p_end}
{synopt:{cmd:r(failures)}}观察到的失败次数{p_end}
{synopt:{cmd:r(rate)}}失败率{p_end}
{synopt:{cmd:r(expected)}}预期失败次数{p_end}
{synopt:{cmd:r(smr)}}标准化死亡率{p_end}
{synopt:{cmd:r(lb)}}标准化死亡率的下限{p_end}
{synopt:{cmd:r(ub)}}标准化死亡率的上限{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <stptime.sthlp>}