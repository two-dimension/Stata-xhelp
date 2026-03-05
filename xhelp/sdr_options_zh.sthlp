{smcl}
{* *! version 1.0.15  23jan2019}{...}
{vieweralsosee "[SVY] sdr_options" "mansection SVY sdr_options"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[SVY] svy" "help svy_zh"}{...}
{vieweralsosee "[SVY] svy sdr" "help svy_sdr_zh"}{...}
{viewerjumpto "语法" "sdr_options_zh##syntax"}{...}
{viewerjumpto "描述" "sdr_options_zh##description"}{...}
{viewerjumpto "选项" "sdr_options_zh##options"}{...}
{viewerjumpto "示例" "sdr_options_zh##examples"}
{help sdr_options:English Version}
{hline}{...}
{p2colset 1 22 24 2}{...}
{p2col:{bf:[SVY]} {it:sdr_options} {hline 2}}更多 SDR 方差估计的选项{p_end}
{p2col:}({mansection SVY sdr_options:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{synoptset 25 tabbed}{...}
{synopthdr:sdr_options}
{synoptline}
{syntab:SE}
{synopt :{opt mse}}使用 MSE 公式计算方差{p_end}
{synopt :{opt nodots}}抑制复制点{p_end}
{synopt :{opt dots(#)}}每 {it:#} 次复现显示点{p_end}

{synopt :{help prefix_saving_option_zh:{bf:{ul:sa}ving(}{it:filename}{bf:, ...)}}}保存
	结果到 {it:filename}{p_end}
{synopt :{opt v:erbose}}显示完整的表格说明{p_end}
{synopt :{opt noi:sily}}显示来自 {it:command} 的任何输出{p_end}
{synopt :{opt tr:ace}}跟踪 {it:command}{p_end}
{synopt :{opt ti:tle(text)}}使用 {it:text} 作为结果的标题{p_end}
{synopt :{opt nodrop}}不删除观测值{p_end}
{synopt :{opth reject(exp)}}识别无效结果{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
{cmd:saving()}, {cmd:verbose}, {cmd:noisily}, {cmd:trace}, {cmd:title()},
{cmd:nodrop}, 和 {cmd:reject()} 在估计命令的对话框中未显示。


{marker description}{...}
{title:描述}

{pstd}
{cmd:svy} 在执行连续差分复制（SDR）方差估计时接受更多选项。有关完整讨论，请参见 {manhelp svy_sdr SVY:svy sdr}。


{marker options}{...}
{title:选项}

{dlgtab:SE}

{phang}
{opt mse} 指定 {cmd:svy} 使用复制样本与基于整个数据集的统计观测值之间的偏差来计算方差。默认情况下，{cmd:svy} 使用复制样本与其均值之间的偏差来计算方差。

包含帮助 svy_dots

{phang}
{opt saving()}, {opt verbose}, {opt noisily}, {opt trace}, {opt title()},
{opt nodrop}, 和 {opt reject()}; 参见 {manhelp svy_sdr SVY:svy sdr}。


{marker examples}{...}
{title:示例}

{phang}
设置{p_end}
{phang2}
{cmd:. webuse ss07ptx}

{phang}
显示调查设置{p_end}
{phang2}
{cmd:. svyset}

{phang}
使用连续差分复制估计一个变量在两个子群体上的均值， 每 20 次迭代显示点{p_end}
{phang2}
{cmd:. svy sdr, dots(20): mean agep, over(sex)}

{phang}
估计上述均值的差异，创建文件 {cmd:newdata.dta}，包含一个包含复制样本的变量{p_end}
{phang2}
{cmd:. svy sdr diff = (_b[c.agep@1.sex] - _b[c.agep@2.sex]), saving(newdata):}
       {cmd:mean agep, over(sex)}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <sdr_options.sthlp>}