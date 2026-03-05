{smcl}
{* *! version 1.0.5  15may2018}{...}
{vieweralsosee "undocumented" "help undocumented_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] Epitab" "help epitab_zh"}{...}
{viewerjumpto "语法" "bitowt_zh##syntax"}{...}
{viewerjumpto "描述" "bitowt_zh##description"}{...}
{viewerjumpto "选项" "bitowt_zh##options"}{...}
{viewerjumpto "示例" "bitowt_zh##examples"}
{help bitowt:English Version}
{hline}{...}
{title:标题}

{p 4 20 2}
{hi:[D] bitowt} {hline 2} 将二进制频率记录转换为频率加权数据


{marker syntax}{...}
{title:语法}

{p 8 15 2}{cmd:bitowt} {it:case#_var} {it:pop_var} [{cmd:if} {it:exp}] [{cmd:in}
{it:range}] [{cmd:,} {cmdab:c:ase:(}{it:newvarname}{cmd:)}
{cmdab:w:eight:(}{it:newvarname}{cmd:)} ]


{marker description}{...}
{title:描述}

{pstd}
{cmd:bitowt} 将二进制频率记录转换为频率加权数据。{it:case#_var} 指定包含每个观察值所代表的案例数量的变量，{it:pop_var} 指定每个观察值所代表的受试者（案例加对照）的数量。此命令将更改内存中的数据。


{marker options}{...}
{title:选项}

{phang}
{cmd:case(}{it:newvarname}{cmd:)} 指定一个新二进制变量的名称，该变量对于案例为 1，对于对照为 0。如果未指定 {cmd:case()}，则假定为 {cmd:case(_case)}。

{phang}
{cmd:weight(}{it:newvarname}{cmd:)} 指定一个变量的名称，该变量将包含频率权重。如果未指定 {cmd:weight()}，则假定为 {cmd:weight(_weight)}。


{marker examples}{...}
{title:示例}

{phang}{cmd:. bitowt deaths N}{p_end}
{phang}{cmd:. bitowt deaths N, case(cases) weight(wt)}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <bitowt.sthlp>}