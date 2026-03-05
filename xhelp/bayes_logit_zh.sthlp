{smcl}
{* *! version 1.0.8  12dec2018}{...}
{viewerdialog "bayes: logit" "dialog bayes_logit"}{...}
{vieweralsosee "[BAYES] bayes: logit" "mansection BAYES bayeslogit"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[BAYES] bayes" "help bayes_zh"}{...}
{vieweralsosee "[R] logit" "help logit_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[BAYES] Bayesian commands" "help bayesian_commands_zh"}{...}
{vieweralsosee "[BAYES] Bayesian estimation" "help bayesian_estimation_zh"}{...}
{vieweralsosee "[BAYES] Bayesian postestimation" "help bayesian_postestimation_zh"}{...}
{vieweralsosee "[BAYES] Glossary" "help bayes_glossary_zh"}{...}
{viewerjumpto "Syntax" "bayes_logit_zh##syntax"}{...}
{viewerjumpto "Menu" "bayes_logit_zh##menu"}{...}
{viewerjumpto "Description" "bayes_logit_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "bayes_logit_zh##linkspdf"}{...}
{viewerjumpto "Examples" "bayes_logit_zh##examples"}{...}
{viewerjumpto "Stored results" "bayes_logit_zh##results"}
{help bayes_logit:English Version}
{hline}{...}
{p2colset 1 25 27 2}{...}
{p2col:{bf:[BAYES] bayes: logit} {hline 2}}贝叶斯逻辑回归，
报告系数{p_end}
{p2col:}({mansection BAYES bayeslogit:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 15 2}
{cmd:bayes} [{cmd:,} {it:bayesopts}] {cmd::} {opt logi:t}
{depvar} [{indepvars}]
{ifin}
[{it:{help bayes_logit##weight:权重}}]
[{cmd:,} {it:选项}]

{synoptset 20 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:模型}
{synopt :{opt nocons:tant}}抑制常数项{p_end}
{synopt :{opth off:set(varname)}}在模型中包含 {it:varname} ，系数固定为1{p_end}
{synopt :{opt asis}}保留完美预测变量{p_end}

{syntab:报告}
{synopt :{opt or}}报告赔率比{p_end}
{synopt :{it:{help logit##display_options:显示选项}}}控制
包括帮助短描述-显示选项贝叶斯

{synopt :{opt l:evel(#)}}设置可信水平；默认值是 {cmd:level(95)}{p_end}
{synoptline}
包括帮助因素变量列表
{p 4 6 2}
{it:depvar} 和 {it:indepvars} 可以包含
时间序列操作符；见 {help tsvarlist_zh}.{p_end}
{marker weight}{...}
{p 4 6 2}
{cmd:fweight} 被允许；见 {help weight_zh}.{p_end}
{p 4 6 2}
{cmd:bayes:} {cmd:logit,} {cmd:level()} 相当于 
{cmd:bayes,} {cmd:clevel():} {cmd:logit}.{p_end}
{p 4 6 2}有关 {it:选项} 的详细描述，请参见
{help logit##options:{it:选项}} 在 {manhelp logit R}.{p_end}

{marker bayesopts}{...}
{synoptset 30 tabbed}{...}
{synopthdr:bayesopts}
{synoptline}
{marker options_priors}{...}
{syntab:{help bayes##priors_options:先验}}
{p2coldent:* {opt normalpr:ior(#)}}指定回归系数默认正常先验的标准差；默认值是 {cmd:normalprior(100)}{p_end}
{* 包括帮助 bayesecmd_opts*}
包括帮助 bayesmh_prioropts

{marker options_simulation}{...}
  {syntab:{help bayes##simulation_options:模拟}}
包括帮助 bayesmh_simopts

{marker options_blocking}{...}
  {syntab:{help bayes##blocking_options:阻塞}}
{p2coldent:* {opt blocksize(#)}}最大块大小；默认值是 {cmd:blocksize(50)}{p_end}
包括帮助 bayesmh_blockopts
  {p2coldent:* {opt noblock:ing}}默认不阻塞参数{p_end}

{marker options_initialization}{...}
  {syntab:{help bayes##initialization_options:初始化}}
包括帮助 bayesmh_initopts
  {p2coldent:* {opt noi:sily}}在初始化期间显示估计命令的输出{p_end}

{marker options_adaptation}{...}
  {syntab:{help bayes##adaptation_options:适应}}
包括帮助 bayesmh_adaptopts

{marker options_reporting}{...}
  {syntab:{help bayes##reporting_options:报告}}
包括帮助 bayes_clevel_hpd_short
{p2coldent:* {cmd:or}}报告赔率比{p_end}
包括帮助 bayesecmd_reportopts_special

{marker options_advanced}{...}
  {syntab:{help bayes##advanced_options:高级}}
包括帮助 bayesmh_advancedopts
{synoptline}
{p 4 6 2}* 星标选项特定于 {cmd:bayes} 前缀；其他选项在 {cmd:bayes} 和 {help bayesmh_zh} 之间是通用的。{p_end}
{p 4 6 2}选项 {cmd:prior()} 和 {cmd:block()} 可以重复使用。{p_end}
{p 4 6 2}{helpb bayesmh##priorspec:{it:priorspec}} 和
{helpb bayesmh##paramref:{it:paramref}} 在 {manhelp bayesmh BAYES}中定义。
{p_end}
{p 4 6 2}{it:paramref} 可以包含因子变量；见 {help fvvarlist_zh}。
{p_end}
{p 4 6 2}有关估计后可用的功能，请参见 {manhelp bayesian_postestimation BAYES:贝叶斯后估计}。{p_end}
{p2colreset}{...}
{p 4 6 2}模型参数是回归系数
{cmd:{c -(}}{it:depvar}{cmd::}{it:indepvars}{cmd:{c )-}}。
使用 {cmd:dryrun} 选项在估计之前查看模型参数的定义。{p_end}
{p 4 6 2}有关 {it:bayesopts} 的详细描述，请参见
{help bayes##options:{it:选项}} 在 {manhelp bayes BAYES}中。{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 二元结果 > 贝叶斯回归 > 逻辑回归}


{marker description}{...}
{title:描述}

{pstd}
{cmd:bayes: logit} 拟合贝叶斯逻辑回归以应对二元
结果；详情见 {manhelp bayes BAYES} 和 {manhelp logit R:logit}。


{marker linkspdf}{...}
{title:PDF文档的链接}

        {mansection BAYES bayeslogitQuickstart:快速入门}

        {mansection BAYES bayeslogitRemarksandexamples:备注和示例}

        {mansection BAYES bayeslogitMethodsandformulas:方法和公式}

{pstd}
上述部分不包括在此帮助文件中。


{marker examples}{...}
{title:示例：逻辑回归}

{pstd}
环境设置{p_end}
{phang2}{cmd:. webuse lbw}

{pstd}
使用默认先验拟合贝叶斯逻辑回归{p_end}
{phang2}{cmd:. bayes: logit low age lwt i.race}

{pstd}
显示赔率比而不是系数{p_end}
{phang2}{cmd:. bayes, or}

{pstd}
将烧入期增加到5000，默认值为
2500{p_end}
{phang2}{cmd:. bayes, burnin(5000): logit low age lwt i.race}

{pstd}
与上述相同，但使用回归系数默认正常先验的标准差为10{p_end}
{phang2}{cmd:. bayes, normalprior(10) burnin(5000):}
          {cmd:logit low age lwt i.race}

{pstd}
与上述相同，但还指定随机数种子以实现可重复性{p_end}
{phang2}{cmd:. bayes, normalprior(10) burnin(5000) rseed(12345):}
          {cmd:logit low age lwt i.race}

{pstd}
使用所有回归系数的均匀先验拟合贝叶斯逻辑回归{p_end}
{phang2}{cmd:. bayes, prior({low:age lwt i.race _cons}, uniform(-10,10)): logit low age lwt i.race}

{pstd}
与上述相同，但使用快捷符号来引用所有回归系数{p_end}
{phang2}{cmd:. bayes, prior({low:}, uniform(-10,10)): logit low age lwt i.race}

{pstd}
在回放时保存MCMC结果{p_end}
{phang2}{cmd:. bayes, saving(mymcmc)}


{title:示例：处理完美预测}

{pstd}
环境设置{p_end}
{phang2}{cmd:. webuse heartswitz}

{pstd}
使用默认非信息先验拟合贝叶斯逻辑回归{p_end}
{phang2}{cmd:. bayes: logit disease restecg isfbs age male}

{pstd}
与上述相同，但指定选项 {cmd:noisily} 以显示 {cmd:logit} 命令的输出{p_end}
{phang2}{cmd:. bayes, noisily: logit disease restecg isfbs age male}

{pstd}
指定基于类似研究的信息先验来解决完美预测问题；指定 {cmd:logit} 的 {cmd:asis} 选项以防止
{cmd:logit} 从模型中删除完美预测变量，并指定 {cmd:bayes} 的 {cmd:nomleinitial} 选项以防止 {cmd:bayes} 试图
获取最大似然估计作为起始值{p_end}
{phang2}{cmd:. bayes, prior({disease:restecg age}, normal(0,10))}{p_end}
            {cmd:prior({disease:isfbs male}, normal(1,10))}
	    {cmd:prior({disease:_cons}, normal(-4,10)) nomleinitial:}
	    {cmd:logit disease restecg isfbs age male, asis}


{marker results}{...}
{title:存储的结果}

{pstd}
见 {help bayes##results:{it:存储的结果}} 在 {manhelp bayes BAYES}。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <bayes_logit.sthlp>}