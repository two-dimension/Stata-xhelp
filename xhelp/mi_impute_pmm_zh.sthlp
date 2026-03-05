{smcl}
{* *! version 1.1.6  14may2018}{...}
{viewerdialog mi "dialog mi"}{...}
{vieweralsosee "[MI] mi impute pmm" "mansection MI miimputepmm"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MI] Intro" "help mi_zh"}{...}
{vieweralsosee "[MI] Intro substantive" "help mi intro substantive"}{...}
{vieweralsosee "[MI] mi impute" "help mi_impute_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MI] mi impute intreg" "help mi_impute_intreg_zh"}{...}
{vieweralsosee "[MI] mi impute regress" "help mi_impute_regress_zh"}{...}
{vieweralsosee "[MI] mi impute truncreg" "help mi_impute_truncreg_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MI] mi estimate" "help mi_estimate_zh"}{...}
{viewerjumpto "Syntax" "mi_impute_pmm_zh##syntax"}{...}
{viewerjumpto "Menu" "mi_impute_pmm_zh##menu"}{...}
{viewerjumpto "Description" "mi_impute_pmm_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mi_impute_pmm_zh##linkspdf"}{...}
{viewerjumpto "Options" "mi_impute_pmm_zh##options"}{...}
{viewerjumpto "Examples" "mi_impute_pmm_zh##examples"}{...}
{viewerjumpto "Video example" "mi_impute_pmm_zh##video"}{...}
{viewerjumpto "Stored results" "mi_impute_pmm_zh##results"}
{help mi_impute_pmm:English Version}
{hline}{...}
{p2colset 1 23 25 2}{...}
{p2col:{bf:[MI] mi impute pmm} {hline 2}}使用预测均值匹配进行插补{p_end}
{p2col:}({mansection MI miimputepmm:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 19 2}
{cmd:mi} {cmdab:imp:ute} {cmd:pmm} 
{it:ivar} [{it:{help indepvars}}] [{it:{help if_zh}}] 
[{it:{help mi impute pmm##weight:权重}}]
{cmd:,} {opt knn(#)}
[{it:{help mi_impute##impopts:插补选项}} {it:选项}] 

{synoptset 22 tabbed}{...}
{synopthdr:选项}
{synoptline}
{syntab:主要}
{synopt: {opt nocons:tant}}抑制常数项{p_end}
{p2coldent :* {opt knn(#)}}指定用于抽取的最近观察值数量{p_end}
{synopt: {opth cond:ional(if)}}进行条件插补{p_end}
{synopt: {opt boot:strap}}使用替换抽样来估计模型参数{p_end}
{synoptline}
{p 4 6 2}
* {opt knn(#)} 是必需的。{p_end}
{p 4 6 2}
您必须在使用 {cmd:mi} {cmd:impute} {cmd:pmm} 之前 {cmd:mi set} 您的数据； 请参见 {manhelp mi_set MI:mi set}。{p_end}
{p 4 6 2}
您必须在使用 {cmd:mi} {cmd:impute} {cmd:pmm} 之前将 {it:ivar} 注册为插补变量； 请参见 {manhelp mi_set MI:mi set}。{p_end}
包含 help fvvarlist
{marker weight}{...}
{p 4 6 2}
允许使用 {cmd:aweight}、{cmd:fweight}、{cmd:iweight} 和 {cmd:pweight}；请参见 {help weight_zh}。{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 多重插补}


{marker description}{...}
{title:描述}

{pstd}
{cmd:mi} {cmd:impute} {cmd:pmm} 使用预测均值匹配插补方法填补连续变量的缺失值。您可以通过指定 {cmd:by()} 选项对数据的不同子集进行单独插补。您还可以考虑分析性、频率、重要性和抽样权重。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection MI miimputepmmRemarksandexamples:备注和示例}

        {mansection MI miimputepmmMethodsandformulas:方法和公式}

{pstd}
以上部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主要}

{phang}
{cmd:noconstant}; 请参见 {manhelp estimation_options R:估计选项}。

{phang}
{cmd:add()}, {cmd:replace}, {cmd:rseed()}, {cmd:double}, {cmd:by()}; 请参见 {manhelp mi_impute MI:mi impute}。

{phang}
{opt knn(#)} 指定用于抽取插补值的最近观察值数量（最近邻）。此选项是必需的。接近度是根据缺失值的线性预测与完整值之间的绝对差异确定的。最近观察值是差异最小的观察值。此选项调节多个插补之间的相关性，这会影响最终多重插补点估计的偏倚和变异性；有关详细信息，请参阅 {mansection MI miimputepmmRemarksandexamples:{it:备注和示例}} 在 {bf:[MI] mi impute pmm} 中。

{phang}
包含 help mi_impute_uvopt_conditional.ihlp

{phang}
包含 help mi_impute_uvopt_bootstrap.ihlp

{dlgtab:报告}

{phang}
{cmd:dots}、{cmd:noisily}、{cmd:nolegend}; 请参见 {manhelp mi_impute MI:mi impute}。 
{cmd:noisily} 指定将线性回归拟合到观察数据的输出显示出来。
包含 help mi_impute_uvopt_nolegend.ihlp

{dlgtab:高级}

{phang}
{cmd:force}; 请参见 {manhelp mi_impute MI:mi impute}。

{pstd}
以下选项可与 {opt mi impute} 一起使用，但在对话框中未显示：

{phang}
{cmd:noupdate}; 请参见 {manhelp noupdate_option MI:noupdate option}。


{marker examples}{...}
{title:示例}

{pstd}
设置
{p_end}
{phang2}
{cmd:. webuse mheart0}
{p_end}

{p 6 6 2}声明数据并将变量 {cmd:bmi} 注册为插补变量{p_end}
{phang2}
{cmd:. mi set mlong}
{p_end}
{phang2}
{cmd:. mi register imputed bmi}
{p_end}

{pstd}
使用预测均值匹配插补 {cmd:bmi}，使用 5 个最近邻
{p_end}
{phang2}
{cmd:. mi impute pmm bmi attack smokes age hsgrad female, add(20) knn(5)}
{p_end}

{pstd}
使用 10 个最近邻插补 {cmd:bmi}
{p_end}
{phang2}
{cmd:. mi impute pmm bmi attack smokes age hsgrad female, replace knn(10)}
{p_end}


{marker video}{...}
{title:视频示例}

{phang2}{browse "http://www.youtube.com/watch?v=c75E2LBGoBQ":多重插补：设置、插补、估计 -- 预测均值匹配}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:mi impute pmm} 会将以下内容存储在 {cmd:r()} 中：

{synoptset 25 tabbed}{...}
{p2col 5 25 29 2: 标量}{p_end}
{synopt:{cmd:r(M)}}插补总数{p_end}
{synopt:{cmd:r(M_add)}}添加的插补数量{p_end}
{synopt:{cmd:r(M_update)}}更新的插补数量{p_end}
{synopt:{cmd:r(knn)}}最近邻数量{p_end}
{synopt:{cmd:r(k_ivars)}}插补变量数量（始终为 {cmd:1}）{p_end}
{synopt:{cmd:r(N_g)}}插补组数量（如果未指定 {cmd:by()} 则为 {cmd:1}）{p_end}

{synoptset 25 tabbed}{...}
{p2col 5 25 29 2: 宏}{p_end}
{synopt:{cmd:r(method)}}插补方法名称 ({cmd:pmm}){p_end}
{synopt:{cmd:r(ivars)}}插补变量名称{p_end}
{synopt:{cmd:r(rngstate)}}使用的随机数状态{p_end}
{synopt:{cmd:r(by)}}在 {cmd:by()} 中指定的变量名称{p_end}

{synoptset 25 tabbed}{...}
{p2col 5 25 29 2: 矩阵}{p_end}
{synopt:{cmd:r(N)}}每组插补样本中的观察值数量{p_end}
{synopt:{cmd:r(N_complete)}}每组插补样本中的完整观察值数量{p_end}
{synopt:{cmd:r(N_incomplete)}}每组插补样本中的不完整观察值数量{p_end}
{synopt:{cmd:r(N_imputed)}}每组插补样本中的插补观察值数量{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mi_impute_pmm.sthlp>}