{smcl}
{* *! version 1.2.2  19oct2017}{...}
{viewerdialog alpha "dialog alpha"}{...}
{vieweralsosee "[MV] alpha" "mansection MV alpha"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MV] factor" "help factor_zh"}{...}
{vieweralsosee "[R] icc" "help icc_zh"}{...}
{viewerjumpto "语法" "alpha_zh##syntax"}{...}
{viewerjumpto "菜单" "alpha_zh##menu"}{...}
{viewerjumpto "描述" "alpha_zh##description"}{...}
{viewerjumpto "PDF文档链接" "alpha_zh##linkspdf"}{...}
{viewerjumpto "选项" "alpha_zh##options"}{...}
{viewerjumpto "示例" "alpha_zh##examples"}{...}
{viewerjumpto "存储结果" "alpha_zh##results"}
{help alpha:English Version}
{hline}{...}
{p2colset 1 15 17 2}{...}
{p2col:{bf:[MV] alpha} {hline 2}}计算项目间相关性
（协方差）和Cronbach的α系数{p_end}
{p2col:}({mansection MV alpha:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 14 2}
{cmd:alpha}
{varlist}
{ifin}
[{cmd:,} {it:options}]

{synoptset 20 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:选项}
{synopt :{opt a:sis}}按原样取各项目的符号{p_end}
{synopt :{opt c:asewise}}删除缺失值的案例{p_end}
{synopt :{opt d:etail}}列出单独的项目间相关性和协方差{p_end}
{synopt :{opth g:enerate(newvar)}}将生成的量表保存到 {it:newvar}{p_end}
{synopt :{opt i:tem}}显示项目-测试和项目-剩余相关性{p_end}
{synopt :{opt l:abel}}在输出表中包含变量标签{p_end}
{synopt :{opt m:in(#)}}必须至少有 {it:#} 个观测值才能包括在内{p_end}
{synopt :{opth r:everse(varlist)}}反转这些变量的符号{p_end}
{synopt :{opt s:td}}将量表中的项目标准化为均值0，方差1{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2} {opt by} 是允许的；请参见 {manhelp by D}。


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 多元分析 > Cronbach的α系数}


{marker description}{...}
{title:描述}

{pstd}
{cmd:alpha} 计算 {varlist} 中所有变量对的项目间相关性或协方差，以及由它们形成的Cronbach的α系数。必须至少指定两个变量使用 {cmd:alpha}。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection MV alphaQuickstart:快速开始}

        {mansection MV alphaRemarksandexamples:备注和示例}

        {mansection MV alphaMethodsandformulas:方法和公式}

{pstd}
上述部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:选项}

{phang}{opt asis} 指定按数据中给出的形式（符号）处理每个项目。默认情况下是根据经验确定符号，并对任何当以负值出现的项目进行反转评分。

{phang}{opt casewise} 指定删除缺失值的案例。默认情况下是采用成对计算协方差和相关性。

{phang}{opt detail} 列出单独的项目间相关性和协方差。

{phang}{opth generate(newvar)} 指定将从 {varlist} 构建的量表保存到 {it:newvar}。除非指定 {opt asis}，否则负值的项目符号会自动反转。如果也指定了 {opt std}，则使用标准化（均值0，方差1）值构建量表。与大多数Stata命令不同，{opt generate()} 不使用逐个案例删除。每个观测值只要响应了至少一个项目（即 {it:varlist} 中的一个变量不是缺失的），就会创建一个分数。汇总得分被除以计算得分的项目数量。

{phang}{opt item} 指定显示项目-测试相关性和项目-剩余相关性，以及从量表中移除某个项目的影响。仅在 {varlist} 中指定了两个以上变量时 {opt item} 才有效。

{phang}{opt label} 请求以紧凑的格式显示详细的输出表，以包含变量标签。

{phang}{opt min(#)} 指定仅包括至少有 {it:#} 个观测值的案例。{opt casewise} 是 {opt min(k)} 的简称，其中 {it:k} 是 {varlist} 中变量的数量。

{phang}{opth reverse(varlist)} 指定反转 {it:varlist} 中变量（项目）的符号。{opt reverse()} 中指定的任何变量如果没有包含在 {cmd:alpha} 的 {it:varlist} 中，则被忽略。

{phang}{opt std} 指定在求和之前将量表中的项目标准化（均值0，方差1）。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse automiss}{p_end}

{pstd}获取平均项目间协方差和Cronbach的α系数{p_end}
{phang2}{cmd:. alpha price headroom rep78 trunk weight length turn displ}{p_end}

{pstd}获取项目-测试和项目-剩余相关性，以及单独的项目间相关性{p_end}
{phang2}{cmd:. alpha price headroom rep78 trunk weight length turn displ, std item detail}{p_end}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:alpha} 在 {cmd:r()} 中存储以下内容：

{synoptset 23 tabbed}{...}
{p2col 5 23 27 2: 标量}{p_end}
{synopt:{cmd:r(alpha)}}量表可靠性系数{p_end}
{synopt:{cmd:r(k)}}量表中的项目数量{p_end}
{synopt:{cmd:r(cov)}}平均项目间协方差{p_end}
{synopt:{cmd:r(rho)}}平均项目间相关性（如果指定了 {cmd:std}）{p_end}

{p2col 5 23 27 2: 矩阵}{p_end}
{synopt:{cmd:r(Alpha)}}量表可靠性系数{p_end}
{synopt:{cmd:r(ItemTestCorr)}}项目-测试相关性{p_end}
{synopt:{cmd:r(ItemRestCorr)}}项目-剩余相关性{p_end}
{synopt:{cmd:r(MeanInterItemCov)}}平均项目间协方差{p_end}
{synopt:{cmd:r(MeanInterItemCorr)}}平均项目间相关性（如果指定了 {cmd:std}）{p_end}

{pstd}
如果指定了选项 {cmd:item}，则在移除一个变量时，结果作为 {cmd:k} 子量表的行矩阵存储。{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <alpha.sthlp>}