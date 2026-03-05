{smcl}
{* *! version 2.0.5  19oct2017}{...}
{vieweralsosee "[R] postest" "mansection R postest"}{...}
{viewerjumpto "Syntax" "postest_zh##syntax"}{...}
{viewerjumpto "Menu" "postest_zh##menu"}{...}
{viewerjumpto "Description" "postest_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "postest_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "postest_zh##remarks"}{...}
{viewerjumpto "Video example" "postest_zh##video"}
{help postest:English Version}
{hline}{...}
{p2colset 1 16 18 2}{...}
{p2col:{bf:[R] postest} {hline 2}}后估计选择器{p_end}
{p2col:}({mansection R postest:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 16 2}
{cmd:postest}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 后估计}


{marker description}{...}
{title:描述}

{pstd}
启动后估计选择器窗口。该窗口包含当前活动估计结果可用的所有后估计功能的列表。要启动列表中某个项目的对话框，选择该项目并点击 {bf:启动}。当运行估计命令或从内存或磁盘恢复估计时，列表会自动更新。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection R postestRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{pstd}
Stata使用估计后跟随后估计分析的范式。您输入 {cmd:regress} ... 来拟合回归模型，随后输入 {cmd:test} ... 来测试估计参数之间的线性关系，或者输入 {cmd:contrast} ... 来比较边际均值，或者输入 {cmd:rvfplot} 来查看残差与拟合值的图，或者输入其他许多后估计命令。这是Stata的“输入一点，得到一点”概念的扩展。后估计选择器将这种类型的后估计分析呈现给那些更倾向于使用对话框来拟合和分析模型的人，或者至少在探索数据时有时更喜欢对话框。我们可以称之为“点击一点，得到一点”。

{pstd}
后估计选择器知道在任何估计命令后可用的内容。它显示可用于任何估计后的后估计功能的完整列表，并且仅显示可用的功能。例如，如果您拟合一个线性回归，您可以选择59种后估计分析，包括“比较模型的似然比检验”。然而，如果您使用调查估计拟合该线性回归，由于该检验对调查估计没有意义，似然比检验将不可用。但是，您会看到8个新的后估计功能，适用于调查数据分析，包括“设计和失配效应”。

{pstd}
如果您使用菜单和对话框，我们建议您启动后估计选择器并一直保留打开状态——选择 {bf:统计} {bf:> 后估计}，或者在命令行输入 {cmd:postest}。对于您正在分析的任何模型，所有可用的后估计功能都将触手可及。


{marker video}{...}
{title:视频示例}

{phang2}{browse "https://www.youtube.com/watch?v=12eU7v2cgBs":后估计选择器}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <postest.sthlp>}