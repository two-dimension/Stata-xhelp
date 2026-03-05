{smcl}
{* *! version 1.0.0  23jun2019}{...}
{viewerdialog lassogof "dialog lassogof"}{...}
{vieweralsosee "[LASSO] lassogof" "mansection lasso lassogof"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[LASSO] lasso" "help lasso_zh"}{...}
{vieweralsosee "[LASSO] lassoknots" "help lassoknots_zh"}{...}
{vieweralsosee "[LASSO] lasso postestimation" "help lasso postestimation"}{...}
{viewerjumpto "Syntax" "lassogof_zh##syntax"}{...}
{viewerjumpto "Menu" "lassogof_zh##menu"}{...}
{viewerjumpto "Description" "lassogof_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "lassogof_zh##linkspdf"}{...}
{viewerjumpto "Options" "lassogof_zh##options"}{...}
{viewerjumpto "Examples" "lassogof_zh##examples"}{...}
{viewerjumpto "Stored results" "lassogof_zh##results"}
{help lassogof:English Version}
{hline}{...}
{p2colset 1 21 23 2}{...}
{p2col:{bf:[LASSO] lassogof} {hline 2}} Lasso预测后的拟合优度{p_end}
{p2col:}({mansection LASSO lassogof:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 16 2}
{cmd:lassogof}
[{it:namelist}]
{ifin}
[{cmd:,} {it:options}]

{phang}
{it:namelist}是存储估计结果的名称、名称列表、{cmd:_all}或{cmd:*}。{cmd:_all}和{cmd:*}表示相同的含义。
{manhelp estimates_store R:估计结果存储}。

{synoptset 20 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:主要}
{synopt :{cmdab:pen:alized}}使用惩罚（缩减）系数估计；默认值{p_end}
{synopt :{cmdab:post:selection}}使用后选择系数估计{p_end}
{synopt :{opth over(varname)}}为由{it:varname}定义的样本显示拟合优度{p_end}
{synopt :{cmd:noweights}}在计算拟合优度时不使用权重{p_end}
{synoptline}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 后估计}


{marker description}{...}
{title:描述}

{pstd}
{cmd:lassogof}计算在{help lasso_zh}、{help sqrtlasso_zh}和{help elasticnet_zh}之后的预测拟合优度。它还计算在{help regress_zh}、{help logit_zh}、{help probit_zh}和{help poisson_zh}估计之后的拟合优度以便进行比较。对于线性模型，显示预测的均方误差和R^2。对于logit、probit和泊松模型，显示偏差和偏差比。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection LASSO lassogofQuickstart:快速入门}

        {mansection LASSO lassogofRemarksandexamples:备注和示例}

        {mansection LASSO lassogofMethodsandformulas:方法和公式}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主要}

{phang}
{cmd:penalized}
指定使用惩罚系数估计来计算拟合优度。惩罚系数是通过lasso缩减估计的。这是默认设置。

{phang}
{cmd:postselection}
指定使用后选择系数估计来计算拟合优度。后选择系数是通过选择lasso所选变量并使用未惩罚估计量重新估计系数而得出的——即，适当时使用普通线性回归、逻辑回归、probit模型或泊松回归。

{phang}
{opt over(varname)}指定对于由{it:varname}的不同值定义的观察组分别计算拟合优度。通常，当在一个样本上拟合lasso，并希望将该样本中的拟合与另一个样本中的拟合进行比较时，将使用此选项。

{phang}
{cmd:noweights}指定在计算拟合优度时忽略用于估计lasso的任何权重。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse cattaneo2, clear}{p_end}
{phang2}{cmd:. lasso linear bweight c.mage##c.mage c.fage##c.fage}
     {cmd:c.mage#c.fage c.fedu##c.medu i.(mmarried mhisp fhisp}
     {cmd:foreign alcohol msmoke fbaby prenatal1)}

{pstd}使用惩罚系数估计的当前lasso结果的拟合优度{p_end}
{phang2}{cmd:. lassogof}

{pstd}使用后选择系数估计的拟合优度{p_end}
{phang2}{cmd:. lassogof, postselection}

{pstd}设置{p_end}
{phang2}{cmd:. lasso linear bweight c.mage##c.mage c.fage##c.fage}
     {cmd:c.mage#c.fage c.fedu##c.medu i.(mmarried mhisp fhisp foreign}
     {cmd:alcohol msmoke fbaby prenatal1)}{p_end}
{phang2}{cmd:. estimates store cv}{p_end}
{phang2}{cmd:. lasso linear bweight c.mage##c.mage c.fage##c.fage}
     {cmd:c.mage#c.fage c.fedu##c.medu i.(mmarried mhisp fhisp foreign}
     {cmd:alcohol msmoke fbaby prenatal1), selection(adaptive)}{p_end}
{phang2}{cmd:. estimates store adapt}

{pstd}来自交叉验证和自适应lasso的拟合优度{p_end}
{phang2}{cmd:. lassogof cv adapt}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:lassogof}在{cmd:r()}中存储以下内容：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:r(names)}}显示的估计结果名称{p_end}
{synopt:{cmd:r(over_var)}}{cmd:over()}变量的名称{p_end}
{synopt:{cmd:r(over_levels)}}{cmd:over()}变量的水平{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:r(table)}}包含所显示值的矩阵{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <lassogof.sthlp>}