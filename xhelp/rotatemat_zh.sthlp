{smcl}
{* *! version 1.3.4  19oct2017}{...}
{viewerdialog rotatemat "dialog rotatemat"}{...}
{vieweralsosee "[MV] rotatemat" "mansection MV rotatemat"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MV] rotate" "help rotate_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MV] procrustes" "help procrustes_zh"}{...}
{viewerjumpto "Syntax" "rotatemat_zh##syntax"}{...}
{viewerjumpto "Menu" "rotatemat_zh##menu"}{...}
{viewerjumpto "Description" "rotatemat_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "rotatemat_zh##linkspdf"}{...}
{viewerjumpto "Options" "rotatemat_zh##options"}{...}
{viewerjumpto "Rotation criteria" "rotatemat_zh##criteria"}{...}
{viewerjumpto "Remark on identification" "rotatemat_zh##remark"}{...}
{viewerjumpto "Examples" "rotatemat_zh##examples"}{...}
{viewerjumpto "Stored results" "rotatemat_zh##results"}{...}
{viewerjumpto "References" "rotatemat_zh##references"}
{help rotatemat:English Version}
{hline}{...}
{p2colset 1 19 21 2}{...}
{p2col:{bf:[MV] rotatemat} {hline 2}}Stata 矩阵的正交和斜交旋转{p_end}
{p2col:}({mansection MV rotatemat:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 30 2}
{cmd:rotatemat} {it:matrix_L} [{cmd:,} {it:options}]
{p_end}

{synoptset 20 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:主要}
{synopt:{opt ortho:gonal}}限制为正交旋转；默认选项，除非使用 {cmd:promax()}{p_end}
{synopt:{opt obliq:ue}}允许斜交旋转{p_end}
{synopt:{it:{help rotatemat##rotation_methods:旋转标准}}}旋转标准{p_end}
{synopt:{opt norm:alize}}对 Kaiser 标准化矩阵进行旋转{p_end}

{syntab:报告}
{synopt:{opth for:mat(%fmt)}}矩阵的显示格式；默认为 {cmd:format(%9.5f)}{p_end}
{synopt:{opt bl:anks(#)}}当 |loading| < {it:#} 时，将负载显示为空白；默认为 {cmd:blanks(0)}{p_end}
{synopt:{opt nodisp:lay}}抑制除日志和跟踪以外的所有输出{p_end}
{synopt:{opt noload:ing}}抑制旋转负载的显示{p_end}
{synopt:{opt norota:tion}}抑制旋转矩阵的显示{p_end}
{synopt:{opth matn:ame(strings:string)}}要旋转的矩阵的描述性标签{p_end}
{synopt:{opth coln:ames(strings:string)}}要旋转矩阵列的描述性名称{p_end}

{syntab:优化}
{synopt:{it:{help rotatemat##optimizeopts:优化选项}}}控制最大化过程；很少使用{p_end}
{synoptline}

INCLUDE help rotate_criteria_table
{p2colreset}{...}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 多变量分析 >}
      {bf:矩阵的正交和斜交旋转}


{marker description}{...}
{title:描述}

{pstd}
{cmd:rotatemat} 对指定的矩阵应用线性变换，以使结果在一组可行变换类中最小化标准函数。支持两个类别：正交（正交规范）和斜交。提供多种标准函数，用于以不同方式测量矩阵的“简单性”。大多数这些标准可以与正交和斜交旋转一起使用。

{pstd}
此条目描述 Stata 矩阵的正交和斜交变换的计算引擎。可以直接在任何 Stata 矩阵上使用此命令。

{pstd}
如果您对在 {cmd:factor}、{cmd:factormat}、{cmd:pca} 或 {cmd:pcamat} 后的旋转感兴趣，请参见
{manhelp factor_postestimation MV:factor 后估计},
{manhelp pca_postestimation MV:pca 后估计}，以及 {cmd:rotate} 的总体描述，作为在 {manhelp rotate MV} 中的后估计功能。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection MV rotatematRemarksandexamples:备注和示例}

        {mansection MV rotatematMethodsandformulas:方法和公式}

{pstd}
上述部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主要}

{phang}{opt orthogonal}
指定应用正交旋转。 这是默认设置。

{pmore}
有关 {opt orthogonal} 可用的 {it:rotation_methods} 的详细信息，请参见以下 {it:{help rotatemat##criteria:旋转标准}}。

{phang}{opt oblique}
指定应用斜交旋转。 这通常会产生更易解释且结构更简单的因子，而不是正交旋转的结果。 在许多应用中（例如，在 {cmd:factor} 和 {cmd:pca} 之后），旋转前的因子是正交的（不相关），而斜交旋转后的因子是相关的。

{pmore}
有关 {opt oblique} 可用的 {it:rotation_methods} 的详细信息，请参见以下 {it:{help rotatemat##criteria:旋转标准}}。

{phang}{opt normalize}
请求将旋转应用于矩阵 {bf:A} 的 Kaiser 标准化，以使行平方和等于 1。

{dlgtab:报告}

{phang}{opth format(%fmt)}
指定矩阵的显示格式。 默认值为 {cmd:format(%9.5f)}。

{phang}{opt blanks(#)}
指定将旋转矩阵的小值 -- 即 {bf:A} ({bf:T}')^{-1} 中绝对值小于 {it:#} 的元素 -- 显示为空格。

{phang}{opt nodisplay}
抑制除日志和跟踪以外的所有输出。

{phang}{opt noloading}
抑制旋转负载的显示。

{phang}{opt norotation}
抑制最优旋转矩阵的显示。

{phang}{opth matname:(strings:string)}
是一个很少使用的输出选项；指定要旋转的矩阵的描述性标签。

{phang}{opth colnames:(strings:string)}
是一个很少使用的输出选项；指定要旋转的矩阵列的描述性名称。例如，{cmd:colnames(components)} 指定输出将列标记为“components”。默认值为“factors”。

{marker optimizeopts}{...}
{dlgtab:优化}

{phang}
{it:optimize_options} 控制迭代优化过程。这些选项很少使用。

{phang2}{opt iterate(#)}
是一个很少使用的选项；指定最大迭代次数。 默认值为 {cmd:iterate(1000)}。

{phang2}{opt log}
指定显示迭代日志。

{phang2}{opt trace}
是一个很少使用的选项；在每次迭代时显示旋转。

{phang2}{opt tolerance(#)}
是声明收敛的三个标准之一，且很少使用。 当一轮到下一轮旋转矩阵 {bf:T} 的相对变化小于或等于 {it:#} 时，{cmd:tolerance()} 收敛标准被满足。 默认值为 {cmd:tolerance(1e-6)}。

{phang2} {opt gtolerance(#)}
是声明收敛的三个标准之一，且很少使用。 当标准函数 c() 的梯度 Frobenius 范数在正交矩阵或规范矩阵的流形上小于或等于 {it:#} 时，{cmd:gtolerance()} 收敛标准被满足。 默认值为 {cmd:gtolerance(1e-6)}。

{phang2}{opt ltolerance(#)}
是声明收敛的三个标准之一，且很少使用。 当一轮到下一轮的最小化标准 c() 的相对变化小于或等于 {it:#} 时，{cmd:ltolerance()} 收敛标准被满足。 默认值为 {cmd:ltolerance(1e-6)}。

{phang2}{opt protect(#)}
请求执行 {it:#} 次使用随机起始值的优化，并报告最佳解。 输出还指示所有起始值是否收敛到相同的解。 当以较大数字指定，例如 {cmd:protect(50)}，这提供了合理的保证，即找到的解决方案是全局最大，而不仅仅是局部最大。 如果同时指定了 {cmd:trace}，将报告每个优化的旋转矩阵和旋转标准值。

{phang2}{opt maxstep(#)}
是一个很少使用的选项；指定最大步长减半次数。 默认值为 {cmd:maxstep(20)}。

{phang2}{opt init(matname)}
是一个很少使用的选项；指定初始旋转矩阵。 {it:matname} 应为方阵且正则（非奇异），且应具有与要旋转的矩阵 {it:matrix_L} 相同的列数。 应为正交的 ({bf:T}'*{bf:T} = {bf:T}*{bf:T}' = {bf:I}) 或规范的（diag({bf:T}'*{bf:T}) = {bf:1}），具体取决于执行正交还是斜交旋转。 {opt init()} 不能与 {opt random} 结合使用。如果未指定 {opt init()} 或 {cmd:random}，则将使用单位矩阵作为初始旋转。

{phang2}{opt random}
是一个很少使用的选项；指定使用随机正交或随机规范矩阵作为初始旋转矩阵。 {cmd:random} 不能与 {opt init()} 结合使用。如果未指定 {opt init()} 或 {opt random}，则将使用单位矩阵作为初始旋转。


{marker criteria}{...}
{title:旋转标准}

{pstd}
在以下描述中，要旋转的矩阵用 {bf:A} 表示，{it:p} 表示 {bf:A} 的行数，{it:f} 表示 {bf:A} 的列数（因子或成分）。如果 {bf:A} 是来自 {cmd:factor} 或 {cmd:pca} 的负载矩阵，则 {it:p} 是变量的数量，{it:f} 是因子或成分的数量。

    {title:仅适用于正交旋转的标准}

{phang2}{opt varimax} 和 {opt vgpf}
应用正交的 varimax 旋转
({help rotatemat##K1958:Kaiser 1958}). {cmd:varimax} 最大化因子（{bf:A} 的列）的平方负载的方差。 它等同于 {cmd:cf(}{it:1/p}{cmd:)} 和 {cmd:oblimin(1)}。 {cmd:varimax} 是最流行的旋转，使用专用的快速算法实现，并忽略所有
{it:{help rotatemat##optimizeopts:优化选项}}。 指定 {cmd:vgpf} 切换到用于其他标准的一般 GPF 算法。

{phang2}{opt quartimax}
使用 quartimax 标准
({help rotatemat##H1976:Harman 1976}). {cmd:quartimax} 最大化变量（{bf:A} 的行）的平方负载的方差。 对于正交旋转，{cmd:quartimax} 等同于 {cmd:cf(0)} 和 {cmd:oblimax}。

{phang2}{opt equamax}
指定正交的 equamax 旋转。 {cmd:equamax} 最大化 {cmd:varimax} 和 {cmd:quartimax} 标准的加权和，反映对变量（{bf:A} 的行）和因子（{bf:A} 的列）中简单结构的关注。 {cmd:equamax} 等同于
{cmd:oblimin(}{it:p}{cmd:/2)} 和 {cmd:cf(}{it:f}{cmd:/(2}{it:p}{cmd:))}。

{phang2}{opt parsimax}
指定正交的 parsimax 旋转。 {cmd:parsimax} 等同于 {cmd:cf((}{it:f}{cmd:-1)/(}{it:p}{cmd:+}{it:f}{cmd:-2))}。

{phang2}{opt entropy}
应用最小熵旋转标准 
({help rotatemat##J2004:Jennrich 2004}).

{phang2}{opt tandem1}
指定应用 Comrey 的串联第一个原则。 根据 
{help rotatemat##C1967:Comrey (1967)}，应使用此原则来判断应放弃哪些“较小”因子。

{phang2}{opt tandem2}
指定应用 Comrey 的串联第二个原则。 根据 {help rotatemat##C1967:Comrey (1967)}， {opt tandem2} 应用于“抛光”。

    {title:仅适用于斜交旋转的标准}

{phang2}{cmd:promax}[{cmd:(}{it:#}{cmd:)}]
指定斜交的 promax 旋转。 可选参数指定 {cmd:promax} 的指数。 不指定参数相当于指定 {cmd:promax(3)}。 推荐使用小于 4 的值，但选择在于您。 较大的 {cmd:promax} 指数简化负载（生成更接近零和一的数字），但以因子之间额外相关性的代价。 选择一个值是一个尝试和错误的过程，但大多数来源发现，实际中超过 4 的值是不理想的。 指数必须大于 1 但不限制于整数。

{pmore2}
Promax 旋转是一种斜交旋转方法，它是在“分析方法”（基于标准优化）计算上变得可行之前开发的。 Promax 旋转包含对原始负载 {bf:A} 的斜交 Procrustean 旋转，朝向正交 varimax 旋转 {bf:A} 的元素-{it:#} 次方。

    {title:适用于正交和斜交旋转的标准}

{phang2}{cmd:oblimin}[{cmd:(}{it:#}{cmd:)}]
指定使用 gamma = {it:#} 的 oblimin 标准。 当限制为正交变换时，{cmd:oblimin()} 系列等同于正交最大标准函数。 {cmd:oblimin()} 的特例包括

{space 16}{c TLC}{hline 36}{c TRC}
{space 16}{c |} gamma    特殊案例                   {c |}
{space 16}{c LT}{hline 36}{c RT}
{space 16}{c |} 0        quartimax / quartimin      {c |}
{space 16}{c |} 1/2      biquartimax / biquartimin {c |}
{space 16}{c |} 1        varimax / covarimin        {c |}
{space 16}{c |} {it:p}/2      equamax                    {c |}
{space 16}{c BLC}{hline 36}{c BRC}
{space 16}  {it:p} = {bf:A} 的行数。

{pmore2}
gamma 默认为 0。 {help rotatemat##J1979:Jennrich (1979)} 建议对斜交旋转使用 gamma {ul:<} 0。 对于 gamma > 0，最优的斜交旋转可能不存在；用于计算解的迭代过程将漂移到一个退化的解。

{phang2}{opt cf(#)}
指定使用来自 Crawford-Ferguson
({help rotatemat##CF1970:1970}) 系列的标准，kappa = {it:#}。 {opt cf(kappa)} 可以看作
(1-{it:kappa})cf_1({bf:A}) + {it:kappa} cf_2({bf:A})，其中 cf_1({bf:A}) 是行简约性度量，cf_2({bf:A}) 是列简约性度量。
cf_1({bf:A}) 在 {bf:A} 的任何行都不含多个非零元素时达到最大下界，而 cf_2({bf:A}) 在 {bf:A} 的任何列都不含多个非零元素时达到零。

{pmore2}
对于正交旋转，Crawford-Ferguson 系列等同于 {cmd:oblimin()} 系列。 对于正交旋转，特例包括以下内容：

{space 16}{c TLC}{hline 40}{c TRC}
{space 16}{c |} kappa                  特殊案例              {c |}
{space 16}{c LT}{hline 40}{c RT}
{space 16}{c |} 0                      quartimax / quartimin {c |}
{space 16}{c |} 1/{it:p}                varimax / covarimin   {c |}
{space 16}{c |} {it:f}/(2{it:p})       equamax               {c |}
{space 16}{c |} ({it:f}-1)/({it:p}+{it:f}-2)    parsimax              {c |}
{space 16}{c |} 1                      因子简约性          {c |}
{space 16}{c BLC}{hline 40}{c BRC}
{space 16}  {it:p} = {bf:A} 的行数。
{space 16}  {it:f} = {bf:A} 的列数。

{phang2}{opt bentler}
指定使用 Bentler 的“不变模式简约性”标准
({help rotatemat##B1977:Bentler 1977})。

{phang2}{opt oblimax}
指定使用 oblimax 标准。 {cmd:oblimax} 最大化高低负载的数量。 {cmd:oblimax} 在正交旋转中等同于 {cmd:quartimax}。

{phang2}{opt quartimin}
指定使用 quartimin 标准。 对于正交旋转，{cmd:quartimin} 等同于 {cmd:quartimax}。

{phang2}{opt target(Tg)}
指定将 {bf:A} 尽可能旋转接近可兼容矩阵 {it:Tg}。 近似通过 Frobenius 矩阵范数表示。

{phang2}{opt partial(Tg W)}
指定将 {bf:A} 尽可能旋转接近可兼容矩阵 {it:Tg}。 近似通过加权（通过 {it:W}）的 Frobenius 矩阵范数表示。 {it:W} 应为非负，通常是零一值，值为一标识要尽可能重现的目标值，而值为零标识负载保持不受限制。
{p_end}


{marker remark}{...}
{title:关于识别的备注}

{pstd}
所有支持的标准在列的排列和列的符号变化方面不变。 {cmd:rotatemat} 返回具有正列和的解，且列按 L2 范数排序；如果列具有相同的 L2 范数，则按 L1 范数排序列。

{marker examples}{...}
{title:示例}

    {cmd:. rotatemat L}
    {cmd:. rotatemat X, oblique}
    {cmd:. rotatemat L, entropy protect(20)}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:rotatemat} 在 {cmd:r()} 中存储以下内容：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:r(f)}}标准值{p_end}
{synopt:{cmd:r(iter)}}GPF 迭代次数{p_end}
{synopt:{cmd:r(rc)}}返回代码{p_end}
{synopt:{cmd:r(nnconv)}}非收敛尝试的数量；仅 {cmd:protect()}{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:r(cmd)}}{cmd:rotatemat}{p_end}
{synopt:{cmd:r(ctitle)}}旋转方法的描述性标签{p_end}
{synopt:{cmd:r(ctitle12)}}{cmd:r(ctitle)} 的版本，最多 12 个字符长{p_end}
{synopt:{cmd:r(criterion)}}标准名称（例如，{cmd:oblimin}）{p_end}
{synopt:{cmd:r(class)}}{cmd:orthogonal} 或 {cmd:oblique}{p_end}
{synopt:{cmd:r(normalization)}}{cmd:kaiser} 或 {cmd:none}{p_end}
{synopt:{cmd:r(carg)}}标准参数{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:r(T)}}最优变换 T{p_end}
{synopt:{cmd:r(AT)}}最优 AT = A(T')^-1{p_end}
{synopt:{cmd:r(fmin)}}找到的最小值；仅 {cmd:protect()}{p_end}
{p2colreset}{...}


{marker references}{...}
{title:参考文献}

{marker B1977}{...}
{phang}
Bentler, P. M. 1977. 因子简约性指数及变换。 
   {it:Psychometrika} 42: 277-295.

{marker C1967}{...}
{phang}
Comrey, A. L. 1967.
因子分析中的分析旋转的串联标准。
{it:Psychometrika} 32: 277-295.

{marker CF1970}{...}
{phang}
Crawford, C. B., 和 G. A. Ferguson. 1970. 一般旋转标准及其在正交旋转中的应用。
    {it:Psychometrika} 35: 321-332.

{marker H1976}{...}
{phang}
Harman, H. H. 1976. {it:现代因子分析}. 第 3 版.
  芝加哥：芝加哥大学出版社。

{marker H1965}{...}
{phang}
Horst, P. 1965. {it:数据矩阵的因子分析}.
纽约：霍尔特、瑞因哈特与温斯顿。

{marker J1979}{...}
{phang}
Jennrich, R. I. 1979. 直接 oblimin 旋转中 gamma 的可接受值。
   {it:Psychometrika} 44: 173-177.

{marker J2004}{...}
{phang}
------. 2004. 使用组件损失函数旋转到简单负载：正交情况。
    {it:Psychometrika} 69: 257-273.

{marker K1958}{...}
{phang}
Kaiser, H. F. 1958. 因子分析中分析旋转的 varimax 标准。 {it:Psychometrika} 23: 187-200。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <rotatemat.sthlp>}