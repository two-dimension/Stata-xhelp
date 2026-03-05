{smcl}
{* *! version 1.1.10  15may2018}{...}
{vieweralsosee "[M-5] asarray()" "mansection M-5 asarray()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-5] AssociativeArray()" "help mf_associativearray_zh"}{...}
{vieweralsosee "[M-5] hash1()" "help mf_hash1_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] Manipulation" "help m4_manipulation_zh"}{...}
{vieweralsosee "[M-4] Programming" "help m4_programming_zh"}{...}
{viewerjumpto "Syntax" "mf_asarray_zh##syntax"}{...}
{viewerjumpto "Description" "mf_asarray_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mf_asarray_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "mf_asarray_zh##remarks"}{...}
{viewerjumpto "Conformability" "mf_asarray_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf_asarray_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf_asarray_zh##source"}
{help mf_asarray:English Version}
{hline}{...}
{p2colset 1 20 22 2}{...}
{p2col:{bf:[M-5] asarray()} {hline 2}}关联数组
{p_end}
{p2col:}({mansection M-5 asarray():查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{col 10}{...}
{it:A} {cmd:=} {...}
{cmd:asarray_create(}[  {it:keytype}{...}
{right:{it:declare A                 }}
{col 29}[, {it:keydim} 
{col 29}[, {it:minsize} 
{col 29}[, {it:minratio} 
{col 29}[, {it:maxratio} ]]]]]{cmd:)}

{col 15}{...}
{cmd:asarray(}{it:A}{cmd:,} {...}
{it:key}{cmd:,} {...}
{it:a}{cmd:)}{...}
{right:{it:A[key] = a                }}

{col 11}{...}
{it:a} {cmd:=} {...}
{cmd:asarray(}{it:A}{cmd:,} {...}
{it:key}{cmd:)}{...}
{right:{it:a = A[key] or a = notfound}}

{col 15}{...}
{cmd:asarray_remove(}{it:A}{cmd:,} {...}
{it:key}{cmd:)}{...}
{right:{it:delete A[key] if it exists}}



{col 8}{...}
{it:bool} {cmd:=} {...}
{cmd:asarray_contains(}{it:A}{cmd:,} {...}
{it:key}{cmd:)} {...}
{right:{it:A[key] exists?            }}

{col 11}{...}
{it:N} {cmd:=} {...}
{cmd:asarray_elements(}{it:A}{cmd:)}{...}
{right:{it:# of elements in A        }}


{col 8}{...}
{it:keys} {cmd:=} {...}
{cmd:asarray_keys(}{it:A}{cmd:)}{...}
{right:{it:all keys in A             }}


{col 9}{...}
{it:loc} {cmd:=} {...}
{cmd:asarray_first(}{it:A}{cmd:)}{...}
{right:{it:location of first element }}
{right:{it:or NULL                   }}

{col 9}{...}
{it:loc} {cmd:=} {...}
{cmd:asarray_next(}{it:A}{cmd:,} {...}
{it:loc}{cmd:)}{...}
{right:{it:location of next element  }}
{right:{it:or NULL                   }}

{col 9}{...}
{it:key} {cmd:=} {...}
{cmd:asarray_key(}{it:A}{cmd:,} {...}
{it:loc}{cmd:)}{...}
{right:{it:key at loc                }}

{col 11}{...}
{it:a} {cmd:=} {...}
{cmd:asarray_contents(}{it:A}{cmd:,} {...}
{it:loc}{cmd:)}{...}
{right:{it:contents a at loc         }}


{col 15}{...}
{cmd:asarray_notfound(}{it:A}{cmd:,} {...}
{it:notfound}{cmd:)}{...}
{right:{it:set notfound value        }}

{col 4}{...}
{it:notfound} {cmd:=} {...}
{cmd:asarray_notfound(}{it:A}{cmd:)} {...}
{right:{it:query notfound value      }}


{p 4 4 2}
其中

{p 15 19 2}
{it:A:}
关联数组 {it:A[key]}。由 {cmd:asarray_create()} 创建并传递给其他函数。如果 {it:A} 被声明，则它被声明为 {it:transmorphic}。

{p 9 19 2}
{it:keytype:} 
键的元素类型； 
{cmd:"string"}, {cmd:"real"}, {cmd:"complex"}, 或 {cmd:"pointer"}。  
可选；默认 {cmd:"string"}。

{p 10 19 2}
{it:keydim:} 
键的维度； 
1 <= {it:keydim} <= 50。
可选；默认 1。

{p 9 19 2}
{it:minsize:} 
用于加速在 {it:A} 中查找键的哈希表的初始大小；
{it:real scalar}; 5 <= {it:minsize} <= 1,431,655,764。
可选；默认 100。

{p 8 19 2}
{it:minratio:} 
哈希表自动缩小的填充比例； 
{it:real scalar}; 0 <= {it:minratio} <= 1。
可选； 
默认 0.5。

{p 8 19 2}
{it:maxratio:} 
哈希表自动扩大时的填充比例； 
{it:real scalar};
1 < {it:maxratio} <= {cmd:.}（表示无穷大）。
可选； 
默认 1.5。

{p 13 19 2}
{it:key:}
元素在 {it:A} 中存储的键；
默认是 {it:string scalar}； 
类型和维度通过 
{cmd:asarray_create()} 声明.

{p 15 19 2}
{it:a:}  {it:A} 的元素； {it:transmorphic}; 可以是任何大小的任何内容；不同的 {it:A[key]} 元素可以有不同类型的内容。

{p 12 19 2}
{it:bool:}
布尔逻辑值； {it:real scalar}; 等于 1 或 0，表示真或假。

{p 15 19 2}
{it:N:}  存储在 {it:A} 中的元素数量； {it:real scalar}; 
0 <= {it:N} <= 2,147,483,647。

{p 12 19 2}
{it:keys:}
{it:A} 中存在的所有键的列表。每一行是一组键。
因此，如果键是 {it:string scalars}，则 {it:keys} 是 {it:string colvector}；如果键是 {it:string vectors}，则是 {it:string matrix}；如果键是 {it:real scalars}，则是 {it:real colvector}，等等。
请注意 {cmd:rows(}{it:keys}{cmd:)} = {it:N}。

{p 13 19 2}
{it:loc:}
{it:A} 中的位置； {it:transmorphic}。第一个位置由 {cmd:asarray_first()} 返回，后续位置由 {cmd:asarray_next()} 返回。 
{it:loc}{cmd:==NULL} 表示没有更多的元素。

{p 8 19 2}
{it:notfound:}
当 {it:key} 在 {it:A} 中不存在时，{cmd:asarray(}{it:A}{cmd:,} {it:key}{cmd:)} 返回的值。 
默认情况下 {it:notfound} {cmd:=} 
{cmd:J(0,0,.)}。



{marker description}{...}
{title:描述}

{pstd}
{cmd:asarray()} 提供了一维和多维的关联数组，也称为容器、映射、字典、索引和哈希表。

{pstd}
另请参阅 {help mf_associativearray_zh:[M-5] AssociativeArray()}，以获取此处记录的函数的类接口。 


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection M-5 asarray()Remarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
在使用 {cmd:asarray()} 编写程序之前，您应该尝试交互地进行。备注在以下标题下列出：

	{help mf_asarray##detailed_desc:详细描述}
	{help mf_asarray##example1:示例 1：标量键和标量内容}
	{help mf_asarray##example2:示例 2：标量键和矩阵内容}
	{help mf_asarray##example3:示例 3：向量键和标量内容；稀疏矩阵}
	{help mf_asarray##efficiency:设置效率参数}


{marker detailed_desc}{...}
{title:详细描述}

{p 4 4 2}
在关联数组中，索引可以是任何东西，而不是密集的整数，甚至可以是字符串。因此，您可能会使得 {it:A["Frank Smith"]} 等于某个值，而 {it:A["Mary Jones"]} 等于另一个值。在 Mata 中，您可以写成 
{cmd:asarray(}{it:A}{cmd:,} {cmd:"Frank Smith",} {it:  something}{cmd:)} 和
{cmd:asarray(}{it:A}{cmd:,} {cmd:"Mary Jones",} {it:  somethingelse}{cmd:)} 来定义这些元素，使用 
{cmd:asarray(}{it:A}{cmd:,} {cmd:"Frank Smith")} 和 
{cmd:asarray(}{it:A}{cmd:,} {cmd:"Mary Jones")} 来获取它们的值。

{p 4 4 2}
{it:A} = {cmd:asarray_create()} 声明（创建）一个关联数组。
该函数允许传递参数，但它们是可选的。如果不传递参数，{cmd:asarray_create()} 将声明一个具有字符串标量键的关联数组，正如上面的 {it:A["Frank Smith"]} 和 {it:A["Mary Jones"]} 示例。

{p 4 4 2}
{it:A} = {cmd:asarray_create(}{it:keytype}{cmd:,}
{it:keydim}{cmd:)} 声明一个关联数组，其 {it:keytype} 键的维度为 1 {it:x} {it:keydim}。
{cmd:asarray_create("string",} {cmd:1)} 等价于 
{cmd:asarray_create()} 不带参数。
{cmd:asarray_create("string",} {cmd:2)} 声明键为字符串，如之前所述，但现在它们的维度为 1 {it:x} 2，而不是 1 {it:x} 1，因此数组元素将为 {it:A["Frank Smith", "Mary Jones"]} 的形式。 
{it:A["Mary Jones", "Frank Smith"]} 将是一个不同的元素。
{cmd:asarray_create("real",} {cmd:2)} 声明键为实数 1 {it:x} 2，这在某种程度上对应于我们普通的矩阵概念，即 {it:A[i,j]}。区别在于，要存储，比如，{it:A[100,980]}，并不需要存储内部元素，除了存储 {it:A[100,980]}，我们还可以存储 {it:A[3.14159,2.71828]}。

{p 4 4 2}
{cmd:asarray_create()} 还有三个可选参数： 
{it:minsize}、{it:minratio} 和 {it:maxratio}。我们建议您不要指定它们。它们在
{it:{help mf_asarray##efficiency:设置效率参数}}
中讨论，位于下面的 {bf:{help mf_asarray##remarks:备注}} 下。

{p 4 4 2}
{cmd:asarray(}{it:A}{cmd:,} {it:key}{cmd:,} {it:a}{cmd:)} 设置或重置元素 {it:A[key]} = {it:a}。
请注意，如果您将 {it:key} 声明为 1 {it:x} 2，您必须使用圆括号向量符号来指定键文字，例如 
{cmd:asarray(}{it:A}{cmd:,} {cmd:(100,980),} {cmd:2.15)}。
另外，如果 {cmd:k} = {cmd:(100,980)}，那么您可以在 
{cmd:asarray(}{it:A}{cmd:,} {cmd:k,} {cmd:2.15)} 中省略括号。

{p 4 4 2}
{cmd:asarray(}{it:A}{cmd:,} {it:key}{cmd:)} 返回元素 {it:A[key]}，如果元素不存在，则返回 {it:notfound}。
默认情况下，{it:notfound} 是 {cmd:J(0,0,.)}，但您可以通过 
{cmd:asarray_notfound()} 来更改它。如果您将 
{it:notfound} 重新定义为 {cmd:0} 并将键定义为实数 1 {it:x} 2，您将能够有效地记录稀疏矩阵。

{p 4 4 2}
{cmd:asarray_remove(}{it:A}{cmd:,} {it:key}{cmd:)} 删除 
{it:A[key]}，如果 {it:A[key]} 已经未定义，则不执行任何操作。

{p 4 4 2}
{cmd:asarray_contains(}{it:A}{cmd:,} {it:key}{cmd:)} 
如果 {it:A[key]} 已定义，返回 1，否则返回 0。

{p 4 4 2}
{cmd:asarray_elements(}{it:A}{cmd:)} 返回存储在 {it:A} 中的元素数量。

{p 4 4 2}
{cmd:asarray_keys(}{it:A}{cmd:)} 返回一个向量或矩阵
，其中包含所有键，每行一个键。
这些键并不是按字母或数字顺序排列。
如果您想要那样，可以在以下代码中进行 
{cmd:sort(asarray_keys(}{it:A}{cmd:),} {cmd:1)} 
如果您的键是标量，或者一般情况下，使用 
{cmd:sort(asarray_keys(}{it:A}{cmd:),} {it:idx}{cmd:)}；请参见
{manhelp mf_sort M-5:sort()}。

{p 4 4 2}
{cmd:asarray_first(}{it:A}{cmd:)} 和 
{cmd:asarray_next(}{it:A}{cmd:,} {it:loc}{cmd:)}
提供了一种逐个获取名称的方法。
代码 

{col 9}{cmd:for (loc=asarray_first(}{it:A}{cmd:);} {...}
{cmd:loc!=NULL;} {...}
{cmd:loc=asarray_next(}{it:A}{cmd:, loc)) {c -(}}
		...
{col 9}{cmd:{c )-}}

{p 4 4 2}
{cmd:asarray_key(}{it:A}{cmd:,} {it:loc}{cmd:)}
和
{cmd:asarray_contents(}{it:A}{cmd:,} {it:loc}{cmd:)}
分别返回 {it:loc} 处的键和内容，因此循环变成 

{col 9}{cmd:for (loc=asarray_first(}{it:A}{cmd:);} {...}
{cmd:loc!=NULL;} {...}
{cmd:loc=asarray_next(}{it:A}{cmd:, loc)) {c -(}}
		...
		...  {cmd:asarray_key(}{it:A}{cmd:, loc)} ...
		...
		...  {cmd:asarray_contents(}{it:A}{cmd:, loc)} ...
		...
{col 9}{cmd:{c )-}}

{p 4 4 2}
{cmd:asarray_notfound(}{it:A}{cmd:,} {it:notfound}{cmd:)} 定义当元素不存在时 
{cmd:asarray(}{it:A}{cmd:,} {it:key}{cmd:)} 返回的内容。默认情况下，{it:notfound} 是 {cmd:J(0,0,.)}，也就是说，一个 0 {it:x} 0 的实数矩阵。 您可以随时重置 {it:notfound}。
{cmd:asarray_notfound(}{it:A}{cmd:)} 返回当前的 
{it:notfound} 值。


{* asarrayex.do, junk1.smcl}{...}
{marker example1}{...}
{title:示例 1：标量键和标量内容}

	{com}: A = asarray_create()
	{res}
	{com}: asarray(A, "bill", 1.25)
	{res}
	{com}: asarray(A, "mary", 2.75)
	{res}
	{com}: asarray(A, "dan",  1.50)
	{res}
	{com}: asarray(A, "bill")
	{res}  1.25

	{com}: asarray(A, "mary")
	{res}  2.75

	{com}: asarray(A, "mary", 3.25)
	{res}
	{com}: asarray(A, "mary")
	{res}  3.25

	{com}: sum = 0
	{res}
	{com}: for (loc=asarray_first(A); loc!=NULL; loc=asarray_next(A, loc)) {c -(}
	          sum = sum + asarray_contents(A, loc)
	  {c )-}
	{res}
	{com}: sum
	{res}  6

	{com}: sum/asarray_elements(A)
	{res}  2{txt}
{com}{sf}{ul off}


{* asarrayex.do, junk2.smcl}{...}
{marker example2}{...}
{title:示例 2：标量键和矩阵内容}

	{com}: A = asarray_create() 
	{res}
	{com}: asarray(A, "Count", (1,2\3,4))
	{res}
	{com}: asarray(A, "Hilbert", Hilbert(3))
	{res}
	{com}: asarray(A, "Count")
	{res}       {txt}1   2
            {c TLC}{hline 9}{c TRC}
          1 {c |}  {res}1   2{txt}  {c |}
          2 {c |}  {res}3   4{txt}  {c |}
            {c BLC}{hline 9}{c BRC}

	{com}: asarray(A, "Hilbert")
	{res}{txt}[symmetric]
                         1             2             3
            {c TLC}{hline 43}{c TRC}
          1 {c |}  {res}          1                            {txt}  {c |}
          2 {c |}  {res}         .5   .3333333333              {txt}  {c |}
          3 {c |}  {res}.3333333333           .25            .2{txt}  {c |}
            {c BLC}{hline 43}{c BRC}{txt}


{* asarrayex.do, junk3.smcl}{...}
{marker example3}{...}
{title:示例 3：向量键和标量内容；稀疏矩阵}

	{com}: A = asarray_create("real", 2)
	{res}
	{com}: asarray_notfound(A, 0)
	{res}
	{com}: asarray(A, (   1,    1), 1)
	{res}
	{com}: asarray(A, (1000,  999), .5)
	{res}
	{com}: asarray(A, (1000, 1000), 1)
	{res}
	{com}: asarray(A, (1000, 1001), .5)
	{res}
	{com}: asarray(A, (1,1))
	{res}  1

	{com}: asarray(A, (2,2))
	{res}  0

	{com}: // 一种获取迹的方法:
	: trace = 0 
	{res}
	{com}: for (i=1; i<=1000; i++) trace = trace + asarray(A, (i,i))
	{res}
	{com}: trace
	{res}  2

	{com}: // 另外一种获取迹的方法 
	: trace = 0
	{res}
	{com}: for (loc=asarray_first(A); loc!=NULL; loc=asarray_next(A, loc)) {c -(}
	          index = asarray_key(A, loc) 
	          if (index[1]==index[2]) {c -(}
	                  trace = trace + asarray_contents(A, loc)
	          {c )-}
	  {c )-}
	{res}
	{com}: trace
	{res}  2{txt}


{marker efficiency}{...}
{title:设置效率参数}

{p 4 4 2}
语法 {cmd:asarray_create()} 是

{p 8 12 2}
{it:A} {cmd:=} {...}
{cmd:asarray_create(}{it:keytype}{cmd:,}
{it:keydim}{cmd:,}
{it:minsize}{cmd:,} 
{it:minratio}{cmd:,} 
{it:maxratio}{cmd:)}

{p 4 4 2}
所有参数都是可选的。前两个参数指定键的特征，其使用已在之前展示过。最后三个参数是效率参数。在大多数情况下，我们建议您不要指定它们。默认值是为了产生合理的执行时间和内存消耗而选择的。

{p 4 4 2}
{cmd:asarray()} 通过哈希表工作。假设我们希望记录 {it:n} 个条目。
其思路是分配一个 {it:N} 行的哈希表，其中 {it:N} 可以小于、等于或大于 {it:n}。 当需要找到与某个键对应的元素时，首先计算一个称为哈希函数的函数，返回一个整数 {it:h}，范围从 1 到 {it:N}。首先查看第 {it:h} 行。如果第 {it:h} 行已被使用且键不同，就会发生冲突。在这种情况下，我们必须为第 {it:h} 行分配一个重复列表，然后将重复键和内容放入该列表。冲突是有害的，因为在发生冲突时，{cmd:asarray()} 必须分配一个重复列表，这需要时间和内存，尽管不需要很多。返回结果时，如果第 {it:h} 行有重复列表，{cmd:asarray()} 必须搜索该列表，它是顺序进行的，这也会消耗额外时间。哈希表在发生冲突的情况非常少时效果最佳。

{p 4 4 2}
显然，如果 {it:N} < {it:n}，冲突肯定会发生。
然而，请注意，尽管性能受到影响，但该方法并没有崩溃。一个 {it:N} 的哈希表可以容纳任意数量的条目，即使 {it:N} < {it:n}。

{p 4 4 2}
性能依赖于实现的细节。我们检查了 {cmd:asarray()} 的行为，并发现当 {it:n}/{it:N} <= 0.75 时，冲突很少发生。当 {it:n}/{it:N} = 1.5 时，性能受到影响，但没有预期中的那么严重。 当 {it:n}/{it:N} = 2 时，性能大幅下降。

{p 4 4 2}
当您添加或删除一个元素时，{cmd:asarray()} 会检查 {it:n}/{it:N} 并考虑是否重建表格，变更为更大的或更小的 {it:N}；它在 {it:n}/{it:N} 较大时重建表，以保持效率；而在 {it:n}/{it:N} 较小时重建表以节省内存。重建表是计算密集型操作，因此不应过于频繁地执行。

{p 4 4 2}
在做出这些决策时，{cmd:asarray()} 使用三个参数：

{p 8 19 2}
{it:maxratio:}
当 {it:n}/{it:N} >= {it:maxratio} 时，表格将增大至 {it:N} = 
1.5*{it:n}。

{p 8 19 2}
{it:minratio:}
当 {it:n}/{it:N} <= {it:minratio}/1.5 时，表格将缩小至 {it:N} =
1.5*{it:n}。（若想了解例外，请参见 {it:minsize}。）

{p 9 19 2}
{it:minsize:} 
如果新的 {it:N} < 1.5*{it:minsize}，则表将缩小至 
{it:N} = 1.5*{it:minsize}，前提是它还不是那个大小。

{p 4 4 2}
这三个参数的默认值分别为 1.5、0.5 和 100。
您可以重置它们，尽管您不太可能改善 {it:minratio} 和 {it:maxratio} 的默认值。

{p 4 4 2}
当您知道表格中将包含的元素数量且该数量大于 100 时，可以提高 {it:minsize}。例如，如果您知道表中将至少包含 1,000 个元素，则将 {it:minsize} 设置为 1,000，这意味着 
{it:N} = 1,500，将避免两个重新调整大小，即从 150 到 451 和从 451 到 1,354。这可以节省一点时间。

{p 4 4 2}
您还可以关闭调整大小功能。将 {it:minratio} 设置为 0 将关闭缩小功能。将 {it:maxratio} 设置为 {cmd:.}（缺失）将关闭扩大功能。如果您设置 {it:minsize} 足够大以应对您的问题，则可能希望同时关闭缩小和扩大功能。

{p 4 4 2}
我们绝对不会建议仅关闭扩大功能，且极少会建议仅关闭缩小功能。然而，在已知数组只会存在短时间的程序中，关闭缩小可能是高效的。 在数组可能存在较长时间的程序中，关闭缩小则是危险的，因为数组只能增长（并且可能会增长）。

{marker conformability}{...}
{title:兼容性}

{p 4 4 2}
{cmd:asarray_create(}{it:keytype}{cmd:,}
{it:keydim}{cmd:,}
{it:minsize}{cmd:,}
{it:minratio}{cmd:,}
{it:maxratio}{cmd:)}:
{p_end}
	  {it:keytype}:  1 {it:x} 1    （可选）
	   {it:keydim}:  1 {it:x} 1    （可选）
	  {it:minsize}:  1 {it:x} 1    （可选）
	 {it:minratio}:  1 {it:x} 1    （可选）
	 {it:maxratio}:  1 {it:x} 1    （可选）
	   {it:result}:  {it:transmorphic}

{p 4 4 2}
{cmd:asarray(}{it:A}{cmd:,}
{it:key}{cmd:,}
{it:a}{cmd:)}:
{p_end}
		{it:A}:  {it:transmorphic}
	      {it:key}:  1 {it:x} {it:keydim}
		{it:a}:  {it:r_key x c_key}
	   {it:result}:  {it:void}

{p 4 4 2}
{cmd:asarray(}{it:A}{cmd:,}
{it:key}{cmd:)}:
{p_end}
		{it:A}:  {it:transmorphic}
	      {it:key}:  1 {it:x} {it:keydim}
	   {it:result}:  {it:r_key x c_key}

{p 4 4 2}
{cmd:asarray_remove(}{it:A}{cmd:,}
{it:key}{cmd:)}:
{p_end}
		{it:A}:  {it:transmorphic}
	      {it:key}:  1 {it:x} {it:keydim}
	   {it:result}:  {it:void}

{p 4 4 2}
{cmd:asarray_contains(}{it:A}{cmd:,}
{it:key}{cmd:)}, 
{cmd:asarray_elements(}{it:A}{cmd:,}
{it:key}{cmd:)}:
{p_end}
		{it:A}:  {it:transmorphic}
	      {it:key}:  1 {it:x} {it:keydim}
	   {it:result}:  1 {it:x} 1


{p 4 4 2}
{cmd:asarray_keys(}{it:A}{cmd:,}
{it:key}{cmd:)}:
{p_end}
		{it:A}:  {it:transmorphic}
	      {it:key}:  1 {it:x} {it:keydim}
	   {it:result}:  {it:n} {it:x} {it:keydim}

{p 4 4 2}
{cmd:asarray_first(}{it:A}{cmd:)}:
{p_end}
		{it:A}:  {it:transmorphic}
	   {it:result}:  {it:transmorphic}

	
{p 4 4 2}
{cmd:asarray_first(}{it:A}{cmd:,}
{it:loc}{cmd:)}:
{p_end}
		{it:A}:  {it:transmorphic}
	      {it:loc}:  {it:transmorphic}
	   {it:result}:  {it:transmorphic}

{p 4 4 2}
{cmd:asarray_key(}{it:A}{cmd:,}
{it:loc}{cmd:)}:
{p_end}
		{it:A}:  {it:transmorphic}
	      {it:loc}:  {it:transmorphic}
	   {it:result}:  1 {it:x} {it:keydim}

{p 4 4 2}
{cmd:asarray_contents(}{it:A}{cmd:,}
{it:loc}{cmd:)}:
{p_end}
		{it:A}:  {it:transmorphic}
	      {it:loc}:  {it:transmorphic}
	   {it:result}:  {it:r_key} {it:x} {it:c_key}

{p 4 4 2}
{cmd:asarray_notfound(}{it:A}{cmd:,}
{it:notfound}{cmd:)}:
{p_end}
		{it:A}:  {it:transmorphic}
	 {it:notfound}:  {it:r} {it:x} {it:c}
	   {it:result}:  {it:void}

{p 4 4 2}
{cmd:asarray_notfound(}{it:A}{cmd:)}:
{p_end}
		{it:A}:  {it:transmorphic}
	   {it:result}:  {it:r} {it:x} {it:c}


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
没有。


{marker source}{...}
{title:源代码}

{p 4 4 2}
{view asarray.mata, adopath asis:asarray.mata}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_asarray.sthlp>}