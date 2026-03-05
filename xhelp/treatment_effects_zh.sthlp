{smcl}
{* *! version 1.0.13  02apr2019}{...}
{vieweralsosee "[TE] Treatment effects" "mansection TE Treatmenteffects"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TE] teffects intro" "help teffects intro"}{...}
{vieweralsosee "[TE] teffects multivalued" "help teffects multivalued"}{...}
{vieweralsosee "[TE] stteffects intro" "help stteffects intro"}{...}
{vieweralsosee "[TE] Glossary" "help te_glossary_zh"}{...}
{viewerjumpto "Description" "treatment effects##description"}
{help treatment_effects:English Version}
{hline}{...}
{p2colset 1 27 29 2}{...}
{p2col:{bf:[TE] Treatment effects} {hline 2}}治疗效果命令简介{p_end}
{p2col:}({mansection TE Treatmenteffects:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:描述}

{pstd}
本手册记录了使用观察数据来估计接受一种治疗而非另一种治疗所造成的效果的命令。在观察数据中，治疗分配不由收集数据的人员控制；因此，一些常见变量影响治疗分配和特定治疗结果。观察数据有时被称为回顾数据或非实验数据，但为了避免混淆，我们将始终使用“观察数据”这一术语。

{pstd}
当所有影响治疗分配和结果的变量都可以观察时，结果被称为相对独立于治疗，并可以使用 {cmd:teffects} 和 {cmd:stteffects} 估计量。

{pstd}
当并非所有影响治疗分配和结果的变量都可以观察时，结果就不是相对独立于治疗，并可以使用 {cmd:eteffects}、{cmd:etpoisson} 或 {cmd:etregress}。

{pstd}
{cmd:teeffects} 和 {cmd:stteffects} 提供了在治疗分配模型中使用估计量和功能形式的灵活性。{cmd:teeffects} 提供了适用于连续、二元、计数、分数和非负结果变量的模型。{cmd:stteffects} 提供了多种生存时间结果的功能形式。有关更多信息，请参见
{bf:{mansection TE teffectsintro:[TE] teffects 介绍}}、
{bf:{mansection TE teffectsintroadvanced:[TE] teffects 高级介绍}}和
{bf:{mansection TE stteffectsintro:[TE] stteffects 介绍}}。

{pstd}
{cmd:eteffects}、{cmd:etpoisson} 和 {cmd:etregress} 提供的灵活性低于 {cmd:teeffects}，因为在不假设条件独立性时必须施加更多结构。{cmd:eteffects} 适用于连续、二元、计数、分数和非负结果，并使用二元处理的 probit 模型；请参见 {manhelp eteffects TE}。{cmd:etpoisson} 适用于计数结果，并使用正态分布来建模治疗分配；请参见 {help etpoisson_zh:[TE] etpoisson}。{cmd:etregress} 适用于线性结果，并使用正态分布来建模治疗分配；请参见 {help etregress_zh:[TE] etregress}。


    {title:治疗效果}

{p 8 36 2}{helpb teffects aipw} {space 11} 增强的逆概率加权{p_end}
{p 8 36 2}{helpb teffects ipw} {space 12} 逆概率加权{p_end}
{p 8 36 2}{helpb teffects ipwra} {space 10} 逆概率加权回归调整{p_end}
{p 8 36 2}{helpb teffects nnmatch} {space 8} 最近邻匹配{p_end}
{p 8 36 2}{helpb teffects psmatch} {space 8} 倾向得分匹配{p_end}
{p 8 36 2}{helpb teffects ra} {space 13} 回归调整{p_end}


    {title:生存治疗效果}

{p 8 36 2}{helpb stteffects ipw} {space 10} 生存时间逆概率加权{p_end}
{p 8 36 2}{helpb stteffects ipwra} {space 8} 生存时间逆概率加权回归调整{p_end}
{p 8 36 2}{helpb stteeffects ra} {space 11} 生存时间回归调整{p_end}
{p 8 36 2}{helpb stteffects wra} {space 10} 生存时间加权回归调整{p_end}


    {title:内生治疗效果}

{p 8 36 2}{help eteffects_zh} {space 15} 内生治疗效果估计{p_end}
{p 8 36 2}{help etpoisson_zh} {space 15} 具有内生治疗效果的泊松回归{p_end}
{p 8 36 2}{help etregress_zh} {space 15} 具有内生治疗效果的线性回归{p_end}


{pstd}{bf:{ul:具有样本选择、内生协变量和随机效应的治疗效果}}

{p 8 36 2}{help eregress_zh} {space 16} 扩展线性回归{p_end}
{p 8 36 2}{help eintreg_zh} {space 17} 扩展区间回归{p_end}
{p 8 36 2}{help eprobit_zh} {space 17} 扩展 Probit 回归{p_end}
{p 8 36 2}{help eoprobit_zh} {space 16} 扩展有序 Probit 回归{p_end}


    {title:后估计工具}

{p 8 36 2}{help tebalance_zh} {space 15} 检查 teffects 或 stteffects 估计后的平衡{p_end}
{p 8 36 2}{helpb tebalance box} {space 11} 协变量平衡框{p_end}
{p 8 36 2}{helpb tebalance density} {space 7} 协变量平衡密度{p_end}
{p 8 36 2}{helpb tebalance overid} {space 8} 协变量平衡的测试{p_end}
{p 8 36 2}{helpb tebalance summarize} {space 5} 协变量平衡汇总统计{p_end}

{p 8 36 2}{helpb teffects overlap}{space 10}重叠图{p_end}

{p 8 36 2}{helpb eteffects postestimation}{space 2}内生治疗效果的后估计工具{p_end}
{p 8 36 2}{helpb etpoisson postestimation}{space 2}内生泊松回归的后估计工具{p_end}
{p 8 36 2}{helpb etregress postestimation}{space 2}内生线性回归的后估计工具{p_end}
{p 8 36 2}{helpb stteffects postestimation}{space 2}生存治疗效果的后估计工具{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <treatment_effects.sthlp>}