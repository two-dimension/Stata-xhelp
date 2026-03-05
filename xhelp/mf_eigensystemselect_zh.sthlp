{smcl}
{* *! version 1.0.21  15may2018}{...}
{vieweralsosee "[M-5] eigensystemselect()" "mansection M-5 eigensystemselect()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-1] LAPACK" "help m1_lapack_zh"}{...}
{vieweralsosee "[M-5] eigensystem()" "help mf_eigensystem_zh"}{...}
{vieweralsosee "[M-5] matexpsym()" "help mf_matexpsym_zh"}{...}
{vieweralsosee "[M-5] matpowersym()" "help mf_matpowersym_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] Matrix" "help m4_matrix_zh"}{...}
{viewerjumpto "Syntax" "mf_eigensystemselect_zh##syntax"}{...}
{viewerjumpto "Description" "mf_eigensystemselect_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mf_eigensystemselect_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "mf_eigensystemselect_zh##remarks"}{...}
{viewerjumpto "Conformability" "mf_eigensystemselect_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf_eigensystemselect_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf_eigensystemselect_zh##source"}
{help mf_eigensystemselect:English Version}
{hline}{...}
{p2colset 1 30 32 2}{...}
{p2col:{bf:[M-5] eigensystemselect()} {hline 2}}计算选择的特征向量和特征值{p_end}
{p2col:}({mansection M-5 eigensystemselect():查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 40 2}
{it:void}{bind:            }
{cmd:eigensystemselectr(}{it:A}{cmd:,} {it:range}{cmd:,} 
{it:X}{cmd:,} {it:L}{cmd:)} 

{p 8 40 2}
{it:void}{bind:        }
{cmd:lefteigensystemselectr(}{it:A}{cmd:,} {it:range}{cmd:,}
{it:X}{cmd:,} {it:L}{cmd:)} 

{p 8 40 2}
{it:void}{bind:            }
{cmd:eigensystemselecti(}{it:A}{cmd:,} {it:index}{cmd:,} 
{it:X}{cmd:,} {it:L}{cmd:)} 

{p 8 40 2}
{it:void}{bind:        }
{cmd:lefteigensystemselecti(}{it:A}{cmd:,} {it:index}{cmd:,} 
{it:X}{cmd:,} 
{it:L}{cmd:)} 

{p 8 40 2}
{it:void}{bind:            }
{cmd:eigensystemselectf(}{it:A}{cmd:,} {it:f}{cmd:,}{bind:    } 
{it:X}{cmd:,} 
{it:L}{cmd:)} 

{p 8 40 2}
{it:void}{bind:        }
{cmd:lefteigensystemselectf(}{it:A}{cmd:,} {it:f}{cmd:,}{bind:    }  
{it:X}{cmd:,} 
{it:L}{cmd:)} 

{p 8 40 2}
{it:void}{bind:         }
{cmd:symeigensystemselectr(}{it:A}{cmd:,} {it:range}{cmd:,} 
{it:X}{cmd:,} 
{it:L}{cmd:)}

{p 8 40 2}
{it:void}{bind:         }
{cmd:symeigensystemselecti(}{it:A}{cmd:,} {it:index}{cmd:,} 
{it:X}{cmd:,} 
{it:L}{cmd:)}

{p 4 4 2}
其中输入为 

{p2colset 9 33 35 2}{...}
{p2col 13 33 35 2: {it:A}:  {it:数值矩阵}}{p_end}
{p2col 9 33 35 2:{it:range}:  {it:实数向量}}(要选择的特征值范围){p_end}
{p2col 9 33 35 2:{it:index}:  {it:实数向量}}(要选择的特征值索引){p_end}
{p2col 13 33 35 2:{it:f}:  {it:指向函数的标量}}(指向用于选择特征值的函数){p_end}

{p 4 4 2}
输出为

            {it:X}:  {it:特征向量的数值矩阵}
            {it:L}:  {it:特征值的数值向量}
	

{p 4 4 2}
实现上述例程所使用的常规如下：

{p 8 33 2}
{it:void}
{cmd:_eigenselecti_la(}{it:数值矩阵 A}{cmd:,} 
{it:XL}{cmd:,} 
{it:XR}{cmd:,} 
{it:L}{cmd:,} 
{it:string scalar side}{cmd:,}
{it:实数向量 index}{cmd:)}

{p 8 33 2}
{it:void}
{cmd:_eigenselectr_la(}{it:数值矩阵 A}{cmd:,} 
{it:XL}{cmd:,} 
{it:XR}{cmd:,} 
{it:L}{cmd:,} 
{it:string scalar side}{cmd:,}
{it:实数向量 range}{cmd:)}

{p 8 33 2}
{it:void}
{cmd:_eigenselectf_la(}{it:数值矩阵 A}{cmd:,} 
{it:XL}{cmd:,} 
{it:XR}{cmd:,} 
{it:L}{cmd:,} 
{it:string scalar side}{cmd:,}
{it:指向函数的标量 f}{cmd:)}

{p 8 33 2}
{it:实数标量}
{cmd:_eigenselect_la(}{it:数值矩阵 A}{cmd:,} 
{it:XL}{cmd:,} 
{it:XR}{cmd:,} 
{it:L}{cmd:,} 
{it:select}{cmd:,} 
{it:string scalar side}{cmd:,}
{it:实数标量 noflopin}{cmd:)}

{p 8 33 2}
{it:实数标量}
{cmd:_symeigenselect_la(}{it:数值矩阵 A}{cmd:,} 
{it:X}{cmd:,} 
{it:L}{cmd:,}
{it:ifail}{cmd:,}
{it:实数标量 type}{cmd:,}
{it:lower}{cmd:,}
{it:upper}{cmd:,}
{it:abstol}{cmd:)}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:eigensystemselectr(}{it:A}{cmd:,} {it:range}{cmd:,} 
{it:X}{cmd:,} 
{it:L}{cmd:)} 计算方阵 {it:A} 的选择的右特征向量及其对应的特征值。仅计算与选定特征值相对应的特征向量。位于 {help mf_eigensystemselect##range:范围} 的特征值被选择。选定特征向量被返回在 {it:X} 中，其对应的特征值被返回在 {it:L} 中。

{p 8 8 2}  
{it:range} 是一个长度为 2 的向量。绝对值位于半开区间 ({it:range}{cmd:[1]}, {it:range}{cmd:[2]}] 的所有特征值都被选择。

{p 4 4 2} 
{cmd:lefteigensystemselectr(}{it:A}{cmd:,} {it:range}{cmd:,} 
{it:X}{cmd:,} {it:L}{cmd:)} 和 {cmd:eigensystemselectr()} 符合，区别在于它计算选择的左特征向量而不是右特征向量。

{p 4 4 2}
{cmd:eigensystemselecti(}{it:A}{cmd:,} {it:index}{cmd:,} 
{it:X}{cmd:,} {it:L}{cmd:)} 计算方阵 {it:A} 的选择的右特征向量及其对应的特征值。仅计算与选定特征值相对应的特征向量。特征值按 {help mf_eigensystemselect##index:索引} 被选择。选定特征向量被返回在 {it:X} 中，选定特征值被返回在 {it:L} 中。

{p 8 8 2} 
{it:index} 是一个长度为 2 的向量。特征值根据其绝对值按降序排列。特征值其排名为 {it:index}{cmd:[1]} 到 {it:index}{cmd:[2]}，包括在内，被选择。

{p 4 4 2} {cmd:lefteigensystemselecti(}{it:A}{cmd:,} {it:index}{cmd:,} 
{it:X}{cmd:,} {it:L}{cmd:)} 与 {cmd:eigensystemselecti()} 符合，区别在于它计算选择的左特征向量而不是右特征向量。

{p 4 4 2}
{cmd:eigensystemselectf(}{it:A}{cmd:,} {it:f}{cmd:,} 
{it:X}{cmd:,} {it:L}{cmd:)} 计算方阵 {it:A} 的选择的右特征向量及其对应的特征值。仅计算与选定特征值相对应的特征向量。特征值按用户编写的函数选择，具体描述见 {help mf_eigensystemselect##criterion:下文}。选定特征向量被返回在 {it:X} 中，选定特征值被返回在 {it:L} 中。

{p 4 4 2} 
{cmd:lefteigensystemselectf(}{it:A}{cmd:,} {it:f}{cmd:,} 
{it:X}{cmd:,} {it:L}{cmd:)} 和 {cmd:eigensystemselectf()} 符合，区别在于它计算选择的左特征向量而不是右特征向量。

{p 4 4 2}
{cmd:symeigensystemselectr(}{it:A}{cmd:,} {it:range}{cmd:,} 
{it:X}{cmd:,} {it:L}{cmd:)} 计算对称（埃米特）矩阵 {it:A} 的选择特征向量及其对应特征值。仅计算与选定特征值相对应的特征向量。特征值位于 {help mf_eigensystemselect##range:范围} 被选择。选定特征向量被返回在 {it:X} 中，选定的特征值被返回在 {it:L} 中。

{p 4 4 2}
{cmd:symeigensystemselecti(}{it:A}{cmd:,} {it:index}{cmd:,} 
{it:X}{cmd:,} {it:L}{cmd:)} 计算对称（埃米特）矩阵 {it:A} 的选择特征向量及其对应的特征值。仅计算与选定特征值相对应的特征向量。特征值按 {help mf_eigensystemselect##index:索引} 被选择。选定特征向量被返回在 {it:X} 中，选定特征值被返回在 {it:L} 中。

{p 4 4 2}
{cmd:_eigenselectr_la()},{cmd:_eigenselecti_la()},{cmd:_eigenselectf_la()},{cmd:_eigenselect_la()},{cmd:_symeigenselect_la()} 是用于实现上述功能的 {bf:{help m1_lapack_zh:[M-1] LAPACK}} 例程的接口。建议不要直接使用它们。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection M-5 eigensystemselect()Remarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
备注如下所示：

       {help mf_eigensystemselect##intro:介绍}
       {help mf_eigensystemselect##range:范围选择}
       {help mf_eigensystemselect##index:索引选择}
       {help mf_eigensystemselect##criterion:标准选择}
       {help mf_eigensystemselect##other:其他函数}


{marker intro}{...}
{title:介绍}

{p 4 4 2}
这些例程计算可用特征向量的子集。此计算速度往往比计算所有特征向量快得多。(请参见 {help mf_eigensystem_zh:[M-5] eigensystem()}，了解计算所有特征向量的例程及有关特征向量问题的介绍。)

{p 4 4 2}
选择要计算的特征向量有三种方法；它们都基于相应的特征值。首先，我们可以仅选择那些特征值的绝对值落在半开区间中的特征向量。其次，我们可以选择那些特征值具有特定索引的特征向量，前提是将特征值按其绝对值降序排列。第三，我们可以选择那些特征值满足以函数编码的标准的特征向量。

{p 4 4 2}
以下我们将展示这三种方法。为了便于比较，我们首先计算矩阵

	{cmd:: A}
	       {txt} 1     2     3     4
	    {c TLC}{hline 25}{c TRC}
	  1 {c |}  .31   .69   .13   .56  {c |}
	  2 {c |}  .31    .5   .72   .42  {c |}
	  3 {c |}  .68   .37   .71    .8  {c |}
	  4 {c |}  .09   .16   .83    .9  {c |}
	    {c BLC}{hline 25}{c BRC}

{p 4 4 2}
我们用 {bf:{help mf_eigensystem_zh:eigensystem()}} 进行计算：

	{cmd:: eigensystem(A, X=., L=.)}

{p 4 4 2}
特征值的绝对值为

	{cmd:: abs(L)}
	      {txt}         1             2             3             4
	    {c TLC}{hline 57}{c TRC}
	  1 {c |}  2.10742167   .4658398402   .4005757984   .4005757984   {c |}
    	    {c BLC}{hline 57}{c BRC}

{p 4 4 2}
相应的特征向量为 

	{cmd:: X}
	       {txt}        1             2                           3
	    {c TLC}{hline 55}
	  1 {c |}  .385302069   -.394945842                 .672770333  
	  2 {c |}  .477773165   -.597299386   -.292386384 - .171958335i 
	  3 {c |}  .604617181   -.192938403   -.102481414 + .519705293i 
	  4 {c |}  .50765459     .670839771    -.08043663 - .381122722i 
            {c BLC}{hline 55}

	       {txt}                       4
	    {hline 29}{c TRC}
	  1                 .672770333   {c |}
	  2   -.292386384 + .171958335i  {c |}
	  3   -.102481414 - .519705293i  {c |}
	  4   -.08043663  + .381122722i  {c |}
            {hline 29}{c BRC}


{marker range}{...}
{title:范围选择}

{p 4 4 2}
在实际应用中，绝对值大于 1 的特征值通常对应于爆炸性的解，而绝对值小于 1 的特征值则对应于稳定的解。我们通常希望仅使用来自稳定解的特征向量，这可以通过使用 {cmd:eigensystemselectr()} 来实现。我们首先指定 

	{cmd:: range = (-1, .999999999)}

{p 4 4 2}
该范围从 -1 开始以包含 0，并在 .999999999 处停止以排除 1。 
({cmd:range} 中的半开区间左侧开，右侧闭。)

{p 4 4 2}
在 {cmd:eigensystemselectr()} 中使用此 {cmd:range} 请求每个特征向量，其对应特征值的绝对值落在区间 (-1, .999999999] 内。对于当前示例，我们得到

	{cmd:: eigensystemselectr(A, range, X=., L=.)}

	{cmd:: X}
	       {txt}      1                          2                          3
         {c TLC}{hline 67}{c TRC}
       1 {c |} -.442004357   .201218963 - .875384534i   .201218963 + .875384534i {c |}
       2 {c |} -.668468693   .136296114 + .431873675i   .136296114 - .431873675i {c |}
       3 {c |} -.215927364  -.706872994 - .022093594i  -.706872994 + .022093594i {c |}
       4 {c |}  .750771548   .471845361 + .218651289i   .471845361 - .218651289i {c |}
 	 {c BLC}{hline 67}{c BRC}
	
	{cmd:: L}
	       {txt}    1                          2                          3
         {c TLC}{hline 65}{c TRC}
       1 {c |} .46583984  -.076630755 + .393177692i  -.076630755 - .393177692i {c |}
	 {c BLC}{hline 65}{c BRC}

	
	{cmd:: abs(L)}	
	     {txt}         1             2             3
         {c TLC}{hline 43}{c TRC}
       1 {c |}  .4658398402   .4005757984   .4005757984  {c |}
	 {c BLC}{hline 43}{c BRC}

{p 4 4 2}
上述输出说明 {cmd:eigensystemselectr()} 未包含绝对值大于 1 的特征值的结果，如期望的那样。


{marker index}{...}
{title:索引选择}

{p 4 4 2}
在许多统计应用中，特征值衡量特征向量因子的相对重要性。在这些应用中，我们仅希望计算几个最大特征值的特征向量。这里我们使用 {cmd:eigensystemselecti()} 计算与两个最大特征值相对应的特征向量：

	{cmd:: index = (1, 2)}

	{cmd:: eigensystemselecti(A, index, X=., L=.)}

	{cmd:: L}
               {txt}        1            2
            {c TLC}{hline 27}{c TRC}
          1 {c |}  2.10742167    .46583984  {c |}
            {c BLC}{hline 27}{c BRC}

	{cmd:: X}
               {txt}        1             2
            {c TLC}{hline 28}{c TRC}
          1 {c |}  .385302069   -.442004357  {c |}
          2 {c |}  .477773165   -.668468693  {c |}
          3 {c |}  .604617181   -.215927364  {c |}
          4 {c |}  .50765459     .750771548  {c |}
            {c BLC}{hline 28}{c BRC}


{marker criterion}{...}
{title:标准选择}

{p 4 4 2}
在某些应用中，我们只想计算那些对应特征值满足更复杂标准的特征向量。我们可以使用 {cmd:eigensystemselectf()} 来解决这些问题。

{p 4 4 2}
我们必须将 {cmd:eigensystemselectf()} 的一个 {help m2_ftof_zh:指向一个函数的指针} 传递给它，该函数实现我们的标准。该函数必须接受一个复数标量参数，以可以接收特征值，并且必须返回实数值 0 表示拒绝，返回非零实数值表示选择。

{p 4 4 2}
在下面的示例中，我们考虑特征值是否为实数这一常见标准。我们希望仅计算与实特征值对应的特征向量。在决定小于 1e-15 的值为 0 后，我们定义我们的函数为

	{cmd:: real scalar onlyreal(complex scalar ev)}
	{cmd:> {c -(}}
	{cmd:>         return( (abs(Im(ev))<1e-15) )}
	{cmd:> {c )-}}


{p 4 4 2}
我们通过输入以下命令计算仅与实特征值对应的特征向量

	{cmd:: eigensystemselectf(A, &onlyreal(), X=., L=.)}

{p 4 4 2}
满足此标准的特征值及其对应的特征向量为

	{cmd:: L}
               {txt}        1            2
            {c TLC}{hline 26}{c TRC}
          1 {c |}  2.10742167    .46583984 {c |}
            {c BLC}{hline 26}{c BRC}

	{cmd:: X}
               {txt}        1             2
            {c TLC}{hline 28}{c TRC}
          1 {c |}  .385302069   -.442004357  {c |}
          2 {c |}  .477773165   -.668468693  {c |}
          3 {c |}  .604617181   -.215927364  {c |}
          4 {c |}  .50765459     .750771548  {c |}
            {c BLC}{hline 28}{c BRC}


{marker other}{...}
{title:其他函数}

{p 4 4 2}
{cmd:lefteigensystemselectr()} 和 {cmd:symeigensystemselectr()} 使用类似 {cmd:eigensystemselectr()} 的 {it:范围}。

{p 4 4 2}
{cmd:lefteigensystemselecti()} 和 {cmd:symeigensystemselecti()} 使用类似 {cmd:eigensystemselecti()} 的 {it:索引}。

{p 4 4 2}
{cmd:lefteigensystemselectf()} 使用类似 {cmd:eigensystemselectf()} 的函数指针。


{marker conformability}{...}
{title:符合性}

{p 4 4 2}
{cmd:eigensystemselectr(}{it:A}{cmd:,} 
{it:range}{cmd:,}
{it:X}{cmd:,} 
{it:L}{cmd:)}:
{p_end}
	{it:输入:}
	        {it:A}:  {it:n x n}
            {it:range}:  1 {it:x} 2 或 2 {it:x} 1				
	{it:输出:}
	        {it:X}:  {it:n x m}
                {it:L}:  1 {it:x m}

{p 4 4 2}
{cmd:lefteigensystemselectr(}{it:A}{cmd:,} 
{it:range}{cmd:,}
{it:X}{cmd:,} 
{it:L}{cmd:)}: 
{p_end}
	{it:输入:}
	        {it:A}:  {it:n x n}
            {it:range}:  1 {it:x} 2 或 2 {it:x} 1				
	{it:输出:}
	        {it:X}:  {it:m x n}
                {it:L}:  1 {it:x m}

{p 4 4 2}
{cmd:eigensystemselecti(}{it:A}{cmd:,} 
{it:index}{cmd:,}
{it:X}{cmd:,} 
{it:L}{cmd:)}:
{p_end}
	{it:输入:}
	        {it:A}:  {it:n x n}
            {it:index}:  1 {it:x} 2 或 2 {it:x} 1				
	{it:输出:}
	        {it:X}:  {it:n x m}
                {it:L}:  1 {it:x m}

{p 4 4 2}
{cmd:lefteigensystemselecti(}{it:A}{cmd:,} 
{it:index}{cmd:,}
{it:X}{cmd:,} 
{it:L}{cmd:)}:
{p_end}
	{it:输入:}
	        {it:A}:  {it:n x n}
            {it:index}:  1 {it:x} 2 或 2 {it:x} 1				
	{it:输出:}
	        {it:X}:  {it:m x n}
                {it:L}:  1 {it:x m}

{p 4 4 2}
{cmd:eigensystemselectf(}{it:A}{cmd:,} 
{it:f}{cmd:,}
{it:X}{cmd:,} 
{it:L}{cmd:)}:
{p_end}
	{it:输入:}
	        {it:A}:  {it:n x n}
                {it:f}:  1 {it:x} 1				
	{it:输出:}
	        {it:X}:  {it:n x m}
                {it:L}:  1 {it:x m}

{p 4 4 2}
{cmd:lefteigensystemselectf(}{it:A}{cmd:,} 
{it:f}{cmd:,}
{it:X}{cmd:,} 
{it:L}{cmd:)}:
{p_end}
	{it:输入:}
	        {it:A}:  {it:n x n}
                {it:f}:  1 {it:x} 1				
	{it:输出:}
	        {it:X}:  {it:m x n}
                {it:L}:  1 {it:x m}

{p 4 4 2}
{cmd:symeigensystemselectr(}{it:A}{cmd:,} 
{it:range}{cmd:,}
{it:X}{cmd:,} 
{it:L}{cmd:):
{p_end}
	{it:输入:}
	        {it:A}:  {it:n x n}
            {it:range}:  1 {it:x} 2 或 2 {it:x} 1				
	{it:输出:}
		{it:X}:  {it:n x m}
		{it:L}:  1 {it:x m}

{p 4 4 2}
{cmd:symeigensystemselecti(}{it:A}{cmd:,} 
{it:index}{cmd:,}
{it:X}{cmd:,} 
{it:L}{cmd:):
{p_end}
	{it:输入:}
	        {it:A}:  {it:n x n}
            {it:index}:  1 {it:x} 2 或 2 {it:x} 1				
	{it:输出:}
		{it:X}:  {it:n x m}
		{it:L}:  1 {it:x m}
			

{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
所有函数如果 {it:A} 有缺失值时将返回缺失值结果。

{p 4 4 2}
{cmd: symeigensystemselectr()} 和 {cmd: symeigensystemselecti()} 
使用 {it:A} 的下三角部分而不检查对称性。
当 {it:A} 是复数时，仅使用对角线的实部。

{p 4 4 2}
如果第 {it:i} 个特征向量未收敛，{cmd:symeigensystemselectr()} 和 {cmd:symeigensystemselecti()} 会在返回的特征向量矩阵的第 {it:i} 列中插入一列缺失值向量。


{marker source}{...}
{title:源代码}

{p 4 4 2}
{view eigensystemselectr.mata, adopath asis:eigensystemselectr.mata},
{view eigensystemselecti.mata, adopath asis:eigensystemselecti.mata},
{view eigensystemselectf.mata, adopath asis:eigensystemselectf.mata},
{view lefteigensystemselectr.mata, adopath asis:lefteigensystemselectr.mata},
{view lefteigensystemselecti.mata, adopath asis:lefteigensystemselecti.mata},
{view lefteigensystemselectf.mata, adopath asis:lefteigensystemselectf.mata},
{view symeigensystemselectr.mata, adopath asis:symeigensystemselectr.mata},
{view symeigensystemselecti.mata, adopath asis:symeigensystemselecti.mata}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_eigensystemselect.sthlp>}