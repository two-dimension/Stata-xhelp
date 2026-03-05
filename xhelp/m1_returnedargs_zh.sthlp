{smcl}
{* *! version 1.1.4  15may2018}{...}
{vieweralsosee "[M-1] 返回的参数" "mansection M-1 Returnedargs"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-1] 介绍" "help m1_intro_zh"}{...}
{viewerjumpto "语法" "m1_returnedargs_zh##syntax"}{...}
{viewerjumpto "描述" "m1_returnedargs_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "m1_returnedargs_zh##linkspdf"}{...}
{viewerjumpto "备注" "m1_returnedargs_zh##remarks"}
{help m1_returnedargs:English Version}
{hline}{...}
{p2colset 1 23 25 2}{...}
{p2col:{bf:[M-1] 返回的参数} {hline 2}}用于返回结果的函数参数
{p_end}
{p2col:}({mansection M-1 Returnedargs:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}


	{it:y} = {it:f}{cmd:(}{it:x}{cmd:,} ...{cmd:)}{...}
{col 40}(函数通常通过此方式返回结果)

	{it:g}{cmd:(}{it:x}{cmd:,} ...{cmd:,} {it:y}{cmd:)}{...}
{col 40}(函数将结果返回到参数 {it:y} 中)


{marker description}{...}
{title:描述}

{p 4 4 2}
大多数 Mata 函数保持其参数不变并返回结果：

		: {it:y} = {it:f}{cmd:(}{it:x}{cmd:,} ...{cmd:)}

{p 4 4 2}
然而，一些 Mata 函数不返回任何东西，而是将结果返回到一个或多个参数中：

		: {it:g}{cmd:(}{it:x}{cmd:,} ...{cmd:,} {it:y}{cmd:)}

{p 4 4 2}
如果您在交互中使用这些函数，并且接收结果的参数尚未定义
（如上面的 {it:y}），
您将会收到“变量未找到”的错误。解决办法是在调用函数之前
先定义参数包含某些内容——任何内容：

		: {it:y} {cmd:= .}

		: {it:g}{cmd:(}{it:x}{cmd:,} ...{cmd:,} {it:y}{cmd:)}

{p 4 4 2}
您可以将其合并为一个语句：

		: {it:g}{cmd:(}{it:x}{cmd:,} ...{cmd:,} {it:y}{cmd:=.)}

{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection M-1 ReturnedargsRemarksandexamples:备注与示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
{cmd:sqrt(}{it:a}{cmd:)} -- 参见 {bf:{help mf_sqrt_zh:[M-5] sqrt()}} -- 计算 
{it:a} 的（逐元素）平方根并返回结果：

		: {cmd:x = 4}

		: {cmd:y = sqrt(x)}

		: {cmd:y}               // {cmd:y} 现在包含 2
		  2

		: {cmd:x}               // {cmd:x} 不变
		  4

{p 4 4 2}
大多数函数的工作方式类似于 {cmd:sqrt()}，虽然许多函数接受多个 
参数。

{p 4 4 2}
另一方面，
{cmd:polydiv(}{it:ca}{cmd:,} 
{it:cb}{cmd:,}
{it:cq}{cmd:,}
{it:cr}{cmd:)} --
参见 {bf:{help mf_polyeval_zh:[M-5] polyeval()}} --
将存储在 {it:ca} 中的多项式和存储在 
{it:cb} 中的多项式进行除法运算。 它将商返回到第三个参数 
({it:cq})，将余数返回到第四个参数 ({it:cr})。
{it:ca} 和 {it:cb} 保持不变。
该函数本身不返回任何内容：

		: {cmd:A = (1,2,3)}

		: {cmd:B = (0,1)}

		: {cmd:polydiv(A, B, Q, R)}

		: {cmd:Q}             // {cmd:Q} 已被重新定义
		{res}       {txt}1   2
		    {c TLC}{hline 9}{c TRC}
		  1 {c |}  {res}2   3{txt}  {c |}
		    {c BLC}{hline 9}{c BRC}

		: {cmd:R}            // {cmd:R} 也被重新定义
		  1

		: {cmd:A}             // 而 {cmd:A} 和 {cmd:B} 保持不变
		{res}       {txt}1   2   3
		    {c TLC}{hline 13}{c TRC}
		  1 {c |}  {res}1   2   3{txt}  {c |}
		    {c BLC}{hline 13}{c BRC}

		: {cmd:B}
		{res}       {txt}1   2
		    {c TLC}{hline 9}{c TRC}
		  1 {c |}  {res}0   1{txt}  {c |}
		    {c BLC}{hline 9}{c BRC}

{p 4 4 2}
作为另一个示例，
{cmd:st_view(}{it:V}{cmd:,} {it:i}{cmd:,} {it:j}{cmd:)} --
参见 {bf:{help mf_st_view_zh:[M-5] st_view()}} --
创建一个视图 
到 Stata 数据集中。
视图类似于矩阵但消耗更少内存。
参数 {it:i} 和 {it:j} 指定要选择的
观察值和变量。但是，结果不是返回矩阵，而是返回到第一个参数 
({it:V}) 中。

		: {cmd:st_view(V, (1\5), ("mpg", "weight"))}

		: {cmd:V}
		{res}       {txt}   1      2
		    {c TLC}{hline 15}{c TRC}
		  1 {c |}  {res}  22   2930{txt}  {c |}
		  2 {c |}  {res}  15   4080{txt}  {c |}
		    {c BLC}{hline 15}{c BRC}

{p 4 4 2}
如果您尝试以交互方式使用这些函数，您可能会
收到错误：

		: {cmd:polydiv(A, B, Q, R)}
		{res}{err}                 <istmt>:  3499  Q 未定义
		{txt}r(3499);

		: {cmd:st_view(V, (1\5), ("mpg", "weight"))}
		{res}{err}                 <istmt>:  3499  V 未定义
		{txt}r(3499);

{p 4 4 2}
参数必须在使用之前定义，即使它们的唯一目的是
接收新计算的结果。在这种情况下，
参数的定义方式无关紧要，因为其内容将被替换。
最简单的方法是填写一个缺失值：

		: {cmd:Q = .}
		: {cmd:R = .}
		: {cmd:polydiv(A, B, Q, R)}

		: {cmd:V = .}
		: {cmd:st_view(V, (1\5), ("mpg", "weight"))}

{p 4 4 2}
您也可以在函数内部定义参数：

		: {cmd:polydiv(A, B, Q=., R=.)}

		: {cmd:st_view(V=., (1\5), ("mpg", "weight"))}

{p 4 4 2}
然而，当您在程序中使用这些函数时，您无需担心定义参数，因为它们是通过在程序中出现而被定义的：

		{cmd:function foo()}
		{cmd:{c -(}}
		      ...
		      {cmd:polydiv(A, B, Q, R)}
		      {cmd:st_view(V, (1\5), ("mpg", "weight"))}
		      ...
		{cmd:{c )-}}

{p 4 4 2} 
然而，当 Mata 编译您的程序时，您可能会看到警告消息：

		: {cmd:function foo()}
		> {cmd:{c -(}}
		>       ...
		>       {cmd:polydiv(A, B, Q, R)}
		>       {cmd:st_view(V, (1\5), ("mpg", "weight"))}
		>       ...
		> {cmd:{c )-}}
		注意：变量 Q 可能在设置之前使用
		注意：变量 R 可能在设置之前使用
		注意：变量 V 可能在设置之前使用

{p 4 4 2}
如果警告消息让您感到困扰，可以在使用这些变量之前先定义它们， 
就像您在交互模式下所做的那样，或使用 {cmd:pragma} 
来抑制警告消息；参见 
{bf:{help m2_pragma_zh:[M-2] pragma}}。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <m1_returnedargs.sthlp>}