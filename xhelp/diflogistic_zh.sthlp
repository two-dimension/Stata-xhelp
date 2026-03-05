{smcl}
{* *! version 1.0.4  18sep2018}{...}
{viewerdialog irt "dialog irt"}{...}
{vieweralsosee "[IRT] diflogistic" "mansection IRT diflogistic"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[IRT] difmh" "help difmh_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[IRT] DIF" "help dif_zh"}{...}
{vieweralsosee "[IRT] irt" "help irt_zh"}{...}
{viewerjumpto "Syntax" "diflogistic_zh##syntax"}{...}
{viewerjumpto "Menu" "diflogistic_zh##menu_irt"}{...}
{viewerjumpto "Description" "diflogistic_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "diflogistic_zh##linkspdf"}{...}
{viewerjumpto "Options" "diflogistic_zh##options"}{...}
{viewerjumpto "Examples" "diflogistic_zh##examples"}{...}
{viewerjumpto "Stored results" "diflogistic_zh##results"}
{help diflogistic:English Version}
{hline}{...}
{p2colset 1 22 30 2}{...}
{p2col:{bf:[IRT] diflogistic} {hline 2}}逻辑回归DIF{p_end}
{p2col:}({mansection IRT diflogistic:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 15 2}
{cmd:diflogistic} {varlist} 
{ifin}
[{help diflogistic##weight:{it:weight}}]{cmd:,}
{opth gr:oup(varname)}
[{it:options}]

{synoptset 20 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:主要}
{p2coldent :* {opth gr:oup(varname)}}指定标识组的变量{p_end}
{synopt :{opth total(varname)}}指定总分变量{p_end}
{synopt :{opth items:(varlist:varlist_i)}}仅针对{it:varlist_i}中的项目计算逻辑回归测试{p_end}

{syntab:报告}
{synopt :{opt maxp(#)}}仅显示p值{bind:p-value {ul:<} {it:#}}的项目{p_end}
{synopt :{opth sf:ormat(%fmt)}}卡方值的显示格式；默认格式为{cmd:sformat(%9.2f)}{p_end}
{synopt :{opth pf:ormat(%fmt)}}p值的显示格式；默认格式为{cmd:pformat(%9.4f)}{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}* {opt group()} 是必需的.{p_end}
{marker weight}{...}
{p 4 6 2}{opt fweight}被允许；见{help weight_zh}.


包含帮助菜单_irt


{marker description}{...}
{title:描述}

{pstd}
{cmd:diflogistic}使用逻辑回归测试项目是否在两个观察组之间表现出差异项目功能（DIF）。逻辑回归用于测试均匀和非均匀DIF，即项目是否在所有潜在特质值或仅在某些潜在特质值上偏向某一组。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection IRT diflogisticQuickstart:快速开始}

        {mansection IRT diflogisticRemarksandexamples:注意事项和示例}

        {mansection IRT diflogisticMethodsandformulas:方法和公式}

{pstd}
上述部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主要}

{phang}
{opth group(varname)}
	指定识别焦点组和参考组的数字变量。这两个组应分别编码为1和0。{cmd:group()}是必需的。

{phang}
{opth total(varname)}
	指定用作总分的变量。默认情况下，总分为项目变量的行和。

{phang}
{opth items:(varlist:varlist_i)}
	请求仅对指定项目计算逻辑回归测试。{it:varlist_i}必须是{it:varlist}的一个子集。默认情况下，统计数据是针对{it:varlist}中的所有项目计算的。

{dlgtab:报告}

{phang}
{opt maxp(#)}
	请求仅显示p值{ul:<} {it:#}的项目。

{phang}
{opth sformat(%fmt)}
	指定输出表中卡方值的显示格式。默认格式为{cmd:sformat(%9.2f)}。

{phang}
{opth pformat(%fmt)}
	指定输出表中p值的显示格式。默认格式为{cmd:pformat(%9.4f)}。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse masc2}

{pstd}对项目{cmd:q1-q9}执行逻辑回归测试{p_end}
{phang2}{cmd:. diflogistic q1-q9, group(female)}

{pstd}与上述相同，但请求对项目{cmd:q1}、{cmd:q5}和{cmd:q9}进行测试{p_end}
{phang2}{cmd:. diflogistic q1-q9, group(female) items(q1 q5 q9)}

{pstd}重新播放结果，并仅显示在0.1水平上显著的项目{p_end}
{phang2}{cmd:. diflogistic, maxp(.1)}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:diflogistic}将以下信息存储在{cmd:r()}中：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 宏}{p_end}
{synopt:{cmd:r(cmd)}}{cmd:diflogistic}{p_end}
{synopt:{cmd:r(cmdline)}}输入的命令{p_end}
{synopt:{cmd:r(items)}}项目名称{p_end}
{synopt:{cmd:r(wtype)}}权重类型{p_end}
{synopt:{cmd:r(wexp)}}权重表达式{p_end}
{synopt:{cmd:r(group)}}组变量{p_end}
{synopt:{cmd:r(total)}}替代总分变量的名称（如果指定）{p_end}

{p2col 5 15 19 2: 矩阵}{p_end}
{synopt:{cmd:r(dif)}}结果表{p_end}
{synopt:{cmd:r(_N)}}每个项目的观察数量{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <diflogistic.sthlp>}