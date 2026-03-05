{smcl}
{* *! version 1.0.16  23jan2019}{...}
{vieweralsosee "[SVY] bootstrap_options" "mansection SVY bootstrap_options"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[SVY] svy" "help svy_zh"}{...}
{vieweralsosee "[SVY] svy bootstrap" "help svy_bootstrap_zh"}{...}
{viewerjumpto "Syntax" "bootstrap_options_zh##syntax"}{...}
{viewerjumpto "Description" "bootstrap_options_zh##description"}{...}
{viewerjumpto "Options" "bootstrap_options_zh##options"}{...}
{viewerjumpto "Examples" "bootstrap_options_zh##examples"}
{help bootstrap_options:English Version}
{hline}{...}
{p2colset 1 28 24 2}{...}
{p2col:{bf:[SVY]} {it:bootstrap_options} {hline 2}}更多自助方差估计选项{p_end}
{p2col:}({mansection SVY bootstrap_options:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{synoptset 25 tabbed}{...}
{synopthdr:bootstrap_options}
{synoptline}
{syntab:SE}
{synopt :{opt mse}}使用均方误差公式计算方差{p_end}
{synopt :{opt nodots}}屏蔽复制点{p_end}
{synopt :{opt dots(#)}}每 {it:#} 次重复时显示点{p_end}
{synopt :{opt bsn(#)}}自助均值加权调整{p_end}

{synopt :{help prefix_saving_option_zh:{bf:{ul:sa}ving(}{it:filename}{bf:, ...)}}}保存结果到 {it:filename}{p_end}
{synopt :{opt v:erbose}}显示完整表格说明{p_end}
{synopt :{opt noi:sily}}显示 {it:command} 的任何输出{p_end}
{synopt :{opt tr:ace}}跟踪 {it:command}{p_end}
{synopt :{opt ti:tle(text)}}使用 {it:text} 作为结果标题{p_end}
{synopt :{opt nodrop}}不丢弃观测值{p_end}
{synopt :{opth reject(exp)}}识别无效结果{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
{cmd:saving()}, {cmd:verbose}, {cmd:noisily}, {cmd:trace}, {cmd:title()}, 
{cmd:nodrop}, 和 {cmd:reject()} 在估计命令的对话框中不显示。


{marker description}{...}
{title:描述}

{pstd}
在进行自助方差估计时，{cmd:svy} 接受更多选项。有关完整讨论，请参见 {manhelp svy_bootstrap SVY:svy bootstrap}。


{marker options}{...}
{title:选项}

{dlgtab:SE}

{phang}
{opt mse} 指定 {cmd:svy} 通过使用从整个数据集中观察到的统计值计算复制品的偏差来计算方差。默认情况下，{cmd:svy} 通过使用复制品偏离其均值的偏差来计算方差。

包含 help svy_dots

{phang}
{opt bsn(#)} 指定使用 {it:#} 自助复制权重变量生成在 {help svyset_zh} 的 {opt bsrweight()} 选项中指定的每个自助均值权重变量。{opt bootstrap} 的 {opt bsn()} 选项覆盖 {help svyset_zh} 的 {opt bsn()} 选项。

{phang}
{opt saving()}, {opt verbose}, {opt noisily}, {opt trace}, {opt title()},
{opt nodrop}, 和 {opt reject()}; 参见 {manhelp svy_bootstrap SVY:svy bootstrap}。


{marker examples}{...}
{title:示例}

{phang}
设置{p_end}
{phang2}
{cmd:. webuse nmihs_bs}

{phang}
显示调查设置{p_end}
{phang2}
{cmd:. svyset}

{phang}
使用自助法拟合逻辑回归以估计标准误差， 每10次重复显示一个点{p_end}
{phang2}
{cmd:. svy bootstrap, dots(10): logistic lowbw age highbp}

{phang}
拟合相同的回归，使用从在变量 {cmd:finwgt} 中包含的最终权重计算方差估计器{p_end}
{phang2}
{cmd:. svy bootstrap, mse: logistic lowbw age highbp}

{phang}
计算两个子人群之间出生体重差异的自助标准误差；不显示复制点{p_end}
{phang2}
{cmd:. svy bootstrap diff = (_b[c.birthwgt@1.childsex] -}
          {cmd: _b[c.birthwgt@2.childsex]), nodots:}
          {cmd:mean birthwgt, over(childsex)}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <bootstrap_options.sthlp>}