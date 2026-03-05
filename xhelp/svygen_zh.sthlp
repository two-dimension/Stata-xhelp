{smcl}
{* *! version 1.2.0  10oct2017}{...}
{vieweralsosee undocumented "help undocumented"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[SVY] svy" "help svy_zh"}{...}
{vieweralsosee "[SVY] svyset" "help svyset_zh"}{...}
{viewerjumpto "语法" "svygen_zh##syntax"}{...}
{viewerjumpto "描述" "svygen_zh##description"}{...}
{viewerjumpto "选项" "svygen_zh##options"}{...}
{viewerjumpto "示例" "svygen_zh##examples"}
{help svygen:English Version}
{hline}{...}
{title:标题}

{p 4 22 2}
{hi:[SVY] svygen} {hline 2} 生成调整后的抽样权重


{marker syntax}{...}
{title:语法}

{pstd}
后分层调整的抽样权重

{p 8 15 2}
{cmd:svygen} {opt post:stratify}
	{it:new_weight_var} {weight} {ifin}
	[{cmd:,}
		{opt posts:trata(varname)} 
		{opt postw:eight(varname)}
		{opt nocheck}]


{pstd}
平衡重复抽样 (BRR) 权重

{p 8 15 2}
{cmd:svygen} {opt br:r}
	{it:stub} {weight} {ifin}{cmd:,}
		{opt H:adamard(matname)} 
		{opt str:ata(varname)} 
	[{opt psu(varname)} 
		{opt fay(#)} 
		{opt posts:trata(varname)} 
		{opt postw:eight(varname)} 
		{opt nocheck}]


{pstd}
拔靴法 (Jackknife) 重复权重

{p 8 15 2}
{cmd:svygen} {opt jack:knife}
	{it:stub} [{it:multiplier}] {weight} {ifin}
	[{cmd:,}
		{opt str:ata(varname)} 
		{opt psu(varname)} 
		{opt fpc(varname)} 
		{opt posts:trata(varname)} 
		{opt postw:eight(varname)}]


{pstd}
连续差异重复 (SDR) 权重

{p 8 15 2}
{cmd:svygen} {opt sdr}
	{it:stub} {weight} {ifin}{cmd:,}
		{opt H:adamard(matname)} 
	[{opt psu(varname)} 
		{opt posts:trata(varname)} 
		{opt postw:eight(varname)} 
		{opt nocheck}]


{pstd}
{opt pweight}s 和 {opt iweight}s 是允许的；见 {help weights}。


{marker description}{...}
{title:描述}

{pstd}
{cmd:svygen} 生成用于调查数据分析的调整权重。

{pstd}
{cmd:svygen} {cmd:poststratify} 生成根据后分层权重调整的抽样权重。

{pstd}
{cmd:svygen} {cmd:brr} 为每个层中有两个主要抽样单元的设计生成 BRR 权重。

{pstd}
{cmd:svygen} {cmd:jackknife} 生成删除一个的拔靴法重复权重。

{pstd}
{cmd:svygen} {cmd:sdr} 生成 SDR 权重。


{marker options}{...}
{title:选项}

{phang}
{opt poststrata(varname)} 指定一个变量的名称（数值或字符串），用于识别后分层组。

{phang}
{opt postweight(varname)} 指定一个数值变量的名称，该变量包含人口中后分层的计数。

{phang}
{opt nocheck} 防止 {cmd:svygen} {cmd:poststratify} 检查后分层计数的有效性。此选项在 {cmd:svygen} 在循环中调用时有助于加快速度，但应在计数已被验证后使用。

{phang}
{opt hadamard(matname)} （仅 {cmd:brr} 和 {cmd:sdr}）指定一个 Hadamard 矩阵的名称。Hadamard 矩阵 {it:matname} 是一个平方矩阵 {it:H} ，其列数为 {it:k}，使得 {it:H}{it:H}' = {it:k}{opt I(k)}，其中 {opt I(k)} 表示具有 {it:k} 列的单位矩阵。

{phang2}
对于 {cmd:svygen} {cmd:brr}，{it:k} 必须大于或等于在 {opt strata()} 选项中识别的分层数。

{phang2}
对于 {cmd:svygen} {cmd:sdr}，{it:k} 必须大于或等于主要抽样单元（PSUs）的数量。

{phang}
{opt fay(#)} （仅 {cmd:brr}）指定 Fay 的调整。选定的 PSUs 的抽样权重在给定重复中乘以 {hi:2-}{it:#}，未选定的 PSUs 的抽样权重乘以 {it:#}。 {cmd:fay(0)} 是默认值，相当于原始 BRR 方法。

{pmore}
{it:#} 必须是 0 到 2 之间的数字；然而，{cmd:fay(1)} 是不允许的。

{phang}
{opt strata(varname)} （仅 {cmd:brr} 和 {cmd:jackknife}）指定一个变量的名称（数值或字符串），该变量包含分层标识符。{opt strata()} 是 {cmd:brr} 的必需项。

{phang}
{opt psu(varname)} （仅 {cmd:brr} 和 {cmd:jackknife}）指定一个变量的名称（数值或字符串），该变量包含 PSUs（集群）的标识符。

{phang}
{opt fpc(varname)} （仅 {cmd:brr} 和 {cmd:jackknife}）指定一个数值变量的名称，该变量包含方差估计的有限人口修正。


{marker examples}{...}
{title:示例}

{phang}
{cmd:. svygen brr brrw [pw=sampwgt], H(h12) strata(strid) psu(psuid)}
{p_end}
{phang}
{cmd:. svygen jackknife f jkw [pw=sampwgt], strata(strid) psu(psuid)}
{p_end}
{phang}
{cmd:. svygen sdr sdrw [pw=sampwgt], psu(psuid)}
{p_end}
{phang}
{cmd:. svygen post pwgt [pw=sampwgt], posts(strid postid) postw(totals)}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <svygen.sthlp>}