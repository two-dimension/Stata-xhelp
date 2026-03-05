{smcl}
{* *! version 1.1.5  15may2018}{...}
{vieweralsosee "[M-5] st_varformat()" "mansection M-5 st_varformat()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] Stata" "help m4_stata_zh"}{...}
{viewerjumpto "语法" "mf_st_varformat_zh##syntax"}{...}
{viewerjumpto "描述" "mf_st_varformat_zh##description"}{...}
{viewerjumpto "兼容性" "mf_st_varformat_zh##conformability"}{...}
{viewerjumpto "诊断" "mf_st_varformat_zh##diagnostics"}{...}
{viewerjumpto "源代码" "mf_st_varformat_zh##source"}
{help mf_st_varformat:English Version}
{hline}{...}
{p2colset 1 25 27 2}{...}
{p2col:{bf:[M-5] st_varformat()} {hline 2}}获取/设置 Stata 变量的格式等
{p_end}
{p2col:}({mansection M-5 st_varformat():查看完整的 PDF 手动条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{it:string scalar}
{cmd:st_varformat(}{it:scalar var}{cmd:)}

{p 8 12 2}
{it:void}{bind:         }
{cmd:st_varformat(}{it:scalar var}{cmd:,}
{it:string scalar fmt}{cmd:)}


{p 8 12 2}
{it:string scalar}
{cmd:st_varlabel(}{it:scalar var}{cmd:)}

{p 8 12 2}
{it:void}{bind:         }
{cmd:st_varlabel(}{it:scalar var}{cmd:,}
{it:string scalar label}{cmd:)}


{p 8 12 2}
{it:string scalar}
{cmd:st_varvaluelabel(}{it:scalar var}{cmd:)}

{p 8 12 2}
{it:void}{bind:         }
{cmd:st_varvaluelabel(}{it:scalar var}{cmd:,}
{it:string scalar labelname}{cmd:)}


{p 4 4 2}
其中 {it:var} 包含 Stata 变量名称或 Stata 变量索引。


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:st_varformat(}{it:var}{cmd:)} 返回与 {it:var} 相关联的显示格式，例如 
{cmd:"%9.0gc"}。
{cmd:st_varformat(}{it:var}{cmd:,} {it:fmt}{cmd:)} 更改 {it:var} 的显示格式。

{p 4 4 2}
{cmd:st_varlabel(}{it:var}{cmd:)} 返回与 {it:var} 相关联的变量标签，例如 
{cmd:"患者性别"}，如果 {it:var} 没有变量标签，则返回 {cmd:""}。
{cmd:st_varformat(}{it:var}{cmd:,} {it:label}{cmd:)} 更改 {it:var} 的变量标签。

{p 4 4 2}
{cmd:st_varvaluelabel(}{it:var}{cmd:)} 返回与 {it:var} 相关联的值标签名称，例如 
{cmd:"origin"}，如果 {it:var} 没有值标签，则返回 {cmd:""}。
{cmd:st_varvaluelabel(}{it:var}{cmd:,} {it:labelname}{cmd:)} 更改与 {it:var} 相关联的值标签名称。


{marker conformability}{...}
{title:兼容性}

{p 4 4 2}
{cmd:st_varformat(}{it:var}{cmd:)},
{cmd:st_varlabel(}{it:var}{cmd:)},
{cmd:st_varvaluelabel(}{it:var}{cmd:)}:
{p_end}
	      {it:var}:  1 {it:x} 1
	   {it:result}:  1 {it:x} 1


{p 4 4 2}
{cmd:st_varformat(}{it:var}{cmd:,} {it:fmt}{cmd:)},
{cmd:st_varlabel(}{it:var}{cmd:,} {it:label}{cmd:)},
{cmd:st_varvaluelabel(}{it:var}{cmd:,} {it:labelname}{cmd:)}:
{p_end}
	      {it:var}:  1 {it:x} 1
	    {it:value}:  1 {it:x} 1
	   {it:result}:  {it:void}


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
在所有函数中，如果 {it:var} 被指定为名称，则不允许使用缩写。

{p 4 4 2}
如果 {it:var} 不是有效的 Stata 变量，则所有函数会中止并报错。

{p 4 4 2}
{cmd:st_varformat(}{it:var}{cmd:,} {it:fmt}{cmd:)} 会在 {it:fmt} 不包含有效的显示格式时中止并报错 
针对 {it:var}。

{p 4 4 2}
{cmd:st_varlabel(}{it:var}{cmd:,} {it:label}{cmd:)} 如果 {it:label} 过长则会截断。

{p 4 4 2}
{cmd:st_varvaluelabel(}{it:var}{cmd:,} {it:labelname}{cmd:)} 会在 
如果 {it:var} 是 Stata 字符串变量或者 
{it:labelname} 不包含有效名称时中止并报错（假设 {it:labelname} 不是 {cmd:""}）。
但是，并不要求标签名称存在。


{marker source}{...}
{title:源代码}

{p 4 4 2}
函数是内置的。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_st_varformat.sthlp>}