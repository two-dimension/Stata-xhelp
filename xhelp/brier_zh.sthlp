{smcl}
{* *! version 1.1.9  13apr2018}{...}
{viewerdialog brier "dialog brier"}{...}
{vieweralsosee "[R] brier" "mansection R brier"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] logistic" "help logistic_zh"}{...}
{vieweralsosee "[R] logit" "help logit_zh"}{...}
{vieweralsosee "[R] probit" "help probit_zh"}{...}
{viewerjumpto "Syntax" "brier_zh##syntax"}{...}
{viewerjumpto "Menu" "brier_zh##menu"}{...}
{viewerjumpto "Description" "brier_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "brier_zh##linkspdf"}{...}
{viewerjumpto "Option" "brier_zh##option"}{...}
{viewerjumpto "Example" "brier_zh##example"}{...}
{viewerjumpto "Stored results" "brier_zh##results"}
{help brier:English Version}
{hline}{...}
{p2colset 1 14 16 2}{...}
{p2col:{bf:[R] brier} {hline 2}}Brier得分分解{p_end}
{p2col:}({mansection R brier:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 14 2}
{cmd:brier} {it:outcomevar} {it:forecastvar} {ifin} 
[{cmd:,} {opt g:roup(#)}]

{phang}
{it:outcomevar} 是一个二元变量，表示实验的结果。

{phang}
{it:forecastvar} 是对应的正结果概率，必须在0和1之间。

{phang}
{cmd:by} 选项是允许的；请参阅 {manhelp by D}。


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 流行病学及相关 > 其他 > Brier得分分解}


{marker description}{...}
{title:描述}

{pstd}
{cmd:brier} 计算Brier均值概率得分的Yates、Sanders和Murphy分解。Brier得分是观察到的结果与预测（预估）之间不一致性的度量。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection R brierQuickstart:快速开始}

        {mansection R brierRemarksandexamples:备注和示例}

        {mansection R brierMethodsandformulas:方法和公式}

{pstd}
上述部分不包含在此帮助文件中。


{marker option}{...}
{title:选项}

{dlgtab:主要}

{phang}
{opt group(#)} 指定将用于计算分解的组数。 {cmd:group(10)} 是默认值。


{marker example}{...}
{title:示例}

{phang}{cmd:. webuse bball}{p_end}
{phang}{cmd:. brier win for, group(5)}{p_end}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:brier} 将以下结果存储在 {cmd:r()} 中：

{synoptset 16 tabbed}{...}
{p2col 5 16 20 2: 标量}{p_end}
{synopt:{cmd:r(p_roc)}}单边p值用于ROC面积检验{p_end}
{synopt:{cmd:r(roc_area)}}ROC面积{p_end}
{synopt:{cmd:r(z)}}Spiegelhalter的z统计量{p_end}
{synopt:{cmd:r(p)}}单边p值用于Spiegelhalter的z检验{p_end}
{synopt:{cmd:r(brier)}}Brier得分{p_end}
{synopt:{cmd:r(brier_s)}}Sanders修正后的Brier得分{p_end}
{synopt:{cmd:r(sanders)}}Sanders分解{p_end}
{synopt:{cmd:r(oiv)}}结果指数方差{p_end}
{synopt:{cmd:r(murphy)}}Murphy分解{p_end}
{synopt:{cmd:r(relinsm)}}小样本可靠性{p_end}
{synopt:{cmd:r(Var_f)}}预测方差{p_end}
{synopt:{cmd:r(Var_fex)}}超额预测方差{p_end}
{synopt:{cmd:r(Var_fmin)}}最小预测方差{p_end}
{synopt:{cmd:r(relinla)}}大样本可靠性{p_end}
{synopt:{cmd:r(cov_2f)}}2*预测-结果-协方差{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <brier.sthlp>}