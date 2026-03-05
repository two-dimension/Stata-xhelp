{smcl}
{* *! version 1.0.8  12dec2018}{...}
{viewerdialog "bayes: tobit" "dialog bayes_tobit"}{...}
{vieweralsosee "[BAYES] bayes: tobit" "mansection BAYES bayestobit"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[BAYES] bayes" "help bayes_zh"}{...}
{vieweralsosee "[R] tobit" "help tobit_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[BAYES] Bayesian commands" "help bayesian_commands_zh"}{...}
{vieweralsosee "[BAYES] Bayesian estimation" "help bayesian_estimation_zh"}{...}
{vieweralsosee "[BAYES] Bayesian postestimation" "help bayesian_postestimation_zh"}{...}
{vieweralsosee "[BAYES] Glossary" "help bayes_glossary_zh"}{...}
{viewerjumpto "Syntax" "bayes_tobit_zh##syntax"}{...}
{viewerjumpto "Menu" "bayes_tobit_zh##menu"}{...}
{viewerjumpto "Description" "bayes_tobit_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "bayes_tobit_zh##linkspdf"}{...}
{viewerjumpto "Examples" "bayes_tobit_zh##examples"}{...}
{viewerjumpto "Stored results" "bayes_tobit_zh##results"}
{help bayes_tobit:English Version}
{hline}{...}
{p2colset 1 25 27 2}{...}
{p2col:{bf:[BAYES] bayes: tobit} {hline 2}}贝叶斯 Tobit 回归{p_end}
{p2col:}({mansection BAYES bayestobit:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 15 2}
{cmd:bayes} [{cmd:,} {it:bayesopts}] {cmd::} {opt tob:it}
{depvar} [{indepvars}]
{ifin}
[{it:{help bayes_tobit##weight:权重}}]
[{cmd:,} {it:选项}]

{synoptset 20 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:模型}
{synopt :{opt nocons:不常数}}抑制常数项{p_end}
{synopt :{opt ll}[{cmd:(}{varname}|{it:#}{cmd:)}]}左截断限制{p_end}
{synopt :{opt ul}[{cmd:(}{varname}|{it:#}{cmd:)}]}右截断限制{p_end}
{synopt :{opth off:set(varname)}}将 {it:varname} 包含在模型中，并将系数约束为 1{p_end}

{syntab:报告}
{synopt :{it:{help tobit##display_options:显示选项}}}控制
INCLUDE help shortdes-displayoptbayes

{synopt :{opt l:evel(#)}}设置可信水平；默认值为 {cmd:level(95)}{p_end}
{synoptline}
INCLUDE help fvvarlist
{p 4 6 2}
{it:depvar} 和 {it:indepvars} 可以包含时间序列运算符；请参见 {help tsvarlist_zh}.{p_end}
{marker weight}{...}
{p 4 6 2}
{cmd:fweight} 是允许的；请参见 {help weight_zh}.{p_end}
{p 4 6 2}
{cmd:bayes:} {cmd:tobit,} {cmd:level()} 等同于 
{cmd:bayes,} {cmd:clevel():} {cmd:tobit}.{p_end}
{p 4 6 2}有关 {it:选项} 的详细描述，请参见
{help tobit##options:{it:选项}}中的 {manhelp tobit R}.{p_end}

{marker bayesopts}{...}
{synoptset 30 tabbed}{...}
{synopthdr:bayesopts}
{synoptline}
{marker options_priors}{...}
{syntab:{help bayes##priors_options:先验}}
{p2coldent:* {opt normalpr:ior(#)}}指定回归系数的默认正态先验的标准差；默认值为 {cmd:normalprior(100)}{p_end}
{p2coldent:* {opt igammapr:ior(# #)}}指定方差的默认逆伽马先验的形状和规模；默认值为 {cmd:igammaprior(0.01 0.01)}{p_end}
INCLUDE help bayesecmd_opts
{p2colreset}{...}
{p 4 6 2}模型参数是回归系数
{cmd:{c -(}}{it:depvar}{cmd::}{it:indepvars}{cmd:{c )-}} 和方差
{cmd:{c -(}sigma2{c )-}}。使用 {cmd:dryrun} 选项在估计之前查看模型参数的定义。{p_end}
{p 4 6 2}有关 {it:bayesopts} 的详细描述，请参见
{help bayes##options:{it:选项}}中的 {manhelp bayes BAYES}.{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 线性模型及相关 > 贝叶斯回归 > Tobit 回归}


{marker description}{...}
{title:说明}

{pstd}
{cmd:bayes: tobit} 拟合贝叶斯 Tobit 回归，以应对被截断的连续结果；
有关详细信息，请参见 {manhelp bayes BAYES} 和 {manhelp tobit R:tobit}。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection BAYES bayestobitQuickstart:快速入门}

        {mansection BAYES bayestobitRemarksandexamples:备注和示例}

        {mansection BAYES bayestobitMethodsandformulas:方法和公式}

{pstd}
上述部分未包含在此帮助文件中。


{marker examples}{...}
{title:示例}

{pstd}
设置{p_end}
{phang2}{cmd:. sysuse auto}{p_end}
{phang2}{cmd:. generate wgt = weight/1000}

{pstd}
拟合贝叶斯 Tobit 回归，指定右截断限制为 24{p_end}
{phang2}{cmd:. bayes: tobit mpg wgt, ul(24)}

{pstd}
将烧入期增加到 5000，从默认的 2500 增加，MCMC 样本大小增加到 15000，从默认的 10000{p_end}
{phang2}{cmd:. bayes, burnin(5000) mcmcsize(15000): tobit mpg wgt, ul(24)}

{pstd}
将回归系数的默认正态先验的标准差设置为 10，而不是 100{p_end}
{phang2}{cmd:. bayes, normalprior(10): tobit mpg wgt, ul(24)}

{pstd}
与上面相同，但还为可重复性指定随机数种子{p_end}
{phang2}{cmd:. bayes, normalprior(10) rseed(12345): tobit mpg wgt, ul(24)}

{pstd}
拟合贝叶斯 Tobit 回归，使用所有回归系数的均匀先验{p_end}
{phang2}{cmd:. bayes, prior({mpg:wgt _cons}, uniform(-100,100)): tobit mpg wgt, ul(24)}

{pstd}
与上面相同，但使用快捷方式表示所有回归系数{p_end}
{phang2}{cmd:. bayes, prior({mpg:}, uniform(-100,100)): tobit mpg wgt, ul(24)}

{pstd}
为截距和斜率使用不同的均匀先验{p_end}
{phang2}{cmd:. bayes, prior({mpg:wgt}, uniform(-10,10)) prior({mpg:_cons}, uniform(-100,100)): tobit mpg wgt, ul(24)}

{pstd}
保存 MCMC 结果以备重放{p_end}
{phang2}{cmd:. bayes, saving(mymcmc)}


{marker results}{...}
{title:存储结果}

{pstd}
有关 {help bayes##results:{it:存储结果}}的内容，请参见 {manhelp bayes BAYES}。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <bayes_tobit.sthlp>}