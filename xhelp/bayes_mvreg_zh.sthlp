{smcl}
{* *! version 1.0.7  31oct2018}{...}
{viewerdialog "bayes: mvreg" "dialog bayes_mvreg"}{...}
{vieweralsosee "[BAYES] bayes: mvreg" "mansection BAYES bayesmvreg"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[BAYES] bayes" "help bayes_zh"}{...}
{vieweralsosee "[MV] mvreg" "help mvreg_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[BAYES] Bayesian commands" "help bayesian_commands_zh"}{...}
{vieweralsosee "[BAYES] Bayesian estimation" "help bayesian_estimation_zh"}{...}
{vieweralsosee "[BAYES] Bayesian postestimation" "help bayesian_postestimation_zh"}{...}
{vieweralsosee "[BAYES] Glossary" "help bayes_glossary_zh"}{...}
{viewerjumpto "Syntax" "bayes_mvreg_zh##syntax"}{...}
{viewerjumpto "Menu" "bayes_mvreg_zh##menu"}{...}
{viewerjumpto "Description" "bayes_mvreg_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "bayes_mvreg_zh##linkspdf"}{...}
{viewerjumpto "Examples" "bayes_mvreg_zh##examples"}{...}
{viewerjumpto "Stored results" "bayes_mvreg_zh##results"}
{help bayes_mvreg:English Version}
{hline}{...}
{p2colset 1 25 27 2}{...}
{p2col:{bf:[BAYES] bayes: mvreg} {hline 2}}贝叶斯多元回归{p_end}
{p2col:}({mansection BAYES bayesmvreg:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 15 2}
{cmd:bayes} [{cmd:,} {it:bayesopts}] {cmd::} {opt mvreg}
{it:{help varlist_zh:depvars}} {cmd:=} {indepvars}
{ifin}
[{it:{help bayes_mvreg##weight:weight}}]
[{cmd:,} {it:options}]

{synoptset 20 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:模型}
{synopt :{opt nocons:tant}}抑制常数项{p_end}

{syntab:报告}
{synopt :{it:{help mvreg##display_options:display_options}}}控制
INCLUDE help shortdes-displayoptbayes

{synopt :{opt l:evel(#)}}设置可信区间水平；默认为 {cmd:level(95)}{p_end}
{synoptline}
INCLUDE help fvvarlist
{marker weight}{...}
{p 4 6 2}
{cmd:fweight}被允许；见 {help weight_zh}.{p_end}
{p 4 6 2}
{cmd:bayes:} {cmd:mvreg,} {cmd:level()} 等同于 
{cmd:bayes,} {cmd:clevel():} {cmd:mvreg}.{p_end}
{p 4 6 2}有关 {it:options} 的详细描述，请参见
{help mvreg##options:{it:选项}} 在 {manhelp mvreg MV} 中.{p_end}

{marker bayesopts}{...}
{synoptset 30 tabbed}{...}
{synopthdr:bayesopts}
{synoptline}
{marker options_priors}{...}
{syntab:{help bayes##priors_options:先验}}
{p2coldent:* {opt gibbs}}指定吉布斯采样；仅在回归系数的正态先验和协方差的多元杰弗里斯先验下可用{p_end}
{p2coldent:* {opt normalpr:ior(#)}}指定默认正态先验的标准差；默认为 {cmd:normalprior(100)}{p_end}
INCLUDE help bayesecmd_opts
{p2colreset}{...}
{p 4 6 2}模型参数为回归系数
{cmd:{c -(}}{it:depvar1}{cmd::}{it:indepvars}{cmd:{c )-}},
{cmd:{c -(}}{it:depvar2}{cmd::}{it:indepvars}{cmd:{c )-}}, 依此类推，
以及协方差矩阵 {cmd:{c -(}Sigma,matrix{c )-}}。 使用 {cmd:dryrun}
选项以在估计之前查看模型参数的定义.{p_end}
{p 4 6 2}默认情况下，协方差矩阵使用维度为 {it:d} 的多元杰弗里斯先验 {opt jeffreys(d)}.{p_end}
{p 4 6 2}有关 {it:bayesopts} 的详细描述，请参见
{help bayes##options:{it:选项}} 在 {manhelp bayes BAYES} 中.{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 线性模型及相关 > 贝叶斯回归 > 多元回归}


{marker description}{...}
{title:描述}

{pstd}
{cmd:bayes: mvreg} 将贝叶斯多元回归拟合到
多个连续结果上；
有关详细信息，请参见 {manhelp bayes BAYES} 和 {manhelp mvreg MV}。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection BAYES bayesmvregQuickstart:快速入门}

        {mansection BAYES bayesmvregRemarksandexamples:备注和示例}

        {mansection BAYES bayesmvregMethodsandformulas:方法和公式}

{pstd}
上述部分不包括在此帮助文件中。


{marker examples}{...}
{title:示例}

{pstd}
设置{p_end}
{phang2}{cmd:. sysuse auto}

{pstd}
拟合 {cmd:headroom} 和 {cmd:turn} 关于 
{cmd:price} 和 {cmd:mpg} 的贝叶斯多元回归{p_end}
{phang2}{cmd:. bayes: mvreg headroom turn = price mpg}

{pstd}
使用吉布斯采样而非默认自适应的梅特罗斯-哈斯廷斯 
采样，并指定随机数种子以保证可重复性{p_end}
{phang2}{cmd:. bayes, gibbs rseed(12345): mvreg headroom turn = price mpg}

{pstd}
同上，但指定 90% 的最高后验密度 (HPD) 区间{p_end}
{phang2}{cmd:. bayes, gibbs rseed(12345) clevel(90) hpd: mvreg headroom turn = price mpg}

{pstd}
指定维度为 2 的逆威沙特先验，具有 30 个自由度，并为协方差矩阵使用
缩放矩阵 {cmd:S} 代替默认的杰弗里斯先验；将烧入期从默认的 2,500 增加到 5,000{p_end}
{phang2}{cmd:. matrix S = (0.8,0.5\0.5,10)}{p_end}
{phang2}{cmd:. bayes, prior({Sigma,matrix}, iwishart(2,30,S)) burnin(5000): mvreg headroom turn = price mpg}

{pstd}
保存 MCMC 结果以供重放{p_end}
{phang2}{cmd:. bayes, saving(mymcmc)}


{marker results}{...}
{title:存储结果}

{pstd}
有关 {help bayes##results:{it:存储结果}} 的详细信息，请参见 {manhelp bayes BAYES}。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <bayes_mvreg.sthlp>}