{smcl}
{* *! version 1.0.13  20sep2018}{...}
{viewerdialog tebalance "dialog tebalance"}{...}
{vieweralsosee "[TE] tebalance overid" "mansection TE tebalanceoverid"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TE] stteffects" "help stteffects_zh"}{...}
{vieweralsosee "[TE] tebalance" "help tebalance_zh"}{...}
{vieweralsosee "[TE] teffects aipw" "help teffects aipw"}{...}
{vieweralsosee "[TE] teffects ipw" "help teffects ipw"}{...}
{vieweralsosee "[TE] teffects ipwra" "help teffects ipwra"}{...}
{vieweralsosee "[TE] teffects overlap" "help teffects overlap"}{...}
{viewerjumpto "Syntax" "tebalance overid##syntax"}{...}
{viewerjumpto "Menu" "tebalance overid##menu"}{...}
{viewerjumpto "Description" "tebalance overid##description"}{...}
{viewerjumpto "Links to PDF documentation" "tebalance_overid_zh##linkspdf"}{...}
{viewerjumpto "Options" "tebalance overid##options"}{...}
{viewerjumpto "Example" "tebalance overid##example"}{...}
{viewerjumpto "Stored results" "tebalance overid##results"}
{help tebalance_overid:English Version}
{hline}{...}
{p2colset 1 26 28 2}{...}
{p2col:{bf:[TE] tebalance overid} {hline 2}}检验协变量的平衡性{p_end}
{p2col:}({mansection TE tebalanceoverid:查看完整的PDF手册条目}){p_end}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{cmd:tebalance} {cmd:overid} [{cmd:,} {cmdab:bco:nly}
{cmd:nolog} {opt iter:ate(#)}]


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 处理效应 > 平衡 > 过度辨识检验}


{marker description}{...}
{title:描述}

{pstd}
{cmd:tebalance overid} 在通过 {help teffects_zh} 的逆概率加权估计器或 {help stteffects_zh} 的逆概率加权估计器进行估计后，执行协变量平衡性检验。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection TE tebalanceoverid快速入门:快速入门}

        {mansection TE tebalanceoverid备注和示例:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主要}

{phang}
{cmd:bconly} 指定只包含基础协变量的平衡性检验。默认情况下，在 {cmd:teffects} 或 {cmd:stteffects} 模型中通过因子变量表示法指定的幂次和交互项也会包括在平衡性检验中。

{phang}
{cmd:nolog} 抑制优化搜索日志的显示。

{phang}
{cmd:iterate(}{it:#}{cmd:)} 设置在用于计算检验统计量的广义矩估计器中最大迭代次数为 {it:#}。


{marker example}{...}
{title:示例}

{pstd}
设置{p_end}
{phang2}{cmd:. webuse cattaneo2}

{pstd}
估计母亲的吸烟行为 ({cmd:mbsmoke}) 对其子女出生体重 ({cmd:bweight}) 的影响，控制婚姻状况 ({cmd:mmarried})、母亲年龄 ({cmd:mage})、母亲在婴儿第一孕期是否进行了产前检查 ({cmd:prenatal1}) 以及这个婴儿是否是母亲的第一个孩子 ({cmd:fbaby})。除了基础协变量外，我们在倾向分数模型中还包括 {cmd:mage} 的平方、 {cmd:mage} 与 {cmd:mmarried} 的交互项以及 {cmd:mage} 与 {cmd:prenatal1} 的交互项。{p_end}
{phang2}{cmd:. teffects ipw (bweight) (mbsmoke mmarried mage prenatal1 fbaby c.mage#(c.mage i.mmarried prenatal1)), aequations}

{pstd}
检验模型是否平衡所有八个协变量{p_end}
{phang2}{cmd:. tebalance overid}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:tebalance} {cmd:overid} 在 {cmd:r()} 中存储以下内容：

{synoptset 20 tabbed}{...}
{p2col 5 24 28 2:标量}{p_end}
{synopt :{cmd:r(p)}}p值{p_end}
{synopt :{cmd:r(df)}}过度辨识约束的检验自由度{p_end}
{synopt :{cmd:r(chi2)}}卡方统计量{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <tebalance_overid.sthlp>}