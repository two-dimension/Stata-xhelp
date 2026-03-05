{smcl}
{* *! version 1.2.0  16apr2018}{...}
{viewerdialog correlate "dialog correlate"}{...}
{viewerdialog pwcorr "dialog pwcorr"}{...}
{vieweralsosee "[R] correlate" "mansection R correlate"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] esize" "help esize_zh"}{...}
{vieweralsosee "[R] estat vce" "help estat vce"}{...}
{vieweralsosee "[R] icc" "help icc_zh"}{...}
{vieweralsosee "[R] pcorr" "help pcorr_zh"}{...}
{vieweralsosee "[R] spearman" "help spearman_zh"}{...}
{vieweralsosee "[R] summarize" "help summarize_zh"}{...}
{vieweralsosee "[R] tetrachoric" "help tetrachoric_zh"}{...}
{viewerjumpto "Syntax" "correlate_zh##syntax"}{...}
{viewerjumpto "Menu" "correlate_zh##menu"}{...}
{viewerjumpto "Description" "correlate_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "correlate_zh##linkspdf"}{...}
{viewerjumpto "Options for correlate" "correlate_zh##options_correlate"}{...}
{viewerjumpto "Options for pwcorr" "correlate_zh##options_pwcorr"}{...}
{viewerjumpto "Examples" "correlate_zh##examples"}{...}
{viewerjumpto "Video example" "correlate_zh##video"}{...}
{viewerjumpto "Stored results" "correlate_zh##results"}
{help correlate:English Version}
{hline}{...}
{p2colset 1 18 20 2}{...}
{p2col:{bf:[R] correlate} {hline 2}}变量的相关性{p_end}
{p2col:}({mansection R correlate:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{phang}显示相关矩阵或协方差矩阵

{p 8 18 2}
{opt cor:relate}
[{varlist}]
{ifin}
[{it:{help correlate##weight:权重}}]
[{cmd:,} {it:{help correlate##correlate_options:相关选项}}]


{phang}显示所有成对相关系数

{p 8 18 2}
{cmd:pwcorr}
[{varlist}]
{ifin}
[{it:{help correlate##weight:权重}}]
[{cmd:,} {it:{help correlate##pwcorr_options:pwcorr选项}}]


{synoptset 19 tabbed}{...}
{marker correlate_options}{...}
{synopthdr :相关选项}
{synoptline}
{syntab :选项}
{synopt :{opt m:eans}}与矩阵一起显示均值、标准差、最小值和最大值{p_end}
{synopt :{opt nof:ormat}}忽略与变量相关的显示格式{p_end}
{synopt :{opt c:ovariance}}显示协方差{p_end}
{synopt :{opt w:rap}}允许宽矩阵换行{p_end}
{synoptline}
{p2colreset}{...}

{synoptset 19 tabbed}{...}
{marker pwcorr_options}{...}
{synopthdr :pwcorr选项}
{synoptline}
{syntab :主要}
{synopt :{opt o:bs}}为每个条目打印观察数{p_end}
{synopt :{opt sig}}为每个条目打印显著性水平{p_end}
{synopt :{opt list:wise}}使用逐项删除处理缺失值{p_end}
{synopt :{opt case:wise}}{opt listwise}的同义词{p_end}
{synopt :{opt p:rint(#)}}显示系数的显著性水平{p_end}
{synopt :{opt st:ar(#)}}显示星号的显著性水平{p_end}
{synopt :{opt b:onferroni}}使用 Bonferroni 调整的显著性水平{p_end}
{synopt :{opt sid:ak}}使用 Sidak 调整的显著性水平{p_end}
{synoptline}
{p2colreset}{...}

{p 4 6 2}
{it:varlist} 可以包含时间序列运算符；见 {help tsvarlist_zh}。{p_end}
{p 4 6 2}
{opt by} 允许与 {opt correlate} 和 {opt pwcorr} 一起使用；见 
{manhelp by D}。{p_end}
{marker weight}{...}
{p 4 6 2}
{opt aweight}s 和 {opt fweight}s 被允许；见 {help weight_zh}。


{marker menu}{...}
{title:菜单}

    {title:correlate}

{phang2}
{bf:统计 > 摘要、表格和测试 >}
     {bf:摘要和描述统计 > 相关性和协方差}

    {title:pwcorr}

{phang2}
{bf:统计 > 摘要、表格和测试 >}
      {bf:摘要和描述统计 > 成对相关性}


{marker description}{...}
{title:描述}

{pstd}
{opt correlate} 命令显示一组变量的相关矩阵或协方差矩阵。如果未指定 {varlist}，则显示数据集中所有变量的矩阵。

{pstd}
{opt pwcorr} 显示 {it:varlist} 中变量之间的所有成对相关系数，或者如果未指定 {it:varlist}，则显示数据集中所有变量的成对相关系数。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection R correlateQuickstart:快速入门}

        {mansection R correlateRemarksandexamples:备注和示例}

        {mansection R correlateMethodsandformulas:方法和公式}

{pstd}
上述部分不包括在此帮助文件中。


{marker options_correlate}{...}
{title:correlate 的选项}

{dlgtab:选项}

{phang}
{opt means} 显示摘要统计量（均值、标准差、最小值和最大值）与矩阵一起。

{phang}
{opt noformat} 将 {opt means} 选项请求的摘要统计量以 {opt g} 格式显示，而不管与变量相关的显示格式。

{phang}
{opt covariance} 显示协方差而不是相关系数。

{phang}
{opt wrap} 请求对宽相关矩阵不采取任何操作以使其可读。它防止 Stata 将宽矩阵拆分为几个部分以增强可读性。
如果您在宽于 80 个字符的窗口中显示结果，则可能需要指定此选项。然后您可能需要
{opt set linesize} 设置为您可以在一行中显示的字符数；见 {manhelp log R}。


{marker options_pwcorr}{...}
{title:pwcorr 的选项}

{dlgtab:主要}

{phang}
{opt obs} 在矩阵的每一行添加一行，报告用于计算相关系数的观察数量。

{phang}
{opt sig} 在矩阵的每一行添加一行，报告每个相关系数的显著性水平。

{phang}
{opt listwise} 通过逐项删除处理缺失值，这意味着如果 {it:varlist} 中的任何变量在该观察中缺失，则整个观察将被排除在估计样本之外。 默认情况下，{cmd:pwcorr} 通过成对删除处理缺失值；在计算每对相关性时，使用所有可用的观察，而不考虑该对外是否缺失。

{pmore}
{cmd:correlate} 使用逐项删除。因此，{opt listwise} 允许 {cmd:pwcorr} 的用户模仿 {cmd:correlate} 对缺失值的处理，同时保留访问 {cmd:pwcorr} 的功能。

{phang}
{opt casewise} 是 {opt listwise} 的同义词。

{phang}
{opt print(#)} 指定要打印的相关系数的显著性水平。 显著性水平较高的相关系数在矩阵中留空。 输入 {cmd:pwcorr, print(.10)} 将仅列出在 10% 水平或更好显著的相关系数。

{phang}
{opt star(#)} 指定要加星号的相关系数的显著性水平。 输入 {cmd:pwcorr, star(.05)} 将给所有在 5% 水平或更好显著的相关系数加星号。

{phang}
{opt bonferroni} 对计算的显著性水平进行 Bonferroni 调整。 此选项会影响打印的显著性水平以及 {cmd:print()} 和 {cmd:star()} 选项。 因此
{bind:{cmd:pwcorr, print(.05) bonferroni}} 打印显著性水平为 0.05 或更低的系数。

{phang}
{opt sidak} 对计算的显著性水平进行 Sidak 调整。 此选项会影响打印的显著性水平以及 {cmd:print()} 和 {cmd:star()} 选项。 因此 {bind:{cmd:pwcorr, print(.05) sidak}} 打印显著性水平为 0.05 或更低的系数。


{marker examples}{...}
{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse census13}{p_end}

{pstd}估计相关矩阵{p_end}
{phang2}{cmd:. correlate mrgrate dvcrate medage}{p_end}

{pstd}估计协方差矩阵；使用人口作为分析权重{p_end}
{phang2}{cmd:. correlate mrgrate dvcrate medage [aweight=pop], covariance}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. sysuse auto}{p_end}

{pstd}估计所有成对相关性{p_end}
{phang2}{cmd:. pwcorr price headroom mpg displacement}{p_end}

{pstd}为每个条目添加显著性水平{p_end}
{phang2}{cmd:. pwcorr price headroom mpg displacement, sig}{p_end}

{pstd}在 Bonferroni 调整后为 1% 水平的相关性添加星号{p_end}
{phang2}{cmd:. pwcorr price headroom mpg displacement, star(.01) bonferroni}
{p_end}

    {hline}


{marker video}{...}
{title:视频示例}

{phang}
{browse "http://www.youtube.com/watch?v=o7ko844ff-g":Stata 中的 Pearson 相关系数}


{marker results}{...}
{title:存储的结果}

{pstd}
{cmd:correlate} 在 {cmd:r()} 中存储以下内容：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:r(N)}}观察数量{p_end}
{synopt:{cmd:r(rho)}}rho（第一和第二变量）{p_end}
{synopt:{cmd:r(cov_12)}}协方差（仅 {cmd:covariance}）{p_end}
{synopt:{cmd:r(Var_1)}}第一个变量的方差（仅 {cmd:covariance}）{p_end}
{synopt:{cmd:r(Var_2)}}第二个变量的方差（仅 {cmd:covariance}）{p_end}
{synopt:{cmd:r(sum_w)}}权重总和{p_end}

{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:r(C)}}相关或协方差矩阵{p_end}

{pstd} 
{cmd:pwcorr} 在 {cmd:r()} 中存储以下内容：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:r(N)}}观察数量（第一和第二变量）{p_end}
{synopt:{cmd:r(rho)}}rho（第一和第二变量）{p_end}

{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:r(C)}}成对相关矩阵{p_end}
{synopt:{cmd:r(sig)}}每个相关系数的显著性水平{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <correlate.sthlp>}