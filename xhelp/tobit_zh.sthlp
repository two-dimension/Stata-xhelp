{smcl}
{* *! version 1.2.13  12dec2018}{...}
{viewerdialog tobit "dialog tobit"}{...}
{viewerdialog "svy: tobit" "dialog tobit, message(-svy-) name(svy_tobit)"}{...}
{vieweralsosee "[R] tobit" "mansection R tobit"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] tobit postestimation" "help tobit postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[BAYES] bayes: tobit" "help bayes tobit"}{...}
{vieweralsosee "[ERM] eintreg" "help eintreg_zh"}{...}
{vieweralsosee "[FMM] fmm: tobit" "help fmm tobit"}{...}
{vieweralsosee "[R] heckman" "help heckman_zh"}{...}
{vieweralsosee "[R] intreg" "help intreg_zh"}{...}
{vieweralsosee "[R] ivtobit" "help ivtobit_zh"}{...}
{vieweralsosee "[ME] metobit" "help metobit_zh"}{...}
{vieweralsosee "[R] regress" "help regress_zh"}{...}
{vieweralsosee "[SVY] svy estimation" "help svy estimation"}{...}
{vieweralsosee "[R] truncreg" "help truncreg_zh"}{...}
{vieweralsosee "[XT] xtintreg" "help xtintreg_zh"}{...}
{vieweralsosee "[XT] xttobit" "help xttobit_zh"}{...}
{viewerjumpto "Syntax" "tobit_zh##syntax"}{...}
{viewerjumpto "Menu" "tobit_zh##menu"}{...}
{viewerjumpto "Description" "tobit_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "tobit_zh##linkspdf"}{...}
{viewerjumpto "Options" "tobit_zh##options"}{...}
{viewerjumpto "Examples" "tobit_zh##examples"}{...}
{viewerjumpto "Stored results" "tobit_zh##results"}
{help tobit:English Version}
{hline}{...}
{p2colset 1 14 16 2}{...}
{p2col:{bf:[R] tobit} {hline 2}}Tobit 回归{p_end}
{p2col:}({mansection R tobit:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 16 2}
{cmd:tobit}
{depvar} [{indepvars}]
{ifin}
[{it:{help tobit##weight:权重}}]
[{cmd:,}
{it:选项}]

{synoptset 26 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:模型}
{synopt :{opt nocons:常数项}}压制常数项{p_end}
{synopt :{opt ll}[{cmd:(}{varname}|{it:#}{cmd:)}]}左截断变量或限制{p_end}
{synopt :{opt ul}[{cmd:(}{varname}|{it:#}{cmd:)}]}右截断变量或限制{p_end}
{synopt :{opth off:set(varname)}}包含 {it:varname} 在模型中，系数约束为 1{p_end}
{synopt :{cmdab:const:raints(}{it:{help estimation options##constraints():约束}}{cmd:)}}应用指定的线性约束{p_end}

{syntab:标准误/稳健性}
{synopt :{opth vce(vcetype)}}{it:vcetype} 可以是 {opt oim}、{opt r:obust}、{opt cl:uster} {it:clustvar}、{opt boot:strap} 或 {opt jack:knife}{p_end}

{syntab:报告}
{synopt:{opt l:evel(#)}}设置置信水平；默认是 {cmd:level(95)}{p_end}
{synopt :{opt nocnsr:eport}}不显示约束{p_end}
{synopt :{it:{help tobit##display_options:显示选项}}}控制
包含帮助短描述-displayoptall

{syntab:最大化}
{synopt:{it:{help tobit##maximize_options:最大化选项}}}控制

最大化过程；极少使用{p_end}

{synopt :{opt col:linear}}保留共线变量{p_end}
包含帮助短描述-coeflegend
{synoptline}
{p2colreset}{...}
包含帮助 fvvarlist
{p 4 6 2}{it:depvar} 和 {it:indepvars} 可以
包含时间序列操作符；见 {help tsvarlist_zh}.{p_end}
{p 4 6 2}
{opt bayes}、{opt bootstrap}、{opt by}、{opt fmm}、{opt fp}、{opt jackknife}、
{opt nestreg}、{opt rolling}、{opt statsby}、{opt stepwise} 和 {opt svy}
是允许的；见 {help prefix_zh}。
有关更多细节，见 {manhelp bayes_tobit BAYES:bayes: tobit} 和
{manhelp fmm_tobit FMM:fmm: tobit}.{p_end}
{p 4 6 2}使用 {help bootstrap_zh} 前缀时不允许权重.{p_end}
{p 4 6 2}{cmd:aweight} 在使用 {help jackknife_zh} 前缀时不被允许。
{p_end}
{p 4 6 2}
{opt vce()} 和权重不允许与 {help svy_zh} 前缀一起使用。
{p_end}
{marker weight}{...}
{p 4 6 2}
{opt aweight}、{opt fweight}、{opt iweight} 和 {opt pweight}
是允许的；见 {help weight_zh}.{p_end}
{p 4 6 2}
{opt collinear} 和 {opt coeflegend} 不会出现在对话框中.{p_end}
{p 4 6 2}
有关估计后可用功能，请参阅 {manhelp tobit_postestimation R:tobit 后估计}。{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 线性模型及相关 > 截断回归 >}
      {bf:Tobit 回归}


{marker description}{...}
{title:描述}

{pstd}
{opt tobit} 拟合用于连续响应的模型，其中结果变量被截断。截断限制可以针对所有观察值固定或在观察值之间变化。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection R tobitQuickstart:快速入门}

        {mansection R tobitRemarksandexamples:备注和示例}

        {mansection R tobitMethodsandformulas:方法和公式}

{pstd}
以上部分不包括在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:模型}

{phang}
{opt noconstant}; 见
{helpb estimation options##noconstant:[R] 估计选项}。

{phang}
{opt ll}[{cmd:(}{varname}|{it:#}{cmd:)}] 和
{opt ul}[{cmd:(}{varname}|{it:#}{cmd:)}]
   分别指示截断的下限和上限。
   观察值 {depvar} {ul:<} {opt ll()} 被左截断；观察值
   {it:depvar} {ul:>} {opt ul()} 被右截断；其余观察值未被截断。你不需要指定截断
   值。如果你指定了 {opt ll}，下限将是
   {it:depvar} 的最小值。如果你指定了 {opt ul}，上限将是
   {it:depvar} 的最大值。

{phang}
{opth offset(varname)}，{opt constraints(constraints)}; 见
{helpb estimation options##offset():[R] 估计选项}。

{dlgtab:标准误/稳健性}

{phang}
{opt vce(vcetype)} 指定报告的标准误类型，其中
包括从渐近理论导出的类型 ({cmd:oim})、对某些误规范的稳健性 ({cmd:robust})、允许
组内相关性 ({cmd:cluster} {it:clustvar})，以及使用
自助法或留一法的方法 ({cmd:bootstrap}、{cmd:jackknife})；见
{help vce_option_zh:[R] {it:vce_option}}。

{dlgtab:报告}

{phang}
{opt level(#)}、{opt nocnsreport}; 见
{helpb estimation options##level():[R] 估计选项}。

包含帮助 displayopts_list

{marker maximize_options}{...}
{dlgtab:最大化}

{phang}
{it:maximize_options}:
{opt dif:ficult}、
{opth tech:nique(maximize##algorithm_spec:算法规格)}、
{opt iter:ate(#)}、
[{cmd:no}]{opt log}、
{opt tr:ace}、
{opt grad:ient}、{opt showstep}、
{opt hess:ian}、
{opt showtol:erance}、
{opt tol:erance(#)}、
{opt ltol:erance(#)}、
{opt nrtol:erance(#)}、 
{opt nonrtol:erance}，和
{opt from(init_specs)}；
见 {help maximize_zh:[R] 最大化}。这些选项很少使用。

{pstd}
以下选项可与 {opt tobit} 一起使用，但未在
对话框中显示：

{phang}
{opt collinear}、{opt coeflegend}; 见
     {helpb estimation options:[R] 估计选项}。


{marker examples}{...}
{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. sysuse auto}{p_end}
{phang2}{cmd:. generate wgt=weight/1000}{p_end}

{pstd}自下而上截断{p_end}
{phang2}{cmd:. tobit mpg wgt, ll(17)}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. sysuse auto, clear}{p_end}
{phang2}{cmd:. generate wgt=weight/100}{p_end}

{pstd}自上而下截断{p_end}
{phang2}{cmd:. tobit mpg wgt, ul(24)}

{pstd}按外部数据聚类{p_end}
{phang2}{cmd:. tobit mpg wgt, ul(24) vce(cluster foreign)}

{pstd}双限 tobit{p_end}
{phang2}{cmd:. tobit mpg wgt, ll(17) ul(24)}{p_end}

    {hline}
{pstd}设置{p_end}
{phang2}
{cmd:. webuse gpa, clear}

{pstd}在 {cmd:gpa2} 的最小值处截断{p_end}
{phang2}
{cmd:. tobit gpa2 hsgpa pincome program, ll}

    {hline}
{pstd}设置{p_end}
{phang2}
{cmd:. webuse mroz87}

{pstd}自下而上截断于零{p_end}
{phang2}
{cmd:. tobit whrs75 nwinc wedyrs wexper c.wexper#c.wexper wifeage kl6 k618, ll(0)}

    {hline}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:tobit} 在 {cmd:e()} 中存储以下内容：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观察值数量{p_end}
{synopt:{cmd:e(N_unc)}}未截断观察值数量{p_end}
{synopt:{cmd:e(N_lc)}}左截断观察值数量{p_end}
{synopt:{cmd:e(N_rc)}}右截断观察值数量{p_end}
{synopt:{cmd:e(k)}}参数数量{p_end}
{synopt:{cmd:e(k_eq)}}在 {cmd:e(b)} 中的方程数量{p_end}
{synopt:{cmd:e(k_aux)}}辅助参数数量{p_end}
{synopt:{cmd:e(k_dv)}}因变量数量{p_end}
{synopt:{cmd:e(df_m)}}模型自由度{p_end}
{synopt:{cmd:e(df_r)}}残差自由度{p_end}
{synopt:{cmd:e(r2_p)}}伪 R 平方{p_end}
{synopt:{cmd:e(ll)}}对数似然{p_end}
{synopt:{cmd:e(ll_0)}}仅常数模型的对数似然{p_end}
{synopt:{cmd:e(N_clust)}}聚类数量{p_end}
{synopt:{cmd:e(chi2)}}卡方{p_end}
{synopt:{cmd:e(F)}}F 统计量{p_end}
{synopt:{cmd:e(p)}}模型测试的 p 值{p_end}
{synopt:{cmd:e(rank)}}{cmd:e(V)} 的秩{p_end}
{synopt:{cmd:e(ic)}}迭代次数{p_end}
{synopt:{cmd:e(rc)}}返回代码{p_end}
{synopt:{cmd:e(converged)}}{cmd:1} 如果已收敛，{cmd:0} 否则{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:tobit}{p_end}
{synopt:{cmd:e(cmdline)}}输入的命令{p_end}
{synopt:{cmd:e(depvar)}}因变量名称{p_end}
{synopt:{cmd:e(llopt)}}{it:depvar} 的最小值或 {cmd:ll()} 的内容{p_end}
{synopt:{cmd:e(ulopt)}}{it:depvar} 的最大值或 {cmd:ul()} 的内容{p_end}
{synopt:{cmd:e(wtype)}}权重类型{p_end}
{synopt:{cmd:e(wexp)}}权重表达式{p_end}
{synopt:{cmd:e(covariates)}}协变量列表{p_end}
{synopt:{cmd:e(title)}}估计输出标题{p_end}
{synopt:{cmd:e(clustvar)}}聚类变量名称{p_end}
{synopt:{cmd:e(offset)}}线性偏移变量{p_end}
{synopt:{cmd:e(chi2type)}}模型的卡方检验类型{p_end}
{synopt:{cmd:e(vce)}}在 {cmd:vce()} 中指定的 {it:vcetype}{p_end}
{synopt:{cmd:e(vcetype)}}用于标记标准误的标题{p_end}
{synopt:{cmd:e(opt)}}优化类型{p_end}
{synopt:{cmd:e(which)}}{cmd:max} 或 {cmd:min}; 优化器是否执行
                         最大化或最小化{p_end}
{synopt:{cmd:e(method)}}估计方法：{cmd:ml}{p_end}
{synopt:{cmd:e(ml_method)}}{cmd:ml} 方法的类型{p_end}
{synopt:{cmd:e(user)}}似然评估程序名称{p_end}
{synopt:{cmd:e(technique)}}最大化技术{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt:{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}
{synopt:{cmd:e(marginsok)}}{cmd:margins} 允许的预测{p_end}
{synopt:{cmd:e(asbalanced)}}因子变量 {cmd:fvset} 作为 {cmd:asbalanced}{p_end}
{synopt:{cmd:e(asobserved)}}因子变量 {cmd:fvset} 作为 {cmd:asobserved}{p_end}

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

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <tobit.sthlp>}