{smcl}
{* *! version 1.0.0  14may2019}{...}
{viewerdialog irt "dialog irt"}{...}
{viewerdialog "svy: irt" "dialog irt, message(-svy-) name(svy_irt)"}{...}
{vieweralsosee "[IRT] irt constraints" "mansection IRT irtconstraints"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[IRT] irt" "help irt_zh"}{...}
{vieweralsosee "[IRT] irt 1pl" "help irt 1pl"}{...}
{vieweralsosee "[IRT] irt 2pl" "help irt 2pl"}{...}
{vieweralsosee "[IRT] irt 3pl" "help irt 3pl"}{...}
{vieweralsosee "[IRT] irt grm" "help irt grm"}{...}
{vieweralsosee "[IRT] irt, group()" "help irt group"}{...}
{vieweralsosee "[IRT] irt hybrid" "help irt hybrid"}{...}
{vieweralsosee "[IRT] irt nrm" "help irt nrm"}{...}
{vieweralsosee "[IRT] irt pcm" "help irt pcm"}{...}
{vieweralsosee "[IRT] irt rsm" "help irt rsm"}{...}
{viewerjumpto "Syntax" "irt constraints##syntax"}{...}
{viewerjumpto "Description" "irt constraints##description"}{...}
{viewerjumpto "Links to PDF documentation" "irt_constraints_zh##linkspdf"}{...}
{viewerjumpto "Examples" "irt constraints##examples"}
{help irt_constraints:English Version}
{hline}{...}
{p2colset 1 26 28 2}{...}
{p2col:{bf:[IRT] irt constraints} {hline 2}}指定约束{p_end}
{p2col:}({mansection IRT irtconstraints:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 15 2}
{cmd:irt} ... [{cmd:,}
     {opt cns(spec [spec ...])} ...]

{phang}
其中 {it:spec} 是 {it:parm}{cmd:@}{it:#} 或 {it:parm}{cmd:@}{it:symbol}。


{pstd}
在 1PL 和 2PL 模型中，
{it:parm} 是 {cmd:a} 或 {cmd:b}，对应于 IRT 参数化中的辨别度或难度参数，或者
{it:parm} 是 {cmd:alpha} 或 {cmd:beta}，对应于斜率或截距在斜率-截距参数化中的状态。

{pstd}
在 3PL 模型中，
{it:parm} 是 {cmd:a}、{cmd:b} 或 {cmd:c}，对应于 IRT 参数化中的
辨别度、难度或猜测参数，或者 {it:parm} 是 {cmd:alpha} 或 {cmd:beta}，对应于
斜率或截距在斜率-截距参数化中的状态。

{pstd}
在名义响应模型中，{it:parm} 是 {cmd:a1}、{cmd:a2} 等，用于每个项目的多个辨别参数，或者 {it:parm} 是 {cmd:b1}、{cmd:b2} 等，用于每个项目的多个难度参数。

{pstd}
在分级响应、部分积分和
评分尺度模型中，{it:parm} 是 {cmd:a} 代表辨别参数，或者 {it:parm} 是 {cmd:b1}、{cmd:b2} 等，用于每个项目的多个
难度参数。

{pstd}
{cmd:a} 是 {cmd:a1} 的同义词，而 {cmd:b} 是 {cmd:b1} 的同义词。


{marker description}{...}
{title:描述}

{pstd}
在模型的估计参数上施加约束。 {cmd:irt} 允许你将参数约束为固定值或
将两个或多个参数约束为相等。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection IRT irtconstraintsQuickstart:快速入门}

        {mansection IRT irtconstraintsRemarksandexamples:备注和示例}

{pstd}
上述部分不包括在本帮助文件中。


{marker examples}{...}
{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse masc1}

{pstd}使用混合规格拟合一个 2PL 模型，单独处理 {cmd:q1}
与其他项目{p_end}
{phang2}{cmd:. irt (2pl q1) (2pl q2 q3 q4)}

{pstd}与上述相同，但将 {cmd:q1} 的辨别度约束为 1.5，难度约束为 -0.5{p_end}
{phang2}{cmd:. irt (2pl q1, cns(a@1.5 b@-.5)) (2pl q2 q3 q4)}

    {hline}

{pstd}设置{p_end}
{phang2}{cmd:. webuse masc2}

{pstd}使用混合规格拟合一个组 2PL 模型，单独处理 {cmd:q1}
与其他项目{p_end}
{phang2}{cmd:. irt (0: 2pl q1) (1: 2pl q1) (2pl q2 q3 q4), group(female)}

{pstd}与上述相同，但将项目 {cmd:q1} 的截距约束在两个组间相等{p_end}
{phang2}{cmd:. irt (0: 2pl q1, cns(beta@k1)) (1: 2pl q1, cns(beta@k1))}
        {cmd:(2pl q2 q3 q4), group(female)}

    {hline}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <irt_constraints.sthlp>}