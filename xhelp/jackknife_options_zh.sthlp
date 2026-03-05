{smcl}
{* *! version 1.1.16  23jan2019}{...}
{vieweralsosee "[SVY] jackknife_options" "mansection SVY jackknife_options"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[SVY] svy" "help svy_zh"}{...}
{vieweralsosee "[SVY] svy jackknife" "help svy_jackknife_zh"}{...}
{viewerjumpto "语法" "jackknife_options_zh##syntax"}{...}
{viewerjumpto "描述" "jackknife_options_zh##description"}{...}
{viewerjumpto "选项" "jackknife_options_zh##options"}{...}
{viewerjumpto "示例" "jackknife_options_zh##examples"}
{help jackknife_options:English Version}
{hline}{...}
{p2colset 1 28 30 2}{...}
{p2col:{bf:[SVY]} {it:jackknife_options} {hline 2}}更多的杰克刀方差估计选项{p_end}
{p2col:}({mansection SVY jackknife_options:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{synoptset 25 tabbed}{...}
{synopthdr:jackknife_options}
{synoptline}
{syntab:SE}
{synopt :{opt mse}}使用均方误差公式计算方差{p_end}
{synopt :{opt nodots}}抑制复制点显示{p_end}
{synopt :{opt dots(#)}}每 {it:#} 次复制显示一个点{p_end}

{synopt:{help prefix_saving_option_zh:{bf:{ul:sa}ving(}{it:filename}{bf:, ...)}}}保存
	结果到 {it:filename}{p_end}
{synopt:{opt keep}}保留伪值{p_end}
{synopt:{opt v:erbose}}显示完整的表格图例{p_end}
{synopt:{opt noi:sily}}显示 {it:command} 的任何输出{p_end}
{synopt:{opt tr:ace}}跟踪 {it:command}{p_end}
{synopt:{opt ti:tle(text)}}使用 {it:text} 作为结果的标题{p_end}
{synopt:{opt nodrop}}不丢弃观测值{p_end}
{synopt:{opth reject(exp)}}识别无效结果{p_end}
{synoptline}
{p2colreset}{...}
{phang}
{cmd:saving()}, {cmd:keep}, {cmd:verbose}, {cmd:noisily}, {cmd:trace}, 
{cmd:title()}, {cmd:nodrop}, 和 {cmd:reject()} 在估计命令的对话框中不显示。


{marker description}{...}
{title:描述}

{pstd}
{cmd:svy} 在执行杰克刀方差估计时接受更多选项。


{marker options}{...}
{title:选项}

{dlgtab:SE}

{phang}
{opt mse} 指定 {cmd:svy} 通过使用从整个数据集观察值的统计量的复制品的偏差来计算方差。 默认情况下， {cmd:svy} 通过使用伪值与其均值的偏差来计算方差。

{phang}
{opt nodots} 和 {opt dots(#)} 指定是否显示复制点。 默认情况下，对于每次成功复制会打印一个点字符。如果 {it:command} 返回错误，则显示一个红色的 `x`，如果 {it:exp_list} 中至少有一个值缺失，则显示 `e`，如果样本大小不正确，则显示 `n`，如果丢弃的抽样单位在子群体样本外，则显示一个黄色的 `s`。

{phang2}
{opt nodots} 抑制复制点的显示。

{phang2}
{opt dots(#)} 每 {it:#} 次复制显示一个点。 {cmd:dots(0)} 是 {cmd:nodots} 的同义词。

{phang}
{opt saving()}, {opt keep}, {opt verbose}, {opt noisily}, {opt trace},
{opt title()}, {opt nodrop}, {opt reject()}; 参见
{manhelp svy_jackknife SVY:svy jackknife}。


{marker examples}{...}
{title:示例}

{phang}
设置{p_end}
{phang2}
{cmd:. webuse nhanes2}

{phang}
显示调查设置{p_end}
{phang2}
{cmd:. svyset}

{phang}
拟合线性回归，计算标准误的杰克刀估计，显示每次复制的输出{p_end}
{phang2}
{cmd:. svy jackknife, noisily: regress weight height}

{phang}
计算同一回归中截距的标准误的杰克刀估计，向数据集中添加一个包含此统计量伪值的新变量{p_end}
{phang2}
{cmd:. svy jackknife _b[_cons], keep: regress weight height}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <jackknife_options.sthlp>}