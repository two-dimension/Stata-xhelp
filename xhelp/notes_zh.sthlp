{smcl}
{* *! version 1.3.13  19oct2017}{...}
{viewerdialog "Variables Manager" "stata varmanage"}{...}
{viewerdialog "list or search" "dialog notes_list"}{...}
{viewerdialog renumber "dialog notes_renumber"}{...}
{vieweralsosee "[D] notes" "mansection D notes"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] codebook" "help codebook_zh"}{...}
{vieweralsosee "[D] describe" "help describe_zh"}{...}
{vieweralsosee "[D] ds" "help ds_zh"}{...}
{vieweralsosee "[P] notes_" "help notes__zh"}{...}
{vieweralsosee "[D] save" "help save_zh"}{...}
{vieweralsosee "[D] varmanage" "help varmanage_zh"}{...}
{viewerjumpto "Syntax" "notes_zh##syntax"}{...}
{viewerjumpto "Menu" "notes_zh##menu"}{...}
{viewerjumpto "Description" "notes_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "notes_zh##linkspdf"}{...}
{viewerjumpto "How notes are numbered" "notes_zh##remarks"}{...}
{viewerjumpto "Examples" "notes_zh##examples"}{...}
{viewerjumpto "Video example" "notes_zh##video"}
{help notes:English Version}
{hline}{...}
{p2colset 1 14 16 2}{...}
{p2col:{bf:[D] notes} {hline 2}}在数据中添加注释{p_end}
{p2col:}({mansection D notes:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{phang}
将注释附加到数据集

{p 8 15 2}
{opt note:s} [{it:{help varname_zh:evarname}}]{cmd::} {it:text}


{phang}
列出所有注释

{p 8 15 2}
{opt note:s}


{phang}
列出特定注释

{p 8 15 2}
{opt note:s} [{opt l:ist}] {it:{help varlist_zh:evarlist}} [{cmd:in} {it:#}[{cmd:/}{it:#}]]


{phang}
在所有变量和_dta中搜索文本字符串

{p 8 15 2}
{opt note:s} {cmd:search} [{it:sometext}] 


{phang}
替换注释

{p 8 15 2}
{opt note:s} {cmd:replace} {it:{help varname_zh:evarname}} {cmd:in} {it:#} {cmd::} {it:text}


{phang}
删除注释

{p 8 15 2}
{opt note:s} {cmd:drop} {it:{help varlist_zh:evarlist}} [{cmd:in}
   {it:#}[{cmd:/}{it:#}]]


{phang}
重新编号注释

{p 8 15 2}
{opt note:s} {cmd:renumber} {it:{help varname_zh:evarname}}


{phang}
其中 {it:evarname} 是 {cmd:_dta} 或变量名，{it:evarlist} 是可能包含 {cmd:_dta} 的变量列表，{it:#} 是一个数字或字母 {cmd:l}。

{phang}
如果 {it:text} 包含被空格包围的字母 {cmd:TS}，则 {cmd:TS} 将被删除，并用时间戳替换。


{marker menu}{...}
{title:菜单}

    {title:注释 (添加)}

{phang2}
{bf:数据 > 变量管理器}

    {title:注释列表和注释搜索}

{phang2}
{bf:数据 > 数据工具 > 注释工具 > 列出或搜索注释}

    {title:注释替换}

{phang2}
{bf:数据 > 变量管理器}

    {title:注释删除}

{phang2}
{bf:数据 > 变量管理器}

    {title:注释重新编号}

{phang2}
{bf:数据 > 数据工具 > 注释工具 > 重新编号注释}


{marker description}{...}
{title:描述}

{pstd}
{cmd:notes} 将注释附加到内存中的数据集中。这些注释将成为数据集的一部分，并在保存数据集时被保存，并在使用数据集时检索；请参见 {manhelp save D} 和 {manhelp use D}。{cmd:notes} 可以泛泛地附加到数据集上，也可以具体地附加到数据集中的某个变量上。


{marker linkspdf}{...}
{title:链接到 PDF 文档}

        {mansection D notesQuickstart:快速入门}

        {mansection D notesRemarksandexamples:备注和示例}

{pstd}
以上部分不包含在此帮助文件中。


{marker remarks}{...}
{title:注释是如何编号的}

{p 4 4 2}
注释按顺序编号，第一个注释为 1。
假设变量 {cmd:myvar} 有四个编号为 1、2、3 和 4 的注释。如果你输入 {cmd:notes} {cmd:drop} {cmd:myvar} {cmd:in} {cmd:3}，剩余的注释将被编号为 1、2 和 4。如果你现在添加另一个注释，它将被编号为 5。也就是说，注释不会被重新编号，新注释会立即添加到最高编号注释之后。因此，如果你现在删除注释 4 和 5，下一个添加的注释将是 3。

{p 4 4 2}
你可以使用 {cmd:notes} {cmd:renumber} 重新编号注释。回到 {cmd:myvar} 在删除注释 3 后有注释编号 1、2 和 4 时，如果你输入 {cmd:notes} {cmd:renumber} {cmd:myvar}，注释将被重新编号为 1、2 和 3。如果你之后添加一个新注释，它将被编号为 4。


{marker examples}{...}
{title:示例}

    {hline}
    设置
{phang2}{cmd:. webuse auto4}

    向数据集中添加注释
{phang2}{cmd:. note:  一旦验证，将副本发送给 Bob。}{p_end}

{pstd}列出所有注释{p_end}
{phang2}{cmd:. notes}{p_end}
{phang2}_dta:{p_end}
          1.  一旦验证，将副本发送给 Bob。

{pstd}向数据集添加第二个注释{p_end}
{phang2}{cmd:. note:  Mary 也想要一份副本。}{p_end}

{pstd}列出所有注释{p_end}
{phang2}{cmd:. notes}{p_end}
{phang2}_dta:{p_end}
          1.  一旦验证，将副本发送给 Bob。
          2.  Mary 也想要一份副本。

{pstd}向数据集添加第三个注释并包含时间戳{p_end}
{phang2}{cmd:. note:  TS 合并了来自 JJ&F 的更新}{p_end}

{pstd}列出所有注释{p_end}
{phang2}{cmd:. notes}{p_end}
{phang2}_dta:{p_end}
          1.  一旦验证，将副本发送给 Bob。
          2.  Mary 也想要一份副本。
          3.  2007年4月19日 15:38 合并了来自 JJ&F 的更新

{pstd}向 {cmd:mpg} 变量添加两个注释{p_end}
{phang2}{cmd:. note mpg: 编号 41 是错误吗？问 Bob。}{p_end}
{phang2}{cmd:. note mpg: 那两个缺失值怎么办？}{p_end}

{pstd}在所有变量和 _dta 中搜索 {cmd: Bob}{p_end}
{phang2}{cmd:. notes search Bob}{p_end}
{phang2}_dta:{p_end}
          1.  一旦验证，将副本发送给 Bob。
{phang2}mpg:{p_end}
          1.  编号 41 是错误吗？问 Bob。

{pstd}列出所有注释{p_end}
{phang2}{cmd:. notes}{p_end}
{phang2}_dta:{p_end}
          1.  一旦验证，将副本发送给 Bob。
          2.  Mary 也想要一份副本。
          3.  2007年4月19日 15:38 合并了来自 JJ&F 的更新
{phang2}mpg:{p_end}
          1.  编号 41 是错误吗？问 Bob。
          2.  那两个缺失值怎么办？

    {hline}
    设置
{phang2}{cmd:. sysuse auto}

{pstd}向包含 SMCL 指令的数据集添加注释{p_end}
{phang2}{cmd:. note: 检查 {c -(}cmd:rep78{c )-} 中缺失值的原因}{p_end}

{pstd}列出所有注释{p_end}
{phang2}{cmd:. notes}{p_end}
{phang2}_dta:{p_end}
          1.  经消费者报告的许可
          2.  检查 {cmd:rep78} 中缺失值的原因
    {hline}


{marker video}{...}
{title:视频示例}

{phang2}{browse "https://www.youtube.com/watch?v=wMDHD7REHr4":如何向变量添加注释}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <notes.sthlp>}