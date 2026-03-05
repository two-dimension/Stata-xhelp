{smcl}
{* *! version 1.0.2  15may2018}{...}
{vieweralsosee undocumented "help undocumented"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] Manipulation" "help m4_manipulation_zh"}{...}
{viewerjumpto "Syntax" "mf_subdiagget_zh##syntax"}{...}
{viewerjumpto "Description" "mf_subdiagget_zh##description"}{...}
{viewerjumpto "Examples" "mf_subdiagget_zh##examples"}{...}
{viewerjumpto "Conformability" "mf_subdiagget_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf_subdiagget_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf_subdiagget_zh##source"}
{help mf_subdiagget:English Version}
{hline}{...}
{title:标题}

{p2colset 5 27 29 2}{...}
{p2col :{hi:[M-5] subdiagget()} {hline 2}}提取矩阵子对角线{p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 4 39 2}
{it:transmorphic colvector}{bind:}
{cmd:subdiagget(}{it:transmorphic matrix X}{cmd:,}
{it:real vector lower}{cmd:,}
{it:real vector upper}{cmd:)}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:subdiagget(}{it:X}{cmd:)} 返回 {it:X} 的子对角线，转换为一列向量，将一个子对角线叠加到下一个。


{marker examples}{...}
{title:示例}

{p 4 8 2}
1.
提取矩阵 {cmd:X} 的子对角线， 

		{cmd:d = subdiagget(X, 1, 0)}

{p 4 8 2}
2.
提取矩阵 {cmd:X} 的超对角线， 

		{cmd:d = subdiagget(X, 0, 1)}

{p 4 8 2}
3.
提取矩阵 {cmd:X} 的第1至第5个子对角线， 

		{cmd:d = subdiagget(X, 1..5, 0)}


{p 4 8 2}
4.
提取矩阵 {cmd:X} 的第2个和第4个子对角线， 

		{cmd:d = subdiagget(X, (2,4), 0)}


{p 4 8 2}
5.
提取矩阵 {cmd:X} 的第4个和第2个子对角线， 

		{cmd:d = subdiagget(X, (4,2), 0)}


{marker conformability}{...}
{title:兼容性}

    {cmd:subdiagget(}{it:X}{cmd:)}:
                  {it:X}:   {it:n x n}
             {it:result}:   {it:p x 1}        其中 {it:p < n}


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
{cmd:subdiagget(}{it:X}{cmd:)} 如果 {it:X} 不是方阵则中止并报错。

{p 4 4 2}
在 {it:lower} 和 {it:upper} 中的负下标被视为正值。

{p 4 4 2}
在 {it:lower} 和 {it:upper} 中大于或等于 {cmd:cols(}{it:X}{cmd:)} 的下标将被忽略。


{marker source}{...}
{title:源代码}

{p 4 4 2}
{view subdiagget.mata, adopath asis:subdiagget.mata}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_subdiagget.sthlp>}