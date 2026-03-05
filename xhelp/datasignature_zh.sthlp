{smcl}
{* *! version 2.1.15  19oct2017}{...}
{viewerdialog datasignature "dialog datasignature"}{...}
{vieweralsosee "[D] datasignature" "mansection D datasignature"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[P] _datasignature" "help _datasignature_zh"}{...}
{vieweralsosee "[P] signestimationsample" "help signestimationsample_zh"}{...}
{viewerjumpto "Syntax" "datasignature_zh##syntax"}{...}
{viewerjumpto "Menu" "datasignature_zh##menu"}{...}
{viewerjumpto "Description" "datasignature_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "datasignature_zh##linkspdf"}{...}
{viewerjumpto "Options" "datasignature_zh##options"}{...}
{viewerjumpto "Examples" "datasignature_zh##examples"}{...}
{viewerjumpto "Stored results" "datasignature_zh##results"}
{help datasignature:English Version}
{hline}{...}
{p2colset 1 22 24 2}{...}
{p2col:{bf:[D] datasignature} {hline 2}}确定数据是否发生变化
{p_end}
{p2col:}({mansection D datasignature:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{cmdab:datasig:nature}


{p 8 12 2}
{cmdab:datasig:nature}
{cmd:set}{bind:    }
[{cmd:,}
{cmd:reset}
]

{p 8 12 2}
{cmdab:datasig:nature}
{cmdab:conf:irm}
[{cmd:,}
{cmd:strict}
]

{p 8 12 2}
{cmdab:datasig:nature}
{cmdab:rep:ort}



{p 8 12 2}
{cmdab:datasig:nature}
{cmd:set}{cmd:,}{bind:   }
{cmd:saving(}{it:{help filename_zh}}[{cmd:, replace}]{cmd:)}
[ {cmd:reset} ]

{p 8 12 2}
{cmdab:datasig:nature}
{cmdab:conf:irm}
{cmd:using} {it:{help filename_zh}}
[{cmd:,}
{cmd:strict}
]

{p 8 12 2}
{cmdab:datasig:nature}
{cmdab:rep:ort}{bind: }
{cmd:using} {it:{help filename_zh}}


{p 8 12 2}
{cmdab:datasig:nature}
{cmd:clear}


{marker menu}{...}
{title:菜单}

{phang}
{bf:数据 > 其他工具 > 管理数据签名}


{marker description}{...}
{title:描述}

{pstd}
这些命令计算、显示、保存和验证数据的校验和，这些校验和共同组成所谓的签名。一个示例签名为 162:11(12321):2725060400:4007406597。该签名是变量的值及其名称的函数，因此可以用来后续判断数据集是否发生变化。

{pstd}
不带参数的 {cmd:datasignature} 计算并显示内存中数据的签名。

{pstd}
{cmd:datasignature} {cmd:set} 执行相同的操作，并将签名存储为数据集的特征。之后应使用 {cmd:save} 保存数据集，以便签名成为数据集的永久组成部分。

{pstd}
{cmd:datasignature} {cmd:confirm} 验证如果此刻重新计算签名，它是否与先前设置的签名匹配。
如果签名不匹配，{cmd:datasignature} {cmd:confirm} 将显示错误消息并返回非零的返回码。

{pstd}
{cmd:datasignature} {cmd:report} 显示一个完整的报告，将先前设置的签名与当前签名进行比较。

{pstd}
在上述过程中，签名存储在数据集中并从中访问。签名也可以存储在单独的小文件中。

{pstd}
{cmd:datasignature} {cmd:set,} {cmd:saving(}{it:{help filename_zh}}{cmd:)} 计算并显示签名，并在将其存储为数据集的特征的同时，也将签名保存到 {it:filename}。

{pstd}
{cmd:datasignature} {cmd:confirm} {cmd:using} {it:filename} 验证当前签名是否与存储在 {it:filename} 中的签名匹配。

{pstd}
{cmd:datasignature} {cmd:report} {cmd:using} {it:filename} 显示完整报告，将当前签名与存储在 {it:filename} 中的签名进行比较。

{pstd}
在上述所有情况下，如果 {it:filename} 被指定且没有扩展名，则假定为 {cmd:.dtasig}。

{pstd}
{cmd:datasignature} {cmd:clear} 清除存储在内存中数据集特征中的签名（如果有的话）。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection D datasignatureQuickstart:快速入门}

        {mansection D datasignatureRemarksandexamples:备注和示例}

        {mansection D datasignatureMethodsandformulas:方法和公式}

{pstd}
上述部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{cmd:reset} 与 {cmd:datasignature} {cmd:set} 一起使用。
   它指定即使您之前已设置签名，也希望擦除旧签名并用当前签名替代。

{phang}
{cmd:strict} 用于 {cmd:datasignature} {cmd:confirm}。
    它指定除了要求签名匹配外，还希望要求变量的顺序相同，并且不添加新的变量到数据集中。（如果任何变量被删除，则签名将不匹配。）

{phang}
{cmd:saving(}{it:{help filename_zh}}[{cmd:,} {cmd:replace}]{cmd:)}
    与 {cmd:datasignature} {cmd:set} 一起使用。它指定除了将签名存储在数据集中外，还希望将签名保存到单独的文件中。如果 {it:filename} 被指定但没有后缀，则假定为 {cmd:.dtasig}。
    {cmd:replace} 子选项允许如果该文件已经存在，则替换 {it:filename}。


{marker examples}{...}
{title:示例}

{marker ex1}{...}
{title:示例 1：远程验证}

{p 4 4 2}
您加载数据并输入 

	. {cmd:datasignature}
           74:12(71728):3831085005:1395876116

{p 4 4 2}
您的同事也对他或她的副本执行相同操作。您比较两个
签名。


{marker ex2}{...}
{title:示例 2：保护自己不受自己影响}

{p 4 4 2}
您加载数据并输入 

	. {cmd:datasignature set}
           74:12(71728):3831085005:1395876116    (数据签名已设置)

	. {cmd:save, replace}

{p 4 4 2}
从那时起，您定期输入 

	. {cmd:datasignature confirm}
          (自 2017年2月19日14:24 起数据未发生变化)

{p 4 4 2}
然而有一天，您检查并看到以下消息：

	. {cmd:datasignature confirm}
          (自 2017年2月19日14:24 起数据未发生变化，但添加了2个变量)

{p 4 4 2}
您可以通过输入以下内容了解更多信息：

	. {cmd:datasignature report}
          (数据签名于2017年2月19日星期一14:24设置)

        {title:数据签名摘要}

         1. 先前数据签名{col 39}74:12(71728):3831085005:1395876116
         2. 今天相同的数据签名{col 39}(与1相同)
         3. 今天完整数据签名{col 39}74:14(113906):1142538197:2410350265

        {title:当前数据与先前设置的数据签名的比较}

		变量{col 42}数量{col 50}备注
		{hline 60}
		原始变量数量{col 42}    12{col 50}(值未改变)
		添加的变量{col 42}     2  （注1）
		删除的变量{col 42}     0
		{hline 60}
		结果变量数量{col 42}    14

		(1) 添加的变量分别为 agesquared 和 logincome。

{p 4 4 2}
现在您可以选择删除添加的变量或决定将它们结合起来：

	. {cmd:datasignature set}
	  {err:数据签名已设置 -- 指定选项 -reset-}
	r(110)

	. {cmd:datasignature set, reset}
	  74:14(113906):1142538197:2410350265       (数据签名已重置)

{p 4 4 2}
关于详细报告，报告了三种数据签名：
1) 存储的签名，2) 基于原始顺序中相同变量的今天计算签名，以及（3）基于当前变量及其顺序计算的今天签名。

{p 4 4 2}
{cmd:datasignature} {cmd:confirm} 知道新增了变量，因为1) 等于2)。然而，如果删除了一些变量，{cmd:datasignature} {cmd:confirm} 将无法判断剩余变量是否发生变化。


{marker ex3}{...}
{title:示例 3：与助手合作}

{p 4 4 2}
您将数据集交给助手添加变量标签等。您希望验证返回的数据是否为相同数据。

{p 4 4 2}
仅用数据集保存签名是不够的。您的助手在拥有您的数据集时，可以更改数据和签名，甚至可能出于善意这样做。解决方案是将签名保存在您不交给助手的单独文件中：

	. {cmd:datasignature set, saving(mycopy)}
	  74:12(71728):3831085005:1395876116       (数据签名已设置)
          (文件 mycopy.dtasig 已保存)

{p 4 4 2}
您保留文件 {cmd:mycopy.dtasig}。当助手将数据集返回给您时，您 {cmd:use} 它并将当前签名与存储在 {cmd:mycopy.dtasig} 中的签名进行比较：

	. {cmd:datasignature confirm using mycopy}
	  (自 2017年2月19日15:05 起数据未发生变化)

{p 4 4 2}
顺便说一下，签名是以下内容的函数：

{p 8 12 2}
o  数据中观察值的数量和变量的数量

{p 8 12 2}
o  变量的值

{p 8 12 2}
o  变量的名称

{p 8 12 2}
o  变量在数据集中的出现顺序

{p 8 12 2}
o  各个变量的存储类型

{p 4 4 2}
签名不是变量标签、值标签、注释等的函数。


{marker ex4}{...}
{title:示例 4：处理共享数据}

{p 4 4 2}
您在网络驱动器上处理数据集，这意味着其他人可能会更改数据。您希望知道是否会发生这种情况。

{p 4 4 2}
此处的解决方案与与助手合作时相同：您将签名保存在计算机上的单独私有文件中，

	. {cmd:datasignature set, saving(private)}
	  74:12(71728):3831085005:1395876116       (数据签名已设置)
          (文件 private.dtasig 已保存)

{p 4 4 2}
然后您定期通过输入以下内容检查签名：

	. {cmd:datasignature confirm using private}
	  (自 2017年3月15日11:22起数据未发生变化)


{marker results}{...}
{title:存储结果}

{pstd}
不带参数的 {cmd:datasignature} 和 {cmd:datasignature set} 在 {cmd:r()} 中存储以下内容：

	宏
	    {cmd:r(datasignature)}        签名

{pstd}
{cmd:datasignature confirm} 在 {cmd:r()} 中存储以下内容：

	标量
	    {cmd:r(k_added)}              添加的变量数量

	宏
	    {cmd:r(datasignature)}        签名

{pstd}
如果签名不匹配，则 {cmd:datasignature} {cmd:confirm} 将终止执行，因此不会返回任何内容，只返回返回码 9。

{pstd}
{cmd:datasignature report} 在 {cmd:r()} 中存储以下内容：

{p2colset 13 37 42 2}{...}
{p2col 9 20 24 2: 标量}{p_end}
{synopt:{cmd:r(datetime)}}{cmd:%tc} 设置日期时间{p_end}
{synopt:{cmd:r(changed)}}{cmd:.} 如果 {cmd:r(k_dropped)}!=0，则为{cmd:.}，否则
		{cmd:0} 如果数据未发生变化，
		{cmd:1} 如果数据已发生变化{p_end}
{synopt:{cmd:r(reordered)}}{cmd:1} 如果变量重新排序，
		{cmd:0} 如果未重新排序，
		{cmd:.} 如果 {cmd:r(k_added)}!=0 | {cmd:r(k_dropped)}!=0{p_end}
{synopt:{cmd:r(k_original)}}原始变量数量{p_end}
{synopt:{cmd:r(k_added)}}添加的变量数量{p_end}
{synopt:{cmd:r(k_dropped)}}删除的变量数量{p_end}
          
{p2col 9 20 24 2: 宏}{p_end}
{synopt:{cmd:r(origdatasignature)}}原始签名{p_end}
{synopt:{cmd:r(curdatasignature)}}在相同变量上的当前签名，
					如果可以计算{p_end}
{synopt:{cmd:r(fulldatasignature)}}当前完整数据签名{p_end}
{synopt:{cmd:r(varsadded)}}添加的变量名称{p_end}
{synopt:{cmd:r(varsdropped)}}删除的变量名称{p_end}

{pstd}
{cmd:datasignature} {cmd:clear} 在 {cmd:r()} 中不存储任何内容，但确实会清除它。

{pstd}
{cmd:datasignature} {cmd:set} 在以下特征中存储签名：

	特征
	    {cmd:_dta[datasignature_si]}  签名
	    {cmd:_dta[datasignature_dt]}  {cmd:%tc} 设置时间的日期时间格式为 {cmd:%21x}
	    {cmd:_dta[datasignature_vl1]} 第一部分，原始变量
	    {cmd:_dta[datasignature_vl2]} 第二部分，原始变量（如有必要）
	    等等。

{pstd}
要从 ado 文件访问存储在 {cmd:_dta[datasignature_vl1]} 中的原始变量列表等，代码为

	{cmd:mata: ado_fromlchar("vars", "_dta", "datasignature_vl")}

{pstd}
此后，原始变量列表将在 {cmd:`vars'} 中找到。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <datasignature.sthlp>}