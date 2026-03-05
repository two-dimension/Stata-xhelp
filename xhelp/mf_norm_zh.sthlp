{smcl}
{* *! version 1.1.4  15may2018}{...}
{vieweralsosee "[M-5] norm()" "mansection M-5 norm()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] 矩阵" "help m4_matrix_zh"}{...}
{viewerjumpto "语法" "mf_norm_zh##syntax"}{...}
{viewerjumpto "描述" "mf_norm_zh##description"}{...}
{viewerjumpto "PDF文档链接" "mf_norm_zh##linkspdf"}{...}
{viewerjumpto "备注" "mf_norm_zh##remarks"}{...}
{viewerjumpto "符合性" "mf_norm_zh##conformability"}{...}
{viewerjumpto "诊断" "mf_norm_zh##diagnostics"}{...}
{viewerjumpto "源代码" "mf_norm_zh##source"}
{help mf_norm:English Version}
{hline}{...}
{p2colset 1 17 19 2}{...}
{p2col:{bf:[M-5] norm()} {hline 2}}矩阵和向量范数
{p_end}
{p2col:}({mansection M-5 norm():查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 8 2}
{it:实数标量}{bind: }
{cmd:norm(}{it:数值矩阵 A}{cmd:)}

{p 8 8 2}
{it:实数标量}{bind: }
{cmd:norm(}{it:数值矩阵 A}{cmd:,} {it:实数标量 p}{cmd:)}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:norm(}{it:A}{cmd:)} 返回 {cmd:norm(}{it:A}, 2{cmd:)}。

{p 4 4 2}
{cmd:norm(}{it:A}{cmd:,} {it:p}{cmd:)} 返回指定 {it:p} 的 {it:A} 的范数值。 {it:p} 的可能值及其含义取决于 {it:A} 是向量还是矩阵。

{p 4 4 2}
当 {it:A} 是向量时，{cmd:norm(}{it:A}{cmd:,} {it:p}{cmd:)} 返回：

		{cmd:sum(abs(}{it:A}{cmd:):^}{it:p}{cmd:) ^ (1/}{it:p}{cmd:)}{col 45} 如果 1 <= {it:p} < {cmd:.}

		{cmd:max(abs(A))}{col 45} 如果 {it:p} >= {cmd:.}
	
{p 4 4 2}
当 {it:A} 是矩阵时，返回值为：

{col 17}{it:p}{col 26}{cmd:norm(}{it:A}{cmd:,} {it:p}{cmd:)}
{col 17}{hline 31}
{col 17}0{col 26}{cmd:sqrt(trace(conj(}{it:A}{cmd:)'}{it:A}{cmd:))}
{col 17}1{col 26}{cmd:max(colsum(abs(}{it:A}{cmd:)))}
{col 17}2{col 26}{cmd:max(svdsv(}{it:A}{cmd:))}
{col 17}.{col 26}{cmd:max(rowsum(abs(}{it:A}{cmd:)))}
{col 17}{hline 31}


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection M-5 norm()Remarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
{cmd:norm(}{it:A}{cmd:)} 
和 
{cmd:norm(}{it:A}{cmd:,} {it:p}{cmd:)} 
计算向量范数和矩阵范数。 {it:A} 可以是实数或复数，矩阵时不需要是方形。

{p 4 4 2}
上面呈现的公式并不是计算中实际使用的公式。在向量范数情况下当 1 <= {it:p} < {cmd:.}，公式应用于 {it:A}{cmd::/max(abs(}{it:A}{cmd:))}，结果再乘以 {cmd:max(abs(}{it:A}{cmd:))}。这可以防止数值溢出。计算矩阵范数时对于 {it:p}=0 也使用类似的技术，该方法避免了 {cmd:conj(}{it:A}{cmd:)'}{it:A} 的存储。


{marker conformability}{...}
{title:符合性}

{p 4 8 2}
{cmd:norm(}{it:A}{cmd:)}
{p_end}
		{it:A}:  {it:r x c}
    	   {it:结果}:  1 {it:x} 1

{p 4 8 2}
{cmd:norm(}{it:A}, {it:p}{cmd:)}
{p_end}
		{it:A}:  {it:r x c}
		{it:p}:  1 {it:x} 1
    	   {it:结果}:  1 {it:x} 1


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
   {cmd:norm()} 被定义为如果 {it:A} 是空的则返回 0，如果 {it:A} 的任何元素是缺失的则返回缺失。

{p 4 4 2}
   {cmd:norm(}{it:A}, {it:p}{cmd:)} 在 {it:p} 超出范围时会中止并报错。当 {it:A} 是向量时，{it:p} 必须大于或等于 1。当 {it:A} 是矩阵时，{it:p} 必须是 0、1、2 或 {cmd:.}（缺失）。

{p 4 4 2}
   {cmd:norm(}{it:A}{cmd:)} 和
   {cmd:norm(}{it:A}, {it:p}{cmd:)}
   如果请求 2-范数且奇异值分解不收敛，返回缺失，预计这种事件不会发生；
   见 {bf:{help mf_svd_zh:[M-5] svd()}}。


{marker source}{...}
{title:源代码}

{p 4 4 2}
{view norm.mata, adopath asis:norm.mata}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_norm.sthlp>}