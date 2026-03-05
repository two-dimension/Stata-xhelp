{smcl}
{* *! version 1.1.4  15may2018}{...}
{vieweralsosee "[M-5] cvpermute()" "mansection M-5 cvpermute()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] Statistical" "help m4_statistical_zh"}{...}
{viewerjumpto "Syntax" "mf_cvpermute_zh##syntax"}{...}
{viewerjumpto "Description" "mf_cvpermute_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mf_cvpermute_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "mf_cvpermute_zh##remarks"}{...}
{viewerjumpto "Conformability" "mf_cvpermute_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf_cvpermute_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf_cvpermute_zh##source"}
{help mf_cvpermute:English Version}
{hline}{...}
{p2colset 1 22 24 2}{...}
{p2col:{bf:[M-5] cvpermute()} {hline 2}}获取所有排列
{p_end}
{p2col:}({mansection M-5 cvpermute():查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 16 38 2}
{it:info} {cmd:=} 
{cmd:cvpermutesetup(}{it:real colvector V} [{cmd:,}
{it:real scalar unique}]{cmd:)}

{p 8 12 2}
{it:real colvector}
{cmd:cvpermute(}{it:info}{cmd:)}


{p 4 4 2}
其中 {it:info} 应声明为 {it:transmorphic}。


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:cvpermute()} 一次返回列向量 {it:V} 的所有排列。  
如果 {it:V}=(1\2\3)，则有六种排列，分别是：
(1\2\3), 
(1\3\2),
(2\1\3), 
(2\3\1),
(3\1\2)，
以及
(3\2\1)。 
如果 {it:V}=(1\2\1)，则有三种排列，分别是：
(1\1\2),
(1\2\1)， 
和
(2\1\1)。

{p 4 4 2}
列向量 {it:V} 通过调用 
{cmd:cvpermutesetup()} 指定，

		{it:info} {cmd:= cvpermutesetup(}{it:V}{cmd:)}

{p 4 4 2}
{it:info} 保存 {cmd:cvpermute()} 所需的信息，并且是 {it:info}，而不是 {it:V}， 
被传递给 {cmd:cvpermute()}。
为了获取排列，
重复调用 {cmd:cvpermute()}，直至返回 {cmd:J(0,1,.)}：

		{it:info} {cmd:= cvpermutesetup(}{it:V}{cmd:)}
		{cmd:while ((}{it:p}{cmd:=cvpermute(}{it:info}{cmd:)) != J(0,1,.)) {c -(}}
			... {it:p} ...
		{cmd:{c )-}}

{p 4 4 2}
列向量 {it:p} 将包含 {it:V} 的一组排列。

{p 4 4 2}
{cmd:cvpermutesetup()} 可以用一个或两个参数指定：

		{it:info} = {cmd:cvpermutesetup(}{it:V}{cmd:)} 

		{it:info} = {cmd:cvpermutesetup(}{it:V}{cmd:,} {it:unique}{cmd:)}

{p 4 4 2}
{it:unique} 通常不被指定。如果 {it:unique} 被指定，它应该是 0 或 1。 
未指定 {it:unique} 相当于指定 {it:unique}=0。
指定 {it:unique}=1 表示 {it:V} 的元素是唯一的，或者至少要被视为唯一。

{p 4 4 2}
当 {it:V} 的参数是唯一的——例如，{it:V}=(1\2\3)——指定 {it:unique}=1 将使得 {cmd:cvpermute()} 的运行更加高效。 
将返回相同的排列，
尽管通常顺序不同。

{p 4 4 2}
当 {it:V} 的参数不是唯一的——例如，{it:V}=(1\2\1)——指定 {it:unique}=1 将使得 {cmd:cvpermute()} 将其视为唯一。  
在 {it:unique}=0 时，
(1\2\1) 有三种排列。在 {it:unique}=1 时，
有六种排列，就像 (1\2\3)。

{marker linkspdf}{...}
{title:链接到 PDF 文档}

        {mansection M-5 cvpermute()Remarksandexamples:备注和示例}

{pstd}
上述章节未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

    {title:示例 1:}

{p 4 4 2}
你有以下数据： 

		{cmd:v1}     {cmd:v2}
		---------
		22     29
                17     33
                21     26
                20     32
		16     35
		---------

{p 4 4 2}
你希望进行正好对 {cmd:v1} 和 {cmd:v2} 之间相关性的排列检验。

{p 4 4 2}
也就是说，你希望 (1) 计算 {cmd:v1} 和 {cmd:v2} 之间的相关性——称该值为 r——然后 (2) 计算 {cmd:v1} 和 {cmd:v2} 的所有排列的相关性，并计算结果比 r 更极端的次数。

{p 4 4 2}
对于第一步， 

{* junk1.smcl from cvpermute.do}{...}
	{com}: X = (22, 29 \
	>      17, 33 \
	>      21, 26 \
	>      20, 32 \
	>      16, 35)
	{res}
	{com}: 
	: correlation(X)
	{res}{txt}[symmetric]
	                  1              2
	    {c TLC}{hline 31}{c TRC}
	  1 {c |}  {res}           1               {txt}  {c |}
	  2 {c |}  {res}-.8468554653              1{txt}  {c |}
	    {c BLC}{hline 31}{c BRC}{txt}

{p 4 4 2}
相关性为 -.846855。对于第二步， 

{* junk2.smcl from cvpermute.do}{...}
	{com}: V1 = X[,1]
	{res}
	{com}: V2 = X[,2]
	{res}
	{com}: num = den = 0 
	{res}
	{com}: info = cvpermutesetup(V1)
	{res}
	{com}: while ((V1=cvpermute(info)) != J(0,1,.)) {c -(}
	>         rho = correlation((V1,V2))[2,1]
	>         if (rho<=-.846855 | rho>=.846855) num++
	>         den++
	> {c )-}
	{res}
	{com}: (num, den, num/den)
	{res}       {txt}          1             2             3
	    {c TLC}{hline 43}{c TRC}
	  1 {c |}  {res}         13           120   .1083333333{txt}  {c |}
	    {c BLC}{hline 43}{c BRC}{txt}

{p 4 4 2}
在 120 种排列中，有 13 种 (10.8%) 的结果在 .846855 或 -.846855 之外。


    {title:示例 2:}

{p 4 4 2}
你现在希望做同样的事情，但使用斯皮尔曼秩相关系数。Mata 没有可以计算该系数的函数，但 Stata 有一个命令可以做到——请参见 {bf:{help spearman_zh:[R] spearman}}——因此我们将使用 Stata 命令作为子例程。

{p 4 4 2}
这次，我们假设数据已加载到 Stata 数据集中：

{* junk3.smcl from cvpermute.do}{...}
	{com}. list
	{txt}
	     {c TLC}{hline 6}{c -}{hline 6}{c TRC}
	     {c |} {res}var1   var2 {txt}{c |}
	     {c LT}{hline 6}{c -}{hline 6}{c RT}
	  1. {c |} {res}  22     29 {txt}{c |}
	  2. {c |} {res}  17     33 {txt}{c |}
	  3. {c |} {res}  21     26 {txt}{c |}
	  4. {c |} {res}  20     32 {txt}{c |}
	  5. {c |} {res}  16     35 {txt}{c |}
	     {c BLC}{hline 6}{c -}{hline 6}{c BRC}{txt}

{p 4 4 2}
对于第一步：

{* junk4.smcl from cvpermute.do}{...}
	{com}. spearman var1 var2

	{txt} 观测数 = {res}      5
	{txt}斯皮尔曼的 rho = {res}     -0.9000

	{txt}零假设检验：var1 和 var2 独立
	    Prob > |t| = {res}      0.0374{txt}

{p 4 4 2}
对于第二步

{* junk5.smcl from cvpermute.do}{...}
	{com}. mata
	{txt}{hline 20} mata (输入 {cmd:end} 退出) {hline}
	{com}: V1 = st_data(., "var1")
	{res}
	{com}: info = cvpermutesetup(V1)
	{res}
	{com}: num = den = 0
	{res}
	{com}: while ((V1=cvpermute(info)) != J(0,1,.)) {c -(}
	>         st_store(., "var1", V1)
	>         stata("quietly spearman var1 var2")
	>         rho = st_numscalar("r(rho)")
	>         if (rho<=-.9 | rho>=.9) num++
	>         den++
	> {c )-}
	{res}
	{com}: (num, den, num/den)
	{res}       {txt}          1             2             3
	    {c TLC}{hline 43}{c TRC}
	  1 {c |}  {res}          2           120   .0166666667{txt}  {c |}
	    {c BLC}{hline 43}{c BRC}{txt}

{p 4 4 2}
只有两个排列导致了秩相关性至少为 .9 的结果。

{p 4 4 2}
在上述代码中，我们从 {cmd:r(rho)} 获得了秩相关性，我们从 
{help spearman_zh:[R] spearman} 中了解到，这是 {cmd:spearman} 存储它的地方。

{p 4 4 2}
还要注意我们如何通过使用
{help mf_st_store_zh:st_store()} 替换了 {cmd:var1} 的内容。
我们的代码使数据集发生了变化，因此可以改善。


{marker conformability}{...}
{title:兼容性}

    {cmd:cvpermutesetup(}{it:V}{cmd:,} {it:unique}{cmd:)}:
		{it:V}:  {it:n x} 1
	   {it:unique}:  1 {it:x} 1    (可选)
	   {it:result}:  1 {it:x L}


    {cmd:cvpermute(}{it:info}{cmd:)}:
	     {it:info}:  1 {it:x L}
	   {it:result}:  {it:n x} 1  或  0 {it:x} 1

{p 4 4 2}
其中 

			3                    如果   {it:n} = 0
		{it:L} =     4                    如果   {it:n} = 1
			({it:n}+3)({it:n}+2)/2 - 6     其他情况下

{p 4 4 2}
{it:L} 的值并不重要，只是 {cmd:cvpermutesetup()} 返回的 {it:info} 向量，然后传递给 {cmd:cvpermute()} 消耗内存。 例如，

		    n          L     总内存 (8*{it:L})
		{hline 39}
		    5         22        176 字节
	           10         72        576
                   50      1,372     10,560
		  100      5,247     41,976
		1,000    502,497  4,019,976
		{hline 39}


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
{cmd:cvpermute()} 返回 {cmd:J(0,1,.)} 当没有更多的排列时。


{marker source}{...}
{title:源代码}

{p 4 4 2}
{view cvpermute.mata, adopath asis:cvpermute.mata} 查看两个函数的代码。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_cvpermute.sthlp>}