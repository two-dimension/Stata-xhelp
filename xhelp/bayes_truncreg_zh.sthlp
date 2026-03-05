{smcl}
{* *! version 1.0.8  12dec2018}{...}
{viewerdialog "bayes: truncreg" "dialog bayes_truncreg"}{...}
{vieweralsosee "[BAYES] bayes: truncreg" "mansection BAYES bayestruncreg"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[BAYES] bayes" "help bayes_zh"}{...}
{vieweralsosee "[R] truncreg" "help truncreg_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[BAYES] Bayesian commands" "help bayesian_commands_zh"}{...}
{vieweralsosee "[BAYES] Bayesian estimation" "help bayesian_estimation_zh"}{...}
{vieweralsosee "[BAYES] Bayesian postestimation" "help bayesian_postestimation_zh"}{...}
{vieweralsosee "[BAYES] Glossary" "help bayes_glossary_zh"}{...}
{viewerjumpto "Syntax" "bayes_truncreg_zh##syntax"}{...}
{viewerjumpto "Menu" "bayes_truncreg_zh##menu"}{...}
{viewerjumpto "Description" "bayes_truncreg_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "bayes_truncreg_zh##linkspdf"}{...}
{viewerjumpto "Examples" "bayes_truncreg_zh##examples"}{...}
{viewerjumpto "Stored results" "bayes_truncreg_zh##results"}
{help bayes_truncreg:English Version}
{hline}{...}
{p2colset 1 28 30 2}{...}
{p2col:{bf:[BAYES] bayes: truncreg} {hline 2}}贝叶斯截断回归{p_end}
{p2col:}({mansection BAYES bayestruncreg:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 15 2}
{cmd:bayes} [{cmd:,} {it:bayesopts}] {cmd::} {opt truncreg}
{depvar} [{indepvars}]
{ifin}
[{it:{help bayes_truncreg##weight:权重}}]
[{cmd:,} {it:选项}]

{synoptset 20 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:模型}
{synopt :{opt nocons:tant}}忽略常数项{p_end}
{synopt:{cmd:ll(}{varname}|{it:#}{cmd:)}}左截断变量或限值
{p_end}
{synopt:{cmd:ul(}{varname}|{it:#}{cmd:)}}右截断变量或限值
{p_end}
{synopt:{opth off:set(varname)}}将 {it:varname} 包含在模型中，且系数约束为 1{p_end}

{syntab:报告}
{synopt :{it:{help truncreg##display_options:显示选项}}}控制
包含帮助短描述显示选项

{synopt :{opt l:evel(#)}}设置置信水平；默认为 {cmd:level(95)}{p_end}
{synoptline}
包含 {help fvvarlist_zh}
{p 4 6 2}
{it:depvar} 和 {it:indepvars} 可以包含
时间序列运算符；见 {help tsvarlist_zh}.{p_end}
{marker weight}{...}
{p 4 6 2}
{cmd:fweight} 被允许；见 {help weight_zh}.{p_end}
{p 4 6 2}
{cmd:bayes:} {cmd:truncreg,} {cmd:level()} 相当于 
{cmd:bayes,} {cmd:clevel():} {cmd:truncreg}.{p_end}
{p 4 6 2}有关 {it:选项} 的详细描述，请参见
{help truncreg##options:{it:选项}} 在 {manhelp truncreg R} 中。{p_end}

{marker bayesopts}{...}
{synoptset 30 tabbed}{...}
{synopthdr:bayesopts}
{synoptline}
{marker options_priors}{...}
{syntab:{help bayes##priors_options:先验}}
{p2coldent:* {opt normalpr:ior(#)}}指定回归系数默认正态先验的标准差；默认为 {cmd:normalprior(100)}{p_end}
{p2coldent:* {opt igammapr:ior(# #)}}指定方差的默认反伽马先验的形状和尺度；默认为 {cmd:igammaprior(0.01 0.01)}{p_end}
包含帮助 bayesecmd_opts
{p2colreset}{...}
{p 4 6 2}模型参数是回归系数
{cmd:{c -(}}{it:depvar}{cmd::}{it:indepvars}{cmd:{c )-}} 和方差
{cmd:{c -(}sigma2{c )-}}。使用 {cmd:dryrun} 选项可以在估计之前查看模型参数的定义。{p_end}
{p 4 6 2}有关 {it:bayesopts} 的详细描述，请参见
{help bayes##options:{it:选项}} 在 {manhelp bayes BAYES} 中。{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 线性模型和相关 > 贝叶斯回归 > 截断回归}


{marker description}{...}
{title:描述}

{pstd}
{cmd:bayes: truncreg} 适合于连续结果的贝叶斯截断线性回归；
有关详细信息，请参见 {manhelp bayes BAYES} 和 {manhelp truncreg R:truncreg}。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection BAYES bayestruncregQuickstart:快速开始}

        {mansection BAYES bayestruncregRemarksandexamples:备注和示例}

        {mansection BAYES bayestruncregMethodsandformulas:方法和公式}

{pstd}
上述部分未包含在此帮助文件中。


{marker examples}{...}
{title:示例}

{pstd}
设置{p_end}
{phang2}{cmd:. webuse laborsub}

{pstd}
使用默认先验进行从下方 0 的截断拟合贝叶斯截断回归{p_end}
{phang2}{cmd:. bayes: truncreg whrs kl6 k618 wa we, ll(0)}

{pstd}
使用 10,000 的标准差代替默认正态先验的 100，并将烧入期从默认的 2,500 增加到 5,000{p_end}
{phang2}{cmd:. bayes, normalprior(10000) burnin(5000): truncreg whrs kl6 k618 wa we, ll(0)}

{pstd}
与上述相同，但还指定随机数种子以确保可重复性{p_end}
{phang2}{cmd:. bayes, normalprior(10) burnin(5000) rseed(12345): truncreg whrs kl6 k618 wa we, ll(0)}

{pstd}
将误差方差的平方根 {cmd:{sigma2}} 显示为误差标准差{p_end}
{phang2}{cmd:. bayesstats summary (sigma: sqrt({sigma2}))}

{pstd}
在重放时保存 MCMC 结果{p_end}
{phang2}{cmd:. bayes, saving(mymcmc)}


{marker results}{...}
{title:存储结果}

{pstd}
见 {help bayes##results:{it:存储结果}} 在 {manhelp bayes BAYES} 中。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <bayes_truncreg.sthlp>}