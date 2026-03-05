{smcl}
{* *! version 2.1.11  31oct2018}{...}
{viewerdialog "estimates stats" "dialog estimates_stats"}{...}
{vieweralsosee "[R] estimates stats" "mansection R estimatesstats"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] estimates" "help estimates_zh"}{...}
{viewerjumpto "Syntax" "estimates_stats_zh##syntax"}{...}
{viewerjumpto "Menu" "estimates_stats_zh##menu"}{...}
{viewerjumpto "Description" "estimates_stats_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "estimates_stats_zh##linkspdf"}{...}
{viewerjumpto "Options" "estimates_stats_zh##options"}{...}
{viewerjumpto "Examples" "estimates_stats_zh##examples"}{...}
{viewerjumpto "Stored results" "estimates_stats_zh##results"}
{help estimates_stats:English Version}
{hline}{...}
{p2colset 1 24 26 2}{...}
{p2col:{bf:[R] estimates stats} {hline 2}}模型选择统计量{p_end}
{p2col:}({mansection R estimatesstats:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{opt est:imates} {opt stat:s} 
[{it:namelist}]
[{cmd:,}
{cmd:n(}{it:#}{cmd:)} {opt bicdetail}]

{phang}
其中 {it:namelist} 是一个名称、名称列表、 {cmd:_all} 或 
{cmd:*}.{break}
一个名称可以是 {cmd:.}，表示当前（活动）的估计值.{break}
{cmd:_all} 和 {cmd:*} 的意思是相同的。


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 后期估计}


{marker description}{...}
{title:描述}

{pstd}
{cmd:estimates} {cmd:stats} 报告模型选择统计量，包括
赤池信息量准则 (AIC) 和贝叶斯信息量准则 (BIC)。这些指标适用于最大似然模型。

{pstd}
如果 {cmd:estimates} {cmd:stats} 被用于非基于似然的模型，
如 {cmd:qreg}，则将报告缺失值。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection R estimatesstatsQuickstart:快速开始}

        {mansection R estimatesstatsRemarksandexamples:备注和示例}

        {mansection R estimatesstatsMethodsandformulas:方法和公式}

{pstd}
上述部分不包含在本帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{cmd:n(}{it:#}{cmd:)} 指定用于计算
    BIC 的 {it:N}; 详见 {bf:{help bic_note_zh:[R] BIC 注释}}。

{phang}
{opt bicdetail} 生成一个表格，显示用于 BIC
计算的 N 类型。大多数估计命令使用估计样本中的观测数量作为 BIC。然而，对于某些模型，比如选择模型中的案例数量，应该用于计算 BIC。当 {cmd:estimates} {cmd:stats} 的默认表格包含多种类型的 N 时，指定 {cmd:bicdetail} 允许您查看用于 BIC 的不同类型的 N。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. sysuse auto}{p_end}
{phang2}{cmd:. logistic foreign mpg weight displ}

{pstd}为最近的估计结果创建一个表格{p_end}
{phang2}{cmd:. estimates stats}

{pstd}比较两个模型{p_end}
{phang2}{cmd:. logistic foreign mpg weight displ}{p_end}
{phang2}{cmd:. estimates store full}{p_end}
{phang2}{cmd:. logistic foreign mpg weight}{p_end}
{phang2}{cmd:. estimates store sub}{p_end}
{phang2}{cmd:. estimates stats full sub}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:estimates} {cmd:stats} 在 {cmd:r()} 中存储以下内容：

	矩阵
{p2col 12 23 25 2:  {cmd:r(S)}}矩阵包含6列（N、ll0、ll、df、AIC 和
                            BIC）以及与表中模型对应的行
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <estimates_stats.sthlp>}