{smcl}
{* *! version 1.0.1  15may2018}{...}
{vieweralsosee undocumented "help undocumented"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] Mathematical" "help m4_mathematical_zh"}{...}
{viewerjumpto "语法" "mf__gauss_hermite_nodes_zh##syntax"}{...}
{viewerjumpto "描述" "mf__gauss_hermite_nodes_zh##description"}{...}
{viewerjumpto "兼容性" "mf__gauss_hermite_nodes_zh##conformability"}{...}
{viewerjumpto "诊断" "mf__gauss_hermite_nodes_zh##diagnostics"}{...}
{viewerjumpto "源代码" "mf__gauss_hermite_nodes_zh##source"}
{help mf__gauss_hermite_nodes:English Version}
{hline}{...}
{title:标题}

{phang}
{bf:[M-5] _gauss_hermite_nodes()} {hline 2} 高斯-埃尔米特积分


{marker syntax}{...}
{title:语法}

{pmore}
{it:实数 矩阵} 
{cmd:_gauss_hermite_nodes(}{it:实数} {it:标量} {it:k}{cmd:)}


{marker description}{...}
{title:描述}

{pstd}
{cmd:_gauss_hermite_nodes()} 返回一个 2 {it:x k} 矩阵。第一行包含
自变量，第二行包含相应的权重，用于进行高斯-埃尔米特积分。


{marker conformability}{...}
{title:兼容性}

    {cmd:_gauss_hermite_nodes(}{it:k}{cmd:)}:
		{it:k}:  1 {it:x} 1
	   {it:result}:  2 {it:x k}


{marker diagnostics}{...}
{title:诊断}

{pstd}
如果 {it:k} 不是范围在 1 到 {ccl max_intpoints} 的整数，{cmd:_gauss_hermite_nodes()} 会停止并报错。


{marker source}{...}
{title:源代码}

{pstd}
该功能是内置的。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf__gauss_hermite_nodes.sthlp>}