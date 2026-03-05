{smcl}
{* *! version 1.0.18  15may2018}{...}
{viewerdialog mi "dialog mi"}{...}
{vieweralsosee "[MI] mi export nhanes1" "mansection MI miexportnhanes1"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MI] Intro" "help mi_zh"}{...}
{vieweralsosee "[MI] mi export" "help mi_export_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MI] mi import nhanes1" "help mi_import_nhanes1_zh"}{...}
{viewerjumpto "Syntax" "mi_export_nhanes1_zh##syntax"}{...}
{viewerjumpto "Menu" "mi_export_nhanes1_zh##menu"}{...}
{viewerjumpto "Description" "mi_export_nhanes1_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mi_export_nhanes1_zh##linkspdf"}{...}
{viewerjumpto "Options" "mi_export_nhanes1_zh##options"}{...}
{viewerjumpto "Remarks" "mi_export_nhanes1_zh##remarks"}
{help mi_export_nhanes1:English Version}
{hline}{...}
{p2colset 1 27 29 2}{...}
{p2col:{bf:[MI] mi export nhanes1} {hline 2}}导出 mi 数据为 NHANES 格式{p_end}
{p2col:}({mansection MI miexportnhanes1:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{cmd:mi export nhanes1} {it:filenamestub}
[{cmd:,}
{it:options odd_options}]

{synoptset 28}{...}
{synopthdr}
{synoptline}
{synopt:{cmd:replace}}允许替换现有文件{p_end}
{synopt:{cmdab:upper:case}}大写前缀和后缀{p_end}
{synopt:{opt passive:ok}}包含被动变量{p_end}
{synoptline}

{synopthdr:odd_options}
{synoptline}
{synopt:{cmd:nacode(}{it:#}{cmd:)}}不适用代码；默认值为 {cmd:0}{p_end}
{synopt:{cmd:obscode(}{it:#}{cmd:)}}观察代码；默认值为 {cmd:1}{p_end}
{synopt:{cmd:impcode(}{it:#}{cmd:)}}插补代码；默认值为 {cmd:2}{p_end}

{synopt:{cmdab:imppre:fix("}{it:string}{cmd:" "}{it:string}{cmd:")}}变量前缀；默认值为 {cmd:"" ""}{p_end}
{synopt:{cmdab:impsuf:fix("}{it:string}{cmd:" "}{it:string}{cmd:")}}变量后缀；默认值为 {cmd:"if" "mi"}{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
注意：
{it:odd_options} 仅在您要创建与 nhanes1 类似但并非真正的 nhanes1 格式的结果时才需要指定。{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 多重插补}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:mi} {cmd:export} {cmd:nhanes1} 将内存中的 {cmd:mi} 数据写入磁盘文件，格式为 nhanes1。 
文件将命名为 
{it:filenamestub}{cmd:.dta},
{it:filenamestub}{cmd:1.dta}, 
{it:filenamestub}{cmd:2.dta}, 
依此类推。
除了原始 {cmd:mi} 数据中的变量外，还将添加新变量 {cmd:seqn} 以记录序列号。
在使用 {cmd:mi} {cmd:export} {cmd:nhanes1} 后， 
您可以使用 {cmd:outfile}（参见 {bf:{help outfile_zh:[D] outfile}}）或 
{cmd:export delimited}（参见 {bf:{help import delimited:[D] import delimited}}）将生成的 {cmd:.dta} 文件转换为适合发送给非 Stata 用户的格式。
另请参见 {findalias frdatain}。

{p 4 4 2}
{cmd:mi} {cmd:export} {cmd:nhanes1} 不会改变内存中的数据。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection MI miexportnhanes1Remarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{p 4 8 2}
{cmd:replace}
    表示可以覆盖现有文件。

{p 4 8 2}
{cmd:uppercase}
    指定新序列变量 {cmd:SEQN} 和变量后缀 {cmd:IF} 和 {cmd:MI} 使用大写字母。默认值为小写字母。（更准确地说，当超出 nhanes1 格式进行概括时，{cmd:uppercase} 选项指定 {cmd:SEQN} 在大写字母中创建，以及所有前缀和后缀。）

{p 4 8 2}
{cmd:passiveok}
    指定将被动变量写入，如同它们是插补变量。默认值是如果原始数据中存在被动变量则会发出错误。

{p 4 8 2}
{cmd:nacode(}{it:#}{cmd:)}, {cmd:obscode(}{it:#}{cmd:)}, 和
    {cmd:impcode(}{it:#}{cmd:)}为可选项，当读取真实的 nhanes1 数据时从不指定。
    默认 {cmd:nacode(0)} {cmd:obscode(1)} {cmd:impcode(2)}
    对应于 nhanes1 定义。
    这些选项允许更改不适用的代码、观察到的代码和插补代码。

{p 4 8 2}
{cmd:impprefix("}{it:string}{cmd:"} {cmd:"}{it:string}{cmd:")} 和 
{cmd:impsuffix("}{it:string}{cmd:"} {cmd:"}{it:string}{cmd:")}
    为可选项，当读取真实的 nhanes1 数据时从不指定。
    默认 {cmd:impprefix("")} {cmd:""} {cmd:impsuffix("if")} {cmd:"mi"}
    对应于 nhanes1 定义。
    这些选项允许设置不同的前缀和后缀。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
{cmd:mi} {cmd:export} {cmd:nhanes1} 是 
{cmd:mi import nhanes1} 的逆操作；
参见 {bf:{help mi_import_nhanes1_zh:[MI] mi import nhanes1}} 以了解 nhanes1 格式的描述。

{p 4 4 2}
下面我们使用 {cmd:mi} {cmd:export} {cmd:nhanes1} 将 
{cmd:miproto.dta} 转换为 nhanes1 格式。 {cmd:miproto.dta} 恰好是宽格式，但这并不相关。

	. {cmd:webuse miproto}
	. {cmd:mi describe}
	. {cmd:list}
	. {cmd:mi export nhanes1 mynh, passiveok}
	. {cmd:use mynh}
	. {cmd:list}
	. {cmd:use mynh1}
	. {cmd:use mynh2}
	. {cmd:list}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mi_export_nhanes1.sthlp>}