{smcl}
{* *! version 1.3.1  14may2018}{...}
{vieweralsosee "[SEM]" "mansection SEM"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[SEM] sem introduction" "help sem_intro_zh"}{...}
{vieweralsosee "[SEM] sem examples" "help sem_examples_zh"}
{help sem:English Version}
{hline}{...}
{title:标题}

{p2colset 5 27 29 2}{...}
{p2col:{mansection SEM Intro1:{bf:[SEM] sem 和 gsem}} {hline 2}}结构方程模型简介{p_end}
{p2colreset}{...}


{title:资源}

{pstd}
如果您是 {cmd:sem} 的新手，请参阅{p_end}

{synoptset 34}{...}
{synoptline}{...}
{synopt :{help sem_intro_zh:简介}}sem 和 gsem 简介{p_end}
{synopt :{help sem_examples_zh:示例}}使用 sem 和 gsem 的示例{p_end}
{synoptline}{...}


{pstd}
如果您已经熟悉 {cmd:sem}，以下帮助文件将很有用：{p_end}

{pstd}{cmd:sem} 命令语法、路径符号和生成器{p_end}
{synoptline}{...}
{synopt :{help sem_builder_zh:生成器}}SEM 生成器{p_end}
{synopt :{help gsem_builder_zh:生成器，广义}}广义模型的 SEM 生成器{p_end}

{synopt :{help sem_command_zh:sem}}结构方程模型估计命令{p_end}
{synopt :{help gsem_command_zh:gsem}}广义结构方程模型估计命令{p_end}

{synopt :{helpb sem 和 gsem 路径符号}}路径图的命令语法{p_end}
{synopt :{helpb sem path notation extensions:sem 路径符号扩展}}路径图的命令语法{p_end}
{synopt :{helpb gsem path notation extensions:gsem 路径符号扩展}}路径图的命令语法{p_end}

{synopt :{help ssd_zh:ssd}}生成摘要统计数据（仅 sem 使用）{p_end}
{synoptline}{...}


{pstd}影响 {cmd:sem} 和 {cmd:gsem} 的选项类型{p_end}
{synoptline}{...}
{synopt :{help sem_estimation_options_zh:sem 估计选项}}影响估计的选项{p_end}
{synopt :{help gsem_estimation_options_zh:gsem 估计选项}}影响估计的选项{p_end}

{synopt :{help sem_group_options_zh:sem 组选项}}在不同组上拟合模型{p_end}
{synopt :{help gsem_group_options_zh:gsem 组选项}}在不同组上拟合模型{p_end}

{synopt :{help sem_model_options_zh:sem 模型描述选项}}模型描述选项{p_end}
{synopt :{help gsem_model_options_zh:gsem 模型描述选项}}模型描述选项{p_end}

{synopt :{help sem_reporting_options_zh:sem 报告选项}}影响结果报告的选项{p_end}
{synopt :{help gsem_reporting_options_zh:gsem 报告选项}}影响结果报告的选项{p_end}

{synopt :{help sem_ssd_options_zh:sem ssd 选项}}与摘要统计数据一起使用的选项（仅 sem 使用）{p_end}

{synopt :{help sem_and_gsem_syntax_options_zh:sem 和 gsem 语法选项}}影响语法解释的选项{p_end}
{synoptline}{...}


{pstd}影响 {cmd:sem} 和 {cmd:gsem} 的特定选项的进一步信息{p_end}
{synoptline}{...}
{synopt :{help sem_and_gsem_option_constraints_zh:sem 和 gsem 选项约束()}}指定约束{p_end}
{synopt :{help sem_and_gsem_option_covstructure_zh:sem 和 gsem 选项 covstructure()}}指定协方差限制{p_end}
{synopt :{help sem_and_gsem_option_from_zh:sem 和 gsem 选项 from()}}指定起始值{p_end}
{synopt :{help sem_and_gsem_option_reliability_zh:sem 和 gsem 选项 reliability()}}由于测量错误而不占方差的部分{p_end}

{synopt :{help sem_option_method_zh:sem 选项 method()}}指定方法和 VCE 计算{p_end}
{synopt :{help sem_option_noxconditional_zh:sem 选项 noxconditional}}计算观测外生变量的均值等{p_end}
{synopt :{help sem_option_select_zh:sem 选项 select()}}使用 sem 与摘要统计数据{p_end}

{synopt :{helpb gsem family and link options:gsem family-and-link 选项}}家族和链接选项{p_end}
{synoptline}{...}


{pstd}后估计命令{p_end}
{synoptline}{...}
{synopt :{helpb sem postestimation}}sem 的后估计工具{p_end}
{synopt :{helpb gsem postestimation}}gsem 的后估计工具{p_end}
{synoptline}{...}


{pstd}其他{p_end}
{synoptline}{...}
{synopt :{help sem_glossary_zh:词汇表}}词汇表{p_end}
{synopt :{bf:{mansection SEM Methodsandformulasforsem:sem 方法和公式}}}sem 的方法和公式{p_end}
{synopt :{bf:{mansection SEM Methodsandformulasforgsem:gsem 方法和公式}}}gsem 的方法和公式{p_end}
{synoptline}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <sem.sthlp>}