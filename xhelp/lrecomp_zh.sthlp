{smcl}
{* *! version 1.0.4  11feb2011}{...}
{vieweralsosee undocumented "help undocumented"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] assert" "help assert_zh"}{...}
{vieweralsosee "[P] cscript" "help cscript_zh"}{...}
{viewerjumpto "Syntax" "lrecomp_zh##syntax"}{...}
{viewerjumpto "Description" "lrecomp_zh##description"}{...}
{viewerjumpto "Remarks" "lrecomp_zh##remarks"}{...}
{viewerjumpto "Example" "lrecomp_zh##example"}
{help lrecomp:English Version}
{hline}{...}
{title:标题}

{p 4 21 2}
{hi:[P] lrecomp} {hline 2} 显示相对误差的对数


{marker syntax}{...}
{title:语法}

{p 8 16 2}{cmd:lrecomp} {it:exp} {it:exp} [{it:exp} {it:exp} [{cmd:()}]
		[{it:exp} {it:exp} [{cmd:()}] [{it:...}]]]


{marker description}{...}
{title:描述}

{pstd}
{cmd:lrecomp} 用于制作正确估计数字（LREs）表，当将计算结果与已知正确结果进行比较时。

{pstd}
在每对表达式中，第一个是计算结果，第二个是已知正确结果。

{pstd}
您还可以包含 {cmd:()} 来指定到该点为止所报告的最小 LRE。可以编码多个 {cmd:()}，并报告从前一个 {cmd:()} 到当前 {cmd:()} 的最小值。


{marker remarks}{...}
{title:备注}

{pstd}
在报告计算结果与真实结果的比较时，通常会报告 LRE - 对数相对误差。让 c 代表计算结果，t 代表已知正确的答案。这个比较的正式定义是

	LRE  =   -log10(|c-t|)        如果 t == 0
	     =   -log10(|(c-t)/t|)    否则

{pstd}
这个计算的结果称为“准确位数”或更准确地说为“十进制准确位数”。

{pstd}
双精度计算大约携带 16.5 位的准确度，因此理论上应报告 min(16.5, LRE)。在实际操作中，常常报告 min(15, LRE)，因为许多经过认证的结果仅计算到 15 位的准确度。

{pstd}
无论如何，{cmd:lrecomp} 不会施加最小限制。当 c==t 时，{cmd:lrecomp} 会显示“完全相等”。


{marker example}{...}
{title:示例}

{pstd}
您已运行回归认证测试，在其他结果中，Stata 计算了 {hi:_b[x1]}，变量 x1 的回归系数。已知的正确结果是 1，您希望将计算的 {hi:_b[x1]} 与此进行比较。您输入：

	{cmd:. lrecomp _b[x1] 1}
	{txt:_b[x1]}                {res:11.7}

{pstd}
{hi:_b[x1]} 被计算为 {res:11.7} 位。

{pstd}
如果计算了两个回归系数，{hi:_b[x1]} 和 {hi:_b[x2]}，并且两者应为 1，您可以输入

	{cmd:. lrecomp _b[x1] 1 _b[x2] 1}

	{txt:_b[x1]}                {res:11.7}
	{txt:_b[x2]}                {res:10.0}

{pstd}
如果这些系数的标准误也已知为 1，您可以输入

	{cmd:. lrecomp _b[x1] 1 _b[x2] 1 _se[x1] 1 _se[x2] 1}

	{txt:_b[x1]}                {res:11.7}
	{txt:_b[x2]}                {res:10.0}
	{txt:_se[x1]}               {res:<完全相等>}
	{txt:_se[x2]}               {res:<完全相等>}

{pstd}
或者您可以输入

	{cmd:. lrecomp _b[x1] 1 _b[x2] 1 () _se[x1] 1 _se[x2] 1 ()}

	{txt:_b[x1]}                {res:11.7}
        {txt:_b[x2]}                {res:10.0}
	{hline 26}
	{txt:min}                   {res:10.0}

	{txt:_se[x1]}               {res:<完全相等>}
	{txt:_se[x2]}               {res:<完全相等>}
	{hline 26}
	{txt:min}                   {res:15.0}

{pstd}
当所有结果完全相等时，{cmd:()} 任意报告 15.0 作为最小值。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <lrecomp.sthlp>}