{smcl}
{* *! version 1.1.5  15may2018}{...}
{vieweralsosee "[M-2] optargs" "mansection M-2 optargs"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-2] Intro" "help m2_intro_zh"}{...}
{viewerjumpto "语法" "m2_optargs_zh##syntax"}{...}
{viewerjumpto "描述" "m2_optargs_zh##description"}{...}
{viewerjumpto "PDF文档链接" "m2_optargs_zh##linkspdf"}{...}
{viewerjumpto "备注" "m2_optargs_zh##remarks"}
{help m2_optargs:English Version}
{hline}{...}
{p2colset 1 18 20 2}{...}
{p2col:{bf:[M-2] optargs} {hline 2}}可选参数
{p_end}
{p2col:}({mansection M-2 optargs:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 16 2}
{cmd:function}
{it:functionname}{cmd:(|}{it:arg}
[{cmd:,} {it:arg} [{cmd:,} ...]]{cmd:)} 
{cmd:{c -(}} ... {cmd:{c )-}}

{p 8 16 2}
{cmd:function}
{it:functionname}{cmd:(}{it:arg}{cmd:,} 
{cmd:|}{it:arg} [{cmd:,} ...]{cmd:)}
{cmd:{c -(}} ... {cmd:{c )-}}

{p 8 16 2}
{cmd:function}
{it:functionname}{cmd:(}{it:arg}{cmd:,} 
{it:arg} {cmd:,} {cmd:|}...{cmd:)}
{cmd:{c -(}} ...  {cmd:{c )-}}


{p 4 4 2}
垂直（或）条在函数声明中分隔必需参数和可选参数。该条最多可以出现一次。


{marker description}{...}
{title:描述}

{p 4 4 2}
Mata 函数可以有不同数量的参数。如何编写允许这些可选参数的程序将在下面描述。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection M-2 optargsRemarksandexamples:备注和示例}

{pstd}
以上部分未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
备注分为以下几部分：

	{help m2_optargs##remarks1:什么是可选参数?}
	{help m2_optargs##remarks2:如何编码可选参数}
	{help m2_optargs##remarks3:重新审视示例}


{marker remarks1}{...}
{title:什么是可选参数?}

{p 4 4 2}
{it:示例 1}:  
你编写了一个名为 {cmd:ditty()} 的函数。函数 {cmd:ditty()} 允许调用者指定两个或三个参数：

{p 8 16 2}
{it:实数矩阵}
{cmd:ditty(}{it:实数矩阵 A}{cmd:,} 
{it:实数矩阵 B}{cmd:,} 
{it:实数标量 scale}{cmd:)}

{p 8 16 2}
{it:实数矩阵}
{cmd:ditty(}{it:实数矩阵 A}{cmd:,} 
{it:实数矩阵 B}{cmd:)} 

{p 4 4 2}
如果调用者仅指定两个参数，结果等同于调用者指定第三个参数为缺失；即
{cmd:ditty(}{it:A}{cmd:,} {it:B}{cmd:)}
相当于 
{cmd:ditty(}{it:A}{cmd:,} {it:B}{cmd:,} {cmd:.}{cmd:)}


{p 4 4 2}
{it:示例 2}:  
你编写函数 {cmd:gash()}.  
函数 {cmd:gash()} 允许调用者指定一个或两个参数：

{p 8 16 2}
{it:实数矩阵}
{cmd:gash(}{it:实数矩阵 A}{cmd:,} 
{it:实数矩阵 B}{cmd:)} 

{p 8 16 2}
{it:实数矩阵}
{cmd:gash(}{it:实数矩阵 A}{cmd:)} 

{p 4 4 2}
如果调用者仅指定一个参数，结果等同于使用 {cmd:J(0,0,.)} 指定第二个参数。


{p 4 4 2}
{it:示例 3}:  
你编写函数 {cmd:easygoing()}.  
函数 {cmd:easygoing()} 需要三个参数，但允许调用者指定三个、两个、一个，甚至不指定任何参数：

{p 8 16 2}
{it:实数标量}
{cmd:easygoing(}{it:实数矩阵 A}{cmd:,} 
{it:实数矩阵 B}{cmd:,} 
{it:实数标量 scale}{cmd:)}

{p 8 16 2}
{it:实数标量}
{cmd:easygoing(}{it:实数矩阵 A}{cmd:,} 
{it:实数矩阵 B}{cmd:)} 

{p 8 16 2}
{it:实数标量}
{cmd:easygoing(}{it:实数矩阵 A}{cmd:)} 

{p 8 16 2}
{it:实数标量}
{cmd:easygoing()}

{p 4 4 2}
如果 {it:scale} 未指定，结果相当于 {it:scale}=1。
如果 {it:B} 未指定，结果相当于 {it:B}={it:A}。
如果 {it:A} 未指定，结果相当于 {it:A}={cmd:I(2)}。


{p 4 4 2}
{it:示例 4}:  
你编写函数 {cmd:midsection()}.  {cmd:midsection()} 接受三个参数，但用户可以选择只指定前两个参数 -- 第一个和最后一个。

{p 8 16 2}
{cmd:实数矩阵}
{it:midsection(}{it:实数矩阵 A}{cmd:,}
{it:实数向量 w}{cmd:,}
{it:实数矩阵 B}{cmd:)}

{p 8 16 2}
{cmd:实数矩阵}
{it:midsection(}{it:实数矩阵 A}{cmd:,}
{it:实数矩阵 B}{cmd:)} 

{p 4 4 2}
如果 {it:w} 未指定，结果相当于 {it:w} =
{cmd:J(1,cols(}{it:A}{cmd:),1)} 被指定。


{marker remarks2}{...}
{title:如何编码可选参数}

{p 4 4 2}
当你编码 

	{cmd:function nebulous(}{it:a}{cmd:,} {it:b}{cmd:,} {it:c}{cmd:)}
	{cmd:{c -(}}
		...
	{cmd:{c )-}}

{p 4 4 2}
你声明函数 {cmd:nebulous()} 需要三个参数。
如果调用者指定的参数少于或多于三个，执行将中止。

{p 4 4 2}
如果你编码 

	{cmd:function nebulous(}{it:a}{cmd:,} {it:b}{cmd:, |}{it:c}{cmd:)}
	{cmd:{c -(}}
		...
	{cmd:{c )-}}

{p 4 4 2}
你声明最后一个参数是可选的。注意 {it:c} 前面的垂直或条。  

{p 4 4 2}
如果你编码 

	{cmd:function nebulous(}{it:a}{cmd:, |}{it:b}{cmd:,} {it:c}{cmd:)}
	{cmd:{c -(}}
		...
	{cmd:{c )-}}

{p 4 4 2}
你声明最后两个参数是可选的；用户可以指定一个、两个或三个参数。

{p 4 4 2}
如果你编码 

	{cmd:function nebulous(|}{it:a}{cmd:,} {it:b}{cmd:,} {it:c}{cmd:)}
	{cmd:{c -(}}
		...
	{cmd:{c )-}}

{p 4 4 2}
你声明所有参数都是可选的；用户可以指定零、一个、两个或三个参数。

{p 4 4 2}
用户未指定的参数将根据该参数的类型填充，

	{it:如果参数类型是            默认值将是}
	{hline 60}
	未声明                              {cmd}J(0, 0, .)

	变形矩阵                           J(0, 0, .)
	实数矩阵                           J(0, 0, .)
	复数矩阵                           J(0, 0, 1i)
	字符串矩阵                         J(0, 0, "")

	变形行向量                       J(1, 0, .)
	实数行向量                       J(1, 0, .)
	复数行向量                        J(1, 0, 1i)
	字符串行向量                    J(1, 0, "")

	变形列向量                       J(0, 1, .)
	实数列向量                       J(0, 1, .)
	复数列向量                        J(0, 1, 1i)
	字符串列向量                     J(0, 1, "")

	变形向量                          J(1, 0, .)
	实数向量                           J(1, 0, .)
	复数向量                           J(1, 0, 1i)
	字符串向量                        J(1, 0, "")

	变形标量                         J(1, 1, .)
	实数标量                           J(1, 1, .)
	复数标量                           J(1, 1, C(.))
	字符串标量                        J(1, 1, "")
	指针标量                          J(1, 1, NULL){txt}
	{hline 60}

{p 4 4 2}
此外，函数 {cmd:args()} （参见 {bf:{help mf_args_zh:[M-5] args()}}）
将返回用户指定的参数数量。

{p 4 4 2}
垂直条只能出现一次。这已足够，我们将展示这一点。


{marker remarks3}{...}
{title:重新审视示例}

{p 4 4 2}
{it:示例 1}:
在此示例中，实数矩阵函数 {cmd:ditty(}{it:A}{cmd:,} {it:B}{cmd:,}
{it:scale}{cmd:)} 允许实数标量 {it:scale} 为可选参数。如果
{it:scale} 未指定，结果相当于 {it:scale}{cmd:=.} 被指定。这可以编码为

	{cmd}real matrix ditty(real matrix A, real matrix B, |real scalar scale)
	{
		{txt}...{cmd}
	}{txt}

{p 4 4 2}
代码体的编写就好像 {it:scale} 不是可选的一样，因为，如果调用者不指定该参数，缺失参数将根据上述表格自动填充。

{p 4 4 2}
{it:示例 2}:
实数矩阵函数 {cmd:gash(}{it:A}{cmd:,} {it:B}{cmd:)} 允许实数 
矩阵 {it:B} 为可选参数，如果未指定，则假定 {it:B} = {cmd:J(0,0,.)}。
因此，这段代码编写方式与示例 1 一样：

	{cmd}real matrix gash(real matrix A, |real matrix B)
	{
		{txt}...{cmd}
	}{txt}


{p 4 4 2}
{it:示例 3}:
实数标量函数 {cmd:easygoing(}{it:A}{cmd:,} {it:B}{cmd:,}
{it:scale}{cmd:)} 允许所有参数为可选。
{it:scale} = 1 被假定，{it:B} = {it:A}，如有必要，{it:A} =
{cmd:I(2)}。

	{cmd}real scalar easygoing(|real matrix A, real matrix B, real scalar scale)
	{
		{txt}...{cmd}

		if (args()==2) scale = 1
		else if (args==1) { 
			B = A
			scale = 1 
		}
		else if (args()==0) {
			A = B = I(2)
			scale = 1 ; 
		}

		{txt}...{cmd}
	}{txt}


{p 4 4 2}
{it:示例 4}:
实数矩阵函数 {cmd:midsection(}{it:A}{cmd:,} {it:w}{cmd:,}
{it:B}{cmd:)} 允许 {it:w} -- 其中间参数 -- 被省略。
如果 {it:w} 未指定，假定为 {cmd:J(1, cols(}{it:A}{cmd:), 1)}。
这里是一个解决方案：

	{cmd}real matrix midsection(a1, a2, |a3)
	{
		if (args()==3) return(midsection_u(a1,       a2,        a3))
		else           return(midsection_u(a1, J(1,cols(a1),1), a2))
	}

	real matrix midsection_u(real matrix A, real vector w, real matrix B)
	{
		...
	}{txt}
		
{p 4 4 2}
我们不会告诉调用者 {cmd:midsection_u()} 的存在，即使 {cmd:midsection_u()} 是我们的真实程序。

{p 4 4 2}
我们所做的是将 {cmd:midsection()} 编写为接受两个或三个参数，
然后用正确的位置调用 {cmd:midsection_u()}。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <m2_optargs.sthlp>}