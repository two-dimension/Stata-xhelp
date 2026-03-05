{smcl}
{* *! version 1.0.5  19oct2017}{...}
{viewerdialog estat "dialog estat"}{...}
{vieweralsosee "[TS] estat sbsingle" "mansection TS estatsbsingle"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TS] estat sbcusum" "help estat sbcusum"}{...}
{vieweralsosee "[TS] estat sbknown" "help estat sbknown"}{...}
{vieweralsosee "[TS] tsset" "help tsset_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] ivregress" "help ivregress_zh"}{...}
{vieweralsosee "[R] regress" "help regress_zh"}{...}
{viewerjumpto "Syntax" "estat sbsingle##syntax"}{...}
{viewerjumpto "Menu for estat" "estat sbsingle##menu_estat"}{...}
{viewerjumpto "Description" "estat sbsingle##description"}{...}
{viewerjumpto "Links to PDF documentation" "estat_sbsingle_zh##linkspdf"}{...}
{viewerjumpto "Options" "estat sbsingle##options"}{...}
{viewerjumpto "Examples" "estat sbsingle##examples"}{...}
{viewerjumpto "Stored results" "estat sbsingle##results"}
{help estat_sbsingle:English Version}
{hline}{...}
{p2colset 1 24 26 2}{...}
{p2col:{bf:[TS] estat sbsingle} {hline 2}}测试未知断点的结构性变化{p_end}
{p2col:}({mansection TS estatsbsingle:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

        {cmd:estat sbsingle} [{cmd:,} {it:选项}]

{synoptset 31}{...}
{synopthdr}
{synoptline}
{synopt :{cmd:breakvars(}[{varlist}][{cmd:,} {opt cons:tant}]{cmd:)}}指定要包含在测试中的变量；默认情况下，测试所有系数{p_end}
{synopt :{opt trim(#)}}指定修剪百分比；默认为 {cmd:trim(15)}{p_end}
{synopt :{opt ltrim(#_l)}}指定左修剪百分比{p_end}
{synopt :{opt rtrim(#_r)}}指定右修剪百分比{p_end}
{synopt :{opt swald}}请求进行最优Wald检验；这是默认设置{p_end}
{synopt :{opt awald}}请求进行平均Wald检验{p_end}
{synopt :{opt ewald}}请求进行指数Wald检验{p_end}
{synopt :{opt all}}报告所有测试{p_end}
{synopt :{opt slr}}请求进行最优似然比(LR)检验{p_end}
{synopt :{opt alr}}请求进行平均LR检验{p_end}
{synopt :{opt elr}}请求进行指数LR检验{p_end}
{synopt :{opth gen:erate(newvarlist)}}创建包含Wald或LR检验统计量的 {it:newvarlist}{p_end}
{synopt :{opt nodots}}抑制迭代点的显示{p_end}
{synoptline}
{p 4 6 2}
在使用 {cmd:estat sbsingle} 之前，必须先 {cmd:tsset} 数据；请参见
{help tsset_zh:[TS] tsset}。


INCLUDE help menu_estat


{marker description}{...}
{title:描述}

{pstd}
{opt estat sbsingle}  执行检验时间序列回归中的系数是否在未知断点定义的时期内变化。

{pstd}
{opt estat sbsingle} 需要当前的估计结果来自于 {help regress_zh} 或 {help ivregress_zh:ivregress 2sls}。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection TS estatsbsingleQuickstart:快速入门}

        {mansection TS estatsbsingleRemarksandexamples:说明和示例}

        {mansection TS estatsbsingleMethodsandformulas:方法和公式}

{pstd}
上述部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{cmd:breakvars(}[{varlist}][{cmd:,} {cmd:constant}]{cmd:)}
指定要包含在测试中的变量。默认情况下，所有系数都会被测试。

{phang2}
{opt constant} 指定常数包括在要测试的变量列表中。只有在原始模型是用常量项拟合时，{opt constant} 才可指定。

{phang}
{opt trim(#)} 指定左右修剪百分比作为整数。指定 {opt trim(#)} 会将第 {it:#} 个百分位的观察值视为第一个可能的断点，而将 (100 - {it:#}) 个百分位的观察值视为最后一个可能的断点。默认情况下，修剪百分比设置为 15，但可以设置为 1 到 49 之间的任何值。

{phang}
{opt ltrim(#_l)} 指定左修剪百分比作为整数。指定 {opt ltrim(#_l)} 会将第 {it:#_l} 个百分位的观察值视为第一个可能的断点。此选项必须与 {opt rtrim(#_r)} 一起指定，并且不能与 {opt trim(#)} 结合使用。 {it:#_l} 必须在 1 到 99 之间。

{phang}
{opt rtrim(#_r)} 指定右修剪百分比作为整数。指定 {opt rtrim(#_r)} 会将 (100 - {it:#_r}) 个百分位的观察值视为最后一个可能的断点。此选项必须与 {opt ltrim(#_l)} 一起指定，并且不能与 {opt trim(#)} 结合使用。 {it:#_r} 必须小于 (100 - {it:#_l})。指定 {it:#_l} = {it:#_r} 等同于指定 {opt trim(#)}，并且 {it:#} = {it:#_l} = {it:#_r}。

{phang}
{opt swald} 请求执行最优Wald检验。这是默认设置。

{phang}
{opt awald} 请求执行平均Wald检验。

{phang}
{opt ewald} 请求执行指数Wald检验。

{phang}
{opt all} 指定所有测试都在表中显示。

{phang}
{opt slr} 请求执行最优似然比检验。

{phang}
{opt alr} 请求执行平均似然比检验。

{phang}
{opt elr} 请求执行指数似然比检验。

{phang}
{opth generate(newvarlist)} 创建包含Wald统计量、LR统计量或两者的一个或两个新变量，这些变量经过转换并用于计算请求的Wald或LR检验。如果您只请求Wald型检验（{opt swald}、{opt awald} 或 {opt ewald}）或仅请求LR型检验（{opt slr}、{opt alr} 或 {opt elr}），则您可以在 {opt generate()} 中只指定一个 {varname}。默认情况下，{newvar} 将包含Wald或LR统计量，具体取决于指定的检验类型。

{pmore}
如果您在 {opt generate()} 中指定了Wald型和LR型检验，并指定了两个 {it:varnames}，则会创建一个包含Wald统计量的变量和一个包含LR统计量的变量。如果您只在 {opt generate()} 中指定一个 {it:varname} 并同时指定了Wald型和LR型检验，则返回Wald统计量。

{pmore}
如果未指定测试，但指定了 {opt generate()}，则返回Wald统计量。

{phang}
{opt nodots} 抑制迭代点的显示。默认情况下，范围内每个可能的断点显示一个点字符。 

{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse usmacro}{p_end}
{phang2}{cmd:. regress fedfunds L.fedfunds inflation}{p_end}

{pstd}测试系数在未知断点处是否发生变化{p_end}
{phang2}{cmd:. estat sbsingle}{p_end}

{pstd}与上述相同，但还显示最优Wald、平均Wald和平均LR检验的结果{p_end}
{phang2}{cmd:. estat sbsingle, swald awald alr}{p_end}


{marker results}{...}
{title:存储的结果}

{pstd}
{cmd:estat sbsingle} 在 {cmd:r()} 中存储以下内容：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:r(chi2)}}卡方检验统计量{p_end}
{synopt:{cmd:r(p)}}卡方检验的p值{p_end}
{synopt:{cmd:r(df)}}自由度{p_end}

{p2col 5 15 19 2: 宏}{p_end}
{synopt:{cmd:r(ltrim)}}修剪开始日期{p_end}
{synopt:{cmd:r(rtrim)}}修剪结束日期{p_end}
{synopt:{cmd:r(breakvars)}}包含在测试中的变量系数列表{p_end}
{synopt:{cmd:r(breakdate)}}仅在最优检验后估计的断点{p_end}
{synopt:{cmd:r(test)}}检验类型{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <estat_sbsingle.sthlp>}