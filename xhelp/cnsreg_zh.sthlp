{smcl}
{* *! version 1.3.6  12dec2018}{...}
{viewerdialog cnsreg "dialog cnsreg"}{...}
{viewerdialog "svy: cnsreg" "dialog cnsreg, message(-svy-) name(svy_cnsreg)"}{...}
{vieweralsosee "[R] cnsreg" "mansection R cnsreg"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] cnsreg postestimation" "help cnsreg postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MI] Estimation" "help mi estimation"}{...}
{vieweralsosee "[R] regress" "help regress_zh"}{...}
{vieweralsosee "[SVY] svy estimation" "help svy_estimation_zh"}{...}
{viewerjumpto "Syntax" "cnsreg_zh##syntax"}{...}
{viewerjumpto "Menu" "cnsreg_zh##menu"}{...}
{viewerjumpto "Description" "cnsreg_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "cnsreg_zh##linkspdf"}{...}
{viewerjumpto "Options" "cnsreg_zh##options"}{...}
{viewerjumpto "Examples" "cnsreg_zh##examples"}{...}
{viewerjumpto "Stored results" "cnsreg_zh##results"}
{help cnsreg:English Version}
{hline}{...}
{p2colset 1 15 17 2}{...}
{p2col:{bf:[R] cnsreg} {hline 2}}约束线性回归{p_end}
{p2col:}({mansection R cnsreg:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 15 2}
{cmd:cnsreg}
{depvar}
{indepvars}
{ifin}
[{it:{help cnsreg##weight:权重}}]
{cmd:,}
{opth c:onstraints(估计选项##constraints():约束)}
[{it:选项}]

{synoptset 28 tabbed}{...}
{synopthdr}
{synoptline}
{syntab :模型}
{p2coldent :* {cmdab:c:onstraints(}{it:{help estimation options##constraints():约束}}{cmd:)}}应用指定的线性约束{p_end}
{synopt :{opt nocons:tant}}抑制常数项{p_end}

{syntab:标准误/稳健}
{synopt :{opth vce(vcetype)}}{it:vcetype} 可以是 {opt ols}、{opt r:obust}、{opt cl:uster} {it:clustvar}、{opt boot:strap} 或
{opt jack:knife}{p_end}

{syntab:报告}
{synopt :{opt l:evel(#)}}设置置信水平；默认值为
{cmd:level(95)}{p_end}
{synopt :{opt nocnsr:eport}}不显示约束{p_end}
{synopt :{it:{help cnsreg##display_options:显示选项}}}控制
包含帮助短描述显示选项

{synopt :{opt ms:e1}}强制 MSE 为 1{p_end}
{synopt :{opt col:linear}}保留共线变量{p_end}
包含帮助短描述系数图例
{synoptline}
{p2colreset}{...}
{p 4 6 2}
* {opt constraints(约束)}是必需的。{p_end}
包含帮助 fvvarlist
{p 4 6 2}
{it:depvar} 和 {it:indepvars} 可以包含时间序列运算符；请参见
{help tsvarlist_zh}.{p_end}
{p 4 6 2}
{opt bootstrap}、{opt by}、{opt fp}、{opt jackknife}、{opt mi estimate}、{opt rolling}、{opt statsby} 和 {opt svy} 是被允许的；参见 {help prefix_zh}。
{p_end}
包含帮助 vce_mi
{p 4 6 2}使用 {help fp_zh} 前缀时，无法为包含分数多项式项的变量指定约束。{p_end}
{p 4 6 2}使用 {help bootstrap_zh} 前缀时不允许使用权重。{p_end}
{p 4 6 2}{cmd:aweight} 在使用 {help jackknife_zh} 前缀时不被允许。
{p_end}
{p 4 6 2}
{opt vce()}、{opt mse1} 和权重在使用 {help svy_zh} 前缀时不被允许。{p_end}
{marker weight}{...}
{p 4 6 2}
{opt aweight}、{opt fweight}、{opt iweight} 和 {opt pweight} 是被允许的；
请参见 {help weight_zh}.{p_end}
{p 4 6 2}
{opt mse1}、{opt collinear} 和 {opt coeflegend} 不出现在对话框中。{p_end}
{p 4 6 2}
参见 {manhelp cnsreg_postestimation R:cnsreg postestimation} 以获取估计后可用的功能。  {p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 线性模型及相关 > 约束线性回归}


{marker description}{...}
{title:描述}

{pstd}
{cmd:cnsreg} 拟合约束线性回归模型。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection R cnsregQuickstart:快速入门}

        {mansection R cnsregRemarksandexamples:备注和示例}

        {mansection R cnsregMethodsandformulas:方法和公式}

{pstd}
上述部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:模型}

{phang}
{opt constraints(约束)}、{opt noconstant}；参见
{helpb estimation options:[R] 估计选项}。

{dlgtab:标准误/稳健}

{phang}
{opt vce(vcetype)} 指定报告的标准误类型，包含从渐近理论推导的类型 ({cmd:ols})、对某些类型的误规范稳健的类型 ({cmd:robust})、允许组内相关的类型 ({cmd:cluster} {it:clustvar})，以及使用自助法或留一法的类型 ({cmd:bootstrap}、{cmd:jackknife})；参见
{help vce_option_zh:[R] {it:vce_option}}。

{pmore}
{cmd:vce(ols)}，默认，使用普通最小二乘回归的标准方差估计量。

{dlgtab:报告}

{phang}
{opt level(#)}、{opt nocnsreport}；参见
     {helpb estimation options:[R] 估计选项}。

包含帮助 displayopts_list

{pstd}
以下选项在 {cmd:cnsreg} 中可用，但不在对话框中显示：

{phang}
{opt mse1} 仅在使用 {cmd:cnsreg} 拟合约束线性回归以外模型的程序和 ado 文件中使用。 {opt mse1} 将均方误差设置为 1，从而强制估计量的方差-协方差矩阵为 (X'DX)^-1（请参见 
{it:{mansection R regressMethodsandformulas:方法和公式}}在 
{hi:[R] 回归}中）并影响计算的标准误。
t 统计量的自由度计算为 n 而不是 n-p+c，其中 p 是参数的总数（在限制之前，并包括常数），c 是约束的数量。

{pmore}
{opt mse1} 不允许与 {help svy_zh} 前缀一起使用。

{phang}
{opt collinear}、{opt coeflegend}；参见
     {helpb estimation options:[R] 估计选项}。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. sysuse auto}{p_end}

{pstd}约束 {cmd:price} 和 {cmd:weight} 的系数相等{p_end}
{phang2}{cmd:. constraint 1 price = weight}{p_end}

{pstd}拟合约束线性回归{p_end}
{phang2}{cmd:. cnsreg mpg price weight, constraints(1)}{p_end}

{pstd}定义更多约束{p_end}
{phang2}{cmd:. constraint 2 displ = weight}{p_end}
{phang2}{cmd:. constraint 3 gear_ratio = -foreign}{p_end}

{pstd}拟合约束线性回归，应用所有三个约束{p_end}
{phang2}{cmd:. cnsreg mpg price weight displ gear_ratio foreign length, c(1-3)}{p_end}

{pstd}约束常数为零{p_end}
{phang2}{cmd:. constraint 99 _cons = 0}{p_end}

{pstd}拟合约束线性回归，应用所有四个约束{p_end}
{phang2}{cmd:. cnsreg mpg price weight displ gear_ratio foreign length, c(1-3,99)}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:cnsreg} 在 {cmd:e()} 中存储以下内容：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观察数{p_end}
{synopt:{cmd:e(df_m)}}模型自由度{p_end}
{synopt:{cmd:e(df_r)}}残差自由度{p_end}
{synopt:{cmd:e(F)}}F 统计量{p_end}
{synopt:{cmd:e(p)}}模型检验的 p 值{p_end}
{synopt:{cmd:e(rmse)}}均方根误差{p_end}
{synopt:{cmd:e(ll)}}对数似然{p_end}
{synopt:{cmd:e(N_clust)}}聚类数{p_end}
{synopt:{cmd:e(rank)}}{cmd:e(V)} 的秩{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:cnsreg}{p_end}
{synopt:{cmd:e(cmdline)}}输入的命令{p_end}
{synopt:{cmd:e(depvar)}}因变量的名称{p_end}
{synopt:{cmd:e(wtype)}}权重类型{p_end}
{synopt:{cmd:e(wexp)}}权重表达式{p_end}
{synopt:{cmd:e(title)}}估计输出中的标题{p_end}
{synopt:{cmd:e(clustvar)}}聚类变量的名称{p_end}
{synopt:{cmd:e(vce)}}在 {cmd:vce()} 中指定的 {it:vcetype}{p_end}
{synopt:{cmd:e(vcetype)}}用于标记标准误的标题{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt:{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}
{synopt:{cmd:e(marginsok)}}{cmd:margins} 允许的预测{p_end}
{synopt:{cmd:e(asbalanced)}}因子变量 {cmd:fvset} 为 {cmd:asbalanced}{p_end}
{synopt:{cmd:e(asobserved)}}因子变量 {cmd:fvset} 为 {cmd:asobserved}{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:e(b)}}系数向量{p_end}
{synopt:{cmd:e(Cns)}}约束矩阵{p_end}
{synopt:{cmd:e(V)}}估计量的方差-协方差矩阵{p_end}
{synopt:{cmd:e(V_modelbased)}}基于模型的方差{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 函数}{p_end}
{synopt:{cmd:e(sample)}}标记估计样本{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <cnsreg.sthlp>}