{smcl}
{* *! version 1.0.16  15may2018}{...}
{vieweralsosee "[M-5] geigensystem()" "mansection M-5 geigensystem()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-1] LAPACK" "help m1_lapack_zh"}{...}
{vieweralsosee "[M-5] ghessenbergd()" "help mf_ghessenbergd_zh"}{...}
{vieweralsosee "[M-5] gschurd()" "help mf_gschurd_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] Matrix" "help m4_matrix_zh"}{...}
{viewerjumpto "语法" "mf_geigensystem_zh##syntax"}{...}
{viewerjumpto "描述" "mf_geigensystem_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "mf_geigensystem_zh##linkspdf"}{...}
{viewerjumpto "备注" "mf_geigensystem_zh##remarks"}{...}
{viewerjumpto "适应性" "mf_geigensystem_zh##conformability"}{...}
{viewerjumpto "诊断" "mf_geigensystem_zh##diagnostics"}{...}
{viewerjumpto "源代码" "mf_geigensystem_zh##source"}
{help mf_geigensystem:English Version}
{hline}{...}
{p2colset 1 25 27 2}{...}
{p2col:{bf:[M-5] geigensystem()} {hline 2}}广义特征向量和特征值
{p_end}
{p2col:}({mansection M-5 geigensystem():查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 40 2}
{it:void}{bind:               }
{cmd:geigensystem(}{it:A}{cmd:,} 
{it:B}{cmd:,}    
{it:X}{cmd:,} 
{it:w}{cmd:,} 
{it:b}{cmd:)}

{p 8 40 2}
{it:void}{bind:           }
{cmd:leftgeigensystem(}{it:A}{cmd:,} 
{it:B}{cmd:,}   
{it:X}{cmd:,} 
{it:w}{cmd:,} 
{it:b}{cmd:)}


{p 8 40 2}
{it:void}{bind:        }
{cmd:geigensystemselectr(}{it:A}{cmd:,} 
{it:B}{cmd:,} 
{it:range}{cmd:,}  
{it:X}{cmd:,} 
{it:w}{cmd:,} 
{it:b}{cmd:)} 

{p 8 40 2}
{it:void}{bind:    }
{cmd:leftgeigensystemselectr(}{it:A}{cmd:,} 
{it:B}{cmd:,} 
{it:range}{cmd:,}  
{it:X}{cmd:,} 
{it:w}{cmd:,} 
{it:b}{cmd:)} 


{p 8 40 2}
{it:void}{bind:        }
{cmd:geigensystemselecti(}{it:A}{cmd:,} 
{it:B}{cmd:,} 
{it:index}{cmd:,} 
{it:X}{cmd:,} 
{it:w}{cmd:,} 
{it:b}{cmd:)} 

{p 8 40 2}
{it:void}{bind:    }
{cmd:leftgeigensystemselecti(}{it:A}{cmd:,} 
{it:B}{cmd:,} 
{it:index}{cmd:,} 
{it:X}{cmd:,} 
{it:w}{cmd:,} 
{it:b}{cmd:)} 


{p 8 40 2}
{it:void}{bind:        }
{cmd:geigensystemselectf(}{it:A}{cmd:,} 
{it:B}{cmd:,} 
{it:f}{cmd:,} 
{it:X}{cmd:,} 
{it:w}{cmd:,} 
{it:b}{cmd:)} 

{p 8 40 2}
{it:void}{bind:    }
{cmd:leftgeigensystemselectf(}{it:A}{cmd:,} 
{it:B}{cmd:,} 
{it:f}{cmd:,} 
{it:X}{cmd:,} 
{it:w}{cmd:,} 
{it:b}{cmd:)} 


{p 4 4 2}
输入参数是 

{p2colset 9 33 35 2}{...}
{p2col 13 33 35 2: {it:A}:  {it:数字矩阵}}{p_end}
{p2col 13 33 35 2: {it:B}:  {it:数字矩阵}}{p_end}
{p2col 9 33 35 2: {it:range}:  {it:实向量}}(待选择的广义特征值范围){p_end}
{p2col 9 33 35 2: {it:index}:  {it:实向量}}(待选择的广义特征值的索引){p_end}
{p2col 13 33 35 2: {it:f}:  {it:指针标量}}(指向用于选择广义特征值的函数){p_end}

{p 4 4 2}
输出结果是

            {it:X}:  {it:数字矩阵}的广义特征向量 
            {it:w}:  {it:数字向量}（广义特征值的分子）
            {it:b}:  {it:数字向量}（广义特征值的分母）
{p2colreset}{...}
			
{p 4 4 2}
以下常规程序用于实现上述例程：

{p 8 33 2}
{it:void}
{cmd:_geigensystem_la(}{it:数字矩阵 H}{cmd:,} 
{it:R}{cmd:,}
{it:XL}{cmd:,}
{it:XR}{cmd:,}
{it:w}{cmd:,}
{it:b}{cmd:,}
{it:string scalar side}{cmd:)}

{p 8 33 2}
{it:void}
{cmd:_geigenselectr_la(}{it:数字矩阵 H}{cmd:,} 
{it:R}{cmd:,}
{it:XL}{cmd:,}
{it:XR}{cmd:,}
{it:w}{cmd:,}
{it:b}{cmd:,}
{it:range}{cmd:,}
{it:string scalar side}{cmd:)}

{p 8 33 2}
{it:void}
{cmd:_geigenselecti_la(}{it:数字矩阵 H}{cmd:,} 
{it:R}{cmd:,}
{it:XL}{cmd:,}
{it:XR}{cmd:,}
{it:w}{cmd:,}
{it:b}{cmd:,}
{it:index}{cmd:,}
{it:string scalar side}{cmd:)}

{p 8 33 2}
{it:void}
{cmd:_geigenselectf_la(}{it:数字矩阵 H}{cmd:,} 
{it:R}{cmd:,}
{it:XL}{cmd:,}
{it:XR}{cmd:,}
{it:w}{cmd:,}
{it:b}{cmd:,}
{it:pointer scalar f}{cmd:,}
{it:string scalar side}{cmd:)}
	
{p 8 33 2}
{it:实标量}
{cmd:_geigen_la(}{it:数字矩阵 H}{cmd:,}
{it:R}{cmd:,}
{it:XL}{cmd:,}
{it:XR}{cmd:,}
{it:w}{cmd:,}
{it:select}{cmd:,}
{it:string scalar side}{cmd:,}
{it:string scalar howmany}{cmd:)}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:geigensystem(}{it:A}{cmd:,} {it:B}{cmd:,} {it:X}{cmd:,} {it:w}{cmd:,} 
{it:b}{cmd:)} 计算 
{help mf_geigensystem##geigenvector:广义特征向量} 的两个 
一般的、实数或复数的方阵 {it:A} 和 
{it:B}，以及相应的 
{help mf_geigensystem##geigenvalue:广义特征值}。

{p 8 12 2} o  {it:A} 和 {it:B} 是两个具有相同尺寸的一般的、实数或复数的方阵。

{p 8 12 2} o  {it:X} 包含广义特征向量。 

{p 8 12 2} o  {it:w} 包含广义特征值的分子。 

{p 8 12 2} o  {it:b} 包含广义特征值的分母。 

{p 4 4 2}
{cmd:leftgeigensystem(}{it:A}{cmd:,} {it:B}{cmd:,} {it:X}{cmd:,} {it:w}{cmd:,} 
{it:b}{cmd:)} 镜像 {cmd:geigensystem()}，不同之处在于 
{cmd:leftgeigensystem()} 计算 
左侧的广义特征向量。

{p 4 4 2}
{cmd:geigensystemselectr(}{it:A}{cmd:,} {it:B}{cmd:,} {it:range}{cmd:,} 
{it:X}{cmd:,} {it:w}{cmd:,} {it:b}{cmd:)} 计算两个一般的、实数或复数的方阵 {it:A} 和 
{it:B} 的已选择的广义特征向量及其对应的广义特征值。只计算与选定广义特征值相关联的 
广义特征向量。符合 {help mf_geigensystem##range:范围} 的选定广义特征值将被选择。所选的
广义特征向量将返回在 {it:X} 中，其对应的广义特征值将返回在 ({it:w}, {it:b}) 中。

{p 8 8 2}  
{it:range} 是一个长度为 2 的向量。所有在半开区间 ({it:range}{cmd:[1]},
{it:range}{cmd:[2]}] 中具有绝对值的有限广义特征值将被选择。

{p 4 4 2}
{cmd:leftgeigensystemselectr(}{it:A}{cmd:,} {it:B}{cmd:,} 
{it:range}{cmd:,} {it:X}{cmd:,} {it:w}{cmd:,} {it:b}{cmd:)} 
与 {cmd:geigensystemselectr()} 镜像，区别在于 
{cmd:leftgeigensystemr()} 计算左侧的广义特征向量。

{p 4 4 2}
{cmd:geigensystemselecti(}{it:A}{cmd:,} {it:B}{cmd:,} 
{it:index}{cmd:,} {it:X}{cmd:,} {it:w}{cmd:,} {it:b}{cmd:)} 
计算两个一般的、实数或复数的方阵 {it:A} 和 {it:B} 的已选择的右侧广义特征向量以及其相关的 
广义特征值。只计算与选定广义特征值相对应的广义特征向量。一般的特征值通过 {help mf_geigensystem##index:索引} 被选择。所选的 
广义特征向量将返回在 {it:X} 中，而选定的广义特征值将返回在 ({it:w}, {it:b}) 中。

{p 8 8 2} 
有限的广义特征值按它们的绝对值进行降序排序，后跟无限的广义特征值。
无限的广义特征值之间没有特定顺序。

{p 8 8 2} 
{it:index} 是一个长度为 2 的向量。元素 {it:index}{cmd:[1]} 到 {it:index}{cmd:[2]} 中的广义特征值将被选择。

{p 4 4 2}
{cmd:leftgeigensystemselecti(}{it:A}{cmd:,} {it:B}{cmd:,} 
{it:index}{cmd:,} {it:X}{cmd:,} {it:w}{cmd:,} {it:b}{cmd:)} 
与 {cmd:geigensystemselecti()} 镜像，区别在于 
{cmd:leftgeigensystemi()} 计算左侧的广义特征向量。

{p 4 4 2}
{cmd:geigensystemselectf(}{it:A}{cmd:,} {it:B}{cmd:,} 
{it:f}{cmd:,} {it:X}{cmd:,} {it:w}{cmd:,} {it:b}{cmd:)} 计算两个一般的、实数或复数的方阵 
{it:A} 和 {it:B} 的已选择广义特征向量及其对应的广义特征值。只计算与选定 
广义特征值相关联的广义特征向量。广义特征值通过用户编写的函数进行选择，该函数在 
{help mf_geigensystem##criterion:下面} 中描述。所选的广义特征向量将返回在 {it:X} 中，选定的广义特征值将返回在 ({it:w}, {it:b}) 中。

{p 4 4 2}
{cmd:leftgeigensystemselectf(}{it:A}{cmd:,} {it:B}{cmd:,} 
{it:f}{cmd:,} {it:X}{cmd:,} {it:w}{cmd:,} {it:b}{cmd:)}  与 {cmd:geigensystemselectf()} 相镜像，区别在于 
{cmd:leftgeigensystemselectf()} 计算选定的左侧广义特征向量。

{p 4 4 2}	
{cmd:_geigen_la()},{cmd:_geigensystem_la()},{cmd:_geigenselectr_la()},{cmd:_geigenselecti_la()} 和 {cmd:_geigenselectf_la()} 是实现上述函数所使用的 LAPACK 例程的接口； 请参见 
{bf:{help m1_lapack_zh:[M-1] LAPACK}}。 不建议直接使用它们。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection M-5 geigensystem()备注和示例:备注和示例}

{pstd}
以上部分不包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
备注在以下标题下呈现：

	{help mf_geigensystem##geigenvalue:广义特征值}
	{help mf_geigensystem##geigenvector:广义特征向量}
	{help mf_geigensystem##criterion:标准选择}
	{help mf_geigensystem##range:范围选择}
	{help mf_geigensystem##index:索引选择}


{marker geigenvalue}{...}
{title:广义特征值}

{p 4 4 2}
标量 {it:l}（通常记作 {it:lambda}）称为一对 {it:n x n} 方阵 {cmd:A}， {cmd:B} 的广义特征值，当且仅当存在一个非零列向量 {cmd:x}: {it:n x} 1 
（称为广义特征向量），使得

		{cmd:A}{cmd:x} = {it:l}{cmd:B}{cmd:x}{right:(1)}

{p 4 4 2}
(1) 也可以写成

		({cmd:A} - {it:l}{cmd:B}){cmd:x} = 0

{p 4 4 2}
当且仅当下式成立时，该 {it:n} 线性齐次方程组存在非平凡解

		det({cmd:A} - {it:l}{cmd:B}) = 0 {right:    (2)}

{p 4 4 2}
在实际应用中，矩阵对 ({cmd:A}, {cmd:B}) 的广义特征值问题通常被表述为寻找一对标量 ({it:w}, {it:b}) 和一个非零列向量 {cmd:x}，使得

                {it:w}{cmd:A}{cmd:x} = {it:b}{cmd:B}{cmd:x}

{p 4 4 2}
标量 {it:w}/{it:b} 是有限的广义特征值，如果 {it:b} 不为零。如果 {it:b} 为零或数值接近零，则对 ({it:w}, {it:b}) 来说，表示一个无限的广义特征值。该情况可能发生在 {cmd:B} 为奇异时。

{p 4 4 2}
计算广义特征值的 Mata 函数将其返回为长度为 {it:n} 的两个复数向量 {cmd:w} 和 {cmd:b}。如果 {cmd:b[}{it:i}{cmd:]=0}，那么 {it:i} 的广义特征值是无限的；否则，{it:i} 的广义特征值是   
{cmd:w[}{it:i}{cmd:]/b[}{it:i}{cmd:]}.


{marker geigenvector}{...}
{title:广义特征向量}

{p 4 4 2}
列向量 {cmd:x} 是一对矩阵 {cmd:A} 和 {cmd:B} 的广义特征值 ({it:w}, {it:b}) 的右侧广义特征向量，或简单的广义特征向量，如果

		{it:w}{cmd:A}{cmd:x}={it:b}{cmd:B}{cmd:x}

{p 4 4 2}
行向量 {cmd:v} 是一对矩阵 {cmd:A} 和 {cmd:B} 的广义特征值 ({it:w}, {it:b}) 的左侧广义特征向量，如果

		{it:w}{cmd:v}{cmd:A}={it:b}{cmd:v}{cmd:B}

{p 4 4 2}
例如，考虑线性系统 

	dx/dt = {cmd:A1}*x + {cmd:A2}*u
	dy/dt = {cmd:A3}*x + {cmd:A4}*u
	
{p 4 4 2}
其中

	{cmd:: A1 = (-4, -3 \ 2, 1)} 
	{cmd:: A2 = (3 \ 1)}
	{cmd:: A3 = (1, 2)}

{p 4 4 2}
并且

	{cmd:: A4 = 0}

{p 4 4 2}
零点传递函数的有限解 

{marker eq3}{...}
	g(s) = {cmd:A3}*(sI-{cmd:A1})^(-1)*{cmd:A2}+{cmd:A4} {right:    (3)}

{p 4 4 2}	
这个线性时间不变状态空间模型的解由 {cmd:A} 和 {cmd:B} 的有限广义特征值给出，其中

	{cmd:: A = (A1, A2 \ A3, A4)}

{p 4 4 2}
和 

	{cmd:: B = (1, 0, 0 \ 0, 1, 0 \ 0, 0, 0)}

{p 4 4 2}
我们通过使用 

	{cmd:: geigensystem(A, B, X=., w=., b=.)}
 
	{cmd:: X}
	      {txt} 1    2            3
	    {c TLC}{hline 24}{c TRC}
	  1 {c |}  -1   0   2.9790e-16   {c |}
	  2 {c |}  .5   0   9.9301e-17   {c |}
	  3 {c |}  .1   1            1   {c |}
	    {c BLC}{hline 24}{c BRC}

	{cmd:: w}
	       {txt}        1             2             3
	   {c TLC}{hline 42}{c TRC}
	 1 {c |}  -1.97989899   3.16227766    2.23606798  {c |}
	   {c BLC}{hline 42}{c BRC}

	{cmd:: b}
	       {txt}        1             2             3
	   {c TLC}{hline 42}{c TRC}
	 1 {c |} .7071067812             0             0  {c |}
	   {c BLC}{hline 42}{c BRC}

{p 4 4 2}
{cmd:A} 和 {cmd:B} 的唯一有限广义特征值是   

	{cmd:: w[1,1]/b[1,1]}
  	  -2.8

{p 4 4 2}
在这个简单的例子中，{help mf_geigensystem##eq3:(3)} 可以明确写为 

	g(s) = (5s+14)/(s^2+3s+2)
	
{p 4 4 2}
它明显在 -2.8 处有零点解。
	

{marker criterion}{...}
{title:标准选择}

{p 4 4 2}
有时我们希望计算仅满足某些标准的广义特征向量。  
我们可以使用 {cmd:geigensystemselectf()} 来解决这些问题。

{p 4 4 2}
我们必须传递给 {cmd:geigensystemselectf()} 一个 {help m2_ftof_zh:指针}， 
指向实现我们条件的函数。该函数必须接受两个数字标量参数，以便接收广义特征值的分子 {cmd:w} 和分母 {cmd:b}，并且必须返回实值 0 以指示拒绝，而返回非零实值以指示选择。

{p 4 4 2}
在这个例子中，我们希望只计算每个 {cmd:b} 不为零的有限广义特征值。在决定任何小于 1e-15 的值为零之后，我们将我们的函数定义为

	{cmd:: real scalar finiteonly(numeric scalar w, numeric scalar b)}
	{cmd:> {c -(}}
	{cmd:>         return((abs(b)>=1e-15))}
	{cmd:> {c )-}}

{p 4 4 2}
通过使用

	{cmd:: geigensystemselectf(A, B, &finiteonly(), X=., w=., b=.)}
	
{p 4 4 2}
我们在 ({cmd:w}, {cmd:b}) 中获得 {cmd:A} 和 {cmd:B} 的唯一有限广义特征值，并在 {cmd:X} 中获得其对应的特征向量：

	{cmd:: X}
	       {txt}          1
	    {c TLC}{hline 15}{c TRC}
	  1 {c |}  -.894427191  {c |}
	  2 {c |}   .447213595  {c |}
	  3 {c |}   .089442719  {c |}
	    {c BLC}{hline 15}{c BRC}

	{cmd:: w}
	  -1.97989899

	{cmd:: b}
	  .7071067812

	{cmd:: w:/b}
	  -2.8


{marker range}{...}
{title:范围选择}

{p 4 4 2}
我们可以使用 {cmd:geigensystemselectr()} 来计算仅在半开区间内具有绝对值的广义特征值的广义特征向量。
  	
{p 4 4 2}
例如， 

{phang2}
{cmd:: A = (-132, -88, 84, 104 \ -158.4, -79.2, 76.8, 129.6 \ 129.6, 81.6, -79.2, -100.8 \ 160, 84, -80, -132)}
	
{phang2}
{cmd:: B = (-60, -50, 40, 50\-69, -46.4, 38, 58.2 \ 58.8, 46, -37.6, -48 \70, 50, -40, -60)}
	
	{cmd:: range = (0.99, 2.1)}

{p 4 4 2}
我们通过使用 

	{cmd:: geigensystemselectr(A, B, range, X=., w=., b=.)} 

	{cmd:: X}
	       {txt}         1            2
	    {c TLC}{hline 27}{c TRC}
	  1 {c |}  .089442719    .02236068  {c |}
	  2 {c |}   .04472136   .067082039  {c |}
	  3 {c |}   .04472136   .067082039  {c |}
	  4 {c |}  .089442719    .02236068  {c |}
	    {c BLC}{hline 27}{c BRC}

	{cmd:: w}
	       {txt}        1            2
	    {c TLC}{hline 27}{c TRC}
	  1 {c |}  .02820603   .170176379   {c |}
	    {c BLC}{hline 27}{c BRC}

	{cmd:: b}
	       {txt}          1             2
	    {c TLC}{hline 29}{c TRC}
	  1 {c |}  .0141030148   .1701763791  {c |}
	    {c BLC}{hline 29}{c BRC}

{p 4 4 2}
广义特征值的绝对值在半开区间 
(0.99, 2.1] 中。

	{cmd:: abs(w:/b)}
	       {txt} 1   2
	    {c TLC}{hline 9}{c TRC}
	  1 {c |}   2   1 {c |}
	    {c BLC}{hline 9}{c BRC}


{marker index}{...}
{title:索引选择}

{p 4 4 2}
{cmd:geigensystemselect()} 通过使用广义特征值的绝对值按降序排列有限的广义特征值，将无限的广义特征值排在有限的后面。无限的广义特征值之间没有特定的顺序。

{p 4 4 2}
如果我们只想计算在 {cmd:geigensystemselect()} 中获得的广义特征值列表中的广义特征值，其排名为 {it:index}{cmd:[1]} 到 {it:index}{cmd:[2]}，我们可以使用 {cmd:geigensystemselecti()}。
 	
{p 4 4 2}
为了计算这个例子中的前两个广义特征值和广义特征向量，我们可以指定  

	{cmd:: index = (1, 2)}

	{cmd:: geigensystemselecti(A, B, index, X=., w=., b=.)}

{p 4 4 2}
计算结果是

	{cmd:: X}
	       {txt}          1              2
	    {c TLC}{hline 30}{c TRC}
	  1 {c |}    .02981424    -.059628479  {c |}
	  2 {c |}    .04472136    -.059628479  {c |}
	  3 {c |}   .089442719     -.02981424  {c |}
	  4 {c |}    .01490712    -.119256959  {c |}
	    {c BLC}{hline 30}{c BRC}

	{cmd:: w}
	       {txt}         1            2
	    {c TLC}{hline 27}{c TRC}
	  1 {c |}  .012649111   .379473319  {c |}
	    {c BLC}{hline 27}{c BRC}

	{cmd:: b}
	       {txt}          1             2
	    {c TLC}{hline 29}{c TRC}
	  1 {c |}  .0031622777   .1264911064  {c |}
	    {c BLC}{hline 29}{c BRC}

	{cmd:: w:/b}
	       {txt}1   2
	    {c TLC}{hline 9}{c TRC}
	  1 {c |}  4   3  {c |}
	    {c BLC}{hline 9}{c BRC}


{marker conformability}{...}
{title:适应性}

{p 4 4 2}
{cmd:geigensystem(}{it:A}{cmd:,} 
{it:B}{cmd:,} 
{it:X}{cmd:,} 
{it:w}{cmd:,} 
{it:b}{cmd:)}:
{p_end}
	{it:输入:}
		{it:A}:  {it:n x n}
		{it:B}:  {it:n x n}
	{it:输出:}
	        {it:X}:  {it:n x n}
		{it:w}:  1 {it:x n}
                {it:b}:  1 {it:x n}

{p 4 4 2}
{cmd:leftgeigensystem(}{it:A}{cmd:,} 
{it:B}{cmd:,} 
{it:X}{cmd:,} 
{it:w}{cmd:,} 
{it:b}{cmd:)}:
{p_end}
	{it:输入:}
		{it:A}:  {it:n x n}
		{it:B}:  {it:n x n}
	{it:输出:}
	        {it:X}:  {it:n x n}
		{it:w}:  1 {it:x n}
                {it:b}:  1 {it:x n}

{p 4 4 2}
{cmd:geigensystemselectr(}{it:A}{cmd:,} 
{it:B}{cmd:,} 
{it:range}{cmd:,}
{it:X}{cmd:,} 
{it:w}{cmd:,} 
{it:b}{cmd:)}: 
{p_end}
	{it:输入:}
		{it:A}:  {it:n x n}
		{it:B}:  {it:n x n}
	    {it:range}:  1 {it:x} 2 或 2 {it:x} 1
	{it:输出:}
	        {it:X}:  {it:n x m}
		{it:w}:  1 {it:x m}
                {it:b}:  1 {it:x m}

{p 4 4 2}
{cmd:leftgeigensystemselectr(}{it:A}{cmd:,}
{it:B}{cmd:,} 
{it:range}{cmd:,}
{it:X}{cmd:,} 
{it:w}{cmd:,} 
{it:b}{cmd:)}:
{p_end}
	{it:输入:}
		{it:A}:  {it:n x n}
		{it:B}:  {it:n x n}
	    {it:range}:  1 {it:x} 2 或 2 {it:x} 1
	{it:输出:}
	        {it:X}:  {it:m x n}
		{it:w}:  1 {it:x m}
                {it:b}:  1 {it:x m}
		
{p 4 4 2}
{cmd:geigensystemselecti(}{it:A}{cmd:,} 
{it:B}{cmd:,} 
{it:index}{cmd:,} 
{it:X}{cmd:,} 
{it:w}{cmd:,} 
{it:b}{cmd:)}:
{p_end}
	{it:输入:}
		{it:A}:  {it:n x n}
		{it:B}:  {it:n x n}
	    {it:index}:  1 {it:x} 2 或 2 {it:x} 1
	{it:输出:}
	        {it:X}:  {it:n x m}
		{it:w}:  1 {it:x m}
                {it:b}:  1 {it:x m}

{p 4 4 2}
{cmd:leftgeigensystemselecti(}{it:A}{cmd:,} 
{it:B}{cmd:,} 
{it:index}{cmd:,} 
{it:X}{cmd:,} 
{it:w}{cmd:,} 
{it:b}{cmd:)}:
{p_end}
	{it:输入:}
		{it:A}:  {it:n x n}
		{it:B}:  {it:n x n}
	    {it:index}:  1 {it:x} 2 或 2 {it:x} 1
	{it:输出:}
	        {it:X}:  {it:m x n}
		{it:w}:  1 {it:x m}
                {it:b}:  1 {it:x m}

{p 4 8 2}
{cmd:geigensystemselectf(}{it:A}{cmd:,} 
{it:B}{cmd:,} 
{it:f}{cmd:,} 
{it:X}{cmd:,} 
{it:w}{cmd:,} 
{it:b}{cmd:)}:
{p_end}
	{it:输入:}
		{it:A}:  {it:n x n}
		{it:B}:  {it:n x n}
	      	{it:f}:  1 {it:x} 1
	{it:输出:}
	        {it:X}:  {it:n x m}
		{it:w}:  1 {it:x m}
                {it:b}:  1 {it:x m}

{p 4 8 2}
{cmd:leftgeigensystemselectf(}{it:A}{cmd:,} 
{it:B}{cmd:,} 
{it:f}{cmd:,} 
{it:X}{cmd:,} 
{it:w}{cmd:,} 
{it:b}{cmd:)}:
{p_end}
	{it:输入:}
		{it:A}:  {it:n x n}
		{it:B}:  {it:n x n}
	      	{it:f}:  1 {it:x} 1
	{it:输出:}
	        {it:X}:  {it:m x n}
		{it:w}:  1 {it:x m}
                {it:b}:  1 {it:x m}


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
所有函数如果 {it:A} 或 {it:B} 具有缺失值，则返回缺失值结果。 


{marker source}{...}
{title:源代码}

{p 4 4 2}
{view geigensystem.mata, adopath asis:geigensystem.mata},
{view leftgeigensystem.mata, adopath asis:leftgeigensystem.mata},
{view geigensystemselectr.mata, adopath asis:geigensystemselectr.mata},
{view leftgeigensystemselectr.mata, adopath asis:leftgeigensystemselectr.mata},
{view geigensystemselecti.mata, adopath asis:geigensystemselecti.mata},
{view leftgeigensystemselecti.mata, adopath asis:leftgeigensystemselecti.mata},
{view geigensystemselectf.mata, adopath asis:geigensystemselectf.mata},
{view leftgeigensystemselectf.mata, adopath asis:leftgeigensystemselectf.mata}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_geigensystem.sthlp>}