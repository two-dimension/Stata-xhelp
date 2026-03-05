{smcl}
{* *! version 1.2.6  15may2018}{...}
{vieweralsosee "[M-5] sum()" "mansection M-5 sum()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-5] cross()" "help mf_cross_zh"}{...}
{vieweralsosee "[M-5] mean()" "help mf_mean_zh"}{...}
{vieweralsosee "[M-5] runningsum()" "help mf_runningsum_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] Mathematical" "help m4_mathematical_zh"}{...}
{vieweralsosee "[M-4] Utility" "help m4_utility_zh"}{...}
{viewerjumpto "语法" "mf_sum_zh##syntax"}{...}
{viewerjumpto "描述" "mf_sum_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "mf_sum_zh##linkspdf"}{...}
{viewerjumpto "备注" "mf_sum_zh##remarks"}{...}
{viewerjumpto "适应性" "mf_sum_zh##conformability"}{...}
{viewerjumpto "诊断" "mf_sum_zh##diagnostics"}{...}
{viewerjumpto "源代码" "mf_sum_zh##source"}
{help mf_sum:English Version}
{hline}{...}
{p2colset 1 16 18 2}{...}
{p2col:{bf:[M-5] sum()} {hline 2}}求和
{p_end}
{p2col:}({mansection M-5 sum():查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}

{marker syntax}{...}
{title:语法}

{p 8 12 2}
{it:数值 列向量} 
{cmd:rowsum(}{it:数值 矩阵 Z}
[{cmd:,} {it:缺失值}]{cmd:)}

{p 8 12 2}
{it:数值 行向量} 
{cmd:colsum(}{it:数值 矩阵 Z}
[{cmd:,} {it:缺失值}]{cmd:)}

{p 8 12 2}
{it:数值 标量}{bind:      }
{cmd:sum(}{it:数值 矩阵 Z}
[{cmd:,} {it:缺失值}]{cmd:)}

{p 8 12 2}
{it:数值 列向量} 
{cmd:quadrowsum(}{it:数值 矩阵 Z}
[{cmd:,} {it:缺失值}]{cmd:)}

{p 8 12 2}
{it:数值 行向量} 
{cmd:quadcolsum(}{it:数值 矩阵 Z}
[{cmd:,} {it:缺失值}]{cmd:)}

{p 8 12 2}
{it:数值 标量}{bind:      }
{cmd:quadsum(}{it:数值 矩阵 Z}
[{cmd:,} {it:缺失值}]{cmd:)}

{p 4 4 2}
其中可选参数 {it:缺失值} 是一个 {it:实数标量}，用来确定如何处理 {it:Z} 中的缺失值：

{p 8 12 2}
    1.  指定 {it:缺失值} 为 0 等同于不指定该参数；缺失值被视为对
        求和贡献 0。

{p 8 12 2}
    2.  指定 {it:缺失值} 为 1（或非零）则表示在 {it:Z} 中将缺失
    值视为缺失，并使求和结果变为缺失。


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:rowsum(}{it:Z}{cmd:)} 
和
{cmd:rowsum(}{it:Z}{cmd:,} {it:缺失值}{cmd:)} 
返回一个包含 {it:Z} 每行之和的列向量。

{p 4 4 2}
{cmd:colsum(}{it:Z}{cmd:)} 
和
{cmd:colsum(}{it:Z}{cmd:,} {it:缺失值}{cmd:)} 
返回一个包含 {it:Z} 每列之和的行向量。

{p 4 4 2}
{cmd:sum(}{it:Z}{cmd:)} 
和
{cmd:sum(}{it:Z}{cmd:,} {it:缺失值}{cmd:)} 
返回一个包含 {it:Z} 所有行列之和的标量。

{p 4 4 2}
{cmd:quadrowsum()}, 
{cmd:quadcolsum()} 和 
{cmd:quadsum()} 是上述函数的四重精度变体。
该和在四重精度中累积，然后四舍五入到双重精度并返回。

{p 4 4 2}
参数 {it:缺失值} 决定如何处理缺失值。如果未指定缺失值，结果与指定 {it:缺失值}=0 相同：
缺失值被视为零。如果指定 {it:缺失值}=1，缺失值被视为缺失。

{p 4 4 2}
这些函数可以与实数或复数矩阵 {it:Z} 一起使用。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection M-5 sum()Remarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
所有函数返回与参数相同的类型，如果参数是实数，则返回实数；如果是复数，则返回复数。


{marker conformability}{...}
{title:适应性}

    {cmd:rowsum(}{it:Z}{cmd:,} {it:缺失值}{cmd:)}, {cmd:quadrowsum(}{it:Z}{cmd:,} {it:缺失值}{cmd:)}:
		{it:Z}:  {it:r x c}
	  {it:缺失值}:  1 {it:x} 1    （可选）
	   {it:result}:  {it:r x} 1

    {cmd:colsum(}{it:Z}{cmd:,} {it:缺失值}{cmd:)}, {cmd:quadcolsum(}{it:Z}{cmd:,} {it:缺失值}{cmd:)}:
		{it:Z}:  {it:r x c}
	  {it:缺失值}:  1 {it:x} 1    （可选）
	   {it:result}:  1 {it:x c}

    {cmd:sum(}{it:Z}{cmd:,} {it:缺失值}{cmd:)}, {cmd:quadsum(}{it:Z}{cmd:,} {it:缺失值}{cmd:)}:
		{it:Z}:  {it:r x c}
	  {it:缺失值}:  1 {it:x} 1    （可选）
	   {it:result}:  1 {it:x} 1


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
如果 {it:缺失值}=0，
缺失值被视为对求和贡献零；不会使求和结果变为缺失。否则，缺失值会使求和结果变为
缺失。


{marker source}{...}
{title:源代码}

{p 4 4 2}
函数是内置的。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_sum.sthlp>}