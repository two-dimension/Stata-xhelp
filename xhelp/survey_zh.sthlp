{smcl}
{* *! version 1.1.11  24jan2019}{...}
{vieweralsosee "[SVY] 调查" "mansection SVY Survey"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[SVY] svy" "help svy_zh"}{...}
{vieweralsosee "[SVY] svy 估计" "help svy estimation"}{...}
{vieweralsosee "[SVY] svyset" "help svyset_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[P] _robust" "help _robust_zh"}{...}
{viewerjumpto "描述" "survey_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "survey_zh##linkspdf"}{...}
{viewerjumpto "示例" "survey_zh##examples"}{...}
{viewerjumpto "视频示例" "survey_zh##video"}
{help survey:English Version}
{hline}{...}
{p2colset 1 17 19 2}{...}
{p2col:{bf:[SVY] 调查} {hline 2}}调查命令介绍
{p_end}
{p2col:}({mansection SVY Survey:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:描述}

{pstd}
Stata 的调查数据功能围绕 {cmd:svy} 前缀命令构建。 本概述以概念方式组织和呈现命令，即根据它们执行的功能相似性。

{p2colset 5 37 39 2}{...}
{pstd}
{bf:调查设计工具}

{p2col :{manhelp svyset SVY}}为数据集声明调查设计{p_end}
{p2col :{manhelp svydescribe SVY}}描述调查数据{p_end}


{pstd}
{bf:调查数据分析工具}

{p2col :{manhelp svy SVY}}调查前缀命令{p_end}
{p2col :{manhelp svy_estimation SVY:svy estimation}}用于调查数据的估计命令{p_end}
{p2col :{manhelp svy_tabulate_oneway SVY:svy: tabulate oneway}}用于调查数据的一元表{p_end}
{p2col :{manhelp svy_tabulate_twoway SVY:svy: tabulate twoway}}用于调查数据的双元表{p_end}
{p2col :{manhelp svy_postestimation SVY:svy postestimation}}svy 的后估计工具{p_end}
{p2col :{manhelp estat_svy SVY:estat}}调查数据的后估计统计信息，例如设计效应{p_end}
{p2col :{manhelp svy_bootstrap SVY:svy bootstrap}}用于调查数据的 Bootstrap{p_end}
{p2col :{manhelpi bootstrap_options SVY}}用于 Bootstrap 方差估计的更多选项{p_end}
{p2col :{manhelp svy_brr SVY:svy brr}}用于调查数据的平衡重复复制{p_end}
{p2col :{manhelpi brr_options SVY}}BRR 方差估计的更多选项{p_end}
{p2col :{manhelp svy_jackknife SVY:svy jackknife}}用于调查数据的 Jackknife 估计{p_end}
{p2col :{manhelpi jackknife_options SVY}}用于 Jackknife 方差估计的更多选项{p_end}
{p2col :{manhelp svy_sdr SVY:svy sdr}}用于调查数据的逐差复现{p_end}
{p2col :{manhelpi sdr_options SVY}}SDR 方差估计的更多选项{p_end}


{pstd}
{bf:调查数据概念}

{p2col :{manlink SVY 方差估计}}调查数据的方差估计{p_end}
{p2col :{manlink SVY 子群估计}}调查数据的子群估计{p_end}
{p2col :{manlink SVY 校准}}调查数据的校准{p_end}
{p2col :{manlink SVY 直接标准化}}均值、比例和比率的直接标准化{p_end}
{p2col :{manlink SVY 后分层}}调查数据的后分层{p_end}


{pstd}
{bf:新调查命令程序员的工具}{p_end}

{p2col :{manlink SVY ml for svy}}用于调查数据的最大伪似然估计{p_end}
{p2col :{manhelp svymarkout SVY}}根据调查特征标记观察以排除{p_end}


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection SVY SurveyRemarksandexamples:备注和示例}

{pstd}
以上部分未包含在此帮助文件中。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse multistage}{p_end}

{pstd}声明数据为复杂的调查数据{p_end}
{phang2}{cmd:. svyset county [pw=sampwgt], strata(state) fpc(ncounties)}
             {cmd: || school, fpc(nschools)}{p_end}

{pstd}估计我们人群中高中老年的平均体重{p_end}
{phang2}{cmd:. svy: mean weight, over(sex)}{p_end}

{pstd}检验假设平均男性的体重比平均女性重30磅{p_end}
{phang2}{cmd:. test weight#1.sex - weight#2.sex = 30}{p_end}


{marker video}{...}
{title:视频示例}

{phang2}{browse "https://www.youtube.com/watch?v=0DRXnoR-Q1c":关于 Stata 中复杂调查数据分析的基本介绍}

{phang2}{browse "https://www.youtube.com/watch?v=CUFr3CDM-4g":如何从 NHANES 网站下载、导入和合并多个数据集}

{phang2}{browse "https://www.youtube.com/watch?v=lRTl8GKsZTE":如何从 NHANES 网站下载、导入和准备数据}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <survey.sthlp>}