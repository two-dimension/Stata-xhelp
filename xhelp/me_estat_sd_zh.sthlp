{smcl}
{* *! version 1.0.9  20mar2019}{...}
{viewerdialog estat "dialog estat"}{...}
{vieweralsosee "[ME] estat sd" "mansection ME estatsd"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[ME] mecloglog" "help mecloglog_zh"}{...}
{vieweralsosee "[ME] meglm" "help meglm_zh"}{...}
{vieweralsosee "[ME] meintreg" "help meintreg_zh"}{...}
{vieweralsosee "[ME] melogit" "help melogit_zh"}{...}
{vieweralsosee "[ME] menbreg" "help menbreg_zh"}{...}
{vieweralsosee "[ME] menl" "help menl_zh"}{...}
{vieweralsosee "[ME] meologit" "help meologit_zh"}{...}
{vieweralsosee "[ME] meoprobit" "help meoprobit_zh"}{...}
{vieweralsosee "[ME] mepoisson" "help mepoisson_zh"}{...}
{vieweralsosee "[ME] meprobit" "help meprobit_zh"}{...}
{vieweralsosee "[ME] mestreg" "help mestreg_zh"}{...}
{vieweralsosee "[ME] metobit" "help metobit_zh"}{...}
{vieweralsosee "[ME] mixed" "help mixed_zh"}{...}
{viewerjumpto "Syntax" "me estat sd##syntax"}{...}
{viewerjumpto "Menu for estat" "me estat sd##menu_estat"}{...}
{viewerjumpto "Description" "me estat sd##description"}{...}
{viewerjumpto "Links to PDF documentation" "me_estat_sd_zh##linkspdf"}{...}
{viewerjumpto "Options" "me estat sd##option_estat_sd"}{...}
{viewerjumpto "Examples" "me estat sd##examples"}{...}
{viewerjumpto "Stored results" "me estat sd##results"}
{help me_estat_sd:English Version}
{hline}{...}
{p2colset 1 18 20 2}{...}
{p2col:{bf:[ME] estat sd} {hline 2}}显示方差成分的标准差和相关性{p_end}
{p2col:}({mansection ME estatsd:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 14 2}
{cmd:estat} {opt sd} [{cmd:,} 
	{opt var:iance} {opt verbose} {opt post} {opt coefl:egend}]


INCLUDE help menu_estat


{marker description}{...}
{title:描述}

{pstd}
{cmd:estat sd} 显示随机效应和组内误差参数估计值的标准差和相关性。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection ME estatsdRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker option_estat_sd}{...}
{title:选项}

{phang}
{cmd:variance} 指定 {cmd:estat sd} 显示随机效应和组内误差参数估计值的方差和协方差。如果指定了 {cmd:post} 选项，则估计的方差和协方差及其相应的标准误差将发布到 {cmd:e()} 中。
{cmd:variance} 仅在 {help menl_zh} 之后允许使用。

{phang}
{cmd:verbose} 指定显示完整的估计表。默认情况下，仅显示随机效应和组内误差参数。当指定 {cmd:post} 选项时，此选项是隐含的。

{phang}
{opt post} 使得 {opt estat sd} 的行为类似于 Stata 的估计（e类）命令。{opt estat sd} 将计算得到的标准差和相关参数的向量以及相应的方差-协方差矩阵发布到 {cmd:e()} 中，以便可以像处理其他估计命令的结果一样处理这些估计参数。例如，可以使用 {cmd:test} 对参数进行同时假设检验，或者使用 {cmd:lincom} 创建线性组合。

{pstd}
以下选项未在对话框中显示：

{marker coeflegend}{...}
{phang}
{opt coeflegend} 指定显示系数的图例及其在表达式中的指定方式，而不是显示系数的统计数据。仅当同时指定 {cmd:verbose} 或 {cmd:post} 时，此选项才被允许。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse pig}{p_end}
{phang2}{cmd:. mixed weight week || id: week, covariance(unstructured)}{p_end}

{pstd}显示估计的方差成分的相关性和标准差{p_end}
{phang2}{cmd:. estat sd}

{pstd}与上面相同，但显示完整的估计表{p_end}
{phang2}{cmd:. estat sd, verbose}{p_end}


{marker results}{...}
{title:存储的结果}

{pstd}
{cmd:estat sd} 将以下内容存储到 {cmd:r()} 中：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2:标量}{p_end}
{synopt:{cmd:r(level)}}置信水平{p_end}

{p2col 5 15 19 2:矩阵}{p_end}
{synopt:{cmd:r(b)}}系数向量{p_end}
{synopt:{cmd:r(V)}}估计量的方差-协方差矩阵{p_end}
{synopt:{cmd:r(table)}}结果表{p_end}

{pstd}
如果指定了 {cmd:post}，{cmd:estat sd} 将以下内容存储到 {cmd:e()} 中：

{p2col 5 15 19 2:宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:estat sd}{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}

{p2col 5 15 19 2:矩阵}{p_end}
{synopt:{cmd:e(b)}}系数向量{p_end}
{synopt:{cmd:e(V)}}估计量的方差-协方差矩阵{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <me_estat_sd.sthlp>}