{smcl}
{* *! version 1.1.7  25sep2018}{...}
{vieweralsosee "[M-1] Permutation" "mansection M-1 Permutation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-5] invorder()" "help mf_invorder_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-1] Intro" "help m1_intro_zh"}{...}
{viewerjumpto "语法" "m1_permutation_zh##syntax"}{...}
{viewerjumpto "描述" "m1_permutation_zh##description"}{...}
{viewerjumpto "PDF文档链接" "m1_permutation_zh##linkspdf"}{...}
{viewerjumpto "备注" "m1_permutation_zh##remarks"}
{help m1_permutation:English Version}
{hline}{...}
{p2colset 1 22 24 2}{...}
{p2col:{bf:[M-1] Permutation} {hline 2}}关于置换矩阵和置换向量的附注
{p_end}
{p2col:}({mansection M-1 Permutation:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}
                          置换矩阵            置换向量
        操作                 符号                  符号
	{hline 65}
	排列行             {it:B} = {it:P}{cmd:*}{it:A}          {it:B} = {it:A}{cmd:[}{it:p}{cmd:,.]}

        排列列             {it:B} = {it:A}{cmd:*}{it:P}          {it:B} = {it:A}{cmd:[}.,{it:p}{cmd:]}

        还原行             {it:B} = {it:P}{cmd:'}{it:A}          {it:B}={it:A} ; {it:B}{cmd:[}{it:p}{cmd:,.]} = {it:A}
							 或
						  {it:B} = {it:A}{cmd:[invorder(}{it:p}{cmd:),.]}

        还原列             {it:B} = {it:A}{cmd:*}{it:P}{cmd:'}         {it:B}={it:A} ; {it:B}{cmd:[},.{it:p}{cmd:]} = {it:A}
							 或
						  {it:B} = {it:A}{cmd:[., invorder(}{it:p}{cmd:)]}
	{hline 65}

{pin}
一个 {it:置换矩阵} 是一个 {it:n x n} 矩阵，它是单位矩阵的行（或列）置换。

{pin}
一个 {it:置换向量} 是一个 1 {it:x} {it:n} 或 {it:n} {it:x} 1 的整数向量，包含从 1 到 {it:n} 的数字。

{pin}
以下的置换矩阵和置换向量是等价的：

                     {c TLC}{c -}       {c -}{c TRC}                    {c TLC}{c -} {c -}{c TRC}
                     {c |} 0  1  0 {c |}                    {c |} 2 {c |}
               {it:P}  =  {c |} 0  0  1 {c |}     <==>    {it:p} =    {c |} 3 {c |}
                     {c |} 1  0  0 {c |}                    {c |} 1 {c |}
                     {c BLC}{c -}       {c -}{c BRC}                    {c BLC}{c -} {c -}{c BRC}

        这两者都可以用来排列

                     {c TLC}{c -}          {c -}{c TRC}                 {c TLC}{c -}          {c -}{c TRC}
                     {c |} {it:a  b  c  d} {c |}                 {c |} {it:e  f  g  h} {c |}
               {it:A}  =  {c |} {it:e  f  g  h} {c |}   产生    {c |} {it:i  j  k  l} {c |}
                     {c |} {it:i  j  k  l} {c |}                 {c |} {it:a  b  c  d} {c |}
                     {c BLC}{c -}          {c -}{c BRC}                 {c BLC}{c -}          {c -}{c BRC}

        以及排列列的

	             {c TLC}{c -}       {c -}{c TRC}                    {c TLC}{c -}       {c -}{c TRC}
		     {c |} {it:m  n  o} {c |}                    {c |} {it:n  o  m} {c |}
                     {c |} {it:p  q  r} {c |}                    {c |} {it:q  r  p} {c |}
               {it:A}   = {c |} {it:s  t  u} {c |}      产生    {c |} {it:t  u  s} {c |}
                     {c |} {it:v  w  x} {c |}                    {c |} {it:w  x  v} {c |}
	             {c BLC}{c -}       {c -}{c BRC}                    {c BLC}{c -}       {c -}{c BRC}


{marker description}{...}
{title:描述}

{pstd}
置换矩阵是一种特殊的正交矩阵，通过乘法，重新排列另一个矩阵的行或列。
置换矩阵将重新排序以乘法的形式呈现。

{pstd}
置换向量也重新排列另一个矩阵的行或列，但它通过下标来实现。这种实现相同结果的替代方法在计算机中更有效，因为它使用更少的内存和计算时间。

{pstd}
这两者之间的关系如下所示。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection M-1 PermutationRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{pstd}
备注分为以下标题：

	{help m1_permutation##remarks1:置换矩阵}
	{help m1_permutation##remarks2:置换矩阵的来源}
	{help m1_permutation##remarks3:置换向量}


{marker remarks1}{...}
{title:置换矩阵}

{pstd}
置换矩阵是一个方阵，其行是单位矩阵的置换。以下是所有 2 {it:x} 2 的完全置换矩阵集：

		{c TLC}{c -}    {c -}{c TRC}
		{c |} 1  0 {c |}{right:(1)}
		{c |} 0  1 {c |}
		{c BLC}{c -}    {c -}{c BRC}

		{c TLC}{c -}    {c -}{c TRC}
		{c |} 0  1 {c |}{right:(2)}
		{c |} 1  0 {c |}
		{c BLC}{c -}    {c -}{c BRC}

{pstd}
设 {it:P} 为一个 {it:n x n} 的置换矩阵。如果 {it:n x m} 矩阵 {it:A} 预先乘以 {it:P}，结果是重新排序它的行。例如，

             {it:P}       *       {it:A}        =       {it:PA}
	{c TLC}{c -}       {c -}{c TRC}     {c TLC}{c -}       {c -}{c TRC}       {c TLC}{c -}       {c -}{c TRC}
	{c |} 0  1  0 {c |}     {c |} 1  2  3 {c |}       {c |} 4  5  6 {c |}
	{c |} 0  0  1 {c |}  *  {c |} 4  5  6 {c |}   =   {c |} 7  8  9 {c |}{right:(3)}
	{c |} 1  0  0 {c |}     {c |} 7  8  9 {c |}       {c |} 1  2  3 {c |}
	{c BLC}{c -}       {c -}{c BRC}     {c BLC}{c -}       {c -}{c BRC}       {c BLC}{c -}       {c -}{c BRC}

{pstd}
上面，我们用平方矩阵 {it:A} 说明了重新排序，但 {it:A} 并不一定是方阵。

{p 4 4 2}
如果 {it:m x n} 矩阵 {it:B} 在后面乘以 {it:P}，结果是重新排列其列。我们再次用平方矩阵 {it:A} 进行说明：

	     {it:A}       *       {it:P}        =       {it:AP}
	{c TLC}{c -}       {c -}{c TRC}     {c TLC}{c -}       {c -}{c TRC}       {c TLC}{c -}       {c -}{c TRC}
        {c |} 1  2  3 {c |}     {c |} 0  1  0 {c |}       {c |} 3  1  2 {c |}
        {c |} 4  5  6 {c |}  *  {c |} 0  0  1 {c |}   =   {c |} 6  4  5 {c |}{right:(4)}
        {c |} 7  8  9 {c |}     {c |} 1  0  0 {c |}       {c |} 9  7  8 {c |}
	{c BLC}{c -}       {c -}{c BRC}     {c BLC}{c -}       {c -}{c BRC}       {c BLC}{c -}       {c -}{c BRC}


{pstd}
假设我们通过形成 {it:PA} 来重新排序 {it:A} 的行。显然，我们可以通过形成 {it:P}^(-1){it:PA} 来还原行。由于置换矩阵是正交的，它们的逆等于它们的转置。因此，我们使用的置换矩阵 (0,1,0\0,0,1\1,0,0) 的逆为 (0,0,1\1,0,0\0,1,0)。例如，取我们的结果 (3)

             {it:P}{bf:'}      *      {it:PA}        =        {it:A}
	{c TLC}{c -}       {c -}{c TRC}     {c TLC}{c -}       {c -}{c TRC}       {c TLC}{c -}       {c -}{c TRC}
	{c |} 0  0  1 {c |}     {c |} 4  5  6 {c |}       {c |} 1  2  3 {c |}
	{c |} 1  0  0 {c |}  *  {c |} 7  8  9 {c |}   =   {c |} 4  5  6 {c |}{right:(3')}
	{c |} 0  1  0 {c |}     {c |} 1  2  3 {c |}       {c |} 7  8  9 {c |}
	{c BLC}{c -}       {c -}{c BRC}     {c BLC}{c -}       {c -}{c BRC}       {c BLC}{c -}       {c -}{c BRC}

{pstd}
让我们总结一下：

{phang2}
    1.  一个置换矩阵 {it:P} 是一个方阵，其行是单位矩阵的置换。

{phang2}
    2.  {it:PA} = {it:A} 的行排列。

{phang2}
    3.  {it:AP} = {it:A} 的列排列。

{phang2}
    4.  逆置换由 {it:P}' 给出。

{phang2}
    5.  {it:P}'{it:PA} = {it:A}。

{phang2}
    6.  {it:APP}' = {it:A}。


{marker remarks2}{...}
{title:置换矩阵的来源}

{pstd}
一些 Mata 的矩阵函数隐式地置换了矩阵的行（或列）。例如，矩阵 {it:A} 的 LU 分解定义为

		{it:A} = {it:L}*{it:U}

{pstd}
其中 {it:L} 是下三角矩阵，{it:U} 是上三角矩阵。对于任何矩阵 {it:A}，可以解出 {it:L} 和 {it:U}，Mata 有一个可以完成此操作的函数（见 {bf:{help mf_lud_zh:[M-5] lud()}}）。然而，Mata 的函数并没有如所述的问题解出，而是解出了

		{it:P}'{it:A} = {it:L}*{it:U}

{pstd}
其中 {it:P}' 是一个由 Mata 自己生成的置换矩阵！为了澄清；Mata 的函数求解的 {it:L} 和 {it:U} 是针对 {it:A} 的行置换，而不是 {it:A} 本身，尽管该函数确实告诉你它选择了什么置换（函数返回 {it:L}、{it:U} 和 {it:P}）。该函数置换行的原因是，这样可以生成更准确的答案。

{pstd}
你有时会读到一个函数进行“主元选择”。这意味着，函数并不是针对给定的矩阵来解决问题，而是对原矩阵的一个置换进行求解，函数选择置换以最小化数值的舍入误差。这类函数通常会返回置换矩阵和其他结果，因为你将需要它。

{pstd}
例如，LU 分解的一个用途是计算逆矩阵。如果 {it:A} = {it:L}*{it:U}，那么 {it:A}^(-1) = {it:U}^(-1)*{it:L}^(-1)。计算三角矩阵的逆是一个简单的问题，因此计算逆矩阵的一个步骤是

{phang2}
1.  将 {it:A} 分解为 {it:L} 和 {it:U}，

{phang2}
2.  计算 {it:U}^(-1)，

{phang2}
3.  计算 {it:L}^(-1)，以及

{phang2}
4.  将结果相乘。

{pstd}
这将是解决方案，除了 LU 分解函数不会将 {it:A} 分解为 {it:L} 和 {it:U}；它分解的是 {it:P}'{it:A}，但函数确实告诉我们 {it:P}。因此我们可以写为，

		    {it:P}'{it:A}  =  {it:L}*{it:U}
		      {it:A}  =  {it:P}*{it:L}*{it:U}                   （记得 {it:P}'^(-1) = {it:P}）
		 {it:A}^(-1)  =  {it:U}^(-1)*{it:L}^(-1)*{it:P}'

{pstd}
因此，我们问题的解决方案是照计划使用 {it:U} 和 {it:L} -- 计算 {it:U}^(-1)*{it:L}^(-1) -- 然后对该结果进行列置换，可以通过后乘 {it:P}' 来实现。

{pstd}
然而，还有一个细节尚未向你揭示：Mata 的 LU 分解函数并不返回 {it:P}，这个置换矩阵。它返回的是 {it:p}，一个等同于 {it:P} 的置换向量，因此最后一步 -- 通过后乘 {it:P}' 来形成列置换 -- 是以不同的方式进行的。这是接下来的一个主题。

{pstd}
置换向量比置换矩阵更有效，但你会发现它们在数学上并不那么透明。因此，在处理返回置换向量的函数时 -- 处理置换行或列的函数 -- 要考虑置换矩阵，然后再转换回置换向量。


{marker remarks3}{...}
{title:置换向量}

{pstd}
置换向量与 Mata 的下标运算符一起使用，因此在解释置换向量之前，让我们先理解下标。

{pstd}
毫不奇怪，Mata 允许下标操作。给定矩阵 

			 {c TLC}{c -}       {c -}{c TRC}
		         {c |} 1  2  3 {c |}
		   {it:A}  =  {c |} 4  5  6 {c |}
		         {c |} 7  8  9 {c |}
			 {c BLC}{c -}       {c -}{c BRC}

{pstd}
Mata 理解：

	      {it:A}{cmd:[2,3]}  =  6

{pstd}
Mata 还理解，如果一个或另一个下标被指定为 {cmd:.}（缺失值），则选择整个列或行：

			 {c TLC}{c -} {c -}{c TRC}
		         {c |} 3 {c |}
	      {it:A}{cmd:[.,3]}  =  {c |} 6 {c |}
		         {c |} 9 {c |}
			 {c BLC}{c -} {c -}{c BRC}

			 {c TLC}{c -}       {c -}{c TRC}
	      {it:A}{cmd:[2,.]}  =  {c |} 4  5  6 {c |}
			 {c BLC}{c -}       {c -}{c BRC}

{pstd}
Mata 还理解，如果为任一下标指定了向量

	   {c TLC}{c -} {c -}{c TRC}         {c TLC}{c -}       {c -}{c TRC}
           {c |} 2 {c |}         {c |} 4  5  6 {c |}
	{it:A}{cmd:[} {c |} 3 {c |} {cmd:, .]} =  {c |} 7  8  9 {c |}
           {c |} 2 {c |}         {c |} 4  5  6 {c |}
	   {c BLC}{c -} {c -}{c BRC}         {c BLC}{c -}       {c -}{c BRC}

{pstd}
在 Mata 中，我们实际上可以将上面写作 {it:A}{cmd:[(2\3\2),]}，而 Mata 会理解我们想要由矩阵 {it:A} 的第2、第3和第2行以及所有列组成的矩阵。类似地，我们可以请求所有行和第2、第3和第2列：

{pstd}
并且 

			 {c TLC}{c -}       {c -}{c TRC}
                         {c |} 2  3  2 {c |}
	 {it:A}{cmd:[.,(2,3,2)]} =  {c |} 5  6  5 {c |}
                         {c |} 8  9  8 {c |}
			 {c BLC}{c -}       {c -}{c BRC}


{pstd}
在上面的示例中，我们将 (2,3,2) 作为行向量书写，因为这样似乎更合逻辑，但我们也可以写作 {it:A}{cmd:[.,(2\3\2)]}。在下标中，Mata 并不在乎向量是行向量还是列向量。

{pstd}
无论如何，我们可以在 Mata 的下标内使用索引向量来选择矩阵的行和列，这意味着我们可以对它们进行置换。所需的唯一条件是我们指定的向量必须包含从 1 到 {it:n} 的整数的置换，因为否则我们将重复某些行或列并省略其他行或列。

{pstd}
一个置换向量是一个 {it:n} {it:x} 1 或 1 {it:x} {it:n} 向量，包含从 1 到 {it:n} 的整数的置换。例如，等价于置换矩阵的置换向量

			 {c TLC}{c -}       {c -}{c TRC}
                         {c |} 0  1  0 {c |}
	           {it:P}  =  {c |} 0  0  1 {c |}
                         {c |} 1  0  0 {c |}
			 {c BLC}{c -}       {c -}{c BRC}

{pstd}
是

			 {c TLC}{c -} {c -}{c TRC}
                         {c |} 2 {c |}
		  {it:p}   =  {c |} 3 {c |}
			 {c |} 1 {c |}
			 {c BLC}{c -} {c -}{c BRC}

{pstd}
{it:p} 可以与下标结合使用来置换 {it:A} 的行

			 {c TLC}{c -}       {c -}{c TRC}
                         {c |} 4  5  6 {c |}
	      {it:A}{cmd:[}{it:p}{cmd:,.]}  =  {c |} 7  8  9 {c |}
                         {c |} 1  2  3 {c |}
			 {c BLC}{c -}       {c -}{c BRC}


{pstd}
同样，{it:A}{cmd:[.,}{it:p}{cmd:]} 将置换列。  

{pstd}
此外，在赋值操作符等号的左侧也可以使用下标。所以到目前为止，我们已经假设下标在赋值操作符的右侧，比如

	{it:B}{cmd: =} {it:A}{cmd:[}{it:p}{cmd:,.]}

{pstd}
我们已经了解到，如果 {it:p}=(2\3\1) （或 {it:p}=(2,3,1)），结果是将 {it:A} 的第二行复制到 {it:B} 的第一行，将 {it:A} 的第三行复制到 {it:B} 的第二行，将 {it:A} 的第一行复制到 {it:B} 的第三行。编码

	{it:B}{cmd:[}{it:p}{cmd:,.] =} {it:A}

{pstd}
做的是相反的：它将 {it:A} 的第一行复制到 {it:B} 的第二行，将 {it:A} 的第二行复制到 {it:B} 的第三行，将 {it:A} 的第三行复制到 {it:B} 的第一行。 {it:B}{cmd:[}{it:p}{cmd:,.] =} {it:A} 实际上是 {it:C} {cmd:=} {it:A}{cmd:[}{it:p}{cmd:,.]} 的逆，即如果我们编码

	{it:C} {cmd:=} {it:A}{cmd:[}{it:p}{cmd:,.]}
	{it:B}{cmd:[}{it:p}{cmd:,.] =} {it:C}

{pstd}
{it:B} 将等于 {it:A}，如果我们编码 

	{it:C}{cmd:[}{it:p}{cmd:,.] =} {it:A}
	{it:B} {cmd:=} {it:C}{cmd:[}{it:p}{cmd:,.]}

{pstd}
{it:B} 也将等于 {it:A}。

{pstd}
然而，当在左侧使用下标时，必须注意一个陷阱：左侧的矩阵必须已经存在，并且必须具有适当（这里相同）的维度。因此，在执行逆复制时，通常会编码

	{it:B} {cmd:=} {it:C}
	{it:B}{cmd:[}{it:p}{cmd:,.] =} {it:C}

{pstd}
第一行并不是多余的；这是确保 {it:B} 存在且尺寸合适的保证，尽管我们也可以编码

	{it:B} {cmd:= J(rows(}{it:C}{cmd:), cols(}{it:C}{cmd:), .)}
	{it:B}{cmd:[}{it:p}{cmd:,.] =} {it:C}

{pstd}
首选构造是因为它确保 {it:B} 与 {it:C} 类型相同。如果你真的喜欢第二种形式，你应该编码

	{it:B} {cmd:= J(rows(}{it:C}{cmd:), cols(}{it:C}{cmd:), missingof(}{it:C}{cmd:))}
	{it:B}{cmd:[}{it:p}{cmd:,.] =} {it:C}

{pstd}
回到首选代码

	{it:B} {cmd:=} {it:C}
	{it:B}{cmd:[}{it:p}{cmd:,.] =} {it:C}

{pstd}
一些程序员将其合并为一个语句：
	
	{cmd:(}{it:B}{cmd:=}{it:C}{cmd:)[}{cmd:p,.] =} {it:C}

{pstd}
此外，Mata 提供了一个 {cmd:invorder(}{it:p}{cmd:)}（见 {bf:{help mf_invorder_zh:[M-5] invorder()}}），
将返回一个适合在右侧使用的 {it:p} 的反向置换，因此你也可以编码

	{it:B} {cmd:=} {it:C}{cmd:[invorder(}{it:p}{cmd:),.]}


{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <m1_permutation.sthlp>}