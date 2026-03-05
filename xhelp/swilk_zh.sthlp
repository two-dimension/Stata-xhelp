{smcl}
{* *! version 1.2.14  14may2018}{...}
{viewerdialog swilk "dialog swilk"}{...}
{viewerdialog sfrancia "dialog sfrancia"}{...}
{vieweralsosee "[R] swilk" "mansection R swilk"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] 诊断图" "help diagnostic plots"}{...}
{vieweralsosee "[R] lnskew0" "help lnskew0_zh"}{...}
{vieweralsosee "[R] lv" "help lv_zh"}{...}
{vieweralsosee "[MV] mvtest 正态性" "help mvtest_normality_zh"}{...}
{vieweralsosee "[R] sktest" "help sktest_zh"}{...}
{viewerjumpto "语法" "swilk_zh##syntax"}{...}
{viewerjumpto "菜单" "swilk_zh##menu"}{...}
{viewerjumpto "描述" "swilk_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "swilk_zh##linkspdf"}{...}
{viewerjumpto "swilk 选项" "swilk_zh##options_swilk"}{...}
{viewerjumpto "sfrancia 选项" "swilk_zh##options_sfrancia"}{...}
{viewerjumpto "备注" "swilk_zh##remarks"}{...}
{viewerjumpto "示例" "swilk_zh##examples"}{...}
{viewerjumpto "存储结果" "swilk_zh##results"}{...}
{viewerjumpto "参考文献" "swilk_zh##references"}
{help swilk:English Version}
{hline}{...}
{p2colset 1 14 16 2}{...}
{p2col:{bf:[R] swilk} {hline 2}}Shapiro-Wilk 和 Shapiro-Francia 正态性检验{p_end}
{p2col:}({mansection R swilk:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{pstd}
Shapiro-Wilk 正态性检验

{p 8 17 2}
{cmd:swilk} {varlist} {ifin} [{cmd:,}
         {it:{help swilk##swilk_options:swilk_options}}]


{pstd}
Shapiro-Francia 正态性检验

{p 8 17 2}
{cmd:sfrancia} {varlist} {ifin} [{cmd:,}
          {it:{help swilk##sfrancia_options:sfrancia_options}}]


{marker swilk_options}{...}
{synoptset 20 tabbed}{...}
{synopthdr :swilk_options}
{synoptline}
{syntab:主要}
{synopt:{opth g:enerate(newvar)}}创建包含 W 检验系数的新变量 {it:newvar}{p_end}
{synopt:{opt l:nnormal}}检验三参数对数正态性{p_end}
{synopt:{opt not:ies}}对并列值不使用平均秩{p_end}
{synoptline}
{p2colreset}{...}


{marker sfrancia_options}{...}
{synoptset 20 tabbed}{...}
{synopthdr :sfrancia_options}
{synoptline}
{syntab:主要}
{synopt:{opt boxcox}}对 W' 使用 Box-Cox 变换；默认使用对数变换{p_end}
{synopt:{opt not:ies}}对并列值不使用平均秩{p_end}
{synoptline}
{p2colreset}{...}


{p 4 6 2}
{opt by} 可以与 {opt swilk} 和 {opt sfrancia} 一起使用；详见 {manhelp by D}。


{marker menu}{...}
{title:菜单}

    {title:swilk}

{phang2}
{bf:统计 > 概括, 表格和检验 >}
    {bf:分布图和检验 > Shapiro-Wilk 正态性检验}

    {title:sfrancia}

{phang2}
{bf:统计 > 概括, 表格和检验 >}
     {bf:分布图和检验 > Shapiro-Francia 正态性检验}


{marker description}{...}
{title:描述}

{pstd}
{opt swilk} 对指定变量列表中的每个变量执行 Shapiro-Wilk W 检验以检验其正态性。同样，{cmd:sfrancia} 执行 Shapiro-Francia W' 检验以检验正态性。
有关多元正态性的检验，请参见 {manhelp mvtest_normality MV:mvtest 正态性}。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection R swilkQuickstart:快速入门}

        {mansection R swilkRemarksandexamples:备注和示例}

        {mansection R swilkMethodsandformulas:方法和公式}

{pstd}
以上部分未包含在此帮助文件中。


{marker options_swilk}{...}
{title:swilk 的选项}

{dlgtab:主要}

{phang}
{opth generate(newvar)} 创建新变量 {it:newvar}，包含 W 检验系数。

{phang}
{opt lnnormal} 指定进行三参数对数正态性检验，即检验 ln(X-k) 是否正态，其中 k 是从数据中计算出来的，使得偏度系数为零的值。当仅检验 ln(X) 的正态性时，不要指定此选项。有关 k 的估计，详见 {manhelp lnskew0 R}。

{phang}
{opt noties} 在计算 W 检验系数时，抑制对并列值使用平均秩。


{marker options_sfrancia}{...}
{title:sfrancia 的选项}

{dlgtab:主要}

{phang} 
{opt boxcox} 指定使用 Royston (1983) 的 Box-Cox 变换来计算 W' 检验系数，而不是默认的对数变换 (Royston 1993)。在 Box-Cox 变换下，{cmd:sfrancia} 使用的 W' 的采样分布的正常近似在 5<=n<=1000 的情况下是有效的。在对数变换下，它在 10<=n<=5000 的情况下是有效的。

{phang}
{opt noties} 在计算 W' 检验系数时，抑制对并列值使用平均秩。


{marker remarks}{...}
{title:备注}

{pstd}
{opt swilk} 可用于 4<=n<=2000 个观测值。{opt sfrancia} 可用于 10<=n<=5000 个观测值；但是，如果指定了 {opt boxcox} 选项，则可用于 5<=n<=1000 个观测值。


{marker examples}{...}
{title:示例}

    {hline}
    设置
{phang2}{cmd:. sysuse auto}{p_end}

{pstd}测试 {cmd:mpg} 和 {cmd:trunk} 是否服从正态分布{p_end}
{phang2}{cmd:. swilk mpg trunk}{p_end}

    {hline}
    设置
{phang2}{cmd:. sysuse cancer}{p_end}
{phang2}{cmd:. generate lnstudytime = ln(studytime)}{p_end}

{pstd}测试 {cmd:studytime} 是否服从对数正态分布{p_end}
{phang2}{cmd:. swilk lnstudytime}{p_end}

{pstd}测试 ln({cmd:studytime} - k) 是否服从正态分布，其中 k 的选择使得结果的偏度为零{p_end}
{phang2}{cmd:. lnskew0 lnstudytimek = studytime, level(95)}{p_end}
{phang2}{cmd:. swilk lnstudytimek, lnnormal}{p_end}

    {hline}
    设置
{phang2}{cmd:. webuse lbw, clear}{p_end}

{pstd}使用默认对数变换进行 Shapiro-Francia 正态性检验{p_end}
{phang2}{cmd:. sfrancia bwt}{p_end}

{pstd}使用 Box-Cox 变换进行 Shapiro-Francia 正态性检验{p_end}
{phang2}{cmd:. sfrancia bwt, boxcox}{p_end}

    {hline}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:swilk} 和 {cmd:sfrancia} 在 {cmd:r()} 中存储以下内容：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:r(N)}}观测值数量{p_end}
{synopt:{cmd:r(p)}}p值{p_end}
{synopt:{cmd:r(z)}}z 统计量{p_end}
{synopt:{cmd:r(W)}}W 或 W'{p_end}
{synopt:{cmd:r(V)}}V 或 V'{p_end}
{p2colreset}{...}


{marker references}{...}
{title:参考文献}

{marker R1983}{...}
{phang}
Royston, P. 1983. A simple method for evaluating the Shapiro-Francia W' test
for non-normality. {it:Statistician} 32: 297-300.

{marker R1993}{...}
{phang}
------. 1993. A pocket-calculator algorithm for the Shapiro-Francia test
for non-normality: An application to medicine. {it:Statistics in Medicine}
12: 181-184.
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <swilk.sthlp>}