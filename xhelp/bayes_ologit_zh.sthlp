{smcl}
{* *! version 1.0.8  12dec2018}{...}
{viewerdialog "bayes: ologit" "dialog bayes_ologit"}{...}
{vieweralsosee "[BAYES] bayes: ologit" "mansection BAYES bayesologit"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[BAYES] bayes" "help bayes_zh"}{...}
{vieweralsosee "[R] ologit" "help ologit_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[BAYES] Bayesian commands" "help bayesian_commands_zh"}{...}
{vieweralsosee "[BAYES] Bayesian estimation" "help bayesian_estimation_zh"}{...}
{vieweralsosee "[BAYES] Bayesian postestimation" "help bayesian_postestimation_zh"}{...}
{vieweralsosee "[BAYES] Glossary" "help bayes_glossary_zh"}{...}
{viewerjumpto "Syntax" "bayes_ologit_zh##syntax"}{...}
{viewerjumpto "Menu" "bayes_ologit_zh##menu"}{...}
{viewerjumpto "Description" "bayes_ologit_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "bayes_ologit_zh##linkspdf"}{...}
{viewerjumpto "Examples" "bayes_ologit_zh##examples"}{...}
{viewerjumpto "Stored results" "bayes_ologit_zh##results"}
{help bayes_ologit:English Version}
{hline}{...}
{p2colset 1 26 28 2}{...}
{p2col:{bf:[BAYES] bayes: ologit} {hline 2}}贝叶斯有序逻辑回归{p_end}
{p2col:}({mansection BAYES bayesologit:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 15 2}
{cmd:bayes} [{cmd:,} {it:bayesopts}] {cmd::} {opt olog:it}
{depvar} [{indepvars}]
{ifin}
[{it:{help bayes_ologit##weight:权重}}]
[{cmd:,} {it:选项}]

{synoptset 20 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:模型}
{synopt :{opth off:set(varname)}}在模型中包含 {it:varname}，其系数限制为1{p_end}

{syntab:报告}
{synopt :{opt or}}报告优势比{p_end}
{synopt :{it:{help ologit##display_options:显示选项}}}控制
INCLUDE help shortdes-displayoptbayes

{synopt :{opt l:evel(#)}}设定可信水平；默认为 {cmd:level(95)}{p_end}
{synoptline}
INCLUDE help fvvarlist
{p 4 6 2}
{it:depvar} 和 {it:indepvars} 可能包含
时间序列运算符；请参阅 {help tsvarlist_zh}.{p_end}
{marker weight}{...}
{p 4 6 2}
{cmd:fweight}是允许的；请参阅 {help weight_zh}.{p_end}
{p 4 6 2}
{cmd:bayes:} {cmd:ologit,} {cmd:level()} 相当于 
{cmd:bayes,} {cmd:clevel():} {cmd:ologit}.{p_end}
{p 4 6 2}有关 {it:选项} 的详细描述，请参阅
{help ologit##options:{it:选项}} 在 {manhelp ologit R} 中。{p_end}

{marker bayesopts}{...}
{synoptset 30 tabbed}{...}
{synopthdr:bayesopts}
{synoptline}
{marker options_priors}{...}
{syntab:{help bayes##priors_options:先验}}
{p2coldent:* {opt normalpr:ior(#)}}指定回归系数默认正态先验的标准差；默认为 {cmd:normalprior(100)}{p_end}
{* INCLUDE help bayesecmd_opts*}
INCLUDE help bayesmh_prioropts

{marker options_simulation}{...}
  {syntab:{help bayes##simulation_options:模拟}}
INCLUDE help bayesmh_simopts

{marker options_blocking}{...}
  {syntab:{help bayes##blocking_options:阻塞}}
{p2coldent:* {opt blocksize(#)}}最大块大小；默认为 {cmd:blocksize(50)}{p_end}
INCLUDE help bayesmh_blockopts
  {p2coldent:* {opt noblock:ing}}默认情况下不对参数进行阻塞{p_end}

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
{p2coldent:* {cmd:or}}报告优势比{p_end}
INCLUDE help bayesecmd_reportopts_special

{marker options_advanced}{...}
  {syntab:{help bayes##advanced_options:高级}}
INCLUDE help bayesmh_advancedopts
{synoptline}
{p 4 6 2}* 带星选项特定于 {cmd:bayes} 前缀；其他选项在 {cmd:bayes} 和 {help bayesmh_zh} 之间共享。{p_end}
{p 4 6 2}选项 {cmd:prior()} 和 {cmd:block()} 可以重复。{p_end}
{p 4 6 2}{helpb bayesmh##priorspec:{it:先验规格}} 和
{helpb bayesmh##paramref:{it:参数参考}} 在 {manhelp bayesmh BAYES} 中定义。
{p_end}
{p 4 6 2}{it:参数参考} 可以包含因子变量；请参阅 {help fvvarlist_zh}。
{p_end}
{p 4 6 2}请参阅 {manhelp bayesian_postestimation BAYES:贝叶斯后估计} 以获取估计后的可用功能。{p_end}
{p2colreset}{...}
{p 4 6 2}模型参数是回归系数
{cmd:{c -(}}{it:depvar}{cmd::}{it:indepvars}{cmd:{c )-}} 和截距
{cmd:{c -(}cut1{c )-}},
{cmd:{c -(}cut2{c )-}}, 等等。
使用 {cmd:dryrun} 选项在估计之前查看模型参数的定义。{p_end}
{p 4 6 2}默认情况下，截距使用平坦先验 {cmd:flat}。{p_end}
{p 4 6 2}有关 {it:bayesopts} 的详细描述，请参阅
{help bayes##options:{it:选项}} 在 {manhelp bayes BAYES} 中。{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 有序结果 > 贝叶斯回归 > 有序逻辑回归}


{marker description}{...}
{title:描述}

{pstd}
{cmd:bayes: ologit} 适合贝叶斯有序逻辑回归于
有序结果；
详见 {manhelp bayes BAYES} 和 {manhelp ologit R:ologit}。

{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection BAYES bayesologitQuickstart:快速入门}

        {mansection BAYES bayesologitRemarksandexamples:备注和示例}

        {mansection BAYES bayesologitMethodsandformulas:方法和公式}

{pstd}
上述各节不包含在此帮助文件中。


{marker examples}{...}
{title:示例}

{pstd}
设置{p_end}
{phang2}{cmd:. webuse fullauto}

{pstd}
使用默认先验拟合贝叶斯有序逻辑回归{p_end}
{phang2}{cmd:. bayes: ologit rep77 mpg foreign}

{pstd}
显示优势比而非系数{p_end}
{phang2}{cmd:. bayes, or}

{pstd}
将燃烧期从默认的 2500 增加到 5000{p_end}
{phang2}{cmd:. bayes, burnin(5000): ologit rep77 mpg foreign}

{pstd}
与上述相同，但使用回归系数默认正态先验的标准差为 10{p_end}
{phang2}{cmd:. bayes, normalprior(10) burnin(5000):}
          {cmd:ologit rep77 mpg foreign}

{pstd}
与上述相同，但同时指定随机数种子以保证可复现性{p_end}
{phang2}{cmd:. bayes, normalprior(10) burnin(5000) rseed(12345):}
          {cmd:ologit rep77 mpg foreign}

{pstd}
使用对所有回归系数的均匀先验以及对截距的正态先验拟合贝叶斯有序逻辑回归{p_end}
{phang2}{cmd:. bayes, prior({rep77:mpg foreign}, uniform(-5,5))}{p_end}
            {cmd:prior({cut1 cut2 cut3 cut4}, normal(0,10)):}
            {cmd:ologit rep77 mpg foreign}

{pstd}
与上述相同，但使用简写法引用所有回归系数{p_end}
{phang2}{cmd:. bayes, prior({rep77:}, uniform(-5,5))}{p_end}
            {cmd:prior({cut1 cut2 cut3 cut4}, normal(0,10)):}
            {cmd:ologit rep77 mpg foreign}

{pstd}
在回放时保存 MCMC 结果{p_end}
{phang2}{cmd:. bayes, saving(mymcmc)}


{marker results}{...}
{title:存储的结果}

{pstd}
请参见 {help bayes##results:{it:存储的结果}} 在 {manhelp bayes BAYES} 中。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <bayes_ologit.sthlp>}