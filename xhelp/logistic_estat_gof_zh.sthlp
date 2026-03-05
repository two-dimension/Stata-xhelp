{smcl}
{* *! version 1.0.8  19oct2017}{...}
{viewerdialog estat "dialog logit_estat"}{...}
{vieweralsosee "[R] estat gof" "mansection R estatgof"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] logistic" "help logistic_zh"}{...}
{vieweralsosee "[R] logit" "help logit_zh"}{...}
{vieweralsosee "[R] probit" "help probit_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] estat classification" "help estat classification"}{...}
{vieweralsosee "[R] lroc" "help lroc_zh"}{...}
{vieweralsosee "[R] lsens" "help lsens_zh"}{...}
{viewerjumpto "Syntax" "logistic estat gof##syntax"}{...}
{viewerjumpto "Menu for estat" "logistic estat gof##menu_estat"}{...}
{viewerjumpto "Description" "logistic estat gof##description"}{...}
{viewerjumpto "Links to PDF documentation" "logistic_estat_gof_zh##linkspdf"}{...}
{viewerjumpto "Options" "logistic estat gof##options"}{...}
{viewerjumpto "Examples" "logistic estat gof##examples"}{...}
{viewerjumpto "Stored results" "logistic estat gof##results"}
{help logistic_estat_gof:English Version}
{hline}{...}
{p2colset 1 18 20 2}{...}
{p2col:{bf:[R] estat gof} {hline 2}}Pearson 或 Hosmer-Lemeshow 拟合优度检验{p_end}
{p2col:}({mansection R estatgof:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}

{marker syntax}{...}
{title:语法}

{p 8 14 2}
{cmd:estat gof} {ifin}
[{it:{help logistic estat gof##weight:weight}}]
[{cmd:,} {it:options}]

{synoptset 20 tabbed}{...}
{synopthdr :gof_options}
{synoptline}
{syntab :Main}
{synopt :{opt g:roup(#)}}使用 {it:#} 个分位数执行 Hosmer-Lemeshow 拟合优度检验{p_end}
{synopt :{opt all}}对数据中的所有观察执行检验{p_end}
{synopt :{opt out:sample}}对估计样本外的样本调整自由度{p_end}
{synopt :{opt t:able}}显示用于检验的组的表格{p_end}
{synoptline}
{p2colreset}{...}
{marker weight}{...}
{p 4 6 2}{opt fweight}被允许；请参见 {help weight_zh}.{p_end}
{p 4 6 2}{cmd:estat} {cmd:gof} 在 {cmd:svy} 前缀之后不可用。

INCLUDE help menu_estat

{marker description}{...}
{title:描述}

{pstd}
{cmd:estat gof} 报告 Pearson 拟合优度检验或 Hosmer-Lemeshow 拟合优度检验。

{pstd}
{cmd:estat gof} 要求当前估计结果来自 {help logistic_zh}、{help logit_zh} 或 {help probit_zh}。对于 {cmd:estat gof} 在 {cmd:poisson} 之后，请参见 {helpb poisson postestimation:[R] poisson postestimation}。对于 {cmd:estat gof} 在 {cmd:sem} 之后，请参见 {helpb sem estat gof:[SEM] estat gof}。

{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection R estatgofQuickstart:快速入门}

        {mansection R estatgofRemarksandexamples:备注和示例}

        {mansection R estatgofMethodsandformulas:方法和公式}

{pstd}
上述部分未包含在此帮助文件中。

{marker options}{...}
{title:选项}

{dlgtab:Main}

{phang}
{opt group(#)} 指定用于对数据进行分组的分位数数量以执行 Hosmer-Lemeshow 拟合优度检验。通常指定 {cmd:group(10)}。如果未给出此选项，则使用数据中的协变量模式作为组计算 Pearson 拟合优度检验。

{phang}
{opt all} 请求对数据中的所有观察计算统计量，忽略估计命令指定的任何 {opt if} 或 {opt in} 限制。

{phang}
{opt outsample} 对 Pearson 和 Hosmer-Lemeshow 拟合优度检验的自由度进行调整，以适应估计样本外的样本。请参阅 {mansection R estatgofRemarksandexamplesSamplesotherthantheestimationsample:{it:样本其他于估计样本}} 在 {bf:[R] estat gof} 中。

{phang}
{opt table} 显示用于 Hosmer-Lemeshow 或 Pearson 拟合优度检验的组的表格，包括预测概率、观察和预期计数以及每组的总数。

{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse lbw}

{pstd}拟合逻辑回归以预测低出生体重{p_end}
{phang2}{cmd:. logistic low age lwt i.race smoke ptl ht ui}

{pstd}执行拟合优度检验{p_end}
{phang2}{cmd:. estat gof}

{pstd}与上述相同，但使用 10 个分位数{p_end}
{phang2}{cmd:. estat gof, group(10)}

{pstd}与上述相同，但显示用于检验的组的表格{p_end}
{phang2}{cmd:. estat gof, group(10) table}

{marker results}{...}
{title:存储结果}

{pstd}
{cmd:estat gof} 在 {cmd:r()} 中存储以下内容：

{synoptset 20 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:r(N)}}观察数量{p_end}
{synopt:{cmd:r(m)}}协变量模式或组的数量{p_end}
{synopt:{cmd:r(df)}}自由度{p_end}
{synopt:{cmd:r(chi2)}}卡方{p_end}
{synopt:{cmd:r(p)}}卡方检验的 p 值{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <logistic_estat_gof.sthlp>}