{smcl}
{* *! version 1.2.6  19oct2017}{...}
{viewerdialog predict "dialog canon_p"}{...}
{viewerdialog estat "dialog canon_estat"}{...}
{viewerdialog screeplot "dialog screeplot"}{...}
{vieweralsosee "[MV] canon postestimation" "mansection MV canonpostestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MV] canon" "help canon_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MV] rotatemat" "help rotatemat_zh"}{...}
{vieweralsosee "[MV] screeplot" "help screeplot_zh"}{...}
{viewerjumpto "Postestimation commands" "canon postestimation##description"}{...}
{viewerjumpto "Links to PDF documentation" "canon_postestimation_zh##linkspdf"}{...}
{viewerjumpto "predict" "canon postestimation##syntax_predict"}{...}
{viewerjumpto "estat" "canon postestimation##syntax_estat"}{...}
{viewerjumpto "Examples" "canon postestimation##examples"}{...}
{viewerjumpto "Stored results" "canon postestimation##results"}
{help canon_postestimation:English Version}
{hline}{...}
{p2colset 1 30 32 2}{...}
{p2col:{bf:[MV] canon postestimation} {hline 2}}后验估计工具{p_end}
{p2col:}({mansection MV canonpostestimation:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:后验估计命令}

{pstd}
以下后验估计命令在 {cmd:canon} 之后特别重要：

{synoptset 21}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
{synopt :{helpb canon postestimation##estatcorr:estat correlations}}显示相关矩阵{p_end}
{synopt :{helpb canon postestimation##estatload:estat loadings}}显示加载矩阵{p_end}
{synopt :{helpb canon postestimation##estatrota:estat rotate}}旋转原始系数，标准系数或加载矩阵{p_end}
{synopt :{helpb canon postestimation##estatrotc:estat rotatecompare}}比较旋转和未旋转系数或加载{p_end}
{synopt :{help screeplot_zh}}绘制典型相关性图{p_end}
{synoptline}
{p2colreset}{...}

{pstd}
以下标准后验估计命令也可用：

{synoptset 21}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
包含 help post_estatsum
包含 help post_estatvce
包含 help post_estimates
包含 help post_lincom
包含 help post_nlcom
{synopt :{helpb canon postestimation##predict:predict}}预测，残差，影响统计和其他诊断措施{p_end}
包含 help post_predictnl
包含 help post_test
包含 help post_testnl
{synoptline}
{p2colreset}{...}


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection MV canonpostestimationRemarksandexamples:备注和示例}

        {mansection MV canonpostestimationMethodsandformulas:方法和公式}

{pstd}
上述部分未包含在此帮助文件中。


{marker syntax_predict}{...}
{marker predict}{...}
{title:预测的语法}

{p 8 16 2}
{cmd:predict} {dtype} {newvar} {ifin}
{cmd:,} {it:statistic}* [{opt c:orrelation(#)}]

{synoptset 21 tabbed}{...}
{synopthdr :statistic*}
{synoptline}
{syntab :主要}
{synopt :{cmd:u}}计算 {it:{help varlist_zh:varlist1}} 的线性组合{p_end}
{synopt :{cmd:v}}计算 {it:{help varlist_zh:varlist2}} 的线性组合{p_end}
{synopt :{cmd:stdu}}计算 {it:{help varlist_zh:varlist1}} 的线性组合的标准误差{p_end}
{synopt :{cmd:stdv}}计算 {it:{help varlist_zh:varlist2}} 的线性组合的标准误差{p_end}
{synoptline}
{phang}* 没有默认统计量；你必须从列表中指定一个 {it:statistic} 。{p_end}
{phang}这些统计量可在样本内和样本外使用；如果仅想要估计样本的结果，请键入 {cmd:predict} {it:...} {cmd:if e(sample)} {it:...} 。{p_end}
{p2colreset}{...}


包含 help menu_predict


{marker desc_predict}{...}
{title:预测的描述}

{pstd}
{cmd:predict} 创建一个新变量，包含预测值，例如线性组合及其标准误差。


{marker options_predict}{...}
{title:预测的选项}

{dlgtab:主要}

{phang}{cmd:u} 和 {cmd:v} 分别计算 {it:{help varlist_zh:varlist1}} 和 {it:varlist2} 的线性组合。对于第一个典型相关，{cmd:u} 和 {cmd:v} 是具有最大相关性的线性组合。对于第二个典型相关，通过在 {cmd:predict} 中指定 {cmd:correlation(2)} 选项，{cmd:u} 和 {cmd:v} 在约束条件下具有最大相关性，该条件为 {cmd:u} 正交于第一个典型相关的 {cmd:u}，而 {cmd:v} 正交于第一个典型相关的 {cmd:v}。第三次及更高的相关性以类似方式定义。典型相关可以通过 {cmd:lc()} 选项传递给 {cmd:canon} 或通过在 {cmd:predict} 中指定 {cmd:correlation()} 选项来选择。

{phang}{cmd:stdu} 和 {cmd:stdv} 计算各自线性组合的标准误差。

{phang}{cmd:correlation(}{it:#}{cmd:)} 指定要计算的典型相关的统计量。默认值为 {cmd:correlation(1)}。如果在 {cmd:canon} 中使用 {cmd:lc()} 选项计算特定典型相关，则仅此典型相关包含在估计结果中。你可以通过指定 {cmd:correlation(1)} 或省略 {cmd:correlation()} 选项来获得该估计值。


{marker syntax_estat}{...}
{title:estat 的语法}

{marker estatcorr}{...}
{pstd}
显示相关矩阵

{p 8 14 2}
{cmd:estat} {opt cor:relation} [, {opth f:ormat(%fmt)}]


{marker estatload}{...}
{pstd}
显示典型加载

{p 8 14 2}
{cmd:estat} {opt loa:dings} [, {opth f:ormat(%fmt)}]


{marker estatrota}{...}
{pstd}
执行正交的 varimax 旋转

{p 8 14 2}
{cmd:estat} {opt rot:ate} [, {opt r:awcoefs} {opt s:tdcoefs} {opt l:oadings}
{opth f:ormat(%fmt)}]


{marker estatrotc}{...}
{pstd}
显示旋转和未旋转的系数或加载

{p 8 14 2}
{cmd:estat} {opt rotatec:ompare} [, {opth f:ormat(%fmt)}]


包含 help menu_estat


{marker desc_estat}{...}
{title:estat 的描述}

{pstd}
{cmd:estat correlations} 显示由 {cmd:canon} 计算的相关矩阵，适用于 {it:{help varlist_zh:varlist1}} 和 {it:varlist2} 以及两个列表之间。

{pstd}
{cmd:estat loadings} 显示由 {cmd:canon} 计算的典型加载。

{pstd}
{cmd:estat rotate} 执行原始系数、标准系数或典型加载的正交 varimax 旋转。旋转在典型加载上进行，而不论实际上旋转的是哪些系数或加载。

{pstd}
{cmd:estat rotatecompare} 显示旋转和未旋转的系数或加载，以及最近一次旋转的系数或加载。此命令仅在首先执行了 {cmd:estat rotate} 后可用。


{marker options_estat}{...}
{title:estat 的选项}

{phang} 
{opt format(%fmt)} 指定矩阵中数字的显示格式；请参阅 {manhelp format D} 。默认值为 {cmd:format(%8.4f)} 。

{phang}
{opt rawcoefs}， {cmd:estat rotate} 的一个选项，请求旋转原始系数。默认选项。

{phang}
{opt stdcoefs}， {cmd:estat rotate} 的一个选项，请求旋转标准化系数。

{phang}
{opt loadings}， {cmd:estat rotate} 的一个选项，请求旋转典型加载。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. sysuse auto}{p_end}
{phang2}{cmd:. canon (mpg price weight) (length trunk turn)}{p_end}

{pstd}显示加载矩阵{p_end}
{phang2}{cmd:. estat loadings}{p_end}

{pstd}显示相关矩阵{p_end}
{phang2}{cmd:. estat corr}{p_end}

{pstd}第一个 varlist 的第一和第二线性组合{p_end}
{phang2}{cmd:. predict u1, u corr(1)}{p_end}
{phang2}{cmd:. predict u2, u corr(2)}{p_end}

{pstd}旋转标准化系数{p_end}
{phang2}{cmd:. estat rotate, stdcoefs}{p_end}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:estat correlations} 将以下内容存储在 {cmd:r()} 中：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:r(corr_var1)}}{it:varlist_1} 的相关性{p_end}
{synopt:{cmd:r(corr_var2)}}{it:varlist_2} 的相关性{p_end}
{synopt:{cmd:r(corr_mixed)}}{it:varlist_1} 和 {it:varlist_2} 之间的相关性{p_end}

{pstd}
{cmd:estat loadings} 将以下内容存储在 {cmd:r()} 中：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:r(canload11)}}{it:varlist_1} 的典型加载{p_end}
{synopt:{cmd:r(canload22)}}{it:varlist_2} 的典型加载{p_end}
{synopt:{cmd:r(canload21)}}{it:varlist_2} 与 {it:varlist_1} 的典型变数之间的相关性{p_end}
{synopt:{cmd:r(canload12)}}{it:varlist_1} 与 {it:varlist_2} 的典型变数之间的相关性{p_end}
{p2colreset}{...}

{pstd}
{cmd:estat rotate} 将以下内容存储在 {cmd:r()} 中：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:r(coefficients)}}旋转的系数{p_end}
{synopt:{cmd:r(class)}}旋转分类{p_end}
{synopt:{cmd:r(criterion)}}旋转标准{p_end}

{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:r(AT)}}旋转系数矩阵{p_end}
{synopt:{cmd:r(T)}}旋转矩阵{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <canon_postestimation.sthlp>}