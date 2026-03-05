{smcl}
{* *! version 1.4.16  19oct2017}{...}
{viewerdialog misstable "dialog misstable"}{...}
{vieweralsosee "[R] misstable" "mansection R misstable"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MI] mi misstable" "help mi_misstable_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] summarize" "help summarize_zh"}{...}
{vieweralsosee "[R] tabulate oneway" "help tabulate_oneway_zh"}{...}
{vieweralsosee "[R] tabulate twoway" "help tabulate_twoway_zh"}{...}
{viewerjumpto "语法" "misstable_zh##syntax"}{...}
{viewerjumpto "菜单" "misstable_zh##menu"}{...}
{viewerjumpto "描述" "misstable_zh##description"}{...}
{viewerjumpto "PDF文档链接" "misstable_zh##linkspdf"}{...}
{viewerjumpto "misstable summarize选项" "misstable_zh##options_summarize"}{...}
{viewerjumpto "misstable patterns选项" "misstable_zh##options_patterns"}{...}
{viewerjumpto "misstable tree选项" "misstable_zh##options_tree"}{...}
{viewerjumpto "misstable nested选项" "misstable_zh##option_nested"}{...}
{viewerjumpto "常用选项" "misstable_zh##options_common"}{...}
{viewerjumpto "示例" "misstable_zh##examples"}{...}
{viewerjumpto "存储结果" "misstable_zh##results"}
{help misstable:English Version}
{hline}{...}
{p2colset 1 18 20 2}{...}
{p2col:{bf:[R] misstable} {hline 2}}列出缺失值
{p_end}
{p2col:}({mansection R misstable:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

    报告缺失值的数量

{p 8 12 2}
{cmd:misstable} {cmdab:sum:arize}
[{varlist}]
{ifin}
[{cmd:,}
{it:{help misstable##summarize_options:summarize_options}}]


    报告缺失值的模式

{p 8 12 2}
{cmd:misstable} {cmdab:pat:terns}
[{varlist}]
{ifin}
[{cmd:,}
{it:{help misstable##patterns_options:patterns_options}}]


    以树状图呈现缺失值的模式

{p 8 12 2}
{cmd:misstable} {cmd:tree}
[{varlist}]
{ifin}
[{cmd:,}
{it:{help misstable##tree_options:tree_options}}]


    列出描述缺失值模式的嵌套规则

{p 8 12 2}
{cmd:misstable} {cmdab:nest:ed}
[{varlist}]
{ifin}
[{cmd:,}
{it:{help misstable##nested_options:nested_options}}]


{marker summarize_options}{...}
{synoptset 22}{...}
{synopthdr:缺失值统计选项}
{synoptline}
{synopt :{cmd:all}}显示所有变量{p_end}
{synopt :{cmdab:show:zeros}}在表中显示零{p_end}
{synopt :{cmdab:gen:erate(}{it:stub} [{cmd:, exok}]{cmd:)}}生成缺失值指示器{p_end}
{synoptline}


{marker patterns_options}{...}
{synopthdr:缺失值模式选项}
{synoptline}
{synopt :{cmd:asis}}按给定顺序使用变量{p_end}
{synopt :{cmdab:freq:uency}}报告频数而不是百分比{p_end}
{synopt :{cmd:exok}}将 {cmd:.a}, {cmd:.b}, ..., {cmd:.z} 视为非缺失{p_end}
{synopt :{cmd:replace}}用模式数据集替换内存中的数据{p_end}
{synopt :{cmd:clear}}即使原始数据未保存也可以替换{p_end}
{synopt :{cmdab:bypat:terns}}按模式列出，而不是按频率{p_end}
{synoptline}


{marker tree_options}{...}
{synopthdr:树状图选项}
{synoptline}
{synopt :{cmd:asis}}按给定顺序使用变量{p_end}
{synopt :{cmdab:freq:uency}}报告频数而不是百分比{p_end}
{synopt :{cmd:exok}}将 {cmd:.a}, {cmd:.b}, ..., {cmd:.z} 视为非缺失{p_end}
{synoptline}


{marker nested_options}{...}
{synopthdr:嵌套选项}
{synoptline}
{synopt :{cmd:exok}}将 {cmd:.a}, {cmd:.b}, ..., {cmd:.z} 视为非缺失{p_end}
{synoptline}


{p 4 4 2}
此外，程序员选项 
{cmd:nopreserve} 在所有语法中都是允许的；
请参见 {bf:{help nopreserve_option:[P] nopreserve option}}。
{* 甚至不要想着提到nopreserve不显示}{...}
{* 在对话框中。当然不显示。}{...}
  

{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 汇总、表格和测试 > 其他表格 > }
   {bf:列出缺失值}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:misstable} 制作表格，帮助您了解数据中缺失值的模式。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection R misstableQuickstart:快速入门}

        {mansection R misstableRemarksandexamples:备注和示例}

{pstd}
上述部分不包括在此帮助文件中。


{marker options_summarize}{...}
{title:misstable summarize选项}

{p 4 8 2}
{cmd:all} 
    指定表格应包括所有指定的变量或数据集中所有的变量。默认情况下，仅包括包含缺失值的数值变量。

{p 4 8 2}
{cmd:showzeros} 
    指定表格中的零应显示为0，而不是被省略。 

{p 4 8 2}
{cmd:generate(}{it:stub} [{cmd:, exok}]{cmd:)} 
请求为 {it:varlist} 中每个包含缺失值的数值变量生成一个缺失值指示器 {it:newvar}，一个新的二进制变量，包含 {cmd:0} 表示完整观察，{cmd:1} 表示不完整观察。如果指定了 {cmd:all} 选项，则为所有指定的数值变量或数据集中的所有数值变量创建缺失值指示器。如果在 {cmd:generate()} 内指定了 {cmd:exok}，则扩展缺失值 {cmd:.a}, {cmd:.b}, ..., {cmd:.z} 被视为非缺失值。

{p 8 8 2}
   对于 {it:varlist} 中的每个变量，{it:newvar} 是相应的变量名 {it:varname} 前缀加上 {it:stub}。如果 {it:stub} 和 {it:varname} 的总长度超过 {ccl namelenchar} 个字符，则缩写 {it:newvar} 的名称以不超过 {ccl namelenchar} 个字符。


{marker options_patterns}{...}
{title:misstable patterns选项}

{p 4 8 2}
{cmd:asis}, {cmd:frequency}, 和 {cmd:exok} -- 见
     {it:{help misstable##commonopts:常用选项}}。

{p 4 8 2}
{cmd:replace}
    指定内存中的数据被替换为刚刚显示的对应数据集；见 
    {mansection R misstableRemarksandexamplesmisstablepatterns:{it:misstable patterns}}
    在 {bf:[R] misstable} 中。

{p 4 8 2}
{cmd:clear}
    用于与 {cmd:replace} 一起使用；它
    指定即使数据未保存到磁盘，也可以更改内存中的数据。

{p 4 8 2}
{cmd:bypatterns}
    指定表格按模式而不是按频率排序。
    也就是说，{cmd:bypatterns} 
    指定包含一个不完整变量的模式应在前列，接下来是两个不完整变量的模式，依此类推。
    默认情况下，首先列出最频繁的模式，
    其次是下一个频繁的模式，等等。


{marker options_tree}{...}
{title:misstable tree选项}

{p 4 8 2}
{cmd:asis}, {cmd:frequency}, 和 {cmd:exok} -- 见 
     {it:{help misstable##commonopts:常用选项}}。


{marker option_nested}{...}
{title:misstable nested选项}

{p 4 8 2}
{cmd:exok} -- 见 
     {it:{help misstable##commonopts:常用选项}}。


{marker options_common}{...}
{marker commonopts}{...}
{title:常用选项}

{p 4 8 2}
{cmd:asis} 
    指定表中的变量顺序与它们在 {cmd:misstable} 
    命令中指定的顺序相同。  
    默认情况下，按缺失值的数量对变量进行排序，在此基础上，再按缺失值的重叠量进行排序。

{p 4 8 2}
{cmd:frequency} 
    指定表应该报告频率而不是百分比。

{p 4 8 2}
{cmd:exok} 
    指定扩展缺失值 {cmd:.a}, {cmd:.b}, ..., 
    {cmd:.z} 应被视为非缺失。  
    一些用户使用扩展缺失值来表示由于已知且有效的原因而缺失的值。

{p 4 8 2}
{cmd:nopreserve} 是与所有 
    {cmd:misstable} 命令一起使用的程序员选项；
    见 {bf:{help nopreserve_option:[P] nopreserve option}}。


{marker examples}{...}
{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse studentsurvey}{p_end}

{pstd}报告缺失值的数量{p_end}
{phang2}{cmd:. misstable summarize}{p_end}

{pstd}报告缺失值的数量并创建缺失值指示器{p_end}
{phang2}{cmd:. misstable summarize, generate(miss_)}{p_end}
{phang2}{cmd:. describe miss_*}{p_end}

{pstd}报告缺失值的模式{p_end}
{phang2}{cmd:. misstable patterns}{p_end}

{pstd}与上述相同，但还获取模式数据集{p_end}
{phang2}{cmd:. misstable patterns, replace clear}{p_end}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse studentsurvey, clear}{p_end}

{pstd}显示缺失值模式的树状视图{p_end}
{phang2}{cmd:. misstable tree, frequency}{p_end}

{pstd}列出描述缺失值模式的嵌套规则{p_end}
{phang2}{cmd:. misstable nested}{p_end}

    {hline}


{marker results}{...}
{title:存储结果}

{p 4 4 2}
{cmd:misstable summarize} 存储以下 
在 {cmd:r()} 中的最近变量的值：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:r(N_eq_dot)}}包含 {cmd:.} 的观察数量{p_end}
{synopt:{cmd:r(N_gt_dot)}}包含 {cmd:.a}, {cmd:.b}, ..., {cmd:.z} 的观察数量{p_end}
{synopt:{cmd:r(N_lt_dot)}}包含非缺失的观察数量{p_end}
{synopt:{cmd:r(K_uniq)}  }唯一非缺失值的数量{p_end}
{synopt:{cmd:r(min)}     }变量的最小值{p_end}
{synopt:{cmd:r(max)}     }变量的最大值{p_end}

{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:r(vartype)}}{cmd:numeric}, {cmd:string}, 或 {cmd:none}{p_end}

{p 6 6 2}
    {cmd:r(K_uniq)} 如果唯一非缺失值的数量大于500，则包含 {cmd:.}。{cmd:r(vartype)} 如果没有变量被总结，则包含 {cmd:none}，在这种情况下，标量的值都设为缺失 ({cmd:.})。意图在 {cmd:misstable} {cmd:summarize} 后访问结果的程序员应指定 {cmd:all} 选项。


{p 4 4 2}
{cmd:misstable patterns} 存储以下内容在 {cmd:r()} 中：

{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:r(N_complete)}}完整观察的数量{p_end}
{synopt:{cmd:r(N_incomplete)}}不完整观察的数量{p_end}
{synopt:{cmd:r(K)}          }模式的数量{p_end}

{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:r(vars)}}按照呈现顺序使用的变量{p_end}

{p 6 6 2}
    {cmd:r(N_complete)} 和 {cmd:r(N_incomplete)} 是针对指定变量定义的，如果未指定变量，则是针对数据集中所有数值变量定义的。
    {cmd:r(N_complete)} 是包含零缺失值的观察数量。  


{p 4 4 2}
{cmd:misstable tree} 存储以下内容在 {cmd:r()} 中：

{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:r(vars)}}按照呈现顺序使用的变量{p_end}


{p 4 4 2}
{cmd:misstable nested} 存储以下内容在 {cmd:r()} 中：

{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:r(K)}}语句的数量{p_end}

{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:r(stmt1)}}第一条语句{p_end}
{synopt:{cmd:r(stmt2)}}第二条语句{p_end}
{synopt: . }.{p_end}
{synopt: . }.{p_end}
{synopt:{cmd:r(stmt`r(K)')}}最后一条语句{p_end}
{synopt:{cmd:r(stmt1wc)}}{cmd:r(stmt1)} 带有缺失值计数{p_end}
{synopt:{cmd:r(vars)}}考虑的变量{p_end}

{p 6 6 2}
    语句编码为 "{it:varname}"、"{it:varname} {it:op}
    {it:varname}" 或 "{it:varname} {it:op} {it:varname} {it:op}
    {it:varname}" 等；{it:op} 是"{cmd:->}" 或
    "{cmd:<->}"。{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <misstable.sthlp>}