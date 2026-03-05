{smcl}
{* *! version 1.2.4  14may2018}{...}
{viewerdialog ladder "dialog ladder"}{...}
{viewerdialog gladder "dialog gladder"}{...}
{viewerdialog qladder "dialog qladder"}{...}
{vieweralsosee "[R] ladder" "mansection R ladder"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] boxcox" "help boxcox_zh"}{...}
{vieweralsosee "[R] Diagnostic plots" "help diagnostic_plots_zh"}{...}
{vieweralsosee "[R] lnskew0" "help lnskew0_zh"}{...}
{vieweralsosee "[R] lv" "help lv_zh"}{...}
{vieweralsosee "[R] sktest" "help sktest_zh"}{...}
{viewerjumpto "Syntax" "ladder_zh##syntax"}{...}
{viewerjumpto "Menu" "ladder_zh##menu"}{...}
{viewerjumpto "Description" "ladder_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "ladder_zh##linkspdf"}{...}
{viewerjumpto "Options for ladder" "ladder_zh##options_ladder"}{...}
{viewerjumpto "Options for gladder" "ladder_zh##options_gladder"}{...}
{viewerjumpto "Options for qladder" "ladder_zh##options_qladder"}{...}
{viewerjumpto "Examples" "ladder_zh##examples"}{...}
{viewerjumpto "Stored results" "ladder_zh##results"}{...}
{viewerjumpto "Reference" "ladder_zh##reference"}
{help ladder:English Version}
{hline}{...}
{p2colset 1 15 17 2}{...}
{p2col:{bf:[R] ladder} {hline 2}}幂次阶梯{p_end}
{p2col:}({mansection R ladder:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{phang}
幂次阶梯

{p 8 15 2}
{cmd:ladder} {varname} {ifin} [{cmd:,} {opth g:enerate(newvar)} {opt noa:djust}]


{phang}
幂次阶梯直方图

{p 8 16 2}
{cmd:gladder} {varname} {ifin} [{cmd:,}
 {it:{help ladder##histogram_options:直方图选项}}
 {it:{help ladder##combine_options:组合选项}}]


{phang}
幂次阶梯分位数-正态图

{p 8 16 2}
{cmd:qladder} {varname} {ifin} [{cmd:,} 
{it:{help ladder##qnorm_options:qnorm选项}}
{it:{help ladder##combine_options:组合选项}}]


{p 4 6 2}
{cmd:by} 允许与 {cmd:ladder} 一起使用；见 {manhelp by D}。


{marker menu}{...}
{title:菜单}

    {title:ladder} 

{phang2}
{bf:统计 > 摘要、表格和检验 >}
    {bf:分布图和检验 > 幂次阶梯}

    {title:gladder}

{phang2}
{bf:统计 > 摘要、表格和检验 >}
     {bf:分布图和检验 > 幂次阶梯直方图}

     {title:qladder}

{phang2}
{bf:统计 > 摘要、表格和检验 >}
    {bf:分布图和检验 > 幂次阶梯分位数-正态图}


{marker description}{...}
{title:描述}

{pstd}
{cmd:ladder} 在幂次阶梯的子集 ({help ladder##T1977:Tukey 1977}) 中搜索一个变换，使得 {varname} 转换为一个正态分布变量。

{pstd}
{cmd:gladder} 和 {cmd:qladder} 各自显示一个图形矩阵。{cmd:gladder} 显示根据幂次阶梯变换的 {it:varname} 的九个直方图。{cmd:qladder} 显示根据幂次阶梯变换的 {it:varname} 的分位数与正态分布分位数的比较图。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection R ladderQuickstart:快速入门}

        {mansection R ladderRemarksandexamples:备注和示例}

        {mansection R ladderMethodsandformulas:方法和公式}

{pstd}
上述部分不包括在此帮助文件中。


{marker options_ladder}{...}
{title:ladder 选项}

{dlgtab:主要}

{phang}
{opth generate(newvar)} 保存与表中最小卡方值对应的变换值。我们不推荐使用 {opt generate()}，因为它在解释最小值时是字面意义上的，从而忽视了几乎相等但可能更可解释的变换。

{phang}
{opt noadjust} 是 {cmd:sktest} 的 {opt noadjust} 选项；见 {manhelp sktest R}。


{marker options_gladder}{...}
{title:gladder 选项}

{phang}
{marker histogram_options}
{it:histogram_options} 影响所有相关变换的直方图呈现；见 {manhelp histogram R}。此处假设使用 {opt normal} 选项，因此必须提供 {opt nonormal} 选项以抑制叠加的正态密度。此外，{cmd:gladder} 不允许使用 {cmd:histogram} 的 {opt width(#)} 选项。

{phang}
{marker combine_options}
{it:combine_options} 是在 {helpb graph combine:[G-2] graph combine} 中记录的任何选项。这些选项包括图形标题的选项（见 {manhelpi title_options G-3}）和将图形保存到磁盘的选项（见 {manhelpi saving_option G-3}）。


{marker options_qladder}{...}
{title:qladder 选项}

{phang}
{marker qnorm_options}
{it:qnorm_options} 影响所有相关变换的分位数-正态图的呈现。请参见 {help diagnostic plots##options2:options2} 在 {bf:[R] Diagnostic plots} 中。

{phang}
{marker combine_options}
{it:combine_options} 是在 {helpb graph combine:[G-2] graph combine} 中记录的任何选项。这些选项包括图形标题的选项（见 {manhelpi title_options G-3}）和将图形保存到磁盘的选项（见 {manhelpi saving_option G-3}）。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. sysuse citytemp}{p_end}

{pstd}搜索幂次阶梯中转换 {cmd:tempjuly} 为正态分布的函数{p_end}
{phang2}{cmd:. ladder tempjuly}{p_end}

{pstd}为每个变换绘制直方图；去除坐标轴标签{p_end}
{phang2}{cmd:. gladder tempjuly, l1title("") ylabel(none) xlabel(none)}{p_end}

{pstd}为每个变换绘制分位数-正态图；去除坐标轴标签{p_end}
{phang2}{cmd:. qladder tempjuly, ylabel(none) xlabel(none)}


{marker results}{...}
{title:存储的结果}

{pstd}
{cmd:ladder} 将以下内容存储在 {cmd:r()} 中：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2:标量}{p_end}
{synopt:{cmd:r(N)}}观察数量{p_end}
{synopt:{cmd:r(invcube)}}逆立方变换的卡方值{p_end}
{synopt:{cmd:r(P_invcube)}}逆立方变换后正态性检验的 p 值{p_end}
{synopt:{cmd:r(invsq)}}逆平方变换的卡方值{p_end}
{synopt:{cmd:r(P_invsq)}}逆平方变换后正态性检验的 p 值{p_end}
{synopt:{cmd:r(inv)}}逆变换的卡方值{p_end}
{synopt:{cmd:r(P_inv)}}逆变换后正态性检验的 p 值{p_end}
{synopt:{cmd:r(invsqrt)}}逆平方根变换的卡方值{p_end}
{synopt:{cmd:r(P_invsqrt)}}逆平方根变换后正态性检验的 p 值{p_end}
{synopt:{cmd:r(log)}}对数变换的卡方值{p_end}
{synopt:{cmd:r(P_log)}}对数变换后正态性检验的 p 值{p_end}
{synopt:{cmd:r(sqrt)}}平方根变换的卡方值{p_end}
{synopt:{cmd:r(P_sqrt)}}平方根变换后正态性检验的 p 值{p_end}
{synopt:{cmd:r(ident)}}未变换数据的卡方值{p_end}
{synopt:{cmd:r(P_ident)}}未变换数据的正态性检验 p 值{p_end}
{synopt:{cmd:r(square)}}平方变换的卡方值{p_end}
{synopt:{cmd:r(P_square)}}平方变换后正态性检验的 p 值{p_end}
{synopt:{cmd:r(cube)}}立方变换的卡方值{p_end}
{synopt:{cmd:r(P_cube)}}立方变换后正态性检验的 p 值{p_end}
{p2colreset}{...}


{marker reference}{...}
{title:参考文献}

{marker T1977}{...}
{phang}
Tukey, J. W. 1977. {it:探索性数据分析}.
马萨诸塞州雷丁市：阿迪生-韦斯利出版社。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <ladder.sthlp>}