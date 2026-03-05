{smcl}
{* *! version 1.0.8  12dec2018}{...}
{viewerdialog "bayes: logistic" "dialog bayes_logistic"}{...}
{vieweralsosee "[BAYES] bayes: logistic" "mansection BAYES bayeslogistic"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[BAYES] bayes" "help bayes_zh"}{...}
{vieweralsosee "[R] logistic" "help logistic_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[BAYES] Bayesian commands" "help bayesian_commands_zh"}{...}
{vieweralsosee "[BAYES] Bayesian estimation" "help bayesian_estimation_zh"}{...}
{vieweralsosee "[BAYES] Bayesian postestimation" "help bayesian_postestimation_zh"}{...}
{vieweralsosee "[BAYES] Glossary" "help bayes_glossary_zh"}{...}
{viewerjumpto "Syntax" "bayes_logistic_zh##syntax"}{...}
{viewerjumpto "Menu" "bayes_logistic_zh##menu"}{...}
{viewerjumpto "Description" "bayes_logistic_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "bayes_logistic_zh##linkspdf"}{...}
{viewerjumpto "Examples" "bayes_logistic_zh##examples"}{...}
{viewerjumpto "Stored results" "bayes_logistic_zh##results"}
{help bayes_logistic:English Version}
{hline}{...}
{p2colset 1 28 30 2}{...}
{p2col:{bf:[BAYES] bayes: logistic} {hline 2}}贝叶斯逻辑回归，报告优势比{p_end}
{p2col:}({mansection BAYES bayeslogistic:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 15 2}
{cmd:bayes} [{cmd:,} {it:bayesopts}] {cmd::} {opt logistic}
{depvar} [{indepvars}]
{ifin}
[{it:{help bayes_logistic##weight:权重}}]
[{cmd:,} {it:选项}]

{synoptset 20 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:模型}
{synopt :{opt nocons:不断}}抑制常数项{p_end}
{synopt :{opth off:set(varname)}}将 {it:varname} 包含在模型中且系数固定为1{p_end}
{synopt :{opt asis}}保留完美预测变量{p_end}

{syntab:报告}
{synopt :{opt coef}}报告估计系数{p_end}
{synopt :{it:{help logistic##display_options:显示选项}}}控制
INCLUDE help shortdes-displayoptbayes

{synopt :{opt l:evel(#)}}设置可信水平；默认为 {cmd:level(95)}{p_end}
{synoptline}
INCLUDE help fvvarlist
{p 4 6 2}
{it:depvar} 和 {it:indepvars} 可以包含时间序列运算符；参见 {help tsvarlist_zh}.{p_end}
{marker weight}{...}
{p 4 6 2}
{cmd:fweight} 是允许的；参见 {help weight_zh}.{p_end}
{p 4 6 2}
{cmd:bayes:} {cmd:logistic,} {cmd:level()} 等价于 
{cmd:bayes,} {cmd:clevel():} {cmd:logistic}.{p_end}
{p 4 6 2}有关 {it:选项} 的详细描述，请参见
{help logistic##options:{it:选项}} 中的 {manhelp logistic R}.{p_end}

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
{p2coldent:* {cmd:coef}}报告估计系数{p_end}
INCLUDE help bayesecmd_reportopts_special

{marker options_advanced}{...}
  {syntab:{help bayes##advanced_options:高级}}
INCLUDE help bayesmh_advancedopts
{synoptline}
{p 4 6 2}* 带星号的选项是特定于 {cmd:bayes} 前缀的；其他选项在 {cmd:bayes} 和 {help bayesmh_zh} 之间是共同的。{p_end}
{p 4 6 2}选项 {cmd:prior()} 和 {cmd:block()} 可以重复.{p_end}
{p 4 6 2}{helpb bayesmh##priorspec:{it:priorspec}} 和
{helpb bayesmh##paramref:{it:paramref}} 定义在 {manhelp bayesmh BAYES} 中。
{p_end}
{p 4 6 2}{it:paramref} 可以包含因子变量；参见 {help fvvarlist_zh}。
{p_end}
{p 4 6 2}有关估计后可用特征，请参见 {manhelp bayesian_postestimation BAYES:贝叶斯后估计}。{p_end}
{p 4 6 2}模型参数是回归系数
{cmd:{c -(}}{it:depvar}{cmd::}{it:indepvars}{cmd:{c )-}}。
使用 {cmd:dryrun} 选项查看模型参数的定义
在估计之前。{p_end}
{p 4 6 2}有关 {it:bayesopts} 的详细描述，请参见
{help bayes##options:{it:选项}} 在 {manhelp bayes BAYES} 中。{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 二元结果 > 贝叶斯回归 > 逻辑回归}


{marker description}{...}
{title:描述}

{pstd}
{cmd:bayes: logistic} 对二元结果进行贝叶斯逻辑回归；
有关详细信息，请参见 {manhelp bayes BAYES} 和 {manhelp logistic R:logistic}。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection BAYES bayeslogisticQuickstart:快速入门}

        {mansection BAYES bayeslogisticRemarksandexamples:备注和示例}

        {mansection BAYES bayeslogisticMethodsandformulas:方法和公式}

{pstd}
上述章节未包含在此帮助文件中。


{marker examples}{...}
{title:示例：逻辑回归}

{pstd}
设置{p_end}
{phang2}{cmd:. webuse lbw}

{pstd}
使用默认先验进行贝叶斯逻辑回归拟合{p_end}
{phang2}{cmd:. bayes: logistic low age lwt i.race}

{pstd}
显示系数而非优势比{p_end}
{phang2}{cmd:. bayes, coef}

{pstd}
将烧入期从默认的 2,500 增加到 5,000{p_end}
{phang2}{cmd:. bayes, burnin(5000): logistic low age lwt i.race}

{pstd}
与上述相同，但使用默认正态先验的标准差为 10 的情况{p_end}
{phang2}{cmd:. bayes, normalprior(10) burnin(5000):}
          {cmd:logistic low age lwt i.race}

{pstd}
与上述相同，但还指定随机数种子以实现可重复性{p_end}
{phang2}{cmd:. bayes, normalprior(10) burnin(5000) rseed(12345):}
          {cmd:logistic low age lwt i.race}

{pstd}
使用所有回归系数的均匀先验进行贝叶斯逻辑回归拟合{p_end}
{phang2}{cmd:. bayes, prior({low:age lwt i.race _cons}, uniform(-10,10)): logistic low age lwt i.race}

{pstd}
与上述相同，但使用快捷方式表示所有回归系数{p_end}
{phang2}{cmd:. bayes, prior({low:}, uniform(-10,10)): logistic low age lwt i.race}

{pstd}
保存 MCMC 结果以供重播{p_end}
{phang2}{cmd:. bayes, saving(mymcmc)}


{title:示例：处理完美预测}

{pstd}
设置{p_end}
{phang2}{cmd:. webuse heartswitz}

{pstd}
使用默认非信息性先验进行贝叶斯逻辑回归拟合{p_end}
{phang2}{cmd:. bayes: logistic disease restecg isfbs age male}

{pstd}
与上述相同，但指定 {cmd:noisily} 选项以显示 {cmd:logistic} 命令的输出{p_end}
{phang2}{cmd:. bayes, noisily: logistic disease restecg isfbs age male}

{pstd}
指定基于相似研究的有信息性先验来解决完美预测的问题；指定 {cmd:logistic} 的 {cmd:asis} 选项以防止 {cmd:logistic} 从模型中删除完美预测变量，并且指定 {cmd:bayes} 的 {cmd:nomleinitial} 选项以防止 {cmd:bayes} 尝试获取 ML 估计作为起始值{p_end}
{phang2}{cmd:. bayes, prior({disease:restecg age}, normal(0,10))}{p_end}
            {cmd:prior({disease:isfbs male}, normal(1,10))}
	    {cmd:prior({disease:_cons}, normal(-4,10)) nomleinitial:}
	    {cmd:logistic disease restecg isfbs age male, asis}


{marker results}{...}
{title:存储结果}

{pstd}
请参见 {help bayes##results:{it:存储结果}} 在 {manhelp bayes BAYES} 中。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <bayes_logistic.sthlp>}