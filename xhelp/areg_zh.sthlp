{smcl}
{* *! version 1.1.27  14may2018}{...}
{viewerdialog areg "dialog areg"}{...}
{vieweralsosee "[R] areg" "mansection R areg"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] areg postestimation" "help areg postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MI] Estimation" "help mi estimation"}{...}
{vieweralsosee "[R] regress" "help regress_zh"}{...}
{vieweralsosee "[XT] xtreg" "help xtreg_zh"}{...}
{viewerjumpto "Syntax" "areg_zh##syntax"}{...}
{viewerjumpto "Menu" "areg_zh##menu"}{...}
{viewerjumpto "Description" "areg_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "areg_zh##linkspdf"}{...}
{viewerjumpto "Options" "areg_zh##options"}{...}
{viewerjumpto "Examples" "areg_zh##examples"}{...}
{viewerjumpto "Stored results" "areg_zh##results"}
{help areg:English Version}
{hline}{...}
{p2colset 1 13 15 2}{...}
{p2col:{bf:[R] areg} {hline 2}}使用大量虚拟变量集的线性回归{p_end}
{p2col:}({mansection R areg:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 13 2}
{cmd:areg} 
{depvar} 
[{indepvars}] 
{ifin}
[{it:{help areg##weight:weight}}]{cmd:,}
{opth a:bsorb(varname)}
[{it:options}]

{synoptset 20 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:模型}
{p2coldent:* {opth a:bsorb(varname)}}分类变量被吸收{p_end}

{syntab:标准误/稳健}
{synopt :{opth vce(vcetype)}}{it:vcetype} 可为 {opt ols}, {opt r:obust},
   {opt cl:uster} {it:clustvar}, {opt boot:strap}, 或 {opt jack:knife}{p_end}

{syntab:报告}
{synopt :{opt l:evel(#)}}设定置信水平；默认为 {cmd:level(95)}{p_end}
{synopt :{it:{help areg##display_options:display_options}}}控制 
INCLUDE help shortdes-displayoptall

INCLUDE help shortdes-coeflegend
{synoptline}
{p2colreset}{...}
{p 4 6 2}* {opt absorb(varname)} 为必需项。{p_end}
INCLUDE help fvvarlist
{p 4 6 2}{it:depvar} 和 {it:indepvars} 可以包含时间序列运算符；见 {help tsvarlist_zh}.{p_end}
{p 4 6 2}{cmd:bootstrap}, {cmd:by}, {cmd:fp}, {cmd:jackknife},
{cmd:mi estimate},
{cmd:rolling}, 和 {cmd:statsby} 被允许；见 {help prefix_zh}.{p_end}
INCLUDE help vce_mi
{p 4 6 2}与 {help bootstrap_zh} 前缀不允许使用权重。{p_end}
{p 4 6 2}{cmd:aweight}s 不允许与 {help jackknife_zh} 前缀一起使用。
{p_end}
{marker weight}{...}
{p 4 6 2}{cmd:aweight}s, {cmd:fweight}s, 和 {cmd:pweight}s 被允许；见
{help weight_zh}.{p_end}
{p 4 6 2}
{opt coeflegend} 不会出现在对话框中。{p_end}
{p 4 6 2}参见 {manhelp areg_postestimation R:areg postestimation} 获取估计后可用的特性。{p_end}

{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 线性模型和相关 > 其他 >}
      {bf:吸收一个分类变量的线性回归}

{marker description}{...}
{title:描述}

{pstd}
{cmd:areg} 拟合一个吸收一个分类因子的线性回归。{cmd:areg} 旨在处理具有多个组，但组数不会随样本大小而增多的数据集。有关处理组数随样本大小增加的情况，请参见 {cmd:xtreg, fe} 命令 {help xtreg_zh:[XT] xtreg}。

{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection R aregQuickstart:快速开始}

        {mansection R aregRemarksandexamples:备注和示例}

        {mansection R aregMethodsandformulas:方法和公式}

{pstd}
以上部分不包含在此帮助文件中。

{marker options}{...}
{title:选项}

{dlgtab:模型}

{phang}{opth absorb(varname)} 指定分类变量，这个变量将被作为虚拟变量包含在回归中。{cmd:absorb()} 为必需项。

{dlgtab:标准误/稳健}

{phang}
{opt vce(vcetype)} 指定报告的标准误类型，包括从渐近理论派生的类型 ({cmd:ols})、对于某些类型的误差规范稳健的类型 ({cmd:robust})、允许组内相关的类型 ({cmd:cluster} {it:clustvar})，以及使用自助法或杰克刀法的类型 ({cmd:bootstrap}, {cmd:jackknife})；参见 {help vce_option_zh:[R] {it:vce_option}}。

{pmore}
{cmd:vce(ols)}，默认情况下，使用普通最小二乘回归的标准方差估计器。

{pmore}使用 {cmd:vce(cluster} {it:clustvar}{cmd:)} 选项时应谨慎。稳健方差估计的有效自由度为 n_g - 1，其中 n_g 为簇的数量。因此，{opt absorb()} 变量的水平数量不应超过簇的数量。

{dlgtab:报告}

{phang}{opt level(#)}；见
{helpb estimation options##level():[R] 估计选项}。

INCLUDE help displayopts_list

{pstd}
以下选项与 {opt areg} 可用，但未在对话框中显示：

{phang}
{opt coeflegend}; 见
     {helpb estimation options##coeflegend:[R] 估计选项}。
 

{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. sysuse auto}{p_end}

{pstd}固定效应回归 {cmd:rep78}{p_end}
{phang2}{cmd:. areg price weight length, absorb(rep78)}{p_end}

{pstd}与上述相同，但还计算自助法标准误{p_end}
{phang2}{cmd:. areg price weight length, absorb(rep78) vce(bootstrap, reps(200))}{p_end}

{marker results}{...}
{title:存储结果}

{pstd}
{cmd:areg} 将以下内容存储在 {cmd:e()} 中：

{synoptset 24 tabbed}{...}
{p2col 5 24 28 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观察数量{p_end}
{synopt:{cmd:e(k_absorb)}}吸收的分类数量{p_end}
{synopt:{cmd:e(mss)}}模型平方和{p_end}
{synopt:{cmd:e(tss)}}总平方和{p_end}
{synopt:{cmd:e(df_m)}}模型自由度{p_end}
{synopt:{cmd:e(rss)}}残差平方和{p_end}
{synopt:{cmd:e(df_r)}}残差自由度{p_end}
{synopt:{cmd:e(r2)}}R平方{p_end}
{synopt:{cmd:e(r2_a)}}调整后的R平方{p_end}
{synopt:{cmd:e(df_a)}}吸收效应的自由度{p_end}
{synopt:{cmd:e(rmse)}}均方根误差{p_end}
{synopt:{cmd:e(ll)}}对数似然{p_end}
{synopt:{cmd:e(ll_0)}}仅常数模型的对数似然{p_end}
{synopt:{cmd:e(N_clust)}}簇的数量{p_end}
{synopt:{cmd:e(F)}}F统计量{p_end}
{synopt:{cmd:e(F_absorb)}}吸收效应的F统计量（未指定时{cmd:vce(robust)}）{p_end}
{synopt:{cmd:e(p)}}模型F检验的p值{p_end}
{synopt:{cmd:e(p_absorb)}}吸收效应的F检验的p值{p_end}
{synopt:{cmd:e(rank)}}{cmd:e(V)}的秩{p_end}

{synoptset 24 tabbed}{...}
{p2col 5 24 28 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:areg}{p_end}
{synopt:{cmd:e(cmdline)}}命令按输入方式显示{p_end}
{synopt:{cmd:e(depvar)}}因变量名称{p_end}
{synopt:{cmd:e(absvar)}}{cmd:absorb}变量名称{p_end}
{synopt:{cmd:e(wtype)}}权重类型{p_end}
{synopt:{cmd:e(wexp)}}权重表达式{p_end}
{synopt:{cmd:e(title)}}估计输出中的标题{p_end}
{synopt:{cmd:e(clustvar)}}聚类变量名称{p_end}
{synopt:{cmd:e(vce)}}{it:vcetype} 在 {cmd:vce()} 中指定{p_end}
{synopt:{cmd:e(vcetype)}}用于标记标准误的标题{p_end}
{synopt:{cmd:e(datasignature)}}校验和{p_end}
{synopt:{cmd:e(datasignaturevars)}}计算校验和所用的变量 {p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt:{cmd:e(predict)}}实现 {cmd:predict} 的程序{p_end}
{synopt:{cmd:e(footnote)}}实现脚注显示的程序{p_end}
{synopt:{cmd:e(marginsnotok)}}{cmd:margins} 不允许的预测{p_end}
{synopt:{cmd:e(asbalanced)}}因子变量 {cmd:fvset} 作为 {cmd:asbalanced}{p_end}
{synopt:{cmd:e(asobserved)}}因子变量 {cmd:fvset} 作为 {cmd:asobserved}{p_end}

{synoptset 24 tabbed}{...}
{p2col 5 24 28 2: 矩阵}{p_end}
{synopt:{cmd:e(b)}}系数向量{p_end}
{synopt:{cmd:e(V)}}估计量的方差-协方差矩阵{p_end}
{synopt:{cmd:e(V_modelbased)}}基于模型的方差{p_end}

{synoptset 24 tabbed}{...}
{p2col 5 24 28 2: 函数}{p_end}
{synopt:{cmd:e(sample)}}标记估计样本{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <areg.sthlp>}