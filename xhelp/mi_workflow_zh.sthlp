{smcl}
{* *! version 1.2.3  10may2018}{...}
{vieweralsosee "[MI] 工作流程" "mansection MI Workflow"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MI] 简介" "help mi_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MI] 术语表" "help mi_glossary_zh"}{...}
{viewerjumpto "描述" "mi_workflow_zh##description"}{...}
{viewerjumpto "PDF文档链接" "mi_workflow_zh##linkspdf"}{...}
{viewerjumpto "备注" "mi_workflow_zh##remarks"}
{help mi_workflow:English Version}
{hline}{...}
{p2colset 1 18 20 2}{...}
{p2col:{bf:[MI] 工作流程} {hline 2}}建议的工作流程{p_end}
{p2col:}({mansection MI Workflow:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:描述}

{p 4 4 2}
下面提供了建议的工作流程，用于处理原始数据和处理已进行插补的数据。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection MI Workflow备注和示例:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
备注分为以下几部分：

	{help mi_workflow##wforig:原始数据的建议工作流程}
	{help mi_workflow##wfimported:对已进行插补的数据的建议工作流程}
	{help mi_workflow##example:示例}


{marker wforig}{...}
{title:原始数据的建议工作流程}

{p 4 4 2}
所谓原始数据，是指缺失值的数据，而这些缺失值尚未进行插补。 您的任务是识别缺失值，给它们插补值，并进行估计。

{p 4 4 2}
{cmd:mi} 没有固定的任务执行顺序，除了必须先 {cmd:mi} {cmd:set} 数据。

{p 8 12 2}
1.  {bf:{help mi_set_zh:mi set}} 您的数据。

{p 12 12 2}
    将数据设置为wide、mlong、flong或flongsep。
    仅在数据接近内存限制时选择flongsep。 如果您需要超变化变量，请选择flong或flongsep。

{p 12 12 2}
    内存通常不是问题，而超变化变量则很少需要，因此我们一般以宽格式开始：

	        . {cmd:use} {it:originaldata}

	        . {cmd:mi set wide}

{p 12 12 2}
    如果需要使用flongsep，还需要为flongsep数据集集合指定一个名称。 选择一个与当前数据集的名称不同的名称：

	        . {cmd:use} {it:originaldata}

                . {cmd:mi set flongsep} {it:newname}

{p 12 12 2}
    如果原始数据是 {cmd:chd.dta}，您可以选择 {cmd:chdm} 作为 {it:newname}。 {it:newname} 不包括 {cmd:.dta} 后缀。 如果您选择 {cmd:chdm}，数据将存储为 {cmd:chdm.dta}、{cmd:_1_chdm.dta}等。 重要的是选择一个不同于 {it:originaldata} 的名称，以免您的 {cmd:mi} 数据覆盖原始数据。 Stata 用户习惯于在内存中处理数据的副本，这意味着对数据所做的更改不会反映在 {cmd:.dta} 数据集中，直到用户保存它们。 然而，对于flongsep数据，您在工作时更改会实时反映在 {cmd:mi} {cmd:.dta} 数据集集合中。
    参见 
    {it:{help mi_styles##advice_flongsep:关于使用flongsep的建议}}
    在 {bf:{help mi_styles_zh:[MI] 样式}}中。

{p 8 12 2}
2.  经常使用 {bf:{help mi_describe_zh:mi describe}}。

{p 12 12 2}
    {cmd:mi} {cmd:describe} 此时不会告诉您任何有用的信息，但当您更好地设置数据后， {cmd:mi} {cmd:describe} 将会提供更多信息。

	        . {cmd:mi describe}

{p 8 12 2}
3.  使用 {bf:{help mi_misstable_zh:mi misstable}} 来识别缺失值。

{p 12 12 2}
    {cmd:mi} {cmd:misstable} 是标准的 
    {bf:{help misstable_zh:misstable}}，但针对 {cmd:mi} 数据进行了调整。
    某些 Stata 命令具有 {cmd:mi} 变体 -- 请熟悉它们。 如果没有 {cmd:mi} 变体，则通常可以直接使用标准命令，尽管这可能不适用。 例如，输入 {cmd:misstable} 而不是 {cmd:mi} {cmd:misstable} 将在现在产生适当的结果，但稍后则不会产生适当的结果。 如果存在 {cmd:mi} 数据集 {it:m}=0、{it:m}=1、...、{it:m}={it:M}，并且您运行 {cmd:misstable}，您可能会在奇怪的 {it:m} 组合上运行该命令。 我们推荐使用宽格式，因为常规 Stata 命令会按照您的期望工作。 flongsep风格也是如此。 责任在于您获取这一点正确。

{p 12 12 2}
    那么 {cmd:mi} {cmd:misstable} 和 {cmd:misstable} 之间有什么区别呢？ {cmd:mi} {cmd:misstable} 等同于 
    {cmd:mi} {cmd:xeq} {cmd:0:} {cmd:misstable,} {cmd:exok}，也就是说，它是在 {it:m}=0 上运行，并指定 {cmd:exok} 选项，以便把扩展缺失值视作 
    {help mi_glossary##def_hardmissing:硬缺失}。

{p 12 12 2}
    通常，您需要熟悉所有 {cmd:mi} 命令，使用常规 Stata 命令的 {cmd:mi} 变体（如果存在），并在使用没有 {cmd:mi} 前缀的命令之前多想一下。 一旦您熟悉这些风格，做到正确的事情将变得自然而然；请参见 {bf:{help mi_styles_zh:[MI] 样式}}。

{p 12 12 2}
    为了了解数据中的缺失值，输入

	        . {cmd:mi misstable summarize}

{p 8 12 2}
4.  使用 {cmd:mi register imputed} 注册您希望进行插补的变量；
    参见 {bf:{help mi_set_zh:[MI] mi set}}。

{p 12 12 2}
    只有注册为 {cmd:imputed} 的变量才会被 {cmd:mi} 插补。 您可以逐个注册变量，也可以一次注册所有变量。
    如果您错误地注册了一个变量，
    请使用 {bf:{help mi_set_zh:mi unregister}} 取消注册。

	        . {cmd:mi register imputed} {it:varname} [{it:varname} ...]

{p 8 12 2}
5.  使用 {cmd:mi impute} 来插补（填补）缺失值；
     参见 {bf:{help mi_impute_zh:[MI] mi impute}}。

{p 12 12 2}
    在这里有很多要说的。
    例如，在一个包含缺失的变量 {cmd:age} 和 {cmd:bmi} 的数据集中，您可能输入

	        . {cmd:mi register imputed age bmi}

	        . {cmd:mi impute mvn age bmi =  attack smokes hsgrad, add(10)}

{p 12 12 2}
    {cmd:mi} {cmd:impute}'s {cmd:add(}{it:#}{cmd:)} 选项指定要添加的插补数量。 目前我们有 0 个插补，因此在插补后，我们将有 10 个。 我们通常以较少的插补开始，之后再添加更多。

{p 8 12 2}
6.  使用 {bf:{help mi_describe_zh:mi describe}} 验证所有缺失值是否已被填补。

	        . {cmd:mi describe}

{p 12 12 2}
    您可能还想使用 {bf:{help mi_xeq_zh:mi xeq}} 查看每个插补数据集中的摘要统计：

	        . {cmd:mi xeq: summarize}

{p 8 12 2}
7.  生成被动变量； {bf:{help mi_passive_zh:[MI] mi passive}}。

{p 12 12 2}
    被动变量是插补变量的函数，例如在某些 {cmd:age} 被插补时的 {cmd:lnage}。
    被动变量的值在 {it:m} 中会有差异，就像插补变量的值一样。 生成插补值的官方方式是使用 {cmd:mi passive}：

	        . {cmd:mi passive: generate lnage = ln(age)}

{p 12 12 2}
    但是，我们经常将数据切换为mlong直接生成被动变量：

	        . {cmd:mi convert mlong}

	        . {cmd:generate lnage = ln(age)}

	        . {cmd:mi register passive lnage}

{p 12 12 2}
    如果您像我们一样工作，请记得注册您创建的任何被动变量。 完成后，您可以使用 {cmd:mi} {cmd:convert} 将数据转换回宽格式，但没有必要这样做。
    

{p 8 12 2}
8.  使用 {bf:{help mi_estimate_zh:mi estimate}} 拟合模型：

	       . {cmd:mi estimate: logistic attack smokes age bmi hsgrad}

{p 12 12 2}
    拟合模型的方式与平常一样，只是您在命令前面添加了 {cmd:mi estimate:}。

{p 4 4 2}
若要查看将上述建议应用于简单数据集的示例，请参见下面的 {it:{help mi_workflow##example:示例}}。

{p 4 4 2}
理论上，您应该在 {cmd:mi} {cmd:set} 数据之前完成数据清理和管理。 实际上，这样做的可能性不大，因此您需要熟悉其他 {cmd:mi} 命令。
可用的数据管理命令包括 
{bf:{help mi_append_zh:mi append}}, 
{bf:{help mi_merge_zh:mi merge}}, 
{bf:{help mi_expand_zh:mi expand}}, 和
{bf:{help mi_reshape_zh:mi reshape}}。
如果您正在处理生存时间数据，也请参见 
{bf:{help mi_stsplit_zh:mi stsplit}}。
若要 {cmd:stset} 数据，或 {cmd:svyset}，或 {cmd:xtset}，请参见 
{bf:{help mi_set_zh:[MI] mi set}} 和 
{bf:{help mi_xxxset_zh:[MI] mi XXXset}}。


{marker wfimported}{...}
{title:对已进行插补的数据的建议工作流程}

{p 4 4 2}
数据有时会带有已插补的值。 这些数据可能是其他研究人员为您制作的，或者数据可能来自官方来源。
无论如何，我们假设数据并不是以Stata格式存在，因为如果是的话，您可以直接使用数据并输入 
{cmd:mi} {cmd:describe}。

{p 4 4 2}
{cmd:mi} 可以使用 {cmd:mi} {cmd:import} {cmd:nhanes1} 命令导入由国家健康和营养检查调查（NHANES）生成的官方数据集，
并且 {cmd:mi} 可以导入更非正式创建的、类似于wide、flong或flongsep的 数据集，使用 
{cmd:mi} {cmd:import} {cmd:wide}、{cmd:mi} {cmd:import} {cmd:flong} 或
{cmd:mi} {cmd:import} {cmd:flongsep}；
参见 {bf:{help mi_import_zh:[MI] mi import}}。

{p 4 4 2}
所需的工作流程几乎与上述的
{it:{help mi_workflow##wforig:原始数据的建议工作流程}}相同。
不同之处在于您将使用 {cmd:mi} {cmd:import} 而不是 {cmd:mi} {cmd:set}，并且您将跳过使用 {cmd:mi} {cmd:impute} 生成插补。 从这个意义上说，您的工作更轻松。

{p 4 4 2}
另一方面，
您需要验证已正确导入数据，我们对这一点有很多要说。
基本上，在导入之后，您需要小心使用哪些 {cmd:mi} 命令，直到确认已经 
正确注册变量。
这在 {bf:{help mi_import_zh:[MI] mi import}} 中进行了讨论。


{marker example}{...}
{title:示例}

{p 4 4 2}
我们将重复 {it:{help mi##example:一个简单的示例}}
来自 {bf:{help mi_zh:[MI] 简介}}，但这一次我们将遵循上述 
{it:{help mi_workflow##wforig:原始数据的建议工作流程}} 中给出的建议。

{p 4 4 2}
我们拥有154名患者的虚构数据，想要检查二元结果 {cmd:attack}（记录心脏病发作）与变量
{cmd:smokes}、{cmd:age}、{cmd:bmi}、{cmd:hsgrad}和 {cmd:female} 之间的关系。 我们将使用逻辑回归。 下面我们加载原始数据，并使用标准命令 {cmd:describe} 和 {cmd:summarize} 为您展示一些信息。
我们强调 {cmd:mheart5.dta} 只是一个标准的 Stata 数据集；
它尚未被 {cmd:mi} {cmd:set}。

         . {cmd:webuse mheart5}
         . {cmd:describe}
         . {cmd:summarize}

{p 4 4 8}
第一个指导方针是

{p 8 12 2}
1.  {bf:{help mi_set_zh:mi set}} 您的数据。

{p 4 4 2}
我们将数据设置为 flong，尽管在 
{it:{help mi##example:一个简单的示例}}
中我们将数据设置为 mlong。  {cmd:mi} 提供四种风格 -- flong、mlong、wide 和 flongsep -- 此时选择哪种并不重要。
无论选择哪种风格， {cmd:mi} 命令的工作方式相同。 提供四种风格是因为，如果我们决定不使用 {cmd:mi} 而使用标准 Stata 命令处理数据， 
那么根据我们想做的事情，发现不同风格更方便。  切换风格非常容易。

{p 4 4 2}
下面我们输入 {cmd:mi} {cmd:set} {cmd:flong}，然后为了向您展示该命令对数据的影响，我们显示标准 
{cmd:describe} 的输出：

         . {cmd:mi set flong}
         . {cmd:describe}

{p 4 4 2}
输入 {cmd:mi} {cmd:set} {cmd:flong} 向我们的数据添加了三个变量：
{cmd:_mi_miss}、{cmd:_mi_m} 和 {cmd:_mi_id}。  这些变量属于 {cmd:mi}。  如果您对此感兴趣，请参见
{bf:{help mi_styles_zh:[MI] 样式}}。 高级用户甚至可以使用它们。
无论您有多高级，您绝不能更改它们的内容。

{p 4 4 2}
除了新增的三个变量外，数据保持不变， 如果我们输入 {cmd:summarize}，将会看到这一点。  这三个新增的变量
是由于我们选择的样式。  当您 {cmd:mi} {cmd:set} 数据时，不同样式会以不同的方式更改数据，但变化仅在边缘。

{p 4 4 2}
第二个指导方针是

{p 8 12 2}
2.  经常使用 {bf:{help mi_describe_zh:mi describe}}。

{p 4 4 2}
指导方针是使用 {cmd:mi} {cmd:describe}，而不是刚才使用的 {cmd:describe}。  结果如下：

          . {cmd:mi describe}

{p 4 4 2}
正如指导方针警告的那样， "{cmd:mi} {cmd:describe} 目前不会告诉您任何有用的信息。"

{p 4 4 2}
第三个指导方针是

{p 8 12 2}
3.  使用 {bf:{help mi_misstable_zh:mi misstable}} 来识别缺失值。

{p 4 4 2}
下面我们输入 {cmd:mi} {cmd:misstable} {cmd:summarize} 和 {cmd:mi} {cmd:misstable} {cmd:nested}：

          . {cmd:mi misstable summarize}
          . {cmd:mi misstable nested}

{p 4 4 2}
{cmd:mi} {cmd:misstable} {cmd:summarize} 报告包含缺失值的变量。 
我们数据中的这些变量是 {cmd:age} 和 {cmd:bmi}。 注意 {cmd:mi} {cmd:misstable} {cmd:summarize} 在区分
“Obs=.” 和 “Obs>.”，也就是说区分标准缺失（{cmd:.}）和扩展缺失（{cmd:.a}、{cmd:.b}、...、{cmd:.z}）。  这是因为 {cmd:mi} 拥有软缺失和硬缺失的概念，并将软缺失与系统缺失关联，将硬缺失与扩展缺失关联。  硬缺失值 -- 扩展缺失 -- 被视为不应插补的缺失值。  我们的数据没有这种缺失值。

{p 4 4 2}
在输入 {cmd:mi} {cmd:misstable} {cmd:summarize} 后，我们输入 
{cmd:mi} {cmd:misstable} {cmd:nested} 因为我们想知道缺失值是否是嵌套的，或用术语说是单调的。
我们发现事实确实如此。 也就是说， {cmd:age} 在数据中有 12 个缺失值，而在每个缺失的 {cmd:age} 观察值中， {cmd:bmi} 也缺失，尽管 {cmd:bmi} 中还有另外 16 个缺失值分布在数据中。
这意味着我们可以使用单调插补方法，而且这是好消息，因为单调方法更灵活且更快。
我们将很快讨论这点的影响。
首先，我们需要处理一个机械细节。

{p 4 4 2}
第四个指导方针是

{p 8 12 2}
4.  使用 {cmd:mi register imputed} 注册您希望插补的变量；
    参见 {bf:{help mi_set_zh:[MI] mi set}}。

{p 4 4 2}
我们知道 {cmd:age} 和 {cmd:bmi} 有缺失值， 
在为这些缺失值进行插补之前，我们必须将变量注册为待插补的，这样做的方法是输入 

          . {cmd:mi register imputed age bmi}

{p 4 4 2}
第二条指导方针建议我们经常输入 {cmd:mi} {cmd:describe}。  也许现在正是适合的时候：

          . {cmd:mi describe}

{p 4 4 2}
输出确实有所变化。  {cmd:mi} 现在知道我们有 154 个观察值，其中126个是完整的，28个是缺失的。 它还知道 
{cmd:age} 和 {cmd:bmi} 是待插补的。 括号中的数字是缺失值的数量。

{p 4 4 2}
第五个指导方针是

{p 8 12 2}
5.  使用 {cmd:mi impute} 来插补（填补）缺失值。

{p 4 4 2}
在来自 {bf:{help mi_zh:[MI] 简介}} 的 {it:{help mi##example:一个简单的示例}} 中，我们通过输入 
{cmd:mi impute mvn age bmi = attack smokes hsgrad female, add(10)} 为 {cmd:age} 和 
{cmd:bmi} 插补了值。

{p 4 4 2}
这一次，我们通过输入 

{p 12 51 2}
{cmd:mi impute monotone (regress) age bmi = attack smokes hsgrad female,}
{cmd:add(20)}

{p 4 4 2}
我们将 {cmd:add(10)} 改为 {cmd:add(20)}，仅仅是为了展示我们可以这样做，尽管我们承认更喜欢在可能的情况下进行更多插补。  {cmd:add()} 指定要添加到数据中的插补数量。  对于每个缺失值，我们将插补 20 个非缺失替代值。

{p 4 4 2}
我们从 {cmd:mi} {cmd:impute} {cmd:mvn} 切换到 {cmd:mi} {cmd:impute} {cmd:monotone}，因为我们的数据是单调的。 此时 {cmd:mi} {cmd:impute} {cmd:monotone} 的速度将比 {cmd:mi} {cmd:impute} {cmd:mvn} 快，但不会提供统计优势。  在其他情况下，可能会存在统计优势。 总之，当您进入插补步骤时，您需要做出重要的决策，并需要对这方面有所了解。 您可以通过阅读 
{bf:{help mi_impute_zh:[MI] mi impute}} 开始。

          . {cmd:set seed 20039}
{p 10 15 2}
          . {cmd:mi impute monotone (regress) age bmi = attack smokes hsgrad female, add(20)}{p_end}

{p 4 4 2}
注意我们在发出 {cmd:mi} {cmd:impute} 命令之前输入了 {cmd:set} {cmd:seed} {cmd:20039}。  这样做使我们的结果可重现。 我们也可以指定 {cmd:mi} {cmd:impute} 的 {cmd:rseed(20039)} 选项。
或者我们可以完全跳过设置随机数种子，这样我们就无法重现结果。

{p 4 4 2}
第六个指导方针是

{p 8 12 2}
6.  使用 {bf:{help mi_describe_zh:mi describe}} 验证所有缺失值是否已填补。

          . {cmd:mi describe, detail}

{p 4 4 2}
这次，我们指定了 {cmd:mi} {cmd:describe} 的 {cmd:detail} 选项，尽管您必须仔细查看输出才能看到效果。 当您不指定 {cmd:detail} 时， {cmd:mi} {cmd:describe} 只报告原始、未插补数据的结果，即在本文档中所称的 {it:m}=0。 当您指定 {cmd:detail} 时， {cmd:mi} {cmd:describe} 还包括关于插补数据的信息，即在这里所称的 {it:m}>0 和 {it:m}=1、{it:m}=2、...、  {it:m}=20。  先前，{cmd:mi} {cmd:describe} 报告了 "age(12)"，这意味着 {cmd:age} 在 {it:m}=0 中有 12 个缺失值。 这次它报告 "age(12; 20*0)"，这意味着 {cmd:age} 在 {it:m}=0 中仍有 12 个缺失值，而在 20 次插补中没有缺失值。  {cmd:bmi} 在插补中也没有缺失值。 成功了！

{p 4 4 2}
让我们稍作偏离，看看我们的数据真实的样子。 让我们输入 Stata 的标准 {cmd:describe} 命令。 上次我们查看时， 
我们的数据有三个额外的变量。

          . {cmd:describe}

{p 4 4 2}
就变量而言并没有改变，但注意观察值的数量。  之前我们有 154 个观察值。  现在我们有 3,234 个！  这相当于 21*154。 存储的是我们的原始数据加上 20 次插补。 flong 风格会制作数据的额外副本。

{p 4 4 2}
我们仅选择 flong 风格，因为它很容易解释。 在来自 {bf:{help mi_zh:[MI] 简介}} 的 
{it:{help mi##example:一个简单的示例}} 中，使用这些相同的数据，我们选择了 mlong 风格。  现在也为时已晚：

          . {cmd:mi convert mlong}

{p 4 4 2}
更改样式所需的只是输入 {cmd:mi} {cmd:convert}。 数据的样式发生了变化，但内容没有变化。
让我们看看 {cmd:describe} 的报告：

          . {cmd:describe}

{p 4 4 2}
数据看起来与它们在 flong 时相似，除了观察值的数量从 3,234 降至 714！
mlong 风格是一种高效的风格，因为它不是为每次插补存储完整的数据，而是仅存储更改。
当数据为 flong 时， {cmd:mi} {cmd:describe} 报告我们有 28 个不完整的观察值。
我们得到的是 714，来自 154 个原始观察值加上 20*28 个不完整观察值的替代观察值。

{p 4 4 2}
我们推荐使用 mlong 风格。 
同时也推荐使用 wide 风格。  下面我们输入 {cmd:mi} {cmd:convert} 将我们的 mlong 数据转换为宽格式，然后运行标准 {cmd:describe} 命令：

          . {cmd:mi convert wide}
          . {cmd:describe}

{p 4 4 2}
在宽格式中，我们的数据又回到了154个观察值，但现在我们有47个变量！ 变量 {cmd:_1_age} 包含 {it:m}=1 的 {cmd:age}， {cmd:_1_bmi} 包含 {it:m}=1 的 {cmd:bmi}， {cmd:_2_age} 包含 {it:m}=2 的 {cmd:age}，依此类推。

{p 4 4 2}
第七条指导方针是

{p 8 12 2}
7.  生成被动变量。

{p 4 4 2}
被动变量是从插补变量派生的变量。
例如，如果我们需要 {cmd:lnage} = ln({cmd:age}），则变量 {cmd:lnage} 将是被动变量。 被动变量易于创建；请参见 {bf:{help mi_passive_zh:[MI] mi passive}}。
在此示例中，我们不需要任何被动变量。

{p 4 4 2}
第八条指导方针是

{p 8 12 2}
8.  使用 {bf:{help mi_estimate_zh:mi estimate}} 拟合模型。

{p 4 4 2}
我们现在的数据是宽格式，但这并不重要。 我们拟合我们的模型：

          . {cmd:mi estimate: logistic attack smokes age bmi hsgrad female}

{p 4 4 2}
熟悉 {cmd:logistic} 命令的人会惊讶于 {cmd:mi} {cmd:estimate:} {cmd:logistic} 报告系数而不是赔率比。
这是因为估计命令不是通过 {cmd:mi} {cmd:estimate} 使用 {cmd:logistic}，而是通过 {cmd:mi} {cmd:estimate} 使用 {cmd:logistic}。 如果我们想在估计时查看赔率比，可以输入

          . {cmd:mi estimate, or:  logistic} ...

{p 4 4 2}
同样，如果我们想要重放结果，将不会输入 {cmd:logistic}，而是输入 {cmd:mi} {cmd:estimate}：

          . {cmd:mi estimate}

{p 4 4 2}
如果我们希望重放带有赔率比的结果，则输入 

          . {cmd:mi estimate, or}

{p 4 4 2}
这就是指导方针的总结。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mi_workflow.sthlp>}