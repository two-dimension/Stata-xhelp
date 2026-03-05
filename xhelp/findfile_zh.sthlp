{smcl}
{* *! version 1.1.11  23mar2018}{...}
{vieweralsosee "[P] findfile" "mansection P findfile"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[P] sysdir" "help adopath"}{...}
{vieweralsosee "[D] sysuse" "help sysuse_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[P] _getfilename" "help _getfilename_zh"}{...}
{vieweralsosee "[P] unabcmd" "help unabcmd_zh"}{...}
{vieweralsosee "[R] which" "help which_zh"}{...}
{viewerjumpto "Syntax" "findfile_zh##syntax"}{...}
{viewerjumpto "Description" "findfile_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "findfile_zh##linkspdf"}{...}
{viewerjumpto "Options" "findfile_zh##options"}{...}
{viewerjumpto "Remarks" "findfile_zh##remarks"}{...}
{viewerjumpto "Stored results" "findfile_zh##results"}
{help findfile:English Version}
{hline}{...}
{p2colset 1 17 19 2}{...}
{p2col:{bf:[P] findfile} {hline 2}}在路径中查找文件{p_end}
{p2col:}({mansection P findfile:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 14 2}
{cmd:findfile}
{it:{help filename_zh}}
[{cmd:,}
{cmd:path(}{it:path}{cmd:)}
{cmdab:nodes:cend}
{cmd:all}]

{pstd}
其中 {it:filename} 和 {it:path} 可选择性地用引号括起来，默认是在未指定选项 {cmd:path()} 的情况下查看 ado 路径。


{marker description}{...}
{title:描述}

{pstd}
{cmd:findfile} 在指定路径中查找文件，如果找到该文件，则显示完整的名称并返回名称到 {cmd:r(fn)}。如果未找到文件，将发出文件未找到错误 r(601)。

{pstd}
除非另有说明，{cmd:findfile} 会在 ado 路径中查找，该路径与 Stata 用于查找 ado 文件、帮助文件等的路径相同。

{pstd}
在编程环境中，{cmd:findfile} 通常会在 {cmd:quietly} 之后使用；请参见 {help quietly_zh:[P] quietly}。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection P findfileRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{cmd:path(}{it:path}{cmd:)} 指定 {cmd:findfile} 要搜索的路径。未指定此选项相当于指定 {cmd:path(`"`c(adopath)'"')}。

{pmore}
如果指定，{it:path} 应该是以分号分隔的目录（文件夹）名称列表；例如，

	    {cmd:path(`".;~/bin;"~/data/my data";~"')}
	    {cmd:path(`".;\bin;"\data\my data";~"')}

{pmore}
单个目录名可以用引号括起来，但如果任何目录名被括起来，请记得将整个路径参数用复合引号括住。

{pmore}
此外，任何目录名称都可以指定为 {cmd:STATA}、{cmd:BASE}、{cmd:SITE}、{cmd:PLUS}、{cmd:PERSONAL} 或 {cmd:OLDPLACE}，这些是对 {help sysdir_zh} 中记录的目录的间接引用：

	    {cmd:path(BASE;SITE;.;PERSONAL;PLUS)}
	    {cmd:path(\bin:SITE;.;PERSONAL;PLUS)}
	    {cmd:path(`"\bin;.;"\data\my data";PERSONAL;PLUS"')}
	    {cmd:path(`".;`c(adopath)'"')}

{phang}
{cmd:nodescend} 指定 {cmd:findfile} 不遵循 Stata 在路径中的目录及其字母子目录的正常搜索方式。{cmd:nodescend} 很少指定，且如果指定，通常也会指定 {cmd:path()}。

{phang}
{cmd:all} 指定找到路径中所有指定名称的文件，然后列出并存储在 {cmd:r(fn)} 中。当未指定 {cmd:all} 时，默认在找到指定名称的第一个实例后停止搜索。

{pmore}
    当指定 {cmd:all} 时，所找到文件的完整名称将依次返回在 {cmd:r(fn)} 中，并且每个名称都用引号括住。因此，在指定 {cmd:all} 时，如果您稍后需要引用返回的列表，则必须使用复合双引号。还请记住，如果未找到任何文件，{cmd:findfile} 将发出未找到文件的错误。如果您希望抑制该输出并希望 {cmd:r(fn)} 返回为空，请在 {cmd:findfile} 前加上 {help capture_zh}。因此，典型的 {cmd:findfile, all} 使用为：

	    {cmd:capture findfile} {it:filename}{cmd:, all}
	    {cmd:local filelist `"`r(fn)'"'}


{marker remarks}{...}
{title:备注}

{pstd}
{cmd:findfile} 不是一个用来搜索您丢失的文件的实用工具。{cmd:findfile} 是用于那些使用预录入数据集的稀有 ado 文件，并且您希望将数据集放置在 ado 路径中，与 ado 文件本身一起。


{marker results}{...}
{title:存储的结果}

{pstd}
{cmd:findfile} 在 {cmd:r()} 中存储以下内容：

{synoptset 30 tabbed}{...}
{p2col 5 30 34 2: 宏}{p_end}
{synopt:{cmd:r(fn)} ({cmd:all} 未指定)}找到的文件名；名称不被引号括住{p_end}
{synopt:{space 8}({cmd:all} 已指定)}找到的文件名，依次列出，每个名称都用引号括住{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <findfile.sthlp>}