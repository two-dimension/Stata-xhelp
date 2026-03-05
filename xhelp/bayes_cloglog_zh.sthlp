{smcl}
{* *! version 1.0.8  12dec2018}{...}
{viewerdialog "bayes: cloglog" "dialog bayes_cloglog"}{...}
{vieweralsosee "[BAYES] bayes: cloglog" "mansection BAYES bayescloglog"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[BAYES] bayes" "help bayes_zh"}{...}
{vieweralsosee "[R] cloglog" "help cloglog_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[BAYES] Bayesian commands" "help bayesian_commands_zh"}{...}
{vieweralsosee "[BAYES] Bayesian estimation" "help bayesian_estimation_zh"}{...}
{vieweralsosee "[BAYES] Bayesian postestimation" "help bayesian_postestimation_zh"}{...}
{vieweralsosee "[BAYES] Glossary" "help bayes_glossary_zh"}{...}
{viewerjumpto "Syntax" "bayes_cloglog_zh##syntax"}{...}
{viewerjumpto "Menu" "bayes_cloglog_zh##menu"}{...}
{viewerjumpto "Description" "bayes_cloglog_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "bayes_cloglog_zh##linkspdf"}{...}
{viewerjumpto "Examples" "bayes_cloglog_zh##examples"}{...}
{viewerjumpto "Stored results" "bayes_cloglog_zh##results"}
{help bayes_cloglog:English Version}
{hline}{...}
{p2colset 1 27 29 2}{...}
{p2col:{bf:[BAYES] bayes: cloglog} {hline 2}}贝叶斯互补对数-对数回归{p_end}
{p2col:}({mansection BAYES bayescloglog:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 15 2}
{cmd:bayes} [{cmd:,} {it:bayesopts}] {cmd::} {opt cloglog}
{depvar} [{indepvars}]
{ifin}
[{it:{help bayes_cloglog##weight:权重}}]
[{cmd:,} {it:选项}]

{synoptset 20 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:模型}
{synopt :{opt nocons:tant}}抑制常数项{p_end}
{synopt :{opth off:set(varname)}}在模型中包含 {it:varname}，其系数约束为1{p_end}
{synopt :{opt asis}}保留完美预测变量{p_end}

{syntab:报告}
{synopt :{opt ef:orm}}报告指数化系数{p_end}
{synopt :{it:{help cloglog##display_options:显示选项}}}控制
INCLUDE help shortdes-displayoptbayes

{synopt :{opt l:evel(#)}}设置信任水平；默认值为 {cmd:level(95)}{p_end}
{synoptline}
INCLUDE help fvvarlist
{p 4 6 2}
{it:depvar} 和 {it:indepvars} 可以包含
时间序列运算符；详见 {help tsvarlist_zh}.{p_end}
{marker weight}{...}
{p 4 6 2}
{cmd:fweight} 被允许；见 {help weight_zh}.{p_end}
{p 4 6 2}
{cmd:bayes:} {cmd:cloglog,} {cmd:level()} 等价于 
{cmd:bayes,} {cmd:clevel():} {cmd:cloglog}.{p_end}
{p 4 6 2}有关 {it:选项} 的详细描述，请参见
{help cloglog##options:{it:选项}} 在 {manhelp cloglog R}.{p_end}

{marker bayesopts}{...}
{synoptset 30 tabbed}{...}
{synopthdr:bayesopts}
{synoptline}
{marker options_priors}{...}
{syntab:{help bayes##priors_options:先验}}
{p2coldent:* {opt normalpr:ior(#)}}指定回归系数的默认正态先验的标准差；默认值为 {cmd:normalprior(100)}{p_end}
INCLUDE help bayesecmd_opts
{p2colreset}{...}
{p 4 6 2}模型参数是回归系数
{cmd:{c -(}}{it:depvar}{cmd::}{it:indepvars}{cmd:{c )-}}.
使用 {cmd:dryrun} 选项以在估计之前查看模型参数的定义。{p_end}
{p 4 6 2}有关 {it:bayesopts} 的详细描述，请参见
{help bayes##options:{it:选项}} 在 {manhelp bayes BAYES}.{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 二元结果 > 贝叶斯回归 > 互补对数-对数回归}


{marker description}{...}
{title:描述}

{pstd}
{cmd:bayes: cloglog} 对二元结果拟合贝叶斯互补对数-对数回归；
有关详细信息，请参见 {manhelp bayes BAYES} 和 {manhelp cloglog R:cloglog}。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection BAYES bayescloglogQuickstart:快速开始}

        {mansection BAYES bayescloglogRemarksandexamples:备注和示例}

        {mansection BAYES bayescloglogMethodsandformulas:方法和公式}

{pstd}
上述部分未包含在此帮助文件中。


{marker examples}{...}
{title:示例：互补对数-对数回归}

{pstd}
设置{p_end}
{phang2}{cmd:. webuse lbw}

{pstd}
使用默认先验拟合贝叶斯互补对数-对数回归{p_end}
{phang2}{cmd:. bayes: cloglog low age lwt i.race}

{pstd}
显示指数化系数{p_end}
{phang2}{cmd:. bayes, eform}

{pstd}
将烧入期从默认的2500增加到5000{p_end}
{phang2}{cmd:. bayes, burnin(5000): cloglog low age lwt i.race}

{pstd}
与上述相同，但使用标准差为10的默认正态先验 
用于回归系数{p_end}
{phang2}{cmd:. bayes, normalprior(10) burnin(5000):}
          {cmd:cloglog low age lwt i.race}

{pstd}
使用所有回归系数的均匀先验拟合贝叶斯互补对数-对数回归，并指定随机数种子以便重现{p_end}
{phang2}{cmd:. bayes, prior({low:age lwt i.race _cons}, uniform(-5,5)) rseed(12345): cloglog low age lwt i.race}

{pstd}
与上述相同，但使用快捷符号引用所有回归系数{p_end}
{phang2}{cmd:. bayes, prior({low:}, uniform(-5,5)) rseed(12345): cloglog low age lwt i.race}

{pstd}
保存 MCMC 结果以便重放{p_end}
{phang2}{cmd:. bayes, saving(mymcmc)}


{title:示例：处理完美预测}

{pstd}
设置{p_end}
{phang2}{cmd:. webuse heartswitz}

{pstd}
使用默认非信息性先验拟合贝叶斯互补对数-对数回归{p_end}
{phang2}{cmd:. bayes: cloglog disease restecg isfbs age male}

{pstd}
与上述相同，但指定选项 {cmd:noisily} 以显示 {cmd:cloglog} 命令的输出{p_end}
{phang2}{cmd:. bayes, noisily: cloglog disease restecg isfbs age male}

{pstd}
根据类似研究指定信息性先验以解决完美预测的问题；指定 {cmd:cloglog} 的 {cmd:asis} 选项以防止
{cmd:cloglog} 从模型中删除完美预测变量，并指定
{cmd:bayes} 的 {cmd:nomleinitial} 选项以防止 {cmd:bayes} 试图
将 ML 估计作为起始值{p_end}
{phang2}{cmd:. bayes, prior({disease:restecg age}, normal(0,10))}{p_end}
            {cmd:prior({disease:isfbs male}, normal(1,10))}
	    {cmd:prior({disease:_cons}, normal(-4,10)) nomleinitial:}
	    {cmd:cloglog disease restecg isfbs age male, asis}


{marker results}{...}
{title:存储结果}

{pstd}
请参见 {help bayes##results:{it:存储结果}} 在 {manhelp bayes BAYES}。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <bayes_cloglog.sthlp>}