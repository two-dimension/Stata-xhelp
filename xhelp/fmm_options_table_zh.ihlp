
{help fmm_options_table:English Version}
{hline}
{* *! version 1.0.4  12dec2018}{...}
{marker fmmopts}{...}
{synoptset 26 tabbed}{...}
{synopthdr:fmmopts}
{synoptline}
{syntab:模型}
{synopt :{opth lcin:variant(fmm##pclassname:pclassname)}}指定在各类别中相等的参数；默认值为 {cmd:lcinvariant(none)}{p_end}
{synopt :{opth lcpr:ob(varlist)}}指定类别概率的独立变量{p_end}
{synopt :{opt lcl:abel(name)}}分类潜变量的名称；默认值为 {cmd:lclabel(Class)}{p_end}
{synopt :{opt lcb:ase(#)}}基础潜在类别{p_end}
{synopt :{cmdab:const:raints(}{it:{help estimation options##constraints():constraints}}{cmd:)}}应用指定的线性约束{p_end}

{syntab :SE/稳健性}
{synopt :{opth vce(vcetype)}}{it:vcetype} 可以是 {opt oim},
	{opt r:obust},
	或 {opt cl:uster} {it:clustvar}{p_end}

{syntab :报告}
{synopt :{opt l:evel(#)}}设置置信水平；默认值为
{cmd:level(95)}{p_end}
{synopt :{opt nocnsr:eport}}不显示约束{p_end}
{synopt :{opt nohead:er}}不在参数表上方显示标题{p_end}
{synopt :{opt nodvhead:er}}不在标题中显示因变量信息{p_end}
{synopt :{opt notable}}不显示参数表{p_end}
{synopt :{it:{help fmm##display_options:display_options}}}控制
包括帮助短描述显示选项

{syntab :最大化}
{synopt :{it:{help fmm##maximize_options:maximize_options}}}控制
最大化过程{p_end}
{synopt :{opth startv:alues(fmm##startvalues:svmethod)}}获取起始值的方法；默认值为 {cmd:startvalues(factor)}{p_end}
{synopt :{opth em:opts(fmm##emopts:maxopts)}}控制
EM 算法以改进起始值{p_end}
{synopt :{opt noest:imate}}不拟合模型；显示起始值
而不是{p_end}

{synopt :{opt col:linear}}保留共线变量{p_end}
包括帮助短描述系数图例
{synoptline}
{p2colreset}{...}
{p 4 6 2}
{it:varlist} 可以包含因子变量；见 {help fvvarlist_zh}.{p_end}
{p 4 6 2}
{cmd:by}, {cmd:statsby}, 和 {cmd:svy} 被允许；见 {help prefix_zh}.{p_end}
{p 4 6 2}{cmd:vce()} 和权重在 {help svy_zh} 前缀下不被允许。
{p_end}
{marker weight}{...}
{p 4 6 2}
{cmd:fweight}s, {cmd:iweight}s, 和 
{cmd:pweight}s 是允许的；见 {help weight_zh}.{p_end}
{p 4 6 2}
{opt collinear} 和 {opt coeflegend} 不会在对话框中出现.{p_end}
{p 4 6 2}
请参见 {manhelp fmm_postestimation FMM:fmm postestimation} 以获取估计后可用的功能。
{p_end}