{smcl}
{* *! version 1.2.8  14may2018}{...}
{vieweralsosee "[M-5] st_global()" "mansection M-5 st_global()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-5] st_rclear()" "help mf_st_rclear_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] Stata" "help m4_stata_zh"}{...}
{viewerjumpto "Syntax" "mf_st_global_zh##syntax"}{...}
{viewerjumpto "Description" "mf_st_global_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mf_st_global_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "mf_st_global_zh##remarks"}{...}
{viewerjumpto "Conformability" "mf_st_global_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf_st_global_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf_st_global_zh##source"}{...}
{viewerjumpto "Reference" "mf_st_global_zh##reference"}
{help mf_st_global:English Version}
{hline}{...}
{p2colset 1 22 24 2}{...}
{p2col:{bf:[M-5] st_global()} {hline 2}}从全局宏中获取字符串并将字符串放入全局宏
{p_end}
{p2col:}({mansection M-5 st_global():查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{it:字符串标量}
{cmd:st_global(}{it:字符串标量 名称}{cmd:)}

{p 8 12 2}
{it:void}{bind:         }
{cmd:st_global(}{it:字符串标量 名称}{cmd:,} 
{it:字符串标量 内容}{cmd:)}

{p 8 52 2}
{it:void}{bind:         }
{cmd:st_global(}{it:字符串标量 名称}{cmd:,} 
{it:字符串标量 内容}{cmd:,}
{it:字符串标量 hcat}{cmd:)}

{p 8 52 2}
{it:字符串标量}
{cmd:st_global_hcat(}{it:字符串标量 名称}{cmd:)}


{p 4 8 2}
其中

{p 8 12 2}
1.   {it:名称} 包含
{p_end}

{p 16 20 2}
     a.  全局宏，例如 {cmd:"myname"}
{p_end}

{p 16 20 2}
     b.  {cmd:r()} 宏，例如 {cmd:"r(names)"}
{p_end}

{p 16 20 2}
     c.  {cmd:e()} 宏，例如 {cmd:"e(cmd)"}
{p_end}

{p 16 20 2}
     d.  {cmd:s()} 宏，例如 {cmd:"s(vars)"}
{p_end}

{p 16 20 2}
     e.  {cmd:c()} 宏，例如 {cmd:"c(current_date)"}
{p_end}

{p 16 20 2}
     f.  数据集特性，例如 {cmd:"_dta[date]"}
{p_end}

{p 16 20 2}
     g.  变量特性，例如 {cmd:"mpg[note]"}

{p 8 12 2}
2.  {cmd:st_global(}{it:名称}{cmd:)} 返回指定Stata全局的内容。 
    如果全局不存在，则返回 ""。

{p 8 12 2}
3.  {cmd:st_global(}{it:名称}{cmd:,} {it:内容}{cmd:)} 设置或重置指定Stata全局的内容。

{p 8 12 2}
4.  {cmd:st_global(}{it:名称}{cmd:,} {cmd:"")}
    删除指定的Stata全局。 即使 {it:名称} 不是宏，它也会这样做。
    {cmd:st_global("r(N)",} {cmd:"")} 会删除 {cmd:r(N)}，
    无论它是宏、标量还是矩阵。

{p 8 12 2}
5.  {cmd:st_global(}{it:名称}{cmd:,} {it:内容}{cmd:,} {it:hcat}{cmd:)} 
    设置或重置指定Stata全局的内容，并且当 {it:名称} 是
    {cmd:e()} 或 {cmd:r()} 值时，设置或重置隐藏或历史状态。
    允许的 {it:hcat} 值为 "{cmd:visible}"、"{cmd:hidden}"、"{cmd:historical}"，
    和一个字符串标量发布号，例如 "{cmd:10}"、"{cmd:10.1}" 或任何匹配
    "{it:#}[{it:#}][{cmd:.}[{it:#}[{it:#}]]" 的字符串发布号。
    请参阅 {manlink P return} 以了解更多关于隐藏和历史 
    {cmd:r()} 和 {cmd:e()} 值的描述。

{p 12 12 2}
    当使用 {cmd:st_global(}{it:名称}{cmd:,} {it:内容}{cmd:)} 来设置
    {cmd:e()} 或 {cmd:r()} 值时，{it:hcat} 被设置为 "{cmd:visible}"。

{p 8 12 2}
6.  {cmd:st_global_hcat(}{it:名称}{cmd:)} 返回与 {cmd:e()} 或 {cmd:r()} 
    值相关联的 {it:hcat}。


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:st_global(}{it:名称}{cmd:)} 返回指定的 
Stata 全局的内容。

{p 4 4 2}
{cmd:st_global(}{it:名称}{cmd:,} {it:内容}{cmd:)} 设置或重置指定的 
Stata 全局的内容。 如果该 Stata 全局之前不存在，则会创建一个新的全局。 如果全局确实存在，则新内容将替换旧内容。

{p 4 4 2}
{cmd:st_global(}{it:名称}{cmd:,} {it:内容}{cmd:,} {it:hcat}{cmd:)}
和 {cmd:st_global_hcat(}{it:名称}{cmd:)} 被用来设置和查询 
对应于 {cmd:e()} 或 {cmd:r()} 值的 {it:hcat}。 
它们也很少使用。有关更多信息，请参阅 
{manlink R Stored results} 和 {manlink P return}。


{marker linkspdf}{...}
{title:链接到PDF文档}

        {mansection M-5 st_global()Remarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
Mata 提供了一套函数，用于获取和设置全局宏、局部宏、存储结果等的内容。
有时知道该使用哪一个可能会令人困惑。 以下内容将提供帮助：

	{hline 70}
	Stata 组件/动作             函数调用
	{hline 70}
	局部宏

	  获取内容            {it:内容}{cmd: = st_local("}{it:名称}{cmd:")}

	  创建/设置/替换         {cmd:st_local("}{it:名称}{cmd:",} {it:内容}{cmd:)}

	  删除                     {cmd:st_local("}{it:名称}{cmd:", "")}
	{hline 70}
	全局宏

	  获取内容            {it:内容}{cmd: = st_global("}{it:名称}{cmd:")}

	  创建/设置/替换         {cmd:st_global("}{it:名称}{cmd:",} {it:内容}{cmd:)}

	  删除                     {cmd:st_global("}{it:名称}{cmd:", "")}
	{hline 70}
	全局数值标量

	  获取内容            {it:值}{cmd: = st_numscalar("}{it:名称}{cmd:")}

	  创建/设置/替换         {cmd:st_numscalar("}{it:名称}{cmd:",} {it:值}{cmd:)}

	  删除                     {cmd:st_numscalar("}{it:名称}{cmd:", J(0,0,.))}
	{hline 70}
	全局字符串标量

	  获取内容            {it:内容}{cmd: = st_strscalar("}{it:名称}{cmd:")}

	  创建/设置/替换         {cmd:st_strscalar("}{it:名称}{cmd:",} {it:内容}{cmd:)}

	  删除                     {cmd:st_strscalar("}{it:名称}{cmd:", J(0,0,""))}
	{hline 70}
	全局矩阵

	  获取内容            {it:矩阵}   {cmd:= st_matrix("}{it:名称}{cmd:")}
				     {it:行标} {cmd:= st_matrixrowstripe("}{it:名称}{cmd:")}
				     {it:列标} {cmd:= st_matrixcolstripe("}{it:名称}{cmd:")}

	  创建/设置/替换         {cmd:st_matrix("}{it:名称}{cmd:",} {it:矩阵}{cmd:)}
				     {cmd:st_matrixrowstripe("}{it:名称}{cmd:",} {it:行标}{cmd:)}
				     {cmd:st_matrixcolstripe("}{it:名称}{cmd:",} {it:列标}{cmd:)}
				     
          替换                    {cmd:st_replacematrix("}{it:名称}{cmd:",} {it:矩阵}{cmd:)}

	  删除                     {cmd:st_matrix("}{it:名称}{cmd:", J(0,0,.))}
	{hline 70}
	特性

	  获取内容            {it:内容}{cmd: = st_global("}{it:名称}{cmd:[}{it:名称}{cmd:]")}

	  创建/设置/替换         {cmd:st_global("}{it:名称}{cmd:[}{it:名称}{cmd:]",} {it:内容}{cmd:)}

	  删除                     {cmd:st_global("}{it:名称}{cmd:[}{it:名称}{cmd:]", "")}
	{hline 70}
	{cmd:r()} 结果

	  宏
	    获取内容          {it:内容}{cmd: = st_global("r(}{it:名称}{cmd:)")}
	    创建/设置/替换       {cmd:st_global("r(}{it:名称}{cmd:)",} {it:内容}{cmd:)}

	  数值标量
	    获取内容          {it:值}{cmd: = st_numscalar("r(}{it:名称}{cmd:)")}
	    创建/设置/替换       {cmd:st_numscalar("r(}{it:名称}{cmd:)",} {it:值}{cmd:)}

	  矩阵
	    获取内容          {it:矩阵}   {cmd:= st_matrix("r(}{it:名称}{cmd:)")}
				     {it:行标} {cmd:= st_matrixrowstripe("r(}{it:名称}{cmd:)")}
				     {it:列标} {cmd:= st_matrixcolstripe("r(}{it:名称}{cmd:)")}
	    创建/设置/替换       {cmd:st_matrix("r(}{it:名称}{cmd:)",} {it:矩阵}{cmd:)}
				     {cmd:st_matrixrowstripe("r(}{it:名称}{cmd:)",} {it:行标}{cmd:)}
				     {cmd:st_matrixcolstripe("r(}{it:名称}{cmd:)",} {it:列标}{cmd:)}
            替换                  {cmd:st_replacematrix("r(}{it:名称}{cmd:)",} {it:矩阵}{cmd:)}

	  在所有情况下
	    删除                   {cmd:st_global("r(}{it:名称}{cmd:)", "")}
            删除所有 {cmd:r()}     {cmd:st_rclear()}
	{hline 70}
	{cmd:e()} 结果

	   与 {cmd:r()} 结果相同，但代码 {cmd:e(}{it:名称}{cmd:)} 和 {cmd:st_eclear()}
	{hline 70}
	{cmd:s()} 结果
	
	  宏
	    获取内容          {it:内容}{cmd: = st_global("s(}{it:名称}{cmd:)")}
	    创建/设置/替换       {cmd:st_global("s(}{it:名称}{cmd:)",} {it:内容}{cmd:)}
	    删除                   {cmd:st_global("s(}{it:名称}{cmd:)", "")}
	    删除所有 {cmd:s()}        {cmd:st_sclear()}
	{hline 70}
	{cmd:c()} 结果

	  宏
	    获取内容          {it:内容}{cmd: = st_global("c(}{it:名称}{cmd:)")}

	  数值标量
	    获取内容          {it:值}{cmd: = st_numscalar("c(}{it:名称}{cmd:)")}
	{hline 70}
{p 8 8 2}
请参见 {bf:{help mf_st_local_zh:[M-5] st_local()}}, 
{bf:{help mf_st_numscalar_zh:[M-5] st_numscalar()}}, 
{bf:{help mf_st_matrix_zh:[M-5] st_matrix()}}, 
和
{bf:{help mf_st_rclear_zh:[M-5] st_rclear()}}。


{marker conformability}{...}
{title:兼容性}

    {cmd:st_global(}{it:名称}{cmd:)}:
	     {it:名称}:  1 {it:x} 1
	   {it:结果}:  1 {it:x} 1

    {cmd:st_global(}{it:名称}{cmd:,} {it:内容}{cmd:)}:
	     {it:名称}:  1 {it:x} 1
	 {it:内容}:  1 {it:x} 1
	   {it:结果}:  {it:void}

    {cmd:st_global(}{it:名称}{cmd:,} {it:内容}{cmd:,} {it:hcat}{cmd:)}:
	     {it:名称}:  1 {it:x} 1
	 {it:内容}:  1 {it:x} 1
	     {it:hcat}:  1 {it:x} 1
	   {it:结果}:  {it:void}

    {cmd:st_global_hcat(}{it:名称}{cmd:)}
	     {it:名称}:  1 {it:x} 1
	   {it:结果}:  1 {it:x} 1


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
{cmd:st_global(}{it:名称}{cmd:)} 如果 {it:名称} 中的名称未定义，则返回 ""。 
{cmd:st_global(}{it:名称}{cmd:)} 如果名称格式不正确，如 {cmd:st_global("invalid name")}，则会终止并出现错误。

{p 4 4 2}
{cmd:st_global(}{it:名称}{cmd:,} {it:内容}{cmd:)} 如果 {it:名称} 中的名称格式不正确，则终止并出现错误。
Mata 中字符串的最大长度显著长于 Stata。 
{cmd:st_global()} 会在必要时将存储的内容截断到适当的最大长度。

{p 4 4 2}
{cmd:st_global_hcat(}{it:名称}{cmd:)} 当 {it:名称} 不是 {cmd:e()} 或 {cmd:r()} 值时返回 "{cmd:visible}" ， 
当 {it:名称} 是不存在的 {cmd:e()} 或 {cmd:r()} 值时返回 {cmd:""}。


{marker source}{...}
{title:源代码}

{p 4 4 2}
函数是内建的。
{p_end}


{marker reference}{...}
{title:参考}

{phang}
Gould, W. W. 2008.
{browse "http://www.stata-journal.com/sjpdf.html?articlenum=pr0040":Mata 相关事宜：宏}.
{it:Stata Journal} 8: 401-412.
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_st_global.sthlp>}