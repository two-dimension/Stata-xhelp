{smcl}
{* *! version 1.0.8  12dec2018}{...}
{viewerdialog "bayes: probit" "dialog bayes_probit"}{...}
{vieweralsosee "[BAYES] bayes: probit" "mansection BAYES bayesprobit"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[BAYES] bayes" "help bayes_zh"}{...}
{vieweralsosee "[R] probit" "help probit_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[BAYES] Bayesian commands" "help bayesian_commands_zh"}{...}
{vieweralsosee "[BAYES] Bayesian estimation" "help bayesian_estimation_zh"}{...}
{vieweralsosee "[BAYES] Bayesian postestimation" "help bayesian_postestimation_zh"}{...}
{vieweralsosee "[BAYES] Glossary" "help bayes_glossary_zh"}{...}
{viewerjumpto "Syntax" "bayes_probit_zh##syntax"}{...}
{viewerjumpto "Menu" "bayes_probit_zh##menu"}{...}
{viewerjumpto "Description" "bayes_probit_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "bayes_probit_zh##linkspdf"}{...}
{viewerjumpto "Examples" "bayes_probit_zh##examples"}{...}
{viewerjumpto "Stored results" "bayes_probit_zh##results"}
{help bayes_probit:English Version}
{hline}{...}
{p2colset 1 26 28 2}{...}
{p2col:{bf:[BAYES] bayes: probit} {hline 2}}贝叶斯 Probit 回归{p_end}
{p2col:}({mansection BAYES bayesprobit:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 15 2}
{cmd:bayes} [{cmd:,} {it:bayesopts}] {cmd::} {opt prob:it}
{depvar} [{indepvars}]
{ifin}
[{it:{help bayes_probit##weight:权重}}]
[{cmd:,} {it:选项}]

{synoptset 20 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:模型}
{synopt :{opt nocons:不截距}}抑制常数项{p_end}
{synopt :{opth off:设置(varname)}}将 {it:varname} 纳入模型，其系数约束为 1{p_end}
{synopt :{opt asis}}保留完美预测变量{p_end}

{syntab:报告}
{synopt :{it:{help probit##display_options:显示选项}}}控制
包含帮助简短描述-displayoptbayes

{synopt :{opt l:evel(#)}}设置可信水平；默认值为 {cmd:level(95)}{p_end}
{synoptline}
包含帮助 fvvarlist
{p 4 6 2}
{it:depvar} 和 {it:indepvars} 可以包含时间序列操作符；参见 {help tsvarlist_zh}.{p_end}
{marker weight}{...}
{p 4 6 2}
{cmd:fweight} 允许使用；参见 {help weight_zh}.{p_end}
{p 4 6 2}
{cmd:bayes:} {cmd:probit,} {cmd:level()} 相当于 
{cmd:bayes,} {cmd:clevel():} {cmd:probit}.{p_end}
{p 4 6 2}有关 {it:选项} 的详细描述，请参见
{help probit##options:{it:选项}} 在 {manhelp probit R} 中.{p_end}

{marker bayesopts}{...}
{synoptset 30 tabbed}{...}
{synopthdr:bayesopts}
{synoptline}
{marker options_priors}{...}
{syntab:{help bayes##priors_options:先验}}
{p2coldent:* {opt normalpr:ior(#)}}指定回归系数默认正态先验的标准差；默认值为 {cmd:normalprior(100)}{p_end}
包含帮助 bayesecmd_opts
{p2colreset}{...}
{p 4 6 2}模型参数是回归系数
{cmd:{c -(}}{it:depvar}{cmd::}{it:indepvars}{cmd:{c )-}}.
使用 {cmd:dryrun} 选项查看估计之前模型参数的定义.{p_end}
{p 4 6 2}有关 {it:bayesopts} 的详细描述，请参见
{help bayes##options:{it:选项}} 在 {manhelp bayes BAYES} 中.{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 二元结果 > 贝叶斯回归 > Probit 回归}


{marker description}{...}
{title:描述}

{pstd}
{cmd:bayes: probit} 拟合一个贝叶斯 Probit 回归模型以预测二元结果；
详情请参见 {manhelp bayes BAYES} 和 {manhelp probit R:probit}。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection BAYES bayesprobitQuickstart:快速入门}

        {mansection BAYES bayesprobitRemarksandexamples:备注和示例}

        {mansection BAYES bayesprobitMethodsandformulas:方法和公式}

{pstd}
上述部分未包含在此帮助文件中。


{marker examples}{...}
{title:示例： Probit 回归}

{pstd}
设置{p_end}
{phang2}{cmd:. webuse lbw}

{pstd}
使用默认先验拟合贝叶斯 Probit 回归{p_end}
{phang2}{cmd:. bayes: probit low age lwt i.race}

{pstd}
将耗散期从默认的 2,500 提高到 5,000{p_end}
{phang2}{cmd:. bayes, burnin(5000): probit low age lwt i.race}

{pstd}
与上述相同，但使用默认正态先验的标准差为 10 的回归系数{p_end}
{phang2}{cmd:. bayes, normalprior(10) burnin(5000):}
          {cmd:probit low age lwt i.race}

{pstd}
与上述相同，但还指定随机数种子以确保可重复性{p_end}
{phang2}{cmd:. bayes, normalprior(10) burnin(5000) rseed(12345):}
          {cmd:probit low age lwt i.race}

{pstd}
使用所有回归系数的均匀先验拟合贝叶斯 Probit 回归{p_end}
{phang2}{cmd:. bayes, prior({low:age lwt i.race _cons}, uniform(-10,10)): probit low age lwt i.race}

{pstd}
与上述相同，但使用捷径语法来引用所有回归系数{p_end}
{phang2}{cmd:. bayes, prior({low:}, uniform(-10,10)): probit low age lwt i.race}

{pstd}
保存 MCMC 结果以便重播{p_end}
{phang2}{cmd:. bayes, saving(mymcmc)}


{title:示例： 处理完美预测}

{pstd}
设置{p_end}
{phang2}{cmd:. webuse heartswitz}

{pstd}
使用默认的非信息性先验拟合贝叶斯 Probit 回归{p_end}
{phang2}{cmd:. bayes: probit disease restecg isfbs age male}

{pstd}
与上述相同，但指定 {cmd:noisily} 选项以显示 {cmd:probit} 命令的输出{p_end}
{phang2}{cmd:. bayes, noisily: probit disease restecg isfbs age male}

{pstd}
指定基于类似研究的有信息先验以解决完美预测问题；指定 {cmd:probit} 的 {cmd:asis} 选项以防止 
{cmd:probit} 从模型中删除完美预测变量，并指定 {cmd:bayes} 的 {cmd:nomleinitial} 选项以防止 {cmd:bayes} 尝试 
获取 ML 估计作为起始值；指定随机数种子以确保可重复性{p_end}
{phang2}{cmd:. bayes, prior({disease:restecg age}, normal(0,10))}{p_end}
            {cmd:prior({disease:isfbs male}, normal(1,10))}
	    {cmd:prior({disease:_cons}, normal(-4,10)) nomleinitial rseed(123):}
	    {cmd:probit disease restecg isfbs age male, asis}


{marker results}{...}
{title:存储的结果}

{pstd}
请参见 {help bayes##results:{it:存储的结果}} 在 {manhelp bayes BAYES} 中。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <bayes_probit.sthlp>}