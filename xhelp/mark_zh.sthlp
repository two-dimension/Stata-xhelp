{smcl}
{* *! version 1.1.14  19oct2017}{...}
{vieweralsosee "[P] mark" "mansection P mark"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[P] byable (byprog)" "help byprog_zh"}{...}
{vieweralsosee "[SVY] svymarkout" "help svymarkout_zh"}{...}
{vieweralsosee "[P] syntax" "help syntax_zh"}{...}
{viewerjumpto "Syntax" "mark_zh##syntax"}{...}
{viewerjumpto "Description" "mark_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mark_zh##linkspdf"}{...}
{viewerjumpto "Options" "mark_zh##options"}{...}
{viewerjumpto "Remarks" "mark_zh##remarks"}{...}
{viewerjumpto "Example" "mark_zh##example"}
{help mark:English Version}
{hline}{...}
{p2colset 1 13 15 2}{...}
{p2col:{bf:[P] mark} {hline 2}}标记样本观察{p_end}
{p2col:}({mansection P mark:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

    在语法后创建标记变量

{p 8 19 2}{cmd:marksample} {it:lmacname} [{cmd:,} {cmdab:nov:arlist}
{cmdab:s:trok} {cmdab:zero:weight} {cmd:noby}]


    创建标记变量

{p 8 19 2}{cmd:mark} {it:newmarkvar}
{ifin} 
[{it:{help mark##weight:权重}}]
[{cmd:,} {cmdab:zero:weight} {cmd:noby}]


    修改标记变量

{p 8 19 2}{cmd:markout} {it:markvar} [{varlist}] [{cmd:,}
{cmdab:s:trok}
{cmdab:sysmis:sok}]


    查找包含选定观察的范围

{p 8 19 2}{cmd:markin} {ifin}
[{cmd:,}
    {cmdab:n:ame}{cmd:(}{it:lclname}{cmd:)}
    {cmd:noby}]


    基于调查特征变量修改标记变量

{p 8 19 2}{cmd:svymarkout} {it:markvar}


{marker weight}{...}
{pstd}
允许使用{cmd:aweight}、{cmd:fweight}、{cmd:iweight}和{cmd:pweight}；请参见{help weight_zh}.{p_end}
{pstd}
{it:varlist}可以包含时间序列运算符；请参见{help tsvarlist_zh}。


{marker description}{...}
{title:描述}

{pstd}
{cmd:marksample}、{cmd:mark}和{cmd:markout}用于Stata程序。
{cmd:marksample}和{cmd:mark}是替代方案；{cmd:marksample}链接到
由{cmd:syntax}留下的信息，而{cmd:mark}很少使用。
两者都会创建一个0/1的使用变量，记录哪些观察将在后续代码中使用。
{cmd:markout}会将使用变量设置为0，如果{varlist}中的任何变量包含缺失值，并用于进一步限制观察。

{pstd}
{cmd:markin}用于{cmd:marksample}、{cmd:mark}和{cmd:markout}之后，
有时提供对后续代码中要使用的观察进行更高效的编码。{cmd:markin}很少使用。

{pstd}
{cmd:svymarkout}将使用变量设置为0，无论任何调查特征变量是否包含缺失值；讨论见{manhelp svymarkout SVY}，此处不再进一步讨论。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection P markRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang} 
{cmd:novarlist}用于{cmd:marksample}。它指明{varlist}中的缺失值不会导致标记变量被设置为0。如果您先前指定了

            {cmd:syntax newvarlist} ...

{pmore}或

            {cmd:syntax newvarname} ...

{pmore}
    应该同时指定{cmd:novarlist}，以便缺失值不会导致观察被排除（或许您正在分析缺失值的模式）。

{marker strok}{...}
{phang}
{cmd:strok}与{cmd:marksample}或{cmd:markout}一起使用。如果要允许{varlist}中的字符串变量，请指定此选项。{cmd:strok}将{help mark##rule6:规则6}下的内容更改为

{pmore}
    "当{it:varlist}中的任何字符串变量包含{cmd:""}时，标记变量在这些观察中被设置为0。"

{marker zeroweight}{...}
{phang}
{cmd:zeroweight}用于{cmd:marksample}或{cmd:mark}。它删除了{help mark##rule1:规则1}下的内容，因此观察不会因为权重为零而被排除。

{phang}{cmd:noby}很少使用，仅在{cmd:byable(recall)}程序中使用。
它指定在确定样本时忽略对by组的限制。{cmd:mark}和{cmd:marksample}将像用户未指定{cmd:by}前缀时一样创建标记变量。如果用户未指定{cmd:by}前缀，指定{cmd:noby}将没有效果。
{cmd:noby}为{cmd:byable(recall)}程序提供了一种识别整体样本的方法。例如，如果程序需要计算by组中的观察比例，程序需要知道此次调用所使用的样本和整体样本。程序可能编码如下

	    {cmd:program} {it:...}{cmd:, byable(recall)}
		    {it:...}
		    {cmd:marksample touse}
		    {cmd:marksample alluse, noby}

		    {it:...}
		    {cmd:quietly count if `touse'}
		    {cmd:local curN = r(N)}
		    {cmd:quietly count if `alluse'}
		    {cmd:local totN = r(N)}

		    {cmd:local frac = `curN'/`totN'}
		    {it:...}
	    {cmd:end}

{pmore}
参见{manhelp byprog P:byable}。

{phang}
{cmd:sysmissok}与{cmd:markout}一起使用。指定此选项
    如果{varlist}中的数值变量等于系统缺失（{cmd:.}）被允许，而仅排除等于扩展缺失
    （{cmd:.a}、{cmd:.b}等）的数值变量。
    默认情况下，所有缺失值（{cmd:.}、{cmd:.a}、{cmd:.b}等）都被排除。

{phang}
{opt name(lclname)}与{cmd:markin}一起使用。它指定要创建的宏的名称。如果未指定{cmd:name()}，则使用名称{cmd:in}。


{marker remarks}{...}
{title:备注}

{pstd}
无论您使用{cmd:mark}还是{cmd:marksample}，跟随或不跟随{cmd:markout}，以下规则适用：

{marker rule1}{...}
{phang}
 1.  如果{it:weight}为0，则标记变量在这些观察中设置为0（但请参见选项{helpb mark##zeroweight:zeroweight}）。

{phang}
2.  如果{it:weight}无效（例如某些观察小于0或对频率权重为非整数），则会发出适当的错误消息，且一切将停止。

{phang}
3.  当{cmd:if} {it:exp}未得到满足时，标记变量在这些观察中设置为0。

{phang}
4.
    标记变量在{cmd:in} {it:range}外的观察中设置为0。

{phang}
5.  如果{it:varlist}中的任何数值变量包含数值缺失值，则标记变量在这些观察中设置为0。

{marker rule6}{...}
{phang}
6.  如果{it:varlist}中的任何变量是字符串，则标记变量在所有观察中设置为0；有关例外情况，请参见选项{helpb mark##strok:strok}。

{phang}
7.  在剩余观察中将标记变量设置为1。

{pstd}
使用名称{cmd:touse}是一种约定，而不是规则，但建议使用以确保程序间的一致性。


{marker example}{...}
{title:示例}

    {cmd:program} {it:...}
	    {cmd:syntax} {it:...}
	    {cmd:marksample touse}
	    {it:...}
	    {it:...} {cmd:if `touse'} {it:...}
	    {it:...}
    {cmd:end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mark.sthlp>}