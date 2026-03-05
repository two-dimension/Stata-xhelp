{smcl}
{* *! version 1.3.2  19oct2017}{...}
{vieweralsosee "[G-3] axis_options" "mansection G-3 axis_options"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-3] axis_label_options" "help axis_label_options_zh"}{...}
{vieweralsosee "[G-3] axis_scale_options" "help axis_scale_options_zh"}{...}
{vieweralsosee "[G-3] axis_title_options" "help axis_title_options_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-3] axis_choice_options" "help axis_choice_options_zh"}{...}
{vieweralsosee "[G-3] region_options" "help region_options_zh"}{...}
{viewerjumpto "Description" "axis_options_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "axis_options_zh##linkspdf"}{...}
{viewerjumpto "Options" "axis_options_zh##options"}{...}
{viewerjumpto "Remarks" "axis_options_zh##remarks"}
{help axis_options:English Version}
{hline}{...}
{p2colset 1 23 25 2}{...}
{p2col:{bf:[G-3]} {it:axis_options} {hline 2}}指定数值轴的选项{p_end}
{p2col:}({mansection G-3 axis_options:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:描述}

{pstd}
{it:axis_options} 允许您更改数值轴的标题、标签、刻度和比例，这些默认设置由方案确定。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection G-3 axis_optionsRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{pstd}
{it:axis_options} 分为四类。

{phang2}
{it:axis_title_options} 指定要在轴旁边显示的标题。
    它们还允许您对标题字体进行格式设置。
    请参见 {manhelpi axis_title_options G-3}。

{phang2}
{it:axis_label_options} 指定轴应该如何标记和刻度。
    这些选项允许您控制主要和次要刻度及标签的位置。
    {it:axis_label_options} 还允许您在图表上添加或抑制网格线。请参见 {manhelpi axis_label_options G-3}。

{phang2}
{it:axis_scale_options} 指定轴的缩放方式 - 要么是对数缩放，要么是反向缩放，从最大值到最小值运行。
    这些选项还允许您更改轴的范围以及轴的线条外观，包括位置。
    请参见 {manhelpi axis_scale_options G-3}。

{phang2}
{it:axis_choice_options} 控制在有多个 x 或 y 轴时，绘图出现于哪个特定轴上。
    请参见 {manhelpi axis_choice_options G-3}。


{marker remarks}{...}
{title:备注}

{pstd}
数值轴允许与
{helpb graph twoway}
和
{helpb graph matrix}
一起使用，并允许在
{helpb graph bar},
{helpb graph dot},
和
{helpb graph box}
的一个轴上使用。
它们还允许在
{help twoway_contour_zh:contour plot} 的图例的轮廓键上使用。
轴的默认外观由
{help schemes intro:scheme} 决定，但可以使用 {it:axis_options} 进行修改。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <axis_options.sthlp>}