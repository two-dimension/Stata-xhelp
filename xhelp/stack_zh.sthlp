{smcl}
{* *! version 1.1.14  19oct2017}{...}
{viewerdialog stack "dialog stack"}{...}
{vieweralsosee "[D] stack" "mansection D stack"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] contract" "help contract_zh"}{...}
{vieweralsosee "[D] reshape" "help reshape_zh"}{...}
{vieweralsosee "[D] xpose" "help xpose_zh"}{...}
{viewerjumpto "Syntax" "stack_zh##syntax"}{...}
{viewerjumpto "Menu" "stack_zh##menu"}{...}
{viewerjumpto "Description" "stack_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "stack_zh##linkspdf"}{...}
{viewerjumpto "Options" "stack_zh##options"}{...}
{viewerjumpto "Remarks" "stack_zh##remarks"}{...}
{viewerjumpto "Examples" "stack_zh##examples"}
{help stack:English Version}
{hline}{...}
{p2colset 1 14 16 2}{...}
{p2col:{bf:[D] stack} {hline 2}}堆叠数据{p_end}
{p2col:}({mansection D stack:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 14 2}
{cmd:stack}
{varlist}
{ifin}
{cmd:,}
{c -(}{cmdab:i:nto(}{it:{help newvar_zh:newvars}}{cmd:)}|{opt g:roup(#)}{c )-}
[{it:选项}]

{synoptset 17 tabbed}{...}
{synopthdr}
{synoptline}
{syntab :主要}
{p2coldent :* {opth i:nto(newvar:newvars)}}指定要创建的新变量的名称{p_end}
{p2coldent :* {opt g:roup(#)}}堆叠 {it:#} 组变量{varlist}{p_end}
{synopt :{opt clear}}清除内存中的数据集{p_end}
{synopt :{opt wi:de}}保留变量 {varlist} 中未在 {it:{help newvar_zh:newvars}} 中指定的变量{p_end}
{synoptline}
{p 4 6 2}
* 必须指定 {opt into(newvars)} 或 {opt group(#)} 之一。{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:数据 > 创建或更改数据 > 其他变量转换命令}
      {bf:> 堆叠数据}


{marker description}{...}
{title:描述}

{pstd}
{opt stack} 垂直堆叠 {varlist} 中的变量，结果是一个数据集，其中包含变量 {it:{help newvar_zh:newvars}} 和 
{helpb _N}*(Nv/Nn) 观察值，其中 Nv 是 {it:varlist} 中的变量数量，Nn 是 {it:newvars} 中的数量。
{opt stack} 创建新变量 {cmd:_stack} 以标识组。


{marker linkspdf}{...}
{title:与 PDF 文档的链接}

        {mansection D stackQuickstart:快速启动}

        {mansection D stackRemarksandexamples:备注和示例}

{pstd}
上述部分不包括在本帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主要}

{phang}
{opth "into(newvar:newvars)"}
指定要创建的新变量的名称。
{opt into()} 可以使用变量范围指定
（例如，{cmd:into(v1-v3)}）。必须指定 {opt into()} 或 {opt group()}，但不能同时指定两者。

{phang}
{opt group(#)} 指定要堆叠的 {varlist} 中的变量组数量。 创建的变量将根据 {it:varlist} 中的第一个组命名。必须指定 {opt group()} 或 {opt into()}，但不能同时指定两者。

{phang}
{opt clear} 表示可以清除内存中的数据集。如果不指定此选项，将会要求您确认意图。

{phang}
{opt wide} 包括 {varlist} 中未在 {it:{help newvar_zh:newvars}} 中指定的原始变量在结果数据中。


{marker remarks}{...}
{title:备注}

{pstd}
此命令通过示例最佳理解。考虑 

{phang2}{cmd:. webuse stackxmpl}{p_end}
{phang2}{cmd:. stack a b c d, into(e f) clear}

{pstd}
这将创建一个包含以下内容的新数据集

{phang2}{cmd:. list}{p_end}
             {c TLC}{hline 8}{c -}{hline 3}{c -}{hline 3}{c TRC}
             {c |} {res}_stack   e   f {txt}{c |}
             {c LT}{hline 8}{c -}{hline 3}{c -}{hline 3}{c RT}
          1. {c |} {res}     1   1   2 {txt}{c |}
          2. {c |} {res}     1   5   6 {txt}{c |}
          3. {c |} {res}     2   3   4 {txt}{c |}
          4. {c |} {res}     2   7   8 {txt}{c |}
             {c BLC}{hline 8}{c -}{hline 3}{c -}{hline 3}{c BRC}

{pstd}
通过堆叠 {cmd:a} 和 {cmd:c} 形成新变量 {cmd:e}，通过堆叠 {cmd:b} 和 {cmd:d} 形成新变量 {cmd:f}。 {cmd:_stack}
被自动创建并为第一个 ({cmd:a}, {cmd:b}) 组设为 1，为第二个 ({cmd:c}, {cmd:d}) 组设为 2。 

{pstd}
指定的 {opt into()} 变量数量决定了形成的组数量。 {opt into()} 可以与变量范围一起指定，例如

{phang2}{cmd:. stack a b c d, into(v1-v2)}

{pstd}
当然，{varlist} 也可以这样使用

{phang2}{cmd:. stack a-d, into(v1-v2)}

{pstd}
新变量形成可能与现有变量的名称相同；

{phang2}{cmd:. stack a b c d, into(a b)}{p_end}

    是完全合理的。

{pstd}
当您希望新变量与第一组中的变量名称相同，而不是指定 {opt into()}，您可以指定 {opt group()}。与上述命令等价的命令是

{phang2}{cmd:. stack a b c d, group(2)}{p_end}

{pstd}
例如，后者命令创建

{phang2}{cmd:. list}{p_end}
             {c TLC}{hline 8}{c -}{hline 3}{c -}{hline 3}{c TRC}
             {c |} {res}_stack   a   b {txt}{c |}
             {c LT}{hline 8}{c -}{hline 3}{c -}{hline 3}{c RT}
          1. {c |} {res}     1   1   2 {txt}{c |}
          2. {c |} {res}     1   5   6 {txt}{c |}
          3. {c |} {res}     2   3   4 {txt}{c |}
          4. {c |} {res}     2   7   8 {txt}{c |}
             {c BLC}{hline 8}{c -}{hline 3}{c -}{hline 3}{c BRC}


{marker examples}{...}
{title:示例}

    {hline}
    设置
        {cmd:. webuse stackxmpl}

    列出原始数据
	{cmd:. list}
		     a        b        c        d
	  1.         {res}1        2        3        4{txt}
	  2.         {res}5        6        7        8{txt}

{pstd}通过堆叠 {cmd:a} 和 {cmd:c} 形成 {cmd:e}，通过堆叠 {cmd:b} 和 {cmd:d} 形成 {cmd:f}{p_end}
	{cmd:. stack a b  c d, into(e f) clear}

    列出结果
	{cmd:. list}
	        _stack   e   f    
	  1.         {res}1   1   2{txt}
	  2.         {res}1   5   6{txt}
	  3.         {res}2   3   4{txt}
	  4.         {res}2   7   8{txt}

{pstd}
{cmd:_stack} 被自动创建，并为第一组 ({cmd:a},{cmd:b}) 设为 1，为第二组 ({cmd:c},{cmd:d}) 设为 2。{p_end}

    {hline}
    设置
{phang2}{cmd:. webuse stackxmpl, clear}

{pstd}将 {cmd:a} 堆叠在 {cmd:a} 上，并称之为 {cmd:a}，并将 {cmd:b} 堆叠在 {cmd:c} 上，并称之为 {cmd:bc}{p_end}
       {cmd:. stack a b  a c, into(a bc) clear}

{pstd}列出结果{p_end}
{phang2}{cmd:. list}

    {hline}
    设置
{phang2}{cmd:. webuse stackxmpl, clear}

{pstd}通过堆叠 {cmd:a} 和 {cmd:c} 形成 {cmd:e}，通过堆叠 {cmd:b} 和 {cmd:d} 形成 {cmd:f}，并保留原始变量 {cmd:a}、{cmd:b}、{cmd:c} 和 {cmd:d}{p_end}
        {cmd:. stack a b  c d, into(e f) clear wide}

{pstd}列出结果{p_end}
{phang2}{cmd:. list}

    {hline}
    设置
{phang2}{cmd:. webuse stackxmpl, clear}

{pstd}将 {cmd:a} 堆叠在 {cmd:a} 上并称之为 {cmd:a}，将 {cmd:b} 堆叠在 {cmd:c} 上并称之为 {cmd:bc}，并保留原始变量（因为在 {cmd:into()} 中指定了 {cmd:a}，所以 {cmd:a} 将包含堆叠值）{p_end}
        {cmd:. stack a b  a c, into(a bc) clear wide}

{pstd}列出结果{p_end}
{phang2}{cmd:. list}{p_end}
    {hline}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <stack.sthlp>}