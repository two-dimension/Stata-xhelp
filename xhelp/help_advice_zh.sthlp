{smcl}
{* *! version 2.2.5  19oct2017}{...}
{findalias asgsmviewer}{...}
{findalias asgsuviewer}{...}
{findalias asgswviewer}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] help" "help help_zh"}{...}
{vieweralsosee "[R] net" "help net_zh"}{...}
{vieweralsosee "net_mnu" "net_mnu"}{...}
{vieweralsosee "[R] news" "help news_zh"}{...}
{vieweralsosee "[R] search" "help search_zh"}{...}
{vieweralsosee "searchadvice" "searchadvice"}{...}
{vieweralsosee "[R] update" "help update_zh"}{...}
{vieweralsosee "[R] view" "help view_zh"}
{help help_advice:English Version}
{hline}{...}
{title:获取帮助的建议}

{pstd}
假设您正在尝试找出如何完成某项工作。随着大约 3,000 个帮助文件和 14,000 页的 PDF 文档，我们可能已经解释了您想要的所有操作。文档中充满了可以在提供的数据集上运行的示例。不论您的问题是什么，首先尝试以下步骤：

{p 4 7 2}1. 从 Stata 菜单中选择 {bf:Help}，然后单击 {bf:Search...}。

{p 4 7 2}2. 输入一些关于您感兴趣主题的关键词，比如“logistic regression”。

{p 4 7 2}3. 浏览生成的可用资源列表，包括帮助文件、常见问题解答、Stata 期刊文章和其他资源。

{p 4 7 2}4. 选择描述看起来最有帮助的资源。通常，此描述将是一个帮助文件，并会包含“(help <xyz>)”，或者如我们的例子中，也许是“(help {help logistic_zh})”。单击蓝色链接“logistic”。

{p 4 7 2}5. 假设您选择了“(help {help logistic_zh})”条目。您可能对文件顶部的语法不感兴趣，但您希望查看一些示例。从查看器菜单（此时在您屏幕上的帮助文件右上角）中选择 {bf:Jump To}，然后单击 {bf:Examples}。您将被带到可以在示例数据集上运行的示例命令。只需将这些命令复制并粘贴到 Stata 中以查看结果。

{p 4 7 2}6. 如果您是 {cmd:logistic} 命令的新手，并想要一个概述和带有讨论的示例，可以从 {bf:Also See} 菜单中单击带有 PDF 图标的 {mansection R logistic:[R] logistic}。或者在帮助文件顶部，单击条目的蓝色标题（{manlink R logistic}）。您的 PDF 查看器将打开 {cmd:logistic} 命令的完整文档。

{p 4 7 2}7. 在此文档中有很多优秀的材料，适合专家和新手。与帮助文件一样，您通常会想先从 {it:Remarks and examples} 部分开始。只需单击 {mansection R logisticRemarksandexamples:Remarks and examples} 链接即可。关于 {cmd:logistic} 命令的完整讨论可以在备注中找到，包含在提供的数据集上运行并详细解释的示例。这应该能让您准备好在自己的数据上使用该命令。

{pstd}
如果这仍未能帮助您，请尝试其他 Stata 资源；请查看 {help resources_zh:有关 Stata 的更多学习资源}。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <help_advice.sthlp>}