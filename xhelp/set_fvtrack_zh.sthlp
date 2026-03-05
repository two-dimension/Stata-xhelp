{smcl}
{* *! version 1.0.0  08mar2017}{...}
{vieweralsosee undocumented "help undocumented"}{...}
{vieweralsosee "" "--"}{...}
{findalias asfrfvvarlists}{...}
{viewerjumpto "语法" "set_fvtrack_zh##syntax"}{...}
{viewerjumpto "描述" "set_fvtrack_zh##description"}{...}
{viewerjumpto "选项" "set_fvtrack_zh##option"}{...}
{viewerjumpto "备注" "set_fvtrack_zh##remarks"}
{help set_fvtrack:English Version}
{hline}{...}
{title:标题}

{p2colset 4 23 25 2}{...}
{p2col:{hi:[P] set fvtrack} {hline 2}}跟踪因子变量的水平
{p_end}


{marker syntax}{...}
{title:语法}

{p 8 16 2}
{cmd:set}
{cmd:fvtrack}
{c -(}{cmd:term} | {cmd:factor}{c )-}
[{cmd:,} {cmdab:perm:anently}]


{marker description}{...}
{title:描述}

{pstd}
{cmd:set} {cmd:fvtrack}
允许您控制 Stata 在使用因子变量表示法时如何跟踪因子水平。

{pstd}
{help contrast_zh} 的行为就好像 {cmd:set fvtrack factor} 生效一样，无论当前设置是什么。

{pstd}
{help menl_zh} 的行为就好像 {cmd:set fvtrack term} 生效一样，无论当前设置是什么。


{marker option}{...}
{title:选项}

{phang}
{cmd:permanently} 指定除立即进行更改外，设置还会被记住，并成为您调用 Stata 时的默认设置。


{marker remarks}{...}
{title:备注}

{pstd}
假设我们有以下因子变量：

{pmore2}
因子 {cmd:ind} 有 2 个水平，取值为 0 和 1。

{pmore2}
因子 {cmd:grp} 有 3 个水平，取值为 1、2 和 3。

{pstd}
{cmd:i.ind} 的扩展为

{phang2}
{cmd:0b.ind}
{cmd:1.ind}

{pstd}
{cmd:i.grp} 的扩展为

{phang2}
{cmd:1b.grp}
{cmd:2.grp}
{cmd:3.grp}

{pstd}
它们的交互 {cmd:i.ind#i.grp} 的扩展为

{phang2}
{cmd:0b.ind#1b.grp}
{cmd:0b.ind#2.grp}
{cmd:0b.ind#3.grp}
{cmd:1.ind#1b.grp}
{cmd:1.ind#2.grp}
{cmd:1.ind#3.grp}

{pstd}
当 {cmd:set fvtrack factor} 生效时，或者当通过将 {helpb version##userversion:version, user} 设置为低于 15 的版本时，Stata 会与因子变量一起跟踪因子水平。这意味着在一个项中为 {cmd:grp} 指定一个水平将会影响所有包含 {cmd:grp} 的其他项。
例如， 

{phang2}
{cmd:i3.grp i.ind#i.grp}

{pstd}
的扩展为

{phang2}
{cmd:3.grp}
{cmd:0b.ind#3.grp}
{cmd:1.ind#3.grp}

{pstd}
而 

{phang2}
{cmd:i.grp i.ind#i3.grp}

{pstd}
的扩展为

{phang2}
{cmd:3.grp}
{cmd:0b.ind#3.grp}
{cmd:1.ind#3.grp}

{pstd}
当 {cmd:set fvtrack term} 生效时，Stata 会与指定的项一起跟踪因子水平。这意味着在一个项中为 {cmd:grp} 指定一个水平不会影响包含 {cmd:grp} 的任何其他项。
参考上述示例，我们看到 

{phang2}
{cmd:i3.grp i.ind#i.grp}

{pstd}
的扩展为

{phang2}
{cmd:3.grp}
{cmd:0b.ind#1b.grp}
{cmd:0b.ind#2.grp}
{cmd:0b.ind#3.grp}
{cmd:1.ind#1b.grp}
{cmd:1.ind#2.grp}
{cmd:1.ind#3.grp}

{pstd}
而 

{phang2}
{cmd:i.grp i.ind#i3.grp}

{pstd}
的扩展为

{phang2}
{cmd:1b.grp}
{cmd:2.grp}
{cmd:3.grp}
{cmd:0b.ind#3.grp}
{cmd:1.ind#3.grp}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <set_fvtrack.sthlp>}