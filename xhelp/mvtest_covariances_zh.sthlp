{smcl}
{* *! version 1.1.16  19oct2017}{...}
{viewerdialog mvtest "dialog mvtest"}{...}
{vieweralsosee "[MV] mvtest covariances" "mansection MV mvtestcovariances"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MV] candisc" "help candisc_zh"}{...}
{vieweralsosee "[MV] canon" "help canon_zh"}{...}
{vieweralsosee "[R] correlate" "help correlate_zh"}{...}
{vieweralsosee "[MV] discrim lda" "help discrim_lda_zh"}{...}
{vieweralsosee "[MV] manova" "help manova_zh"}{...}
{vieweralsosee "[R] sdtest" "help sdtest_zh"}{...}
{viewerjumpto "Syntax" "mvtest_covariances_zh##syntax"}{...}
{viewerjumpto "Menu" "mvtest_covariances_zh##menu"}{...}
{viewerjumpto "Description" "mvtest_covariances_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mvtest_covariances_zh##linkspdf"}{...}
{viewerjumpto "Options for multiple-sample tests" "mvtest_covariances_zh##options_multi"}{...}
{viewerjumpto "Options for one-sample tests" "mvtest_covariances_zh##options_one"}{...}
{viewerjumpto "Examples" "mvtest_covariances_zh##examples"}{...}
{viewerjumpto "Stored results" "mvtest_covariances_zh##results"}
{help mvtest_covariances:English Version}
{hline}{...}
{p2colset 1 28 18 2}{...}
{p2col:{bf:[MV] mvtest covariances} {hline 2}}多元协方差检验{p_end}
{p2col:}({mansection MV mvtestcovariances:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{pstd}
多样本检验

{p 8 15 2}
{cmd:mvtest} {cmdab:cov:ariances} {varlist} {ifin}
[{it:{help mvtest covariances##weight:权重}}]{cmd:,}
{opth by:(varlist:分组变量)}
[{help mvtest covariances##multisample_options:{it:多样本选项}}]


{pstd}
单样本检验

{p 8 15 2}
{cmd:mvtest} {cmdab:cov:ariances} {varlist} {ifin}
[{it:{help mvtest covariances##weight:权重}}]
[{cmd:,}
{help mvtest covariances##one-sample_options:{it:单样本选项}}]


{synoptset 25 tabbed}{...}
{marker multisample_options}{...}
{synopthdr:多样本选项}
{synoptline}
{syntab:模型}
{p2coldent:* {opth by:(varlist:分组变量)}}比较具有相同
	{it:分组变量}值的子样本{p_end}
{synopt:{opt miss:ing}}将{it:分组变量}中的缺失值视为普通值{p_end}
{synoptline}
{p 4 6 2}* {opt by(groupvars)} 是必需的。

{synoptset 25 tabbed}{...}
{marker one-sample_options}{...}
{synopthdr:单样本选项}
{synoptline}
{syntab:选项}
{synopt:{opt diag:onal}}检验协方差矩阵是否为对角矩阵；默认情况{p_end}
{synopt:{opt sph:erical}}检验协方差矩阵是否为球形{p_end}
{synopt:{opt comp:ound}}检验协方差矩阵是否为复合对称{p_end}
{synopt:{opt e:quals(C)}}检验协方差矩阵是否等于矩阵 {it:C}{p_end}
{synopt:{opt bl:ock}{cmd:(}{it:{help varlist_zh:变量列表1}} [{cmd:||}}{p_end}
{synopt:{space 6}{it:变量列表2} [{cmd:||}{it:...}]]{cmd:)}}检验协方差
	矩阵是否为块对角矩阵，块对应于 {it:变量列表#}{p_end}
{synoptline}

{p 4 6 2}
{cmd:bootstrap}、{cmd:by}、{cmd:jackknife}、{cmd:rolling} 和 {cmd:statsby}
是允许的；请参阅 {help prefix_zh}.{p_end}
{p 4 6 2}
在 {help bootstrap_zh} 前缀下不允许使用权重.{p_end}
{p 4 6 2}
在 {help jackknife_zh} 前缀下不允许使用 {cmd:aweight}s.{p_end}
{marker weight}{...}
{p 4 6 2}
允许使用 {cmd:aweight}s 和 {cmd:fweight}s；请参阅 {help weight_zh}。{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 多元分析 > MANOVA、多元回归，}
           {bf:及相关 > 多元均值、协方差和}
           {bf:正态性检验}


{marker description}{...}
{title:描述}

{pstd}
{cmd:mvtest covariances} 对协方差进行单样本和多样本多元检验。这些检验假设多元正态性。

{pstd}
有关其他多元检验，请参见 {manhelp mvtest MV}。有关标准差的单变量检验，请参见 {manhelp sdtest R}。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection MV mvtestcovariancesQuickstart:快速入门}

        {mansection MV mvtestcovariancesRemarksandexamples:备注和示例}

        {mansection MV mvtestcovariancesMethodsandformulas:方法和公式}

{pstd}
上述部分不包含在此帮助文件中。


{marker options_multi}{...}
{title:多样本检验选项}

{dlgtab:模型}

{phang}
{opth by:(varlist:分组变量)} 在多样本检验中是必需的。具有相同
	{it:分组变量}值的观察形成一个样本。
在 {it:分组变量} 中具有缺失值的观察会被忽略，除非指定了
{cmd:missing} 选项。

{pmore}
一个修正的似然比统计量用于检验由 {cmd:by()} 定义的多个独立样本的协方差矩阵的相等性，并与 Box 的 F 和卡方近似一起呈现。这个检验
也称为 Box 的 M 检验。

{phang}
{opt missing} 指定在 {it:分组变量} 中的缺失值被视为普通值。


{marker options_one}{...}
{title:单样本检验选项}

{dlgtab:选项}

{phang}
{cmd:diagonal}，默认情况下，检验协方差矩阵是否为对角矩阵，即 {varlist} 中的变量是否独立。显示一个带有一阶 Bartlett 修正的似然比检验。

{phang}
{cmd:spherical} 检验协方差矩阵是否为具有常数对角值的对角矩阵，即 {varlist} 中的变量是否具有同方差和独立性。显示一个带有一阶 Bartlett 修正的似然比检验。

{phang}
{cmd:compound} 检验协方差矩阵是否为复合对称，即 {varlist} 中的变量是否具有同方差，并且每对两个变量具有相同的协方差。显示一个带有一阶 Bartlett 修正的似然比检验。

{phang}
{cmd:equals(}{it:C}{cmd:)} 指定假设的协方差矩阵，对于 {varlist} 中的 k 个变量为 {it:C}。矩阵 {it:C} 必须是 kxk，且对称且正定。忽略 {it:C} 的行和列名称。显示一个带有一阶 Bartlett 修正的似然比检验。

{phang}
{cmd:block(}{it:{help varlist_zh:变量列表1}} [{cmd:||} {it:变量列表2}
[{cmd:||}...]]{cmd:)}
检验协方差矩阵是否为块对角矩阵，块为 {it:变量列表1}、{it:变量列表2} 等了。{it:变量列表} 中不包含的变量视为一个额外的块。在这种模式下，不同块中的变量是独立的，但对块内的协方差结构没有假设。显示一个带有一阶 Bartlett 修正的似然比检验。


{marker examples}{...}
{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse milktruck}{p_end}

{pstd}检验协方差矩阵是否为对角矩阵{p_end}
{phang2}{cmd:. mvtest covariances fuel repair capital, diagonal}{p_end}

{pstd}检验协方差矩阵是否为块对角矩阵{p_end}
{phang2}
{cmd:. mvtest covariances fuel repair capital, block(fuel repair || capital)}
{p_end}

{pstd}检验协方差矩阵是否为球形{p_end}
{phang2}{cmd:. mvtest covariances fuel repair capital, spherical}{p_end}

{pstd}检验协方差矩阵是否为复合对称{p_end}
{phang2}{cmd:. mvtest covariances fuel repair capital, compound}{p_end}

{pstd}检验协方差矩阵是否等于给定矩阵{p_end}
{phang2}{cmd:. mat B = (30, 15, 0 \ 15, 20, 0 \ 0, 0, 10)}{p_end}
{phang2}{cmd:. mvtest covariances fuel repair capital, equals(B)}{p_end}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse genderpsych}{p_end}

{pstd}检验各组的协方差矩阵是否相等{p_end}
{phang2}{cmd:. mvtest covariances y1 y2 y3 y4, by(gender)}{p_end}
    {hline}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:mvtest covariances} 将以下内容存储在 {cmd:r()} 中：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:r(chi2)}}卡方{p_end}
{synopt:{cmd:r(df)}}卡方检验的自由度{p_end}
{synopt:{cmd:r(p_chi2)}}卡方检验的 p 值{p_end}
{synopt:{cmd:r(F_Box)}}Box 检验的 F 统计量 ({cmd:by()} 仅适用){p_end}
{synopt:{cmd:r(df_m_Box)}}Box 检验的模型自由度
            ({cmd:by()} 仅适用){p_end}
{synopt:{cmd:r(df_r_Box)}}Box 检验的残差自由度
            ({cmd:by()} 仅适用){p_end}
{synopt:{cmd:r(p_F_Box)}}Box 的 F 检验的 p 值 ({cmd:by()} 仅适用){p_end}

{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:r(chi2type)}}模型卡方检验的类型{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mvtest_covariances.sthlp>}