{smcl}
{* *! version 1.2.19  21oct2012}{...}
{viewerdialog fracpoly "dialog fracpoly"}{...}
{viewerdialog fracgen "dialog fracgen"}{...}
{vieweralsosee "help prdocumented_zh" "help prdocumented_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] fracpoly postestimation" "help fracpoly postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] mfp" "help mfp_zh"}{...}
{viewerjumpto "Syntax" "fracpoly_zh##syntax"}{...}
{viewerjumpto "Menu" "fracpoly_zh##menu"}{...}
{viewerjumpto "Description" "fracpoly_zh##description"}{...}
{viewerjumpto "Options for fracpoly" "fracpoly_zh##options_fracpoly"}{...}
{viewerjumpto "Options for fracgen" "fracpoly_zh##options_fracgen"}{...}
{viewerjumpto "Examples" "fracpoly_zh##examples"}{...}
{viewerjumpto "Stored results" "fracpoly_zh##results"}
{help fracpoly:English Version}
{hline}{...}
{pstd}
{cmd:fracpoly} 已被 {help fp_zh} 取代。 {cmd:fracpoly} 继续可用，但自 Stata 13 起不再是 Stata 的官方部分。这是原始帮助文件，我们将不再更新，因此某些链接可能不再有效。

{hline}

{title:标题}

{p2colset 5 21 23 2}{...}
{p2col :{bf:[R] fracpoly} {hline 2}}分数多项式回归{p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{phang}
分数多项式回归

{p 8 17 2}
{cmd:fracpoly}
	[{cmd:,}
		{it:{help fracpoly##fracpoly_options:fracpoly_options}}]
        {cmd::} 
{it:{help fracpoly##regression_cmd:regression_cmd}}
[{it:{help varname_zh:yvar1}} [{it:{help varname_zh:yvar2}}]] 
{it:{help varname_zh:xvar1}}
[{it:#} [{it:#}{it:...}]]
[{it:{help varname_zh:xvar2}} [{it:#} [{it:#}{it:...}]]] [{it:...}]
[{it:{help varlist_zh:xvarlist}}]
{ifin}
{weight}
[{cmd:,} {it:{help fracpoly##regression_cmd_options:regression_cmd_options}}]


{phang}
显示包含每个度的最佳分数多项式模型的表

{p 8 17 2}{cmd:fracpoly} {cmd:,} {opt com:pare}


{phang}
创建包含分数多项式幂的变量

{p 8 17 2}
{cmd:fracgen}
{varname}
{it:#} [{it:#} {it:...}]
{ifin}
[{cmd:,}
{it:{help fracpoly##fracgen_options:fracgen_options}}]


{synoptset 26 tabbed}{...}
{marker fracpoly_options}{...}
{synopthdr :fracpoly_options}
{synoptline}
{syntab :模型}
{synopt :{opt deg:ree(#)}}拟合的分数多项式的度数；默认值是
{cmd:degree(2)}{p_end}

{syntab :模型 2}
{synopt :{opt nosca:ling}}抑制第一个自变量的缩放{p_end}
{synopt :{opt nocons:tant}}抑制常数项{p_end}
{synopt :{opth po:wers(numlist)}}从中选择模型的分数多项式幂的列表{p_end}
{synopt :{opth cent:er(fracpoly##cent_list:cent_list)}}对自变量进行中心化的规范{p_end}
{synopt :{opt all}}在生成变量时包括超出样本的观察值{p_end}

{syntab :报告}
{synopt :{opt log}}显示迭代日志{p_end}
{synopt :{opt com:pare}}按度数比较模型{p_end}
{synopt :{it:{help fracpoly##display_options:display_options}}}控制列格式和线宽{p_end}
{synoptline}

{marker regression_cmd_options}{...}
{synopthdr :regression_cmd_options}
{synoptline}
{syntab :模型 2}
{synopt :{it:regression_cmd_options}}与使用的回归命令相关的选项{p_end}
{synoptline}
{p2colreset}{...}

{p 4 6 2}
所有类型的权重均可由 {it:regression_cmd} 支持；请参见 
{help weight_zh}.{p_end}
{p 4 6 2}
请参阅 {manhelp fracpoly_postestimation R:fracpoly postestimation}
以获取估计后可用的功能的信息。{p_end}

{pstd}
其中

{marker cent_list}{...}
{pin}
{it:cent_list} 是一个用逗号分隔的列表，包含元素
{varlist}{cmd::}{c -(}{opt mean}|{it:#}|{opt no}},
但第一个元素可以选择形式为
{c -(}{opt mean}|{it:#}|{opt no}} 以指定所有变量的默认值。
{p_end}

{pin}
{marker regression_cmd}
{it:regression_cmd} 可以是
{help clogit_zh},
{help glm_zh},
{help intreg_zh}, 
{help logistic_zh},
{help logit_zh},
{help mlogit_zh},
{help nbreg_zh},
{help ologit_zh},
{help oprobit_zh},
{help poisson_zh},
{help probit_zh},
{help qreg_zh},
{help regress_zh},
{help rreg_zh},
{help stcox_zh},
{help stcrreg_zh},
{help streg_zh},
或
{help xtgee_zh}。


{synoptset 26 tabbed}{...}
{marker fracgen_options}{...}
{synopthdr :fracgen_options}
{synoptline}
{syntab:主要}
{synopt :{cmdab:cent:er(no}|{cmd:mean}|{it:#}{cmd:)}}按指定方式中心 {varname}；默认是 {cmd:center(no)}{p_end}
{synopt :{opt nosca:ling}}抑制 {varname} 的缩放{p_end}
{synopt :{cmd:restrict(}[{varname}] [{it:{help if_zh}}]{cmd:)}}使用指定的子样本计算
         中心化和缩放{p_end}
{synopt :{opt replace}}如果变量存在，请替换变量{p_end}
{synoptline}
{p2colreset}{...}


{marker menu}{...}
{title:菜单}

    {title:fracpoly}

{phang2}
{bf:统计 > 线性模型和相关 > 分数多项式 >}
      {bf:分数多项式回归}

    {title:fracgen}

{phang2}
{bf:统计 > 线性模型和相关 > 分数多项式 >}
      {bf:创建分数多项式幂}


{marker description}{...}
{title:描述}

{pstd}
{opt fracpoly} 在指定回归模型中对 {it:{help varname_zh:xvar1}} 进行分数多项式 (FP) 拟合。 执行后，{opt fracpoly} 在数据集中留下名为 {bf:I}{it:xvar}{bf:__1},
{bf:I}{it:xvar}{bf:__2}, ...，其中 {it:xvar} 表示 {it:xvar1} 名称的前四个字母。 新变量包含 {it:xvar1} 的最佳拟合 FP 幂。

{pstd}
其他协变量除 {it:xvar1} 外是可选的，指定在 {it:xvar2}, ..., 和 {it:{help varlist_zh:xvarlist}} 中。 它们可以用线性和指定的 FP 转换进行建模。 分数多项式幂通过在变量名后键入数字来指定。 没有数字的变量名以线性方式输入。

{pstd}
{opt fracgen} 创建新变量，名称为 {varname}{bf:_1},
{it:varname}{bf:_2}, ...，包含使用指定的幂 {cmd:(}{it:#}[{it:#} {it:...}]{cmd:)} 的 {it:varname} 的 FP 幂。

{pstd}
有关 {opt fracplot} 和 {opt fracpred} 的信息，请参见 {manhelp fracpoly_postestimation R:fracpoly postestimation}。

{pstd}
有关多变量 FP 模型拟合的信息，请参见 {manhelp mfp R}。


{marker options_fracpoly}{...}
{title:选项 for fracpoly}

{dlgtab:模型}

{phang}
{opt degree(#)} 确定要拟合的 FP 的度数。 默认值是
{cmd:degree(2)}，即一个带有两个幂项的模型。

{dlgtab:模型 2}

{phang}
{opt noscaling} 抑制对 {it:{help varname_zh:xvar1}} 及其幂的缩放。

{phang}
{opt noconstant} 如果 {it:regression_cmd} 允许，则抑制回归常数。

{phang}
{opth powers(numlist)} 是从中选择模型的 FP 幂集。 默认值为 {cmd:powers(-2, -1, -.5, 0, .5, 1, 2, 3)}（0 表示对数）。

{phang}
{opt center(cent_list)} 定义自变量 {it:{help varname_zh:xvar1}}、{it:xvar2}、...、{it:{help varlist_zh:xvarlist}} 的中心化。 默认值是
{cmd:center(mean)}。 
{it:cent_list} 中的典型项为
{varlist}{cmd::}{c -(}{cmd:mean}|{it:#}|{cmd:no}}。
项之间用逗号分隔。 第一个项是特殊的，因为 {it:varlist}{cmd::} 是可选的，如果省略，默认值将重置为指定值（{opt mean} 或 {it:#} 或 {opt no}）。
例如，{cmd:center(no, age:mean)} 将默认值设置为 {opt no} 并将 {opt age} 的中心化设置为 {opt mean}。

{phang}
{it:regression_cmd_options} 是与使用的回归命令相关的选项。 例如，对于 {opt stcox}，{it:regression_cmd_options} 可能包含 {opt efron} 或某种处理绑定事件的替代方法。

{phang}
{cmd:all} 在生成 {it:{help varname_zh:xvar_1}}、{it:xvar_2} 等的最佳拟合 FP 幂时包括超出样本的观察值。 默认情况下，生成的 FP 变量在估计样本以外包含缺失值。

{dlgtab:报告}

{phang}
{cmd:log} 显示每个 FP 模型拟合的偏差和（对 {cmd:regress}）剩余标准差。

{phang}
{cmd:compare} 报告 FP 模型之间的闭合测试比较。

{marker display_options}{...}
{phang}
{it:display_options}:
{opth cformat(%fmt)},
{opt pformat(%fmt)},
{opt sformat(%fmt)}, 和
{opt nolstretch}；
    见 {helpb estimation options##display_options:[R] estimation options}。


{marker options_fracgen}{...}
{title:选项 for fracgen}

{dlgtab:主要}

{phang}
{cmd:center(no}|{cmd:mean}|{it:#}{cmd:)}
指定是否对 {varname} 进行中心化；默认值是
{cmd:center(no)}。

{phang}
{opt noscaling} 抑制对 {varname} 的缩放。

{phang}
{cmd:restrict(}[{varname}] [{it:{help if_zh}}]{cmd:)} 指定要使用 {it:varname} 和 {cmd:if} 标识的子样本来计算中心化和缩放。

{pmore}
子样本由 {it:varname}!=0 的观测定义，同时满足 {cmd:if} 条件。 通常，{it:varname}=1 定义子样本，而 {it:varname}=0 表示不属于子样本的观测。 对于那些子样本状态不确定的观测，应将 {it:varname} 设置为缺失值；此类观测从子样本中删除。

{pmore}
默认情况下，{cmd:fracgen} 使用在 {ifin} 选项中识别的观测样本计算中心化和缩放。
{opt restrict()} 选项确定此样本的子集。

{phang}
{opt replace} 指定可以替换任何名为 {varname}{bf:_1}、{it:varname}{bf:_2} 等的现有变量。


{marker examples}{...}
{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse igg}{p_end}

{pstd}拟合二次分数多项式回归模型{p_end}
{phang2}{cmd:. fracpoly: regress sqrtigg age}{p_end}

{pstd}拟合四次分数多项式回归模型并与低阶模型进行比较{p_end}
{phang2}{cmd:. fracpoly, degree(4) compare: regress sqrtigg age}{p_end}

{pstd}拟合使用 -2 和 2 的分数多项式回归模型{p_end}
{phang2}{cmd:. fracpoly: regress sqrtigg age -2 2}{p_end}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. sysuse auto, clear}{p_end}

{pstd}创建不进行缩放的 {cmd:mpg} 的 -2 和 -1 的分数多项式幂变量{p_end}
{phang2}{cmd:. fracgen mpg -2 -1 if foreign==1, noscaling replace}{p_end}
    {hline}


{marker results}{...}
{title:存储结果}

{pstd}
除了 {it:regression_cmd} 存储的内容外，{cmd:fracpoly} 在 {cmd:e()} 中存储以下内容：

{synoptset 27 tabbed}{...}
{p2col 5 27 31 2: 标量}{p_end}
{synopt:{cmd:e(fp_N)}}非缺失观测数量{p_end}
{synopt:{cmd:e(fp_dev)}}度数 m 的 FP 模型偏差{p_end}
{synopt:{cmd:e(fp_df)}}FP 模型的自由度{p_end}
{synopt:{cmd:e(fp_d0)}}未包含 xvar_1 的模型的偏差{p_end}
{synopt:{cmd:e(fp_s0)}}未包含 xvar_1 的模型的残差标准差{p_end}
{synopt:{cmd:e(fp_dlin)}}线性模型的偏差，xvar_1{p_end}
{synopt:{cmd:e(fp_slin)}}线性模型的残差标准差，xvar_1{p_end}
{synopt:{cmd:e(fp_d1), e(fp_d2), ...}}度数 1、2、...、m 的 FP 模型偏差{p_end}
{synopt:{cmd:e(fp_s1), e(fp_s2), ...}}度数 1、2、...、m 的 FP 模型残差标准差{p_end}

{synoptset 27 tabbed}{...}
{p2col 5 27 31 2: 宏}{p_end}
{synopt:{cmd:e(fp_cmd)}}{cmd:fracpoly}{p_end}
{synopt:{cmd:e(cmdline)}}输入的命令{p_end}
{synopt:{cmd:e(fp_depv)}}yvar1 (yvar2){p_end}
{synopt:{cmd:e(fp_rhs)}}xvar_1{p_end}
{synopt:{cmd:e(fp_base)}}对 xvar_2, ..., xvarlist 进行中心化和 FP 转换后的变量{p_end}
{synopt:{cmd:e(fp_xp)}}{cmd:I}xvar{cmd:__1}, {cmd:I}xvar{cmd:__2}, 等等。{p_end}
{synopt:{cmd:e(fp_fvl)}}最终估计模型中的变量{p_end}
{synopt:{cmd:e(fp_wgt)}}权重类型或 {cmd:""}{p_end}
{synopt:{cmd:e(fp_wexp)}}如果 {cmd:`e(fp_wgt)' !=""} 则为权重表达式{p_end}
{synopt:{cmd:e(fp_pwrs)}}度数 m 的 FP 模型的幂{p_end}
{synopt:{cmd:e(fp_x1), e(fp_x2), ...}}xvar_1 和模型中的变量{p_end}
{synopt:{cmd:e(fp_k1), e(fp_k2), ...}}度数 1、2、...、m 的 FP 模型的幂{p_end}

{pstd}
仅当 {it:regression_cmd} 是
{cmd:regress} 时，残差标准差才会被存储。{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <fracpoly.sthlp>}