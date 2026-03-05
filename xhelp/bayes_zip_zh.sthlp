{smcl}
{* *! version 1.0.9  12dec2018}{...}
{viewerdialog "bayes: zip" "dialog bayes_zip"}{...}
{vieweralsosee "[BAYES] bayes: zip" "mansection BAYES bayeszip"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[BAYES] bayes" "help bayes_zh"}{...}
{vieweralsosee "[R] zip" "help zip_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[BAYES] Bayesian commands" "help bayesian_commands_zh"}{...}
{vieweralsosee "[BAYES] Bayesian estimation" "help bayesian_estimation_zh"}{...}
{vieweralsosee "[BAYES] Bayesian postestimation" "help bayesian_postestimation_zh"}{...}
{vieweralsosee "[BAYES] Glossary" "help bayes_glossary_zh"}{...}
{viewerjumpto "Syntax" "bayes_zip_zh##syntax"}{...}
{viewerjumpto "Menu" "bayes_zip_zh##menu"}{...}
{viewerjumpto "Description" "bayes_zip_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "bayes_zip_zh##linkspdf"}{...}
{viewerjumpto "Examples" "bayes_zip_zh##examples"}{...}
{viewerjumpto "Stored results" "bayes_zip_zh##results"}
{help bayes_zip:English Version}
{hline}{...}
{p2colset 1 23 25 2}{...}
{p2col:{bf:[BAYES] bayes: zip} {hline 2}}贝叶斯零膨胀泊松回归{p_end}
{p2col:}({mansection BAYES bayeszip:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 15 2}
{cmd:bayes} [{cmd:,} {it:bayesopts}] {cmd::} {opt zip}
{depvar} [{indepvars}]
{ifin}
[{it:{help bayes_zip##weight:权重}}]{cmd:,}
{opt inf:late}{cmd:(}{varlist}[{cmd:,} {opth off:set(varname)}]|{cmd:_cons)}
[{it:选项}]

{synoptset 20 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:模型}
{p2coldent :* {opt inf:late()}}方程用于确定计数是否为零{p_end}
{synopt :{opt nocons:tant}}抑制常数项{p_end}
{synopt :{opth exp:osure(varname:varname_e)}}在模型中包括 {opt ln(varname_e)}，其系数限制为1{p_end}
{synopt :{opth off:set(varname:varname_o)}}在模型中包括 {it:varname_o}，其系数限制为1{p_end}
{synopt :{opt probit}}使用probit模型描述多余的零；默认是logit{p_end}

{syntab:报告}
{synopt :{opt irr}}报告发生率比{p_end}
{synopt :{it:{help zip##display_options:显示选项}}}控制
包含帮助短描述-displayoptbayes

{synopt :{opt l:evel(#)}}设置置信水平；默认值为 {cmd:level(95)}{p_end}
{synoptline}
{p 4 6 2}
* {opt inf:late}{cmd:(}{it:varlist}[{cmd:,} {opt off:set(varname)}]|{cmd:_cons)}
是必需的。{p_end}
包含帮助 fvvarlist2
{marker weight}{...}
{p 4 6 2}
{cmd:fweight}是允许的；参见 {help weight_zh}.{p_end}
{p 4 6 2}
{cmd:bayes:} {cmd:zip,} {cmd:level()} 等同于
{cmd:bayes,} {cmd:clevel():} {cmd:zip}.{p_end}
{p 4 6 2}有关 {it:选项} 的详细描述，请参见
{help zip##options:{it:选项}} 在 {manhelp zip R}.{p_end}

{marker bayesopts}{...}
{synoptset 30 tabbed}{...}
{synopthdr:bayesopts}
{synoptline}
{marker options_priors}{...}
{syntab:{help bayes##priors_options:先验}}
{p2coldent:* {opt normalpr:ior(#)}}指定回归系数的默认正态先验的标准差；默认值为 {cmd:normalprior(100)}{p_end}
{* 包含帮助 bayesecmd_opts*}
包含帮助 bayesmh_prioropts

{marker options_simulation}{...}
  {syntab:{help bayes##simulation_options:仿真}}
包含帮助 bayesmh_simopts

{marker options_blocking}{...}
  {syntab:{help bayes##blocking_options:阻塞}}
{p2coldent:* {opt blocksize(#)}}最大区块大小；默认值为 {cmd:blocksize(50)}{p_end}
包含帮助 bayesmh_blockopts
  {p2coldent:* {opt noblock:ing}}默认情况下不阻塞参数{p_end}

{marker options_initialization}{...}
  {syntab:{help bayes##initialization_options:初始化}}
包含帮助 bayesmh_initopts
  {p2coldent:* {opt noi:sily}}在初始化期间显示估计命令的输出{p_end}

{marker options_adaptation}{...}
  {syntab:{help bayes##adaptation_options:适应}}
包含帮助 bayesmh_adaptopts

{marker options_reporting}{...}
  {syntab:{help bayes##reporting_options:报告}}
包含帮助 bayes_clevel_hpd_short
{p2coldent:* {opt ir:r}}报告发生率比{p_end}
包含帮助 bayesecmd_reportopts_special

{marker options_advanced}{...}
  {syntab:{help bayes##advanced_options:高级}}
包含帮助 bayesmh_advancedopts
{synoptline}
{p 4 6 2}* 带星号的选项是特定于 {cmd:bayes} 前缀的；其他选项在 {cmd:bayes} 和 {help bayesmh_zh} 之间是共同的。{p_end}
{p 4 6 2}选项 {cmd:prior()} 和 {cmd:block()} 可以重复。{p_end}
{p 4 6 2}{helpb bayesmh##priorspec:{it:priorspec}} 和
{helpb bayesmh##paramref:{it:paramref}} 在 {manhelp bayesmh BAYES} 中定义。
{p_end}
{p 4 6 2}{it:paramref} 可以包含因子变量；参见 {help fvvarlist_zh}。
{p_end}
{p 4 6 2}有关估计后的可用特性，请参见 {manhelp bayesian_postestimation BAYES:贝叶斯后估计}。{p_end}
{p2colreset}{...}
{p 4 6 2}模型参数是回归系数
{cmd:{c -(}}{it:depvar}{cmd::}{it:indepvars}{cmd:{c )-}}
对于主回归和
{cmd:{c -(}inflate:}{it:varlist}{cmd:{c )-}}
用于膨胀方程。
使用 {cmd:dryrun} 选项查看模型参数的定义
在估计之前。{p_end}
{p 4 6 2}有关 {it:bayesopts} 的详细描述，请参见
{help bayes##options:{it:选项}} 在 {manhelp bayes BAYES} 中。{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 计数结果 > 贝叶斯回归 > 零膨胀泊松回归}


{marker description}{...}
{title:描述}

{pstd}
{cmd:bayes: zip} 为具有高比例零值的非负计数结果拟合贝叶斯零膨胀泊松回归；详情请参见 {manhelp bayes BAYES} 和 {manhelp zip R:zip}。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection BAYES bayeszipQuickstart:快速入门}

        {mansection BAYES bayeszipRemarksandexamples:备注和示例}

        {mansection BAYES bayeszipMethodsandformulas:方法与公式}

{pstd}
上述部分不包含在此帮助文件中。


{marker examples}{...}
{title:示例}

{pstd}
设置{p_end}
{phang2}{cmd:. webuse fish}

{pstd}
使用默认先验拟合贝叶斯零膨胀泊松回归，指定每100次迭代显示一个点{p_end}
{phang2}{cmd:. bayes, dots(100): zip count persons livebait, inflate(child)}

{pstd}
重新播放结果并报告发生率比{p_end}
{phang2}{cmd:. bayes, irr}

{pstd}
绘制诊断图以检查 {cmd:{inflate:_cons}}{p_end}
{phang2}{cmd:. bayesgraph diagnostic {inflate:_cons}}

{pstd}
将回归系数的默认正态先验的标准差设置为10，增加将燃烧期从默认的2500提高到5000，并指定随机数种子以确保可重复性{p_end}
{phang2}{cmd:. bayes, dots(100) normalprior(10) burnin(5000) rseed(12345): zip count persons livebait, inflate(child)}

{pstd}
在膨胀方程中对回归系数使用均匀先验{p_end}
{phang2}{cmd:. bayes, dots(100) prior({inflate:child _cons}, uniform(-5,5)): zip count persons livebait, inflate(child)}

{pstd}
与上述相同，但使用快捷符号引用膨胀方程中的所有回归系数{p_end}
{phang2}{cmd:. bayes, dots(100) prior({inflate:}, uniform(-5,5)): zip count persons livebait, inflate(child)}

{pstd}
在重新播放时显示90%的置信区间{p_end}
{phang2}{cmd:. bayes, clevel(90)}

{pstd}
在重新播放时保存MCMC结果{p_end}
{phang2}{cmd:. bayes, saving(mymcmc)}


{marker results}{...}
{title:存储结果}

{pstd}
请参见 {help bayes##results:{it:存储结果}} 在 {manhelp bayes BAYES} 中。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <bayes_zip.sthlp>}