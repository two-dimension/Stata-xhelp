{smcl}
{* *! version 1.0.12  08feb2019}{...}
{vieweralsosee "[MI] Styles" "mansection MI Styles"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MI] Intro" "help mi_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MI] mi copy" "help mi_copy_zh"}{...}
{vieweralsosee "[MI] mi erase" "help mi_erase_zh"}{...}
{vieweralsosee "[MI] Technical" "help mi_technical_zh"}{...}
{viewerjumpto "Syntax" "mi_styles_zh##syntax"}{...}
{viewerjumpto "Description" "mi_styles_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mi_styles_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "mi_styles_zh##remarks"}
{help mi_styles:English Version}
{hline}{...}
{p2colset 1 16 18 2}{...}
{p2col:{bf:[MI] Styles} {hline 2}}数据集样式{p_end}
{p2col:}({mansection MI Styles:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 4 4 2}
有四种数据集样式可用于存储 {cmd:mi} 数据：

{p 8 8 2}
{opt w:ide}

{p 8 8 2}
{opt ml:ong}

{p 8 8 2}
{opt fl:ong}

{p 8 8 2}
{opt flongs:ep}


{marker description}{...}
{title:描述}

{p 4 4 2}
本条目的目的是使您熟悉 {cmd:mi} 数据可以存储的四种样式。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection MI StylesRemarksandexamples:备注和示例}

{pstd}
上述部分不包括在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
备注在以下标题下呈现：

	{help mi_styles##styles:四种样式}
	    {help mi_styles##wide:宽样式}
	    {help mi_styles##flong:长样式}
	    {help mi_styles##mlong:长期样式}
	    {help mi_styles##flongsep:长分隔样式}
	    {help mi_styles##how:我们是如何构造这个示例的}

	{help mi_styles##sysvars:使用 mi 系统变量}

	{help mi_styles##advice_flongsep:使用 flongsep 的建议}


{marker styles}{...}
{title:四种样式}

{p 4 4 2}
我们有非常虚构的数据，首先用文字描述，然后展示给您看这四种样式。原始数据有两个变量的两个观测值：

                       {c TLC}{hline 11}{c TRC}
		       {c |} a       b {c |}
                       {c LT}{hline 11}{c RT}
                       {c |} 1       2 {c |}
                       {c |} 4       . {c |}
                       {c BLC}{hline 11}{c BRC}

{p 4 4 2}
变量 {cmd:b} 有一个缺失值。我们有两个替代值用于 {cmd:b}，分别是 4.5 和 5.5。还有第三个变量 {cmd:c} 在我们的数据集中，其中 {cmd:c} = {cmd:a} + {cmd:b}。

{p 4 4 2}
因此，使用 {cmd:mi} 的术语，我们有 {it:M}=2 个插补，而数据集 {it:m}=0，{it:m}=1 和 {it:m}=2 分别为

                       {c TLC}{hline 19}{c TRC}
	     {it:m}=0:      {c |} a       b       c {c |}
                       {c LT}{hline 19}{c RT}
                       {c |} 1       2       3 {c |}
                       {c |} 4       .       . {c |}
                       {c BLC}{hline 19}{c BRC}

                       {c TLC}{hline 19}{c TRC}
	     {it:m}=1:      {c |} a       b       c {c |}
                       {c LT}{hline 19}{c RT}
                       {c |} 1       2       3 {c |}
                       {c |} 4     4.5     8.5 {c |}
                       {c BLC}{hline 19}{c BRC}

                       {c TLC}{hline 19}{c TRC}
	     {it:m}=2:      {c |} a       b       c {c |}
                       {c LT}{hline 19}{c RT}
                       {c |} 1       2       3 {c |}
                       {c |} 4     5.5     9.5 {c |}
                       {c BLC}{hline 19}{c BRC}

{p 4 4 2}
继续用术语，{cmd:a} 是一个常规变量，{cmd:b} 是一个插补变量，而 {cmd:c} 是一个被动变量。


{marker wide}{...}
    {title:宽样式}

{p 4 4 2}
上述数据以宽样式存储在 {cmd:miproto.dta} 中。

{* --------------------------------------------------- junk1.smcl ---}{...}
	. {cmd:webuse miproto}

	. {cmd:list}
        {txt}
             {c TLC}{hline 3}{c -}{hline 3}{c -}{hline 3}{c -}{hline 6}{c -}{hline 6}{c -}{hline 6}{c -}{hline 6}{c -}{hline 10}{c TRC}
             {c |} {res}a   b   c   _1_b   _2_b   _1_c   _2_c   _mi_miss {txt}{c |}
             {c LT}{hline 3}{c -}{hline 3}{c -}{hline 3}{c -}{hline 6}{c -}{hline 6}{c -}{hline 6}{c -}{hline 6}{c -}{hline 10}{c RT}
          1. {c |} {res}1   2   3      2      2      3      3          0 {txt}{c |}
          2. {c |} {res}4   .   .    4.5    5.5    8.5    9.5          1 {txt}{c |}
             {c BLC}{hline 3}{c -}{hline 3}{c -}{hline 3}{c -}{hline 6}{c -}{hline 6}{c -}{hline 6}{c -}{hline 6}{c -}{hline 10}{c BRC}
{* --------------------------------------------------- junk1.smcl ---}{...}

{p 4 4 2}
变量出现的顺序没有意义。

{p 4 4 2}
在左侧，变量 {cmd:a}、{cmd:b} 和 {cmd:c} 下可以看到原始数据。

{p 4 4 2}
对于 {cmd:b} 的插补值出现在名为 {cmd:_1_b} 和 {cmd:_2_b} 的变量下；{it:m}=1 出现在 {cmd:_1_b} 下，{it:m}=2 出现在 {cmd:_2_b} 下。请注意在第一个观测中，{cmd:b} 的观察值简单地在 {cmd:_1_b} 和 {cmd:_2_b} 中重复。在第二个观测中，然而，{cmd:_1_b} 和 {cmd:_2_b} 显示了 {cmd:b} 的缺失值的替代值。

{p 4 4 2}
对于 {cmd:c} 的被动值显现在名为 {cmd:_1_c} 和 {cmd:_2_c} 的变量下，方式与插补值在 {cmd:_1_b} 和 {cmd:_2_b} 中出现的相同。

{p 4 4 2}
最后，出现一个额外变量：{cmd:_mi_miss}。这是一个 {cmd:mi} 系统变量的例子。您永远不能更改 {cmd:mi} 系统变量；它们自会处理。宽样式只有一个系统变量。{cmd:_mi_miss} 在完整观测中包含 0，在不完整观测中包含 1。


{marker flong}{...}
    {title:长样式}

{p 4 4 2}
让我们将这个数据集转换为长样式：

{* --------------------------------------------------- junk2.smcl ---}{...}
	. {cmd:mi convert flong, clear}

	. {cmd:list, separator(2)}
        {txt}
             {c TLC}{hline 3}{c -}{hline 5}{c -}{hline 5}{c -}{hline 10}{c -}{hline 7}{c -}{hline 8}{c TRC}
             {c |} {res}a     b     c   _mi_miss   _mi_m   _mi_id {txt}{c |}
             {c LT}{hline 3}{c -}{hline 5}{c -}{hline 5}{c -}{hline 10}{c -}{hline 7}{c -}{hline 8}{c RT}
          1. {c |} {res}1     2     3          0       0        1 {txt}{c |}
          2. {c |} {res}4     .     .          1       0        2 {txt}{c |}
             {c LT}{hline 3}{c -}{hline 5}{c -}{hline 5}{c -}{hline 10}{c -}{hline 7}{c -}{hline 8}{c RT}
          3. {c |} {res}1     2     3          .       1        1 {txt}{c |}
          4. {c |} {res}4   4.5   8.5          .       1        2 {txt}{c |}
             {c LT}{hline 3}{c -}{hline 5}{c -}{hline 5}{c -}{hline 10}{c -}{hline 7}{c -}{hline 8}{c RT}
          5. {c |} {res}1     2     3          .       2        1 {txt}{c |}
          6. {c |} {res}4   5.5   9.5          .       2        2 {txt}{c |}
             {c BLC}{hline 3}{c -}{hline 5}{c -}{hline 5}{c -}{hline 10}{c -}{hline 7}{c -}{hline 8}{c BRC}
{* --------------------------------------------------- junk2.smcl ---}{...}

{p 4 4 2}
我们使用每两行之后添加分隔线的方式列出这些数据，以便更容易理解。
忽略 {cmd:mi} 系统变量，关注变量 {cmd:a}、{cmd:b} 和 {cmd:c}。
观察 1 和 2 包含 {it:m}=0；
观察 3 和 4 包含 {it:m}=1；
观察 5 和 6 包含 {it:m}=2。

{p 4 4 2}
我们现在将解释系统变量，但您不需要记住这些。

{p 8 12 2}
1.  我们再次看到 {cmd:_mi_miss}，就像在宽样式中看到的一样。
    它标记了 {it:m}=0 的不完整观测。
    在 {it:m}>0 时，它包含缺失值。  

{p 8 12 2}
2.  {cmd:_mi_m} 记录 {it:m}。前两次观测为 
    {it:m}=0；接下来的两次为 {it:m}=1；最后两次为 {it:m}=2。

{p 8 12 2}
3.  {cmd:_mi_id} 记录一个任意编码的观测识别变量。
    在 {it:m}=0 时，它为 1 和 2，然后在 {it:m}=1 和 {it:m}=2 时重复。
    {cmd:_mi_id}=1 的观测彼此对应于所有 
    {it:m}。对于 {cmd:_mi_id}=2 也是如此。

{p 12 12 2}
    警告： 不要将 {cmd:_mi_id} 用作您自己的 ID 变量。 您可能
    看到某个观测时，它的 {cmd:_mi_id}=8，然后稍晚再看，
    发现该观测已经从 {cmd:_mi_id}=8 变为 {cmd:_mi_id}=5。 {cmd:_mi_id} 属于 {cmd:mi}。 如果您想要自己的 ID 变量，自己创建一个。 {cmd:_mi_id} 的唯一作用是，在任何时刻，它唯一地识别并连接观测。

{p 4 4 2}
变量的顺序或者观察的顺序没有意义。


{marker mlong}{...}
    {title:长期样式}

{p 4 4 2}
让我们将这个数据集转换为长期样式：

{* --------------------------------------------------- junk3.smcl ---}{...}
	. {cmd:mi convert mlong, clear}

	. {cmd:list}
        {txt}
             {c TLC}{hline 3}{c -}{hline 5}{c -}{hline 5}{c -}{hline 10}{c -}{hline 7}{c -}{hline 8}{c TRC}
             {c |} {res}a     b     c   _mi_miss   _mi_m   _mi_id {txt}{c |}
             {c LT}{hline 3}{c -}{hline 5}{c -}{hline 5}{c -}{hline 10}{c -}{hline 7}{c -}{hline 8}{c RT}
          1. {c |} {res}1     2     3          0       0        1 {txt}{c |}
          2. {c |} {res}4     .     .          1       0        2 {txt}{c |}
          3. {c |} {res}4   4.5   8.5          .       1        2 {txt}{c |}
          4. {c |} {res}4   5.5   9.5          .       2        2 {txt}{c |}
             {c BLC}{hline 3}{c -}{hline 5}{c -}{hline 5}{hline 10}{c -}{hline 7}{c -}{hline 8}{c BRC}
{* --------------------------------------------------- junk3.smcl ---}{...}

{p 4 4 2}
如果我们添加一些精心挑选的空行，这个列示会更易读：

             {c TLC}{hline 3}{c -}{hline 5}{c -}{hline 5}{c -}{hline 10}{c -}{hline 7}{c -}{hline 8}{c TRC}
             {c |} {res}a     b     c   _mi_miss   _mi_m   _mi_id {txt}{c |}
             {c LT}{hline 3}{c -}{hline 5}{c -}{hline 5}{hline 10}{c -}{hline 7}{c -}{hline 8}{c RT}
          1. {c |} {res}1     2     3          0       0        1 {txt}{c |}
          2. {c |} {res}4     .     .          1       0        2 {txt}{c |}
             {c |}                                           {c |}
          3. {c |} {res}4   4.5   8.5          .       1        2 {txt}{c |}
             {c |}                                           {c |}
          4. {c |} {res}4   5.5   9.5          .       2        2 {txt}{c |}
             {c BLC}{hline 3}{c -}{hline 5}{c -}{hline 5}{c -}{hline 10}{c -}{hline 7}{c -}{hline 8}{c BRC}

{p 4 4 2}
长期样式与长样式相似，唯一的区别在于完整的观察（即 {cmd:_mi_miss}=0 的观察）在 {it:m}>0 时被省略。

{p 4 4 2}
观察 1 和 2 是原始的 {it:m}=0 数据。

{p 4 4 2}
观察 3 是观察 2 的 {it:m}=1 替代观察。

{p 4 4 2}
观察 4 是观察 2 的 {it:m}=2 替代观察。


{marker flongsep}{...}
    {title:长分隔样式}

{p 4 4 2}
让我们以长分隔样式查看这些数据：

{* --------------------------------------------------- junk4.smcl ---}{...}
	. {cmd:mi convert flongsep example, clear}
        (文件 example.dta _1_example.dta _2_example.dta 被创建)

	. {cmd:list}
        {txt}
             {c TLC}{hline 3}{c -}{hline 3}{c -}{hline 3}{hline 10}{c -}{hline 8}{c TRC}
             {c |} {res}a   b   c   _mi_miss   _mi_id {txt}{c |}
             {c LT}{hline 3}{c -}{hline 3}{c -}{hline 3}{hline 10}{c -}{hline 8}{c RT}
          1. {c |} {res}1   2   3          0        1 {txt}{c |}
          2. {c |} {res}4   .   .          1        2 {txt}{c |}
             {c BLC}{hline 3}{c -}{hline 3}{c -}{hline 3}{hline 10}{c -}{hline 8}{c BRC}
{* --------------------------------------------------- junk4.smcl ---}{...}

{p 4 4 2}
长分隔样式将 {it:m}=0、{it:m}=1 和 {it:m}=2 存储在不同的文件中。
当我们转换为长分隔样式时，必须为这些文件指定一个名称，我们选择了 {cmd:example}。这导致 {it:m}=0 存储在 {cmd:example.dta} 中，{it:m}=1 存储在 {cmd:_1_example.dta} 中，{it:m}=2 存储在 {cmd:_2_example.dta} 中。

{p 4 4 2}
在上述列示中，我们看到了原始的 {it:m}=0 数据。

{p 4 4 2}
转换后，{it:m}=0 ({cmd:example.dta}) 保留在内存中。
在使用长分隔样式数据时，您总是操作内存中的 {it:m}=0。
然而，什么也阻止我们简单地回顾一下：

{* --------------------------------------------------- junk5.smcl ---}{...}
        . {cmd:save example, replace}
        文件 example.dta 已保存

        . {cmd:use _1_example, clear}
        (mi 原型)

	. {cmd:list}
        {txt}
             {c TLC}{hline 3}{c -}{hline 5}{c -}{hline 5}{hline 8}{c TRC}
             {c |} {res}a     b     c   _mi_id {txt}{c |}
             {c LT}{hline 3}{c -}{hline 5}{c -}{hline 5}{hline 8}{c RT}
          1. {c |} {res}1     2     3        1 {txt}{c |}
          2. {c |} {res}4   4.5   8.5        2 {txt}{c |}
             {c BLC}{hline 3}{c -}{hline 5}{c -}{hline 5}{hline 8}{c BRC}
{* --------------------------------------------------- junk5.smcl ---}{...}

{p 4 4 2}
这是 {it:m}=1 的数据。
如之前所述，系统变量 {cmd:_mi_id} 连接观测。
然而，在 {it:m}=1 的数据中，{cmd:_mi_miss} 没有重复。

{p 4 4 2}
现在让我们查看 {cmd:_2_example.dta}： 

{* --------------------------------------------------- junk6.smcl ---}{...}
        . {cmd:use _2_example, clear}
        (mi 原型)

	. {cmd:list}
        {txt}
             {c TLC}{hline 3}{c -}{hline 5}{c -}{hline 5}{hline 8}{c TRC}
             {c |} {res}a     b     c   _mi_id {txt}{c |}
             {c LT}{hline 3}{c -}{hline 5}{c -}{hline 5}{hline 8}{c RT}
          1. {c |} {res}1     2     3        1 {txt}{c |}
          2. {c |} {res}4   5.5   9.5        2 {txt}{c |}
             {c BLC}{hline 3}{c -}{hline 5}{c -}{hline 5}{hline 8}{c BRC}
{* --------------------------------------------------- junk6.smcl ---}{...}

{p 4 4 2}
这就是 {it:m}=2 的数据。

{p 4 4 2}
我们有一个旁白，但它是一个重要的旁白。回顾我们刚刚输入的命令，去掉输出：

	. {cmd:mi convert flongsep example, clear}
	. {cmd:list}
        . {cmd:save example, replace}
        . {cmd:use _1_example, clear}
	. {cmd:list}
        . {cmd:use _2_example, clear}
	. {cmd:list}

{p 4 4 2}
我们希望您注意的行是 {cmd:save} {cmd:example,} {cmd:replace}。
在转换为长分隔样式后，我们出于某种原因感到有必要保存数据集。我们将在下面解释这个原因。现在再看看历史记录。
在使用 {cmd:_1_example.dta} 之后，我们没有感到有必要在使用 {cmd:_2_example.dta} 之前保存该数据集。我们在下面也会解释这个。

{p 4 4 2}
长分隔样式的数据集是一组匹配的数据集。您在内存中操作 {it:m}=0 数据集。保存该数据集是您的责任。有时 {cmd:mi} 已经为您保存了数据集。这里在 {cmd:mi} {cmd:convert} 后就是如此，但一般情况下您无法知道这一点，因此您有责任保存数据集，就像保存任何其他数据集一样。

{p 4 4 2}
{it:m}>0 数据集，即 {cmd:_}{it:#}{cmd:_}{it:name}{cmd:.dta}，是 {cmd:mi} 的责任。我们不必关心保存它们。显然，在这里保存它们没有必要，因为我们刚刚使用了数据且没有做任何更改。问题在于，一般来说，{it:m}>0 数据集不是我们的责任。然而，{it:m}=0 数据集是我们的责任。

{p 4 4 2}
我们的演示结束了：

{* --------------------------------------------------- junk7.smcl ---}{...}
        . {cmd:drop _all}

        . {cmd:mi erase example}
        (文件 example.dta _1_example.dta _2_example.dta 被删除)
{* --------------------------------------------------- junk7.smcl ---}{...}


{marker how}{...}
    {title:我们是如何构造这个示例的}

{p 4 4 2}
您可能好奇我们是如何构造 {cmd:miproto.dta} 的。以下是我们所做的：

{* --------------------------------------------------- junk8.smcl ---}{...}
        . {cmd:drop _all}

        . {cmd:input a b}

             {txt}        a          b
          1{cmd}. 1 2 
        {txt}  2{cmd}. 4 .
        {txt}  3{cmd}. end
        {txt}
        . {cmd}mi set wide
        {txt}
        . {cmd}mi set M = 2 
        {txt}
        . {cmd}mi register regular a
        {txt}
        . {cmd}mi register imputed b
        {txt}
        . {cmd}replace _1_b = 4.5 in 2
        {txt}
        . {cmd}replace _2_b = 5.5 in 2
        {txt}
        . {cmd}mi passive: gen c = a + b
        {txt}
        . {cmd}order a b c _1_b _2_b _1_c _2_c _mi_miss{txt}
{* --------------------------------------------------- junk8.smcl ---}{...}


{marker sysvars}{...}
{title:使用 mi 系统变量}

{p 4 4 2}
您可以使用 {cmd:mi} 的系统变量来简化某些任务。
例如，如果您想知道完整和不完整观测的总体数量，您可以输入 

	. {cmd:tabulate _mi_miss}

{p 4 4 2}
因为在所有样式中，{cmd:_mi_miss} 变量在 {it:m}=0 中创建，包含 0 如果完整和 1 如果不完整。

{p 4 4 2}
如果您想知道 {it:m}=1 中的 {cmd:weight} 的摘要统计信息，通用解决方案是

        . {cmd:mi xeq 1: summarize weight}

{p 4 4 2}
然而，如果您使用的是宽数据，您可以输入

        . {cmd:summarize _1_weight}

{p 4 4 2}
如果您使用的是长数据，您可以输入 

        . {cmd:summarize weight if _mi_m==1}

{p 4 4 2}
如果您使用的是长期数据，您可以输入 

	. {cmd:summarize weight if (_mi_m==0 & !_mi_miss) | _mi_m==1}

{p 4 4 2}
好吧，最后一个并不是非常方便。

{p 4 4 2}
直接做什么是方便的取决于您正在使用的样式。
不过，请记住，您始终可以通过使用 {bf:{help mi_convert_zh:mi convert}} 切换样式。  
如果您使用的是长期数据并希望比较原始数据和所有插补中的 {cmd:weight} 变量的摘要统计信息，您可以输入

	. {cmd:mi convert wide}

	. {cmd:summarize *weight}


{marker advice_flongsep}{...}
{title:使用 flongsep 的建议}

{p 4 4 2}
当您的数据太大而无法适应任何其他样式时，请使用长分隔样式。 如果您已经有长分隔数据，可以尝试将其转换为其他样式。 如果您收到“没有空间添加更多观测”或“没有空间添加更多变量”的错误，则需要增加 Stata 允许使用的内存量（见 {bf:{help memory_zh:[D] memory}}）或接受使用长分隔样式。

{p 4 4 2}
长分隔样式没有什么不对，除了您需要学习一些新的习惯。 通常，在 Stata 中，您在内存中对数据的副本进行操作，您所做的更改不会反映在底层磁盘文件中，直到您明确保存数据。 如果您想要更改数据的名称，您只需将其保存到不同名称的文件中。 在处理长分隔数据时，所有这些都不成立。
长分隔数据是一组数据集，您在内存中操作与 {it:m}=0 相对应的数据，而 {cmd:mi} 处理保持其他数据集的同步。 随着您进行更改，磁盘上的数据集会发生变化。

{p 4 4 2}
将数据集集合视为一个名称。 该名称是在创建长分隔数据时确定的。 这可能通过三种方式发生。 你可能从内存中的非 {cmd:mi} 数据集开始，{cmd:mi} {cmd:set} 它；您可能将数据集导入到 Stata 中，结果为长分隔；或您可能将另一个 {cmd:mi} 数据集转换为长分隔。
以下是所有相关命令：

	. {cmd:mi set flongsep} {it:name}{right:(1)     }

	. {cmd:mi import flongsep} {it:name}{right:(2)     }
	. {cmd:mi import nhanes1}  {it:name}

	. {cmd:mi convert flongsep} {it:name}{right:(3)     }

{p 4 4 2}
在每个命令中，您指定一个名称，该名称将成为长分隔数据集集合的名称。 特别地， 
{it:name}{cmd:.dta} 将成为 {it:m}=0， 
{cmd:_1_}{it:name}{cmd:.dta} 将成为 {it:m}=1， 
{cmd:_2_}{it:name}{cmd:.dta} 将成为 {it:m}=2，
依此类推。
您 {bf:{help use_zh}} 长分隔数据通过键入 {cmd:use} {it:name}，就像使用任何其他数据集一样。 正如我们所说，您在内存中使用 {it:m}=0，而 {cmd:mi} 处理其余部分。

{p 4 4 2}
长分隔数据存储在当前（工作）目录中。 了解 {bf:{help pwd}} 以找出您在何处，以及 {bf:{help cd_zh}} 以更改；参见 {bf:{help cd_zh:[D] cd}}。

{p 4 4 2}
在处理长分隔数据时，您有责任几乎像处理任何 Stata 数据集一样 {bf:{help save_zh}} {it:name}{cmd:.dta} 。 不同之处在于，{cmd:mi} 可能且可能已经在途中保存了 {it:name}{cmd:.dta}，而没有提到这一点，并且 {cmd:mi} 无疑也更新了 {cmd:_}{it:#}{cmd:_}{it:name}{cmd:.dta} 数据集。 尽管如此，完成后您仍然有责任保存 {cmd:name}{cmd:.dta} ，因为您无法确定 {cmd:mi} 是否最近保存了 {it:name}{cmd:.dta} 。 您不需要担心 {cmd:_}{it:#}{cmd:_}{it:name}{cmd:.dta}。

{p 4 4 2}
在 Stata 中，通常可以在内存中使用数据集而不修改磁盘上原始副本，除非您打算更新它。在长分隔的情况下，这种情况并不成立，因此我们建议您使用数据的副本，而 {cmd:mi} 提供了一个 {helpb mi copy} 命令专门用于此目的：

        . {cmd:mi copy} {it:newname}

{p 4 4 2}
在内存中有长分隔数据时，当您键入 {cmd:mi} {cmd:copy} {it:newname} 时，当前的长分隔文件将以其现有名称保存（这是您不负责保存 {it:name}{cmd:.dta} 的一种情况），然后文件将被复制到 {it:newname}，这意味着
{it:m}=0 被复制到 {it:newname}{cmd:.dta}， 
{it:m}=1 被复制到 {cmd:_1_}{it:newname}{cmd:.dta}，
依此类推。 您现在使用的是相同的数据，但新名称为 {it:newname}。

{p 4 4 2}
在工作过程中，您可能会希望在 {it:name} 下保存数据集合并继续使用 {it:newname}。
请执行以下操作：

	. {cmd:mi copy} {it:name}{cmd:, replace}

        . {cmd:use} {it:newname}

{p 4 4 2}
当天完成时，如果您想保存数据，请不要忘记使用 {cmd:mi} {cmd:copy} 保存它们。 同时，删除长分隔的 {it:newname} 数据集集合也是个好主意：

	. {cmd:mi copy} {it:name}{cmd:, replace}

	. {cmd:mi erase} {it:newname}

{p 4 4 2}
顺便提一下，{it:name}{cmd:.dta}、{cmd:_1_}{it:name}{cmd:.dta}、……都是普通的 Stata 数据集。 通过使用一般的（非 {cmd:mi}）Stata 命令，您可以查看它们，甚至对它们进行更改。 对于后者需小心；见 {bf:{help mi_technical_zh:[MI] Technical}}。

{p 4 4 2}
参见 {bf:{help mi_copy_zh:[MI] mi copy}} 以了解有关 {cmd:mi} {cmd:copy} 的更多信息。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mi_styles.sthlp>}