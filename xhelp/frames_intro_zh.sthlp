{smcl}
{* *! version 1.0.0  14jun2019}{...}
{vieweralsosee "[D] frames intro" "mansection D framesintro"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] frames" "help frames_zh"}{...}
{vieweralsosee "[D] frlink" "help frlink_zh"}{...}
{vieweralsosee "[D] frget"  "help frget_zh"}{...}
{vieweralsosee "[FN] Programming functions" "help f_frval_zh"}{...}
{vieweralsosee "[M-5] st_frame*()" "help mf_st_frame_zh"}{...}
{viewerjumpto "Description" "frames_intro_zh##description"}{...}
{viewerjumpto "Remarks" "frames_intro_zh##remarks"}
{help frames_intro:English Version}
{hline}{...}
{p2colset 1 21 23 2}{...}
{p2col:{bf:[D] frames intro} {hline 2}}帧简介{p_end}
{p2col:}({mansection D framesintro:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}

{marker description}{...}
{title:描述}

{pstd}
帧，也称为数据帧，允许您同时在内存中存储多个数据集。内存中的数据集存储在帧中，Stata 允许多个帧。您可以在它们之间切换，甚至可以将一个帧中的数据链接到另一个帧中的数据。以下介绍了这一机制的运作方式。

{marker remarks}{...}
{title:备注}

{pstd}
    备注在以下标题下呈现

        {help frames_intro##why:帧可以为您做什么}
	    {help frames_intro##multitask:使用帧进行多任务处理}
	    {help frames_intro##integral:使用帧执行与工作密切相关的任务}
	    {help frames_intro##link:使用帧同时处理多个数据集}
	    {help frames_intro##post:使用帧记录从模拟中收集的统计数据}
	    {help frames_intro##preserve:帧使 Stata（preserve/restore）更快}
	    {help frames_intro##other:您可能想到其他我们应该列出的用法}

        {help frames_intro##learning:学习帧}
            {help frames_intro##currentframe:当前帧}
            {help frames_intro##creation:创建新帧}
	    {help frames_intro##plural:键入 frame 或 frames 都可以}
            {help frames_intro##switching:切换帧}
	    {help frames_intro##copying:复制帧}
	    {help frames_intro##dropping:删除帧}
	    {help frames_intro##reset:重置帧}
            {help frames_intro##frameprefix:帧前缀命令} 
	    {help frames_intro##linking:链接帧}
	    {help frames_intro##_frval:忽略 _frval() 函数}
	    {help frames_intro##posting:向帧发布新观测值}

        {help frames_intro##programming:使用帧编程}
	    {help frames_intro##ado:使用帧的 Ado 编程}
	    {help frames_intro##mata:使用帧的 Mata 编程}

{marker why}{...}
{title:帧可以为您做什么}

{pstd}
    帧使您能够同时在内存中有多个数据集。
    这里有几种使用它们的方法。

{marker multitask}{...}
{ul:使用帧进行多任务处理}

{pstd}
    您可以创建一个新帧，将另一个数据集加载到其中，执行某些任务，然后切换回来并丢弃该帧。

{pstd}
    您正在工作。电话响了。有些事情必须立即处理。

{col 9}{cmd:. frame create interruption}         // 您创建新帧 ...
{col 9}{cmd:. frame change interruption}         // 并切换到它

{col 9}{cmd:. use} {it:another_dataset}               // 您加载一个数据集
{col 9}{cmd:.}                                   // 您做需要做的事情
{col 9}{cmd:.}
{col 9}{cmd:. frame change default}              // 您切换回去
{col 9}{cmd:. frame drop interruption}           // 您删除新帧

{pstd}
您回到工作中，就好像您从未被打扰过。

{marker integral}{...}
{ul:使用帧执行与工作密切相关的任务}

{pstd}
    您需要根据数据计算一个值并将其添加到数据中。这非常麻烦，因为进行计算需要修改数据，而这些数据又需要保持不变并将结果添加到其中。

{pstd}
    您已经将 {cmd:yourdata.dta} 加载到内存中，并且已经对其进行了某些更新。您尚未保存这些更改。您开始计算麻烦的值。

{col 9}{cmd:. frame copy default subtask}        // 创建并复制当前数据到新帧
{col 9}{cmd:. frame change subtask}              // 切换到新帧

{col 9}{cmd:. sort weight foreign}               // 开始结果计算
{col 9}{cmd:.} {it:省略步骤}
{col 9}{cmd:. keep if mark1 | mark2}             {red:// 丢弃观测值!}
{col 9}{cmd:.} {it:省略步骤}
{col 9}{cmd:. regress dmpg dw if mod(_n,2)}      // 计算麻烦的值

{col 9}{cmd:. frame change default}              // 切换回之前的帧
{col 9}{cmd:. gen dwc = cond(foreign,_b[dw],0)}  // 将结果保存在 yourdata.dta 中
{col 9}{cmd:. frame drop subtask}                // 删除新帧

{pstd}
    您本可以使用 {cmd:preserve} 和 {cmd:restore} 来执行此任务。然而，使用帧通常更方便，最主要的原因是您可以在它们之间来回切换。对于已经保存的数据集和内存中的修改副本，您无法做到这一点。

{pstd}
    如果仔细查看上面的代码，您会注意到我们需要计算和存储的麻烦值是 {cmd:_b[dw]}。{cmd:_b[dw]} 是根据帧 {cmd:subtask} 中的数据计算的，并在 Stata 中存储以便后续使用，无论当前帧是什么。

{pstd}
    在帧中存储的是数据集值。程序值，例如 {cmd:_b[]}, {cmd:r()}, {cmd:e()} 和 {cmd:s()} 存储在 Stata 中，并可以跨帧访问。

{marker link}{...}
{ul:使用帧同时处理多个数据集}

{pstd}
    当我们说同时处理数据集时，我们是指已链接的数据集。链接的数据集是合并数据集的替代方案。

{pstd}
    您有两个数据集。{cmd:persons.dta} 包含关于人们的数据。{cmd:uscounties.dta} 包含关于县的数据。您想分析 {cmd:persons.dta} 中的人以及他们居住的县。合并这两个数据集会出现一些问题：

{p 8 12 2}
    1.  {cmd:persons.dta} 中的一些人住在同一个县。

{p 8 12 2}
    2.  在 {cmd:uscounties.dta} 中有一些县与您的分析无关，因为 {cmd:persons.dta} 中没有人住在这些县。

{p 8 12 2}
    3.  您不确定 {cmd:uscounties.dta} 是否完整。可能在 {cmd:persons.dta} 中的一些人住在 {cmd:uscounties.dta} 中未记录的县。

{p 8 12 2}
    4.  而且，只有 {cmd:uscounties.dta} 中的一些变量对您的分析是必要的。

{pstd}
    解决所有这些问题的帧方案是将两个数据集链接。首先，您将 {cmd:persons.dta} 加载到一个帧中，将 {cmd:uscounties.dta} 加载到另一个帧中：

{col 9}{cmd:. use persons}
{col 9}{cmd:. frame create counties}
{col 9}{cmd:. frame counties: use counties}

{pstd}
    要链接两个帧中的数据集，您键入 

{col 9}{cmd:. frlink m:1 countyid, frame(uscounties)}

{pstd}
    这将根据变量 {cmd:countyid} 的相等值将 {cmd:persons.dta} 中的观测值与 {cmd:uscounties.dta} 中的观测值进行匹配。数据并未合并，而是被链接。没有变量从 {cmd:uscounties.dta} 复制到 {cmd:persons.dta}，但如何复制变量的问题已得到解决。

{pstd}
    您按需将变量逐个或按组复制到人员数据中，使用 {cmd:frget} 命令：

{col 9}{cmd:. frget med_income nschools, from(uscounties)}

{pstd}
    您可以使用 {cmd:persons.dta} 进行所需的分析，获得当前帧中的数据集：

{col 9}{cmd:. regress income med_income n_schools educ age}

{marker post}{...}
{ul:使用帧记录从模拟中收集的统计数据}

{pstd}
    模拟涉及重复一项任务——执行一次模拟——其每一步都产生以某种方式记录的统计数据。之后，您将分析记录下来的统计数据。

{pstd}
    帧解决模拟问题的方案是将统计数据收集到另一个帧中。我们将该帧命名为 {cmd:results}。首先，您创建一个新帧，并在其中创建变量以记录统计数据，例如 {cmd:b1coverage} 和 {cmd:b2coverage}：

                      {it:新帧的}
                      {it:名称}
                        \
         {cmd:. frame create results b1coverage b2coverage}
                                {hline 21} 
                                     /
                          {it:新变量在其中}

{pstd}
    此时，新帧包含零个观测值。

{pstd}
    接下来，您将编写一个 do 文件，以在每次迭代之后生成要存储的值。在每次迭代结束时，do 文件将包含以下行 

                   {it:帧的名称}
                      \
         {cmd:. frame post results (}{it:exp}₁{cmd:) (}{it:exp}₂{cmd:)}
                              {hline 13}
                                  /
                              {it:值为}
                         {cmd:b1coverage} 和 {cmd:b2coverage}

{pstd}
    {cmd:frame} {cmd:post} 向 {cmd:results} 中的数据添加了一个观测值。{it:exp}₁ 和 {it:exp}₂ 是表达式。

{pstd}
    当 do 文件完成时，结果的完整集合将在帧 {cmd:results} 中找到。您将希望保存它们： 

{col 9}{cmd:. frame results: save} {it:filename}

{pstd}
    然后，您将切换到该帧，并开始对统计数据进行分析：

{col 9}{cmd:. frame change results}
{col 9}{cmd:. summarize}

{marker preserve}{...}
{ul:帧使 Stata（preserve/restore）更快}

{pstd}
    许多用 Stata 编写的程序使用命令 
    {help preserve_zh} 和 {help preserve_zh:restore}
    临时保存并稍后恢复内存中数据的内容。如果您使用的是 Stata/SE 或 Stata/MP，使用 {cmd:preserve} 和 {cmd:restore} 的程序现在运行得更快。它们运行更快的原因是 Stata 通过将数据复制到隐藏帧来保存数据。这些隐藏帧存储在内存中。将数据复制到存储在内存中的帧所需的时间远少于将数据复制到磁盘。

{pstd}
    更确切地说，{cmd:preserve} 将数据复制到隐藏帧，除非内存短缺。如果内存不足，{cmd:preserve} 会改为将数据存储在磁盘上。这是暂时的，因为稍后，当数据集被恢复时，内存将再次可用，{cmd:preserve} 将恢复到将数据保存在隐藏帧的状态。

{pstd}
    这一切都是自动的，但您可能想重置 {cmd:max_preservemem} 的值，该值控制这一行为。当存储在隐藏帧中的数据量超过 {cmd:max_preservemem} 时，Stata 将以后续的数据集存储在磁盘上。
    默认情况下，{cmd:max_preservemem} 设置为 1GB。
    也许您或其他人已经更改了该值。要查询当前的 {cmd:max_preservemem} 值，请键入 

{col 9}{cmd:. query memory}

{pstd}
    如果您希望在会话期间将 {cmd:max_preservemem} 更改为 2GB，请键入 

{col 9}{cmd:. set max_preservemem 2g}

{pstd}
    您可以上下调整该值。您可以将其设置为 {cmd:4g} 或 {cmd:50m}。您甚至可以将其设置为 {cmd:0}，然后所有数据集将被保存到磁盘。

{pstd}
    如果您希望永久性地将 {cmd:max_preservemem} 设置为 2GB，包括这次会话和以后的 Stata 会话，请键入

{col 9}{cmd:. set max_preservemem 2g, permanently}

{marker other}{...}
{ul:您可能想到其他我们应该列出的用法}

{pstd}
    帧使许多任务的执行更加方便，您会发现自己的用法。帧也使代码运行得更快。
    操作存储在内存中的对象比操作磁盘文件更省计算时间。

{marker learning}{...}
{title:学习帧}

{pstd}
    以下是有关使用帧的教程。在教程中，我们有时会向您展示语法图。例如，我们可能会展示

{p 8 12 16}
{bf:{help frame_copy_zh:frame copy}} {it:framename} {it:newframename}

{pstd}
    当我们在教程中显示语法图时，它们并不总是完整的语法图。比如，{cmd:frame} {cmd:copy} 也允许一个 {cmd:replace} 选项，而我们在语法图中可能不显示它，甚至不提及它。您可以单击命令查看完整的语法。

{marker currentframe}{...}
{ul:当前帧}

{pstd}
    所有一切都取决于 {it:current frame}。
    Stata 命令使用当前帧中的数据。当您加载一个数据集，

{col 9}{cmd:. sysuse auto}

{pstd}
    该数据集将被加载到当前帧中。那么那个帧是什么？键入 {cmd:frame} 以发现其身份：

{col 9}{cmd:. frame}

{pstd}
    您可以输入 {helpb frame} 或输入 {cmd:pwf}，这是 {cmd:frame} 的同义词。字母代表“打印工作帧”。
    在本教程中我们将输入 {cmd:frame}，但您可能更喜欢输入 {cmd:pwf}，因为它更短。其他 {cmd:frame} 命令也有更短的同义词。我们会在随后的内容中提到它们。

{pstd}
    我们刚刚发现当前帧名为 {cmd:default}。当 Stata 启动时，它为您创建的帧命名为此。您无法更改此项，但 {cmd:default} 只是一个名称，您可以根据需要重命名帧。您也可以创建其他帧。您可以创建最多 100 个帧。

{pstd}
    要重命名帧，请使用 {cmd:frame} {cmd:rename} 命令：

{p 12 12 2}
{bf:{help frame_rename_zh:frame rename}} {it:oldname} {it:newname}

{pstd}
要将帧 {cmd:default} 重命名为 {cmd:genesis}，请键入

{col 9}{cmd:. frame rename default genesis}
{col 9}{cmd:. frame}

{pstd}
    不论是 Stata 创建的帧，还是您创建的帧都可以被重命名。无论它们是否包含数据，都可以重命名。
    重命名 {cmd:default} 不会对以后的任何操作造成影响。Stata 命令作用于当前帧，无论其名称是什么。

{marker creation}{...}
{ul:创建新帧}

{pstd}
    使用 {cmd:frame} {cmd:create} 命令创建新帧：

{p 12 12 2} 
{bf:{help frame_post_zh:frame create}} {it:newframename}

{pstd}
    稍后我们将向您展示一个示例。首先，如果您要创建一个新名字的帧，需要知道如何找出当前存在的帧的名称。您可以使用 {cmd:frames} {cmd:dir} 命令来实现：

{p 12 12 2} 
{bf:{help frames_dir_zh:frames dir}}

{pstd}
    我们记得重命名了默认帧，但无法记起使用的名称。那么内存中有什么帧？

{col 9}{cmd:. frames dir}

{pstd}
    内存中有一个帧，名为 {cmd:genesis}。它包含一个 74 x 12 的数据集，意味着有 74 个观测值和 12 个变量。该数据集的 {help label_zh:dataset label} 为“1978年汽车数据”，但如果没有该标签，数据集的名字 {cmd:auto.dta} 将出现在 {cmd:frames} {cmd:dir} 的输出中，除非数据从未保存到磁盘。在这种情况下，表示“1978年汽车数据”的地方将不会出现任何内容。

{pstd}
    现在让我们创建一个名为 {cmd:second} 的新帧：

{col 9}{cmd:. frame create second}
{col 9}{cmd:. frame dir}

{pstd}
    现在内存中有两个帧。新帧为 0 x 0。
    它是空的。

{pstd}
    顺便提一下，{cmd:frame} {cmd:create} 有一个更短的同义词 {cmd:mkf}。
    字母表示“创建框架”。我们本可以输入 
    {cmd:mkf} {cmd:second} 以创建新帧。

{marker plural}{...}
{ul:键入 frame 或 frames 都可以}

{pstd}
    您可能没有注意到，但到目前为止，我们使用了 {cmd:frames} {cmd:dir} 两次，但是第二次的输入方式不同。我们输入了

{p 12 12 2}
{cmd:. frames dir}{break}
{cmd:. frame dir}

{pstd}
    Stata 并不在乎您输入 {cmd:frame} 还是 {cmd:frames}。
    这种无差别适用于所有的 {cmd:frames}/{cmd:frame} 命令。

{marker switching}{...}
{ul:切换帧}

{pstd}
    {cmd:frame} {cmd:change}（同义词：{cmd:cwf}，表示“更改工作帧”）切换当前帧的身份：

{p 12 12 2}
{bf:{help frame_change_zh:frame change}} {it:framename}

{pstd}
    我们可以将 {cmd:second} 设为当前帧，然后再次切换回 {cmd:genesis}：

{col 9}{cmd:. frames change second}
{col 9}{cmd:. count}
{col 9}{cmd:. cwf genesis}
{col 9}{cmd:. count}

{pstd}
    我们使用了 Stata 的 {cmd:count} 命令来演示当前帧确实已切换。{cmd:count} 不带参数时显示观测值的数量。

{marker copying}{...}
{ul:复制帧}

{pstd}
    有两个用于复制帧的命令：

{p 8 12 16}
{bf:{help frame_copy_zh:frame copy}} {it:framename} {it:newframename}

{col 9}{bf:{help frame_put_zh:frame put}} {it:varlist}{cmd:, into(}{it:newframename}{cmd:)}
{col 9}{bf:{help frame_put_zh:frame put}} {cmd:if} {it:exp}{cmd:, into(}{it:newframename}{cmd:)}

{pstd}
    {cmd:frame copy} 复制整个数据集。

{pstd}
    {cmd:frame} {cmd:put} 复制数据集的子集。

{pstd}
    在这两种情况下，命令都创建目标帧。

{marker dropping}{...}
{ul:删除帧}

{pstd}
要删除现有的帧，请输入 

{p 8 12 16}
{bf:{help frame_drop_zh:frame drop}} {it:framename}

{marker reset}{...}
{ul:重置帧}

{pstd}
     重置帧意味着以下内容：

{p 8 12 2}
    1.  删除所有帧中的所有数据，即使自上次保存以来数据没有被保存。

{p 8 12 2}
    2.  删除（丢弃）所有帧。

{p 8 12 2}
    3.  创建一个名为 {cmd:default} 的新帧，并使其成为当前帧。

{pstd}
    以下每个命令都将重置帧：
    
{col 9}{bf:{help frames_reset_zh:frames reset}}
{col 9}{bf:{help frames_reset_zh:clear frames}}

{col 9}{bf:{help clear_zh:clear all}}

{pstd}
{cmd:frames reset} 和 {cmd:clear frames} 是同义词。

{pstd}
{cmd:clear all} 重置帧并执行更多操作。它使 Stata 回到尽可能接近启动时的状态。

{marker frameprefix}{...}
{ul:帧前缀命令}

{pstd}
{cmd:frame} 前缀命令或许是 {cmd:frame} 命令中最方便的。其语法命令是

{p 8 12 2}
{bf:{help frame_prefix_zh:frame}} {it:framename}{bf:{help frame_prefix_zh::}} {it:stata_command}

{pstd}
{cmd:frame} 前缀命令 1) 将当前帧更改为指定的帧，2) 执行 {it:stata_command}，3) 将当前帧更改回原来的状态。

{pstd}
例如，假设当前帧为 {cmd:default}，我们有一个名为 {cmd:second} 的帧。我们输入 

{p 8 12 2}
{cmd:. frame second: sysuse census, clear}

{pstd}
结果是帧 {cmd:second} 将包含 {cmd:census.dta}，而当前帧仍然是 
{cmd:default}，就好像我们输入了

{col 9}{cmd:. frame change second}
{col 9}{cmd:. sysuse census, clear}
{col 9}{cmd:. frame change default}

{pstd}
帧前缀还有第二个功能。想象一下，在执行上述操作时，我们在使用数据时省略了 {cmd:clear} 选项。
考虑一下，如果我们键入三个命令，但 {cmd:second} 中的数据自上次保存以来发生了变化，会发生什么？

{col 9}{cmd:. frame second}
{col 9}{cmd:. sysuse census}

{pstd}
当前帧是什么？当然是 {cmd:second}，因为我们已经切换到它。现在考虑使用 {cmd:frame} 前缀时出现同样的错误：

{col 9}{cmd:. frame second: sysuse census}

{pstd}
即使发生了错误，当前帧仍然是 {cmd:default}！
要从错误中恢复，我们无需切换回原来的帧。{cmd:frame} 前缀命令为我们完成了这一步。

{pstd}
{cmd:frame} 前缀在需要执行多个命令时采用另一种语法：

         {cmd:frame} {it:framename} {cmd:{c -(}}
                {it:stata_command}
                {it:stata_command}
                .
                .
         {cmd:{c )-}}

{pstd}
这种语法在程序中尤其有用。

{marker linking}{...}
{ul:链接帧}

{pstd}
    当我们说链接时，我们指的是在前面的 {help frames_intro##link:示例} 中展示的链接，即我们有关于人和县的单独数据集，并以合并数据的方式将它们结合起来。链接的功能远不止于此。

{pstd}
    在 {manhelp frlink D} 中，我们展示了如何创建嵌套链接，将学生（一个数据集）链接到他们所就读的学校（一个第二数据集）以及他们学校所在的县（一个第三数据集）。我们展示了将世代数据集与自身链接的示例，以便成年子女与父母和祖父母链接，共有六个同时的链接！

{pstd}
    链接是通过使用 {cmd:frlink} 命令创建的。其最简单的语法是

{p 8 8 2}
{help frlink_zh} {cmd:m:1} {varlist}{cmd:,}
   {opt frame(framename)}

{p 8 8 2}
{help frlink_zh} {cmd:1:1} {varlist}{cmd:,}
  {opt frame(framename)}

{pstd}
    这些语法在当前帧和 {it:framename} 之间创建一个 {cmd:m:1} 或 {cmd:1:1} 的链接，基于观测值具有相等的 {it:varlist} 值。

{pstd}
    一旦创建了链接，您可以使用 {cmd:frget} 命令将变量的适当值从 {it:framename} 复制到当前帧。其语法是

{p 8 8 2}
{help frget_zh} {varlist}{cmd:,}
    {opt from(linkagename)}

{p 8 8 2}
{help frget_zh} {newvar} {cmd:=} {varname}{cmd:,}
    {opt from(linkagename)}

{pstd}
    您可以在表达式中使用 {cmd:frval()} 函数来访问链接数据中变量的适当观测值。其语法是

{col 9}... {help frval():{bf:frval(}{it:linkagename}{bf:,}{it:varname}{bf:)}} ...

{marker _frval}{...}
{ul:忽略 _frval() 函数}

{pstd}
    关于 {cmd:frval()} 函数，我们要提醒您。同样可用的是 {helpb f_frval##_frval():_frval()}。忽略它。{cmd:frval()} 更好。{cmd:_frval()} 是供程序员使用的。

{marker posting}{...}
{ul:向帧发布新观测值}

{pstd}
    我们之前使用发布进行模拟演示过 {help frames_intro##post:示例}。这是一种用法。
    更一般地说，发布解决了需要将数据或值从一个帧转移到另一个帧中新观测值的问题。

{pstd}
    首先，您需要准备另一个帧来接收数据。
    {cmd:frame} {cmd:create}，我们 {help frames_intro##creation:已经讨论过}，有一个用于此目的的语法。
    我们展示了其第一种语法，即：

{p 12 12 2}
{helpb frame create} {it:newframename}

{pstd}
   第二种语法是

{p 12 12 2} 
{bf:{help frame_post_zh:frame create}} {it:newframename} {it:newvarlist}

{pstd}
    这种语法创建了新帧，并在其中创建了指定的新变量的零个观测值的数据集。 {it:newvarlist} 确实是一个新变量列表，这意味着您可以指定变量类型和变量名称。您可以输入

{col 9}{cmd:. frame create results strL(rngstate) double(b1coverage b2coverage)}

{pstd}
    或者，您可以使用 {cmd:frame} {cmd:create} 的第一种语法来创建帧，使用 {cmd:frame} {cmd:change} 切换到它，并自己创建零观测值数据集。然后，您可以切换回之前的当前帧。

{pstd}
    {cmd:frame} {cmd:post} 向第二个帧添加观测值。其语法是 

{p 12 12 2} 
{bf:{help frame_post_zh:frame post}} 
{it:framename}
{cmd:(}{it:exp}{cmd:)}
{cmd:(}{it:exp}{cmd:)} ... {cmd:(}{it:exp}{cmd:)}

{pstd}
    表达式的顺序与第二帧中变量的顺序相同。

{marker programming}{...}
{title:使用帧编程}

{pstd}
    在下面，我们讨论编写处理多个帧的 Stata 程序。

{pstd}
    如果您对编写此类程序不感兴趣，可以停止阅读。

{pstd}
    接下来的内容不是教程。在接下来列出的编号列表中，详细说明您需要了解的编写使用当前帧以上帧的程序的所有内容。该程序可以实现一个命令，该命令对用户指定的帧执行某些操作。或者，其执行的内容对用户而言似乎仅使用当前帧，而实际隐藏起来的是您的程序使用帧来完成某些内部任务。

{pstd}
    我们还想强调，使用 Stata 编写的程序仍然有不使用帧的用处。
    或许大多数程序都是这样的。

{marker ado}{...}
{ul:使用帧的 Ado 编程}

{p 8 12 2}
     1.  {help macro_zh:tempname}。

{p 12 12 2}
         使用 {cmd:tempname} 创建的帧在生成临时名称的程序结束时会自动删除（丢弃）。

{p 12 12 2}
         如果您编写的程序是为用户创建新帧，请在程序中为帧取一个 {cmd:tempname}，并在最后使用 {cmd:frame} {cmd:rename} 来更改其名称。
        这样，如果发生错误，程序可能正在创建的帧将会自动丢弃。

{p 8 12 2}
     2.  当前帧。

{p 12 12 2}
         Stata 在 {help creturn_zh:creturn} 结果 {cmd:c(frame)} 中提供当前帧的名称。您可以通过编码

{col 16}{cmd:local curframe = c(frame)}

{p 12 12 2}
         使用帧的程序在执行过程中不可避免地会更改帧。程序需要确保在程序退出时，适当的帧为当前帧。这包括程序成功时和程序以错误退出时。

{p 12 12 2}
         成功的情况比较好处理。在程序退出时，正确地设置当前帧。一般来说，当前帧应该与程序开始时的当前帧相同。

{p 12 12 2}
         错误的情况可能更棘手。谁知道用户什么时候会按下中止键，或者沉埋在您的代码中的错误何时会出现？代码字面上可以做任何事情。
         尽管如此，您的程序需要确保当前帧正确设置。存在一种编程风格可以实现这一点。

{p 12 12 2}
         情形 1：
         您正在编写新命令 {cmd:foo}。{cmd:foo} 使用帧，但在所有情况下都应保持当前帧与最初相同。代码如下：

                 {cmd:program foo}
                         {cmd:version} ...

                             {cmd:local curframe = c(frame)}
                             {cmd:frame `curframe' {c -(}}
                                  {cmd:foo_cmd `0'}
                             {cmd:{c )-}}
                 {cmd:end}

{p 12 12 2}
        按您通常的方式编写 {cmd:foo_cmd}。编写 {cmd:foo_cmd} 时，您可以忽略当前帧的问题。
        您可以在 {cmd:foo_cmd} 和其子程序中自由使用 {cmd:frame} {cmd:change}。
        无论发生什么，无论是错误还是成功，程序将以当前帧不变结束。

{p 12 12 2}
        情形 2：
        您正在编写新命令 {cmd:foo}。如果 {cmd:foo} 成功，则新帧将改变。代码如下：

                 {cmd:program foo}
                         {cmd:version} ...

                             {cmd:local curframe = c(frame)}
                             {cmd:frame `curframe' {c -(}}
                                  {cmd:foo_cmd `0'}
                             {cmd:{c )-}}
                       {cmd:frame change `s(frame)'}
                 {cmd:end}

{p 12 12 2}
        按您通常的方式编写 {cmd:foo_cmd}。然而，如果执行成功，{cmd:foo_cmd}
        必须在 {cmd:s(frame)} 中 {help return_zh:sreturn} 返回要作为当前帧的新帧的名称。与情形 1 一样，您可以在 {cmd:foo_cmd} 及其所有子程序中自由使用 {cmd:frame} {cmd:change}。

{p 8 12 2}
    3.  {help preserve_zh} 和 {helpb restore}。

{p 12 12 2}
        对于最终用户而言，使用帧有时是比使用 {cmd:preserve} 和 {cmd:restore} 更好的选择。
        然而，程序员不应将其解读为 {cmd:preserve} 和 {cmd:restore} 已过时，不应在帧编程中使用。
        在编程中，{cmd:preserve} 和 {cmd:restore} 仍然有着它们一直以来的有效用途。

{p 12 12 2}
        在帧出现在 Stata 之前，一个程序最多只能有一个活动 {cmd:preserve}。
        活动意味着未被 {cmd:restore} 或 {cmd:restore,} {cmd:not} 取消。
        一个程序可以执行 {cmd:preserve}，然后 {cmd:restore} 或 {cmd:restore,} {cmd:not}，然后再次 {cmd:preserve}。
        这虽然奇怪但被允许。

{p 12 12 2}
        现在，一个程序可以为每个帧有一个活动 {cmd:preserve}。与帧 {cmd:`one'} 和 {cmd:`two'} 相关的程序可以同时对其进行 {cmd:preserve}。{cmd:preserve} 会保存当前帧。要保存帧 {cmd:`one'} 和 {cmd:`two'}，编码如下：

{col 17}{cmd:frame `one': preserve}
{col 17}{cmd:frame `two': preserve}

{p 12 12 2}
       当程序结束时，两个帧都会自动恢复。

{p 12 12 2}
       如果您想提前恢复帧 {cmd:`one'} 并取消其在程序结束时的自动恢复，请编码 

{col 17}{cmd:frame `one': restore}

{p 12 12 2}
       如果您想现在恢复帧 {cmd:`one'} 并在程序结束时也恢复，请编码

{col 17}{cmd:frame `one': restore, preserve}

{p 12 12 2}
       如果您想在程序结束时取消帧 {cmd:`one'} 的恢复，请编码

{col 17}{cmd:frame `one': restore, not}

{p 12 12 2}
       在所有这三种情况下，帧 {cmd:`two'} 在程序结束时仍将被恢复。

{p 12 12 2}
       程序结束时任何未取消的自动恢复将重新创建任何被删除的帧。自动恢复不会改变当前帧的身份。

{marker mata}{...}
{ul:使用帧的 Mata 编程}

{p 8 12 2}
   1.  {bf:{help mf_st_frame_zh:st_frame*()}} 函数。

{p 12 12 2}
       Mata 提供了一组与帧相关的函数。
       它们可以更改帧、创建帧、删除帧等。

{p 8 12 2}
    2.  {bf:{help mf_st_data_zh:st_data()}},
        {bf:{help mf_st_data_zh:st_sdata()}},
        {bf:{help mf_st_data_zh:_st_data()}}, 和
        {bf:{help mf_st_data_zh:_st_sdata()}} 函数。

{p 12 12 2}
        调用 {cmd:st_data()} 及其相关函数
        返回当前帧中的数据。如果您想要来自其他帧的数据，请先使用 {bf:{help mf_st_frame_zh:st_framecurrent()}} 切换到其他帧。

{p 8 12 2}
   3.  {bf:{help mf_st_view_zh:st_view()}} 和 
       {bf:{help mf_st_sview:st_sview()}} 函数。

{p 12 12 2}
       视图是相对于在创建视图时当前帧的视图，使用 {cmd:st_view()} 或 {cmd:st_sview()} 创建，并且即使当前帧的身份改变，它们在创建后仍保持不变。如果 {cmd:X} 是帧 {cmd:default} 的视图，即使当前帧发生变化，它仍然是帧 {cmd:default} 的视图。

{p 12 12 2}
       视图是如何在帧之间复制数据的。创建一个视图以访问一个帧中的数据。创建另一个视图以访问另一个帧中的数据。使用一个视图来更新另一个视图。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <frames_intro.sthlp>}