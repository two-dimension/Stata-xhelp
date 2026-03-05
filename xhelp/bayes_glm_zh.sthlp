{smcl}
{* *! version 1.0.8  12dec2018}{...}
{viewerdialog "bayes: glm" "dialog bayes_glm"}{...}
{vieweralsosee "[BAYES] bayes: glm" "mansection BAYES bayesglm"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[BAYES] bayes" "help bayes_zh"}{...}
{vieweralsosee "[R] glm" "help glm_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[BAYES] Bayesian commands" "help bayesian_commands_zh"}{...}
{vieweralsosee "[BAYES] Bayesian estimation" "help bayesian_estimation_zh"}{...}
{vieweralsosee "[BAYES] Bayesian postestimation" "help bayesian_postestimation_zh"}{...}
{vieweralsosee "[BAYES] Glossary" "help bayes_glossary_zh"}{...}
{viewerjumpto "语法" "bayes_glm_zh##syntax"}{...}
{viewerjumpto "菜单" "bayes_glm_zh##menu"}{...}
{viewerjumpto "描述" "bayes_glm_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "bayes_glm_zh##linkspdf"}{...}
{viewerjumpto "示例" "bayes_glm_zh##examples"}{...}
{viewerjumpto "存储结果" "bayes_glm_zh##results"}
{help bayes_glm:English Version}
{hline}{...}
{p2colset 1 23 25 2}{...}
{p2col:{bf:[BAYES] bayes: glm} {hline 2}}贝叶斯广义线性模型{p_end}
{p2col:}({mansection BAYES bayesglm:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 15 2}
{cmd:bayes} [{cmd:,} {it:bayesopts}] {cmd::} {opt glm}
{depvar} [{indepvars}]
{ifin}
[{it:{help bayes_glm##weight:权重}}]
[{cmd:,} {it:选项}]

{synoptset 20 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:模型}
{synopt :{opth f:amily(glm##familyname:familyname)}}{depvar}的分布;
    默认是 {cmd:family(gaussian)}{p_end}
{synopt :{opth l:ink(glm##linkname:linkname)}}链接函数; 默认是
    为指定的 {opt family()} 的典型链接{p_end}

{syntab :模型 2}
{synopt :{opt nocons:tant}}抑制常数项{p_end}
{synopt :{opth exp:osure(varname)}}在模型中包含 ln({it:varname})，系数限定为 1{p_end}
{synopt :{opth off:set(varname)}}在模型中包含 {it:varname}，系数限定为 1{p_end}
{synopt :{opt asis}}保留完美预测变量{p_end}
{synopt :{opth mu(varname)}}使用 {it:varname} 作为 {depvar} 的初步均值估计{p_end}
{synopt :{opth ini:t(varname)}}{opt mu(varname)}的同义词{p_end}

{syntab:报告}
{synopt :{opt ef:orm}}报告指数化系数{p_end}
{synopt :{it:{help glm##display_options:显示选项}}}控制
包含帮助简短描述 - 显示选项

{synopt :{opt l:evel(#)}}设置可信水平; 默认是 {cmd:level(95)}{p_end}
{synoptline}
包含帮助 fvvarlist
{p 4 6 2}
{it:depvar} 和 {it:indepvars} 可以包含
时间序列操作符; 见 {help tsvarlist_zh}.{p_end}
{marker weight}{...}
{p 4 6 2}
允许使用 {cmd:fweight}; 见 {help weight_zh}.{p_end}
{p 4 6 2}
{cmd:bayes:} {cmd:glm,} {cmd:level()} 相当于 
{cmd:bayes,} {cmd:clevel():} {cmd:glm}.{p_end}
{p 4 6 2}有关 {it:选项} 的详细描述，见
{help glm##options:{it:选项}} 在 {manhelp glm R}.{p_end}

{marker bayesopts}{...}
{synoptset 30 tabbed}{...}
{synopthdr:bayesopts}
{synoptline}
{marker options_priors}{...}
{syntab:{help bayes##priors_options:先验}}
{p2coldent:* {opt normalpr:ior(#)}}指定回归系数的默认正态先验的标准差; 默认是 {cmd:normalprior(100)}{p_end}
包含帮助 bayesecmd_opts
{p2colreset}{...}
{p 4 6 2}模型参数是回归系数
{cmd:{c -(}}{it:depvar}{cmd::}{it:indepvars}{cmd:{c )-}}。
使用 {cmd:dryrun} 选项查看模型参数的定义
在估计之前.{p_end}
{p 4 6 2}有关 {it:bayesopts} 的详细描述，见
{help bayes##options:{it:选项}} 在 {manhelp bayes BAYES}.{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 广义线性模型 > 贝叶斯广义线性模型 (GLM)}


{marker description}{...}
{title:描述}

{pstd}
{cmd:bayes: glm} 拟合贝叶斯广义线性模型，以适应不同类型的结果，如连续、二元、计数等；
见 {manhelp bayes BAYES} 和 {manhelp glm R:glm} 以获取详细信息。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection BAYES bayesglmQuickstart:快速入门}

        {mansection BAYES bayesglmRemarksandexamples:备注和示例}

        {mansection BAYES bayesglmMethodsandformulas:方法和公式}

{pstd}
上述部分未包含在此帮助文件中。


{marker examples}{...}
{title:示例}

{pstd}
设置{p_end}
{phang2}{cmd:. webuse beetle}

{pstd}
使用默认先验拟合具有二项分布的贝叶斯广义线性模型和
补充的对数对数链接{p_end}
{phang2}{cmd:. bayes: glm r i.beetle, family(binomial n) link(cloglog)}

{pstd}
重放结果并报告指数化系数{p_end}
{phang2}{cmd:. bayes, eform}

{pstd}
在重放时获取最高后验密度区间{p_end}
{phang2}{cmd:. bayes, hpd}

{pstd}
在估计时获取最高后验密度区间{p_end}
{phang2}{cmd:. bayes, hpd: glm r i.beetle, family(binomial n) link(cloglog)}

{pstd}
将烧入期从 2,500 加长到 5,000，并指定随机数种子以确保可重复性{p_end}
{phang2}{cmd:. bayes, burnin(5000) rseed(12345): glm r i.beetle, family(binomial n) link(cloglog)}

{pstd}
与上述相同，但使用默认正态先验回归系数的标准差为 10{p_end}
{phang2}{cmd:. bayes, normalprior(10) burnin(5000) rseed(12345):}
          {cmd:glm r i.beetle, family(binomial n) link(cloglog)}

{pstd}
对所有回归系数使用均匀先验{p_end}
{phang2}{cmd:. bayes, prior({r:i.beetle _cons}, uniform(-10,10)): glm r i.beetle, family(binomial n) link(cloglog)}

{pstd}
与上述相同，但使用快捷符号引用所有回归系数{p_end}
{phang2}{cmd:. bayes, prior({r:}, uniform(-10,10)): glm r i.beetle, family(binomial n) link(cloglog)}

{pstd}
在重放时保存 MCMC 结果{p_end}
{phang2}{cmd:. bayes, saving(mymcmc)}


{marker results}{...}
{title:存储结果}

{pstd}
见 {help bayes##results:{it:存储结果}} 在 {manhelp bayes BAYES}。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <bayes_glm.sthlp>}