{smcl}
{* *! version 1.2.21  12dec2018}{...}
{viewerdialog rocfit "dialog rocfit"}{...}
{vieweralsosee "[R] rocfit" "mansection R rocfit"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] rocfit postestimation" "help rocfit postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] roc" "help roc_zh"}{...}
{vieweralsosee "[R] rocreg" "help rocreg_zh"}{...}
{viewerjumpto "Syntax" "rocfit_zh##syntax"}{...}
{viewerjumpto "Menu" "rocfit_zh##menu"}{...}
{viewerjumpto "Description" "rocfit_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "rocfit_zh##linkspdf"}{...}
{viewerjumpto "Options" "rocfit_zh##options"}{...}
{viewerjumpto "Examples" "rocfit_zh##examples"}{...}
{viewerjumpto "Stored results" "rocfit_zh##results"}
{help rocfit:English Version}
{hline}{...}
{p2colset 1 15 17 2}{...}
{p2col:{bf:[R] rocfit} {hline 2}}参数 ROC 模型{p_end}
{p2col:}({mansection R rocfit:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 16 2}
{cmd:rocfit}
{it:refvar}
{it:classvar}
{ifin}
[{it:{help rocfit##weight:权重}}]
[{cmd:,} {it:rocfit_options}]

{synoptset 20 tabbed}
{synopthdr:rocfit_options}
{synoptline}
{syntab:模型}
{synopt:{opt cont:inuous(#)}}将 {it:classvar} 分为 {it:#} 个长度大致相等的组
{p_end}
{synopt:{opth g:enerate(newvar)}}创建 {it:newvar} 包含分类组
{p_end}

{syntab:标准误}
{synopt:{opth vce(vcetype)}}{it:vcetype} 可以是 {opt oim} 或 {opt opg}
{p_end}

{syntab:报告}
{synopt:{opt l:evel(#)}}设置信赖水平；默认为 {cmd:level(95)}
{p_end}

{syntab:最大化}
{synopt:{it:{help rocfit##maximize_options:最大化选项}}}控制最大化过程；不常用
{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}{cmd:fp} 允许使用；见 {help prefix_zh}.{p_end}
{marker weight}{...}
{p 4 6 2}
{opt fweight} 是允许的；见 {help weight_zh}。
{p_end}
{p 4 6 2}有关估计后可用功能，请参阅 {manhelp rocfit_postestimation R:rocfit 估计后处理}。{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 流行病学和相关 > ROC 分析 >}
           {bf:无协变量的参数 ROC 分析}


{marker description}{...}
{title:描述}

{pstd}
{opt rocfit} 拟合假设潜在变量为双正态分布的最大似然 ROC 模型。

{pstd}
两个变量 {it:refvar} 和 {it:classvar} 必须是数值型。参考变量指示观察的真实状态，例如有病和无病或正常和异常，必须编码为 0 和 1。诊断测试或测试方式的评分或结果记录在 {it:classvar} 中，该变量必须至少是序数型，且较高的值表示较高的风险。

{pstd}
有关使用评分和离散分类数据进行接收者操作特征 (ROC) 分析的其他命令，请参见 {manhelp roc R:roc}。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection R rocfitQuickstart:快速开始}

        {mansection R rocfitRemarksandexamples:备注和示例}

        {mansection R rocfitMethodsandformulas:方法和公式}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:模型}

{phang}
{opt continuous(#)} 指定将连续的 {it:classvar} 划分为 {it:#} 个长度大致相等的组。
当 {it:classvar} 具有超过 20 个不同值时，此选项是必需的。

{pmore}
可以指定 {cmd:continuous(.)}，以指示 {it:classvar} 按原样使用，即使它可能有超过 20 个不同值。

{phang}
{opth generate(newvar)} 指定新的变量，用于包含由 {opt continuous(#)} 产生的组值。 {opt generate()} 只能与 {opt continuous()} 一起使用。

{dlgtab:标准误}

包含帮助 vce_oo

{dlgtab:报告}

{phang}
{opt level(#)}；见 {helpb estimation options##level():[R] 估计选项}。

{marker maximize_options}{...}
{dlgtab:最大化}

{phang}
{it:maximize_options}：
{opt dif:ficult},
{opth tech:nique(maximize##algorithm_spec:算法规范)},
{opt iter:ate(#)},
[{cmd:no}]{opt log},
{opt tr:ace}, 
{opt grad:ient},
{opt showstep},
{opt hess:ian},
{opt showtol:erance},
{opt tol:erance(#)},
{opt ltol:erance(#)},
{opt nrtol:erance(#)},
{opt nonrtol:erance}, 和
{opt from(init_specs)}；见 {help maximize_zh:[R] 最大化}。
这些选项不常使用。

{pmore}
将优化类型设置为 {cmd:technique(bhhh)} 会将默认的 {it:vcetype} 重置为 {cmd:vce(opg)}。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse hanley}{p_end}

{pstd}假设双正态模型拟合平滑的 ROC 曲线{p_end}
{phang2}{cmd:. rocfit disease rating}{p_end}

{pstd}将 {cmd:rating} 划分为 10 组{p_end}
{phang2}{cmd:. rocfit disease rating, cont(10)}{p_end}

{pstd}{cmd:group} 将包含由 {cmd:cont()} 产生的组值{p_end}
{phang2}{cmd:. rocfit disease rating, cont(10) generate(group)}{p_end}

{pstd}按原样使用 {cmd:rating}{p_end}
{phang2}{cmd:. rocfit disease rating, cont(.)}{p_end}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:rocfit} 将以下结果存储在 {cmd:e()} 中：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观察数量{p_end}
{synopt:{cmd:e(k)}}参数数量{p_end}
{synopt:{cmd:e(k_eq)}} {cmd:e(b)} 中的方程数量{p_end}
{synopt:{cmd:e(k_eq_model)}}整体模型测试中的方程数量{p_end}
{synopt:{cmd:e(k_dv)}}因变量数量{p_end}
{synopt:{cmd:e(df_m)}}模型自由度{p_end}
{synopt:{cmd:e(ll)}}对数似然{p_end}
{synopt:{cmd:e(chi2_gf)}}拟合优度的卡方{p_end}
{synopt:{cmd:e(df_gf)}}拟合优度自由度{p_end}
{synopt:{cmd:e(p_gf)}}拟合优度检验的 p 值{p_end}
{synopt:{cmd:e(area)}} ROC 曲线下面积{p_end}
{synopt:{cmd:e(se_area)}} ROC 曲线下的标准误{p_end}
{synopt:{cmd:e(deltam)}}{cmd:delta(m)}{p_end}
{synopt:{cmd:e(se_delm)}} {cmd:delta(m)} 的标准面积{p_end}
{synopt:{cmd:e(de)}}{cmd:d(e)} 指数{p_end}
{synopt:{cmd:e(se_de)}} {cmd:d(e)} 指数的标准误{p_end}
{synopt:{cmd:e(da)}}{cmd:d(a)} 指数{p_end}
{synopt:{cmd:e(se_da)}} {cmd:d(a)} 指数的标准误{p_end}
{synopt:{cmd:e(rank)}} {cmd:e(V)} 的秩{p_end}
{synopt:{cmd:e(ic)}}迭代次数{p_end}
{synopt:{cmd:e(rc)}}返回代码{p_end}
{synopt:{cmd:e(converged)}}如果收敛则为 {cmd:1}，否则为 {cmd:0}{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:rocfit}{p_end}
{synopt:{cmd:e(cmdline)}}输入的命令{p_end}
{synopt:{cmd:e(depvar)}}{it:refvar} 和 {it:classvar}{p_end}
{synopt:{cmd:e(wtype)}}权重类型{p_end}
{synopt:{cmd:e(wexp)}}权重表达式{p_end}
{synopt:{cmd:e(title)}}估计输出中的标题{p_end}
{synopt:{cmd:e(chi2type)}}{cmd:GOF}；模型卡方检验的类型{p_end}
{synopt:{cmd:e(vce)}}在 {cmd:vce()} 中指定的 {it:vcetype}{p_end}
{synopt:{cmd:e(vcetype)}}用于标记标准误的标题{p_end}
{synopt:{cmd:e(opt)}}优化类型{p_end}
{synopt:{cmd:e(which)}}{cmd:max} 或 {cmd:min}；优化器是否执行最大化或最小化{p_end}
{synopt:{cmd:e(ml_method)}}{cmd:ml} 方法类型{p_end}
{synopt:{cmd:e(user)}}似然评估程序的名称{p_end}
{synopt:{cmd:e(technique)}}最大化技术{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:e(b)}}系数向量{p_end}
{synopt:{cmd:e(ilog)}}迭代日志（最多 20 次迭代）{p_end}
{synopt:{cmd:e(gradient)}}梯度向量{p_end}
{synopt:{cmd:e(V)}}估计量的方差-协方差矩阵{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 函数}{p_end}
{synopt:{cmd:e(sample)}}标记估计样本{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <rocfit.sthlp>}