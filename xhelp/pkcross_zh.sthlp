{smcl}
{* *! version 1.1.11  11may2019}{...}
{viewerdialog pkcross "dialog pkcross"}{...}
{vieweralsosee "[R] pkcross" "mansection R pkcross"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] pk" "help pk_zh"}{...}
{viewerjumpto "语法" "pkcross_zh##syntax"}{...}
{viewerjumpto "菜单" "pkcross_zh##menu"}{...}
{viewerjumpto "描述" "pkcross_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "pkcross_zh##linkspdf"}{...}
{viewerjumpto "选项" "pkcross_zh##options"}{...}
{viewerjumpto "备注" "pkcross_zh##remarks"}{...}
{viewerjumpto "示例" "pkcross_zh##examples"}
{help pkcross:English Version}
{hline}{...}
{p2colset 1 16 18 2}{...}
{p2col:{bf:[R] pkcross} {hline 2}}分析交叉实验{p_end}
{p2col:}({mansection R pkcross:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 17 2}
{cmd:pkcross} {it:outcome} {ifin} [{cmd:,} {it:options}]

{synoptset 22 tabbed}{...}
{synopthdr}
{synoptline}
{syntab :模型}
{synopt :{opth seq:uence(varname)}}序列变量；默认是
{cmd:sequence(sequence)}{p_end}
{synopt :{opth tr:eatment(varname)}}处理变量；默认是
{cmd:treatment(treat)}{p_end}
{synopt :{opth per:iod(varname)}}时期变量；默认是
{cmd:period(period)}{p_end}
{synopt :{opth id(varname)}}ID 变量；默认是 {cmd:id(id)}{p_end}
{synopt :{opth car:ryover(varname)}}续作用变量；默认是
{cmd:carryover(carry)}{p_end}
{synopt :{opt car:ryover}{cmd:(none)}}从模型中省略续作用效应；
默认是 {cmd:carryover(carry)}{p_end}
{synopt :{opth m:odel(strings:string)}}指定要拟合的模型{p_end}
{synopt :{opt se:quential}}估计顺序平方和而不是部分平方和{p_end}

{syntab :参数化}
{synopt :{opt p:aram}{cmd:(3)}}估计均值和时期、处理、序列效应；假定没有续作用效应；默认{p_end}
{synopt :{opt p:aram}{cmd:(1)}}估计均值和时期、处理、续作用效应；假定没有序列效应{p_end}
{synopt :{opt p:aram}{cmd:(2)}}估计均值、时期和处理效应，以及时期与处理的交互作用；假定没有序列或续作用效应
{p_end}
{synopt :{opt p:aram}{cmd:(4)}}估计均值、序列和处理效应，以及序列与处理的交互作用；假定没有时期或续作用效应
{p_end}
{synoptline} 
{p2colreset}{...}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 流行病学及相关 > 其他 >}
     {bf:分析交叉实验}


{marker description}{...}
{title:描述}

{pstd}
{cmd:pkcross} 分析来自交叉设计实验的数据。当分析药物试验数据时，如果已知处理、续作用和序列变量，则会计算处理和续作用效应可分离性的整体检验。

{pstd}
{cmd:pkcross} 是 pk 命令之一。请在阅读此条目之前先阅读 {help pk_zh}。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection R pkcrossQuickstart:快速开始}

        {mansection R pkcrossRemarksandexamples:备注和示例}

        {mansection R pkcrossMethodsandformulas:方法与公式}

{pstd}
以上部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:模型}

{phang}
{opth sequence(varname)}指定包含处理施用顺序的变量。如果未指定此选项，则假定为 {cmd:sequence(sequence)}。

{phang}
{opth treatment(varname)}指定包含处理信息的变量。如果未指定此选项，则假定为 {cmd:treatment(treat)}。

{phang}
{opth period(varname)}指定包含时期信息的变量。如果未指定此选项，则假定为 {cmd:period(period)}。

{phang}
{opth id(varname)}指定包含主体标识符的变量。如果未指定此选项，则假定为 {cmd:id(id)}。

{phang}
{opt carryover}{cmd:(}{varname}{c |}{cmd:none}{cmd:)}指定包含续作用信息的变量。如果指定了 {cmd:carry(none)}，则从模型中省略续作用效应。如果未指定此选项，则假定为 {cmd:carryover(carry)}。

{phang}
{opth model:(strings:string)}指定要拟合的模型。对于高阶交叉设计，如果想拟合非默认模型，此选项可能会很有用。不过 {help anova_zh} 也可以用于拟合交叉模型。高阶交叉设计的默认模型是结果由序列、时期、处理和续作用效应预测。默认情况下，模型语句为 {cmd:model(sequence period treat carry)}。

{phang}
{opt sequential}指定估计顺序平方和。

{dlgtab:参数化}

{phang}
{opt param(#)}指定用于分析 2 x 2 交叉实验的四种参数化方式中的哪一种。对于高阶交叉设计，此选项将被忽略。默认是 {cmd:param(3)}。  
有关 {bind:2 x 2} 交叉设计的更多细节，请参见 {mansection R pkcrossRemarksandexamplestechnote:技术说明} 在 {bf:[R] pkcross} 中。

{pmore}
{cmd:param(3)}估计整体均值、时期效应、处理效应和序列效应，假定不存在续作用效应。这是默认参数化。

{pmore}
{cmd:param(1)}估计整体均值、时期效应、处理效应和续作用效应，假定不存在序列效应。

{pmore}
{cmd:param(2)}估计整体均值、时期效应、处理效应，以及时期与处理的交互作用，假定不存在序列或续作用效应。

{pmore}
{cmd:param(4)}估计整体均值、序列效应、处理效应，以及序列与处理的交互作用，假定不存在时期或续作用效应。当序列与处理的交互作用相当于时期效应时，这会简化为第三种参数化。


{marker remarks}{...}
{title:备注}

{pstd}
{cmd:pkcross} 旨在分析交叉实验。在使用前请先使用 {help pkshape_zh} 重塑您的数据。{cmd:pkcross} 假设数据是通过 {cmd:pkshape} 重塑的，或者以与 {cmd:pkshape} 产生的方式相同的方式组织。清洗期用数字 0 表示。


{marker examples}{...}
{title:示例}

{phang}{cmd:. webuse pkdata3}{p_end}
{phang}{cmd:. pkcross outcome}{p_end}
{phang}{cmd:. pkcross outcome, carryover(none)} (省略续作用效应){p_end}
{phang}{cmd:. pkcross outcome, param(2)}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <pkcross.sthlp>}