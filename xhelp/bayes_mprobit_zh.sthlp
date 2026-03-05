{smcl}
{* *! version 1.0.8  12dec2018}{...}
{viewerdialog "bayes: mprobit" "dialog bayes_mprobit"}{...}
{vieweralsosee "[BAYES] bayes: mprobit" "mansection BAYES bayesmprobit"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[BAYES] bayes" "help bayes_zh"}{...}
{vieweralsosee "[R] mprobit" "help mprobit_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[BAYES] Bayesian commands" "help bayesian_commands_zh"}{...}
{vieweralsosee "[BAYES] Bayesian estimation" "help bayesian_estimation_zh"}{...}
{vieweralsosee "[BAYES] Bayesian postestimation" "help bayesian_postestimation_zh"}{...}
{vieweralsosee "[BAYES] Glossary" "help bayes_glossary_zh"}{...}
{viewerjumpto "Syntax" "bayes_mprobit_zh##syntax"}{...}
{viewerjumpto "Menu" "bayes_mprobit_zh##menu"}{...}
{viewerjumpto "Description" "bayes_mprobit_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "bayes_mprobit_zh##linkspdf"}{...}
{viewerjumpto "Examples" "bayes_mprobit_zh##examples"}{...}
{viewerjumpto "Stored results" "bayes_mprobit_zh##results"}
{help bayes_mprobit:English Version}
{hline}{...}
{p2colset 1 27 29 2}{...}
{p2col:{bf:[BAYES] bayes: mprobit} {hline 2}}贝叶斯多项式概率回归{p_end}
{p2col:}({mansection BAYES bayesmprobit:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 15 2}
{cmd:bayes} [{cmd:,} {it:bayesopts}] {cmd::} {opt mprobit}
{depvar} [{indepvars}]
{ifin}
[{it:{help bayes_mprobit##weight:权重}}]
[{cmd:,} {it:选项}]

{synoptset 20 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:模型}
{synopt :{opt nocons:不常数项}}抑制常数项{p_end}
{synopt :{opt base:outcome(#)}}将 {depvar} 的值指定为基础结果{p_end}
{synopt :{opt probit:param}}使用 probit 方差参数化{p_end}

{syntab:报告}
{synopt :{it:{help mprobit##display_options:显示选项}}}控制
包含帮助简要描述显示选项

{synopt :{opt l:evel(#)}}设置可信度水平；默认值为 {cmd:level(95)}{p_end}
{synoptline}
包含帮助 fvvarlist
{marker weight}{...}
{p 4 6 2}
允许使用 {cmd:fweight}；请参见 {help weight_zh}.{p_end}
{p 4 6 2}
{cmd:bayes:} {cmd:mprobit,} {cmd:level()} 等价于 
{cmd:bayes,} {cmd:clevel():} {cmd:mprobit}.{p_end}
{p 4 6 2}有关 {it:选项} 的详细描述，请参见
{help mprobit##options:{it:选项}} 在 {manhelp mprobit R} 中.{p_end}

{marker bayesopts}{...}
{synoptset 30 tabbed}{...}
{synopthdr:bayesopts}
{synoptline}
{marker options_priors}{...}
{syntab:{help bayes##priors_options:先验}}
{p2coldent:* {opt normalpr:ior(#)}}指定回归系数默认正态先验的标准差；默认值为 {cmd:normalprior(100)}{p_end}
包含帮助 bayesecmd_opts
{p2colreset}{...}
{p 4 6 2}模型参数为回归系数
{cmd:{c -(}}{it:outcome1}{cmd::}{it:indepvars}{cmd:{c )-}},
{cmd:{c -(}}{it:outcome2}{cmd::}{it:indepvars}{cmd:{c )-}}，等等，
其中 {it:outcome#} 是因变量的值或因变量的值标签（如果存在）。
使用 {cmd:dryrun} 选项可以在估计前查看模型参数的定义.{p_end}
{p 4 6 2}有关 {it:bayesopts} 的详细描述，请参见
{help bayes##options:{it:选项}} 在 {manhelp bayes BAYES} 中.{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 分类结果 > 贝叶斯多项式概率回归}


{marker description}{...}
{title:描述}

{pstd}
{cmd:bayes: mprobit} 适合一个贝叶斯多项式概率回归模型到分类结果；
有关详细信息，请参见 {manhelp bayes BAYES} 和 {manhelp mprobit R:mprobit}。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection BAYES bayesmprobitQuickstart:快速入门}

        {mansection BAYES bayesmprobitRemarksandexamples:备注和示例}

        {mansection BAYES bayesmprobitMethodsandformulas:方法和公式}

{pstd}
上述部分不包含在此帮助文件中。


{marker examples}{...}
{title:示例}

{pstd}
设置{p_end}
{phang2}{cmd:. webuse sysdsn1}

{pstd}
使用默认先验和 2,500 的 MCMC 样本量（而不是默认的 10,000）适合贝叶斯多项式概率回归；在模拟期间显示点{p_end}
{phang2}{cmd:. bayes, dots mcmcsize(2500): mprobit insure age male nonwhite}

{pstd}
与上述相同，但使用回归系数默认正态先验标准差为 10，并指定随机数种子以确保可重复性{p_end}
{phang2}{cmd:. bayes, normalprior(10) mcmcsize(2500) rseed(12345) dots:}
          {cmd:mprobit insure age male nonwhite}

{pstd}
保存 MCMC 结果以供重放{p_end}
{phang2}{cmd:. bayes, saving(mymcmc)}


{marker results}{...}
{title:存储结果}

{pstd}
有关 {help bayes##results:{it:存储结果}} 的信息，请参见 {manhelp bayes BAYES}。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <bayes_mprobit.sthlp>}