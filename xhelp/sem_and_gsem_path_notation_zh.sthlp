{smcl}
{* *! version 2.1.4  14may2018}{...}
{viewerdialog "SEM Builder" "stata sembuilder"}{...}
{vieweralsosee "[SEM] sem 和 gsem 路径表示法" "mansection SEM semandgsempathnotation"}{...}
{vieweralsosee "[SEM] 介绍 2" "mansection SEM Intro2"}{...}
{vieweralsosee "[SEM] 介绍 6" "mansection SEM Intro6"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[SEM] sem" "help sem_command_zh"}{...}
{vieweralsosee "[SEM] gsem" "help gsem_command_zh"}{...}
{vieweralsosee "[SEM] sem 路径表示法扩展" "help sem path notation extensions"}{...}
{vieweralsosee "[SEM] gsem 路径表示法扩展" "help gsem path notation extensions"}{...}
{viewerjumpto "语法" "sem_and_gsem_path_notation_zh##syntax"}{...}
{viewerjumpto "描述" "sem_and_gsem_path_notation_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "sem_and_gsem_path_notation_zh##linkspdf"}{...}
{viewerjumpto "选项" "sem_and_gsem_path_notation_zh##options"}{...}
{viewerjumpto "备注" "sem_and_gsem_path_notation_zh##remarks"}{...}
{viewerjumpto "示例" "sem_and_gsem_path_notation_zh##examples"}
{help sem_and_gsem_path_notation:English Version}
{hline}{...}
{p2colset 1 37 39 2}{...}
{p2col:{bf:[SEM] sem 和 gsem 路径表示法} {hline 2}}命令语法用于路径图{p_end}
{p2col:}({mansection SEM semandgsempathnotation:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{cmd:sem} {it:paths} ... [{cmd:,} {opt covariance()} {opt variance()} 
            {opt means()}]

{p 8 12 2}
{cmd:gsem} {it:paths} ... [{cmd:,} {opt covariance()} {opt variance()} 
            {opt means()}]

{pstd}
{it:paths} 指定模型中变量之间的直接路径。

{pstd}
要拟合的模型完全由 {it:paths}、 {opt covariance()}、 {opt variance()} 和 {opt means()} 描述。


{marker description}{...}
{title:描述}

{pstd}
用于描述您的 SEM 的命令语法完全由 {it:paths}、 {opt covariance()}、 {opt variance()} 和 
{opt means()} 指定。其工作原理如下所述。

{pstd}
如果您使用 {cmd:sem}，请参阅 
{helpb sem path notation extensions:[SEM] sem 路径表示法扩展}，以获取有关 {cmd:group()} 选项以比较数据中不同组的文档。 
当指定 {cmd:group()} 时，以下描述的元素的语法会有所调整。

{pstd}
如果您使用 {cmd:gsem}，请参阅 
{helpb gsem path notation extensions:[SEM] gsem 路径表示法扩展}，以获取有关指定广义（非线性）响应变量的家庭和链接、多层潜变量、分类潜变量的说明，以及多组模型的说明。 
当指定用于比较不同组的 {opt group()} 选项或适用于分类潜变量的 {opt lclass()} 选项时，以下描述的元素的语法会有所调整。

{pstd}
无论如何，请先阅读本节。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection SEM semandgsempathnotationRemarksandexamples:备注与示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{opt covariance()} 用于

{phang2}
1.  指定您模型中通常假定为 0 的特定协方差路径被估计，

{phang2}
2.  指定通常假定为非零的特定协方差路径不被估计（约束为 0），

{phang2}
3.  将协方差路径约束为一个固定值，例如 0、0.5、1 等，

{phang2}
4.  将两个或多个协方差路径约束为相等。

{phang}
{opt variance()} 与 {opt covariance()} 具有相同的功能，只是处理的是方差。

{phang}
{opt means()} 与 {opt covariance()} 具有相同的功能，只是处理的是均值。


{marker remarks}{...}
{title:备注}

{pstd}
路径表示法由 {cmd:sem} 和 {cmd:gsem} 命令使用，以指定要拟合的模型，例如，

{phang2}{cmd:. sem (x1 x2 x3 x4 <- X)}{p_end}

{phang2}{cmd:. gsem (L1 -> x1 x2 x3 x4 x5)}
           {cmd:(L2 -> x6 x7 x8 x9 x10)}{p_end}

{pstd}
在路径表示法中，

{phang}
1. 潜变量用 {it:name} 指示，其中首字母大写。

{phang}
2. 观察变量用 {it:name} 指示，其中首字母小写。观察变量对应于数据集中的变量名。

{phang}
3. 错误变量，尽管在数学上是潜变量的特例，但被视为其自身的类别。对于 {cmd:sem}，每个内生变量（无论是观察到的还是潜在的）自动都有一个关联的错误变量。对于 {cmd:gsem}，对于高斯内生变量（和高斯的潜变量）也是如此。与内生变量 {it:name} 关联的错误变量是 {cmd:e.}{it:name}。

{phang}
4. 变量之间的路径写作

{phang3}{cmd:(}{it:name1} {cmd: <- } {it:name2}{cmd:)}{p_end}

{p 8 8 2}
或

{phang3}{cmd:(}{it:name2} {cmd: -> } {it:name1}{cmd:)}{p_end}

{p 8 8 2}
使用哪种编码没有意义。

{phang}
5. 相同变量之间的路径可以组合：路径

{phang3}{cmd:(}{it:name1}{cmd: <- }{it:name2}{cmd:) (}{it:name1}
{cmd: <- }{it:name3}{cmd:)}{p_end}

{p 8 8 2}
可以组合为

{phang3}{cmd:(}{it:name1} {cmd: <- }{it:name2 name3}{cmd:)}{p_end}

{p 8 8 2}
或者

{phang3}{cmd:(}{it:name2 name3} {cmd: ->  }{it:name1}{cmd:)}{p_end}

{p 8 8 2}
路径

{phang3}{cmd:(}{it:name1 <- name3}{cmd:) (}{it:name2} {cmd: <- }
{it:name3}{cmd:)}{p_end}

{p 8 8 2}
可以组合为

{phang3}{cmd:(}{it:name1 name2} {cmd: <- } {it:name3}{cmd:)}{p_end}


{marker varcov}{...}
{space 4}{title:指定方差和协方差}

{phang}
6. 变量之间的方差和协方差（曲线路径）通过选项指定。方差由

{phang3}{cmd:..., ... var(}{it:name1}{cmd:)}{p_end}

{p 8 8 2}
协方差由

{phang3}{cmd:..., ... cov(}{it:name1}{cmd:*}{it:name2}{cmd:)}{p_end}

{phang3}{cmd:..., ... cov(}{it:name2}{cmd:*}{it:name1}{cmd:)}{p_end}

{p 8 8 2}
名称的顺序没有意义。

{p 8 8 2}
选项的实际名称是 {opt variance()} 和 {opt covariance()}，但它们通常被缩写为 {cmd:var()} 和 {cmd:cov()}。

{p 8 8 2}
{opt var()} 和 {opt cov()} 选项是相同的选项，因此可以将方差编码为

{phang3}{cmd:..., ... cov(}{it:name1}{cmd:)}{p_end}

{p 8 8 2}
而协方差可以编码为

{phang3}{cmd:..., ... var(}{it:name1}{cmd:*}{it:name2}{cmd:)}{p_end}

{phang}
7. 方差可以组合，协方差可以组合，方差和协方差可以组合。

{p 8 8 2}
如果您有 

{phang3}{cmd:..., ... var(}{it:name1}{cmd:) var(}{it:name2}{cmd:)}{p_end}

{p 8 8 2}
您可以将其编码为

{phang3}{cmd:..., ... var(}{it:name1 name2}{cmd:)}{p_end}

{p 8 8 2}
如果您有

{phang3}{cmd:..., ... cov(}{it:name1}{cmd:*}{it:name2}{cmd:) cov(}{it:name2}{cmd:*}{it:name3}{cmd:)}{p_end}

{p 8 8 2}
您可以将其编码为

{phang3}{cmd:..., ... cov(}{it:name1}{cmd:*}{it:name2 name2}{cmd:*}{it:name3}{cmd:)}{p_end}

{p 8 8 2}
所有上述组合可以编码为

{phang3}{cmd:..., ... var(}{it:name1 name2 name1}{cmd:*}{it:name2 name2}{cmd:*}{it:name3}{cmd:)}{p_end}

{p 8 8 2}
或为

{phang3}{cmd:..., ... cov(}{it:name1 name2 name1}{cmd:*}{it:name2 name2}{cmd:*}{it:name3}{cmd:)}{p_end}

{phang}
8. 除内生变量外，所有变量都假定具有方差；只有在您希望对方差施加约束或指定初始值时，才有必要编码 {cmd:var()} 选项。 请参见 
   {help sem and gsem path notation##item11:11}、 
   {help sem and gsem path notation##item12:12}、 
   {help sem and gsem path notation##item13:13} 和 
   {help sem and gsem path notation##item16:16} 项。
   （在 {cmd:gsem} 中，观察到的外生变量的方差和协方差不被估计，因此 {cmd:var()} 不能与它们一起使用。）

{p 8 8 2}
内生变量当然有方差，但这是模型隐含的方差。如果 {it:name} 是内生变量，则 {cmd:var(}{it:name}{cmd:)} 是无效的。内生变量的误差方差是 {cmd:var(e.}{it:name}{cmd:)}。

{phang}
9. 变量通常默认是相关的：

{phang3}
a. 所有外生变量都假定彼此相关，无论是观察的还是潜在的。

{phang3}
b. 内生变量不会直接相关，但它们关联的错误变量可以相关。

{phang3}
c. 所有错误变量被假定彼此不相关。

{p 8 8 2}
您可以通过 {cmd:cov()} 选项逐个变量地覆盖这些默认值。

{p 8 8 2}
要声称两个本应假定相关的变量不相关，请将协方差约束为 0：

{phang3}{cmd:..., ... cov(}{it:name1}{cmd:*}{it:name2}{cmd:@0)}{p_end}

{p 8 8 2}
要允许两个本应假定不相关的变量相关，只需指定协方差的存在：

{phang3}{cmd:..., ... cov(}{it:name1}{cmd:*}{it:name2}{cmd:)}{p_end}

{p 8 8 2}
后者尤其常用于错误：

{phang3}{cmd:..., .. cov(e.}{it:name1}{cmd:*e.}{it:name2}{cmd:)}{p_end}

{p 8 8 2}
（在 {cmd:gsem} 中，您不能与观察到的外生变量一起使用 {cmd:cov()} 选项。 您也不能使用 {cmd:cov()} 与与高斯家族相关的错误项、链接为 log 的错误项。）

{phang}
10. 变量的均值由以下选项指示：

{phang3}{cmd:..., ... means(}{it:name}{cmd:)}{p_end}

{p 8 8 2}
变量通常默认具有非零均值：

{phang2}
a. 所有观察到的外生变量被假定具有非零均值。 在 {cmd:sem} 中，均值可以使用 {cmd:means()} 选项进行约束，但仅在您执行 {cmd:noxconditional} 估计时；见 
{help sem_option_noxconditional_zh:[SEM] sem 选项 noxconditional}。

{phang2}
b. 潜在外生变量被假定均值为 0。 潜在变量的均值默认为不进行估计。 如果您指定足够的归一化约束以识别潜在外生变量的均值，您可以指定 {opt means(Name)} 以指示该均值应在进行归一化时进行估计。

{phang2}
c. 内生变量没有单独的均值。 他们的均值是由模型隐含的。 {cmd:means()} 选项不能与内生变量一起使用。

{phang2}
d. 错误变量的均值为 0，且此值不能修改。 {cmd:means()} 选项不能与错误变量一起使用。

{p 8 8 2}
要将均值约束为固定值，例如 57，请编码

{phang3}{cmd:..., ... means(}{it:name}{cmd:@57)}{p_end}

{p 8 8 2}
可以组合不同的 {cmd:means()} 选项：

{phang3}{cmd:..., ... means(}{it:name1}{cmd:@57} {it:name2}{cmd:@100)}{p_end}

{marker item11}{...}
{p 3 8 2}
11. 可以通过使用 {cmd:@}（“at”符号）为路径、方差、协方差或均值指定固定值约束。例如，{p_end}

{phang3}{cmd:(}{it:name1} {cmd:<-} {it:name2}{cmd:@1)}{p_end}

{phang3}{cmd:(}{it:name1} {cmd:<-} {it:name2}{cmd:@1} {it:name3}{cmd:@1)}{p_end}

{phang3}{cmd:..., ... var(}{it:name}{cmd:@100)}{p_end}

{phang3}{cmd:..., ... cov(}{it:name1}{cmd:*}{it:name2}{cmd:@223)}{p_end}

{phang3}{cmd:..., ... cov(}{it:name1}{cmd:@1} {it:name2}{cmd:@1} {it:name1}{cmd:*}{it:name2}{cmd:@.8)}{p_end}

{phang3}{cmd:..., ... means(}{it:name}{cmd:@57)}{p_end}

{marker item12}{...}
{p 3 8 2}
12. 可以使用 {cmd:@}（“at”符号）为路径、方差、协方差或均值指定符号约束。例如，

{phang3}{cmd:(}{it:name1} {cmd:<-} {it:name2}{cmd:@c1}{cmd:) (}{it:name3}
{cmd:<-} {it:name4}{cmd:@c1}{cmd:)}{p_end}

{phang3}{cmd:..., ... var(}{it:name1}{cmd:@c1}
{it:name2}{cmd:@c1}{cmd:) cov(}{it:name1}{cmd:@1} {it:name2}{cmd:@1}
{it:name3}{cmd:@1} {it:name1}{cmd:*}{it:name2}{cmd:@c2}
{it:name1}{cmd:*}{it:name3}{cmd:@c2}{cmd:)}{p_end}

{phang3}{cmd:..., ... means(}{it:name1}{cmd:@c1} {it:name2}{cmd:@c1}{cmd:)}{p_end}

{phang3}{cmd:(}{it:name1} {cmd:<-} {it:name2}{cmd:@c1}{cmd:) ..., var(}{it:name3}{cmd:@c1}{cmd:) means(}{it:name4}{cmd:@c1}{cmd:)}{p_end}

{p 8 8 2}
符号名称仅为 1 到 32 个字符的名称。符号约束约束等式。为简单起见，以下所有约束都将具有名称 {cmd:c1}、 {cmd:c2}、 ...

{marker item13}{...}
{p 3 8 2}
13. 可以为路径、方差、协方差或均值指定符号约束的线性组合，使用 {cmd:@}（“at”符号）。例如，

{phang3}{cmd:(}{it:name1} {cmd:<-} {it:name2}{cmd:@c1}{cmd:) (}{it:name3} {cmd:<-}
{it:name4}{cmd:@(2*c1}{cmd:))}{p_end}

{phang3}{cmd:..., ... var(}{it:name1}{cmd:@c1} {it:name2}{cmd:@(c1}{cmd:/2))}{p_end}

{phang3}{cmd:..., ... cov(}{it:name1}{cmd:@1} {it:name2}{cmd:@1}
{it:name3}{cmd:@1} {it:name1}{cmd:*}{it:name2}{cmd:@c1}
{it:name1}{cmd:*}{it:name3}{cmd:@(c1}{cmd:/2))}{p_end}

{phang3}{cmd:..., ... means(}{it:name1}{cmd:@c1} {it:name2}{cmd:@(3*c1}{cmd:+10))}{p_end}

{phang3}{cmd:(}{it:name1} {cmd:<-} {it:name2}{cmd:@(c1}{cmd:/2)) ..., var(}{it:name3}{cmd:@c1}{cmd:) means(}{it:name4}{cmd:@(2*c1}{cmd:))}{p_end}

{p 3 8 2}
14. 模型中的所有方程假定都有截距（包括观察到的外生变量 {cmd:_cons}），除非指定了 {cmd:noconstant} 选项（缩写为 {cmd:nocons}），在这种情况下，所有方程假定没有截距（不包括 {cmd:_cons}）。 （在 {cmd:gsem} 中有一些例外，因为某些广义线性模型没有截距，甚至没有截距的概念。）

{p 8 8 2}
无论是否指定 {cmd:noconstant}，您都可以明确提到观察到的外生变量 {cmd:_cons}。

{p 8 8 2}
以下路径规格是表示同一模型的不同方式：

{phang3}{cmd:(}{it:name1} {cmd:<-} {it:name2}{cmd:) (}{it:name1} {cmd:<-} {it:name3}{cmd:)}{p_end}

{phang3}{cmd:(}{it:name1} {cmd:<-} {it:name2}{cmd:) (}{it:name1} {cmd:<-} {it:name3}{cmd:) (}{it:name1} {cmd:<-} {cmd:_cons)}{p_end}

{phang3}{cmd:(}{it:name1} {cmd:<-} {it:name2} {it:name3}{cmd:)}{p_end}

{phang3}{cmd:(}{it:name1} {cmd:<-} {it:name2} {it:name3} {cmd:_cons)}{p_end}

{p 8 8 2}
除非您还指定了 {cmd:noconstant} 选项并希望在某些方程中包含 {cmd:_cons}，而在其他方程中不包含，或者无论是否指定了 {cmd:noconstant} 选项，您都希望对其路径系数施加约束，否则没有必要明确指定 {cmd:_cons}。 例如，

{phang3}{cmd:(}{it:name1} {cmd:<-} {it:name2} {it:name3} {cmd:_cons@c1}{cmd:) (}{it:name4} {cmd:<-} {it:name5} {cmd:_cons@c1}{cmd:)}{p_end}

{p 3 8 2}
15. {cmd:noconstant} 选项可以全局指定，也可以在路径规格中指定。 也就是说，

{phang3}{cmd:(}{it:name1} {cmd:<-} {it:name2} {it:name3}{cmd:) (}{it:name4} {cmd:<-} {it:name5}{cmd:), nocon}{p_end}

{p 8 8 2}
会抑制两个方程中的截距。 或

{phang3}{cmd:(}{it:name1} {cmd:<-} {it:name2} {it:name3}{cmd:, nocon) (}{it:name4} {cmd:<-} {it:name5}{cmd:)}{p_end}

{p 8 8 2}
则抑制第一个方程中的截距，但不影响第二个方程，而

{phang3}{cmd:(}{it:name1} {cmd:<-} {it:name2} {it:name3}{cmd:) (}{it:name4} {cmd:<-} {it:name5}{cmd:, nocon)}{p_end}

{p 8 8 2}
则抑制第二个方程中的截距，但不影响第一个方程。

{p 8 8 2}此外，请考虑方程

{phang3}{cmd:(}{it:name1} {cmd:<-} {it:name2} {it:name3}{cmd:, nocons)}{p_end}

{p 8 8 2}
这可以等效地写成

{phang3}{cmd:(}{it:name1} {cmd:<-} {it:name2}{cmd:, nocons) (}{it:name1} {cmd:<-} {it:name3}{cmd:, nocons)}{p_end}

{marker item16}{...}
{p 3 8 2}
16. 可以通过使用 {opt init(#)} 子选项为路径、方差、协方差或均值指定初始值（起始值）：

{phang3}{cmd:(}{it:name1} {cmd:<-} {cmd:(}{it:name2}{cmd:, init(0)))}{p_end}

{phang3}{cmd:(}{it:name1} {cmd:<-} {cmd:(}{it:name2}{cmd:, init(0)} {it:name3}{cmd:)}{p_end}

{phang3}{cmd:(}{it:name1} {cmd:<-} {cmd:(}{it:name2}{cmd:, init(0)) (}{it:name3}{cmd:, init(5)))}{p_end}

{phang3}{cmd: ..., ... var((}{it:name3}{cmd:, init(1)))}{p_end}

{phang3}{cmd:..., ... cov((}{it:name4}{cmd:*}{it:name5}{cmd:, init(.5)))}{p_end}

{phang3}{cmd:..., ... means((}{it:name5}{cmd:, init(0)))}{p_end}

{p 8 8 2}
初始值可以与符号约束结合使用：

{phang3}{cmd:(}{it:name1} {cmd:<-} {cmd:(}{it:name2}{cmd:@c1}{cmd:, init(0)))}{p_end}

{phang3}{cmd:(}{it:name1} {cmd:<-} {cmd:(}{it:name2}{cmd:@c1}{cmd:, init(0))} {it:name3}{cmd:)}{p_end}

{phang3}{cmd:(}{it:name1} {cmd:<-} {cmd:(}{it:name2}{cmd:@c1}{cmd:, init(0)) (}{it:name3}{cmd:@c2}{cmd:, init(5)))}{p_end}

{phang3}{cmd:..., ... var((}{it:name3}{cmd:@c1}{cmd:, init(1)))}{p_end}

{phang3}{cmd:..., ... cov((}{it:name4}{cmd:*}{it:name5}{cmd:@c1}{cmd:, init(.5)))}{p_end}

{phang3}{cmd:..., ... means((}{it:name5}{cmd:@c1}{cmd:, init(0)))}{p_end}


{marker examples}{...}
{title:示例}

{pstd}
这些示例演示了使用 {cmd:sem} 命令的路径表示法，但在每种情况下 {cmd:sem} 可以替换为 {cmd:gsem}。 请参见 
{helpb sem path notation extensions} 和 {helpb gsem path notation extensions} 
以获取演示每个命令的路径表示法独特功能的示例。


{title:示例：基本路径表示法}

{pstd}设置{p_end}
{phang2}{cmd:. sysuse auto}{p_end}

{pstd}一个简单的回归模型{p_end}
{phang2}{cmd:. sem (mpg <- turn trunk length)}{p_end}

{pstd}与上面相同的模型{p_end}
{phang2}{cmd:. sem (mpg <- turn ) (mpg <- trunk) (mpg <- length)}{p_end}

{pstd}将常数约束为零{p_end}
{phang2}{cmd:. sem (mpg <- turn trunk length _cons@0)}{p_end}

{pstd}与上面相同，但使用 {opt noconstant} 选项{p_end}
{phang2}{cmd:. sem (mpg <- turn trunk length), noconstant}{p_end}


{title:示例：指定 covariance() 和 variance() 选项}

{pstd}拟合一个递归结构模型{p_end}
{phang2}{cmd:. sem (mpg <- turn trunk price) (trunk <- length)}{p_end}

{pstd}估计 {cmd:mpg} 和 {cmd:trunk} 的误差之间的协方差{p_end}
{phang2}{cmd:. sem (mpg <- turn trunk price) (trunk <- length),}{break}
	{cmd:covariance(e.mpg*e.trunk)}{p_end}

{pstd}将 {cmd:mpg} 的误差方差约束为 {cmd:10}{p_end}
{phang2}{cmd:. sem (mpg <- turn trunk length) (trunk <- price),}{break}
	{cmd:variance(e.mpg@10)}{p_end}


{title:示例：指定 means() 选项}

{pstd}设置{p_end}
{phang2}{cmd:. webuse sem_1fmm}{p_end}

{pstd}一个一因子测量模型{p_end}
{phang2}{cmd:. sem (X -> x1 x2 x3 x4)}{p_end}

{pstd}将 {cmd:X} 的均值约束为 {cmd:5}{p_end}
{phang2}{cmd:. sem (X -> x1 x2 x3 x4), means(X@5)}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <sem_and_gsem_path_notation.sthlp>}