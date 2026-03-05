{smcl}
{* *! version 1.0.0  14mar2016}{...}
{* 基于 tobit.sthlp 的版本 1.2.0  29aug2014}{...}
{vieweralsosee "之前文档" "help prdocumented_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] heckman" "help heckman_zh"}{...}
{vieweralsosee "[R] intreg" "help intreg_zh"}{...}
{vieweralsosee "[R] ivtobit" "help ivtobit_zh"}{...}
{vieweralsosee "[R] regress" "help regress_zh"}{...}
{vieweralsosee "[SVY] svy estimation" "help svy estimation"}{...}
{vieweralsosee "[R] truncreg" "help truncreg_zh"}{...}
{vieweralsosee "[XT] xtintreg" "help xtintreg_zh"}{...}
{vieweralsosee "[XT] xttobit" "help xttobit_zh"}{...}
{viewerjumpto "语法" "tobit_14_zh##syntax"}{...}
{viewerjumpto "菜单" "tobit_14_zh##menu"}{...}
{viewerjumpto "描述" "tobit_14_zh##description"}{...}
{viewerjumpto "选项" "tobit_14_zh##options"}{...}
{viewerjumpto "示例" "tobit_14_zh##examples"}{...}
{viewerjumpto "存储结果" "tobit_14_zh##results"}
{help tobit_14:English Version}
{hline}{...}
{title:标题}

{p2colset 5 18 20 2}{...}
{p2col:{hi:[R] tobit} {hline 2}}Tobit 回归（版本 15 之前的语法）{p_end}
{p2colreset}{...}

{p 12 12 8}
{it}[自版本 15 起，{bf:tobit} 命令已得到改进。此帮助文件
记录了 {cmd:tobit} 的旧行为，因此可能对您没有兴趣。点击 {help tobit_zh:这里} 以获取当前 {cmd:tobit}
命令的帮助文件。]{rm}

{marker syntax}{...}
{title:语法}

{p 8 16 2}
{cmdab:tob:it}
{depvar} [{indepvars}]
{ifin}
[{it:{help tobit_14##weight:weight}}]
{cmd:,}
{opt ll}[{opt (#)}]
{opt ul}[{opt (#)}]
[{it:options}]

{synoptset 20 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:模型}
{synopt :{opt nocon:stant}}抑制常数项{p_end}
{p2coldent:* {opt ll}[{opt (#)}]}左截断限{p_end}
{p2coldent:* {opt ul}[{opt (#)}]}右截断限{p_end}
{synopt:{opth off:set(varname)}}在模型中包含 {it:varname}，并将系数约束为 1{p_end}

{syntab:标准误/稳健性}
{synopt :{opth vce(vcetype)}}{it:vcetype} 可以是 {opt oim},
  {opt r:obust}, {opt cl:uster} {it:clustvar}, {opt boot:strap}, 或
  {opt jack:knife}{p_end}

{syntab:报告}
{synopt:{opt l:evel(#)}}设置置信区间; 默认值为 {cmd:level(95)}{p_end}
{synopt :{it:{help tobit_14##display_options:display_options}}}控制
包含帮助短描述显示选项

{syntab:最大化}
{synopt:{it:{help tobit_14##maximize_options:maximize_options}}}控制
最大化过程; 很少使用{p_end}

包含帮助短描述系数图例
{synoptline}
{p2colreset}{...}
{p 4 6 2}
* 您必须至少指定 {opt ll}[{opt (#)}] 或 {opt ul}[{opt (#)}] 之一。
{p_end}
包含帮助 fvvarlist
{p 4 6 2}{it:depvar} 和 {it:indepvars} 可以
包含时间序列运算符；见 {help tsvarlist_zh}.{p_end}
{p 4 6 2}
{opt bootstrap}、{opt by}、{opt fp}、{opt jackknife}、{opt nestreg}、
{opt rolling}、{opt statsby}、{opt stepwise} 和 {opt svy}
是允许的; 见 {help prefix_zh}。
{p_end}
{p 4 6 2}与 {help bootstrap_zh} 前缀不允许使用权重。{p_end}
{p 4 6 2}{cmd:aweight} 不允许与 {help jackknife_zh} 前缀一起使用。
{p_end}
{p 4 6 2}
{opt vce()} 和权重不允许与 {help svy_zh} 前缀一起使用。
{p_end}
{marker weight}{...}
{p 4 6 2}
{opt aweight}、{opt fweight}、{opt iweight} 和 {opt pweight} 
是允许的；见 {help weight_zh}.{p_end}
{p 4 6 2}
{opt coeflegend} 不会出现在对话框中。{p_end}
{p 4 6 2}
见 {manhelp tobit_postestimation R:tobit 后验估计} 以获取估计后可用的功能。{p_end}

{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 线性模型与相关 > 有限回归 >}
      {bf:Tobit 回归}


{marker description}{...}
{title:描述}

{pstd}
{opt tobit} 拟合一个 {depvar} 对 {indepvars} 的模型，其中截断值
是固定的。


{marker options}{...}
{title:选项}

{dlgtab:模型}

{phang}
{opt noconstant}; 见
{helpb estimation options##noconstant:[R] 估计选项}。

{phang}
{opt ll}[{opt (#)}] 和 {opt ul}[{opt (#)}]
   分别指示下限和上限的截断值。
   您可以指定一个或两个。观察值
   {depvar} <= {opt ll()} 被左截断; 观察值 {it:depvar}
   >= {opt ul()} 被右截断; 其余观察值则不受截断。
   您无需指定截断值。只需输入 {opt ll}、{opt ul} 或两者之一。
   如果您未指定截断值，{opt tobit} 假设下限为数据中观察到的最小值（如果
   指定了 {opt ll}），上限为最大值（如果
   指定了 {opt ul}）。

{phang}
{opth offset(varname)}; 见
{helpb estimation options##offset():[R] 估计选项}。

{dlgtab:标准误/稳健性}

{phang}
{opt vce(vcetype)} 指定报告的标准误类型，包括基于渐近理论的类型 ({cmd:oim}),
对某些形式的规范错误具有稳健性 ({cmd:robust})，允许群组内相关性 ({cmd:cluster} {it:clustvar})，以及使用
自举或留一法的方法 ({cmd:bootstrap}, {cmd:jackknife}); 见
{help vce_option_zh:[R] {it:vce_option}}。

{dlgtab:报告}

{phang}
{opt level(#)}; 见 {helpb estimation options##level():[R] 估计选项}。

包含帮助 displayopts_list

{marker maximize_options}{...}
{dlgtab:最大化}

{phang}
{it:maximize_options}:
{opt iter:ate(#)},
[{cmdab:no:}]{opt lo:g},
{opt tr:ace},
{opt tol:erance(#)},
{opt ltol:erance(#)},
{opt nrtol:erance(#)}，以及
{opt nonrtol:erance}; 见 {manhelp maximize R}。这些选项很少使用。

{pmore}
   与大多数最大似然命令不同，{opt tobit} 默认选项是
   {opt nolog} -- 它抑制迭代日志。

{pstd}
以下选项可用于 {opt tobit}，但未在对话框中显示：

{phang}
{opt coeflegend}; 见
     {helpb estimation options##coeflegend:[R] 估计选项}。


{marker examples}{...}
{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. sysuse auto}{p_end}
{phang2}{cmd:. generate wgt=weight/1000}{p_end}

{pstd}自下而上的截断{p_end}
{phang2}{cmd:. tobit mpg wgt, ll(17)}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. sysuse auto, clear}{p_end}
{phang2}{cmd:. generate wgt=weight/100}{p_end}

{pstd}自上而下的截断{p_end}
{phang2}{cmd:. tobit mpg wgt, ul(24)}

{pstd}聚类在 foreign 上{p_end}
{phang2}{cmd:. tobit mpg wgt, ul(24) vce(cluster foreign)}

{pstd}双限 tobit{p_end}
{phang2}{cmd:. tobit mpg wgt, ll(17) ul(24)}{p_end}
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
{synopt:{cmd:e(llopt)}}{cmd:ll()} 的内容（如果指定）{p_end}
{synopt:{cmd:e(ulopt)}}{cmd:ul()} 的内容（如果指定）{p_end}
{synopt:{cmd:e(k_aux)}}辅助参数数量{p_end}
{synopt:{cmd:e(df_m)}}模型的自由度{p_end}
{synopt:{cmd:e(df_r)}}残差的自由度{p_end}
{synopt:{cmd:e(r2_p)}}伪 R 平方{p_end}
{synopt:{cmd:e(chi2)}}卡方{p_end}
{synopt:{cmd:e(ll)}}对数似然{p_end}
{synopt:{cmd:e(ll_0)}}仅常数模型的对数似然{p_end}

{synopt:{cmd:e(N_clust)}}聚类数量{p_end}
{synopt:{cmd:e(F)}}F 统计量{p_end}
{synopt:{cmd:e(p)}}显著性{p_end}
{synopt:{cmd:e(rank)}}{cmd:e(V)} 的秩{p_end}
{synopt:{cmd:e(converged)}}{cmd:1} 表示收敛，{cmd:0} 否则{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:tobit}{p_end}
{synopt:{cmd:e(cmdline)}}以键入的形式显示的命令{p_end}
{synopt:{cmd:e(depvar)}}因变量名称{p_end}
{synopt:{cmd:e(wtype)}}权重类型{p_end}
{synopt:{cmd:e(wexp)}}权重表达式{p_end}
{synopt:{cmd:e(title)}}估计输出中的标题{p_end}
{synopt:{cmd:e(clustvar)}}聚类变量名称{p_end}
{synopt:{cmd:e(offset)}}线性偏移变量{p_end}
{synopt:{cmd:e(chi2type)}}{cmd:LR}; 模型卡方检验的类型{p_end}
{synopt:{cmd:e(vce)}}在 {cmd:vce()} 中指定的 {it:vcetype}{p_end}
{synopt:{cmd:e(vcetype)}}用于标记标准误的标题{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt:{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}
{synopt:{cmd:e(footnote)}}用于显示脚注的程序和参数{p_end}
{synopt:{cmd:e(marginsok)}}{cmd:margins} 允许的预测{p_end}
{synopt:{cmd:e(asbalanced)}}因子变量 {cmd:fvset} 视为 {cmd:asbalanced}{p_end}
{synopt:{cmd:e(asobserved)}}因子变量 {cmd:fvset} 视为 {cmd:asobserved}{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:e(b)}}系数向量{p_end}
{synopt:{cmd:e(V)}}估计量的方差-协方差矩阵{p_end}
{synopt:{cmd:e(V_modelbased)}}基于模型的方差{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 函数}{p_end}
{synopt:{cmd:e(sample)}}标记估计样本{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <tobit_14.sthlp>}