{smcl}
{* *! version 1.3.2  19oct2017}{...}
{viewerdialog rotate "dialog rotate"}{...}
{vieweralsosee "[MV] rotate" "mansection MV rotate"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MV] rotatemat" "help rotatemat_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MV] factor" "help factor_zh"}{...}
{vieweralsosee "[MV] factor postestimation" "help factor_postestimation_zh"}{...}
{vieweralsosee "[MV] pca" "help pca_zh"}{...}
{vieweralsosee "[MV] pca postestimation" "help pca_postestimation_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MV] procrustes" "help procrustes_zh"}{...}
{viewerjumpto "Syntax" "rotate_zh##syntax"}{...}
{viewerjumpto "Menu" "rotate_zh##menu"}{...}
{viewerjumpto "Description" "rotate_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "rotate_zh##linkspdf"}{...}
{viewerjumpto "Options" "rotate_zh##options"}{...}
{viewerjumpto "Rotation criteria" "rotate_zh##criteria"}{...}
{viewerjumpto "Examples" "rotate_zh##examples"}{...}
{viewerjumpto "Stored results" "rotate_zh##results"}{...}
{viewerjumpto "References" "rotate_zh##references"}
{help rotate:English Version}
{hline}{...}
{p2colset 1 16 18 2}{...}
{p2col:{bf:[MV] rotate} {hline 2}}
正交和斜交旋转（用于因子分析和主成分分析）
{p_end}
{p2col:}({mansection MV rotate:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法} 

{p 8 15 2}
{cmdab:rot:ate} [{cmd:,} {it:选项}]

{p 8 15 2}
{cmdab:rot:ate}{cmd:,} {opt clear}

{synoptset 20 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:主要}
{synopt:{opt ortho:gonal}}限制为正交旋转； 
	默认为正交旋转，除非使用 {cmd:promax()}{p_end}
{synopt:{opt obliq:ue}}允许斜交旋转{p_end}
{synopt:{it:{help rotate##rotation_methods:旋转标准}}}旋转标准{p_end}
{synopt:{opt norm:alize}}旋转凯撒归一化矩阵{p_end}
{synopt:{opt f:actors(#)}}旋转 {it:#} 个因子或成分；
	默认为旋转所有{p_end}
{synopt:{opt comp:onents(#)}}{cmd:factors()} 的同义词{p_end}

{syntab:报告}
{synopt:{opt bl:anks(#)}}当 |loading| < {it:#} 时，将加载显示为空； 
	默认为 {cmd:blanks(0)}{p_end}
{synopt:{opt det:ail}}显示 {cmd:rotatemat} 输出；很少使用{p_end}
{synopt:{opth for:mat(%fmt)}}矩阵的显示格式；
	默认为 {cmd:format(%9.5f)}{p_end}
{synopt:{opt noload:ing}}抑制旋转加载显示{p_end}
{synopt:{opt norota:tion}}抑制旋转矩阵显示{p_end}

{syntab:优化}
{synopt:{it:{help rotatemat##optimizeopts:优化选项}}}控制
	最大化过程；很少使用{p_end}
{synoptline}

INCLUDE help rotate_criteria_table
{p2colreset}{...}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 多变量分析 >}
     {bf:因子和主成分分析 > 后估计 >}
     {bf:旋转加载}


{marker description}{...}
{title:描述}

{pstd}
{cmd:rotate} 在 {cmd:factor}、{cmd:factormat}、{cmd:pca} 和 {cmd:pcamat} 之后对加载矩阵执行旋转；详见 {manhelp factor MV} 和 {manhelp pca MV}。许多旋转标准（如 varimax 和 oblimin）可用于正交和斜交旋转类别。

{pstd}
{cmd:rotate, clear} 从估计结果中移除旋转结果。

{pstd}
如果您想旋转给定的矩阵，请参见 {manhelp rotatemat MV}。

{pstd}
如果您想使用 Procrustes 旋转，最佳方法是朝向其他变量进行旋转，请参见 {manhelp procrustes MV}。 


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection MV rotateQuickstart:快速入门}

        {mansection MV rotateRemarksandexamples:备注和示例}

        {mansection MV rotateMethodsandformulas:方法和公式}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主要}

{phang}{opt orthogonal}
指定应用正交旋转。这是默认设置。

{pmore}
有关 {opt orthogonal} 可用的 {it:旋转标准} 的详细信息，请参见以下 {it:{help rotate##criteria:旋转标准}}。

{phang}{opt oblique}
指定应用斜交旋转。这通常会生成更易于解释的因子，具有比正交旋转更简单的结构。在许多应用中（例如，在 {cmd:factor} 和 {cmd:pca} 之后），旋转之前的因子是正交的（不相关），而斜交旋转后的因子是相关的。

{pmore}
有关 {opt oblique} 可用的 {it:旋转标准} 的详细信息，请参见以下 {it:{help rotate##criteria:旋转标准}}。

{phang}{opt clear}
指定从最后一次估计命令中清除（移除）旋转结果。 {opt clear} 不能与其他任何选项组合。

{pmore}
{cmd:rotate} 将其结果存储在 {cmd:e()} 结果中的 {cmd:pca} 和 {cmd:factor} 中，覆盖任何先前的旋转结果。后估计命令如 {cmd:predict} 将对最后旋转的结果进行操作（如果有），而不是未旋转的结果，允许您指定 {cmd:norotated} 以使用未旋转的结果。 {cmd:rotate} 的 {opt clear} 选项允许您从 {cmd:e()} 中移除旋转结果，从而免去在后估计命令中指定 {cmd:norotated} 的需要。

{phang}{opt normalize}
请求将旋转应用于矩阵 {it:A} 的凯撒归一化（{help rotate##H1965:Horst 1965}），以使行的平方和等于 1。凯撒归一化仅适用于旋转的列（见下文的 {cmd:factors()} 选项）。

{phang}{opt factors(#)} 和同义词 {opt components(#)}，
指定要旋转的因子或成分（加载矩阵的列）数量，从左开始计数，即，使用最低的列索引。其他列保持未旋转。 默认情况下，所有列均被旋转。

{dlgtab:报告}

{phang}{opt blanks(#)}
对于绝对值小于 {it:#} 的加载显示空白。

{phang}{opt detail} 显示 {cmd:rotatemat} 输出；很少使用。

{phang}
{opth format(%fmt)} 指定矩阵的显示格式。 默认值为 {cmd:format(%9.5f)}。

{phang}
{opt noloading} 抑制旋转加载的显示。

{phang}
{opt norotation} 抑制最优旋转矩阵的显示。

{dlgtab:优化}

{phang}{it:优化选项}
很少使用；请参见 {helpb rotatemat##optimizeopts:[MV] rotatemat}。


{marker criteria}{...}
{title:旋转标准}

{pstd}
在下面的描述中，要旋转的矩阵表示为 {bf:A}，{it:p} 表示 {bf:A} 的行数，{it:f} 表示 {bf:A} 的列数（因子或成分）。如果 {bf:A} 是 {cmd:factor} 或 {cmd:pca} 的加载矩阵，{it:p} 是变量的数量，而 {it:f} 是因子或成分的数量。

    {title:仅适用于正交旋转的标准}

{phang2}{opt varimax} 和 {opt vgpf}
应用正交的 varimax 旋转（{help rotate##K1958:Kaiser 1958}）。
{cmd:varimax} 最大化因子（{bf:A} 的列）内平方加载的方差。
这等于 {cmd:cf(}{it:1/p}{cmd:)} 和 {cmd:oblimin(1)}。 {cmd:varimax} 是最流行的旋转，使用专门的快速算法实现，忽略所有
{it:{help rotatemat##optimizeopts:优化选项}}。指定 {cmd:vgpf} 切换到用于其他标准的通用 GPF 算法。

{phang2}{opt quartimax}
采用 quartimax 标准
（{help rotate##H1976:Harman 1976}）。 {cmd:quartimax} 最大化变量（{bf:A} 的行）内平方加载的方差。对于正交旋转，{cmd:quartimax} 等于 {cmd:cf(0)} 和 {cmd:oblimax}。

{phang2}{opt equamax}
指定正交的 equamax 旋转。 {cmd:equamax} 最大化 {cmd:varimax} 和 {cmd:quartimax} 标准的加权和，反映出对变量（{bf:A} 的行）和因子（{bf:A} 的列）内简单结构的关注。 {cmd:equamax} 等于
{cmd:oblimin(}{it:p}{cmd:/2)} 和 {cmd:cf(}{it:f}{cmd:/(2}{it:p}{cmd:))}。

{phang2}{opt parsimax}
指定正交的 parsimax 旋转。 {cmd:parsimax} 等于
{cmd:cf((}{it:f}{cmd:-1)/(}{it:p}{cmd:+}{it:f}{cmd:-2))}。

{phang2}{opt entropy}
应用最小熵旋转标准 
（{help rotate##J2004:Jennrich 2004}）。

{phang2}{opt tandem1}
指定应用 Comrey 的串联的第一个原则。
根据
{help rotate##C1967:Comrey (1967)}，应使用该原则来判断哪些“较小”因子应被舍去。

{phang2}{opt tandem2}
指定应用 Comrey 的串联的第二个原则。根据 {help rotate##C1967:Comrey (1967)}，应使用 {opt tandem2} 进行“润色”。

    {title:仅适用于斜交旋转的标准}

{phang2}{cmd:promax}[{cmd:(}{it:#}{cmd:)}]
指定使用斜交的 promax 旋转。可选参数指定 {cmd:promax} 的幂。不指定该参数等效于指定 {cmd:promax(3)}。建议值小于 4，但选择由您决定。较大的 {cmd:promax} 幂简化加载（生成接近于零和一的数字），但代价是因子间的额外相关性。选择值是一个试验和错误的过程，但大多数来源认为超过 4 的值在实际中是不受欢迎的。幂必须大于 1，但不限于整数。

{pmore2}
Promax 旋转是一种斜交旋转方法，创建于分析方法（基于标准优化）在计算上变得可行之前。Promax 旋转由对原始加载 {bf:A} 的斜交 Procrustes 旋转和对 {bf:A} 进行的正交 varimax 旋转的元素逐个 {it:#} 次方组成。

    {title:适用于正交和斜交旋转的标准}

{phang2}{cmd:oblimin}[{cmd:(}{it:#}{cmd:)}]
指定使用 gamma = {it:#} 的 oblimin 标准。当限定为正交变换时，{cmd:oblimin()} 系列等于 orthomax 标准函数。 {cmd:oblimin()} 的特殊情况包括

{space 16}{c TLC}{hline 36}{c TRC}
{space 16}{c |} gamma    特殊情况              {c |}
{space 16}{c LT}{hline 36}{c RT}
{space 16}{c |} 0        quartimax / quartimin     {c |}
{space 16}{c |} 1/2      biquartimax / biquartimin {c |}
{space 16}{c |} 1        varimax / covarimin       {c |}
{space 16}{c |} {it:p}/2      equamax                   {c |}
{space 16}{c BLC}{hline 36}{c BRC}
{space 16}  {it:p} = {bf:A} 的行数。

{pmore2}
gamma 的默认值为零。 {help rotate##J1979:Jennrich (1979)} 建议对于斜交旋转，gamma {ul:<} 0 是推荐的。对于 gamma > 0，最优的斜交旋转可能不存在；用于计算解的迭代过程会游走到病态解。

{phang2}{opt cf(#)}
指定使用来自 Crawford-Ferguson
({help rotate##CF1970:1970}) 系列的标准，
kappa = {it:#}。 {opt cf(kappa)} 可以看作是
(1-{it:kappa})cf_1({bf:A}) + {it:kappa} cf_2({bf:A})，其中 cf_1({bf:A}) 是行简约性的度量，cf_2({bf:A}) 是列简约性的度量。
cf_1({bf:A}) 在 {bf:A} 的行没有多个非零元素时达到其最小下限，而 cf_2({bf:A}) 如果 {bf:A} 的列没有多个非零元素时达到零。

{pmore2}
对于正交旋转，Crawford-Ferguson 系列等同于 {cmd:oblimin()} 系列。对于正交旋转，特殊情况包括以下内容：

{space 16}{c TLC}{hline 40}{c TRC}
{space 16}{c |} kappa            特殊情况          {c |}
{space 16}{c LT}{hline 40}{c RT}
{space 16}{c |} 0                quartimax / quartimin {c |}
{space 16}{c |} 1/{it:p}              varimax / covarimin   {c |}
{space 16}{c |} {it:f}/(2{it:p})           equamax               {c |}
{space 16}{c |} ({it:f}-1)/({it:p}+{it:f}-2)    parsimax              {c |}
{space 16}{c |} 1                因子简约性      {c |}
{space 16}{c BLC}{hline 40}{c BRC}
{space 16}  {it:p} = {bf:A} 的行数。
{space 16}  {it:f} = {bf:A} 的列数。

{phang2}{opt bentler}
指定使用 Bentler 的“不变模式简单性”标准
({help rotate##B1977:Bentler 1977})。

{phang2}{opt oblimax}
指定 oblimax 标准。 {cmd:oblimax} 最大化高加载和低加载的数量。 {cmd:oblimax} 等于正交旋转的 {cmd:quartimax}。

{phang2}{opt quartimin}
指定使用 quartimin 标准。对于正交旋转，
{cmd:quartimin} 等于 {cmd:quartimax}。

{phang2}{opt target(Tg)}
指定将 {bf:A} 尽可能接近于矩阵 {it:Tg}。接近的程度通过 Frobenius 矩阵范数表达。

{phang2}{opt partial(Tg W)}
指定将 {bf:A} 尽可能接近于矩阵 {it:Tg}。接近的程度通过加权（通过 {it:W} 的）Frobenius 矩阵范数表达。 {it:W} 应为非负，通常为零一值，值为 1 的标识要尽可能被因子加载再现的目标值，而值为 0 的标识要保持加载不受限制。
{p_end}


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse bg2}{p_end}
{phang2}{cmd:. factor bg2cost1-bg2cost6, factors(2)}

{pstd}执行 varimax 旋转，默认设置{p_end}
{phang2}{cmd:. rotate}

{pstd}执行斜交的 promax 旋转，promax 的幂等于 2{p_end}
{phang2}{cmd:. rotate, oblique promax(2)}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:rotate} 在 {cmd:factor} 或 {cmd:pca} 定义的存储结果上添加命名为 {cmd:e(r_}{it:name}{cmd:)} 的存储结果。

{pstd}
{cmd:rotate} 添加以下结果：

{synoptset 25 tabbed}{...}
{p2col 5 25 29 2: 标量}{p_end}
{synopt:{cmd:e(r_f)}}旋转解中的因子/成分数量{p_end}
{synopt:{cmd:e(r_fmin)}}旋转标准值{p_end}

{synoptset 25 tabbed}{...}
{p2col 5 25 29 2: 宏}{p_end}
{synopt:{cmd:e(r_class)}}{cmd:orthogonal} 或 {cmd:oblique}{p_end}
{synopt:{cmd:e(r_criterion)}}旋转标准{p_end}
{synopt:{cmd:e(r_ctitle)}}旋转标题{p_end}
{synopt:{cmd:e(r_normalization)}}{cmd:kaiser} 或 {cmd:none}{p_end}

{synoptset 25 tabbed}{...}
{p2col 5 25 29 2: 矩阵}{p_end}
{synopt:{cmd:e(r_L)}}旋转加载{p_end}
{synopt:{cmd:e(r_T)}}旋转{p_end}
{synopt:{cmd:e(r_Phi)}}共同因子之间的相关性（仅在 {cmd:factor} 后）{p_end}
{synopt:{cmd:e(r_Ev)}}由共同因子（{cmd:factor}）或旋转成分（{cmd:pca}）解释的方差{p_end}

{pstd}
旋转解中的因子/成分按 {cmd:e(r_Ev)} 的降序排列。
{p2colreset}{...}


{marker references}{...}
{title:参考文献}

{marker B1977}{...}
{phang}
Bentler, P. M. 1977. 因子简单性指数和变换。
   {it:Psychometrika} 42: 277-295.

{marker C1967}{...}
{phang}
Comrey, A. L. 1967.
因子分析中的解析旋转的串联标准。
{it:Psychometrika} 32: 277-295.

{marker CF1970}{...}
{phang}
Crawford, C. B., 和 G. A. Ferguson. 1970. 一般旋转标准及其在正交旋转中的应用。
   {it:Psychometrika} 35: 321-332.

{marker H1976}{...}
{phang}
Harman, H. H. 1976. {it:现代因子分析}. 第3版.
  芝加哥: 芝加哥大学出版社.

{marker H1965}{...}
{phang}
Horst, P. 1965. {it:数据矩阵的因子分析}。
纽约: Holt, Rinehart & Winston.

{marker J1979}{...}
{phang}
Jennrich, R. I. 1979. 直接 oblimin 旋转中的 gamma 的可接受值。
   {it:Psychometrika} 44: 173-177.

{marker J2004}{...}
{phang}
------. 2004. 使用成分损失函数旋转到简单加载：正交情况。
    {it:Psychometrika} 69: 257-273.

{marker K1958}{...}
{phang}
Kaiser, H. F. 1958. 因子分析中分析旋转的 varimax 标准。 {it:Psychometrika} 23: 187-200.
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <rotate.sthlp>}