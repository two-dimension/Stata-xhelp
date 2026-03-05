{smcl}
{* *! version 1.1.5  15may2018}{...}
{vieweralsosee "[M-5] setbreakintr()" "mansection M-5 setbreakintr()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-5] error()" "help mf_error_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] 编程" "help m4_programming_zh"}{...}
{viewerjumpto "语法" "mf_setbreakintr_zh##syntax"}{...}
{viewerjumpto "描述" "mf_setbreakintr_zh##description"}{...}
{viewerjumpto "PDF文档链接" "mf_setbreakintr_zh##linkspdf"}{...}
{viewerjumpto "备注" "mf_setbreakintr_zh##remarks"}{...}
{viewerjumpto "兼容性" "mf_setbreakintr_zh##conformability"}{...}
{viewerjumpto "诊断" "mf_setbreakintr_zh##diagnostics"}{...}
{viewerjumpto "源代码" "mf_setbreakintr_zh##source"}
{help mf_setbreakintr:English Version}
{hline}{...}
{p2colset 1 25 27 2}{...}
{p2col:{bf:[M-5] setbreakintr()} {hline 2}}暂停键处理
{p_end}
{p2col:}({mansection M-5 setbreakintr():查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{it:实数标量}
{cmd:setbreakintr(}{it:实数标量 val}{cmd:)}

{p 8 12 2}
{it:实数标量}
{cmd:querybreakintr()}

{p 8 12 2}
{it:实数标量}
{cmd:breakkey()}

{p 8 12 2}
{it:void}{bind:       }
{cmd:breakkeyreset()}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:setbreakintr(}{it:val}{cmd:)} 关闭（{it:val}==0）或开启（{it:val}!=0）暂停键中断，并返回之前暂停键模式的值，1 表示开启，0 表示关闭。

{p 4 4 2}
{cmd:querybreakintr()} 返回 1 如果暂停键中断开启，否则返回 0。

{p 4 4 2}
{cmd:breakkey()}（在 {cmd:setbreakintr(0)} 模式下使用）如果自上次重置以来已按下暂停键，返回 1。

{p 4 4 2}
{cmd:breakkeyreset()}（在 {cmd:setbreakintr(0)} 模式下使用）重置暂停键。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection M-5 setbreakintr()备注和示例:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
备注分为以下几部分：

	{help mf_setbreakintr##remarks1:默认暂停键处理}
	{help mf_setbreakintr##remarks2:暂停暂停键中断}
	{help mf_setbreakintr##remarks3:暂停键轮询}


{marker remarks1}{...}
{title:默认暂停键处理}

{p 4 4 2}
默认情况下，如果用户按下 {hi:Break}，Mata 会停止执行并将控制权返回到控制台，同时将返回代码设置为 1。

{p 4 4 2}
为了获得这种行为，您无需做任何事情。您不需要使用这些函数。


{marker remarks2}{...}
{title:暂停暂停键中断}

{p 4 4 2}
默认行为被称为中断-按断，并且也被称为 {cmd:setbreakintr(1)} 模式。

{p 4 4 2}
替代方案是暂停键暂停，也称为 {cmd:setbreakintr(0)} 模式。

{p 4 4 2}
例如，您有几个步骤必须完全执行或完全不执行。实现此目的的方法是

		{cmd:val = setbreakintr(0)}
		...
		...{it:(关键代码)}...
		...
		{cmd:(void) setbreakintr(val)}

{p 4 4 2}
第一行将当前的暂停键处理模式存储在 {it:val} 中，然后将模式设置为暂停键暂停。随后执行关键代码。如果用户在执行关键代码时按下 {hi:Break}，则该操作将被忽略。最后，代码会恢复之前的暂停键处理模式。


{marker remarks3}{...}
{title:暂停键轮询}

{p 4 4 2}
在编码大型交互式系统时，您可能希望采用暂停键轮询的编码风格，而不是中断-按断。在这种替代编码风格中，您关闭中断-按断：

		{cmd:val = setbreakintr(0)}

{p 4 4 2}
然后，在代码的后续部分，您可以在愿意中断代码的地方询问（轮询）暂停键是否被按下：

		...
		{cmd:if (breakkey()) {c -(}}
			...
		{cmd:{c )-}}
		...

{p 4 4 2}
在这种编码风格中，您必须决定在哪里以及何时重置暂停键，因为一旦暂停键被按下，{cmd:breakkey()} 将继续每次返回 1。要重置暂停键，可以编码：

		{cmd:breakkeyreset()}

{p 4 4 2}
您还可以采用混合编码风格，在某些地方使用中断-按断，在其他地方使用轮询。函数 {cmd:querybreakintr()} 可以用来确定当前模式。


{marker conformability}{...}
{title:兼容性}

    {cmd:setbreakintr(}{it:val}{cmd:)}:
	      {it:val}:  1 {it:x} 1
	   {it:result}:  1 {it:x} 1

    {cmd:querybreakintr()}, {cmd:breakkey()}:
	   {it:result}:  1 {it:x} 1

    {cmd:breakkeyreset()}:
	   {it:result}:  {it:void}
	

{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
如果在上次 {cmd:setbreakintr(0)} 或 {cmd:breakkeyreset()} 之后按下了暂停键，则 {cmd:setbreakintr(1)} 将会中止。如果您不想要此行为，请在 {cmd:setbreakintr(1)} 之前编码 {cmd:breakkeyreset()}。

{p 4 4 2}
在编码 {cmd:setbreakintr(1)} 之后，记得恢复到 {cmd:setbreakintr(0)} 模式。然而，如果即将执行 {cmd:exit()} 或 {cmd:_error()}，则不必恢复原来的模式。

{p 4 4 2}
一旦按下暂停键，{cmd:breakkey()} 将继续返回 1，直到执行 {cmd:breakkeyreset()}。

{p 4 4 2}
在 {cmd:setbreakintr(0)} 模式下，绝对没有理由使用 {cmd:breakkey()}，因为它唯一可能返回的值是 0。 


{marker source}{...}
{title:源代码}

{p 4 4 2}
函数是内置的。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_setbreakintr.sthlp>}