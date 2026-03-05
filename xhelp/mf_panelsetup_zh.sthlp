{smcl}
{* *! version 1.1.5  15may2018}{...}
{vieweralsosee "[M-5] panelsetup()" "mansection M-5 panelsetup()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] Utility" "help m4_utility_zh"}{...}
{viewerjumpto "语法" "mf_panelsetup_zh##syntax"}{...}
{viewerjumpto "描述" "mf_panelsetup_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "mf_panelsetup_zh##linkspdf"}{...}
{viewerjumpto "备注" "mf_panelsetup_zh##remarks"}{...}
{viewerjumpto "适应性" "mf_panelsetup_zh##conformability"}{...}
{viewerjumpto "诊断" "mf_panelsetup_zh##diagnostics"}{...}
{viewerjumpto "源代码" "mf_panelsetup_zh##source"}
{help mf_panelsetup:English Version}
{hline}{...}
{p2colset 1 23 25 2}{...}
{p2col:{bf:[M-5] panelsetup()} {hline 2}}面板数据处理
{p_end}
{p2col:}({mansection M-5 panelsetup():查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 16 16 2}
{it:info} = 
{cmd:panelsetup(}{it:V}{cmd:,}
{it:idcol}{cmd:)}

{p 16 16 2}
{it:info} = 
{cmd:panelsetup(}{it:V}{cmd:,}
{it:idcol}{cmd:,}
{it:minobs}{cmd:)}

{p 16 16 2}
{it:info} = 
{cmd:panelsetup(}{it:V}{cmd:,}
{it:idcol}{cmd:,}
{it:minobs}{cmd:,}
{it:maxobs}{cmd:)}


{p 8 8 2}
{it:real rowvector}
{cmd:panelstats(}{it:info}{cmd:)}

{p 8 8 2}
{it:real matrix}{bind:   }
{cmd:panelsubmatrix(}{it:V}{cmd:,}
{it:i}{cmd:,}
{it:info}{cmd:)}

{p 8 8 2}
{it:void}{bind:          }
{cmd:panelsubview(}{it:SV}{cmd:,} 
{it:V}{cmd:,}
{it:i}{cmd:,}
{it:info}{cmd:)}

{p 4 4 2}
其中， 

		    {it:V}:  {it:real} 或 {it:string} {it:matrix}, 可能是视图
		{it:idcol}:  {it:real scalar}
	       {it:minobs}:  {it:real scalar}
	       {it:maxobs}:  {it:real scalar}
		 {it:info}:  {it:real matrix}
		    {it:i}:  {it:real scalar}
		   {it:SV}:  {it:matrix} 将被创建，可能作为视图


{marker description}{...}
{title:描述}

{p 4 4 2}
这些函数帮助处理面板数据。其目的是简化和加速循环的编写，例如

		{cmd:for (}{it:i}{cmd:=1;} {it:i}{cmd:<=}{it:number_of_panels}{cmd:;} {it:i}{cmd:++) {c -(}}
			{it:X} {cmd:=} {it:matrix corresponding to panel i}
			...
			...{it:(使用 X 的计算)}...
			...
		{cmd:{c )-}}

{p 4 4 2}
使用这些函数，这个循环可以变成

		{cmd}st_view(Vid, ., "idvar",      "touse")
		st_view(V,   ., ("x1", "x2"), "touse")

		info = panelsetup(Vid, 1)

		for (i=1; i<=rows(info); i++) {
			X = panelsubmatrix(V, i, info)
			{txt}...{cmd}
			{txt}...{it:(使用} {cmd:X}{it:)}{txt}...{cmd}
			{txt}...{cmd}
		}{txt}

{p 4 4 2}
{cmd:panelsetup(}{it:V}{cmd:,} {it:idcol}{cmd:,} ...{cmd:)} 设置面板处理。它返回一个矩阵 ({it:info})，用于传递给其他面板处理函数。

{p 4 4 2}
{cmd:panelstats(}{it:info}{cmd:)} 返回一个行向量，包含面板的数量、观察数量、每个面板的最小观察数量和每个面板的最大观察数量。

{p 4 4 2}
{cmd:panelsubmatrix(}{it:V}{cmd:,} {it:i}{cmd:,} {it:info}{cmd:)} 返回一个矩阵，包含面板 {it:i} 的 {it:V} 内容。

{p 4 4 2}
{cmd:panelsubview(}{it:SV}{cmd:,} {it:V}{cmd:,} {it:i}{cmd:,}
{it:info}{cmd:)} 也执行几乎相同的操作。但它不会返回一个矩阵，而是将矩阵放入 {it:SV} 中。如果 {it:V} 是一个视图，则放入 {it:SV} 的矩阵将是一个视图。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection M-5 panelsetup()Remarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
备注如下：

	{help mf_panelsetup##remarks1:面板数据的定义}
	{help mf_panelsetup##remarks2:问题的定义}
	{help mf_panelsetup##remarks3:准备工作}
	{help mf_panelsetup##remarks4:使用 panelsetup()}
	{help mf_panelsetup##remarks5:使用 panelstats()}
	{help mf_panelsetup##remarks6:使用 panelsubmatrix()}
	{help mf_panelsetup##remarks7:使用 panelsubview()}


{marker remarks1}{...}
{title:面板数据的定义}

{p 4 4 2}
面板数据包括对多个对象（如受试者、国家等）的多次观察：

		受试者ID      "时间" ID       x1        x2
		{hline 43}
		      1           1          4.2       3.7
		      1           2          3.2       3.7
		      1           3          9.2       4.2

                      2           1          1.7       4.0
                      2           2          1.9       5.0

		      3           1          9.5       1.3
		      .           .           .         . 
		      .           .           .         . 
		{hline 43}

{p 4 4 2}
在上述数据集中，受试者 1 有三个观察，受试者 2 有两个观察，依此类推。我们将受试者内的标识符标记为时间，但这仅仅是个建议，而在任何情况下，次要标识符在后续的内容中将不会起作用。

{p 4 4 2}
如果我们讨论第一个面板，那么我们就是在讨论该数据集的前三个观察。如果我们说第二个面板，这对应于观察 4 和 5。

{p 4 4 2}
通常将面板编号记为字母 {it:i}，而将第 {it:i} 个面板中的观察数量称为 {it:T}_{it:i}，即使面板内的数据与时间的重复观察无关。


{marker remarks2}{...}
{title:问题的定义}

{p 4 4 2}
我们想要计算面板数据上的某个统计量。计算的内容为

                K
		求和    {it:f}({it:X}_{it:i})
		i=1

{p 4 4 2}
其中求和在面板间执行，{it:X}_{it:i} 为面板 {it:i} 的数据矩阵。例如，考虑上一节中的示例

			  {c TLC}{c -}        {c -}{c TRC}
			  {c |} 4.2  3.7 {c |}
		{it:X}_1  =    {c |} 3.2  3.7 {c |}
			  {c |} 9.2  4.2 {c |}
			  {c BLC}{c -}        {c -}{c BRC}

{p 4 4 2}
而 {it:X}_{it:2} 是一个类似构造的 2 {it:x} 2 矩阵。

{p 4 4 2}
根据计算的性质，可能会存在以下问题：

{p 8 12 2}
    1.  我们希望使用所有面板，

{p 8 12 2}
    2.  我们希望只使用有两个或更多观察的面板，以及

{p 8 12 2}
    3.  我们希望所有面板中的观察数量相同
        （平衡面板）。

{p 4 4 2}
除了简单的形式

                K
		求和    {it:f}({it:X}_{it:i})
		i=1

{p 4 4 2}
你可能还需要处理如下形式的问题，

                K
		求和    {it:f}({it:X}_{it:i}, {it:Y}_{it:i}, ...)
		i=1

{p 4 4 2}
即，你可能需要处理每个主题有多个矩阵的情况。

{p 4 4 2}
我们使用求和运算符只是为了说明，尽管它是最常见的。你的问题可能是 

		{it:F}({it:X}_1, {it:Y}_1, ..., {it:X}_2, {it:Y}_2, ..., ...)


{marker remarks3}{...}
{title:准备工作}

{p 4 4 2}
在使用此处记录的函数之前，创建一个或多个包含数据的矩阵。为了说明，创建一个包含我们示例问题中所有数据的 {it:V} 矩阵即可：

			 {c TLC}{c -}               {c -}{c TRC}
			 {c |}  1  2  4.2  3.7 {c |}
			 {c |}  1  2  3.2  3.7 {c |}
			 {c |}  1  3  9.2  4.2 {c |}
			 {c |}  2  1  1.7  4.0 {c |}
		{it:V}  =     {c |}  2  2  1.9  5.0 {c |}
			 {c |}  3  1  9.5  1.3 {c |}
			 {c |}  .  .   .    .  {c |}
			 {c |}  .  .   .    .  {c |}
			 {c BLC}{c -}               {c -}{c BRC}

{p 4 4 2}
但你可能会发现创建至少两个矩阵更方便（我们建议这样做），一个包含受试者标识符，另一个包含 {it:x} 变量（并完全省略受试者之间的 "时间" 标识符）：

                        {c TLC}{c -}   {c -}{c TRC}                 {c TLC}{c -}         {c -}{c TRC}
                        {c |}  1  {c |}                 {c |}  4.2  3.7 {c |}
                        {c |}  1  {c |}                 {c |}  3.2  3.7 {c |}
                        {c |}  1  {c |}                 {c |}  9.2  4.2 {c |}
                        {c |}  2  {c |}                 {c |}  1.7  4.0 {c |}
                 {it:V1}  =  {c |}  2  {c |}        {it:V2}  =    {c |}  1.9  5.0 {c |}
                        {c |}  3  {c |}                 {c |}  9.5  1.3 {c |}
                        {c |}  .  {c |}                 {c |}   .    .  {c |}
                        {c |}  .  {c |}                 {c |}   .    .  {c |}
                        {c BLC}{c -}   {c -}{c BRC}                 {c BLC}{c -}         {c -}{c BRC}

{p 4 4 2}
在上面的例子中，矩阵 {it:V1} 包含受试者标识符，矩阵 {it:V2} 包含所有 {it:X}_{it:i} 矩阵的数据。

{p 4 4 2}
如果你的计算是 

                K
		求和    {it:f}({it:X}_{it:i}, {it:Y}_{it:i}, ...)
		i=1

{p 4 4 2}
则创建与 {it:Y}_{it:i} 对应的额外 {it:V} 矩阵 {it:V3} ，依此类推。

{p 4 4 2}
要创建这些矩阵，请使用 {bf:{help mf_st_view_zh:[M-5] st_view()}}

	{cmd:st_view(}{it:V1}{cmd:,  ., "idvar",      "touse"){cmd:")}

	{cmd:st_view(}{it:V2}{cmd:,  ., ("x1", "x2"), "touse"){cmd:")}

{p 4 4 2}
虽然你也可以使用 {bf:{help mf_st_data_zh:[M-5] st_data()}}，如果你愿意的话。使用 {cmd:st_view()} 可以节省内存。
你也可以以任何你想要的方式构造 {it:V1}, {it:V2}, ...; 它们只是矩阵。确保矩阵对齐，例如，一个矩阵的第 4 行对应另一个矩阵的第 4 行。我们上面假设一个 {it:touse} 变量已包含（或构建）在数据集中。


{marker remarks4}{...}
{title:使用 panelsetup()}

{p 4 4 2}
{cmd:panelsetup(}{it:V}{cmd:,} {it:idcol}{cmd:,} ...{cmd:)} 设置面板处理，返回一个 {it:K} {it:x} 2 的矩阵，其中每一行对应一个面板。该行记录了与面板对应的第一个和最后一个观察数字（在 {it:V} 中的行号）。

{p 4 4 2}
例如，在我们的示例中，{cmd:panelsetup()} 将返回 

                {c TLC}{c -}     {c -}{c TRC}
		{c |}  1  3 {c |}
		{c |}  4  5 {c |}
		{c |}  6  9 {c |}   
		{c |}  .  . {c |}
		{c |}  .  . {c |}
		{c |}  .  . {c |}
                {c BLC}{c -}     {c -}{c BRC}

{p 4 4 2}
第一个面板记录在观察 1 到 3 中；它包含 3-1+1=3 个观察。第二个面板记录在观察 4 到 5 中，包含 5-4+1=2 个观察，依此类推。
我们录入第三个面板为观察 6 到 9，尽管我们没有显示足够的原始数据让你知道 9 是 ID 3 的最后观察。

{p 4 4 2}
{cmd:panelsetup()} 在构建该结果时还有许多其他功能，但重要的是要理解这个观察编号矩阵的返回就是 {cmd:panelsetup()} 的全部功能。这个矩阵就是其他面板函数所需要知道的全部信息。它们使用 {cmd:panelsetup()} 产生的信息，但同样也可以处理任何包含观察数字的两列矩阵。
因此，{cmd:panelsetup()} 不涉及任何秘密的行为，不会占用内存、使你进入某种模式或其他任何事情。{cmd:panelsetup()} 只是生成这个矩阵。

{p 4 4 2}
{cmd:panelsetup()} 返回的矩阵的行数等于 {it:K}，即面板数。

{p 4 4 2}
{cmd:panelsetup()} 的语法为 

{p 8 12 2}
{it:info} = 
{cmd:panelsetup(}{it:V}{cmd:,}
{it:idcol}{cmd:,}
{it:minobs}{cmd:,}
{it:maxobs}{cmd:)}

{p 4 4 2}
最后两个参数是可选的。

{p 4 4 2}
必需的参数 {it:V} 指定一个至少包含面板标识号码的矩阵，必需的参数 {it:idcol} 指定 {it:V} 中包含该 ID 的列。这里我们将使用只包含标识号码的矩阵 {it:V1}：

	{it:info} = {cmd:panelsetup(}{it:V1}{cmd:,} {cmd:1)}

{p 4 4 2}
两个可选参数是 {it:minobs} 和 {it:maxobs}。{it:minobs} 指定我们愿意容忍的面板内最小观察数量；如果一个面板的观察数少于此数量，我们会希望完全省略它。例如，如果我们指定 

	{it:info} = {cmd:panelsetup(}{it:V1}{cmd:,} {cmd:1, 3)}

{p 4 4 2}
则 {cmd:panelsetup()} 返回的矩阵将会包含更少的行。在我们的例子中，返回的 {it:info} 矩阵将会包含

                {c TLC}{c -}     {c -}{c TRC}
		{c |}  1  3 {c |}
		{c |}  6  9 {c |}
		{c |}  .  . {c |}
		{c |}  .  . {c |}
		{c |}  .  . {c |}
                {c BLC}{c -}     {c -}{c BRC}

{p 4 4 2}
观察 4 和 5 现在被省略，因为它们对应于一个只有两个观察的面板，而我们只说应包含具有三个或更多观察的面板。

{p 4 4 2}
我们选择三个作为示范。实际上，最常见的编码是 

	{it:info} = {cmd:panelsetup(}{it:V1}{cmd:,} {cmd:1, 2)}

{p 4 4 2}
因为那样可以消除单个观测的面板（只有一个观察的面板）。

{p 4 4 2}
最后一个可选参数是 {it:maxobs}。例如，

	{it:info} = {cmd:panelsetup(}{it:V1}{cmd:,} {cmd:1, 2, 5)}

{p 4 4 2}
意味着每个面板最多只包含五个观察。超过五个的观察将被剔除。如果我们编码

	{it:info} = {cmd:panelsetup(}{it:V1}{cmd:,} {cmd:1, 3, 3)}

{p 4 4 2}
那么 {it:info} 中的所有面板将都有三个观察。如果一个面板的观察少于三个，它将被完全省略。如果一个面板的观察超过三个，则只会包含前三个。

{p 4 4 2}
包含相同观察数量的面板数据集被称为平衡数据集。{it:panelsetup()} 还提供平衡面板的功能。如果你将 {it:maxobs} 指定为 0，那么 

{p 8 12 2}
1.  {cmd:panelsetup()} 首先计算那些具有 {it:minobs} 个观察或更多的面板中的 min(T_i)。称这个数字为 {it:m}。

{p 8 12 2}
2.  {cmd:panelsetup()} 然后返回
     {cmd:panelsetup(}{it:V1}{cmd:,} {it:idcol}{cmd:,} {it:m}{cmd:,} {it:m}{cmd:)}, 
     从而创建规模为 {it:m} 的平衡面板，并生成一个在保证最多面板数量的情况下具有最多面板内观察数量的数据集。

{p 4 4 2}
如果我们编码

	{it:info} = {cmd:panelsetup(}{it:V1}{cmd:,} {cmd:1, 2, 0)}

{p 4 4 2}
那么 {cmd:panelsetup()} 会创建在没有单个观察的约束下，具有最多面板和最多面板内观察数量的面板。


{marker remarks5}{...}
{title:使用 panelstats()}

{p 4 4 2}
{cmd:panelstats(}{it:info}{cmd:)} 可以用于任何包含观察数字的两列矩阵。{cmd:panelstats()} 返回一个行向量，包含

		{cmd:panelstats()[1]} = 面板数（与 {cmd:rows(}{it:info}{cmd:)} 相同）
		{cmd:panelstats()[2]} = 观察数
		{cmd:panelstats()[3]} = min({it:T}_{it:i})
		{cmd:panelstats()[4]} = max({it:T}_{it:i})


{marker remarks6}{...}
{title:使用 panelsubmatrix()}

{p 4 4 2}
创建了一个 {it:info} 矩阵后，可以使用 

		{it:X} = {cmd:panelsubmatrix(}{it:V}{cmd:,} {it:i}{cmd:,} {it:info}{cmd:)}

来获得与第 {it:i} 个面板对应的矩阵。

{p 4 4 2}
不必须使用生成 {it:info} 的同一矩阵来使用 {cmd:panelsubmatrix()}。
我们创建了包含 IDs 的矩阵 {it:V1}，又创建了包含 {it:x} 变量的矩阵 {it:V2}：

	{cmd:st_view(}{it:V1}{cmd:,  ., "idvar",      "touse"){cmd:")}

	{cmd:st_view(}{it:V2}{cmd:,  ., ("x1", "x2"), "touse"){cmd:")}

{p 4 4 2}
然后我们使用 {it:V1} 创建 {it:info}：

	{it:info} = {cmd:panelsetup(}{it:V1}{cmd:,} {cmd:1)}

{p 4 4 2}
现在我们可以通过编码 

	{it:X} = {cmd:panelsubmatrix(}{it:V2}{cmd:,} {it:i}{cmd:,} {it:info}{cmd:)}

来创建对应的 {it:X} 矩阵。

{p 4 4 2}
如果我们创建了一个与 {it:Y}_{it:i} 对应的 {it:V3} 矩阵，我们也可以编码

	{it:Y} = {cmd:panelsubmatrix(}{it:V3}{cmd:,} {it:i}{cmd:,} {it:info}{cmd:)}

{p 4 4 2}
依此类推。


{marker remarks7}{...}
{title:使用 panelsubview()}

{p 4 4 2}
{cmd:panelsubview()} 的工作方式与 {cmd:panelsubmatrix()} 类似。不同之处在于，而不是编码 

	{it:X} = {cmd:panelsubmatrix(}{it:V}{cmd:,} {it:i}{cmd:,} {it:info}{cmd:)}

{p 4 4 2}
你应该编码

	{cmd:panelsubview(}{it:X}{cmd:,} {it:V}{cmd:,} {it:i}{cmd:,} {it:info}{cmd:)}

{p 4 4 2}
要定义的矩阵成为 {cmd:panelsubview()} 的第一个参数。这是因为 {cmd:panelsubview()} 特别设计用于处理视图。虽然 {cmd:panelsubmatrix()} 也可以处理视图，但 {cmd:panelsubview()} 会执行一些特别的操作。如果 {it:V} 是一个视图，则 {cmd:panelsubview()} 会在其第一个参数中返回一个视图，而不是返回一个普通矩阵（在术语上叫做数组）。
视图可以节省内存。

{p 4 4 2}
视图能够节省大量内存，因此似乎你总是希望使用 {cmd:panelsubview()} 替代 {cmd:panelsubmatrix()}。然而，并不总是容易理解的是，Mata 访问记录在视图中的数据所需的时间更长，因此存在权衡。

{p 4 4 2}
如果面板可能很大，建议使用 {cmd:panelsubview()}。节省内存高于所有其他考虑。

{p 4 4 2}
实际上，大多数数据集中发生的面板并不大，即使数据集本身很大。如果你要对 {it:X} 进行许多计算，可能希望使用 {cmd:panelsubmatrix()}。

{p 4 4 2}
{cmd:panelsubmatrix()} 和 {cmd:panelsubview()} 都适用于视图和非视图矩阵。当基础矩阵 {it:V} 不是视图时，{cmd:panelsubview()} 会生成常规矩阵，正如 {cmd:panelsubmatrix()} 所做的那样。不同之处在于，当 {it:V} 是视图时，{cmd:panelsubview()} 会生成视图，而 {cmd:panelsubmatrix()} 则总是生成非视图矩阵。


{marker conformability}{...}
{title:适应性}

{p 4 4 2}
{cmd:panelsetup(}{it:V}{cmd:,} 
{it:idcol}{cmd:,} 
{it:minobs}{cmd:,} 
{it:maxobs}{cmd:)}:
{p_end}
		{it:V}:  {it:r x c}
	    {it:idcol}:  1 {it:x} 1
	   {it:minobs}:  1 {it:x} 1    (可选)
	   {it:maxobs}:  1 {it:x} 1    (可选)
	   {it:result}:  {it:K x} 2, {it:K} = 面板数量

    {cmd:panelstats(}{it:info}{cmd:)}:
	     {it:info}:  {it:K x} 2
	   {it:result}:  1 {it:x} 4

    {cmd:panelsubmatrix(}{it:V}{cmd:,} {it:i}{cmd:,} {it:info}{cmd:)}:
		{it:V}:  {it:r x c}
		{it:i}:  1 {it:x} 1, 1 <= {it:i} <= {cmd:rows(}{it:info}{cmd:)}
	     {it:info}:  {it:K x} 2
	   {it:result}:  {it:t x c}, {it:t} = 面板中的观察数量

    {cmd:panelsubview(}{it:SV}{cmd:,} {it:V}{cmd:,} {it:i}{cmd:,} {it:info}{cmd:)}:
	{it:input:}
	       {it:SV}:  无关
		{it:V}:  {it:r x c}
		{it:i}:  1 {it:x} 1, 1 <= {it:i} <= {cmd:rows(}{it:info}{cmd:)}
	     {it:info}:  {it:K x} 2
	   {it:result}:  {it:t x c}, {it:t} = 面板中的观察数量
	{it:output:}
	       {it:SV}:  {it:t x c}, {it:t} = 面板中的观察数量


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
{cmd:panelsubmatrix(}{it:V}{cmd:,} {it:i}{cmd:,} {it:info}{cmd:)}
和
{cmd:panelsubview(}{it:SV}{cmd:,} {it:V}{cmd:,} {it:i}{cmd:,} {it:info}{cmd:)}
在 {it:i}<1 或 {it:i}>{cmd:rows(}{it:info}{cmd:)} 时会中止并产生错误。

{p 4 4 2}
{cmd:panelsetup()} 可能返回一个 0 {it:x} 2 的结果。


{marker source}{...}
{title:源代码}

{p 4 4 2}
{view panelsetup.mata, adopath asis:panelsetup.mata},
{view panelstats.mata, adopath asis:panelstats.mata},
{view panelsubmatrix.mata, adopath asis:panelsubmatrix.mata},
{view panelsubview.mata, adopath asis:panelsubview.mata}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_panelsetup.sthlp>}