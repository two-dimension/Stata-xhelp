{smcl}
{* *! version 2.2.5  19oct2017}{...}
{* wwg 请求将此 .sthlp 文件完整包含在帮助中}{...}
{vieweralsosee "[R] set seed" "mansection R setseed"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] set rng" "help set rng"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[FN] 随机数函数" "help random number functions"}{...}
{vieweralsosee "[R] set" "help set_zh"}{...}
{vieweralsosee "[R] set rngstream" "help set rngstream"}{...}
{vieweralsosee "[P] version" "help version_zh"}{...}
{viewerjumpto "语法" "set_seed_zh##syntax"}{...}
{viewerjumpto "描述" "set_seed_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "set_seed_zh##linkspdf"}{...}
{viewerjumpto "备注" "set_seed_zh##remarks"}{...}
{viewerjumpto "参考" "set_seed_zh##reference"}
{help set_seed:English Version}
{hline}{...}
{p2colset 1 17 19 2}{...}
{p2col:{bf:[R] set seed} {hline 2}}指定随机数种子和状态{p_end}
{p2col:}({mansection R setseed:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 17 2}
{marker seed}{...}
{cmd:set} {opt se:ed} {it:#}

{p 8 17 2}
{cmd:set} {opt rngstate} {it:statecode}


{phang}
{it:#} 是 0 和 2^31-1（或 2,147,483,647）之间的任意数字。

{phang}
{it:statecode} 是之前从 {helpb creturn##rngstate:creturn} 值 {cmd:c(rngstate)} 获取的随机数状态。


{marker description}{...}
{title:描述}

{pstd}
{opt set seed} {it:#} 指定 {help random:随机数函数}（如 {cmd:runiform()} 和 {cmd:rnormal()}）使用的随机数种子初始值。

{pstd} 
{opt set rngstate} {it:statecode} 将随机数生成器的状态重置为指定值，该值是之前从 {bf:{help creturn_zh}} 值 {cmd:c(rngstate)} 获取的状态。

{pstd}
{opt set seed} {it:#} 和 {opt set rngstate} {it:statecode} 适用于当前的随机数生成器。每个 Stata 中的随机数生成器都有其自身的种子和状态编码。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection R setseedRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{pstd}
备注在以下标题下呈现：

	{help set_seed##examples:示例}
        {help set_seed##setseed:设置随机数种子}
        {help set_seed##how:如何选择种子}
	{help set_seed##frequency:不要过于频繁地设置种子}
        {help set_seed##state:保存和恢复随机数生成器状态}


{marker examples}{...}
{title:示例}

{p 4 8 2}
1.  指定随机数种子的初始值

{phang2}
{cmd:. set seed 339487731}

{p 4 8 2}
2.  创建变量 {cmd:u}，包含区间 (0,1) 内均匀分布的伪随机数

{phang2}{cmd:. generate u = runiform()}

{p 4 8 2}
3.  创建变量 {cmd:z}，包含均值为 0，标准差为 1 的正态分布随机数

{phang2}{cmd:. generate z = rnormal()}

{p 4 8 2}
4.  获取伪随机数生成器的状态并将其存储在名为 {cmd:state} 的局部宏中

{phang2}{cmd:. local state = c(rngstate)}

{p 4 8 2}
5.  将伪随机数生成器的状态恢复到先前存储在名为 {cmd:state} 的局部宏中的状态

{phang2}{cmd:. set rngstate `state'}


{marker setseed}{...}
{title:设置种子}

{pstd}
Stata 的随机数生成函数，如 {helpb runiform()} 和 {helpb rnormal()}，实际上并不生成真正的随机数。这些函数是确定性的算法，生成看似随机的数字。{cmd:runiform()} 生成的数字貌似来自于 (0,1) 的矩形分布的独立抽样；{cmd:rnormal()} 生成的数字貌似来自于 {it:N}(0,1) 的独立抽样。Stata 的随机数函数被正式称为伪随机数函数。在 Stata 14 中引入的默认伪随机数生成器是 64 位梅森旋转算法。有关更多详情，请参见 {help set seed##MN1998: Matsumoto 和 Nishimura (1998)} 和 {it:{help set_rng##rngs:Stata 中的随机数生成器}} 在 {manhelp set_rng R:set rng} 中。

{pstd}
随机数函数生成的序列由种子决定，种子仅仅是一个数字，并在每次启动 Stata 时设置为 123456789。这意味着 {cmd:runiform()} 每次启动 Stata 后都生成相同的序列。在 Stata 启动后，第一次使用 {cmd:runiform()} 时，{cmd:runiform()} 返回 0.348871704556195。第二次使用时，{cmd:runiform()} 返回 0.266885709753138。第三次使用时，....

{pstd}
要获得不同的序列，必须使用 {cmd:set} {cmd:seed} 命令指定不同的种子。您可能指定种子 472195：

	. {cmd:set seed 472195}

{pstd} 
如果现在您使用 {cmd:runiform()}，第一次调用将返回 0.713028143573182，第二次调用将返回 0.920524469911484，以此类推。每当您 {cmd:set} {cmd:seed} {cmd:472195} 时，{cmd:runiform()} 将返回这两个数字。

{pstd}
因此，您设置种子以从伪随机数函数中获得不同的伪随机序列。  

{pstd}
如果您记录所设置的种子，可以在稍后重现伪随机结果，例如来自仿真或 {bf:{help mi impute}} 的插补值。无论您在设置种子后做了什么，如果您将种子设置为相同的值并重复所做的操作，您将获得相同的结果。


{marker how}{...}
{title:如何选择种子}

{pstd}
您选择种子的最佳选择是从集合 {0, 1, ..., 2^31-1} 中随机选择一个元素（其中 2^31-1 = 2,147,483,647）。我们推荐这样做，但这很难实现，因为寻找到易于获取的真实随机源十分困难。

{pstd}
我们知道有一个人使用他从钱包中找到的美元钞票的序列号中的数字。当然，他获得的数字并不是真正的随机数，但它们足够好，可能比大多数人选择的种子要随机得多。有些人使用日期和时间，尽管我们不推荐这样做，因为在一天中时间会越来越晚，这样就形成了一种模式。还有一些人试图编出一个随机数，认为只要包括足够多的数字，结果就一定是随机的。这是关于掉落食物的五秒规则的一种变体，我们也承认使用这两条规则。

{pstd}
重要的是您所设置的种子没有明显的模式，同时在一次会话中不要过于频繁地设置种子。

{pstd}
尽管如此，我们看到过的两种方法，但您应该避免使用：

{p 8 12 2}
    1.  第一次设置种子时，您设置数字 1。接下来，您设置 2，然后 3，依此类推。变体包括设置 1001、1002、1003，..., 或设置 1001、2001、3001，依此类推。

{p 12 12 2}
        不要遵循这些程序。您设置的种子不得显示模式。

{p 8 12 2}
    2.  为设置种子，您从 {cmd:runiform()} 获取一个伪随机数，然后用该数字的数字来形成种子。

{p 12 12 2}
        这是个坏主意，因为伪随机数生成器可能会收敛到一个循环。如果您获得的伪随机数生成器与 Stata 中的生成器无关，这将有效，但您将不得不找到设置第一个生成器种子的规则。

{pstd} 
选择没有模式的种子非常重要。种子满足其他随机性的属性相对而言不那么重要。


{marker frequency}{...}
{title:不要过于频繁地设置种子}

{pstd}
我们无法强调这一点：不要过于频繁地设置种子。

{pstd}
为了理解为什么这太糟糕，请考虑极端情况：您设置种子，抽取一个伪随机数，重置种子，再次抽取，然后继续。您获得的伪随机数将仅仅是您运行通过数学函数的种子。只有当您选择的种子有效随机时，您获得的结果才能通过随机检验。如果您已经有这样的数字，为什么还要使用伪随机数生成器？

{pstd}
过于频繁的定义是每个问题超过一次。

{pstd}
如果您要运行一个 10,000 次重复的仿真，请在仿真开始时设置种子，并在第 10,000 次重复完成之前不要重置它。Stata 提供的伪随机数生成器具有较长的周期。您在设置种子之间的时间越长，生成的数字看起来就越像随机数。

{pstd}
有时稍后能够单独重现其中一次重复是有用的，因此您可能会倾向于为每次重复设置已知值的种子。我们曾消极提到过设置种子为 1、2、...，正是在这样的情况下我们见过这种做法。然而，优点是，您只需将种子设置为 5 并重复要重复的内容，就可以重现第五次重复。如果这是您的目标，则无需重置种子。您可以记录随机数生成器的状态，保存状态与您的重复结果，然后在稍后使用记录的状态来重现您希望的任何一次重复。有关此内容将在 {it:{help set_seed##state:保持和恢复随机数生成器的状态}} 中进行讨论。

{pstd}
您可能还有其他理由想在每个问题中设置种子多于一次。您可能运行了一个仿真，比如进行 5,000 次重复，然后您决定应该运行 10,000 次重复。为了节省时间，您决定运行另外 5,000 次重复，然后将这些结果与您之前的 5,000 个结果合并。这没问题。我们在 StataCorp 也会这样做。如果您这样做，尤其在重复这个过程以添加另外 5,000 次重复时，特别要设置种子。这还特别重要的是每次运行都有足够数量的重复，即说要有几千的重复。

{pstd} 
即便如此，也不要这样做：您希望 500,000 次重复。为了获得它们，您分批进行 1,000 次，总共设置 500 次种子。除非您拥有真正随机的种子来源，否则您不太可能能生成一系列没有模式的 500 个种子。您设置种子的过程中进行了 1,000 次重复并不能减轻设置种子时不应出现模式的要求。

{pstd}
在所有情况下，最佳的解决方案是仅设置一次种子，然后使用我们在下一节中建议的方法。


{marker state}{...}
{title:保持和恢复随机数生成器状态}

{pstd}
在前面的章节中，我们讨论了在不必要时可能倾向于更频繁地设置种子的情况，无论是为了节省时间还是能够重新运行某个重复。在这种情况下，有一种替代方案是记录伪随机数生成器的状态，然后在需要时恢复状态。

{pstd}
Stata 中默认的随机数生成器，64 位梅森旋转算法，的状态是一串大约 5,000 个字符。可以通过输入 {cmd:display c(rngstate)} 显示状态。更实用的方式是将状态保存到名为 {cmd:state} 的局部宏中：

{phang2}{cmd:. local state = c(rngstate)}

{pstd}
随后可以通过输入

{phang2}{cmd:. set rngstate `state'}

来恢复状态。

{pstd}
状态字符串指定伪随机数生成器序列中的一个入口点。让我们解释一下。

{pstd}
使用伪随机数生成器的最佳方式是选择一次种子，生成随机数直到用尽生成器，然后获取新的生成器并选择新的种子。伪随机数生成器具有周期，之后它们会重复原始序列。这就是我们所说的用尽生成器的意思。默认的 Stata 伪随机数生成器 64 位梅森旋转算法的周期为 2^19937 - 1。这大约是 10^6000。很难想象您能够用尽这个生成器。

{pstd}
{cmd:c(rngstate)} 报告的字符串是 Stata 重新建立其在伪随机数生成器序列中的确切位置所需信息的编码形式。

{pstd}
我们并不是在认真建议您在一生中只选择一个种子，但让我们看看您可能如何做到这一点。在出生后不久，当您需要第一个随机数时，您将设置种子，

        . {cmd:set seed 1073741823}

{pstd} 
在那一天，您可能会抽取 10,000 个伪随机数，或许是为了插补一些缺失值。结束一天后，您可以保存状态，并在之后恢复它。

{pstd}
当您输入 {cmd:set} {cmd:rngstate}，后面跟着保存的状态字符串时，Stata 会重新建立先前的状态。因此，下次抽取伪随机数时，Stata 将生成设置种子 1073741823 后的第 10,001 个结果。假设您这一天抽取 100,000 个数字。结束这一天后，您保存状态字符串。

{pstd}
在第三天，设置状态为上述保存状态字符串后，您将能够抽取第 110,001 个伪随机数。

{pstd} 
这样，您会逐渐吃掉 2^19937 - 1 个随机数，但您不太可能最终用尽它。

{pstd}
我们并不希望您在一生中只设置一次种子，但使用状态字符串使您仅能为一个问题设置一次种子变得容易。

{pstd}
当我们在 StataCorp 进行仿真时，我们为每个重复记录 {cmd:c(rngstate)}。就像其他人一样，我们将来自重复的结果记录为数据集中的观测值；我们只是在数据集中有一个额外的变量，即名为 {cmd:state} 的字符串变量。该字符串是从 {cmd:c(rngstate)} 的当前值观察到的，作为函数，可以用于 Stata 中任何可用函数的上下文。

{pstd}
任何时候我们想要重现某个特定的重复结果，因此我们拥有重置伪随机数生成器所需的信息，并且将其放在数据集中是方便的，因为我们必须到那里以确定我们想要重现哪个重复。如果我们稍后想要添加更多重复结果，我们有状态字符串可以用来继续上次的工作。


{marker reference}{...}
{title:参考}

{marker MN1998}{...}
{phang}
Matsumoto, M. 和 T. Nishimura.  1998. 梅森旋转算法：一种 623 维均匀伪随机数生成器。  
{it:ACM Transactions on Modeling and Computer Simulation} 8: 3-30.  
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <set_seed.sthlp>}