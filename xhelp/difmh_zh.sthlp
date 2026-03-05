{smcl}
{* *! version 1.0.7  18sep2018}{...}
{viewerdialog irt "dialog irt"}{...}
{vieweralsosee "[IRT] difmh" "mansection IRT difmh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[IRT] diflogistic" "help diflogistic_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[IRT] DIF" "help dif_zh"}{...}
{vieweralsosee "[IRT] irt" "help irt_zh"}{...}
{viewerjumpto "语法" "difmh_zh##syntax"}{...}
{viewerjumpto "菜单" "difmh_zh##menu_irt"}{...}
{viewerjumpto "描述" "difmh_zh##description"}{...}
{viewerjumpto "PDF文档链接" "difmh_zh##linkspdf"}{...}
{viewerjumpto "选项" "difmh_zh##options"}{...}
{viewerjumpto "示例" "difmh_zh##examples"}{...}
{viewerjumpto "存储结果" "difmh_zh##results"}
{help difmh:English Version}
{hline}{...}
{p2colset 1 16 18 2}{...}
{p2col:{bf:[IRT] difmh} {hline 2}}Mantel-Haenszel DIF{p_end}
{p2col:}({mansection IRT difmh:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 15 2}
{cmd:difmh} {varlist} 
{ifin}
[{help difmh##weight:{it:weight}}]{cmd:,}
{opth gr:oup(varname)}
[{it:options}]

{synoptset 20 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:主要}
{p2coldent :* {opth gr:oup(varname)}}指定识别组的变量{p_end}
{synopt :{opth total(varname)}}指定总分变量{p_end}
{synopt :{opth items:(varlist:varlist_i)}}仅对{it:varlist_i}中的项目计算Mantel-Haenszel (MH)统计量{p_end}
{synopt :{opt noyates}}在计算MH统计量时不应用Yates连续性修正；默认是应用连续性修正{p_end}

{syntab:报告}
{synopt :{opt l:evel(#)}}设置信心水平；默认值为{cmd:level(95)}{p_end}
{synopt :{opt maxp(#)}}只显示p值{ul:<} {it:#}的项目{p_end}
{synopt :{opth sf:ormat(%fmt)}}卡方值的显示格式；默认值为{cmd:sformat(%9.2f)}{p_end}
{synopt :{opth pf:ormat(%fmt)}}p值的显示格式；默认值为{cmd:pformat(%9.4f)}{p_end}
{synopt :{opth of:ormat(%fmt)}}优势比统计的显示格式；默认值为{cmd:oformat(%9.4f)}{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}* {opt group()} 是必需的。{p_end}
{marker weight}{...}
{p 4 6 2}{opt fweight}是允许的；请参见{help weight_zh}。


INCLUDE help menu_irt


{marker description}{...}
{title:描述}

{pstd}
{cmd:difmh} 计算二分评分项目的MH卡方和共同优势比。MH统计用于确定一个项目是否在两个观察组之间表现出均匀的差异项目功能（DIF），即该项目是否在所有潜在特质值下偏向于一个组相对于另一个组。  


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection IRT difmhQuickstart:快速开始}

        {mansection IRT difmhRemarksandexamples:备注和示例}

        {mansection IRT difmhMethodsandformulas:方法和公式}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主要}

{phang}
{opth group(varname)}
	指定识别焦点组和参考组的数值变量。组应该分别编码为1和0。 {cmd:group()} 是必需的。

{phang}
{opth total(varname)}
	指定用作总分的变量。默认情况下，总分按项目变量的行和计算。
	
{phang}
{opth items:(varlist:varlist_i)}
	请求仅对指定的项目计算MH统计量。 {it:varlist_i} 必须是 {it:varlist} 的子集。默认情况下，统计量是针对{it:varlist}中的所有项目计算的。

{phang}
{opt noyates}
	指定在计算MH卡方统计量时不应用Yates的连续性修正。默认情况下，会应用连续性修正。 

{dlgtab:报告}

{phang}
{opt level(#)}; 参见 
{helpb estimation options:[R] 估计选项}。

{phang}
{opt maxp(#)}
	请求仅显示p值{ul:<} {it:#}的项目。

{phang}
{opth sformat(%fmt)}
	指定输出表中卡方值的显示格式。默认值为{cmd:sformat(%9.2f)}。

{phang}
{opth pformat(%fmt)}
	指定输出表中p值的显示格式。默认值为{cmd:pformat(%9.4f)}。

{phang}
{opth oformat(%fmt)}
	指定输出表中优势比统计的显示格式。默认值为{cmd:oformat(%9.4f)}。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse masc2}

{pstd}对项目 {cmd:q1-q9} 执行MH过程{p_end}
{phang2}{cmd:. difmh q1-q9, group(female)}

{pstd}与上述相同，但请求项目 {cmd:q1}、 {cmd:q5} 和 {cmd:q9} 的MH统计量{p_end}
{phang2}{cmd:. difmh q1-q9, group(female) items(q1 q5 q9)}

{pstd}重放结果，仅显示显著性在0.1水平的项目{p_end}
{phang2}{cmd:. difmh, maxp(.1)}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:difmh} 在 {cmd:r()} 中存储以下内容：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:r(N)}}观察数量{p_end}
{synopt:{cmd:r(level)}}显著性水平{p_end}
{synopt:{cmd:r(yates)}}如果使用Yates的连续性修正，则为{cmd:1}，否则为{cmd:0}{p_end}

{p2col 5 15 19 2: 宏}{p_end}
{synopt:{cmd:r(cmd)}}{cmd:difmh}{p_end}
{synopt:{cmd:r(cmdline)}}输入的命令{p_end}
{synopt:{cmd:r(items)}}项目名称{p_end}
{synopt:{cmd:r(wtype)}}权重类型{p_end}
{synopt:{cmd:r(wexp)}}权重表达式{p_end}
{synopt:{cmd:r(group)}}组变量{p_end}
{synopt:{cmd:r(total)}}指定的替代总分变量名称（如果有）{p_end}

{p2col 5 15 19 2: 矩阵}{p_end}
{synopt:{cmd:r(dif)}}结果表{p_end}
{synopt:{cmd:r(sigma2)}}共同优势比的估计方差{p_end}
{synopt:{cmd:r(_N)}}每个项目的观察数量{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <difmh.sthlp>}