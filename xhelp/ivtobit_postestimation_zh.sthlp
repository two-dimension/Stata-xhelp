{smcl}
{* *! version 1.2.11  05sep2018}{...}
{viewerdialog predict "dialog ivtobit_p"}{...}
{viewerdialog estat "dialog ivtobit_estat"}{...}
{vieweralsosee "[R] ivtobit postestimation" "mansection R ivtobitpostestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] ivtobit" "help ivtobit_zh"}{...}
{viewerjumpto "后验估计命令" "ivtobit postestimation##description"}{...}
{viewerjumpto "PDF文档链接" "ivtobit_postestimation_zh##linkspdf"}{...}
{viewerjumpto "预测" "ivtobit postestimation##syntax_predict"}{...}
{viewerjumpto "边际效应" "ivtobit postestimation##syntax_margins"}{...}
{viewerjumpto "estat" "ivtobit postestimation##estat"}{...}
{viewerjumpto "示例" "ivtobit postestimation##examples"}
{help ivtobit_postestimation:English Version}
{hline}{...}
{p2colset 1 31 33 2}{...}
{p2col:{bf:[R] ivtobit postestimation} {hline 2}}ivtobit的后验估计工具{p_end}
{p2col:}({mansection R ivtobitpostestimation:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:后验估计命令}

{pstd}
以下后验估计命令在执行{cmd:ivtobit}后特别重要：

{synoptset 22}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
{synopt :{helpb ivtobit_postestimation##estat:estat correlation}}报告因变量和内生变量的误差相关矩阵{p_end}
{synopt :{helpb ivtobit_postestimation##estat:estat covariance}}报告因变量和内生变量的误差协方差矩阵{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
这些命令在二步估计器或{cmd:svy}前缀后不适用。{p_end}

{pstd}
以下标准后验估计命令也可用：

{synoptset 22 tabbed}{...}
{p2coldent :命令}描述{p_end}
{synoptline}
包含帮助后对比
{p2coldent:* {bf:{help estat ic}}}Akaike信息准则和Schwarz贝叶斯信息准则（AIC和BIC）{p_end}
包含帮助后状态汇总
包含帮助后协方差
包含帮助后抽样协方差
包含帮助后估计
{p2col 4 29 31 2:*+ {bf:{help forecast_zh}}}动态预测和模拟{p_end}
包含帮助后Hausman检验
包含帮助后线性组合
{p2coldent :+ {help lrtest_zh}}似然比检验；与二步估计器不适用{p_end}
{synopt:{helpb ivtobit_postestimation##margins:margins}}边际平均数、预测边际、边际效应和平均边际效应{p_end}
包含帮助后边际图
包含帮助后非线性组合
{synopt :{helpb ivtobit postestimation##predict:predict}}预测、残差、影响统计和其他诊断措施{p_end}
包含帮助后预测非线性
包含帮助后担保比较
{p2coldent:* {help suest_zh}}看似不相关的估计{p_end}
包含帮助后检验
包含帮助后检测非线性
{synoptline}
{p2colreset}{...}
{p 4 6 2}
* {cmd:estat ic}、{cmd:forecast}和{cmd:suest}在{cmd:ivtobit, twostep}后不适用。{p_end}
{p 4 6 2}
+ {cmd:forecast}、{cmd:hausman}和{cmd:lrtest}在{cmd:svy}估计结果中不适用。{p_end}


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection R ivtobitpostestimationRemarksandexamples:备注和示例}

        {mansection R ivtobitpostestimationMethodsandformulas:方法和公式}

{pstd}
以上部分未在此帮助文件中包含。


{marker syntax_predict}{...}
{marker predict}{...}
{title:预测的语法}

{phang}
在最大似然或二步后

{p 8 16 2}
{cmd:predict} {dtype} {newvar} {ifin} [{cmd:,} {it:statistic}]

{phang}
在最大似然后

{p 8 16 2}
{cmd:predict} {dtype}
{c -(}{it:{help newvarlist##stub*:stub}}{cmd:*} {c |} {it:{help newvarlist_zh}}{c )-}
{ifin} {cmd:,} {opt sc:ores}

{synoptset 17 tabbed}{...}
{synopthdr :统计量}
{synoptline}
{syntab :主要}
{synopt :{opt xb}}线性预测；默认值{p_end}
{synopt :{opt stdp}}线性预测的标准误差{p_end}
{synopt :{opt stdf}}预测的标准误差；在二步估计器中不可用{p_end}
{synopt :{opt pr(a,b)}}Pr({it:a} < y < {it:b}) 考虑内生性；
    在二步估计器中不可用{p_end}
{synopt :{opt e(a,b)}}{it:E}(y {c |} {it:a} < y < {it:b}) 考虑内生性；在二步估计器中不可用{p_end}
{synopt :{opt ys:tar(a,b)}}{it:E}(y*), y* = max{c -(}{it:a},min(y,{it:b}){c )-} 考虑内生性；在二步估计器中不可用{p_end}
{synoptline}
{p2colreset}{...}
包含帮助样本
{p 4 6 2}
{opt stdf}不允许与{cmd:svy}估计结果一起使用。
{p_end}

包含帮助位置


包含帮助菜单预测


{marker des_predict}{...}
{title:预测的描述}

{pstd}
{cmd:predict}创建一个包含预测的变量，例如线性预测、标准误差、概率和期望值。


{marker options_predict}{...}
{title:预测的选项}

{dlgtab:主要}

{phang}{opt xb}，默认值，计算线性预测。

{phang}{opt stdp}计算线性预测的标准误差。可以看作是观察值协变量模式的预测期望值或均值的标准误差。预测的标准误差也称为拟合值的标准误差。

{phang}{opt stdf}计算预测的标准误差，即1个观察的点预测的标准误差。通常称为未来或预测值的标准误差。根据构造，{opt stdf}产生的标准误差总是大于{opt stdp}产生的标准误差；见{it:{mansection R regresspostestimationMethodsandformulas:方法和公式}}在{bf:[R] regress postestimation}中。{opt stdf}在二步估计器中不可用。

{phang}
{opt pr(a,b)}计算{bind:Pr({it:a} < y < {it:b} | z)}，观察到的y|z在区间({it:a},{it:b})内的概率，考虑内生性。

{pmore}
{it:a}和{it:b}可以指定为数字或变量名；{it:lb}和 
{it:ub}是变量名；{break}
{cmd:pr(20,30)}计算{bind:Pr(20 < y < 30 | z)}；{break}
{cmd:pr(}{it:lb}{cmd:,}{it:ub}{cmd:)}计算
{bind:Pr({it:lb} < y < {it:ub} | z)}；并且{break}
{cmd:pr(20,}{it:ub}{cmd:)}计算{bind:Pr(20 < y < {it:ub} | z)}。

{pmore}
{it:a}缺失{bind:({it:a} {ul:>} .)}表示负无穷；
{cmd:pr(.,30)}计算{bind:Pr(-无穷大 < y < 30 | z)}；{break}
{cmd:pr(}{it:lb}{cmd:,30)}计算
{bind:Pr(-无穷大 < y < 30 |z)}在
{bind:{it:lb} {ul:>} .}的观测中{break} 
并在其他地方计算{bind:Pr({it:lb} < y < 30 | z)}。

{pmore}
{it:b}缺失{bind:({it:b} {ul:>} .)}表示正无穷； {cmd:pr(20,.)} 
计算{bind:Pr(+无穷大 > y > 20 | z)}； {break}
{cmd:pr(20,}{it:ub}{cmd:)}计算{bind:Pr(+无穷大 > y > 20 | z)}在
{bind:{it:ub} {ul:>} .}的观测中{break}
并且在其他地方计算{bind:Pr(20 < y < {it:ub} | z)}。{p_end}

{pmore}
{opt pr(a,b)}在二步估计器中不可用。

{phang}
{cmd:e(}{it:a}{cmd:,}{it:b}{cmd:)}计算
{bind:{it:E}(y | {it:a} < y < {it:b})}，在区间({it:a},{it:b})内条件下{it:y}|z的期望值，意味着{it:y}|z被截断。{it:a}和{it:b}的指定方式与{cmd:pr()}相同。  
在计算{opt e(a,b)}时考虑内生性。
{opt e(a,b)}在二步估计器中不可用。

{phang}
{cmd:ystar(}{it:a}{cmd:,}{it:b}{cmd:)}计算{it:E}(y*)，其中
{bind:y* = {it:a}}如果{bind:z + d {ul:<} {it:a}}，{bind:y* = {it:b}}
如果{bind:z + d {ul:>} {it:b}}，而{bind:y* = z + d + u}则为其他情况，
意味着y*被删失。{it:a}和{it:b}的指定方式与{cmd:pr()}相同。
在计算{opt ystar(a,b)}时考虑内生性。
{opt ystar(a,b)}在二步估计器中不可用。

{phang}
{opt scores}，在{opt twostep}中不可用，计算方程级评分变量。

{pmore}
对于具有一个内生回归量的模型，创建五个新变量。

{pmore2}
第一个新变量将包含与probit方程的对数似然的第一个导数。

{pmore2}
第二个新变量将包含与内生回归量的简化形式方程的对数似然的第一个导数。

{pmore2}
第三个新变量将包含与alpha的对数似然的第一个导数。

{pmore2}
第四个新变量将包含与ln(s)的对数似然的第一个导数。

{pmore2}
第五个新变量将包含与ln(v)的对数似然的第一个导数。

{pmore}
对于具有p个内生回归量的模型， 
创建p + {c -(}(p + 1)(p + 2){c )-}/2 + 1个新变量。

{pmore2}
第一个新变量将包含与tobit方程的对数似然的第一个导数。

{pmore2}
第二个到(p + 1)个新变量将包含与内生变量的简化形式方程的对数似然的第一个导数，按照调用{cmd:ivtobit}时指定的顺序。

{pmore2}
其余评分变量将包含对数似然关于(p+1)(p+2)/2个附属参数的偏导数。

包含帮助边际的语法

{synoptset 17}{...}
{synopthdr :统计量}
{synoptline}
{synopt :{opt xb}}线性预测；默认值{p_end}
{synopt :{opt pr(a,b)}}Pr({it:a} < y < {it:b}) 考虑内生性；在二步估计器中不可用{p_end}
{synopt :{opt e(a,b)}}{it:E}(y {c |} {it:a} < y < {it:b}) 考虑内生性；在二步估计器中不可用{p_end}
{synopt :{opt ys:tar(a,b)}}{it:E}(y*), y* = max{c -(}{it:a},min(y,{it:b}){c )-} 考虑内生性；在二步估计器中不可用{p_end}
{synopt :{opt stdp}}在{cmd:margins}中不允许{p_end}
{synopt :{opt stdf}}在{cmd:margins}中不允许{p_end}
{synoptline}
{p2colreset}{...}

包含帮助边际的备注


包含帮助边际的菜单


{marker des_margins}{...}
{title:边际的描述}

{pstd}
{cmd:margins}估计线性预测、概率和期望值的响应边际。


{marker estat}{...}
{title:estat的语法}

{pstd}
相关矩阵

{p 8 19 2}
{cmd:estat} {opt cor:relation} [{cmd:,}
	{opth bor:der(matlist##bspec:bspec)} {opt left(#)}
        {opth for:mat(%fmt)}]


{pstd}
协方差矩阵

{p 8 19 2}
{cmd:estat} {opt cov:ariance} [{cmd:,}
	{opth bor:der(matlist##bspec:bspec)} {opt left(#)}
        {opth for:mat(%fmt)}]


包含帮助estat的菜单


{marker des_estat}{...}
{title:estat的描述}

{pstd}
{cmd:estat correlation}显示因变量和内生变量的误差相关矩阵。

{pstd}
{cmd:estat covariance}显示因变量和内生变量的误差协方差矩阵。

{pstd}
{cmd:estat correlation}和{cmd:estat covariance}在{cmd:ivtobit}二步估计后不允许使用。


{marker options_estat}{...}
{title:estat的选项}

{dlgtab:主要}

{phang}
{opth border:(matlist##bspec:bspec)}设置矩阵显示的边框样式。
默认值为{cmd:border(all)}。

{phang}
{opt left(#)}设置矩阵显示的左边缩进。默认值为{cmd:left(2)}。

{phang}
{opth format(%fmt)}指定显示矩阵的各个元素的格式。默认值为{cmd:format(%9.0g)}。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse laborsup}{p_end}
{phang2}{cmd:. ivtobit fem_inc fem_educ kids (other_inc = male_educ), ll}{p_end}

{pstd}计算期望收入的平均边际效应，条件是收入大于10（千美元）{p_end}
{phang2}{cmd:. margins, predict(e(10,.)) dydx(other_inc fem_educ kids)}
{p_end}

{pstd}分别为具有8、12和16年教育的女性进行估计{p_end}
{phang2}{cmd:. margins, predict(e(10,.)) dydx(kids) at(fem_educ=(8(4)16))}

{pstd}绘制最新的估计值和置信区间{p_end}
{phang2}{cmd:. marginsplot}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <ivtobit_postestimation.sthlp>}