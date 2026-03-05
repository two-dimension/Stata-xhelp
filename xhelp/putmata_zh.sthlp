{smcl}
{* *! version 1.2.7  19sep2018}{...}
{vieweralsosee "[D] putmata" "mansection D putmata"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] Stata" "help m4_stata_zh"}{...}
{vieweralsosee "[M-5] st_data()" "help mf_st_data_zh"}{...}
{vieweralsosee "[M-5] st_store()" "help mf_st_store_zh"}{...}
{vieweralsosee "[M-5] st_view()" "help mf_st_view_zh"}{...}
{viewerjumpto "语法" "putmata_zh##syntax"}{...}
{viewerjumpto "描述" "putmata_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "putmata_zh##linkspdf"}{...}
{viewerjumpto "putmata 的选项" "putmata_zh##options_putmata"}{...}
{viewerjumpto "getmata 的选项" "putmata_zh##options_getmata"}{...}
{viewerjumpto "备注" "putmata_zh##remarks"}{...}
{viewerjumpto "存储的结果" "putmata_zh##results"}
{help putmata:English Version}
{hline}{...}
{p2colset 1 16 18 2}{...}
{p2col:{bf:[D] putmata} {hline 2}}将 Stata 变量放入 Mata，反之亦然
{p_end}
{p2col:}({mansection D putmata:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{cmd:putmata}
{it:putlist}
{ifin}
[{cmd:,}
{it:{help putmata##putmata_options:putmata_options}}]


{p 8 12 2}
{cmd:getmata}
{it:getlist}
[{cmd:,}
{it:{help putmata##getmata_options:getmata_options}}]


{marker putmata_options}{...}
{synoptset 16}{...}
{synopthdr:putmata_options}
{synoptline}
{synopt:{opt omit:missing}}省略缺失值的观测{p_end}
{synopt:{opt view}}创建作为视图的矩阵和向量，而不是作为副本{p_end}
{synopt:{opt replace}}替换现有的 Mata 向量和矩阵{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
一个 {it:putlist} 可以简单是 Stata 变量名的列表。请参见 
{help putmata##putlist:以下}获取详细信息。


{marker getmata_options}{...}
{synoptset 16}{...}
{synopthdr:getmata_options}
{synoptline}
{synopt:{opt double}}将 Stata 变量创建为 {cmd:double} 类型{p_end}
{synopt:{opt up:date}}更新现有的 Stata 变量{p_end}
{synopt:{opt replace}}替换现有的 Stata 变量{p_end}
{synopt:{opt id(name)}}基于变量 {it:name} 和矩阵 {it:name} 的值相等，将观测与行匹配；
	{cmd:id(}{varname}{cmd:=}{it:vecname}{cmd:)} 也是允许的{p_end}
{synopt:{opt force}}允许不匹配的矩阵；通常，
            {cmd:id()} 是更可取的{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
一个 {it:getlist} 可以简单是 Mata 向量名的列表。
请参见 {help putmata##getlist:以下} 获取详细信息。


{marker putlist}{...}
{p 4 4 2}
用于 {cmd:putmata} 的 {it:putlist} 的定义：

{p 8 8 2}
一个 {it:putlist} 是以下任意多个项：

	    {cmd:*}
	    {it:varname}
	    {it:varlist}
	    {it:vecname}{cmd:=}{it:varname}
	    {it:matname}{cmd:=(}{it:varlist}{cmd:)}
	    {it:matname}{cmd:=(}[{it:varlist}] {it:#} [{it:varlist}] [...]{cmd:)}

{marker putmata_examples}{...}
{p 8 8 2}
示例：  {cmd:putmata *}
{p_end}
{p 12 12 2}
    为内存中的每个 Stata 变量创建一个 Mata 向量。
    向量包含与 Stata 变量相同的数据。
    向量具有与相应变量相同的名称。  
    
{p 8 8 2}
示例：  {cmd:putmata mpg weight displ}
{p_end}
{p 12 12 2}
    为每个指定的变量在 Mata 中创建一个向量。
    向量的名称与相应变量相同。  
    在此示例中，{cmd:displ} 是变量 
    {cmd:displacement} 的缩写；因此，向量也将被命名为 
    {cmd:displacement}。
     
{p 8 8 2}
示例：  {cmd:putmata mileage=mpg pounds=weight}
{p_end}
{p 12 12 2}
    为每个指定的变量创建一个向量。  向量名称与
    相应的变量名称不同。在此示例中， 
    向量将命名为 {cmd:mileage} 和 {cmd:pounds}。

{p 8 8 2}
示例：  {cmd:putmata y=mpg X=(weight displ)}
{p_end}
{p 12 12 2}
创建一个 {it:N} x 1 的 Mata 向量 {cmd:y}，等于 Stata 变量
{cmd:mpg}，并创建一个 {it:N} x 2 的 Mata 矩阵 {cmd:X}，其中包含 Stata 变量 {cmd:weight} 和 {cmd:displacement} 的值。

{p 8 8 2}
示例：  {cmd:putmata y=mpg X=(weight displ 1)}
{p_end}
{p 12 12 2}
创建一个 {it:N} x 1 的 Mata 向量 {cmd:y}，包含 {cmd:mpg}，并 
创建一个 {it:N} x 3 的 Mata 矩阵 {cmd:X}，其中包含 {cmd:weight}、{cmd:displacement} 和一列1。  
在键入此示例后，您可以输入 Mata 并键入 
{cmd:invsym(X'X)*X'y} 来获得回归系数。

{p 4 4 2}
语法元素可以组合。  可以有效地键入 

{p 12 12 2}
. {cmd:putmata mpg foreign X=(weight displ) Z=(foreign 1)}

{p 4 4 2}
    无论您如何指定 {it:putlist}，如果某些或所有向量已经存在于 Mata 中，
    都需要指定 {cmd:replace} 选项：

{p 12 12 2}
. {cmd:putmata mpg foreign X=(weight displ) Z=(foreign 1), replace}


{marker getlist}{...}
{p 4 4 2}
用于 {cmd:getmata} 的 {it:getlist} 的定义：

{p 8 8 2}
一个 {it:getlist} 是以下任意多个项：

	    {it:vecname}
	    {it:varname}{cmd:=}{it:vecname}
	    {cmd:(}{it:varname varname ... varname}{cmd:)=}{it:matname}
            {cmd:(}{it:varname}{cmd:*)=}{it:matname}

{marker getmata_examples}{...}
{p 8 8 2}
示例：  {cmd:getmata x1 x2}
{p_end}
{p 12 12 2}
    为每个指定的 Mata 向量创建一个 Stata 变量。  变量将
    具有与相应向量相同的名称。  名称不能缩写。

{p 8 8 2}
示例：  {cmd:getmata myvar1=x1 myvar2=x2}
{p_end}
{p 12 12 2}
    为每个指定的 Mata 向量创建一个 Stata 变量。  变量名称
    将与相应向量名称不同。

{p 8 8 2}
示例：  {cmd:getmata (firstvar secondvar)=X}
{p_end}
{p 12 12 2}
    为指定的 Mata 矩阵的每一列创建一个 Stata 变量。  在本例中，矩阵有两列，
    对应的变量将命名为 {cmd:firstvar} 和 {cmd:secondvar}。
    如果该矩阵有三列，则需要指定三个变量名称。

{p 8 8 2}
示例：  {cmd:getmata (myvar*)=X}
{p_end}
{p 12 12 2}
    为指定的 Mata 矩阵的每一列创建一个 Stata 变量。  变量将被命名为
    {cmd:myvar1}、{cmd:myvar2} 等等。  
    矩阵可以有任意数量的列，甚至为零！

{p 4 4 2}
    语法元素可以组合。  可以有效地键入

{p 12 12 2}
. {cmd:getmata r1 r2 final=r3 (rplus*)=X}
     
{p 4 4 2}
    无论您如何指定 {it:getlist}，如果某些或所有变量已经 
    存在于 Stata 中，都需要指定 {cmd:replace} 或 {cmd:update} 选项：

{p 12 12 2}
. {cmd:getmata r1 r2 final=r3 (rplus*=)X, replace}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:putmata} 将 Stata 变量的内容导出到 Mata 向量和矩阵中。 

{p 4 4 2}
{cmd:getmata} 将 Mata 向量和矩阵的内容导入到 Stata 变量中。

{p 4 4 2}
{cmd:putmata} 和 {cmd:getmata} 对于创建在 Mata 中更容易解决的问题的解决方案非常有用。 
这些命令在教学中也很有用。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection D putmataQuickstart:快速入门}

        {mansection D putmataRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker options_putmata}{...}
{title:putmata 的选项}

{p 4 8 2}
{cmd:omitmissing}
    指定省略在任何指定的数值变量中包含缺失值的观测，从而在 Mata 中创建的向量和矩阵中。 在

{col 12}. {cmd:putmata y=mpg X=(weight displ 1), omitmissing}

{p 8 8 2}
    在 {cmd:y} 和 {cmd:X} 中，缺失相应观测的行将被省略，不论是在 {cmd:mpg}、{cmd:weight} 还是 
    {cmd:displ} 中。在这种情况下，指定 {cmd:omitmissing} 相当于键入

{phang3}. {cmd:putmata y=mpg X=(weight displ 1) if !missing(mpg) & !missing(weight) & !missing(displ)}

{p 8 8 2}
    所有通过单个 {cmd:putmata}
    命令创建的向量和矩阵都将具有相同数量的行（观测）。
    无论您是指定 {cmd:if}、{cmd:in}，还是使用 
    {cmd:omitmissing} 选项，这一点都是正确的。  

{p 4 8 2}
{cmd:view} 
    指定 {cmd:putmata} 创建视图而不是 Stata 数据在 Mata 向量和矩阵中的副本。  视图比副本消耗更少的内存，并提供优势（和劣势），即 Stata 数据的更改会立即反映在 Mata 向量和矩阵中，反之亦然。

{p 8 8 2}
    如果您使用 {it:matname}{cmd:=(}...{cmd:)}
    语法指定数值常量，则 {it:matname} 被创建为副本，即使指定了 {cmd:view} 选项。然而，命令创建的其他向量和矩阵仍将是视图。

{p 8 8 2}
    使用 {cmd:view} 选项的 {cmd:putmata} 常常可以避免使用 {cmd:getmata} 将结果导入回 Stata。

{p 8 8 2}
    警告 1：  Mata 将视图记录为“该向量是变量 3，第 2 到 5 和 7 条观测的视图”。如果您更改变量的顺序、观测的顺序，或一旦创建视图时删除变量，则视图的内容将会更改。

{p 8 8 2}
    警告 2：  在 Mata 中将值分配给视图向量时，代码

		{cmd:v[]} = ...

{p 8 8 2}
    而非 {cmd:v} = ....

{p 8 8 2}
    要将更改反映在底层的 Stata 数据中，您必须更新视图 {cmd:v} 的元素，而不是重新定义它。
    要更新 {cmd:v} 的所有元素，您可以直接编码为 {cmd:v[.]}.  在矩阵的情况下，您编码为 {cmd:X[.,.]}。

{p 4 8 2}
{cmd:replace}
    指定在必要时替换现有的 Mata 向量或矩阵。


{marker options_getmata}{...}
{title:getmata 的选项}

{p 4 8 2}
{cmd:double} 
    指定 Stata 数值变量创建为 
    {bf:{help data_types_zh:double}} 类型。默认情况下，它们将创建为
    {bf:{help data_types_zh:float}} 类型。实际上，变量最初是 
    {bf:float} 或 {cmd:double} 类型，然后它们被 
    {help compress_zh:压缩}。

{p 4 8 2}
{cmd:update} 和 {cmd:replace} 是可选项。  
    当指定 {cmd:id()} 或 {cmd:force} 选项时，它们具有相同的含义。

{p 8 8 2}
    当未指定 {cmd:id()} 或 {cmd:force} 时， 
    {cmd:replace} 和 {cmd:update} 指定可以修改现有 Stata 变量中的值。 默认情况下， 
    向量只能发帖到新的 Stata 变量中。

{p 8 8 2}
    当指定 {cmd:id()} 或 {cmd:force} 时， 
    {cmd:replace} 和 {cmd:update} 
    允许像往常一样发帖到现有变量的值。该选项在 {cmd:id()} 或 {cmd:force} 选项导致
    仅更新变量的子集观察时有所不同。 
    {cmd:update} 指定保持其余值不变。 
    {cmd:replace} 指定将其余值设置为缺失值，就好像首次为现有变量创建一样。
    
{p 4 8 2}
{cmd:id(}{it:name}{cmd:)} 以及 {cmd:id(}{varname}{cmd:=}{it:vecname}{cmd:)} 
    指定如何在 Mata 向量和矩阵中匹配观察与行。 如果变量 {it:name}[{it:i}] 等于向量 {it:name}[{it:j}]，则观测 {it:i} 
    与行 {it:j} 匹配，或在第二种语法中，如果 
    {it:varname}[{it:i}]={it:vecname}[{it:j}]。 
    ID 变量（向量）必须包含唯一表示观测（行） 的值。 
    仅在包含匹配值的观察中，该变量才会被修改。 在值没有匹配的观察中，值将不会被修改或将被设置为缺失，具体取决于情况； 在没有匹配的 ID 向量的值将被忽略。

{p 8 8 2}
    示例：  您希望对数据中的男性进行 {cmd:y} 对 {cmd:x1} 和 {cmd:x2} 的回归，并使用该结果获得男性的预测值。  Stata 已经有命令可以做到这一点，
    即，
    {cmd:regress y x1 x2 if male} 然后是 
    {cmd:predict yhat if male}。
    出于教学目的，假设您希望在 Mata 中这样做。 您键入

	    . {cmd:putmata  myid  y  X=(x1 x2 1)  if male}

	    . {cmd:mata}
	    : {cmd:b = invsym(X'X)*X'y}
	    : {cmd:yhat = X*b}
	    : {cmd:end}

	    . {cmd:getmata yhat, id(myid)}

{p 8 8 2}
    新的 Stata 变量 {cmd:yhat} 将包含男性的预测值以及女性的缺失值。 
    如果 {cmd:yhat} 变量已经存在，您将键入

	    . {cmd:getmata yhat, id(myid) replace}

{p 8 8 2}
    或 

	    . {cmd:getmata yhat, id(myid) update}

{p 8 8 2}
    {cmd:replace} 选项会将女性的观测设置为缺失值。
    {cmd:update} 选项不会改变女性的观测。

{p 8 8 2}
    如果您没有 ID 变量，请先键入 
    {cmd:generate} {cmd:myid} {cmd:=} {cmd:_n} 创建一个。

{p 4 8 2}
{cmd:force}
    指定可以将行数少于或多于数据中观测数量的向量和矩阵发帖。
    {cmd:force} 选项是 {cmd:id()} 的一个可选项，通常， 
    {cmd:id()} 是适当的选择。

{p 8 8 2}
    如果您指定了 {cmd:force}，并且向量和矩阵的行数少于数据中的观测数量，新的变量将使用缺失值进行填充。 
    如果行数超过观测值，则将向数据中添加观测值，并将先前存在的变量用缺失值填充。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
备注在以下标题下呈现：

	{help putmata##basic1:使用 putmata}
	{help putmata##basic2:使用 putmata 和 getmata}
	{help putmata##subset:在观测子集上使用 putmata 和 getmata}
	{help putmata##views:使用视图}
	{help putmata##dofiles:构建 do 文件}


{marker basic1}{...}
{title:使用 putmata}

{p 4 4 2}
在这个示例中，我们将使用 Mata 进行计算并报告结果，
但我们不会将结果发布回 Stata。 我们将使用 {cmd:putmata}，
但不使用 {cmd:getmata}。

{p 4 4 2}
考虑求解线性方程组 {bf:b}：

		{bf:y} = {bf:X}{bf:b}{right:(1)    }

{p 4 4 2}
其中 {bf:y}: {it:N} x 1, {bf:X}: {it:N} x {it:k}, 和 {bf:b}: {it:k}
x 1.  如果 {it:N} = {it:k}，则 {bf:y} = {bf:X}{bf:b} 等同于对 {it:k} 个未知数求解 {it:k} 个方程，而解为

                     -1
		{bf:b} = {bf:X}  {bf:y}{right:(2)    }

{p 4 4 2}
该解是通过将方程（1）两边都与 {bf:X}^(-1) 相乘获得的。

{p 4 4 2}
当 {it:N} > {it:k} 时，方程（2）可用于获取最小二乘结果，前提是矩阵反转被适当地定义。假设您希望演示这一点，当矩阵反转被定义为矩阵的摩尔-彭罗斯广义逆。通过键入以下内容，您可以获得演示。

	. {cmd:sysuse auto, clear}

	. {cmd:regress mpg weight displacement}

	. {cmd:putmata y=mpg X=(weight displacement 1)}

	. {cmd:mata}
	: {cmd:pinv(X)*y}
	: {cmd:end}

	. _

{p 4 4 2}
Mata 表达式 {cmd:pinv(X)*y} 将显示一个 3 x 1 的列向量。
该向量的元素将等于由 {cmd:regress} {cmd:mpg} {cmd:weight} {cmd:displacement} 所报告的系数。

{p 4 4 2}
供您参考，矩形矩阵 {bf:X} 的摩尔-彭罗斯逆：
{it: N} x {it:k} 是一个 {it:k} x {it:N} 的矩形矩阵。 在其他属性中，{cmd:pinv(}{bf:X}{cmd:)}{cmd:*}{bf:X} = {bf:I}，
其中 {bf:I} 是 {it:k} x {it:k} 单位矩阵。您也可以使用 Mata 演示这一点：

	. {cmd:mata: pinv(X)*X}


{marker basic2}{...}
{title:使用 putmata 和 getmata}

{p 4 4 2}
在这个示例中，我们将使用 Mata 计算出一个结果，我们希望将其 
发布回 Stata。我们将同时使用 {cmd:putmata} 和 {cmd:getmata}。

{p 4 4 2}
某些问题在 Mata 中比在 Stata 中更容易解决。 例如，假设您需要根据现有变量 {cmd:C} 创建新的 Stata 变量 {cmd:D}，其定义为

		{cmd:D}[{it:i}] = sum({cmd:C}[{it:j}] - {cmd:C}[{it:i}])，对于所有 {cmd:C}[{it:j}]>{cmd:C}[{it:i}]

{p 4 4 2}
其中 {it:i} 和 {it:j} 是观测的索引。

{p 4 4 2}
这个问题可以在 Stata 中解决，但对大多数人来说，解决方案似乎很难实现。 
在 Mata 中，解决方案更加自然，因为 Mata 解决方案几乎逐字对应于数学问题的陈述。 如果 {cmd:C} 和 {cmd:D} 是 Mata 向量，而不是 Stata 变量，则解决方案将是：

	{cmd}D = J(rows(C), 1, 0)
	for (i=1; i<=rows(C); i++) {c -(}
		for (j=1; j<=rows(C); j++) {c -(}
			if (C[j]>C[i]) D[i] = D[i] + (C[j] - C[i])
		{c )-}
	{c )-}{txt}

{p 4 4 2}
这个解决方案中最难理解的部分是第一行，{cmd:D} {cmd:=} {cmd:J(rows(C), 1, 0)}，这可能是由于您对 Mata 的 {cmd:J()} 函数不熟悉。 
{cmd:D} {cmd:=} 
{cmd:J(rows(C), 1, 0)} 创建一个 {cmd:rows(C)} x 1 的列向量，全部为 0。 
{cmd:J()} 的参数是按这个顺序排列的。

{p 4 4 2}
{cmd:C} 和 {cmd:D} 还不是 Mata 向量，至少它们现在还不是。通过使用 {cmd:getmata}，我们可以将变量 {cmd:C} 创建为向量，并运行我们的 Mata 解决方案。 
然后使用 {cmd:putmata}，我们可以将 Mata 向量 {cmd:D} 发布回新的 Stata 变量 {cmd:D}。 
解决方案包括这三个步骤，如下所示：

{p 8 12 2}
    (1)  在 Stata 中，使用 {cmd:putmata} 创建在 Mata 中的向量 {cmd:C}，
        使其等于 Stata 中的变量 {cmd:C}：  {cmd:putmata C}。

{p 8 12 2}
    (2)  使用 Mata 解决问题，创建新的 Mata 向量 {cmd:D}。

{p 8 12 2}
    (3)  在 Stata 中再次使用 {cmd:getmata} 创建新的变量 {cmd:D}，使其等于 Mata 向量 {cmd:D}。

{p 4 4 2}
由于涉及到解决方案的输入，我们将代码打包到 do 文件中：

	{hline 50} {cmd:myfile.do} {hline 3}{cmd}
	use mydata, clear 
	putmata C{col 69}{txt:(1)}

	mata:{col 69}{txt:(2)}
	D = J(rows(C), 1, 0)
	for (i=1; i<=rows(C); i++) {c -(}
	        for (j=1; j<=rows(C); j++) {c -(}
	                if (C[j]>C[i]) D[i] = D[i] + (C[j] - C[i])
	        {c )-}
	{c )-}
	end

	getmata D{col 69}{txt:(3)}
	save mydata, replace{txt}
	{hline 50} {cmd:myfile.do} {hline 3}

{p 4 4 2}
在 Stata 中，我们现在将键入 

	. {cmd:do myfile}

{pstd}
注意：

{p 4 8 2}
(1)
    如果我们将 {cmd:putmata} {cmd:C} 改为使用 {cmd:putmata} {cmd:C,} {cmd:replace} ，并在 {cmd:getmata} 
    {cmd:D} 处改为使用 {cmd:getmata} {cmd:D,} {cmd:replace}，我们的程序可能会更好。 
    现在这样做会有效，但如果我们后来再次运行它，它就不会工作。 
    Stata 将遇到 {cmd:putmata} 命令并发出矩阵 {cmd:C} 已存在的错误。
    即使 Stata 通过，该命令也会遇到 {cmd:getmata} 命令并发出变量 {cmd:D} 已存在的错误。 
    也许这是一种优势。你不能再次运行 {cmd:myfile.do}，而不删除矩阵 {cmd:C} 和变量 {cmd:D}。 
    然而，如果您认为这是一种缺点，请包含 {cmd:replace} 选项。

{p 4 8 2}
(2) 
    在我们的解决方案中，我们通过键入 {cmd:mata:} 进入 Mata，也就是说， 
    {cmd:mata} 后面加上冒号。  交互式中，我们通常只是键入 {cmd:mata} 进入 Mata。 
    冒号会影响 Mata 如何处理错误。  在交互式工作中，我们希望 Mata 注意错误，然后继续运行，这样我们就可以纠正自己。 
    在 do 文件中，我们希望 Mata 注意错误并停止。  这就是 {cmd:mata} 与 {cmd:mata:} 的区别。 
    在编写 do 文件时，请记住使用 {cmd:mata:}。

{p 4 8 2}
(3)
    您可以修改 do 文件以删除任何已经存在的 
    Mata 向量 {cmd:C} 和任何已经存在的变量 {cmd:D}。 
    要删除向量 {cmd:C}，在 Mata 中，您可以键入  
    {cmd:mata drop C}，在 Stata 中，您可以键入 
    {cmd:mata: mata drop C}。
    要删除变量 {cmd:D}，在 Stata 中，您可以键入 {cmd:drop} {cmd:D}。
    您必须担心变量是否存在，因此在您的 do 文件中， 
    您将编码为 

		{cmd:capture mata: mata drop C}
		{cmd:capture drop D}

{p 8 8 2}
    您可能更愿意仅将 Mata 清除，而不是删除向量 {cmd:C}：

		{cmd:clear mata}


{marker subset}{...}
{title:在观测子集上使用 putmata 和 getmata}

{p 4 4 2}
{cmd:putmata} 可用于创建包含 Stata 数据中某个观测子集的 Mata 向量，而 
{cmd:getmata} 可用于将此类向量取回 Stata。 
因此，您可以仅处理男性或仅处理观察到失败的结果，以此类推。 下面我们仅处理 {cmd:C} 不包含缺失值的观测。

{p 4 4 2}
在上述创建变量 {cmd:D} 的示例中，我们假设 
{cmd:C} 中没有缺失值，或者我们并未考虑此问题。 
事实证明，我们的代码在 {cmd:C} 中仅存在一个缺失值的情况下会产生多个缺失值。 
因此，如果存在缺失值，我们可能希望在计算中将其排除。 
我们可以使我们的 Mata 代码更复杂来处理这个问题。 
我们可以修改我们的 Mata 代码为 

	{cmd}use mydata, clear 
	putmata C

	D = J(rows(C), 1, 0)
	for (i=1; i<=rows(C); i++) {c -(}
		if (C[i]>=.) D[i] = .               {txt}{it:// new}{cmd}
		else for (j=1; j<=rows(C); j++) {c -(}
			if (C[j]<.) {c -(}               {txt}{it:// new}{cmd}
	               		if (C[j]>C[i]) D[i] = D[i] + (C[j] - C[i])
			{c )-}
	       	{c )-}
	{c )-}
	end

	getmata D
	save mydata, replace{txt}

{p 4 4 2}
然而，更简单的方法是仅将 Mata 向量 {cmd:C} 限制为 Stata 变量 {cmd:C} 的非缺失元素，
我们可以通过将 {cmd:putmata} {cmd:C} 替换为 

	{cmd:putmata C if !missing(C)}

{p 4 4 2}
或者等价地，

	{cmd:putmata C, omitmissing}

{p 4 4 2}
无论我们以何种方式编码，如果数据包含 100 个观测，而变量 
{cmd:C} 包含 82 个非缺失值，则新的 Mata 向量 {cmd:C} 将包含 82 行，而不是 100 行。 
与 {cmd:missing(C)} 相关的观测将从向量中省略，因此我们可以运行原始的 Mata 解决方案，而无需修改。

{p 4 4 2}
不过，有一个问题。 在代码末尾，当我们将 Mata 解决方案向量 {cmd:D} 发布到 Stata 变量 {cmd:D} 时 -- {cmd:getmata D} -- 
我们需要指定哪些 100 个观测将接收存储在向量中的 82 个结果。  
{cmd:getmata} 有一个选项来处理这种情况 -- 
{cmd:id(}{it:varname}{cmd:)}, 其中 {it:varname} 是 
一个标识变量的名称。  

{p 4 4 2}
标识变量是在数据中每个观测具有不同值的变量。 
这些值可以是 1、2、...、100；或者可以是 1.25、-2、...、16.5；也可以是Nick、Bill、...、Mary。
这些值可以是数值或字符串，并且不需要按顺序排列。
重要的是变量在每个观测中包含唯一（不同）的值。 
可能数据已经包含这样的变量。 如果没有，您可以通过键入 

        {cmd:generate fid = _n}

{p 4 4 2}
当我们使用 {cmd:putmata} 创建向量 {cmd:C} 时，我们需要同时创建向量 {cmd:fid}，使其包含变量 {cmd:fid} 的选定值，我们可以通过将 {cmd:fid} 
添加到 {it:putlist} 来完成：

	{cmd:putmata fid C if !missing(C)}

{p 4 4 2}
上述命令在 Mata 中创建两个向量： {cmd:fid} 和 {cmd:C}。 
当我们将结果向量 {cmd:D} 发布回 Stata 时，我们将指定 
{cmd:id(fid)} 选项以指示 {cmd:getmata} 将结果发布到哪些观测中：

	{cmd:getmata D, id(fid)}

{p 4 4 2}
{cmd:id(fid)} 选项意为存在一个名为 {cmd:fid} 的变量和一个名为 {cmd:fid} 的向量。 
正是通过比较每个值，{cmd:getmata} 确定向量的行与数据的观测之间的对应关系。

{p 4 4 2}
完整的解决方案是 

	{hline 50} {cmd:myfile.do} {hline 3}{cmd}
	use mydata, clear 
	putmata fid C if !missing(C) {txt}// {it:new: 我们添加 fid 和 if !missing(C)}

	{cmd}mata:
	D = J(rows(C), 1, 0)
	for (i=1; i<=rows(C); i++) {c -(}
	        for (j=1; j<=rows(C); j++) {c -(}
	                if (C[j]>C[i]) D[i] = D[i] + (C[j] - C[i])
	        {c )-}
	{c )-}
	end

	getmata D, id(fid)          {txt}// {it:new: 我们添加选项 id(fid)}
	{cmd}save mydata, replace{txt}
	{hline 50} {cmd:myfile.do} {hline 3}

{p 4 4 2}
上述代码将在包含或不包含缺失值的数据上运行。 新变量 
{cmd:D} 将在 {cmd:C} 缺失的观测中缺失，但 
{cmd:D} 否则将包含非缺失值。


{marker views}{...}
{title:使用视图}

{p 4 4 2}
当您键入或编码 {cmd:putmata} {cmd:C} 时，向量 {cmd:C} 被创建为 Stata 数据的副本。  该变量和向量是独立的。
另一种选择是使 Mata 向量成为 Stata 变量的视图。  这意味着变量和向量共享相同的值记录。  视图节省内存，但在执行时间方面可能略微效率低下。  视图还有其他优缺点。

{p 4 4 2}
例如，如果您键入 {cmd:putmata} {cmd:mpg}，然后在 Mata 中键入 {cmd:mpg[1]=20}，
您将不仅改变 Mata 向量，还会改变 Stata 数据！ 
或者在键入 {cmd:putmata} {cmd:mpg} 后，您键入 {cmd:replace} {cmd:mpg}
{cmd:=} {cmd:20} {cmd:in} {cmd:1}，这将同时修改数据和 Mata 向量！ 
如果您是在修复实际错误，这是一种优势；而如果您 intend to do something else，这则是一个劣势。

{p 4 4 2}
如果在讨论视图过程中您暂时中断并返回 Stata，则重要的是不要以某种方式修改 Stata 数据。 
视图不会记录数据的副本，而是记录有关映射的说明。 
一个视图可能记录这个 Mata 向量对应于变量 3、第 2 到第 20 和第 39 条观测。 
如果您更改数据的排序顺序，视图仍将与第 2 到第 20 和第 39 条观测一起工作，尽管这些实际观测现在包含不同的数据。 
如果您删除第一或第二个变量，视图仍将与第三个变量一起工作，即使那个变量现在将是不同的变量！

{p 4 4 2}
使用视图提供的内存节省是相当可观的，尤其是在处理大数据集时。 假设您有一个包含 200 个变量和 1,000,000 条观测的数据集。  您的数据可能大小为 1GB。  尽管如此，键入 {cmd:putmata *, view}，因此创建 200 个每个有 1,000,000 行的向量也只会消耗几十千字节的内存。

{p 4 4 2}
所有上述示例在副本或视图下都同样有效。 
我们一直在使用副本，但在上一个示例中，我们编码了 

	{cmd:putmata fid C if !missing(C)}

{p 4 4 2}
我们可以通过编码

	{cmd:putmata fid C if !missing(C), view}

{p 4 4 2}
来切换到使用视图。

{p 4 4 2}
仅此一更改，我们的代码仍然有效，并且占用的内存更少。

{p 4 4 2}
仅此一更改，我们在某些地方仍然不会在可以使用视图的地方使用视图。 
向量 {cmd:D} -- 我们在 Mata 中创建并随后发布回 Stata 的向量 -- 仍将是一个常规向量。 
我们也可以通过将 {cmd:D} 变为视图来节省额外的内存。 
在这样做之前，请允许我们警告您，除非内存节省至关重要，否则我们不建议这样做。 
完成后，结果将优雅且内存高效，但额外的内存节省通常不值得调试的努力。

{p 4 4 2}
当您创建的视图向量包含未在代码中修改的值时，不需要对代码进行额外更改。 
向量 {cmd:C} 是这样的一个向量。 我们使用存储在 {cmd:C} 中的值，但我们不改变它们。 
另一方面，向量 {cmd:D} 是一个我们要改变值的向量。 通常情况下，如果您不将这样的向量转换为视图，事情会更简单。

{p 4 4 2}
考虑到这一前提，我们将使 {cmd:D} 也成为一个视图，在此过程中，我们将完全省略 {cmd:fid} 的使用：

	{hline 50} {cmd:myfile.do} {hline 3}{cmd}
	use mydata, clear 
	generate D = .               {txt}     // {it:new}
	{cmd}putmata C D if !missing(C), view  {txt}// {it:changed}

	{cmd}mata:
	D[.] = J(rows(C), 1, 0)      {txt}     // {it:changed}
	{cmd}for (i=1; i<=rows(C); i++) {c -(}
	        for (j=1; j<=rows(C); j++) {c -(}
	                if (C[j]>C[i]) D[i] = D[i] + (C[j] - C[i])
	        {c )-}
	{c )-}
	end

	                            {txt}     // {it:我们删除了 getmata}
	{cmd}save mydata, replace{txt}
	{hline 50} {cmd:myfile.do} {hline 3}

{p 4 4 2}
在该解决方案中，我们在开头创建了新的 Stata 变量 {cmd:D}，然后 
我们修改了 {cmd:putmata} 命令以创建 {cmd:C} 和 {cmd:D} 的视图向量。 
我们的代码在向量 {cmd:D} 中存储结果时，现在在存储结果时同时发布到变量 {cmd:D}，因此我们可以省略末尾的 {cmd:getmata} {cmd:D}，
因为结果已经发布！ 
而且，我们无需再担心通过 {cmd:fid} 匹配观测与行。 {cmd:D} 的行现在自动与变量 {cmd:D} 中所选观测匹配。

{p 4 4 2}
我们的 Mata 代码开头有一个重要的变化，然而。 
我们将 

	{cmd:D = J(rows(C), 1, 0)}

{p 4 4 2}
更改为

	{cmd:D[.] = J(rows(C), 1, 0)}

{p 4 4 2}
此更改极为重要。 我们之前编码将创建向量 {cmd:D}。 
我们现在编码更改存储在现有向量 {cmd:D} 中的值。 
如果我们保留之前的编码，Mata 会放弃目前存储在 {cmd:D} 中的视图，
并创建一个常规的 Mata 向量 {cmd:D}，与 Stata 无关，包含 0。


{marker dofiles}{...}
{title:构建 do 文件}

{p 4 4 2}
{cmd:putmata} 和 {cmd:getmata} 可以交互使用，但如果在 put 和 get 之间有很多 Mata 代码，您最好使用 do 文件，因为 
当 do 文件有错误时，do 文件可以很容易编辑。 
我们推荐如下结构用于此类 do 文件：

	{hline 49} {cmd:outline.do} {hline 3}{cmd}
	version 13{col 57}{txt:(1)}

	mata clear{col 57}{txt:(2)}

	// {txt:{it:Stata 代码设置在此}{col 57}{txt:(3)}}

	putmata {it:...{col 57}}{txt:(4)}

	mata:
	// {txt:{it:Mata 代码在此}{col 57}{txt:(5)}}
	end

	getmata {it:...}{col 57}{txt:(6)}

	mata clear{col 57}{txt:(7)}{txt}
	{hline 49} {cmd:outline.do} {hline 3}

{p 4 4 2}
有关 do 文件步骤的说明：

{p 8 12 2}
    (1)  do 文件应始终以 {cmd:version} 语句开始； 
        这确保 do 文件在未来的 Stata 新版本发布后，仍然能够工作。请参阅 
        {bf:{help version_zh:[P] version}}。

{p 8 12 2}
    (2)  do 文件不应依赖于 Mata 已经加载和设置好的某些 
        向量、矩阵或程序，因为如果您稍后尝试再次运行 do 文件，您假定的可能就不成立。 
        do 文件应自我包含。 为确保这一点，在我们第一次编写并运行 do 文件时，以及在之后的运行中，确保 Mata 中不会有任何残留内容干扰我们，因此我们清理 Mata。

{p 8 12 2}
    (3)  您可能需要对数据进行排序，创建 do 文件将使用的额外变量，或删除您假设不存在的变量。 
    在 {cmd:myfile.do} 的最后一次迭代中，我们需要 {cmd:generate} {cmd:D} {cmd:=} {cmd:.}，在此之前执行 {cmd:capture} {cmd:drop} {cmd:D} 可能并不是一个坏主意。 
    我们的示例并不依赖于数据的排序，但如果依赖于，哪怕我们确定数据已经在正确的顺序上，我们还是会增加排序步骤。

{p 8 12 2}
    (4)  将 {cmd:putmata} 命令放在此处。 
    如果 {cmd:putmata} 包含 {cmd:omitmissing} 选项，那么在单个 {cmd:putmata} 命令中放入您所需的所有内容。 
    否则，如果更方便，则可以使用多个 {cmd:putmata} 命令。 
    如果您使用多个 {cmd:putmata} 命令，请确保在每个命令中包含相同的 {cmd:if} {it:表达式} 和 {cmd:in} {it:范围} 修饰符。

{p 8 12 2}
    (5)  Mata 代码放在此处。 请注意，我们键入 {cmd:mata:}（{cmd:mata} 后面加冒号）以进入 Mata。 
    {cmd:mata:} 确保 Mata 停止并导致我们的 do 文件停止，因此要很清晰。

{p 8 12 2}
    (6)  如果需要，放置 {cmd:getmata} 命令。 
        确保包括 {cmd:getmata} 的 {cmd:id(}{it:名称}{cmd:)} 或
        {cmd:id(}{it:vecname}{cmd:=}{it:varname}{cmd:)} 选项，如果在步骤 4 中对 {cmd:putmata} 命令中包括了 {cmd:if}
        {it:表达式} 修饰符或 {cmd:in} {it:范围}
        修饰符或 {cmd:omitmissing} 选项。
        如果您包括了 {cmd:id()}，请确保在步骤 4 的 {cmd:putmata} 命令中也包括了 ID 变量。

{p 8 12 2}
    (7)  在此再次清理 Mata，以避免没有必要分配的内存，并避免引起后续运行的写得不好的 do 文件的问题。

{p 4 4 2}
{cmd:putmata} 和 {cmd:getmata} 
旨在在交互和 do 文件中工作。  这些命令不旨在用于 ado 文件。 
ado 文件类似于 do 文件，但它定义了一个实现 Stata 新命令的程序，编写良好的 ado 文件不使用全局变量，例如 {cmd:putmata} 创建的全局向量和矩阵。 
ado 文件使用局部变量。  ado 文件程序员应使用 Mata 函数
{cmd:st_data()} 和 {cmd:st_view()}（请参阅 
{bf:{help mf_st_data_zh:[M-5] st_data()}} 和 
{bf:{help mf_st_view_zh:[M-5] st_view()}}）创建向量和矩阵，并在必要时使用 {cmd:st_store()}（请参阅 
{bf:{help mf_st_store_zh:[M-5] st_store()}}）将这些向量和矩阵的内容帖子到 Stata。




{marker results}{...}
{title:存储的结果}

{p 4 4 2}
{cmd:putmata} 将以下信息存储在 {cmd:r()} 中：

{col 8}标量
{col 12}{cmd:r(N)}{...}
{col 28}创建的向量和矩阵的行数
{col 12}{cmd:r(K_views)}{...}
{col 28}作为视图创建的向量和矩阵的数量
{col 12}{cmd:r(K_copies)}{...}
{col 28}作为副本创建的向量和矩阵的数量

{p 8 8 2}
创建的向量和矩阵的总数为 
{cmd:r(K_views)} + {cmd:r(K_copies)}。

{p 8 8 2}
{cmd:r(N)}=. 如果 {cmd:r(K_views)} + {cmd:r(K_copies)} = 0。
{cmd:r(N)}=0 意味着创建的向量和矩阵为零观测，
即表示维度为 
0 x 1 和 0 x {it:k} 的向量和矩阵。

{p 4 4 2}
{cmd:getmata} 将以下信息存储在 {cmd:r()} 中：

{col 8}标量
{col 12}{cmd:r(K_new)}{...}
{col 28}新创建变量的数量
{col 12}{cmd:r(K_existing)}{...}
{col 28}修改的现有变量数量

{p 8 8 2}
修改的变量总数为 
{cmd:r(K_new)} + {cmd:r(K_existing)}.{p_end}
{* {title:源代码}}{...}
{...}
{* {p 4 4 2}}{...}
{* {view putmata.ado, adopath asis:putmata.ado},}{...}
{* {view getmata.ado, adopath asis:getmata.ado}}{...}
{...}
{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <putmata.sthlp>}