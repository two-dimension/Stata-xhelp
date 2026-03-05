{smcl}
{* *! version 1.1.4  25sep2018}{...}
{viewerdialog estat "dialog sem_estat, message(-ggof-) name(sem_estat_ggof)"}{...}
{vieweralsosee "[SEM] estat ggof" "mansection SEM estatggof"}{...}
{findalias assemggof}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[SEM] sem" "help sem_command_zh"}{...}
{vieweralsosee "[SEM] sem postestimation" "help sem_postestimation_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[SEM] estat eqgof" "help sem_estat_eqgof_zh"}{...}
{vieweralsosee "[SEM] estat gof" "help sem_estat_gof_zh"}{...}
{vieweralsosee "[SEM] sem group options" "help sem_group_options_zh"}{...}
{viewerjumpto "Syntax" "sem_estat_ggof_zh##syntax"}{...}
{viewerjumpto "Menu" "sem_estat_ggof_zh##menu"}{...}
{viewerjumpto "Description" "sem_estat_ggof_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "sem_estat_ggof_zh##linkspdf"}{...}
{viewerjumpto "Option" "sem_estat_ggof_zh##option"}{...}
{viewerjumpto "Remarks" "sem_estat_ggof_zh##remarks"}{...}
{viewerjumpto "Examples" "sem_estat_ggof_zh##examples"}{...}
{viewerjumpto "Stored results" "sem_estat_ggof_zh##results"}
{help sem_estat_ggof:English Version}
{hline}{...}
{p2colset 1 21 23 2}{...}
{p2col:{bf:[SEM] estat ggof} {hline 2}}组水平拟合优度统计量{p_end}
{p2col:}({mansection SEM estatggof:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 14 2}
{cmd:estat} {cmd:ggof} [{cmd:,} {opth for:mat(%fmt)}]


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > SEM（结构方程模型） > 组统计 > 组水平拟合优度}


{marker description}{...}
{title:描述}

{pstd}
{cmd:estat ggof} 在使用 {cmd:sem,} {opt group()} 后进行使用。

{pstd}
{cmd:estat ggof} 按组显示标准化均方根残差 (SRMR)、决定系数 (CD)、模型与饱和模型的卡方检验及其相关的自由度和 p 值。


{marker linkspdf}{...}
{title:链接到 PDF 文档}

        {mansection SEM estatggofRemarksandexamples:备注和示例}

{pstd}
上述部分不包括在此帮助文件中。


{marker option}{...}
{title:选项}

{phang}{opth format(%fmt)}
指定显示格式。默认为 {cmd:format(%9.3f)}。


{marker remarks}{...}
{title:备注}

{pstd}
请参见 {findalias semggof}。

{pstd}
{cmd:estat ggof} 在使用 {cmd:sem,} {opt group()} 后提供组水平的拟合优度统计量；详见 
{helpb sem group options:[SEM] sem group options}。

{pstd}
对于使用 {cmd:gsem} 适配的模型，不计算 SRMR、CD 和卡方统计量；因此，{cmd:estat ggof} 不适用于使用 {cmd:gsem, group()} 进行的估计。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse sem_2fmmby}{p_end}
{phang2}{cmd:. sem (Peer -> peerrel1 peerrel2 peerrel3 peerrel4)}{break}
	{cmd: (Par -> parrel1 parrel2 parrel3 parrel4), group(grade)}{p_end}

{pstd}组水平拟合优度统计量{p_end}
{phang2}{cmd:. estat ggof}{p_end}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:estat ggof} 在 {cmd:r()} 中存储以下内容：

{synoptset 18 tabbed}{...}
{p2col 5 18 22 2: 标量}{p_end}
{synopt:{cmd:r(N_groups)}}组的数量{p_end}

{synoptset 18 tabbed}{...}
{p2col 5 18 22 2: 矩阵}{p_end}
{synopt:{cmd:r(gfit)}}拟合统计量{p_end}
{synopt:{cmd:r(gfit_sb)}}Satorra-Bentler 标准化拟合统计量{p_end}
{p2colreset}{...}


{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <sem_estat_ggof.sthlp>}