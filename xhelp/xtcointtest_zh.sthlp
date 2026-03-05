{smcl}
{* *! version 1.0.3  19dec2018}{...}
{viewerdialog xtcointtest "dialog xtcointtest"}{...}
{vieweralsosee "[XT] xtcointtest" "mansection XT xtcointtest"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TS] dfgls" "help dfgls_zh"}{...}
{vieweralsosee "[TS] dfuller" "help dfuller_zh"}{...}
{vieweralsosee "[TS] pperron" "help pperron_zh"}{...}
{vieweralsosee "[XT] xtunitroot" "help xtunitroot_zh"}{...}
{viewerjumpto "语法" "xtcointtest_zh##syntax"}{...}
{viewerjumpto "菜单" "xtcointtest_zh##menu"}{...}
{viewerjumpto "描述" "xtcointtest_zh##description"}{...}
{viewerjumpto "PDF文档链接" "xtcointtest_zh##linkspdf"}{...}
{viewerjumpto "xtcointtest kao的选项" "xtcointtest_zh##options_kao"}{...}
{viewerjumpto "xtcointtest pedroni的选项" "xtcointtest_zh##options_pedroni"}{...}
{viewerjumpto "xtcointtest westerlund的选项" "xtcointtest_zh##options_westerlund"}{...}
{viewerjumpto "示例" "xtcointtest_zh##examples"}{...}
{viewerjumpto "存储结果" "xtcointtest_zh##results"}{...}
{viewerjumpto "参考文献" "xtcointtest_zh##references"}
{help xtcointtest:English Version}
{hline}{...}
{p2colset 1 21 25 2}{...}
{p2col:{bf:[XT] xtcointtest} {hline 2}}面板数据共整合测试{p_end}
{p2col:}({mansection XT xtcointtest:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{phang}
卡奥检验

{p 8 16 2}
{cmd:xtcointtest} {cmd:kao}
{depvar}
{varlist}
{ifin}
[{cmd:,} {it:{help xtcointtest##kao_options:kao_options}}]


{phang}
佩德罗尼检验

{p 8 16 2}
{cmd:xtcointtest} {cmd:pedroni}
{depvar}
{varlist}
{ifin}
[{cmd:,} {it:{help xtcointtest##pedroni_options:pedroni_options}}]


{phang}
韦斯特伦检验

{p 8 16 2}
{cmd:xtcointtest} {cmd:westerlund}
{depvar}
{varlist}
{ifin}
[{cmd:,} {it:{help xtcointtest##westerlund_options:westerlund_options}}]


{synoptset 25 tabbed}{...}
{marker kao_options}{...}
{synopthdr:kao_options}
{synoptline}
{syntab:主要}
{synopt :{opth l:ags(xtcointtest##lspec:lspec)}}指定扩展的Dickey-Fuller回归的滞后结构{p_end}
{synopt :{opth kernel:(xtcointtest##kspec:spec)}}指定估计长期方差的方法{p_end}
{synopt :{opt demean}}减去横截面均值{p_end}
{synoptline}

{marker pedroni_options}{...}
{synopthdr:pedroni_options}
{synoptline}
{syntab:主要}
{synopt :{cmd:ar(}{cmdab:panels:pecific}|{cmd:same)}}指定自回归参数为面板特定或所有面板相同; {cmd:ar(panelspecific)}为默认{p_end}
{synopt :{opt t:rend}}包含面板特定的时间趋势{p_end}
{synopt :{opt nocons:tant}}抑制面板特定均值{p_end}
{synopt :{opth l:ags(xtcointtest##lspec:lspec)}}指定扩展的Dickey-Fuller回归的滞后结构{p_end}
{synopt :{opth kernel:(xtcointtest##kspec:kspec)}}指定估计长期方差的方法{p_end}
{synopt :{opt demean}}减去横截面均值{p_end}
{synoptline}

{marker westerlund_options}{...}
{synopthdr:westerlund_options}
{synoptline}
{syntab:主要}
{synopt :{opt some:panels}}使用某些面板中共整合的替代理论; 默认{p_end}
{synopt :{opt all:panels}}使用所有面板中共整合的替代理论{p_end}
{synopt :{opt t:rend}}包含面板特定的时间趋势{p_end}
{synopt :{opt demean}}减去横截面均值{p_end}
{synoptline}
{p2colreset}{...}

{marker lspec}{...}
{phang}
{it:lspec} 是{p_end}
{synoptset 25 tabbed}{...}
{synopt :{it:#}}序列的滞后数; {cmd:1} 为默认{p_end}
{synopt :{opt aic} {it:#}}在最多 {it:#} 个滞后的情况下使用Akaike信息准则(AIC){p_end}
{synopt :{opt bic} {it:#}}在最多 {it:#} 个滞后的情况下使用贝叶斯信息准则(BIC){p_end}
{synopt :{opt hqic} {it:#}}在最多 {it:#} 个滞后的情况下使用汉南-奎因信息准则(HQIC){p_end}

{marker kspec}{...}
{phang}
{it:kspec} 是{p_end}
{synopt :{opt ba:rtlett} {opt nw:est}}带有Newey-West滞后的Bartlett内核; 默认{p_end}
{synopt :{opt ba:rtlett} {it:#}}带有最多 {it:#} 个滞后的Bartlett内核{p_end}
{synopt :{opt pa:rzen} {opt nw:est}}带有Newey-West滞后的Parzen内核{p End}
{synopt :{opt pa:rzen} {it:#}}带有最多 {it:#} 个滞后的Parzen内核{p_end}
{synopt :{opt qu:adraticspectral} {opt nw:est}}带有Newey-West滞后的二次谱内核{p_end}
{synopt :{opt qu:adraticspectral} {it:#}}带有最多 {it:#} 个滞后的二次谱内核{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 纵向/面板数据 > 共整合数据 > 共整合检验}


{marker description}{...}
{title:描述}

{pstd}
{cmd:xtcointtest} 执行 {help xtcointtest##K1999:Kao (1999)}, {help xtcointtest##P1999:Pedroni (1999}, {help xtcointtest##P2004:2004}), 和 {help xtcointtest##W2005:Westerlund (2005)} 的面板数据共整合检验。 面板特定均值（固定效应）和面板特定时间趋势可以包含在共整合回归模型中。

{pstd}
所有测试都有一个共同的零假设，即没有共整合。 卡奥检验和佩德罗尼检验的替代假设是假设变量在所有面板中是共整合的。在韦斯特伦检验的一个版本中，替代假设是变量在某些面板中是共整合的。在韦斯特伦检验的另一个版本中，替代假设是变量在所有面板中是共整合的。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection XT xtcointtestQuickstart:快速开始}

        {mansection XT xtcointtestRemarksandexamples:注释和示例}

        {mansection XT xtcointtestMethodsandformulas:方法和公式}

{pstd}
上述部分不包含在此帮助文件中。


{marker options_kao}{...}
{title:xtcointtest kao的选项}

{dlgtab:主要}

{phang}
{opth lags:(xtcointtest##lspec:lspec)} 
指定在计算检验统计量时用于扩展的Dickey-Fuller（ADF）回归的滞后结构。 

{phang2}
{opt lags(#)} 指定使用{it:#} 个滞后系列的ADF回归。 {it:#} 必须是非负整数。 默认值为 {cmd:lags(1)}。

{phang2}
{cmd:lags(aic}|{cmd:bic}|{cmd:hqic} {it:#}{cmd:)} 指定{cmd:xtcointtest}拟合1到{it:#} 个滞后的ADF回归，并选择使AIC、BIC或HQIC最小的滞后数。  

{phang}
{opth kernel:(xtcointtest##kspec:kspec)} 
指定用于估计每个面板序列长期方差的方法。 您可以指定内核类型和{it:#}，作为正整数的最大滞后数，或者{cmd:nwest}，由 {help xtcointtest##NW1994:Newey和West (1994)} 提供的带宽选择算法选择的最大滞后数。 内核类型可以是 {cmd:bartlett}、{cmd:parzen} 或 {cmd:quadraticspectral}。 默认值为 {cmd:kernel(bartlett nwest)}。

{phang}
{opt demean} 指定{opt xtcointtest} 首先从系列中减去横截面均值。 当指定时，每个时间段{opt xtcointtest} 计算跨面板的系列均值并从系列中减去该均值。 {help xtcointtest##LLC2002:Levin、Lin和Chu（2002）} 建议这一程序以减轻横截面依赖的影响。


{marker options_pedroni}{...}
{title:xtcointtest pedroni的选项}

{dlgtab:主要}

{phang}
{cmd:ar(panelspecific}|{cmd:same)} 指定在ADF或Phillips-Perron（PP）回归中AR参数是面板特定的还是在所有面板中相同。 

{phang2}
{cmd:ar(panelspecific)} 指定在ADF或PP回归中AR参数为面板特定。 使用此选项获得的检验统计量也称为组均值统计量或维度间统计量。 这是默认值。

{phang2}
{cmd:ar(same)} 指定在ADF或PP回归中AR参数在所有面板中相同。 使用此选项获得的检验统计量也被称为面板共整合统计量或维度内统计量。

{phang}
{opt trend} 在协变量的因变量模型中包含面板特定线性时间趋势。

{phang}
{opt noconstant} 抑制因变量模型中的面板特定均值在协变量。 指定 {opt noconstant} 强加假设，即系列在所有面板中的均值为零。 此选项不能与{cmd:trend}一起指定。

{phang}
{opth lags:(xtcointtest##lspec:lspec)} 
指定在计算检验统计量时用于ADF回归的滞后结构。 有关 {opt lags()} 的描述，请参见 {it:{help xtcointtest##options_kao:xtcointtest kao的选项}} 以获取其他详细信息。

{phang}
{opth kernel:(xtcointtest##kspec:kspec)} 
指定用于估计每个面板序列长期方差的方法。 有关 {opt kernel()} 的描述，请参见 {it:{help xtcointtest##options_kao:xtcointtest kao的选项}} 以获取其他详细信息。

{phang}
{opt demean} 指定{opt xtcointtest} 首先从系列中减去横截面均值。 有关 {opt demean} 的描述，请参见 {it:{help xtcointtest##options_kao:xtcointtest kao的选项}} 以获取其他详细信息。


{marker options_westerlund}{...}
{title:xtcointtest westerlund的选项}

{dlgtab:主要}

{phang}
{opt somepanels} 指定面板共整合的检验统计量使用替代假设，即一些面板是共整合的。 此统计量也称为组均值方差比（VR）统计量。 此选项使用AR参数为面板特定的Dickey-Fuller（DF）回归的回归。 这是默认值。

{phang}
{opt allpanels} 
指定面板共整合的检验统计量使用替代假设，即所有面板都是共整合的，也称为面板VR统计量。 此选项还意味着DF回归的AR参数在所有面板中相同。 

{phang}
{opt trend} 在协变量的因变量模型中包含面板特定线性时间趋势。

{phang}
{opt demean} 指定{opt xtcointtest} 首先从系列中减去横截面均值。 
有关 {opt demean} 的描述，请参见 {it:{help xtcointtest##options_kao:xtcointtest kao的选项}} 以获取其他详细信息。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse xtcoint}

{pstd}执行{cmd:productivity}、{cmd:rddomestic} 和 {cmd:rdforeign} 之间无共整合的卡奥检验{p_end}
{phang2}{cmd:. xtcointtest kao productivity rddomestic rdforeign}

{pstd}执行{cmd:productivity}、{cmd:rddomestic} 和 {cmd:rdforeign} 之间无共整合的佩德罗尼检验{p_end}
{phang2}{cmd:. xtcointtest pedroni productivity rddomestic rdforeign}

{pstd}执行{cmd:productivity}、{cmd:rddomestic} 和 {cmd:rdforeign} 之间无共整合的韦斯特伦检验，其替代假设为某些面板中共整合{p_end}
{phang2}{cmd:. xtcointtest westerlund productivity rddomestic rdforeign}

{pstd}同上，但替代假设为所有面板均为共整合{p_end}
{phang2}{cmd:. xtcointtest westerlund productivity rddomestic rdforeign,}
           {cmd:allpanels}


{marker results}{...}
{title:存储结果}

{pstd}
{opt xtcointtest kao} 将以下内容存储在 {opt r()} 中：

{synoptset 25 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt :{cmd:r(N)}}观察值数{p_end}
{synopt :{cmd:r(N_g)}}组数{p_end}
{synopt :{cmd:r(N_t)}}时间段数{p_end}
{synopt :{cmd:r(hac_lagm)}}HAC方差估计中的平均滞后{p_end}
{synopt :{cmd:r(adf_lags)}}ADF回归中使用的滞后{p_end}

{p2col 5 20 24 2: 宏}{p_end}
{synopt :{cmd:r(test)}}{opt kao}{p_end}
{synopt :{cmd:r(hac_kernel)}}HAC方差估计中使用的内核{p_end}
{synopt :{cmd:r(hac_method)}}HAC滞后选择算法{p_end}
{synopt :{cmd:r(adf_method)}}ADF回归滞后选择标准{p_end}
{synopt :{cmd:r(demean)}}{opt demean}，如果数据被去均值{p_end}
{synopt :{cmd:r(deterministics)}}{opt constant}{p_end}

{p2col 5 20 24 2: 矩阵}{p_end}
{synopt :{cmd:r(stats)}}卡奥检验统计量{p_end}
{synopt :{cmd:r(p)}}p值{p_end}

{pstd}
{opt xtcointtest pedroni} 将以下内容存储在 {opt r()} 中：

{p2col 5 20 24 2: 标量}{p_end}
{synopt :{cmd:r(N)}}观察值数{p_end}
{synopt :{cmd:r(N_g)}}组数{p_end}
{synopt :{cmd:r(N_t)}}时间段数{p_end}
{synopt :{cmd:r(hac_lagm)}}HAC方差估计中的平均滞后{p_end}
{synopt :{cmd:r(adf_lags)}}ADF回归中使用的滞后{p_end}

{p2col 5 20 24 2: 宏}{p_end}
{synopt :{cmd:r(test)}}{opt pedroni}{p_end}
{synopt :{cmd:r(hac_kernel)}}HAC方差估计中使用的内核{p_end}
{synopt :{cmd:r(hac_method)}}HAC滞后选择算法{p_end}
{synopt :{cmd:r(adf_method)}}ADF回归滞后选择标准{p_end}
{synopt :{cmd:r(demean)}}{opt demean}，如果数据被去均值{p_end}
{synopt :{cmd:r(deterministics)}}{opt noconstant}、{opt constant} 或 {opt trend}{p_end}

{p2col 5 20 24 2: 矩阵}{p_end}
{synopt :{cmd:r(stats)}}佩德罗尼检验统计量{p_end}
{synopt :{cmd:r(p)}}p值{p_end}

{pstd}
{opt xtcointtest westerlund} 将以下内容存储在 {opt r()} 中：

{p2col 5 20 24 2: 标量}{p_end}
{synopt :{cmd:r(N)}}观察值数{p_end}
{synopt :{cmd:r(N_g)}}组数{p_end}
{synopt :{cmd:r(N_t)}}时间段数{p_end}
{synopt :{cmd:r(stat)}}韦斯特伦检验统计量{p_end}
{synopt :{cmd:r(p)}}p值{p_end}

{p2col 5 20 24 2: 宏}{p_end}
{synopt :{cmd:r(test)}}{opt westerlund}{p_end}
{synopt :{cmd:r(demean)}}{opt demean}，如果数据被去均值{p_end}
{synopt :{cmd:r(deterministics)}}{opt constant} 或 {opt trend}{p_end}
{p2colreset}{...}


{marker references}{...}
{title:参考文献}

{marker K1999}{...}
{phang}
Kao, C. 1999. Spurious regression and residual-based tests for cointegration in panel data. {it:Journal of Econometrics} 90: 1-44.

{marker LLC2002}{...}
{phang}
Levin, A., C.-F. Lin, and C.-S. J. Chu. 2002. Unit root tests in panel data: Asymptotic and finite-sample properties. {it:Journal of Econometrics} 108: 1-24.

{marker NW1994}{...}
{phang}
Newey, W. K., and K. D. West. 1987. A simple, positive semi-definite, heteroskedasticity and autocorrelation consistent covariance matrix. {it:Econometrica} 55: 703-708.

{marker P1999}{...}
{phang}
Pedroni, P. 1999. Critical values for cointegration tests in heterogeneous panels with multiple regressors. {it:Oxford Bulletin of Economics and Statistics} 61: 653-670.

{marker P2004}{...}
{phang}
------. 2004. Panel cointegration: Asymptotic and finite sample properties of pooled time series tests with an application to the PPP hypothesis. {it:Econometric Theory} 20: 597-625.

{marker W2005}{...}
{phang}
Westerlund, J. 2005. New simple tests for panel cointegration. {it:Econometric Reviews} 24: 297-316.
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <xtcointtest.sthlp>}