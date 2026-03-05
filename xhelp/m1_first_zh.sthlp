{smcl}
{* *! version 1.1.8  15may2018}{...}
{vieweralsosee "[M-1] First" "mansection M-1 First"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-1] Intro" "help m1_intro_zh"}{...}
{viewerjumpto "Description" "m1_first_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "m1_first_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "m1_first_zh##remarks"}
{help m1_first:English Version}
{hline}{...}
{p2colset 1 16 18 2}{...}
{p2col:{bf:[M-1] First} {hline 2}}介绍与初始会话
{p_end}
{p2col:}({mansection M-1 First:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:描述}

{pstd}
Mata 是 Stata 的一个组成部分。它是一种矩阵编程语言，可以以交互方式使用，也可以作为 do-file 和 ado-file 的扩展使用。因此

{phang2}
  1.  Mata 可供希望以矩阵形式思考并进行（不一定简单的）矩阵计算的用户交互使用，
  
{phang2}
  2.  Mata 可供希望向 Stata 添加功能的高级 Stata 程序员使用。

{pstd}
Mata 为每个人提供了一些功能。  

{pstd}
Mata 的主要特点是速度快，并且其语法类似于 C 语言。


{marker linkspdf}{...}
{title:链接到 PDF 文档}

        {mansection M-1 FirstRemarksandexamples:备注和示例}

{pstd}
以上部分不包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{pstd}
以下标题下展示了此介绍：

	{help m1_first##remarks1:调用 Mata}
	{help m1_first##remarks2:使用 Mata}
	{help m1_first##remarks3:出错：解读错误信息}
	{help m1_first##remarks4:处理实数、复数和字符串}
	{help m1_first##remarks5:处理标量、向量和矩阵}
	{help m1_first##remarks6:处理函数}
	{help m1_first##remarks7:区分实值和复值}
	{help m1_first##remarks8:处理矩阵和标量函数}
	{help m1_first##remarks9:逐元素计算：冒号运算符}
	{help m1_first##remarks10:编写程序}
	{help m1_first##remarks11:更多函数}
	{help m1_first##remarks12:Mata 环境命令}
	{help m1_first##remarks13:退出 Mata}
	
{pstd}如果您按照建议的顺序阅读条目
{bf:{help mata_zh:[M-0] Intro}}，请查看 {bf:{help m1_interactive_zh:[M-1] Interactive}}。

{marker remarks1}{...}
{title:调用 Mata}

{pstd}
要进入 Mata，在 Stata 的点提示符下输入 {cmd:mata} 并按回车；要退出 Mata，在 Mata 的冒号提示符下输入 {cmd:end}：

	. {cmd:mata}{col 48}<- 输入 {cmd:mata} 以进入 Mata
	{hline 10} mata (输入 {cmd:end} 以退出) {hline 3}
        : {cmd:2+2}{col 48}<- 在冒号提示符下输入 Mata 语句
          
	: {cmd:end}{col 48}<- 输入 {cmd:end} 返回 Stata
	{hline 38}

	. _{col 48}<- 您已返回 Stata


{marker remarks2}{...}
{title:使用 Mata}

{pstd}
当您在 Mata 中输入语句时，Mata 会编译您输入的内容，如果编译没有错误，则执行它：

{pstd}

	: {cmd:2+2}
	  4

	: _

{pstd}
我们输入了 {cmd:2+2}，这是一般表达式类中的特定示例。Mata 的响应是 4，这是该表达式的计算结果。

{pstd}
您输入的通常是表达式，尽管您可能会选择更复杂的示例。当一个表达式没有赋值给变量时，结果会被显示。赋值通过 {cmd:=} 运算符进行：

	: {cmd:x = 2 + 2}

	: {cmd:x}
	  4

	: _

{pstd}
当我们输入 "{cmd:x=2+2}" 时，表达式被计算并存储在我们刚刚命名的变量 {cmd:x} 中。结果并不会被显示。然而，我们可以通过简单地输入 "{cmd:x}" 来查看 {cmd:x} 的内容。从 Mata 的角度看，{cmd:x} 不仅是一个变量，还是一个表达式，尽管是相对简单的表达式。就像 {cmd:2+2} 说加载 2，再加载另一个 2，并将它们相加一样，表达式 {cmd:x} 则表示加载 {cmd:x} 并停在那里。

{pstd}
顺便说一句，Mata 区分大小写。{cmd:X} 与 {cmd:x} 不同：

	: {cmd:X = 2 + 3}

	: {cmd:x}
	  4

	: {cmd:X}
	  5


{marker remarks3}{...}
{title:出错：解读错误信息}

{pstd}
如果您犯了错误，Mata 会报警，然后您可以继续。比如，

	: {cmd:2,,3}
	{err:invalid expression}
	r(3000);

	: _

{pstd}
"{cmd:2,,3}" 对 Mata 而言没有意义，因此 Mata 抱怨。这是所谓的编译时错误的例子；Mata 无法理解我们输入的内容。

{pstd}
另一种错误称为运行时错误。例如，我们没有名为 {cmd:y} 的变量。让我们请求 Mata 显示 {cmd:y} 的内容：

	: {cmd:y}
	         {err:<istmt>:   3499  y not found}
	r(3499);

	: _

{pstd}
在这里，我们输入的内容完全合理——"给我 {cmd:y} "——但 {cmd:y} 从未被定义。
这个丑陋的消息被称为运行时错误消息——见 {bf:{help m2_errors_zh:[M-2] Errors}} 以获取完整描述——但重要的是要理解以下区别：

	{err:invalid expression}

{pstd}
    和

	{err:<istmt>:   3499  y not found}

{pstd}
运行时消息以标识符（这里是 {cmd:<istmt>}）和一个数字（这里是 3499）作为前缀。Mata 正在告诉我们：“我正在执行您的 {it:istmt} [这就是您输入的所有内容]，我遇到了错误 3499，具体的细节是我无法找到 {cmd:y}。”

{pstd}
编译时错误消息的形式更简单：“invalid expression”。当您收到这样的无前缀错误消息时，这意味着 Mata 无法理解您输入的内容。当您收到更复杂的错误消息时，这意味着 Mata 理解了您输入的内容，但在执行请求时出现了问题。

{pstd}
区别编译时错误和运行时错误的另一种方法是查看返回代码。编译时错误的返回代码为 3000：

	: {cmd:2,,3}
	{err:invalid expression}
	r(3000);

{pstd}
运行时错误的返回代码可能在 3000 以上，但绝不会恰好为 3000：

	: {cmd:y}
	         {err:<istmt>:   3499  y not found}
	r(3499);


{pstd}
无论错误是编译时还是运行时，一旦错误消息发出，Mata 就准备继续，就像错误从未发生过一样。


{marker remarks4}{...}
{title:处理实数、复数和字符串}

{pstd}
正如我们所见，Mata 可以处理实数：

	: {cmd:2+3}
	  5

{pstd}
Mata 同样理解复数；您可以通过在后面加小写的 {cmd:i} 来表示虚部：

	: {cmd:1+2i + 4-1i}
	  5+1i

{pstd}
对于虚数，您可以省略实部：

	: {cmd:1+2i - 2i}
	  1

{pstd}
无论数字是实数还是复数，您都可以使用与实部相同的计算机表示法来表示虚部：

	: {cmd:2.5e+3i}
	  2500i

	: {cmd:1.25e+2+2.5e+3i}              /* 也就是 1.25e+02 + 2.5e+03i */
	 125 + 2500i

{pstd}
我们故意将最后一个示例写得几乎不可读，仅是为了强调 Mata 能够理解它。  


{pstd}
Mata 还理解字符串，您可以用双引号将其括起来：

	: {cmd:"Alpha"+"Beta"}
	  AlphaBeta

{pstd}
和 Stata 一样，Mata 理解简单和复合的双引号：

	: {cmd:`"Alpha"'+`"Beta"'}
	  AlphaBeta

{pstd}
您可以添加复数和实数，

	: {cmd:1+2i + 3}
	  4+2i

{pstd}
但您不能将实数或复数与字符串相加：

	: {cmd:2 + "alpha"}
	{err:type mismatch:  real + string now allowed}
	r(3000);

{pstd}
我们遇到了运行时错误。Mata 对 {cmd:2 + "alpha"} 是理解的；它只是无法执行我们的请求。 


{marker remarks5}{...}
{title:处理标量、向量和矩阵}

{pstd}
除了理解标量——无论是实数、复数还是字符串——Mata 还理解由实数、复数和字符串元素构成的向量和矩阵：

	: {cmd:x = (1,2)}

	: {cmd:x}
        {res}       {txt}1   2
            {c TLC}{hline 9}{c TRC}
          1 {c |}  {res}1   2{txt}  {c |}
            {c BLC}{hline 9}{c BRC}{txt}

{pstd}
{cmd:x} 现在包含行向量 (1,2)。我们可以对向量进行加法运算：

	: {cmd:x + (3,4)}
        {res}       {txt}1   2
            {c TLC}{hline 9}{c TRC}
          1 {c |}  {res}4   6{txt}  {c |}
            {c BLC}{hline 9}{c BRC}{txt}

{pstd}
"{cmd:,}" 是
{help m2_op_join_zh:列连接运算符}；诸如 {cmd:(1,2)} 之类的内容是表达式，就像 {cmd:(1+2)} 是表达式一样：

	: {cmd:y = (3,4)}

	: {cmd:z = (x,y)}

	: {cmd:z}
        {res}       {txt}1   2   3   4
            {c TLC}{hline 17}{c TRC}
          1 {c |}  {res}1   2   3   4{txt}  {c |}
            {c BLC}{hline 17}{c BRC}{txt}

{pstd}
在上面，我们可以省去括号，输入 "{cmd:y=3,4}" 后面跟 "{cmd:z=x,y}"，就像使用 {cmd:+} 运算符一样，虽然大多数人发现向量用括号包围时更易于阅读。

{pstd}
{cmd:\} 是 {help m2_op_join_zh:行连接运算符}：

	: {cmd:a = (1\2)}

	: {cmd:a}
            {c TLC}{hline 5}{c TRC}
          1 {c |}  {res}1{txt}  {c |}
          2 {c |}  {res}2{txt}  {c |}
            {c BLC}{hline 5}{c BRC}{txt}

	: {cmd:b = (3\4)}

	: {cmd:c = (a\b)}

	: {cmd:c}
        {res}       {txt}1
            {c TLC}{hline 5}{c TRC}
          1 {c |}  {res}1{txt}  {c |}
          2 {c |}  {res}2{txt}  {c |}
          3 {c |}  {res}3{txt}  {c |}
          4 {c |}  {res}4{txt}  {c |}
            {c BLC}{hline 5}{c BRC}

{pstd}
利用列连接和行连接运算符，我们可以输入矩阵：

	: {cmd:A = (1,2 \ 3,4)}

	: {cmd:A}
        {res}       {txt}1   2
            {c TLC}{hline 9}{c TRC}
          1 {c |}  {res}1   2{txt}  {c |}
          2 {c |}  {res}3   4{txt}  {c |}
            {c BLC}{hline 9}{c BRC}{txt}

{pstd}
这些运算符的使用并不限于标量。请记住，{cmd:x} 是行向量 (1,2)，{cmd:y} 是行向量 (3,4)，{cmd:a} 是列向量 (1\2)，而 {cmd:b} 是列向量 (3\4)。因此，

	: {cmd:x\y}
        {res}       {txt}1   2
            {c TLC}{hline 9}{c TRC}
          1 {c |}  {res}1   2{txt}  {c |}
          2 {c |}  {res}3   4{txt}  {c |}
            {c BLC}{hline 9}{c BRC}{txt}

	: {cmd:a,b}
            {c TLC}{hline 9}{c TRC}
          1 {c |}  {res}1   3{txt}  {c |}
          2 {c |}  {res}2   4{txt}  {c |}
            {c BLC}{hline 9}{c BRC}{txt}

{pstd}
但如果我们尝试一些无意义的操作，就会收到错误：

	: {cmd:a,x}
	         {err:<istmt>:  3200  conformability error}

{pstd}
我们创建复向量和矩阵的方式与创建实向量和矩阵的方式一致，唯一区别在于它们的元素是复数：

	: {cmd:Z = (1+1i, 2+3i \ 3-2i , -1-1i)}

	: {cmd:Z}
        {res}       {txt}      1         2
            {c TLC}{hline 21}{c TRC}
          1 {c |}  {res} 1 + 1i    2 + 3i{txt}  {c |}
          2 {c |}  {res} 3 - 2i   -1 - 1i{txt}  {c |}
            {c BLC}{hline 21}{c BRC}{txt}

{pstd}
同样，我们可以创建字符串向量和矩阵，这些向量和矩阵中包含字符串元素：

        : {cmd:S = ("1st element", "2nd element" \ "another row", "last element")}

	: {cmd:S}
        {res}       {txt}           1              2
            {c TLC}{hline 31}{c TRC}
          1 {c |}  {res} 1st element    2nd element{txt}  {c |}
          2 {c |}  {res} another row   last element{txt}  {c |}
            {c BLC}{hline 31}{c BRC}{txt}

{pstd}
对于字符串，单个元素的长度最大可达 2,147,483,647 字节。


{marker remarks6}{...}
{title:处理函数}

{pstd}
Mata 的表达式还包括函数：

	: {cmd:sqrt(4)}
	  2

	: {cmd:sqrt(-4)}
	  .

{pstd}
当我们请求 -4 的平方根时，Mata 响应 "{cmd:.}"。此外，{cmd:.} 可以像任何其他数字一样存储：

	: {cmd:findout = sqrt(-4)}
	
	: {cmd:findout}
	  .

{pstd}
"{cmd:.}" 表示缺失，即我们的计算没有答案。取负数的平方根并不是错误；它仅仅产生缺失。对 Mata 来说，缺失是与其他数字一样的数字，并且所有运算符的规则都被推广以理解缺失。例如，加法规则被推广为缺失加任何东西仍然是缺失：

	: {cmd:2 + .}
	  .

{pstd}
尽管如此，看到 Mata 对 {cmd:sqrt(-4)} 输出缺失结果也许令人惊讶。我们说 Mata 理解复数，因此答案不应该是 2i 吗？答案是确实应该如此，如果您在复平面上工作，但在其他情况下，缺失可能是更好的答案。Mata 尝试根据上下文直观地推测您想要的答案，特别是使用继承规则。如果请求一个实数的平方根，您会得到一个实数；如果请求复数的平方根，您会得到复数：

	: {cmd:sqrt(-4+0i)}
	  2i

{pstd}
这里的复数表示多分量：{cmd:-4+0i} 是一个复数；它仅仅有 0 的虚部。因此：

	: {cmd:areal = -4}

	: {cmd:acomplex = -4 + 0i}

	: {cmd:sqrt(areal)}
	 .

	: {cmd:sqrt(acomplex)}
	  2i

{pstd}
如果您有一个实标量、向量或矩阵并想将其转换为复数，使用 {cmd:C()} 函数，其含义为“转换为复数”：

	: {cmd:sqrt(C(areal))}
	  2i

{pstd}
{cmd:C()} 的文档在 {bf:{help mf_c_zh:[M-5] C()}} 中。
{cmd:C()} 允许一个或两个参数。使用一个参数时，它转换为复数。使用两个参数时，它将两个实参数转换为一个复数。因此您可以输入 

	: {cmd:sqrt(-4+2i)}
	  .485868272 + 2.05817103i

{pstd}
或者您可以输入 

	: {cmd:sqrt(C(-4,2))}
	  .485868272 + 2.05817103i

{pstd}
顺便提一句，使用一个参数时，{cmd:C()} 也可以接收复数，这样它就不做任何事情：

	: {cmd:sqrt(C(acomplex))}
	  2i


{marker remarks7}{...}
{title:区分实值和复值}

{pstd}
几乎不可能察觉实值和具有零虚部的复值之间的区别：

	: {cmd:areal = -4}

	: {cmd:acomplex = -4 + 0i}

	: {cmd:areal}
	  -4

	: {cmd:acomplex}
	  -4

{pstd}
但是，如我们所见，区别是重要的：{cmd:sqrt(areal)} 是缺失，而 {cmd:sqrt(acomplex)} 是 2i。  
一种解决方案是 {help mf_eltype_zh:eltype()} 函数：

	: {cmd:eltype(areal)}
	  real

	: {cmd:eltype(acomplex)}
	  complex

{pstd}
{cmd:eltype()} 也可以与字符串一起使用， 

	: astring = "hello"

	: {cmd:eltype(astring)}
	  string

{pstd}
但这在编程上下文中最为有用。


{marker remarks8}{...}
{title:处理矩阵和标量函数}

{pstd}
某些函数是矩阵函数：它们需要矩阵并返回矩阵。Mata 的 {help mf_invsym_zh:invsym({it:X})} 就是这样的一个函数。它返回对称实矩阵 {it:X} 的逆矩阵：

	: {cmd:X = (76, 53, 48 \ 53, 88, 46 \ 48, 46, 63)}

	: {cmd:Xi = invsym(X)}

	: {cmd:Xi}
        {res}{txt}[对称]
                          1              2              3
            {c TLC}{hline 46}{c TRC}
          1 {c |}  {res} .0298458083                              {txt}  {c |}
          2 {c |}  {res}-.0098470272    .0216268926               {txt}  {c |}
          3 {c |}  {res}-.0155497706   -.0082885675    .0337724301{txt}  {c |}
            {c BLC}{hline 46}{c BRC}{txt}

	: {cmd:Xi*X}
        {res}       {txt}           1              2              3
            {c TLC}{hline 46}{c TRC}
          1 {c |}  {res}           1   -8.67362e-17   -8.50015e-17{txt}  {c |}
          2 {c |}  {res}-1.38778e-16              1   -1.02349e-16{txt}  {c |}
          3 {c |}  {res}           0    1.11022e-16              1{txt}  {c |}
            {c BLC}{hline 46}{c BRC}{txt}

{pstd}
最后一个矩阵 {cmd:Xi*X} 与单位矩阵的差异仅在于不可避免的计算舍入误差。

{pstd}
其他函数数学上讲是标量函数。{cmd:sqrt()} 是一个示例，因为说 {cmd:sqrt(}{it:X}{cmd:)} 是没有意义的。
（也就是说，除非我们是在讲 Cholesky 平方根分解时，才有意义地讨论 {cmd:sqrt(}{it:X}{cmd:)}。Mata 有这样一个矩阵 
函数；见 {bf:{help mf_cholesky_zh:[M-5] cholesky()}}。）

{pstd}
当一个函数在数学上是标量函数时，相关的 Mata 函数通常会允许向量和矩阵参数，然后，该 Mata 函数会对每个元素单独计算：

	: {cmd:M = (1,2 \ 3,4 \ 5,6)}

	: {cmd:M}
        {res}       {txt}1   2
            {c TLC}{hline 9}{c TRC}
          1 {c |}  {res}1   2{txt}  {c |}
          2 {c |}  {res}3   4{txt}  {c |}
          3 {c |}  {res}5   6{txt}  {c |}
            {c BLC}{hline 9}{c BRC}{txt}

	: {cmd:S = sqrt(M)}

	: {cmd:S}
        {res}       {txt}          1             2
            {c TLC}{hline 29}{c TRC}
          1 {c |}  {res}          1   1.414213562{txt}  {c |}
          2 {c |}  {res}1.732050808             2{txt}  {c |}
          3 {c |}  {res}2.236067977   2.449489743{txt}  {c |}
            {c BLC}{hline 29}{c BRC}{txt}

	: {cmd:S[1,2]*S[1,2]}
	  2

	: {cmd:S[2,1]*S[2,1]}
	  3

{pstd}
当函数返回以这种方式计算的结果时，称其为返回逐元素的结果。


{marker remarks9}{...}
{title:逐元素计算：冒号运算符}

{pstd}
Mata 的运算符，比如 {cmd:+}（加法）和 {cmd:*}（乘法），按您预期的方式工作。特别是，{cmd:*} 实现矩阵乘法：

	: {cmd:A = (1, 2 \ 3, 4)}

	: {cmd:B = (5, 6 \ 7, 8)}

	: {cmd:A*B}
        {res}       {txt} 1    2
            {c TLC}{hline 11}{c TRC}
          1 {c |}  {res}19   22{txt}  {c |}
          2 {c |}  {res}43   50{txt}  {c |}
            {c BLC}{hline 11}{c BRC}{txt}

{pstd}
结果的第一个元素是通过 1*5+2*7=19 计算得出的。

{pstd}
有时，您确实希望获得逐元素结果。当您这样做时，在运算符前放置一个冒号：Mata 的 {cmd::*} 运算符执行逐元素乘法：

	: {cmd:A:*B}
        {res}       {txt} 1    2
            {c TLC}{hline 11}{c TRC}
          1 {c |}  {res} 5   12{txt}  {c |}
          2 {c |}  {res}21   32{txt}  {c |}
            {c BLC}{hline 11}{c BRC}{txt}

{pstd}
查看 {bf:{help m2_op_colon_zh:[M-2] op_colon}} 以获取更多信息。


{marker remarks10}{...}
{title:编写程序}

{pstd}
Mata 是一门完整的编程语言；它允许您创建自己的函数：

	: {cmd:function add(a,b) return(a+b)}

{pstd}
这一条语句创建了一个新函数，尽管您可能会更希望我们这样输入：

	: {cmd:function add(a, b)}
	> {cmd:{c -(}}
	>         {cmd:return(a+b)}
	> {cmd:{c )-}}

{pstd} 
因为这能使它显而易见，程序可以包含多行。
无论哪种情况，定义后，我们可以使用该函数：

	: {cmd:add(1,2)}
	  3

	: {cmd:add(1+2i,4-1i)}
	  5+1i

	: {cmd:add( (1,2), (3,4) )}
        {res}       {txt}1   2
            {c TLC}{hline 9}{c TRC}
          1 {c |}  {res}4   6{txt}  {c |}
            {c BLC}{hline 9}{c BRC}{txt}

	: {cmd:add(x,y)}
        {res}       {txt}1   2
            {c TLC}{hline 9}{c TRC}
          1 {c |}  {res}4   6{txt}  {c |}
            {c BLC}{hline 9}{c BRC}{txt}
	
	: {cmd:add(A,A)}
        {res}       {txt}1   2
            {c TLC}{hline 9}{c TRC}
          1 {c |}  {res}2   4{txt}  {c |}
          2 {c |}  {res}6   8{txt}  {c |}
            {c BLC}{hline 9}{c BRC}{txt}

	: {cmd:Z1 = (1+1i, 1+1i \ 2, 2i)}
	: {cmd:Z2 = (1+2i, -3+3i \ 6i, -2+2i)}
	: {cmd:add(Z1, Z2)}
        {res}       {txt}      1         2
            {c TLC}{hline 21}{c TRC}
          1 {c |}  {res} 2 + 3i   -2 + 4i{txt}  {c |}
          2 {c |}  {res} 2 + 6i   -2 + 4i{txt}  {c |}
            {c BLC}{hline 21}{c BRC}{txt}


	: {cmd:add("Alpha","Beta")}
	  AlphaBeta

	: {cmd:S1 = ("one", "two" \ "three", "four")}
	: {cmd:S2 = ("abc", "def" \ "ghi", "jkl")}
	: {cmd:add(S1, S2)}
        {res}       {txt}       1          2
            {c TLC}{hline 23}{c TRC}
          1 {c |}  {res}  oneabc     twodef{txt}  {c |}
          2 {c |}  {res}threeghi    fourjkl{txt}  {c |}
            {c BLC}{hline 23}{c BRC}{txt}

{pstd}
当然，我们的小函数 {cmd:add()} 并没有做 {cmd:+} 运算符已经做的事情，但我们可以编写一个程序来执行不同的操作。以下程序将允许我们生成 {it:n} {it:x} {it:n} 的单位矩阵：

	: {cmd:real matrix id(real scalar n)}
	> {cmd:{c -(}}
	>         {cmd:real scalar i}
	>         {cmd:real matrix res}
	>
	>         {cmd:res = J(n, n, 0)}
	>         {cmd:for (i=1; i<=n; i++) {c -(}}
        >                 {cmd:res[i,i] = 1}
	>         {cmd:{c )-}}
        >         {cmd:return(res)}
	> {cmd:{c )-}}

	: {cmd:I3 = id(3)}

	: {cmd:I3}
        {res}{txt}[对称]
               1   2   3
            {c TLC}{hline 13}{c TRC}
          1 {c |}  {res}1        {txt}  {c |}
          2 {c |}  {res}0   1    {txt}  {c |}
          3 {c |}  {res}0   0   1{txt}  {c |}
            {c BLC}{hline 13}{c BRC}{txt}

{pstd}
程序行 {cmd:res = J(n, n, 0)} 中的函数 {cmd:J()} 是 Mata 的内置函数 
返回一个 {cmd:n} {it:x} {cmd:n} 矩阵，矩阵中元素均为 0 ({cmd:J(}{it:r}{cmd:,} {it:c}{cmd:,} {it:val}{cmd:)} 返回一个 {it:r} {it:x} {it:c} 矩阵，其中所有元素均等于 {it:val})；
见 {bf:{help mf_j_zh:[M-5] J()}}。

{pstd}
{cmd:for (i=1; i<=n; i++)} 表示从 i=1 开始，只要 {cmd:i<=n}，就执行大括号内的内容（将 {cmd:res[i,i]} 设置为 1），
然后（我们又回到 {cmd:for} 这部分），将 i 增加。

{pstd}
最后一行—— {cmd:return(res)}——是说返回我们刚刚创建的矩阵。

{pstd}
实际上，与 {cmd:add()} 一样，我们不需要 {cmd:id()}，因为 
Mata 有一个内置函数 {cmd:I(}{it:n}{cmd:)} 用于生成单位矩阵，但观察问题如何被编程化是很有趣的。


{marker remarks11}{...}
{title:更多函数}

{pstd}
Mata 已经有很多函数，而本手册的大部分内容都是在记录这些函数的功能；见 {bf:{help m4_intro_zh:[M-4] Intro}}。
但现在重要的是，许多函数本身就是用 Mata 编写的！

{pstd}
其中一个函数是 {cmd:pi()}；它不接受参数并返回 {it:pi} 的值。其代码如下：

	{cmd:real scalar pi() return(3.141592653589793238462643)}

{pstd}
没有理由输入上述函数，因为它已经包含在 Mata 中：

	: {cmd:pi()}
	  3.141592654

{pstd}
当 Mata 列出一个结果时，它不会显示这么多位数，但我们可以请求查看更多：

	: {cmd:printf("%17.0g", pi())}
	  3.14159265358979

{pstd}
其他 Mata 函数包括双曲函数 {cmd:tanh(}{it:u}{cmd:)}。
{cmd:tanh(}{it:u}{cmd:)} 的代码如下：

        {cmd}numeric matrix tanh(numeric matrix u)
        {c -(}
                numeric matrix  eu, emu

                eu = exp(u)
                emu = exp(-u)
                return( (eu-emu):/(eu+emu) )
        {c )-}{txt}

{pstd}
亲自查看一下：在 Stata 的点提示符（而不是 Mata 的冒号提示符）输入

	. {cmd:viewsource tanh.mata}

{pstd}
当一个函数的代码是用 Mata 编写时（而不是用 C 编写），{cmd:viewsource} 可以显示该代码；见 
{bf:{help m1_source_zh:[M-1] Source}}。

{pstd}
回到 {cmd:tanh()} 函数，

        {cmd}numeric matrix tanh(numeric matrix u)
        {c -(}
                numeric matrix  eu, emu

                eu = exp(u)
                emu = exp(-u)
                return( (eu-emu):/(eu+emu) )
        {c )-}{txt}

{pstd}
这是我们第一次看到单词 {cmd:numeric}：它表示实数或复数。内置（以前编写的）函数 {cmd:exp()} 的功能与
{cmd:sqrt()} 相似，它允许一个实数或复数参数，并相应地返回一个实数或复数结果。换句话说，{cmd:exp()} 允许一个 {cmd:numeric} 参数，并相应地返回一个 {cmd:numeric} 结果。
{cmd:tanh()} 也将像 {cmd:sqrt()} 和 {cmd:exp()} 一样工作。

{pstd}
另一个 {cmd:tanh()} 与 {cmd:sqrt()} 和 {cmd:exp()} 共有的特征是逐元素操作。{cmd:tanh()} 是逐元素的，因为
{cmd:exp()} 是逐元素的，并且因为我们谨慎地使用了 {cmd::/}（逐元素）除法运算符。

{pstd}
无论如何，您不需要输入上述函数，因为它们已经是 Mata 的一部分。您可以通过查看其手册条目了解更多信息 
{bf:{help mf_sin_zh:[M-5] sin()}}。

{pstd}
在另一端，Mata 函数可能会变得很长。以下是 Mata 的函数，用于在 {it:AX}={it:B} 中求解 {it:X}， 
当 {it:A} 为下三角时，将结果 {it:X} 放回 {it:A}：

	{cmd}real scalar _solvelower(
			numeric matrix A, numeric matrix b, 
			|real scalar usertol, numeric scalar userd)
	{
		real scalar             tol, rank, a_t, b_t, d_t
		real scalar             n, m, i, im1, complex_case
		numeric rowvector       sum
		numeric scalar          zero, d

		d  = userd

		if ((n=rows(A))!=cols(A)) _error(3205)
		if (n != rows(b))         _error(3200)
		if (isview(b))            _error(3104)
		m = cols(b)
		rank = n

		a_t = iscomplex(A)
		b_t = iscomplex(b)
		d_t = d<. ? iscomplex(d) : 0

		complex_case = a_t | b_t | d_t

		if (complex_case) {
			if (!a_t) A = C(A)
			if (!b_t) b = C(b)
			if (d<. & !d_t) d = C(d)
			zero = 0i
		}
		else zero = 0 

		if (n==0 | m==0) return(0)

		tol = solve_tol(A, usertol)

		if (abs(d) >=. ) {
			if (abs(d=A[1,1])<=tol) {
				b[1,.] = J(1, m, zero)
				--rank
			}
			else {
				b[1,.] = b[1,.] :/ d
				if (missing(d)) rank = .
			}
	
			for (i=2; i<=n; i++) {
				im1 = i - 1 
				sum = A[|i,1\i,im1|] * b[|1,1\im1,m|]
				if (abs(d=A[i,i])<=tol) {
					b[i,.] = J(1, m, zero)
					--rank
				}
				else {
					b[i,.] = (b[i,.]-sum) :/ d
					if (missing(d)) rank = .
				}
			}
		}
		else {
			if (abs(d)<=tol) {
				rank = 0
				b = J(rows(b), cols(b), zero)
			}
			else {
				b[1,.] = b[1,.] :/ d

				for (i=2; i<=n; i++) {
					im1 = i - 1 
					sum = A[|i,1\i,im1|] * b[|1,1\im1,m|]
					b[i,.] = (b[i,.]-sum) :/ d
				}
			}
	
		}
		return(rank)
	}{txt}
	

{pstd}
如果该函数未被包含在 Mata 中，而您想使用它，您可以将其输入到 do-file 或 ado-file 的末尾（尤其适合您希望用 {help mf_solvelower_zh:_solvelower()} 作为子程序时）。在这种情况下，请记得进入和退出 Mata：

        {hline 41} 开始 ado-file {hline 5}
	{cmd:program} {it:mycommand} 
		...
		{it:ado-file 代码出现在这里}
		...
	{cmd:end}

	{cmd:mata:}
		{it:_solvelower() 代码出现在这里}
	{cmd:end}
        {hline 42} 结束 ado-file {hline 5}

{pstd}
眼尖的读者会注意到我们在 Mata 命令结尾加了个冒号。这是一个细节，而我们这样做的原因在 
{bf:{help m3_mata_zh:[M-3] mata}} 中有解释。

{pstd}
除了通过在 do 和 ado 文件中放入代码来加载函数，您还可以将已编译的函数版本保存在 {cmd:.mo} 文件中 
（见 {bf:{help mata_mosave_zh:[M-3] mata mosave}}）或 Mata 库（见 {bf:{help mata_mlib_zh:[M-3] mata mlib}}）。

{pstd}
对于 {cmd:_solvelower()}，它已经被保存在一个库中，即 Mata 的官方库，因此您无需进行任何操作。


{marker remarks12}{...}
{title:Mata 环境命令}

{pstd}
在使用 Mata 时，有一组命令将告诉您关于 Mata 的环境并对其进行操作。

{pstd}
最有用的命令是 {cmd:mata} {cmd:describe}；
见 {helpb mata describe:[M-3] mata describe}：

	: {cmd:mata describe}
	
              {txt}# bytes   类型                       名称和范围
	{hline 70}
	{res}           76   {txt}变形矩阵        {res}add{txt}()
	{res}          200   {txt}实矩阵                {res}id{txt}()
	{res}           32   {txt}实矩阵                {res}A{txt}[2,2]
	{res}           32   {txt}实矩阵                {res}B{txt}[2,2]
	{res}           72   {txt}实矩阵                {res}I3{txt}[3,3]
	{res}           48   {txt}实矩阵                {res}M{txt}[3,2]
	{res}           48   {txt}实矩阵                {res}S{txt}[3,2]
	{res}           47   {txt}字符串矩阵              {res}S1{txt}[2,2]
	{res}           44   {txt}字符串矩阵              {res}S2{txt}[2,2]
	{res}           72   {txt}实矩阵                {res}X{txt}[3,3]
	{res}           72   {txt}实矩阵                {res}Xi{txt}[3,3]
	{res}           64   {txt}复矩阵             {res}Z{txt}[2,2]
	{res}           64   {txt}复矩阵             {res}Z1{txt}[2,2]
	{res}           64   {txt}复矩阵             {res}Z2{txt}[2,2]
	{res}           16   {txt}实列向量             {res}a{txt}[2]
	{res}           16   {txt}复标量             {res}acomplex
                    8   {txt}实标量                {res}areal
                   16   {txt}实列向量             {res}b{txt}[2]
        {res}           32   {txt}实列向量             {res}c{txt}[4]
        {res}            8   {txt}实标量                {res}findout
                   16   {txt}实行向量             {res}x{txt}[2]
        {res}           16   {txt}实行向量             {res}y{txt}[2]
        {res}           32   {txt}实行向量             {res}z{txt}[4]
        {hline 70}{txt}

	: {cmd:_}

{pstd}
另一个有用的命令是 {cmd:mata} {cmd:clear}（见
{helpb mata clear:[M-3] mata clear），这将清除 Mata 
而不干扰 Stata：

	: {cmd:mata clear}

	: {cmd:mata describe}

              {txt}# bytes   类型                       名称和范围
        {hline 70}
        {hline 70}

{pstd}
还有其他有用的 {cmd:mata} 命令；见 
{bf:{help m3_intro_zh:[M-3] Intro}}。
不要将此命令 {cmd:mata} 与 Stata 的命令 {cmd:mata} 混淆，后者是在 Stata 的点提示符下输入的，调用 Mata。


{marker remarks13}{...}
{title:退出 Mata}

{pstd}
完成使用 Mata 后，在 Mata 的冒号提示符下输入 {cmd:end}：

	: {cmd:end}
	{hline 70}

	. {cmd:_}

{pstd}
退出 Mata 并不会清除它：

	. {cmd:mata}
	{hline 35} mata (输入 {cmd:end} 以退出) {hline 10}
	: {cmd:x = 2}

	: {cmd:y = (3+2i)}

	: {cmd:function add(a,b) return(a+b)}

	: {cmd:end}
	{hline 70}

	. ...

	. {cmd:mata}
	{hline 35} mata (输入 {cmd:end} 以退出) {hline 10}
	: {cmd:mata describe}
	
              {txt}# bytes   类型                       名称和范围
        {hline 70}
        {res}           76   {txt}变形矩阵        {res}add{txt}()
        {res}            8   {txt}实标量                {res}x
                   16   {txt}复标量             {res}y
        {txt}{hline 70}

	: {cmd:end}

{pstd}
退出 Stata 会清除 Mata，Stata 的 {cmd:clear mata} 命令也会做到这一点；
见 {bf:{help clear_zh:[D] clear}}。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <m1_first.sthlp>}