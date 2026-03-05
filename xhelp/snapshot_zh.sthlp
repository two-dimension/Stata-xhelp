{smcl}
{* *! version 1.0.6  19oct2017}{...}
{viewerdialog "Data Editor (Edit)" "stata edit"}{...}
{vieweralsosee "[D] snapshot" "mansection D snapshot"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] edit" "help edit_zh"}{...}
{vieweralsosee "[P] preserve" "help preserve_zh"}{...}
{viewerjumpto "语法" "snapshot_zh##syntax"}{...}
{viewerjumpto "菜单" "snapshot_zh##menu"}{...}
{viewerjumpto "描述" "snapshot_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "snapshot_zh##linkspdf"}{...}
{viewerjumpto "选项" "snapshot_zh##option"}{...}
{viewerjumpto "示例" "snapshot_zh##examples"}{...}
{viewerjumpto "存储结果" "snapshot_zh##results"}
{help snapshot:English Version}
{hline}{...}
{p2colset 1 17 19 2}{...}
{p2col:{bf:[D] snapshot} {hline 2}}保存和恢复数据快照{p_end}
{p2col:}({mansection D snapshot:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{phang}保存快照

{p 8 15 2}
{cmd:snapshot} {cmd:save}
[{cmd:,} {opt label("标签")}]


{phang}更改快照标签

{p 8 15 2}
{cmd:snapshot} {cmd:label} {it:snapshot#} {cmd:"}{it:标签}{cmd:"}


{phang}恢复快照

{p 8 15 2}
{cmd:snapshot} {cmd:restore} {it:snapshot#}


{phang}列出快照

{p 8 15 2}
{cmd:snapshot} {cmd:list} [{cmd:_all} | {it:{help numlist_zh}}]


{phang}删除快照

{p 8 15 2}
{cmd:snapshot} {cmd:erase} {cmd:_all} | {it:{help numlist_zh}}


{marker menu}{...}
{title:菜单}

{phang2}
{bf:数据 > 数据编辑器 > 数据编辑器（编辑）}


{marker description}{...}
{title:描述}

{pstd}
{cmd:snapshot} 将内存中的数据保存到磁盘并从磁盘恢复。{cmd:snapshot}的主要目的是允许{help edit_zh:数据编辑器}在交互编辑会话中保存和恢复数据快照。程序员更常用的替代方案是{help preserve_zh}。

{pstd}
快照通过 {it:snapshot#} 来引用。如果当前不存在快照，下一个保存的快照将会被分配 {it:snapshot#} 值为 1。如果快照已存在，下一个保存的快照将会被分配高于现有快照最大值的 {it:snapshot#} 值。

{pstd}
{cmd:snapshot save} 创建一个包含当前在内存中数据副本的临时文件，并将一个可选标签（最多 80 个字符）附加到保存的快照上。最多可以保存 1,000 个快照。

{pstd}
{cmd:snapshot label} 更改指定快照的标签。

{pstd}
{cmd:snapshot restore} 用指定快照中的数据替换内存中的数据。

{pstd}
{cmd:snapshot list} 列出指定的快照。

{pstd}
{cmd:snapshot erase} 删除指定的快照。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection D snapshotQuickstart:快速入门}

        {mansection D snapshotRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker option}{...}
{title:选项}

{phang}
{opt label("标签")} 用于 {cmd:snapshot save}，允许您在保存快照时为其标记。 


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse auto}

{pstd}描述数据集{p_end}
{phang2}{cmd:. describe}

{pstd}保存数据集的快照{p_end}
{phang2}{cmd:. snapshot save, label("更改前")}

{pstd}更改数据集{p_end}
{phang2}{cmd:. generate gpm = 1/mpg}{p_end}
{phang2}{cmd:. label variable gpm "每加仑多少英里"}{p_end}

{pstd}保存更改后的数据集快照{p_end}
{phang2}{cmd:. snapshot save, label("更改后")}

{pstd}对数据集进行不想要的更改{p_end}
{phang2}{cmd:. drop gpm}{p_end}

{pstd}列出可用的快照{p_end}
{phang2}{cmd:. snapshot list}

{pstd}恢复快照{p_end}
{phang2}{cmd:. snapshot restore 2}

{pstd}描述数据集{p_end}
{phang2}{cmd:. describe}

{pstd}重新标记快照并删除不需要的快照{p_end}
{phang2}{cmd:. snapshot label 2 "更好的更改"}{p_end}
{phang2}{cmd:. snapshot erase 1}

{pstd}列出可用的快照{p_end}
{phang2}{cmd:. snapshot list}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:snapshot save} 将以下内容存储在 {cmd:r()} 中：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:r(snapshot)}}已保存快照的序列号{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <snapshot.sthlp>}