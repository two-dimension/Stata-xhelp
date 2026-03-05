{smcl}
{* *! version 1.0.8  12dec2018}{...}
{viewerdialog "bayes: mlogit" "dialog bayes_mlogit"}{...}
{vieweralsosee "[BAYES] bayes: mlogit" "mansection BAYES bayesmlogit"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[BAYES] bayes" "help bayes_zh"}{...}
{vieweralsosee "[R] mlogit" "help mlogit_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[BAYES] Bayesian commands" "help bayesian_commands_zh"}{...}
{vieweralsosee "[BAYES] Bayesian estimation" "help bayesian_estimation_zh"}{...}
{vieweralsosee "[BAYES] Bayesian postestimation" "help bayesian_postestimation_zh"}{...}
{vieweralsosee "[BAYES] Glossary" "help bayes_glossary_zh"}{...}
{viewerjumpto "语法" "bayes_mlogit_zh##syntax"}{...}
{viewerjumpto "菜单" "bayes_mlogit_zh##menu"}{...}
{viewerjumpto "描述" "bayes_mlogit_zh##description"}{...}
{viewerjumpto "PDF文档链接" "bayes_mlogit_zh##linkspdf"}{...}
{viewerjumpto "示例" "bayes_mlogit_zh##examples"}{...}
{viewerjumpto "存储结果" "bayes_mlogit_zh##results"}
{help bayes_mlogit:English Version}
{hline}{...}
{p2colset 1 26 28 2}{...}
{p2col:{bf:[BAYES] bayes: mlogit} {hline 2}}贝叶斯多项逻辑回归{p_end}
{p2col:}({mansection BAYES bayesmlogit:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 15 2}
{cmd:bayes} [{cmd:,} {it:bayesopts}] {cmd::} {opt mlog:it}
{depvar} [{indepvars}]
{ifin}
[{it:{help bayes_mlogit##weight:权重}}]
[{cmd:,} {it:options}]

{synoptset 20 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:模型}
{synopt :{opt nocons:tant}}抑制常数项{p_end}
{synopt :{opt b:aseoutcome(#)}}将成为基准结果的 {depvar} 值{p_end}

{syntab:报告}
{synopt :{opt rr:r}}报告相对风险比{p_end}
{synopt :{it:{help mlogit##display_options:显示选项}}}控制
包含帮助简短描述显示选项

{synopt :{opt l:evel(#)}}设置可信水平；默认值为 {cmd:level(95)}{p_end}
{synoptline}
包含帮助 fvvarlist
{p 4 6 2}
{it:indepvars} 可以包含
时间序列运算符；见 {help tsvarlist_zh}.{p_end}
{marker weight}{...}
{p 4 6 2}
{cmd:fweight} 被允许；见 {help weight_zh}.{p_end}
{p 4 6 2}
{cmd:bayes:} {cmd:mlogit,} {cmd:level()} 等价于 
{cmd:bayes,} {cmd:clevel():} {cmd:mlogit}.{p_end}
{p 4 6 2}有关 {it:options} 的详细描述，请参见
{help mlogit##options:{it:选项}} 在 {manhelp mlogit R}.{p_end}

{marker bayesopts}{...}
{synoptset 30 tabbed}{...}
{synopthdr:bayesopts}
{synoptline}
{marker options_priors}{...}
{syntab:{help bayes##priors_options:先验}}
{p2coldent:* {opt normalpr:ior(#)}}指定回归系数的默认正态先验的标准差；默认值为 {cmd:normalprior(100)}{p_end}
{* 包含帮助 bayesecmd_opts*}
包含帮助 bayesmh_prioropts

{marker options_simulation}{...}
  {syntab:{help bayes##simulation_options:模拟}}
包含帮助 bayesmh_simopts

{marker options_blocking}{...}
  {syntab:{help bayes##blocking_options:阻塞}}
{p2coldent:* {opt blocksize(#)}}最大块大小；默认值为 {cmd:blocksize(50)}{p_end}
包含帮助 bayesmh_blockopts
  {p2coldent:* {opt noblock:ing}}默认不阻塞参数{p_end}

{marker options_initialization}{...}
  {syntab:{help bayes##initialization_options:初始化}}
包含帮助 bayesmh_initopts
  {p2coldent:* {opt noi:sily}}在初始化期间显示估计命令的输出{p_end}

{marker options_adaptation}{...}
  {syntab:{help bayes##adaptation_options:适应性}}
包含帮助 bayesmh_adaptopts

{marker options_reporting}{...}
  {syntab:{help bayes##reporting_options:报告}}
包含帮助 bayes_clevel_hpd_short
{p2coldent:* {opt rr:r}}报告相对风险比{p_end}
包含帮助 bayesecmd_reportopts_special

{marker options_advanced}{...}
  {syntab:{help bayes##advanced_options:高级}}
包含帮助 bayesmh_advancedopts
{synoptline}
{p 4 6 2}* 加星选项为 {cmd:bayes} 前缀特定；其他选项在 {cmd:bayes} 和 {help bayesmh_zh} 之间是共同的。{p_end}
{p 4 6 2}选项 {cmd:prior()} 和 {cmd:block()} 可以重复。{p_end}
{p 4 6 2}{helpb bayesmh##priorspec:{it:priorspec}} 和
{helpb bayesmh##paramref:{it:paramref}} 在 {manhelp bayesmh BAYES} 中定义。
{p_end}
{p 4 6 2}{it:paramref} 可以包含因子变量；见 {help fvvarlist_zh}。
{p_end}
{p 4 6 2}有关估计后可用功能，请参见 {manhelp bayesian_postestimation BAYES:贝叶斯后估计}。{p_end}
{p2colreset}{...}
{p 4 6 2}模型参数是回归系数
{cmd:{c -(}}{it:outcome1}{cmd::}{it:indepvars}{cmd:{c )-}}, 
{cmd:{c -(}}{it:outcome2}{cmd::}{it:indepvars}{cmd:{c )-}}, 等等，
其中 {it:outcome#} 是因变量的值或因变量的值标签（如果存在）。
使用 {cmd:dryrun} 选项查看模型参数的定义
在估计之前。{p_end}
{p 4 6 2}有关 {it:bayesopts} 的详细描述，请参见
{help bayes##options:{it:选项}} 在 {manhelp bayes BAYES}。{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 分类结果 > 贝叶斯多项逻辑回归}


{marker description}{...}
{title:描述}

{pstd}
{cmd:bayes: mlogit} 拟合贝叶斯多项逻辑回归
用于分类结果；
有关详细信息，请参见 {manhelp bayes BAYES} 和 {manhelp mlogit R:mlogit}。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection BAYES bayesmlogitQuickstart:快速入门}

        {mansection BAYES bayesmlogitRemarksandexamples:备注和示例}

        {mansection BAYES bayesmlogitMethodsandformulas:方法和公式}

{pstd}
上面的部分未包含在此帮助文件中。


{marker examples}{...}
{title:示例}

{pstd}
安装{p_end}
{phang2}{cmd:. webuse sysdsn1}

{pstd}
使用默认先验拟合贝叶斯多项逻辑回归{p_end}
{phang2}{cmd:. bayes: mlogit insure age male nonwhite}

{pstd}
获取回放中相对风险比的后验摘要{p_end}
{phang2}{cmd:. bayes, rrr}

{pstd}
在估计时获取相对风险比的后验摘要{p_end}
{phang2}{cmd:. bayes, rrr: mlogit insure age male nonwhite}

{pstd}
如上，但在 {cmd:mlogit} 中指定选项 {cmd:rrr}{p_end}
{phang2}{cmd:. bayes: mlogit insure age male nonwhite, rrr}

{pstd}
将烧入期从默认的 2,500 增加到 5,000{p_end}
{phang2}{cmd:. bayes, burnin(5000): mlogit insure age male nonwhite}

{pstd}
与上述相同，但为回归系数的默认正态先验使用标准差 10，并指定随机数种子以确保可重复性{p_end}
{phang2}{cmd:. bayes, normalprior(10) burnin(5000) rseed(12345):}
          {cmd:mlogit insure age male nonwhite}

{pstd}
使用 {cmd:Prepaid} 方程中所有回归系数的均匀先验拟合贝叶斯多项逻辑回归{p_end}
{phang2}{cmd:. bayes, prior({Prepaid:age male nonwhite _cons}, uniform(-10,10)): mlogit insure age male nonwhite}

{pstd}
与上述相同，但使用快捷符号引用 {cmd:Prepaid} 方程中的所有回归系数{p_end}
{phang2}{cmd:. bayes, prior({Prepaid:}, uniform(-10,10)): mlogit insure age male nonwhite}

{pstd}
使用均匀先验拟合贝叶斯多项逻辑回归，适用于所有回归系数{p_end}
{phang2}{cmd:. bayes, prior({Prepaid:} {Uninsure:}, uniform(-10,10)): mlogit insure age male nonwhite}

{pstd}
在回放中保存 MCMC 结果{p_end}
{phang2}{cmd:. bayes, saving(mymcmc)}


{marker results}{...}
{title:存储结果}

{pstd}
请参见 {help bayes##results:{it:存储结果}} 在 {manhelp bayes BAYES}。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <bayes_mlogit.sthlp>}