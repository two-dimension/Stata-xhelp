{smcl}
{* *! version 1.1.5  15may2018}{...}
{vieweralsosee "[M-5] st_vlexists()" "mansection M-5 st_vlexists()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] Stata" "help m4_stata_zh"}{...}
{viewerjumpto "语法" "mf_st_vlexists_zh##syntax"}{...}
{viewerjumpto "描述" "mf_st_vlexists_zh##description"}{...}
{viewerjumpto "PDF文档链接" "mf_st_vlexists_zh##linkspdf"}{...}
{viewerjumpto "备注" "mf_st_vlexists_zh##remarks"}{...}
{viewerjumpto "匹配性" "mf_st_vlexists_zh##conformability"}{...}
{viewerjumpto "诊断" "mf_st_vlexists_zh##diagnostics"}{...}
{viewerjumpto "源代码" "mf_st_vlexists_zh##source"}
{help mf_st_vlexists:English Version}
{hline}{...}
{p2colset 1 24 26 2}{...}
{p2col:{bf:[M-5] st_vlexists()} {hline 2}}使用和操作值标签{p_end}
{p2col:}({mansection M-5 st_vlexists():查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{it:实数标量}{bind:  }
{cmd:st_vlexists(}{it:名称}{cmd:)}

{p 8 12 2}
{it:空}{bind:         }
{cmd:st_vldrop(}{it:名称}{cmd:)}

{p 8 12 2}
{it:字符串矩阵}
{cmd:st_vlmap(}{it:名称}{cmd:,}
{it:实数矩阵 值}{cmd:)}

{p 8 12 2}
{it:实数矩阵}{bind:  }
{cmd:st_vlsearch(}{it:名称}{cmd:,}
{it:字符串矩阵 文本}{cmd:)}

{p 8 12 2}
{it:空}{bind:         }
{cmd:st_vlload(}{it:名称}{cmd:,}
{it:值}{cmd:,}
{it:文本}{cmd:)}

{p 8 52 2}
{it:空}{bind:         }
{cmd:st_vlmodify(}{it:名称}{cmd:,}
{it:实数列向量 值}{cmd:,}{break}
{it:字符串列向量 文本}{cmd:)}


{p 4 10 2}
其中 {it:名称} 为 {it:字符串标量}，且在 {cmd:st_vlload()} 中 {it:值} 和 {it:文本} 的类型无关紧要，因为它们会被替换。


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:st_vlexists(}{it:名称}{cmd:)} 
如果值标签 {it:名称} 存在，则返回 1，否则返回 0。

{p 4 4 2}
{cmd:st_vldrop(}{it:名称}{cmd:)} 
如果值标签 {it:名称} 存在，则删除该值标签。

{p 4 4 2}
{cmd:st_vlmap(}{it:名称}{cmd:,} {it:值}{cmd:)} 
通过值标签 {it:名称} 对 {it:值} 进行映射并返回结果。

{p 4 4 2}
{cmd:st_vlsearch(}{it:名称}{cmd:,} {it:文本}{cmd:)} 
执行反向操作；返回与文本对应的值。

{p 4 4 2}
{cmd:st_vlload(}{it:名称}{cmd:,} {it:值}{cmd:,} {it:文本}{cmd:)} 
将值标签 {it:名称} 导入到 {it:值} 和 {it:文本} 中。

{p 4 4 2}
{cmd:st_vlmodify(}{it:名称}{cmd:,} {it:值}{cmd:,} {it:文本}{cmd:)} 
创建一个新的值标签或修改现有的值标签。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection M-5 st_vlexists()备注和示例:备注和示例}

{pstd}
上述部分不包括在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
值标签是命名的，并记录从数值到文本的映射。例如，一个名为 {cmd:sexlbl} 的值标签可能记录 1 对应男性，2 对应女性。值标签附加在 Stata 数值变量上。如果一个 Stata 数值变量附加了值标签 {cmd:sexlbl}，则变量中的 1 和 2 将显示为男性和女性。其他值如何显示 - 如果有其他值 - 则不会受到影响。

{p 4 4 2}
备注在以下标题下呈现：

	{help mf_st_vlexists##remarks1:值标签映射}
	{help mf_st_vlexists##remarks2:值标签创建和编辑}
	{help mf_st_vlexists##remarks3:加载值标签}


{marker remarks1}{...}
{title:值标签映射}

{p 4 4 2}
让我们考虑值标签 {cmd:sexlbl} 将 1 映射到男性，2 映射到女性。{cmd:st_vlmap("sexlbl",} {it:值}{cmd:)} 将通过 {cmd:sexlbl} 对 {it:r} {it:x} {it:c} 矩阵值进行映射并返回一个包含结果的 {it:r} {it:x} {it:c} 字符串矩阵。任何没有映射的值将导致返回 {cmd:""}。因此

	: {cmd:res = st_vlmap("sexlbl", 1)}

	: {cmd:res}
	  男性

	: {cmd:res = st_vlmap("sexlbl", (2, 3, 1))}

	: {cmd:res}
	{res}       {txt}     1        2        3
	    {c TLC}{hline 28}{c TRC}
	  1 {c |}  {res}女性              男性{txt}  {c |}
	    {c BLC}{hline 28}{c BRC}


{p 4 4 2}
{cmd:st_vlsearch(}{it:name}{cmd:,} {it:text}{cmd:)} 
执行反向映射：

	: {cmd:txt = st_vlmap("sexlbl", ("女性","","男性"))}

	: {cmd:txt}
	{res}       {txt}1   2   3
	    {c TLC}{hline 13}{c TRC}
	  1 {c |}  {res}2   .   1{txt}  {c |}
	    {c BLC}{hline 13}{c BRC}


{marker remarks2}{...}
{title:值标签创建和编辑}

{p 4 4 2}
{cmd:st_vlmodify(}{it:name}{cmd:,} {it:values}{cmd:,} {it:text}{cmd:)} 
创建新的值标签并修改现有的值标签。

{p 4 4 2}
如果值标签 {cmd:sexlbl} 不存在，编码 

	: {cmd:st_vlmodify("sexlbl", (1\2), ("男性"\"女性"))}

{p 4 4 2}
将会创建它。如果值标签之前存在，上述命令将修改它，使 1 现在对应男性，2 对应女性，而不管它们之前对应什么。如果它们之前有对应关系的其他映射将保持不变。因此

	: {cmd:st_vlmodify("sexlbl", 3, "未知")}

{p 4 4 2}
将会向标签添加另一个映射。通过将文本指定为 {cmd:""} 来删除值，因此

	: {cmd:st_vlmodify("sexlbl", 3, "")}

{p 4 4 2}
将移除 3 的映射（如果存在对应关系）。
如果你移除所有的映射，值标签本身将被自动删除：

	: {cmd:st_vlmodify("sexlbl", (1\2), (""\""))}

{p 4 4 2}
如果 1 和 2 是其最终映射，结果将导致值标签 {cmd:sexlbl} 被删除。


{marker remarks3}{...}
{title:加载值标签}

{p 4 4 2}
{cmd:st_vlload(}{it:name}{cmd:,} {it:values}{cmd:,} {it:text}{cmd:)} 
返回值标签到 {it:values} 和 {it:text} 中，您可以随意对其进行处理。因此，您可以编码

		{cmd:st_vlload("sexlbl", values, text)}
		...
		{cmd:st_vldrop("sexlbl")}
		{cmd:st_vlmodify("sexlbl", values, text)}


{marker conformability}{...}
{title:匹配性}

    {cmd:st_vlexists(}{it:name}{cmd:)}:
	     {it:name}:  1 {it:x} 1
	   {it:result}:  1 {it:x} 1

    {cmd:st_vldrop(}{it:name}{cmd:)}:
	     {it:name}:  1 {it:x} 1
	   {it:result}:  {it:空}

    {cmd:st_vlmap(}{it:name}{cmd:,} {it:values}{cmd:)}:
	     {it:name}:  1 {it:x} 1
	   {it:values}:  {it:r x c}
	   {it:result}:  {it:r x c}

    {cmd:st_vlsearch(}{it:name}{cmd:,} {it:text}{cmd:)}:
	     {it:name}:  1 {it:x} 1
	     {it:text}:  {it:r x c}
	   {it:result}:  {it:r x c}

    {cmd:st_vlload(}{it:name}{cmd:,} {it:values}{cmd:,} {it:text}{cmd:)}:
	{it:输入:}
	     {it:name}:  1 {it:x} 1
	{it:输出:}
	   {it:values}:  {it:k x} 1
	     {it:text}:  {it:k x} 1

    {cmd:st_vlmodify(}{it:name}{cmd:,} {it:values}{cmd:,} {it:text}{cmd:)}:
	     {it:name}:  1 {it:x} 1
	   {it:values}:  {it:m x} 1
	     {it:text}:  {it:m x} 1
	   {it:result}:  {it:空}


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
上述函数出现错误的唯一情况是 {it:name} 格式不正确或 Mata 内存不足。
函数容忍所有其他问题。

{p 4 4 2}
{cmd:st_vldrop(}{it:name}{cmd:)} 
如果值标签 {it:name} 不存在，则不执行任何操作。

{p 4 4 2}
{cmd:st_vlmap(}{it:name}{cmd:,} {it:values}{cmd:)} 
如果值标签 {it:name} 不存在，则返回 {cmd:J(rows(values), cols(values), "")}。当值标签存在时，没有记录映射的个别值将被返回为 {cmd:""}。

{p 4 4 2}
{cmd:st_vlsearch(}{it:name}{cmd:,} {it:text}{cmd:)} 
如果值标签 {it:name} 不存在，则返回 {cmd:J(rows(values), cols(values), .)}。当值标签存在时，没有对应值的个别文本值将返回为 {cmd:.}（缺失）。

{p 4 4 2}
{cmd:st_vlload(}{it:name}{cmd:,} {it:values}{cmd:,} {it:text}{cmd:)} 
当值标签 {it:name} 不存在时，将 {it:values} 和 {it:text} 设置为 0 {it:x} 1。

{p 4 4 2}
{cmd:st_vlmodify(}{it:name}{cmd:,} {it:values}{cmd:,} {it:text}{cmd:)} 
如果它尚不存在，则创建值标签。
值标签只能映射整数以及 {cmd:.a}、{cmd:.b}、...、{cmd:.z}。
尝试插入映射为 {cmd:.} 的值将被忽略。
非整数值将被截断为整数值。如果 {it:text} 的一个元素为 {cmd:""}，则相应的映射将被移除。


{marker source}{...}
{title:源代码}

{p 4 4 2}
函数是内置的。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_st_vlexists.sthlp>}