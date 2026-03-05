{smcl}
{* *! version 1.4.17  12dec2018}{...}
{viewerdialog arch "dialog arch"}{...}
{vieweralsosee "[TS] arch" "mansection TS arch"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TS] arch postestimation" "help arch postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TS] arima" "help arima_zh"}{...}
{vieweralsosee "[TS] mgarch" "help mgarch_zh"}{...}
{vieweralsosee "[R] regress" "help regress_zh"}{...}
{vieweralsosee "[TS] tsset" "help tsset_zh"}{...}
{viewerjumpto "语法" "arch_zh##syntax"}{...}
{viewerjumpto "菜单" "arch_zh##menu"}{...}
{viewerjumpto "描述" "arch_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "arch_zh##linkspdf"}{...}
{viewerjumpto "选项" "arch_zh##options"}{...}
{viewerjumpto "示例" "arch_zh##examples"}{...}
{viewerjumpto "存储的结果" "arch_zh##results"}{...}
{viewerjumpto "参考文献" "arch_zh##references"}
{help arch:English Version}
{hline}{...}
{p2colset 1 14 16 2}{...}
{p2col:{bf:[TS] arch} {hline 2}}自回归条件异方差 (ARCH) 估计量家族{p_end}
{p2col:}({mansection TS arch:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 14 2}
{cmd:arch}
{depvar}
[{indepvars}]
{ifin}
[{it:{help arch##weight:权重}}]
[{cmd:,} {it:选项}]

{synoptset 26 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:模型}
{synopt:{opt nocons:不常数}}抑制常数项{p_end}
{synopt:{opth arch(numlist)}}ARCH 项{p_end}
{synopt:{opth g:arch(numlist)}}GARCH 项{p_end}
{synopt:{opth saa:rch(numlist)}}简单非对称 ARCH 项{p_end}
{synopt:{opth ta:rch(numlist)}}阈值 ARCH 项{p_end}
{synopt:{opth aa:rch(numlist)}}非对称 ARCH 项{p_end}
{synopt:{opth na:rch(numlist)}}非线性 ARCH 项{p_end}
{synopt:{opth narchk(numlist)}}具有单一变化的非线性 ARCH 项{p_end}
{synopt:{opth ab:arch(numlist)}}绝对值 ARCH 项{p_end}
{synopt:{opth at:arch(numlist)}}绝对阈值 ARCH 项{p_end}
{synopt:{opth sd:garch(numlist)}}s_t 的滞后项{p_end}
{synopt:{opth ea:rch(numlist)}}Nelson EGARCH 模型中的新项{p_end}
{synopt:{opth eg:arch(numlist)}}ln(s_t^2) 的滞后项{p_end}
{synopt:{opth p:arch(numlist)}}幂 ARCH 项{p_end}
{synopt:{opth tp:arch(numlist)}}阈值幂 ARCH 项{p_end}
{synopt:{opth ap:arch(numlist)}}非对称幂 ARCH 项{p_end}
{synopt:{opth np:arch(numlist)}}非线性幂 ARCH 项{p_end}
{synopt:{opth nparchk(numlist)}}具有单一变化的非线性幂 ARCH 项{p_end}
{synopt:{opth pg:arch(numlist)}}幂 GARCH 项{p_end}
{synopt:{cmdab:c:onstraints(}{it:{help estimation options##constraints():约束}}{cmd:)}}应用指定的线性约束{p_end}

{syntab:模型 2}
{synopt:{opt archm}}在均值方程规范中包含 ARCH-in-mean 项{p_end}
{synopt:{opth archml:ags(numlist)}}在均值方程中包含条件方差的指定滞后项{p_end}
{synopt:{opth archme:xp(exp)}}对均值方程中的任何 ARCH-in-mean 项应用 {it:exp} 转换{p_end}
{synopt:{opt arima(#p, #d, #q)}}指定自回归积分滑动平均 (ARIMA)({it:p,d,q}) 模型{p_end}
{synopt:{opth ar(numlist)}}结构模型误差的自回归项{p_end}
{synopt:{opth ma(numlist)}}结构模型误差的移动平均项{p_end}

{syntab:模型 3}
{synopt:{opt dist:ribution(dist [#])}}用于误差的 {it:dist} 分布 (可以是 {cmdab:gau:ssian}、{cmdab:nor:mal}、{cmd:t} 或 {cmd:ged}; 默认是 {cmd:gaussian}){p_end}
{synopt:{opth het(varlist)}}在条件方差的规范中包含 {it:varlist}{p_end}
{synopt:{opt save:space}}在估计过程中节省内存{p_end}

{syntab:初始值}
{synopt:{cmd:arch0(xb)}}基于预期的无条件方差计算初始值；默认{p_end}
{synopt:{cmd:arch0(xb0)}}基于OLS 残差的估计方差计算初始值{p_end}
{synopt:{cmd:arch0(xbwt)}}基于OLS 残差的加权平方和计算初始值{p_end}
{synopt:{cmd:arch0(xb0wt)}}基于OLS 残差的加权平方和计算初始值，早期时间加大权重{p_end}
{synopt:{cmd:arch0(zero)}}将 ARCH 项的初始值设置为零{p_end}
{synopt:{opt arch0(#)}}将 ARCH 项的初始值设置为 {it:#}{p_end}
{synopt:{cmd:arma0(zero)}}将所有 ARMA 项的初始值设置为零；默认{p_end}
{synopt:{cmd:arma0(p)}}在观察 p 后开始估计，其中 p 是模型中的最大 AR 滞后{p_end}
{synopt:{cmd:arma0(q)}}在观察 q 后开始估计，其中 q 是模型中的最大 MA 滞后{p_end}
{synopt:{cmd:arma0(pq)}}在观察 (p + q) 后开始估计{p_end}
{synopt:{opt arma0(#)}}将 ARMA 项的初始值设置为 {it:#}{p_end}
{synopt:{opt condo:bs(#)}}将样本开始时的条件观测值设置为 {it:#}{p_end}

{syntab:标准误/稳健性}
{synopt:{opth vce(vcetype)}}{it:vcetype} 可以是 {opt opg}、{opt r:obust} 或 {opt oim}{p_end}

{syntab:报告}
{synopt:{opt l:evel(#)}}设置置信水平；默认是 {cmd:level(95)}{p_end}
{synopt:{opt det:ail}}报告时间序列中的间隔列表{p_end}
{synopt :{opt nocnsr:eport}}不显示约束{p_end}
{synopt :{it:{help arch##display_options:显示选项}}}控制列和列格式、行间距和行宽{p_end}

{syntab:最大化}
{synopt:{it:{help arch##maximize_options:最大化选项}}}控制最大化过程；很少使用{p_end}

{synopt:{opt col:linear}}保留共线变量{p_end}
INCLUDE help shortdes-coeflegend
{synoptline}
{p2colreset}{...}
{p 4 6 2}
在使用 {opt arch} 之前，您必须 {opt tsset} 数据；请参阅 {manhelp tsset TS}.{p_end}
{p 4 6 2}
{it:depvar} 和 {it:varlist} 可以包含时间序列运算符；请参阅 {help tsvarlist_zh}。
{p_end}
{p 4 6 2}
允许 {opt by}、{opt fp}、{opt rolling}、{opt statsby} 和 {cmd:xi}；参见 {help prefix_zh}。{p_end}
{marker weight}{...}
{p 4 6 2}
允许使用 {opt iweight}；请参阅 {help weight_zh}。{p_end}
{p 4 6 2}
{opt collinear} 和 {opt coeflegend} 不会出现在对话框中。{p_end}
{p 4 6 2}
有关估计后可用功能，请参见 {manhelp arch_postestimation TS:arch postestimation}。{p_end}

{pstd}
要拟合具有高斯误差的 ARCH({it:#m}) 模型，请输入

{pin}
{cmd:. arch} {it:depvar} {it:...}{cmd:,} {cmd:arch(1/}{it:#m}{cmd:)}

{pstd}
要拟合假设误差遵循 7 自由度的学生 t 分布的 GARCH({it:#m,#k}) 模型，请输入

{pin}
{cmd:. arch} {it:depvar} {it:...}{cmd:,} {cmd:arch(1/}{it:#m}{cmd:)} {cmd:garch(1/}{it:#k}{cmd:)} {cmd:distribution(t 7)}

{pstd}
您还可以拟合许多其他模型。

{marker menu}{...}
{title:菜单}

    {title:ARCH/GARCH}

{phang2}
{bf:统计 > 时间序列 > ARCH/GARCH > ARCH 和 GARCH 模型}

    {title:EARCH/EGARCH}

{phang2}
{bf:统计 > 时间序列 > ARCH/GARCH > Nelson 的 EGARCH 模型}

    {title:ABARCH/ATARCH/SDGARCH}

{phang2}
{bf:统计 > 时间序列 > ARCH/GARCH > 阈值 ARCH 模型}

    {title:ARCH/TARCH/GARCH}

{phang2}
{bf:统计 > 时间序列 > ARCH/GARCH > GJR 形式的阈值 ARCH 模型}

    {title:ARCH/SAARCH/GARCH}

{phang2}
{bf:统计 > 时间序列 > ARCH/GARCH > 简单非对称 ARCH 模型}

    {title:PARCH/PGARCH}

{phang2}
{bf:统计 > 时间序列 > ARCH/GARCH > 幂 ARCH 模型}

    {title:NARCH/GARCH}

{phang2}
{bf:统计 > 时间序列 > ARCH/GARCH > 非线性 ARCH 模型}

    {title:NARCHK/GARCH}

{phang2}
{bf:统计 > 时间序列 > ARCH/GARCH > 具有一个变化的非线性 ARCH 模型}

    {title:APARCH/PGARCH}

{phang2}
{bf:统计 > 时间序列 > ARCH/GARCH > 非对称幂 ARCH 模型}

    {title:NPARCH/PGARCH}

{phang2}
{bf:统计 > 时间序列 > ARCH/GARCH > 非线性幂 ARCH 模型}

{marker description}{...}
{title:描述}

{pstd}
{opt arch} 拟合回归模型，其中时间序列的波动性随着时间变化。通常，高波动和低波动的时期会聚集在一起。ARCH 模型将未来的波动性估计为过去波动性的函数。为此，{opt arch} 通过条件最大似然拟合自回归条件异方差 (ARCH) 模型。除了 ARCH 项外，模型还可以包含乘法异方差。支持高斯（正态）、学生 t 和广义误差分布。

{pstd}
关于回归方程本身，模型还可以包含 ARCH-in-mean 和 ARMA 项。

{pstd}
以下是常见的拟合模型：

	公用项{right:指定选项          }
        {hline -2}
	ARCH{right:{cmd:arch()}                       }

	GARCH{right:{cmd:arch()} {cmd:garch()}               }

	ARCH-in-mean{right:{cmd:archm} {cmd:arch()} [{cmd:garch()}]       }

	GARCH 具有 ARMA 项{right:{cmd:arch()} {cmd:garch()} {cmd:ar()} {cmd:ma()}     }

	EGARCH{right:{cmd:earch()} {cmd:egarch()}             }

	TARCH、阈值 ARCH{right:{cmd:abarch()} {cmd:atarch()} {cmd:sdgarch()}  }

	GJR、阈值 ARCH 形式{right:{cmd:arch()} {cmd:tarch()} [{cmd:garch()}]     }

	SAARCH、简单非对称 ARCH{right:{cmd:arch()} {cmd:saarch()} [{cmd:garch()}]    }

	PARCH、幂 ARCH{right:{cmd:parch()} [{cmd:pgarch()}]           }

	NARCH、非线性 ARCH{right:{cmd:narch()} [{cmd:garch()}]            }

	NARCHK、具有一个变化的 NARCH{right:{cmd:narchk()} [{cmd:garch()}]           }

	A-PARCH、非对称幂 ARCH{right:{cmd:aparch()} [{cmd:pgarch()}]          }

	NPARCH、非线性幂 ARCH{right:{cmd:nparch()} [{cmd:pgarch()}]          }
	{hline -2}


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection TS archQuickstart:快速入门}

        {mansection TS archRemarksandexamples:备注和示例}

        {mansection TS archMethodsandformulas:方法和公式}

{pstd}
上述章节不包括在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:模型}

{phang}
{opt noconstant}; 请参阅
  {bf:{help estimation options##noconstant:[R] 估计选项}}。

{phang}
{opth arch(numlist)} 指定 ARCH 项（e_t^2 的滞后项）。

{pmore}
   指定 {cmd:arch(1)} 以包括一阶项， {cmd:arch(1/2)} 指定一阶和二阶项， {cmd:arch(1/3)} 指定一阶、二阶和三阶项，等等。项可以省略。指定
   {bind:{cmd:arch(1/3 5)}} 以指定滞后 1、2、3 和 5 的项。所有选项均以这种方式工作。

{pmore}
   {opt arch()} 不能与 {opt aarch()}、{opt narch()}、{opt narchk()}、{opt nparchk()} 或 {opt nparch()} 一起指定，因为这会导致共线性项。

{phang}
{opth garch(numlist)} 指定 GARCH 项（s_t^2 的滞后项）。

{phang}
{opth saarch(numlist)} 指定简单非对称 ARCH 项。添加这些项是一种使标准 ARCH 和 GARCH 模型对正负创新的响应不对称的方法。指定 {cmd:saarch()} 配合 {cmd:arch()} 和 {cmd:garch()} 对应于 {help arch##E1990:Engle (1990)} 提出的 SAARCH 模型。

{pmore}
{opt saarch()} 不能与 {opt narch()}、{opt narchk()}、{opt nparchk()} 或 {opt nparch()} 一起指定，因为这会导致共线性项。

{phang}
{opth tarch(numlist)} 指定阈值 ARCH 项。添加这些可以使标准 ARCH 和 GARCH 模型对正负创新的响应不对称。指定 {cmd:tarch()} 配合 {cmd:arch()} 和 {cmd:garch()} 对应于 GJR 模型的一种形式
({help arch##GJR1993:Glosten, Jagannathan, and Runkle 1993})。

{pmore}
   {opt tarch()} 不能与 {opt tparch()} 或 {opt aarch()} 一起指定，因为这会导致共线性项。

{phang}
{opth aarch(numlist)} 指定二参数项 a(|e_t|+g*e_t)^2 的滞后项。该项提供的非对称性与包含 {opt arch()} 和 {opt tarch()} 的形式相同，但定型方式不同。
   
{pmore}
   {opt aarch()} 不能与 {opt arch()} 或 {opt tarch()} 一起指定，因为这会导致共线性项。

{phang}
{opth narch(numlist)} 指定二参数项 a(e_t-ki)^2 的滞后项。该项允许最小条件方差发生在滞后创新的非零值处。对于任何在滞后 L 指定的项，该滞后对条件方差的最小贡献发生在该滞后项的平方创新等于估计的常数 k_L 时。

{pmore}
   {opt narch()} 不能与 {opt arch()}、{opt saarch()}、{opt narchk()}、{opt nparchk()} 或 {opt nparch()} 一起指定，因为这会导致共线性项。

{phang}
{opth narchk(numlist)} 指定二参数项 a(e_t-k)^2 的滞后项；这是 {opt narch()} 的一种变体，k 对所有滞后保持不变。

{pmore}
{opt narchk()} 不能与 {opt arch()}、{opt saarch()}、{opt narch()}、{opt nparchk()} 或 {opt nparch()} 一起指定，因为这会导致共线性项。

{phang}
{opth abarch(numlist)} 指定 |e_t| 的滞后项。

{phang}
{opth atarch(numlist)} 指定 |e_t|(e_t > 0) 的滞后项，其中 (e_t > 0) 表示当成立时返回 1，否则返回 0 的指示函数。与 TARCH 项一样，这些 ATARCH 项允许未预期创新的影响在零周围不对称。

{phang}
{opth sdgarch(numlist)} 指定 s_t 的滞后项。结合 {opt atarch()}、{opt abarch()} 和 {opt sdgarch()} 产生 {help arch##Z1994:Zakoian (1994)} 所称的 TARCH 模型。然而，TARCH 的缩写指任何使用阈值获得不对称的模型。

{phang}
{opth earch(numlist)} 指定二参数项 {bind:a*z_t+g*(|z_t|- sqrt(2/pi))} 的滞后项。这些项代表新闻—滞后创新—在 Nelson 的 
({help arch##N1991:1991}) EGARCH 模型中的影响。对于这些项，z_t=e_t/s_t，并且 {opt arch} 假设 z_t ~ N(0,1)。Nelson 推导了对任何假设分布的 EGARCH 模型的一般形式，并假设广义误差分布 (GED) 进行估计。请参见 
{help arch##H1994:Hamilton (1994)} 以获取 z_t 假设为正态的推导。z_t 项可以用这两种等效方式进行参数化。 {opt arch} 使用 Nelson 原始的参数化方式；请参见 
{help arch##H1994:Hamilton (1994)} 获取等效的替代方案。

{phang}
{opth egarch(numlist)} 指定 ln(s_t^2) 的滞后项。

{pstd}
对于以下选项，模型按 h(e_t)^p 和 s_t^p 的参数化形式。即使指定了多个选项，仍然只有一个 p 被估计。

{phang}
{opth parch(numlist)} 指定 |e_t|^p 的滞后项。
   {opt parch()} 与 {opt pgarch()} 结合对应于 
   {help arch##HB1992:Higgins and Bera (1992)} 建议的条件方差非线性模型的类。

{phang}
{opth tparch(numlist)} 指定 (e_t>0)|e_t|^p 的滞后项，其中
   (e_t > 0) 表示当成立时返回 1 ，否则返回 0 的指示函数。与 {opt tarch()} 一样， {opt tparch()} 指定的项允许“好”（正创新）和“坏”（负创新）新闻的差异影响，适用于 {it:numlist} 指定的滞后。

{pmore}
   {opt tparch()} 不能与 {opt tarch()} 一起指定，因为这会导致共线性项。

{phang}
{opth aparch(numlist)} 指定二参数项
   a(|e_t|+g*e_t)^p。
  这个非对称幂 ARCH 模型 A-PARCH 是由 
  {help arch##DGE1993:Ding, Granger, and Engle (1993)}
  提出的，并对应于滞后创新中的 Box-Cox 函数。作者根据超过 16000 个标准普尔 500 的每日观察值拟合了原始 A-PARCH 模型，这是有充分理由的。随着参数数量和规范灵活性的增加，需要更多的数据来估计条件异方差的参数。请参见 
  {help arch##DGE1993:Ding, Granger, and Engle (1993)} 讨论流行的七种 ARCH 模型如何嵌套在 A-PARCH 模型中。

{pmore}
   当 g 趋近于 1 时，该完整项在许多观测值中趋于零，这样的话数值上可能不稳定。

{phang}
{opth nparch(numlist)} 指定二参数项 a|e_t-ki|^p 的滞后项。

{pmore}
{cmd:nparch()} 不能与 {cmd:arch()}、{cmd:saarch()}、{cmd:narch()}、{cmd:narchk()} 或 {cmd:nparchk()} 一起指定，因为这会导致共线性项。

{phang}
{opth nparchk(numlist)} 指定二参数项 a|e_t-k|^p 的滞后项；这是 {opt nparch()} 的一种变体，k 对所有滞后保持不变。它与 {opt narchk()} 的直接类比，除了幂为 p。
   {opt nparchk()} 对应于 
   {help arch##HB1992:Higgins and Bera (1992)} 由 
   {help arch##BEN1994:Bollerslev, Engle, and Nelson (1994)} 提出的模型的扩展形式。
   {opt nparchk()} 通常会与 {opt pgarch()} 选项结合。

{pmore}
   {opt nparchk()} 不能与 {opt arch()}、{opt saarch()}、{opt narch()}、{opt narchk()} 或 {opt nparch()} 一起指定，因为这会导致共线性项。

{phang}
{opth pgarch(numlist)} 指定 (s_t)^p 的滞后项。

{phang}
{opt constraints(constraints)}；见
  {bf:{help estimation options:[R] 估计选项}}。

{dlgtab:模型 2}

{phang}
{opt archm} 指定在均值方程的规范中包含 ARCH-in-mean 项。该项允许 {depvar} 的期望值依赖于条件方差。ARCH-in-mean 在评估金融时间序列时最常用，当理论支持资产风险与收益之间的权衡。默认情况下，模型中不包含任何 ARCH-in-mean 项。

{pmore}
   {opt archm} 指定在均值方程中包含当期的期望条件方差。

{phang}
{opth archmlags(numlist)} 是对 {opt archm} 的扩展，包含均值方程中的条件方差 s_t^2 的滞后项。要指定当期和一次滞后的方差，请指定 {bf:{cmd:archm archmlags(1)}} 或 {cmd:archmlags(0/1)}。

{phang}
{opth archmexp(exp)} 对模型中的任何 ARCH-in-mean 项应用 {it:exp} 转换。该表达式应该在需要进入表达式的条件方差的值处包含 {cmd:X}。此选项可以用于产生常用的条件标准差的 ARCH-in-mean。

{phang}
{opt arima(#p,#d,#q)} 是替代的，简写的表示法，用于指定因变量的自回归模型。因变量和任何自变量被差分 {it:#d} 次，包含 1 到 {it:#p} 的自相关滞后项，并包含 1 到 {it:#q} 的移动平均滞后项。
例如，指定

{pin2}
{cmd:. arch y, arima(2,1,3)}

{pmore}
   与下述等价

{pin2}
{cmd:. arch D.y, ar(1/2) ma(1/3)}

{pmore}
   前者更容易为经典 ARIMA 模型的均值方程编写，但比后者表述能力弱得多。如果需要对 AR 或 MA 滞后建模间隔，或者如果需要对自变量应用不同的运算符，则需要后者语法。

{phang}
{opth ar(numlist)} 指定要包含在模型中的结构模型扰动的自回归项。例如，{cmd:ar(1/3)} 指定包含结构扰动的滞后 1、2 和 3。{cmd:ar(1,4)} 指定包含滞后 1 和 4，可能用以考虑季度效应。

{pmore}
   如果模型不包含回归项，这些项也可以被认为是因变量的自回归项；见 {manhelp arima TS}。

{phang}
{opth ma(numlist)} 指定要包含在模型中的移动平均项。这些是滞后创新或白噪声扰动的项。

{dlgtab:模型 3}

{phang}
{opt distribution(dist [#])} 指定对误差项的分布进行假设。{it:dist} 可以是 {cmd:gaussian}、{cmd:normal}、{cmd:t} 或 {cmd:ged}。{cmd:gaussian} 和 {cmd:normal} 是同义词，{it:#} 不能与它们一起指定。

{pmore}
如果指定 {cmd:distribution(t)}，则 {cmd:arch} 假设误差遵循学生 t 分布，并且自由度参数与模型的其他参数一起估计。如果指定 {cmd:distribution(t} {it:#}{cmd:)}，那么 {cmd:arch} 使用自由度为 {it:#} 的学生 t 分布。{it:#} 必须大于 2。

{pmore}
如果指定 {cmd:distribution(ged)}，则 {cmd:arch} 假设误差具有广义误差分布，并且形状参数与模型的其他参数一起估计。如果指定 {cmd:distribution(ged} {it:#}{cmd:)}，则 {cmd:arch} 使用形状参数为 {it:#} 的广义误差分布。{it:#} 必须为正。当形状参数为 2 时，广义误差分布与正态分布相同。

{phang}
{opth het(varlist)} 指定在条件方差的规范中包含 {it:varlist}。{it:varlist} 可以包含时间序列运算符。该变量列表作为乘法异方差进入方差规范；见 
{help arch##J1985:Judge et al. (1985)}。如果未指定 {cmd:het()}，则模型将不包含乘法异方差。

{phang}
{opt savespace} 通过仅保留估计所需的变量来节省内存。原始数据集将在估计后恢复。这个选项很少使用，应该仅在没有选项无法拟合模型时指定。{opt arch} 在估计过程中需要的临时存储空间比 Stata 中大多数估计命令要多得多。

{dlgtab:初始值}

{phang}
{opt arch0(cond_method)} 是一个很少使用的选项，指定如何计算 s_t^2 和 e_t^2 的条件（预样本或初始）值。在预样本期间，假设 s_t^2 = e_t^2 且该值是常数。如果未指定 {opt arch0()}，则初始值根据当前的 b 系数和任何 ARMA 参数的估计值计算为预期的无条件方差。详情请参阅 
{mansection TS archOptionsarch0:{bf:[TS] arch}}。

{phang}
{opt arma0(cond_method)} 是一个很少使用的选项，指定如果模型包含 ARMA 组件，则在样本开始时如何初始化 e_t 值。此选项仅在模型中包含 AR 或 MA 项时有效（指定的 {opt ar()}、{opt ma()} 或 {opt arima()} 选项）。详情请参阅 
{mansection TS archOptionsarma0:{bf:[TS] arch}}。

{phang}
{opt condobs(#)} 是一个很少使用的选项，指定在样本开始时固定数量的条件观测。对于这些初始观测，生成预测扰动所需的递归被执行，但仅用于初始化 e_t、e_t^2 和 s_t^2 的预估计值。在初始化期间，e_t 的任何必需滞后项被视为其预期值 0（或在 {opt arma0()} 中指定的值），且 e_t^2 和 s_t^2 的所需值假设为 {opt arch0()} 指定的值。如果希望对模型中 ARCH 项的滞后进行条件观测，则可以使用 {opt condobs()}。如果也指定 {opt arma()}，则 {opt arma()} 和 {opt condobs(#)} 所需的条件观测的最大数量将被使用。

{dlgtab:标准误/稳健性}

INCLUDE help vce_roo

{pmore}
对于 ARCH 模型，变化的稳健或准最大似然估计 (QMLE) 对对称非正态性具有稳健性。稳健的方差估计通常对均值方程的功能缺失不稳健；见 
{help arch##BW1992:Bollerslev and Wooldridge (1992)}。

{pmore}
{opt arch} 计算的稳健方差估计基于完整的 Huber/White/三明治公式，如下文所讨论。
许多其他软件包报告将某些项设置为零期望值的稳健估计（{help arch##BW1992:Bollerslev and Wooldridge 1992}），从而避免计算对数似然函数的二阶导数。

{dlgtab:报告}

{phang}
{opt level(#)}；见
{bf:{help estimation options##level():[R] 估计选项}}。

{phang}
{opt detail} 指定报告序列中的任何缺口的详细列表，包括因缺失观测值或因缺失因变量或自变量的数据而导致的缺口。

{phang}
{opt nocnsreport}; 见
     {helpb estimation options##nocnsreport:[R] 估计选项}。

{marker display_options}{...}
{phang}
{it:display_options}:
{opt noci},
{opt nopv:alues},
{opt vsquish},
{opth cformat(%fmt)},
{opt pformat(%fmt)},
{opt sformat(%fmt)} 和
{opt nolstretch};
    参见 {helpb estimation options##display_options:[R] 估计选项}。

{marker maximize_options}{...}
{dlgtab:最大化}

{phang}
{it:maximize_options}:
{opt dif:ficult},
{opth tech:nique(maximize##algorithm_spec:algorithm_spec)},
{opt iter:ate(#)},
[{cmd:no}]{opt log},
{opt tr:ace}, 
{opt grad:ient},
{opt showstep},
{opt hess:ian},
{opt showtol:erance},
{opt tol:erance(#)},
{opt ltol:erance(#)},
{opt gtol:erance(#)},
{opt nrtol:erance(#)},
{opt nonrtol:erance}, 和
{opt from(init_specs)}; 
请参见 {help maximize_zh:[R] 最大化} 以获取除 {cmd:gtolerance()} 以外的所有选项，并请参见下文关于 {cmd:gtolerance()} 的信息。

{pmore}
   这些选项对 ARCH 模型通常比其他最大似然模型更为重要，因为 ARCH 模型存在收敛问题——ARCH 模型的似然值通常难以最大化。

{pmore}
将 {cmd:technique()} 设置为默认值或 BHHH 以外的其他值，会将 {it:vcetype} 改变为 {cmd:vce(oim)}。

{pmore}
   以下选项都与最大化相关，特别是在拟合 ARCH 模型时或对大多数其他估计量不可用。

{phang2}
{opt gtolerance(#)}
指定相对于系数的梯度容忍度。当对所有参数 b_i 的 |g_i*b_i| {ul:<} {opt gtolerance()} 时，满足梯度容忍度标准。
{opt arch} 的默认梯度容忍度是 {cmd:gtolerance(.05)}。

{pmore2}
可以指定 {cmd:gtolerance(999)} 来禁用梯度标准。如果优化器重复出现“（已备份）”消息而卡住，则很可能梯度仍然包含大量值，但未能找到最大似然的上升方向。使用此选项，通常可以获得结果，但不清楚是否已找到全局最大似然。

{pmore2}
当最大化过程不顺利时，还可以将最大迭代次数设置为优化器似乎卡住的点，并在该点检查估计结果。

{phang2}
{opt from(init_specs)} 指定系数的初始值。  
ARCH 模型对初始值可能很敏感，并且可能有与局部最大值对应的系数值。默认的起始值通过一系列回归获得，在大致上对于 b 和 ARMA 参数是一致的，对于其余部分是一般合理的。然而，这些值在后期可能不总是可行，即在 {opt arch} 首次选择的初始值处无法评估似然函数。在这种情况下，估计函数将重新启动，ARCH 和 ARMA 参数初始化为零。尽管可能，但不太可能的是，即使这些值也不可行，您也需要自己提供初始值。

{pmore2}
{opt from()}的标准语法接受一个矩阵、一个值列表或系数名称值对；见 {help maximize_zh:[R] 最大化}。
{opt arch} 还允许以下内容：

{pmore2}
{cmd:from(archb0)}
将条件方差方程中所有 ARCH/GARCH/... 参数的起始值设置为 0。

{pmore2}
{cmd:from(armab0)} 将模型中所有 ARMA 参数的起始值设为 0。

{pmore2}
{cmd:from(archb0 armab0)} 将所有 ARCH/GARCH/... 和 ARMA 参数的起始值设置为 0。

{pstd}
以下选项可以与 {opt arch} 一起使用，但未在对话框中显示：

{phang}
{opt collinear}, {opt coeflegend}; 参见
     {helpb estimation options:[R] 估计选项}。


{marker examples}{...}
{title:示例}

    {hline}
    设置
{phang2}{cmd:. webuse wpi1}

{pstd}拟合具有三滞后的 ARCH 模型{p_end}
{phang2}{cmd:. arch D.ln_wpi, arch(1/3)}

{pstd}GARCH(2,1) 模型{p_end}
{phang2}{cmd:. arch D.ln_wpi, arch(1/2) garch(1)}

{pstd}与上面相同，但假设误差遵循广义误差分布{p_end}
{phang2}{cmd:. arch D.ln_wpi, arch(1/2) garch(1) distribution(ged)}

    {hline}
    设置
{phang2}{cmd:. webuse urates}

{pstd}具有协变量的 GARCH(1,1) 模型{p_end}
{phang2}{cmd:. arch illinois indiana kentucky, arch(1) garch(1)}

{pstd}与上面相同，但假设误差遵循自由度为 6 的学生 t 分布{p_end}
{phang2}{cmd:. arch illinois indiana kentucky, arch(1) garch(1) distribution(t 6)}

    {hline}
    设置
{phang2}{cmd:. webuse wpi1}

{pstd}具有 ARMA 扰动的 GARCH(1,1) 模型{p_end}
{phang2}{cmd:. arch D.ln_wpi, ar(1) ma(1 4) arch(1) garch(1)}

{pstd}具有 ARMA 扰动的 EGARCH 模型{p_end}
{phang2}{cmd:. arch D.ln_wpi, ar(1) ma(1 4) earch(1) egarch(1)}

    设置
{phang2}{cmd:. constraint 1 (3/4)*[ARCH]l1.arch = [ARCH]l2.arch}{p_end}
{phang2}{cmd:. constraint 2 (2/4)*[ARCH]l1.arch = [ARCH]l3.arch}{p_end}
{phang2}{cmd:. constraint 3 (1/4)*[ARCH]l1.arch = [ARCH]l4.arch}{p_end}

{pstd}具有约束的 ARCH 模型{p_end}
{phang2}{cmd:. arch D.ln_wpi, ar(1) ma(1 4) arch(1/4) constraint(1/3)}

    {hline}
    设置
{phang2}{cmd:. webuse dow1}{p_end}

{pstd}阈值 ARCH 模型{p_end}
{phang2}{cmd:. arch D.ln_dow, tarch(1)}{p_end}
    {hline}


{marker results}{...}
{title:存储的结果}

{pstd}
{cmd:arch} 在 {cmd:e()} 中存储以下内容：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观测数量{p_end}
{synopt:{cmd:e(N_gaps)}}缺口数量{p_end}
{synopt:{cmd:e(condobs)}}条件观测数量{p_end}
{synopt:{cmd:e(k)}}参数数量{p_end}
{synopt:{cmd:e(k_eq)}}在 {cmd:e(b)} 中的方程数{p_end}
{synopt:{cmd:e(k_eq_model)}}整体模型测试中的方程数量{p_end}
{synopt:{cmd:e(k_dv)}}因变量数量{p_end}
{synopt:{cmd:e(k_aux)}}辅助参数数量{p_end}
{synopt:{cmd:e(df_m)}}模型自由度{p_end}
{synopt:{cmd:e(ll)}}对数似然{p_end}
{synopt:{cmd:e(chi2)}}卡方{p_end}
{synopt:{cmd:e(p)}}模型测试的 p 值{p_end}
{synopt:{cmd:e(archi)}}sigma_0^2=epsilon_0^2，初始值{p_end}
{synopt:{cmd:e(archany)}}{cmd:1} 如果模型包含 ARCH 项，则为 {cmd:0}
                   否则{p_end}
{synopt:{cmd:e(tdf)}}学生 t 分布的自由度{p_end}
{synopt:{cmd:e(shape)}}广义误差分布的形状参数{p_end}
{synopt:{cmd:e(tmin)}}最小时间{p_end}
{synopt:{cmd:e(tmax)}}最大时间{p_end}
{synopt:{cmd:e(power)}}幂 ARCH 项的 varphi{p_end}
{synopt:{cmd:e(rank)}}{cmd:e(V)} 的秩{p_end}
{synopt:{cmd:e(ic)}}迭代次数{p_end}
{synopt:{cmd:e(rc)}}返回码{p_end}
{synopt:{cmd:e(converged)}}{cmd:1} 如果收敛则为 {cmd:0} 否则{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:arch}{p_end}
{synopt:{cmd:e(cmdline)}}输入的命令{p_end}
{synopt:{cmd:e(depvar)}}因变量名称{p_end}
{synopt:{cmd:e(covariates)}}协变量列表{p_end}
{synopt:{cmd:e(eqnames)}}方程名称{p_end}
{synopt:{cmd:e(wtype)}}权重类型{p_end}
{synopt:{cmd:e(wexp)}}权重表达式{p_end}
{synopt:{cmd:e(title)}}估计输出中的标题{p_end}
{synopt:{cmd:e(tmins)}}格式化的最小时间{p_end}
{synopt:{cmd:e(tmaxs)}}格式化的最大时间{p_end}
{synopt:{cmd:e(dist)}}误差项的分布： {cmd:gaussian}、 {cmd:t} 或
                   {cmd:ged}{p_end}
{synopt:{cmd:e(mhet)}}{cmd:1} 如果是乘法异方差{p_end}
{synopt:{cmd:e(dfopt)}}{cmd:yes} 如果 t 分布的自由度或 GED 分布的形状参数被估计为 {cmd:no}
                   否则{p_end}
{synopt:{cmd:e(chi2type)}}{cmd:Wald}; 模型卡方测试的类型{p_end}
{synopt:{cmd:e(vce)}}{it:vcetype} 在 {cmd:vce()} 中指定{p_end}
{synopt:{cmd:e(vcetype)}}用于标记标准误差的标题{p_end}
{synopt:{cmd:e(ma)}}移动平均项的滞后{p_end}
{synopt:{cmd:e(ar)}}自回归项的滞后{p_end}
{synopt:{cmd:e(arch)}}ARCH 项的滞后{p_end}
{synopt:{cmd:e(archm)}}ARCH-in-mean 的滞后{p_end}
{synopt:{cmd:e(archmexp)}}ARCH-in-mean 的 exp{p_end}
{synopt:{cmd:e(earch)}}EARCH 项的滞后{p_end}
{synopt:{cmd:e(egarch)}}EGARCH 项的滞后{p_end}
{synopt:{cmd:e(aarch)}}AARCH 项的滞后{p_end}
{synopt:{cmd:e(narch)}}NARCH 项的滞后{p_end}
{synopt:{cmd:e(aparch)}}A-PARCH 项的滞后{p_end}
{synopt:{cmd:e(nparch)}}NPARCH 项的滞后{p_end}
{synopt:{cmd:e(saarch)}}SAARCH 项的滞后{p_end}
{synopt:{cmd:e(parch)}}PARCH 项的滞后{p_end}
{synopt:{cmd:e(tparch)}}TPARCH 项的滞后{p_end}
{synopt:{cmd:e(abarch)}}ABARCH 项的滞后{p_end}
{synopt:{cmd:e(tarch)}}TARCH 项的滞后{p_end}
{synopt:{cmd:e(atarch)}}ATARCH 项的滞后{p_end}
{synopt:{cmd:e(sdgarch)}}SDGARCH 项的滞后{p_end}
{synopt:{cmd:e(pgarch)}}PGARCH 项的滞后{p_end}
{synopt:{cmd:e(garch)}}GARCH 项的滞后{p_end}
{synopt:{cmd:e(opt)}}优化类型{p_end}
{synopt:{cmd:e(ml_method)}}最大似然方法的类型{p_end}
{synopt:{cmd:e(user)}}似然评估程序的名称{p_end}
{synopt:{cmd:e(technique)}}最大化技术{p_end}
{synopt:{cmd:e(tech)}}最大化技术，包括迭代次数{p_end}
{synopt:{cmd:e(tech_steps)}}在切换技术之前所执行的迭代次数{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt:{cmd:e(estat_cmd)}}用于实现 {cmd:estat} 的程序{p_end}
{synopt:{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}
{synopt:{cmd:e(marginsok)}}{cmd:margins} 允许的预测{p_end}
{synopt:{cmd:e(marginsnotok)}}{cmd:margins} 不允许的预测{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:e(b)}}系数向量{p_end}
{synopt:{cmd:e(Cns)}}约束矩阵{p_end}
{synopt:{cmd:e(ilog)}}迭代日志（最多 20 次迭代）{p_end}
{synopt:{cmd:e(gradient)}}梯度向量{p_end}
{synopt:{cmd:e(V)}}估计量的方差-协方差矩阵{p_end}
{synopt:{cmd:e(V_modelbased)}}基于模型的方差{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 函数}{p_end}
{synopt:{cmd:e(sample)}}标记估计样本{p_end}
{p2colreset}{...}


{marker references}{...}
{title:参考文献}

{marker BEN1994}{...}
{phang}
Bollerslev, T., R. F. Engle, 和 D. B. Nelson. 1994.
ARCH 模型。 在 {it:计量经济学手册，第四卷}，编辑。
R. F. Engle 和 D. L. McFadden. 纽约：Elsevier。

{marker BW1992}{...}
{phang}
Bollerslev, T., 和 J. M. Wooldridge. 1992.
具有时间变化协方差的动态模型中的准最大似然估计和推断。 {it:经济计量评论} 11: 143-172。

{marker DGE1993}{...}
{phang}
Ding, Z., C. W. J. Granger, 和 R. F. Engle. 1993.
股票市场回报的长记忆特性和新模型。
{it:实证金融杂志} 1: 83-106。

{marker E1990}{...}
{phang}
Engle, R. F. 1990. 讨论：股票波动性和87年的崩盘。
{it:金融研究评论} 3: 103-106。

{marker GJR1993}{...}
{phang}
Glosten, L. R., R. Jagannathan, 和 D. E. Runkle. 1993.
标称超额收益的期望值与波动率之间的关系。 {it:金融杂志} 48: 1779-1801。

{marker H1994}{...}
{phang}
Hamilton, J. D. 1994. {it:时间序列分析}。
普林斯顿：普林斯顿大学出版社。

{marker HB1992}{...}
{phang}
Higgins, M. L., 和 A. K. Bera. 1992.
一类非线性 ARCH 模型。 {it:国际经济评论} 33:
137-158。

{marker J1985}{...}
{phang}
Judge, G. G., W. E. Griffiths, R. C. Hill, H. L{c u:}tkepohl, 和 T.-C. Lee.
1985. {it:计量经济学的理论与实践}. 第2版. 纽约：Wiley。

{marker N1991}{...}
{phang}
Nelson, D. B. 1991. 资产回报中的条件异方差：
一种新方法。 {it:经济计量学} 59: 347-370。

{marker Z1994}{...}
{phang}
Zakoian, J. M. 1994. 阈值异方差模型。
{it:经济动态与控制杂志} 18: 931-955。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <arch.sthlp>}