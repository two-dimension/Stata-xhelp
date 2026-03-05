{smcl}
{* *! version 1.1.9  15mar2019}{...}
{vieweralsosee "[P] 插件" "mansection P plugin"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-0] mata" "help mata_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[P] 自动化" "help automation_zh"}{...}
{vieweralsosee "[P] 程序" "help program_zh"}{...}
{viewerjumpto "语法" "plugin_zh##syntax"}{...}
{viewerjumpto "描述" "plugin_zh##description"}{...}
{viewerjumpto "PDF文档链接" "plugin_zh##linkspdf"}{...}
{viewerjumpto "选项" "plugin_zh##options"}{...}
{viewerjumpto "备注" "plugin_zh##remarks"}
{help plugin:English Version}
{hline}{...}
{p2colset 1 15 17 2}{...}
{p2col:{bf:[P] 插件} {hline 2}}加载插件{p_end}
{p2col:}({mansection P plugin:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 16 2}
{cmdab:pr:ogram} {it:handle} , {cmdab:plug:in}
           [{cmd:using(}{it:filespec}{cmd:)}]


{marker description}{...}
{title:描述}

{pstd}
除了使用 ado 文件和 Mata 之外，您还可以通过遵循一套编程约定，并将您的编译库动态链接到 Stata，来向 Stata 添加新命令。 具有 {cmd:plugin} 选项的 {cmd:program} 命令可以查找插件并将其加载（动态链接）到 Stata 中。

{pstd}
如果您有兴趣使用 Java 为 Stata 编写插件，请参见 {help java_intro_zh:[P] Java 介绍}。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection P pluginRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{opt plugin} 指定查找并加载插件到 Stata 中。

{phang}
{opt using(filespec)} 指定包含插件的文件 {it:filespec}。 
如果您不指定 {cmd:using()}，{cmd:program} 默认假定文件名为 {it:handle}{cmd:.plugin} 并可在 {help adopath:ado-path} 中找到。


{marker remarks}{...}
{title:备注}

{pstd}
插件最有用的场景是那些需要尽可能快的方法，这些方法涉及重循环、递归或其他计算密集型的做法。 如果您已经有一个用 C 编写的解决方案，插件也可能很有用。

{pstd}
有关插件编程和将编译程序加载到 Stata 的完整文档，请参见

{pin}
      {browse "https://www.stata.com/plugins/"}
{p_end}

{pstd}
有关 C 和 C++ 插件的教程，请参见以下 Stata 博客条目：
{p_end}

        {browse "https://blog.stata.com/2018/02/15/programming-an-estimation-command-in-stata-preparing-to-write-a-plugin/":在 Stata 中编写估计命令的准备工作: 准备编写插件}
        {browse "https://blog.stata.com/2018/02/20/programming-an-estimation-command-in-stata-writing-a-c-plugin/":在 Stata 中编写估计命令: 编写 C 插件}
        {browse "https://blog.stata.com/2018/02/22/programming-an-estimation-command-in-stata-writing-a-c-plugin-2/":在 Stata 中编写估计命令: 编写 C++ 插件}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <plugin.sthlp>}