{smcl}
{* *! version 1.3.6  14may2018}{...}
{viewerdialog lincom "dialog lincom"}{...}
{vieweralsosee "[R] lincom" "mansection R lincom"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] nlcom" "help nlcom_zh"}{...}
{vieweralsosee "[R] test" "help test_zh"}{...}
{vieweralsosee "[R] testnl" "help testnl_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[SVY] svy postestimation" "help svy postestimation"}{...}
{viewerjumpto "Syntax" "lincom_zh##syntax"}{...}
{viewerjumpto "Menu" "lincom_zh##menu"}{...}
{viewerjumpto "Description" "lincom_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "lincom_zh##linkspdf"}{...}
{viewerjumpto "Options" "lincom_zh##options"}{...}
{viewerjumpto "Examples" "lincom_zh##examples"}{...}
{viewerjumpto "Stored results" "lincom_zh##results"}
{help lincom:English Version}
{hline}{...}
{p2colset 1 15 17 2}{...}
{p2col:{bf:[R] lincom} {hline 2}}线性组合参数{p_end}
{p2col:}({mansection R lincom:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 16 2}
{cmd:lincom} {it:{help exp_zh}} [{cmd:,} {it:选项}]

{synoptset 16}{...}
{synopthdr}
{synoptline}
{synopt :{opt ef:orm}}通用标签; {cmd:exp(b)}{p_end}
{synopt :{opt or}}优势比{p_end}
{synopt :{opt hr}}风险比{p_end}
{synopt :{opt shr}}子风险比{p_end}
{synopt :{opt ir:r}}发生率比{p_end}
{synopt :{opt rr:r}}相对风险比{p_end}
{synopt :{opt l:evel(#)}}设置信心水平; 默认值为 {cmd:level(95)}{p_end}
{synopt :{it:{help lincom##display_options:显示选项}}}控制列格式{p_end}

{synopt :{opt df(#)}}使用 {it:#} 自由度的 t 分布计算 p 值和置信区间{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}{it:exp} 是任何有效的线性组合系数的语法，适用于 {cmd:test}; 参见 {help test_zh:[R] test}。 {it:exp} 不得包含等号。
{p_end}
{p 4 6 2}
{opt df(#)} 不在对话框中出现。
{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 后续估计}


{marker description}{...}
{title:描述}

{pstd}
{cmd:lincom} 计算点估计、标准误差、t 或 z 统计量、p 值和线性组合系数的置信区间，适用于任何估计命令，包括调查估计。 结果可以选择以优势比、风险比、发生率比或相对风险比的形式显示。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection R lincomQuickstart:快速入门}

        {mansection R lincomRemarksandexamples:备注和示例}

{pstd}
上述部分不包括在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{opt eform}, {opt or}, {opt hr}, {opt shr},  {opt irr} 和 {opt rrr} 都将系数估计报告为 exp(b) 而不是 b。 标准误差和置信区间也按此方式转换。 {opt or} 是 {cmd:logistic} 之后的默认选项。 这些选项之间唯一的区别在于输出标签的方式。

	选项{col 19}标签{col 32}说明{col 56}示例命令
	{hline 63}
	{cmd:eform}{col 19}{cmd:exp(b)}{col 32}通用标签{col 56}{help cloglog_zh}
	{cmd:or}{col 19}{cmd:优势比}{col 32}优势比{col 56}{help logistic_zh}, {help logit_zh}
	{cmd:hr}{col 19}{cmd:风险比}{col 32}风险比{col 56}{help stcox_zh}, {help streg_zh}
	{cmd:shr}{col 19}{cmd:SHR}{col 32}子风险比{col 56}{help stcrreg_zh}
	{cmd:irr}{col 19}{cmd:IRR}{col 32}发生率比{col 56}{help poisson_zh}
	{cmd:rrr}{col 19}{cmd:RRR}{col 32}相对比率{col 56}{help mlogit_zh}
	{hline 63}

{pmore}
{it:{help exp_zh}} 在使用 {opt eform}, {opt or}, {opt hr}, {opt irr} 或 {opt rrr} 选项时不得包含任何加性常数。

{phang}
{opt level(#)} 指定置信区间的置信水平，以百分比表示。 默认值为 {cmd:level(95)} 或通过 {helpb set level} 设置的值。

{marker display_options}{...}
{phang}
{it:display_options}:
{opth cformat(%fmt)},
{opt pformat(%fmt)}, 和
{opt sformat(%fmt)};
    参见 {helpb estimation options##display_options:[R] 估计选项}。

{pstd}
以下选项适用于 {opt lincom}，但未在对话框中显示：

{phang}
{opt df(#)} 指定使用 {it:#} 自由度的 t 分布计算 p 值和置信区间。 默认情况下使用 {cmd:e(df_r)} 自由度，或者在 {cmd:e(df_r)} 缺失时使用标准正态分布。


{marker examples}{...}
{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse regress}{p_end}
{phang2}{cmd:. regress y x1 x2 x3}{p_end}

{pstd}估计系数的线性组合{p_end}
{phang2}{cmd:. lincom x2-x1}{p_end}
{phang2}{cmd:. lincom 3*x1 + 500*x3}{p_end}
{phang2}{cmd:. lincom 3*x1 + 500*x3 - 12}{p_end}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse lbw}{p_end}

{pstd}拟合逻辑回归，并报告系数{p_end}
{phang2}{cmd:. logit low age lwt i.race smoke ptl ht ui}{p_end}

{pstd}估计系数的线性组合；报告优势比{p_end}
{phang2}{cmd:. lincom 2.race+smoke, or}{p_end}

{pstd}拟合逻辑回归，报告优势比{p_end}
{phang2}{cmd:. logistic low age lwt i.race smoke ptl ht ui}{p_end}

{pstd}{cmd:lincom} 继 {cmd:logistic} 之后默认报告优势比{p_end}
{phang2}{cmd:. lincom 2.race+smoke}{p_end}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse sysdsn1}{p_end}
{phang2}{cmd:. mlogit insure age male nonwhite i.site}{p_end}

{pstd}从 {cmd:Prepaid} 方程估计系数的线性组合{p_end}
{phang2}{cmd:. lincom [Prepaid]male + [Prepaid]nonwhite}{p_end}

    {hline}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:lincom} 将以下内容存储在 {cmd:r()} 中：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:r(estimate)}}点估计{p_end}
{synopt:{cmd:r(se)}}标准误差估计{p_end}
{synopt:{cmd:r(df)}}自由度{p_end}
{synopt:{cmd:r(t)} 或 {cmd:r(z)}}t 或 z 统计量{p_end}
{synopt:{cmd:r(p)}}p 值{p_end}
{synopt:{cmd:r(lb)}}置信区间下限{p_end}
{synopt:{cmd:r(ub)}}置信区间上限{p_end}
{synopt:{cmd:r(level)}}置信水平{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <lincom.sthlp>}