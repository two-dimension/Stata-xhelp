{smcl}
{* *! version 1.0.4  11feb2011}{...}
{vieweralsosee undocumented "help undocumented"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] ml" "help ml_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[P] macro" "help macro_zh"}{...}
{viewerjumpto "Syntax" "ml_hold_zh##syntax"}{...}
{viewerjumpto "Description" "ml_hold_zh##description"}{...}
{viewerjumpto "Option" "ml_hold_zh##option"}{...}
{viewerjumpto "Remarks" "ml_hold_zh##remarks"}{...}
{viewerjumpto "Acknowledgment" "ml_hold_zh##ack"}
{help ml_hold:English Version}
{hline}{...}
{title:标题}

{p 4 17 2}
{hi:[P] ml hold} {hline 2} 使用 ml 递归


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{cmd:ml} {cmd:hold} [, {cmdab:noi:sily} ]

{p 8 12 2}
{cmd:ml} {cmd:unhold} [, {cmdab:noi:sily} ]


{marker description}{...}
{title:描述}

{pstd}
{cmd:ml} {cmd:hold} 和 {cmd:ml} {cmd:unhold} 是为 {cmd:ml} 程序员提供的命令。它们提供了在递归调用 {cmd:ml} {cmd:model} 时所需的工具。

{pstd}
{cmd:ml} {cmd:hold} 重命名由 {cmd:ml} {cmd:model} 命令创建的所有全局宏、标量、矩阵和变量。这样您可以在优化一个似然的同时使用 {cmd:ml} 来优化另一个似然。

{pstd}
{cmd:ml} {cmd:unhold} 恢复由 {cmd:ml} {cmd:hold} 重命名的所有全局宏、标量、矩阵和变量。这将 Stata 恢复到前一个 {cmd:ml} {cmd:model} 命令定义的状态。因此您可以继续优化先前的似然，可能使用当前已完成的 {cmd:ml} 优化的结果。


{marker option}{...}
{title:选项}

{phang}
{cmd:noisily} 使得 {cmd:ml} {cmd:hold} 和 {cmd:ml} {cmd:unhold} 显示与每个由 {cmd:ml} {cmd:model} 命令创建/修改的全局宏、标量、矩阵和变量相关的消息。此选项可用于调试目的。


{marker remarks}{...}
{title:备注}

{pstd}
为了说明，我们将使用谱似然法拟合负二项分布，而不是完全最大似然估计。因此我们将优化 {it:beta} 系数，同时将 {it:alpha} 参数视为干扰参数。

{pstd}
将 {it:alpha} 视为干扰参数（实际上我们将优化 ln({it:alpha}）），假设我们有一个候选值，因此我们的条件似然评估器是

        {cmd}{sf}{ul off}program mynbreg_lf
                version {ccl stata_version}
                args lnf xb

                tempvar m p

                local y $ML_y1
                local lnalpha $MY_lnalpha
                gen double `m' = exp(-$MY_lnalpha)

                quietly replace `lnf' = lngamma(`m'+`y')	///
			- lngamma(`y'+1)			///
                        - lngamma(`m')				///
			- `m'*ln(1+exp(`xb'+`lnalpha'))		///
                        - `y'*ln(1+exp(-`xb'-`lnalpha'))
        end{reset}

{pstd}
在这里，我们假设 ln({it:alpha}) 的值保存在全局宏 {cmd:MY_lnalpha} 中（或者 {cmd:$MY_lnalpha} 可以包含变量或标量的名称），{cmd:mynbreg_lf} 中的其他所有部分都是 {cmd:ml} 编程的标准。

{pstd}
现在如果我们有 {it:alpha} 的候选值，我们可以通过键入以下内容交互式地估计 {it:beta} 系数（条件于此候选 {it:alpha}）：

	{cmd}. use ...
	. global MY_lnalpha = ...
	. ml model lf mynbreg_lf (beta: {it:yvar} = {it:xvars}) , {it:options}
	. ml max , {it:options}
	{reset}{...}

{pstd}
这基本上是 {it:alpha} 的似然评估器将要做的事情。我们必须记住的唯一细节是 {cmd:ml} {cmd:hold} 当前的 {cmd:ml} {cmd:model} 环境，然后才能优化条件似然。优化 ln({it:alpha}）的似然是

        {cmd}{sf}{ul off}program mynbreg_alpha_d0
                version {ccl stata_version}
                args todo b lnf
		tempvar lnalpha
		mleval `lnalpha' = `b', eq(1)
                local y $ML_y1
                global MY_lnalpha `lnalpha'

                ml hold
                quietly ml model lf mynbreg_lf		///
			(xb: `y' = $MY_x, $MY_offset),	///
                        maximize
                ml unhold

                scalar `lnf' = e(ll)
        end{reset}

{pstd}
请注意，我们使用全局宏传递预测变量和与 {it:beta} 系数相关的偏移选项的名称。因此我们现在可以通过调用 {cmd:ml} {cmd:model} 两次，使用谱似然法拟合负二项模型：第一次找到 {it:alpha} 的最大似然估计，然后条件于 {it:alpha} 的最大似然估计来估计 {it:beta} 系数。


	{cmd}. global MY_x ...				// {txt}{it:x vars}
	{cmd}. global MY_offset offset(...)		// {txt}{it:offset} {it:option}
	{cmd}. ml model lf mynbreg_alpha_d0 (y =), maximize ...
	{cmd}. tempname lnalpha
	{cmd}. matrix `lnalpha' = e(b)
	{cmd}. scalar `lnalpha' = `lnalpha'[1,1]
	{cmd}. global MY_lnalpha `lnalpha'
	{cmd}. ml model lf mynbreg_lf (y = $MY_x, $MY_offset), maximize ...
	{cmd}. ml display{reset}

{pstd}
在测试您的似然评估器后，您可以像 {it:{browse "http://www.stata.com/bookstore/mle.html":Maximum Likelihood Estimation with Stata, 3rd Edition}}（Gould, Pitblado, 和 Sribney 2006）所描述的那样轻松创建一个新的估计命令。例如，

        {cmd}{sf}{ul off}program mynbreg
                version {ccl stata_version}
                if replay() {c -(}
                        if (`"`e(cmd)'"' != "mynbreg") error 301
                        Display `0'
                {c )-}
                else {c -(}
                        Estimate `0'
                {c )-}
        end

        program Estimate, eclass
                syntax varlist [,                       ///
                        offset(passthru)                ///
                        exposure(passthru)              ///
                        noLOg                           ///
                        *                               ///
                ]

                if `"`offset'"' != "" & `"`exposure'"' != "" {c -(}
                        di as err ///
                        "options offset() and exposure() may not be combined"
                        exit 198
                {c )-}
                mlopts mlopts diopts , `options'
                if "`log'" != "" {c -(}
                        local star "*"
                {c )-}

                tempname lnalpha

                gettoken y xvars : varlist

                macro drop MY_*
                global MY_x `xvars'
                global MY_offset `offset' `exposure'

                `star' di
                `star' di as txt "Fitting profile likelihood:"
                ml model d0 mynbreg_alpha_d0 (`y' : `y' = ) , ///
				`mlopts' `log' maximize

                macro drop MY_*
                matrix `lnalpha' = e(b)
                scalar `lnalpha' = `lnalpha'[1,1]
                global MY_lnalpha `lnalpha'

                `star' di
                `star' di as txt "Fitting full likelihood:"
                ml model lf mynbreg_lf                          ///
                        (                                       ///
                                `y' : `y' = `xvars',            ///
                                `offset' `exposure'             ///
                        ) , `mlopts' `log' maximize
                macro drop MY_*

                ereturn local title "Negative binomial via profile likelihood"
                ereturn scalar lnalpha = `lnalpha'
                ereturn scalar alpha = exp(`lnalpha')
                ereturn local cmd mynbreg

                Display , `diopts'
        end

        program Display
                ml display
        end{reset}

{pstd}
关于这个例子的最后一点。 从统计学的角度来看，从这种方法（谱似然）获得的 ( {it:beta} 系数的) 协方差矩阵值不是完整信息最大似然方差估计，而是基于观察到的 {it:alpha} 的最大似然估计的条件。

{marker ack}{...}
{title:致谢}

{pstd}
Mead Over，世界银行，提供了有关 {cmd:ml hold} 和 {cmd:ml unhold} 实施的有益建议。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <ml_hold.sthlp>}