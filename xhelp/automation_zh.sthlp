{smcl}
{* *! version 1.1.8  15oct2018}{...}
{vieweralsosee "[P] Automation" "mansection P Automation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[P] plugin" "help plugin_zh"}{...}
{viewerjumpto "Description" "automation_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "automation_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "automation_zh##remarks"}
{help automation:English Version}
{hline}{...}
{p2colset 1 19 21 2}{...}
{p2col:{bf:[P] Automation} {hline 2}}自动化
{p_end}
{p2col:}({mansection P Automation:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:描述}

{pstd}
自动化（以前称为 OLE 自动化）是 Microsoft Windows 应用程序之间的通信机制。它提供了一种基础设施，使 Windows 应用程序（自动化客户端）可以访问和操纵在另一个应用程序（自动化服务器）中实现的函数和属性。 Stata 自动化对象暴露了 Stata 内部的方法和属性，以便 Windows 程序员能够编写自动化客户端，直接使用 Stata 提供的服务。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection P AutomationRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{pstd} 
Stata 自动化对象在需要最大灵活性与社区贡献的应用程序交互的情况下最为有用。Stata 自动化对象使用户能够以除常规日志文件之外的方式直接访问 Stata 宏、标量、存储结果和数据集信息。

{pstd}
有关使用 Stata 自动化对象的文档，请参见

{pin}
	{browse "https://www.stata.com/automation/"}

{pstd}
请注意，标准的 Stata 最终用户许可协议（EULA）不允许 Stata 在生产环境中用作嵌入式引擎。如果您希望以这种方式使用 Stata，请联系 StataCorp，电子邮件地址为 {browse "mailto:service@stata.com":service@stata.com}。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <automation.sthlp>}