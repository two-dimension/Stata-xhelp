{smcl}
{* *! version 1.0.9  12dec2018}{...}
{viewerdialog "bayes: tpoisson" "dialog bayes_tpoisson"}{...}
{vieweralsosee "[BAYES] bayes: tpoisson" "mansection BAYES bayestpoisson"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[BAYES] bayes" "help bayes_zh"}{...}
{vieweralsosee "[R] tpoisson" "help tpoisson_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[BAYES] Bayesian commands" "help bayesian_commands_zh"}{...}
{vieweralsosee "[BAYES] Bayesian estimation" "help bayesian_estimation_zh"}{...}
{vieweralsosee "[BAYES] Bayesian postestimation" "help bayesian_postestimation_zh"}{...}
{vieweralsosee "[BAYES] Glossary" "help bayes_glossary_zh"}{...}
{viewerjumpto "Syntax" "bayes_tpoisson_zh##syntax"}{...}
{viewerjumpto "Menu" "bayes_tpoisson_zh##menu"}{...}
{viewerjumpto "Description" "bayes_tpoisson_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "bayes_tpoisson_zh##linkspdf"}{...}
{viewerjumpto "Examples" "bayes_tpoisson_zh##examples"}{...}
{viewerjumpto "Stored results" "bayes_tpoisson_zh##results"}
{help bayes_tpoisson:English Version}
{hline}{...}
{p2colset 1 28 30 2}{...}
{p2col:{bf:[BAYES] bayes: tpoisson} {hline 2}}贝叶斯截断泊松回归{p_end}
{p2col:}({mansection BAYES bayestpoisson:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 15 2}
{cmd:bayes} [{cmd:,} {it:bayesopts}] {cmd::} {opt tpoisson}
{depvar} [{indepvars}]
{ifin}
[{it:{help bayes_tpoisson##weight:权重}}]
[{cmd:,} {it:选项}]

{synoptset 20 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:模型}
{synopt :{opt nocons:不加常数}}抑制常数项{p_end}
{synopt:{cmd:ll(}{it:#}|{varname}{cmd:)}}截断的下限；
默认是 {cmd:ll(0)}{p_end}
{synopt:{cmd:ul(}{it:#}|{varname}{cmd:)}}截断的上限{p_end}
{synopt :{opth exp:osure(varname:varname_e)}}在模型中包含 ln({it:varname_e})
，系数限制为 1{p_end}
{synopt :{opth off:set(varname:varname_o)}}在模型中包含 {it:varname_o}，系数限制为 1{p_end}

{syntab:报告}
{synopt :{opt ir:r}}报告发生率比{p_end}
{synopt :{it:{help tpoisson##display_options:显示选项}}}控制
包含 {help shortdes-displayoptbayes_zh}的帮助

{synopt :{opt l:evel(#)}}设置可信水平；默认是 {cmd:level(95)}{p_end}
{synoptline}
包含帮助 {help fvvarlist_zh}
{p 4 6 2}
{it:depvar} 和 {it:indepvars} 可以包含
时间序列运算符；见 {help tsvarlist_zh}.{p_end}
{marker weight}{...}
{p 4 6 2}
{cmd:fweight} 是允许的；请参见 {help weight_zh}.{p_end}
{p 4 6 2}
{cmd:bayes:} {cmd:tpoisson,} {cmd:level()} 相当于
{cmd:bayes,} {cmd:clevel():} {cmd:tpoisson}.{p_end}
{p 4 6 2}有关 {it:选项}的详细描述，请见
{help tpoisson##options:{it:选项}}在 {manhelp tpoisson R}.{p_end}

{marker bayesopts}{...}
{synoptset 30 tabbed}{...}
{synopthdr:bayesopts}
{synoptline}
{marker options_priors}{...}
{syntab:{help bayes##priors_options:先验}}
{p2coldent:* {opt normalpr:ior(#)}}指定回归系数的默认正态
先验的标准差；默认是 {cmd:normalprior(100)}{p_end}
{* INCLUDE help bayesecmd_opts*}
包含帮助 bayesmh_prioropts

{marker options_simulation}{...}
  {syntab:{help bayes##simulation_options:模拟}}
包含帮助 bayesmh_simopts

{marker options_blocking}{...}
  {syntab:{help bayes##blocking_options:屏蔽}}
{p2coldent:* {opt blocksize(#)}}最大块大小；默认是 {cmd:blocksize(50)}{p_end}
包含帮助 bayesmh_blockopts
  {p2coldent:* {opt noblock:ing}}默认不屏蔽参数{p_end}

{marker options_initialization}{...}
  {syntab:{help bayes##initialization_options:初始化}}
包含帮助 bayesmh_initopts
  {p2coldent:* {opt noi:sily}}在初始化期间显示估计命令的输出{p_end}

{marker options_adaptation}{...}
  {syntab:{help bayes##adaptation_options:适应}}
包含帮助 bayesmh_adaptopts

{marker options_reporting}{...}
  {syntab:{help bayes##reporting_options:报告}}
包含帮助 bayes_clevel_hpd_short
{p2coldent:* {opt ir:r}}报告发生率比{p_end}
包含帮助 bayesecmd_reportopts_special

{marker options_advanced}{...}
  {syntab:{help bayes##advanced_options:高级}}
包含帮助 bayesmh_advancedopts
{synoptline}
{p 4 6 2}* 星号选项是特定于 {cmd:bayes} 前缀的；其他
选项在 {cmd:bayes} 和 {help bayesmh_zh}之间是共同的.{p_end}
{p 4 6 2}选项 {cmd:prior()} 和 {cmd:block()} 可重复使用.{p_end}
{p 4 6 2}{helpb bayesmh##priorspec:{it:priorspec}} 和
{helpb bayesmh##paramref:{it:paramref}} 在 {manhelp bayesmh BAYES}中定义。
{p_end}
{p 4 6 2}{it:paramref} 可以包含因子变量；见 {help fvvarlist_zh}。
{p_end}
{p 4 6 2}见 {manhelp bayesian_postestimation BAYES:贝叶斯后估计}获取
估计后可用的特性.{p_end}
{p 4 6 2}模型参数是回归系数
{cmd:{c -(}}{it:depvar}{cmd::}{it:indepvars}{cmd:{c )-}}。
使用 {cmd:dryrun} 选项查看估计前模型参数的定义.{p_end}
{p 4 6 2}有关 {it:bayesopts} 的详细描述，请见
{help bayes##options:{it:选项}} 在 {manhelp bayes BAYES}中.{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 计数结果 > 贝叶斯回归 > 截断泊松回归}


{marker description}{...}
{title:描述}

{pstd}
{cmd:bayes: tpoisson} 对一个所有值高于截断点的正计数结果进行贝叶斯截断泊松回归拟合；
有关详细信息，请参见 {manhelp bayes BAYES} 和 {manhelp tpoisson R:tpoisson}。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection BAYES bayestpoissonQuickstart:快速入门}

        {mansection BAYES bayestpoissonRemarksandexamples:备注和示例}

        {mansection BAYES bayestpoissonMethodsandformulas:方法和公式}

{pstd}
上述部分不包括在此帮助文件中。


{marker examples}{...}
{title:示例}

{pstd}
设置{p_end}
{phang2}{cmd:. webuse probe}{p_end}

{pstd}
拟合贝叶斯截断泊松回归模型，截断下限为 10{p_end}
{phang2}{cmd:. bayes: tpoisson failures ibn.probe depth width, noconstant ll(10)}

{pstd}
重放结果并报告发生率比{p_end}
{phang2}{cmd:. bayes, irr}

{pstd}
将烧入期从默认的 2500 增加到 5000{p_end}
{phang2}{cmd:. bayes, burnin(5000): tpoisson failures ibn.probe depth width, noconstant ll(10)}

{pstd}
与上述相同，但使用回归系数默认正态先验的标准差为 10{p_end}
{phang2}{cmd:. bayes, normalprior(10) burnin(5000):}
          {cmd:tpoisson failures ibn.probe depth width, noconstant ll(10)}

{pstd}
与上述相同，但还指定随机数种子以确保可重复性{p_end}
{phang2}{cmd:. bayes, normalprior(10) burnin(5000) rseed(12345):}
          {cmd:tpoisson failures ibn.probe depth width, noconstant ll(10)}

{pstd}
拟合贝叶斯截断泊松回归模型，指定探针
系数的正态先验均值参数为 {cmd:{probe_mean}}，方差为 10000。我们为 {cmd:{probe_mean}} 分配 {cmd:gamma(2,1)} 超先验 
并用 1 初始化 {cmd:{probe_mean}}。在模拟期间，我们也显示点{p_end}
{phang2}{cmd:. bayes, prior({failures:ibn.probe}, normal({probe_mean}, 10000)) prior({probe_mean}, gamma(2, 1)) initial({probe_mean} 1) dots: tpoisson failures ibn.probe depth width, noconstant ll(10)}

{pstd}
保存 MCMC 结果以便重放{p_end}
{phang2}{cmd:. bayes, saving(mymcmc)}


{marker results}{...}
{title:存储结果}

{pstd}
见 {help bayes##results:{it:存储结果}} 在 {manhelp bayes BAYES}。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <bayes_tpoisson.sthlp>}