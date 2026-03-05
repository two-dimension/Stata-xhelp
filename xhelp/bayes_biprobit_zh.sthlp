{smcl}
{* *! version 1.0.9  12dec2018}{...}
{viewerdialog "bayes: biprobit" "dialog bayes_biprobit_notsu"}{...}
{viewerdialog "bayes: biprobit (seemingly unrelated)" "dialog bayes_biprobit_su"}{...}
{vieweralsosee "[BAYES] bayes: biprobit" "mansection BAYES bayesbiprobit"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[BAYES] bayes" "help bayes_zh"}{...}
{vieweralsosee "[R] biprobit" "help biprobit_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[BAYES] Bayesian commands" "help bayesian_commands_zh"}{...}
{vieweralsosee "[BAYES] Bayesian estimation" "help bayesian_estimation_zh"}{...}
{vieweralsosee "[BAYES] Bayesian postestimation" "help bayesian_postestimation_zh"}{...}
{vieweralsosee "[BAYES] Glossary" "help bayes_glossary_zh"}{...}
{viewerjumpto "Syntax" "bayes_biprobit_zh##syntax"}{...}
{viewerjumpto "Menu" "bayes_biprobit_zh##menu"}{...}
{viewerjumpto "Description" "bayes_biprobit_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "bayes_biprobit_zh##linkspdf"}{...}
{viewerjumpto "Examples" "bayes_biprobit_zh##examples"}{...}
{viewerjumpto "Stored results" "bayes_biprobit_zh##results"}
{help bayes_biprobit:English Version}
{hline}{...}
{p2colset 1 28 30 2}{...}
{p2col:{bf:[BAYES] bayes: biprobit} {hline 2}}贝叶斯双变量 probit 回归{p_end}
{p2col:}({mansection BAYES bayesbiprobit:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{phang}贝叶斯双变量 probit 回归

{p 8 15 2}
{cmd:bayes} [{cmd:,} {it:bayesopts}] {cmd::} {opt biprobit}
{it:{help depvar:depvar1}} {it:{help depvar:depvar2}}
[{indepvars}]
{ifin}
[{it:{help bayes_biprobit##weight:weight}}]
[{cmd:,} {it:options}]


{phang}贝叶斯表面无关双变量 probit 回归

{p 8 15 2}
{cmd:bayes} [{cmd:,} {it:bayesopts}] {cmd::} {opt biprobit}
{it:equation1} {it:equation2}
{ifin}
[{it:{help biprobit##weight:weight}}]
[{cmd:,} {it:options}]


{pstd}其中 {it:equation1} 和 {it:equation2} 的规格为

{p 8 12 2}{cmd:(} [{it:eqname}{cmd:: }] {depvar} [{cmd:=}] [{indepvars}]
		[{cmd:,} {opt nocons:tant}
                {opth off:set(varname)} ] {cmd:)}


{synoptset 20 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:模型}
{synopt :{opt nocons:tant}}抑制常数项{p_end}
{synopt :{opth offset1(varname)}}第一方程的偏移变量{p_end}
{synopt :{opth offset2(varname)}}第二方程的偏移变量{p_end}

{syntab:报告}
{synopt :{it:{help biprobit##display_options:display_options}}}控制
包含帮助短描述显示选项

{synopt :{opt l:evel(#)}}设置可信水平；默认值为 {cmd:level(95)}{p_end}
{synoptline}
包含帮助 fvvarlist
{p 4 6 2}
{it:depvar1}, {it:depvar2}, {it:depvar} 和 {it:indepvars} 可以包含
时间序列运算符；见 {help tsvarlist_zh}.{p_end}
{marker weight}{...}
{p 4 6 2}
{cmd:fweight} 被允许；见 {help weight_zh}.{p_end}
{p 4 6 2}
{cmd:bayes:} {cmd:biprobit,} {cmd:level()} 相当于 
{cmd:bayes,} {cmd:clevel():} {cmd:biprobit}.{p_end}
{p 4 6 2}有关 {it:options} 的详细描述，见
{help biprobit##options:{it:选项}} 在 {manhelp biprobit R} 中。选项
{cmd:noconstant}, {cmd:offset1()} 和 {cmd:offset2()} 在表面无关双变量 probit 回归中不可用。{p_end}

{marker bayesopts}{...}
{synoptset 30 tabbed}{...}
{synopthdr:bayesopts}
{synoptline}
{marker options_priors}{...}
{syntab:{help bayes##priors_options:先验}}
{p2coldent:* {opt normalpr:ior(#)}}指定回归系数和 atanh 变换相关性的默认正态
先验的标准差；默认值为 {cmd:normalprior(100)}{p_end}
包含帮助 bayesecmd_opts
{p2colreset}{...}
{p 4 6 2}模型参数为回归系数
{cmd:{c -(}}{it:depvar1}{cmd::}{it:indepvars}{cmd:{c )-}} 和
{cmd:{c -(}}{it:depvar2}{cmd::}{it:indepvars}{cmd:{c )-}} 及
atanh 变换的相关 {cmd:{c -(}athrho{c )-}}。
使用 {cmd:dryrun} 选项查看在估计之前模型参数的定义。{p_end}
{p 4 6 2}有关 {it:bayesopts} 的详细描述，见
{help bayes##options:{it:选项}} 在 {manhelp bayes BAYES} 中。{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 二元结果 > 贝叶斯回归 > 双变量 probit 回归}

{phang}
{bf:统计 > 二元结果 > 贝叶斯回归 > 表面无关双变量 probit}


{marker description}{...}
{title:描述}

{pstd}
{cmd:bayes: biprobit} 为两个二元结果拟合贝叶斯双变量 probit 回归；
详细内容请参见 {manhelp bayes BAYES} 和 {manhelp biprobit R:biprobit}。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection BAYES bayesbiprobitQuickstart:快速入门}

        {mansection BAYES bayesbiprobitRemarksandexamples:备注和示例}

        {mansection BAYES bayesbiprobitMethodsandformulas:方法和公式}

{pstd}
上述部分不包括在本帮助文件中。


{marker examples}{...}
{title:示例：双变量 probit 回归}

{pstd}
设置{p_end}
{phang2}{cmd:. webuse school}

{pstd}
使用默认先验拟合贝叶斯双变量 probit 回归{p_end}
{phang2}{cmd:. bayes: biprobit private vote logptax loginc years}

{pstd}
通过逆变换模型参数 {cmd:{athrho}} 计算 rho 的后验摘要{p_end}
{phang2}{cmd:. bayesstats summary (rho:1-2/(exp(2*{athrho})+1))}

{pstd}
将烧入期从默认的 2,500 增加到 5,000，并将 MCMC 样本大小从默认的 10,000 减少到 5,000；在模拟期间显示点{p_end}
{phang2}{cmd:. bayes, burnin(5000) mcmcsize(5000) dots: biprobit private vote logptax loginc years}

{pstd}
与上面相同，但使用默认正态先验的标准差为 10 的回归系数，并指定随机数种子以便重现{p_end}
{phang2}{cmd:. bayes, burnin(5000) mcmcsize(5000) normalprior(10) rseed(12345) dots: biprobit private vote logptax loginc years}

{pstd}
使用所有回归系数的均匀先验拟合贝叶斯双变量 probit 回归，在 {cmd:private} 方程中{p_end}
{phang2}{cmd:. bayes, prior({private:logptax loginc years _cons}, uniform(-10,10)) dots: biprobit private vote logptax loginc years}

{pstd}
与上面相同，但使用快捷符号表示所有回归系数{p_end}
{phang2}{cmd:. bayes, prior({private:}, uniform(-10,10)) dots: biprobit private vote logptax loginc years}

{pstd}
对两个方程中的回归系数使用相同的均匀先验{p_end}
{phang2}{cmd:. bayes, prior({private:} {vote:}, uniform(-10,10)) dots: biprobit private vote logptax loginc years}

{pstd}
在重放时保存 MCMC 结果{p_end}
{phang2}{cmd:. bayes, saving(mymcmc)}


{title:示例：表面无关双变量 probit 回归}

{pstd}
设置{p_end}
{phang2}{cmd:. webuse school}

{pstd}
使用默认先验拟合贝叶斯表面无关双变量 probit 回归{p_end}
{phang2}{cmd:. bayes: biprobit (private = logptax loginc years) (vote = logptax years)}

{pstd}
与上面相同，但在方程 {cmd:private} 中使用 {cmd:uniform(-100,100)} 的回归系数先验和在方程 {cmd:vote} 中使用 {cmd:uniform(-10,10)} 的先验{p_end}
{phang2}{cmd:. bayes, prior({private:}, uniform(-100,100)) prior({vote:}, uniform(-10,10)): biprobit (private = logptax loginc years) (vote = logptax years)}

{pstd}
在重放时报告 90% 的最高后验密度 (HPD) 可信区间{p_end}
{phang2}{cmd:. bayes, clevel(90) hpd}


{marker results}{...}
{title:存储结果}

{pstd}
见 {help bayes##results:{it:存储结果}} 在 {manhelp bayes BAYES} 中。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <bayes_biprobit.sthlp>}