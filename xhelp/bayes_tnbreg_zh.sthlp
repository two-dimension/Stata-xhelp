{smcl}
{* *! version 1.0.9  12dec2018}{...}
{viewerdialog "bayes: tnbreg" "dialog bayes_tnbreg"}{...}
{vieweralsosee "[BAYES] bayes: tnbreg" "mansection BAYES bayestnbreg"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[BAYES] bayes" "help bayes_zh"}{...}
{vieweralsosee "[R] tnbreg" "help tnbreg_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[BAYES] Bayesian commands" "help bayesian_commands_zh"}{...}
{vieweralsosee "[BAYES] Bayesian estimation" "help bayesian_estimation_zh"}{...}
{vieweralsosee "[BAYES] Bayesian postestimation" "help bayesian_postestimation_zh"}{...}
{vieweralsosee "[BAYES] Glossary" "help bayes_glossary_zh"}{...}
{viewerjumpto "Syntax" "bayes_tnbreg_zh##syntax"}{...}
{viewerjumpto "Menu" "bayes_tnbreg_zh##menu"}{...}
{viewerjumpto "Description" "bayes_tnbreg_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "bayes_tnbreg_zh##linkspdf"}{...}
{viewerjumpto "Examples" "bayes_tnbreg_zh##examples"}{...}
{viewerjumpto "Stored results" "bayes_tnbreg_zh##results"}
{help bayes_tnbreg:English Version}
{hline}{...}
{p2colset 1 26 28 2}{...}
{p2col:{bf:[BAYES] bayes: tnbreg} {hline 2}}贝叶斯截断负二项回归{p_end}
{p2col:}({mansection BAYES bayestnbreg:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 15 2}
{cmd:bayes} [{cmd:,} {it:bayesopts}] {cmd::} {opt tnbreg}
{depvar} [{indepvars}]
{ifin}
[{it:{help bayes_tnbreg##weight:权重}}]
[{cmd:,} {it:选项}]

{synoptset 23 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:模型}
{synopt :{opt nocons:不含}}抑制常数项{p_end}
{synopt:{cmd:ll(}{it:#}|{varname}{cmd:)}}截断点; 默认值为 {cmd:ll(0)}，零截断{p_end}
{synopt :{opt d:ispersion}{cmd:(}{opt m:ean}{cmd:)}}分散参数化；默认值{p_end}
{synopt :{opt d:ispersion}{cmd:(}{opt c:onstant}{cmd:)}}所有观察值的常数分散{p_end}
{synopt :{opth exp:osure(varname:varname_e)}}在模型中包括 ln({it:varname_e})，其系数限制为 1{p_end}
{synopt :{opth off:set(varname:varname_o)}}在模型中包括 {it:varname_o}，其系数限制为 1{p_end}

{syntab:报告}
{synopt :{opt ir:r}}报告发生率比{p_end}
{synopt :{it:{help tnbreg##display_options:显示选项}}}控制
INCLUDE help shortdes-displayoptbayes

{synopt :{opt l:evel(#)}}设置可信水平；默认值为 {cmd:level(95)}{p_end}
{synoptline}
INCLUDE help fvvarlist
{p 4 6 2}
{it:depvar} 和 {it:indepvars} 可以包含
时间序列运算符；见 {help tsvarlist_zh}.{p_end}
{marker weight}{...}
{p 4 6 2}
{cmd:fweight} 是允许的；见 {help weight_zh}.{p_end}
{p 4 6 2}
{cmd:bayes:} {cmd:tnbreg,} {cmd:level()} 等价于 
{cmd:bayes,} {cmd:clevel():} {cmd:tnbreg}.{p_end}
{p 4 6 2}有关 {it:options} 的详细描述，请参见
{help tnbreg##options:{it:选项}} 在 {manhelp tnbreg R}.{p_end}

{marker bayesopts}{...}
{synoptset 30 tabbed}{...}
{synopthdr:bayesopts}
{synoptline}
{marker options_priors}{...}
{syntab:{help bayes##priors_options:先验}}
{p2coldent:* {opt normalpr:ior(#)}}指定回归系数和对数超分散参数的默认正态先验的标准差；默认值为 {cmd:normalprior(100)}{p_end}
{* INCLUDE help bayesecmd_opts*}
INCLUDE help bayesmh_prioropts

{marker options_simulation}{...}
  {syntab:{help bayes##simulation_options:模拟}}
INCLUDE help bayesmh_simopts

{marker options_blocking}{...}
  {syntab:{help bayes##blocking_options:阻塞}}
{p2coldent:* {opt blocksize(#)}}最大块大小；默认值为 {cmd:blocksize(50)}{p_end}
INCLUDE help bayesmh_blockopts
  {p2coldent:* {opt noblock:ing}}默认情况下不阻塞参数{p_end}

{marker options_initialization}{...}
  {syntab:{help bayes##initialization_options:初始化}}
INCLUDE help bayesmh_initopts
  {p2coldent:* {opt noi:sily}}在初始化期间显示估计命令的输出{p_end}

{marker options_adaptation}{...}
  {syntab:{help bayes##adaptation_options:适应}}
INCLUDE help bayesmh_adaptopts

{marker options_reporting}{...}
  {syntab:{help bayes##reporting_options:报告}}
INCLUDE help bayes_clevel_hpd_short
{p2coldent:* {opt ir:r}}报告发生率比{p_end}
INCLUDE help bayesecmd_reportopts_special

{marker options_advanced}{...}
  {syntab:{help bayes##advanced_options:高级}}
INCLUDE help bayesmh_advancedopts
{synoptline}
{p 4 6 2}* 星标选项特定于 {cmd:bayes} 前缀；其他
选项在 {cmd:bayes} 和 {help bayesmh_zh} 之间是通用的。{p_end}
{p 4 6 2}选项 {cmd:prior()} 和 {cmd:block()} 可以重复。{p_end}
{p 4 6 2}{helpb bayesmh##priorspec:{it:priorspec}} 和
{helpb bayesmh##paramref:{it:paramref}} 在 {manhelp bayesmh BAYES}中定义。
{p_end}
{p 4 6 2}{it:paramref} 可以包含因子变量；见 {help fvvarlist_zh}。
{p_end}
{p 4 6 2}见 {manhelp bayesian_postestimation BAYES:贝叶斯后估计} 获取
估计后可用的特性。{p_end}
{p2colreset}{...}
{p 4 6 2}模型参数是回归系数
{cmd:{c -(}}{it:depvar}{cmd::}{it:indepvars}{cmd:{c )-}} 和
对数超分散参数
{cmd:{c -(}lnalpha{c )-}} 带有均值分散或
{cmd:{c -(}lndelta{c )-}} 具有常数分散。
使用 {cmd:dryrun} 选项查看
模型参数在估计之前的定义。{p_end}
{p 4 6 2}有关 {it:bayesopts} 的详细描述，请参见
{help bayes##options:{it:选项}} 在 {manhelp bayes BAYES}.{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 计数结果 > 贝叶斯回归 > 截断负二项回归}


{marker description}{...}
{title:描述}

{pstd}
{cmd:bayes: tnbreg} 拟合贝叶斯截断负二项回归
到一个所有值均高于截断点的正计数结果；
有关详细信息，请参见 {manhelp bayes BAYES} 和 {manhelp tnbreg R:tnbreg}。


{marker linkspdf}{...}
{title:链接到 PDF 文档}

        {mansection BAYES bayestnbregQuickstart:快速开始}

        {mansection BAYES bayestnbregRemarksandexamples:备注和示例}

        {mansection BAYES bayestnbregMethodsandformulas:方法和公式}

{pstd}
上述部分未包含在此帮助文件中。


{marker examples}{...}
{title:示例}

{pstd}
设置{p_end}
{phang2}{cmd:. webuse medpar}{p_end}

{pstd}
拟合带有默认下截断点 0 的贝叶斯截断负二项回归模型；在模拟期间显示点{p_end}
{phang2}{cmd:. bayes, dots: tnbreg los died hmo type2-type3}

{pstd}
重放结果并报告发生率比{p_end}
{phang2}{cmd:. bayes, irr}

{pstd}
将烧入期从默认 2500 增加到 3000{p_end}
{phang2}{cmd:. bayes, burnin(3000) dots: tnbreg los died hmo type2-type3}

{pstd}
使用默认正态先验的标准差 10 来产生回归系数和对数超分散参数，指定随机数种子以确保可重复性{p_end}
{phang2}{cmd:. bayes, normalprior(10) rseed(12345) dots:}
          {cmd:tnbreg los died hmo type2-type3}

{pstd}
显示 95% 最高后验密度 (HPD) 可信区间，而不是默认的等尾{p_end}
{phang2}{cmd:. bayes, hpd}

{pstd}
在重放时保存 MCMC 结果{p_end}
{phang2}{cmd:. bayes, saving(mymcmc)}


{marker results}{...}
{title:存储结果}

{pstd}
见 {help bayes##results:{it:存储结果}} 在 {manhelp bayes BAYES}。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <bayes_tnbreg.sthlp>}