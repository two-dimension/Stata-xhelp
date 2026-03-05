{smcl}
{* *! version 1.1.8  15may2018}{...}
{vieweralsosee "[M-5] crossdev()" "mansection M-5 crossdev()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-5] cross()" "help mf_cross_zh"}{...}
{vieweralsosee "[M-5] quadcross()" "help mf_quadcross_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] Statistical" "help m4_statistical_zh"}{...}
{vieweralsosee "[M-4] Utility" "help m4_utility_zh"}{...}
{viewerjumpto "Syntax" "mf_crossdev_zh##syntax"}{...}
{viewerjumpto "Description" "mf_crossdev_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mf_crossdev_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "mf_crossdev_zh##remarks"}{...}
{viewerjumpto "Conformability" "mf_crossdev_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf_crossdev_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf_crossdev_zh##source"}
{help mf_crossdev:English Version}
{hline}{...}
{p2colset 1 21 23 2}{...}
{p2col:{bf:[M-5] crossdev()} {hline 2}}偏差交叉乘积
{p_end}
{p2col:}({mansection M-5 crossdev():查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{it:real matrix}
{cmd:crossdev(}{it:X}{cmd:,}
{it:x}{cmd:,}
{it:Z}{cmd:,}
{it:z}{cmd:)}

{p 8 12 2}
{it:real matrix}
{cmd:crossdev(}{it:X}{cmd:,}
{it:x}{cmd:,}
{it:w}{cmd:,}
{it:Z}{cmd:,}
{it:z}{cmd:)}

{p 8 12 2}
{it:real matrix}
{cmd:crossdev(}{it:X}{cmd:,}
{it:xc}{cmd:,}
{it:x}{cmd:,}
{it:Z}{cmd:,}
{it:zc}{cmd:,}
{it:z}{cmd:)}

{p 8 12 2}
{it:real matrix}
{cmd:crossdev(}{it:X}{cmd:,}
{it:xc}{cmd:,}
{it:x}{cmd:,}
{it:w}{cmd:,}
{it:Z}{cmd:,}
{it:zc}{cmd:,}
{it:z}{cmd:)}


{p 4 8 2}
其中

	             {it:X}:  {it:实数矩阵 X}
	            {it:xc}:  {it:实数标量 xc}
	             {it:x}:  {it:实数行向量 x}

	             {it:w}:  {it:实数向量 w}

	             {it:Z}:  {it:实数矩阵 Z}
	            {it:zc}:  {it:实数标量 zc}
	             {it:z}:  {it:实数行向量 z}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:crossdev()} 的计算形式如下 

		({it:X}:-{it:x})'({it:X}:-{it:x})

		({it:X}:-{it:x})'({it:Z}:-{it:z})

		({it:X}:-{it:x})'diag({it:w})({it:X}:-{it:x})

		({it:X}:-{it:x})'diag({it:w})({it:Z}:-{it:z})

{p 4 4 2}
{cmd:crossdev()} 是 
{bf:{help mf_cross_zh:[M-5] cross()}} 的一种变体。
{cmd:crossdev()} 在所有方面都与 {cmd:cross()} 相似，唯一的不同是它有两个 
额外的参数:  {it:x} 和 {it:z}。
{it:x} 和 {it:z} 记录了 {it:X} 和 {it:Z} 要偏差的量。通常，{it:x} 和 {it:z} 包含 
{it:X} 和 {it:Z} 的（适当地加权的）列均值。



{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection M-5 crossdev()Remarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
{it:x} 通常包含与 {it:X} 相同的行数，但如果 
{it:xc}!=0，则 {it:x} 可能在右侧包含一个额外的元素，用于记录常数 1 应该偏差的量。

{p 4 4 2}
同样适用于 {it:z}: 它通常包含与 {it:Z} 相同的行数，但如果 {it:zc}!=0，则 {it:z} 可能在右侧包含一个额外的元素。


    {title:示例 1: 使用一个视图的线性回归}

	{cmd}: M = .
	: st_view(M, ., "mpg weight foreign", 0)
	:
	: means = mean(M, 1)
	: CP = crossdev(M,means, M,means)
	: XX = CP[|2,2 \ .,.|]
	: Xy = CP[|2,1 \ .,1|]
	: b  = invsym(XX)*Xy
	: b  = b \ means[1] - means[|2\.|]*b{txt}

{p 4 4 2}
将此解决方案与 
{help mf_cross##example3:示例 3} 中的内容进行比较 
{bf:{help mf_cross_zh:[M-5] cross()}}。


    {title:示例 2: 使用子视图的线性回归}

	{cmd}: M = X = y = .
	: st_view(M, ., "mpg weight foreign", 0)
	: st_subview(y, M, ., 1)
	: st_subview(X, M, ., (2\.))
	:
	: xmean = mean(X, 1)
	: ymean = mean(y, 1)
	: XX    = crossdev(X,xmean, X,xmean)
	: Xy    = crossdev(X,xmean, y,ymean)
	: b     = invsym(XX)*Xy
	: b     = b \ ymean - xmean*b{txt}

{p 4 4 2}
将此解决方案与 
{help mf_cross##example4:示例 4} 中的内容进行比较 
{bf:{help mf_cross_zh:[M-5] cross()}}。


    {title:示例 3: 加权线性回归}

	{cmd}: M = X = y = w = .
	: st_view(M, ., "w mpg weight foreign", 0)
	: st_subview(w, M, ., 1)
	: st_subview(y, M, ., 2)
	: st_subview(X, M, ., (3\.))
	:
	: xmean = mean(X, w)
	: ymean = mean(y, w)
	: XX    = crossdev(X,xmean, w, X,xmean)
	: Xy    = crossdev(X,xmean, w, y,ymean)
	: b     = invsym(XX)*Xy
	: b     = b \ ymean - xmean*b{txt}

{p 4 4 2}
将此解决方案与 
{help mf_cross##example6:示例 6} 中的内容进行比较 
{bf:{help mf_cross_zh:[M-5] cross()}}。


    {title:示例 4: 方差矩阵}

	{cmd}: X = .
	: st_view(X, ., "mpg weight displ", 0)
	:
	: n     = rows(X)
	: means = mean(X, 1)
	: xx    = crossdev(X,means, X,means)
	: cov   = xx:/(n-1){txt}

{p 4 4 2}
这正是 {cmd:variance()} 所做的; 参见 
{bf:{help mf_mean_zh:[M-5] mean()}}。
将此解决方案与 
{help mf_cross##example12:示例 12} 中的内容进行比较 
{bf:{help mf_cross_zh:[M-5] cross()}}。


    {title:示例 5: 加权方差矩阵}

	{cmd}: M = w = X = .
	: st_view(M, ., "w mpg weight displ", 0)
	: st_subview(w, M, ., 1)
	: st_subview(X, M, ., (2\.))
	:
	: n     = colsum(w)
	: means = mean(X, w)
	: cov   = crossdev(X,means, w, X,means) :/ (n-1){txt}

{p 4 4 2}
这正是 {cmd:variance()} 对加权数据所做的; 参见 
{bf:{help mf_mean_zh:[M-5] mean()}}。
将此解决方案与 
{help mf_cross##example14:示例 14} 中的内容进行比较 
{bf:{help mf_cross_zh:[M-5] cross()}}。


{marker conformability}{...}
{title:符合性}

{p 4 8 2}
{cmd:crossdev(}{it:X}{cmd:,}
{it:xc}{cmd:,}
{it:x}{cmd:,}
{it:w}{cmd:,}
{it:Z}{cmd:,}
{it:zc}{cmd:,}
{it:z}{cmd:)}:
{p_end}
		{it:X}:  {it:n x v1} 或 1 {it:x} 1, 1 {it:x} 1 被视为 {it:n x} 1
	       {it:xc}:  1 {it:x} 1                        (可选)
		{it:x}:  1 {it:x v1} 或 1 {it:x} {it:v1}+({it:xc}!=0)
		{it:w}:  {it:n x} 1 或 1 {it:x n} 或 1 {it:x} 1      (可选)
		{it:Z}:  {it:n x v2}
	       {it:zc}:  1 {it:x} 1                        (可选)
		{it:z}:  1 {it:x v2} 或 1 {it:x} {it:v2}+({it:zc}!=0)
	   {it:result}:  ({it:v1}+({it:xc}!=0)) {it:x} ({it:v2}+({it:zc}!=0))


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
{cmd:crossdev(}{it:X}{cmd:,}
{it:xc}{cmd:,}
{it:x}{cmd:,}
{it:w}{cmd:,}
{it:Z}{cmd:,}
{it:zc}{cmd:,}
{it:z}{cmd:)}
会忽略 {it:X} 和 {it:Z} 中包含缺失值的行。


{marker source}{...}
{title:源代码}

{p 4 4 2}
功能是内置的。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_crossdev.sthlp>}