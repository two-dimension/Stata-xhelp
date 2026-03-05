{smcl}
{* *! version 1.0.11  24apr2019}{...}
{viewerdialog "bayes: regress" "dialog bayes_regress"}{...}
{vieweralsosee "[BAYES] bayes: regress" "mansection BAYES bayesregress"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[BAYES] bayes" "help bayes_zh"}{...}
{vieweralsosee "[R] regress" "help regress_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[BAYES] Bayesian commands" "help bayesian_commands_zh"}{...}
{vieweralsosee "[BAYES] Bayesian estimation" "help bayesian_estimation_zh"}{...}
{vieweralsosee "[BAYES] Bayesian postestimation" "help bayesian_postestimation_zh"}{...}
{vieweralsosee "[BAYES] Glossary" "help bayes_glossary_zh"}{...}
{viewerjumpto "Syntax" "bayes_regress_zh##syntax"}{...}
{viewerjumpto "Menu" "bayes_regress_zh##menu"}{...}
{viewerjumpto "Description" "bayes_regress_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "bayes_regress_zh##linkspdf"}{...}
{viewerjumpto "Examples" "bayes_regress_zh##examples"}{...}
{viewerjumpto "Video examples" "bayes_regress_zh##video"}{...}
{viewerjumpto "Stored results" "bayes_regress_zh##results"}
{help bayes_regress:English Version}
{hline}{...}
{p2colset 1 27 29 2}{...}
{p2col:{bf:[BAYES] bayes: regress} {hline 2}}贝叶斯线性回归{p_end}
{p2col:}({mansection BAYES bayesregress:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 15 2}
{cmd:bayes} [{cmd:,} {it:bayesopts}] {cmd::} {opt reg:ress}
{depvar} [{indepvars}]
{ifin}
[{it:{help bayes_regress##weight:权重}}]
[{cmd:,} {it:选项}]

{synoptset 20 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:模型}
{synopt :{opt nocons:tant}}抑制常数项{p_end}

{syntab:报告}
{synopt :{opth ef:orm(strings:string)}}报告指数化系数并标记为 {it:string}{p_end}
{synopt :{it:{help regress##display_options:显示选项}}}控制
包含帮助短描述-displayoptbayes

{synopt :{opt l:evel(#)}}设置可信水平；默认值为 {cmd:level(95)}{p_end}
{synoptline}
包含帮助 fvvarlist
{p 4 6 2}
{it:depvar} 和 {it:indepvars} 可以包含时间序列运算符；参见 {help tsvarlist_zh}.{p_end}
{marker weight}{...}
{p 4 6 2}
{cmd:fweight} 被允许；参见 {help weight_zh}.{p_end}
{p 4 6 2}
{cmd:bayes:} {cmd:regress,} {cmd:level()} 等同于 
{cmd:bayes,} {cmd:clevel():} {cmd:regress}.{p_end}
{p 4 6 2}有关 {it:选项} 的详细描述，请参见
{help regress##options:{it:选项}} 在 {manhelp regress R}.{p_end}

{marker bayesopts}{...}
{synoptset 30 tabbed}{...}
{synopthdr:bayesopts}
{synoptline}
{marker options_priors}{...}
{syntab:{help bayes##priors_options:先验}}
{p2coldent:* {opt gibbs}}指定 Gibbs 采样；仅在回归系数的正态先验和方差的逆伽马先验下可用{p_end}
{p2coldent:* {opt normalpr:ior(#)}}指定回归系数默认正态先验的标准差；默认值为 {cmd:normalprior(100)}{p_end}
{p2coldent:* {opt igammapr:ior(# #)}}指定默认逆伽马先验的形状和规模；默认值为 {cmd:igammaprior(0.01 0.01)}{p_end}
包含帮助 bayesecmd_opts
{p2colreset}{...}
{p 4 6 2}模型参数是回归系数
{cmd:{c -(}}{it:depvar}{cmd::}{it:indepvars}{cmd:{c )-}} 和方差
{cmd:{c -(}sigma2{c )-}}。使用 {cmd:dryrun} 选项查看模型参数定义。
{p_end}
{p 4 6 2}有关 {it:bayesopts} 的详细描述，请参见
{help bayes##options:{it:选项}} 在 {manhelp bayes BAYES}.{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 线性模型及相关 > 贝叶斯回归 > 线性回归}


{marker description}{...}
{title:描述}

{pstd}
{cmd:bayes: regress} 适用于连续结果的贝叶斯线性回归；
有关详细信息，请参见 {manhelp bayes BAYES} 和 {manhelp regress R}。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection BAYES bayesregressQuickstart:快速入门}

        {mansection BAYES bayesregressRemarksandexamples:备注和示例}

        {mansection BAYES bayesregressMethodsandformulas:方法和公式}

{pstd}
上述部分不包括在此帮助文件中。


{marker examples}{...}
{title:示例}

    {hline}
{pstd}
设置{p_end}
{phang2}{cmd:. sysuse auto}

{pstd}
使用默认先验拟合贝叶斯回归{p_end}
{phang2}{cmd:. bayes: regress price length i.foreign}

{pstd}
与上述相同，但将烧入期从默认的 2,500 增加到 5,000{p_end}
{phang2}{cmd:. bayes, burnin(5000): regress price length i.foreign}

{pstd}
与上述相同，但使用回归系数默认正态先验的标准差为 10{p_end}
{phang2}{cmd:. bayes, normalprior(10) burnin(5000): regress}
          {cmd:price length i.foreign}

{pstd}
与上述相同，但还指定随机数种子以实现可重现性{p_end}
{phang2}{cmd:. bayes, normalprior(10) burnin(5000) rseed(12345): regress}
          {cmd:price length i.foreign}

{pstd}
指定 Zellner 的 g-先验，具有 50 个自由度  
并将 {cmd:{sigma2}} 作为方差参数的误差
项用于 3 个回归系数{p_end}
{phang2}{cmd:. bayes, prior({price:length i.foreign _cons}, zellnersg0(3, 50, {sigma2}))}
           {cmd:burnin(5000): regress price length i.foreign}

{pstd}
与上述相同，但使用简写符号引用所有回归
系数{p_end}
{phang2}{cmd:. bayes, prior({price:}, zellnersg0(3, 50, {sigma2}))}
           {cmd:burnin(5000): regress price length i.foreign}

{pstd}
使用 Gibbs 采样而不是默认的自适应 Metropolis-Hastings 
采样{p_end}
{phang2}{cmd:. bayes, gibbs: regress price length i.foreign}

{pstd}
在重新播放时保存 MCMC 结果{p_end}
{phang2}{cmd:. bayes, saving(mymcmc)}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. sysuse auto}

{pstd}使用三个链拟合贝叶斯回归{p_end}
{phang2}{cmd:. bayes, nchains(3) rseed(16) gibbs:}
         {cmd:regress price length i.foreign}

    {hline}


{marker video}{...}
{title:视频示例}

{phang}
{browse "https://www.youtube.com/watch?v=L7GfMLl7EqM":使用 bayes 前缀的贝叶斯线性回归}

{phang}
{browse "https://www.youtube.com/watch?v=76K1Cznzz0Q":使用 bayes 前缀的贝叶斯线性回归：如何指定自定义先验}

{phang}
{browse "https://www.youtube.com/watch?v=W9EUr1rtH-k":使用 bayes 前缀的贝叶斯线性回归：检查 MCMC 链的收敛性}

{phang}
{browse "https://www.youtube.com/watch?v=KStrHq2Nw6w":使用 bayes 前缀的贝叶斯线性回归：如何自定义 MCMC 链}


{marker results}{...}
{title:存储结果}

{pstd}
请参阅 {help bayes##results:{it:存储结果}} 在 {manhelp bayes BAYES}。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <bayes_regress.sthlp>}