{smcl}
{* *! version 1.1.17  19oct2017}{...}
{viewerdialog mvtest "dialog mvtest"}{...}
{vieweralsosee "[MV] mvtest correlations" "mansection MV mvtestcorrelations"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MV] canon" "help canon_zh"}{...}
{vieweralsosee "[R] correlate" "help correlate_zh"}{...}
{viewerjumpto "语法" "mvtest_correlations_zh##syntax"}{...}
{viewerjumpto "菜单" "mvtest_correlations_zh##menu"}{...}
{viewerjumpto "描述" "mvtest_correlations_zh##description"}{...}
{viewerjumpto "PDF文档链接" "mvtest_correlations_zh##linkspdf"}{...}
{viewerjumpto "多样本测试选项" "mvtest_correlations_zh##options_multi"}{...}
{viewerjumpto "单样本测试选项" "mvtest_correlations_zh##options_one"}{...}
{viewerjumpto "示例" "mvtest_correlations_zh##examples"}{...}
{viewerjumpto "存储结果" "mvtest_correlations_zh##results"}{...}
{viewerjumpto "参考文献" "mvtest_correlations_zh##references"}
{help mvtest_correlations:English Version}
{hline}{...}
{p2colset 1 29 18 2}{...}
{p2col:{bf:[MV] mvtest correlations} {hline 2}}多变量相关性检验{p_end}
{p2col:}({mansection MV mvtestcorrelations:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{pstd}
多样本测试

{p 8 15 2}
{cmd:mvtest} {cmdab:corr:elations} {varlist} {ifin}
[{it:{help mvtest correlations##weight:weight}}]{cmd:,}
{opth by:(varlist:groupvars)}
[{help mvtest correlations##multisample_options:{it:multisample_options}}]


{pstd}
单样本测试

{p 8 15 2}
{cmd:mvtest} {cmdab:corr:elations} {varlist} {ifin}
[{it:{help mvtest correlations##weight:weight}}]
[{cmd:,}
{help mvtest correlations##one-sample_options:{it:one-sample_options}}]


{synoptset 22 tabbed}{...}
{marker multisample_options}{...}
{synopthdr:多样本选项}
{synoptline}
{syntab:模型}
{p2coldent:* {opth by:(varlist:groupvars)}}比较具有相同{it:groupvars}值的子样本{p_end}
{synopt:{opt miss:ing}}将{it:groupvars}中的缺失值视为普通值{p_end}
{synoptline}
{p 4 6 2}* {opt by(groupvars)} 是必需的。

{synoptset 22 tabbed}{...}
{marker one-sample_options}{...}
{synopthdr:单样本选项}
{synoptline}
{syntab:选项}
{synopt:{opt comp:ound}}测试相关矩阵是否为复合对称（相同相关性）；默认设置{p_end}
{synopt:{opt e:quals(C)}}测试相关矩阵是否等于矩阵{it:C}{p_end}
{synoptline}

{p 4 6 2}
{cmd:bootstrap}，{cmd:by}，{cmd:jackknife}，{cmd:rolling} 和 {cmd:statsby} 被允许；见 {help prefix_zh}.{p_end}
{p 4 6 2}
在 {help bootstrap_zh} 前缀中不允许使用权重.{p_end}
{p 4 6 2}
在 {help jackknife_zh} 前缀中不允许使用 {cmd:aweight}s.{p_end}
{marker weight}{...}
{p 4 6 2}
允许使用 {cmd:aweight}s 和 {cmd:fweight}s；见 {help weight_zh}.{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 多元分析 > MANOVA，多变量回归,}
           {bf:及相关 > 均值、协方差和正态性的多变量检验}


{marker description}{...}
{title:描述}

{pstd}
{cmd:mvtest correlations} 对相关性进行单样本和多样本测试。这些测试假设多元正态性。

{pstd}
有关更多多变量测试，请参见 {manhelp mvtest MV}。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection MV mvtestcorrelationsQuickstart:快速开始}

        {mansection MV mvtestcorrelationsRemarksandexamples:备注和示例}

        {mansection MV mvtestcorrelationsMethodsandformulas:方法和公式}

{pstd}
上述部分不包括在本帮助文件中。


{marker options_multi}{...}
{title:多样本测试选项}

{dlgtab:模型}

{phang}
{opth by:(varlist:groupvars)} 在多样本版本的测试中是必需的。具有相同{it:groupvars}值的观测形成每个样本。具有缺失值的观测会被忽略，除非指定了 {cmd:missing} 选项。将显示由于 {help mvtest correlations##J1970:Jennrich (1970)} 产生的 Wald 测试。
 
{phang}
{opt missing} 指定将{it:groupvars}中的缺失值视为普通值。


{marker options_one}{...}
{title:单样本测试选项}

{dlgtab:选项}

{phang}
{opt compound}（默认情况）测试假设变量的相关矩阵是复合对称的，即{it:varlist}中所有变量的相关性是相同的。将显示 Lawley 的
({help mvtest correlations##L1963:1963}) 卡方检验。

{phang}
{cmd:equals(}{it:C}{cmd:)} 测试假设{it:varlist}的相关矩阵等于{it:C}。矩阵{it:C}应该是 k x k， 对称，并且正定。{it:C} 会在需要时转换为相关矩阵。{it:C}的行和列名称无关紧要。将显示由于 
{help mvtest correlations##J1970:Jennrich (1970)} 产生的 Wald 测试。


{marker examples}{...}
{title:示例}

    {hline}
{pstd}准备{p_end}
{phang2}{cmd:. webuse milktruck}{p_end}

{pstd}测试相关矩阵是否为复合对称（即所有相关性相等）{p_end}
{phang2}{cmd:. mvtest correlations fuel repair capital, compound}{p_end}

{pstd}测试相关矩阵是否等于给定矩阵{p_end}
{phang2}{cmd:. matrix C = (1, 0.75,0 \ 0.75, 1, 0 \ 0, 0, 1)}{p_end}
{phang2}{cmd:. mvtest correlations fuel repair capital, equals(C)}{p_end}

    {hline}
{pstd}准备{p_end}
{phang2}{cmd:. webuse genderpsych}{p_end}

{pstd}测试各组的相关矩阵是否相等{p_end}
{phang2}{cmd:. mvtest correlations y1 y2 y3 y4, by(gender)}{p_end}
    {hline}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:mvtest correlations} 在 {cmd:r()} 中存储以下内容：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:r(chi2)}}卡方值{p_end}
{synopt:{cmd:r(df)}}卡方检验的自由度{p_end}
{synopt:{cmd:r(p_chi2)}}卡方检验的p值{p_end}

{p2col 5 15 19 2: 宏}{p_end}
{synopt:{cmd:r(chi2type)}}模型卡方检验的类型{p_end}


{marker references}{...}
{title:参考文献}

{marker J1970}{...}
{phang}
Jennrich, R. I. 1970. 用于两个相关矩阵相等的渐近卡方检验。 {it: 美国统计协会杂志} 65: 904-912.

{marker L1963}{...}
{phang}
Lawley, D. N. 1963. 测试一组相关系数是否相等。 {it: 数学统计年鉴} 34: 149-151.
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mvtest_correlations.sthlp>}