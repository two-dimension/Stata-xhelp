{smcl}
{* *! version 1.1.5  15may2018}{...}
{vieweralsosee "[M-5] st_dir()" "mansection M-5 st_dir()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] Stata" "help m4_stata_zh"}{...}
{viewerjumpto "语法" "mf_st_dir_zh##syntax"}{...}
{viewerjumpto "描述" "mf_st_dir_zh##description"}{...}
{viewerjumpto "兼容性" "mf_st_dir_zh##conformability"}{...}
{viewerjumpto "诊断" "mf_st_dir_zh##diagnostics"}{...}
{viewerjumpto "源代码" "mf_st_dir_zh##source"}
{help mf_st_dir:English Version}
{hline}{...}
{p2colset 1 19 21 2}{...}
{p2col:{bf:[M-5] st_dir()} {hline 2}}获取 Stata 对象列表
{p_end}
{p2col:}({mansection M-5 st_dir():查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{it:string colvector} 
{cmd:st_dir(}{it:cat}{cmd:,}
{it:subcat}{cmd:,}
{it:pattern}{cmd:)}

{p 8 12 2}
{it:string colvector} 
{cmd:st_dir(}{it:cat}{cmd:,}
{it:subcat}{cmd:,}
{it:pattern}{cmd:,}
{it:adorn}{cmd:)}

{p 4 4 2}
其中

{p 12 18 2}
{it:cat}:
{it:string scalar} 包含 
{cmd:"local"},
{cmd:"global"},
{cmd:"r()"},
{cmd:"e()"},
{cmd:"s()"}, 或
{cmd:"char"}

{p 9 18 2}
{it:subcat}:
{it:string scalar} 包含 
{cmd:"macro"}, 
{cmd:"numscalar"}, 
{cmd:"strscalar"}, 
{cmd:"matrix"}, 或, 
如果 {it:cat}=={cmd:"char"}, {cmd:"_dta"} 或一个名称。

{p 8 18 2}
{it:pattern}:
{it:string scalar} 包含一个模式，如在 
{bf:{help mf_strmatch_zh:[M-5] strmatch()}} 中定义

{p 10 12 2}
{it:adorn}:
{it:string scalar} 包含 0 或非 0


{p 4 4 2}
有效的 {it:cat}--{it:subcat} 组合及其含义为 

	    {it:cat}         {it:subcat}         含义
	    {hline 61}
	    {cmd:"local"     "macro"}        Stata 的局部宏

	    {cmd:"global"    "macro"}        Stata 的全局宏
	    {cmd:"global"    "numscalar"}    Stata 的数字标量
	    {cmd:"global"    "strscalar"}    Stata 的字符串标量
	    {cmd:"global"    "matrix"}       Stata 的矩阵

	    {cmd:"r()"       "macro"}        {cmd:r()} 中的宏
	    {cmd:"r()"       "numscalar"}    {cmd:r()} 中的数字标量
	    {cmd:"r()"       "matrix"}       {cmd:r()} 中的矩阵
                
	    {cmd:"e()"       "macro"}        {cmd:e()} 中的宏
	    {cmd:"e()"       "numscalar"}    {cmd:e()} 中的数字标量
	    {cmd:"e()"       "matrix"}       {cmd:e()} 中的矩阵
               
	    {cmd:"s()"       "macro"}        {cmd:s()} 中的宏

	    {cmd:"char"      "_dta"}         {cmd:_dta[]} 中的特征
	    {cmd:"char"      "}{it:name}{cmd:"}         变量 {it:name}{cmd:[]} 中的特征
	    {hline 61}

{p 4 4 2}
{cmd:st_dir()} 在指定了无效的 {it:cat}--{it:subcat} 
组合时返回一个空列表。

		
{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:st_dir(}{it:cat}{cmd:,} {it:subcat}{cmd:,} {it:pattern}{cmd:)}
和 
{cmd:st_dir(}{it:cat}{cmd:,} {it:subcat}{cmd:,} {it:pattern}{cmd:,}
{it:adorn}{cmd:)}
返回一个列向量，包含与 {it:pattern} 匹配的
由 {it:cat}--{it:subcat} 描述的 Stata 对象的名称。

{p 4 4 2}
参数 {it:adorn} 是可选的；不指定它等同于 
指定 {it:adorn}=0。默认情况下，返回的是简单名称。
如果指定 {it:adorn}!=0，则名称将以 Stata 标准方式修饰，以描述该对象。假设列出 {cmd:e()} 中的宏，并且其中一个元素是 
{cmd:e(cmd)}。默认情况下，返回的向量将包含一个元素 
等于 "{cmd:cmd}"。当 
{it:adorn}!=0 时，元素将变为 "{cmd:e(cmd)}"。

{p 4 4 2}
对于许多对象，名称的修饰形式和未修饰形式是相同的。


{marker conformability}{...}
{title:兼容性}

    {cmd:st_dir(}{it:cat}{cmd:,} {it:subcat}{cmd:,} {it:pattern}{cmd:,} {it:adorn}{cmd:)}:
	      {it:cat}:  1 {it:x} 1
	   {it:subcat}:  1 {it:x} 1
	  {it:pattern}:  1 {it:x} 1
	    {it:adorn}:  1 {it:x} 1    (可选)
	   {it:result}:  {it:k x} 1


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
{cmd:st_dir(}{it:cat}{cmd:,} {it:subcat}{cmd:,} {it:pattern}{cmd:)}
和 
{cmd:st_dir(}{it:cat}{cmd:,} {it:subcat}{cmd:,} {it:pattern}{cmd:,}
{it:adorn}{cmd:)}
如果 {it:cat} 或 {it:subcat} 无效，则会以错误中止。如果组合
无效，则返回 {cmd:J(0,1,"")}。
除非 {it:cat}=={cmd:"char"}，否则 {it:subcat}=={it:name} 被视为无效。

{p 4 4 2}
如果 {cmd:st_dir()} 的任何参数为视图，则会以错误中止。


{marker source}{...}
{title:源代码}

{p 4 4 2}
函数内置。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_st_dir.sthlp>}