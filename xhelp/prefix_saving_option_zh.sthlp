{smcl}
{* *! version 1.0.9  09dec2014}{...}
{viewerjumpto "Syntax" "prefix_saving_option_zh##syntax"}{...}
{viewerjumpto "Description" "prefix_saving_option_zh##description"}{...}
{viewerjumpto "Option" "prefix_saving_option_zh##option"}{...}
{viewerjumpto "Suboptions" "prefix_saving_option_zh##suboptions"}
{help prefix_saving_option:English Version}
{hline}{...}
{title:标题}

{p2colset 5 33 35 2}{...}
{p2col :{hi:[R]} {it:prefix_saving_option} {hline 2}}从前缀命令保存数据的选项{p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p2colset 9 42 46 2}{...}
{p2col :{it:prefix_saving_option}}描述{p_end}
{p2line}
{p2col :{cmdab:sa:ving(}{it:filename}[{cmd:,} {it:suboptions}]{cmd:)}}将数据保存到磁盘{p_end}
{p2line}
{p2colreset}{...}

{p2colset 9 42 46 2}{...}
{p2col :{it:suboptions}}描述{p_end}
{p2line}
{p2col :{opt doub:le}}以双精度保存变量{p_end}
{p2col :{opt ev:ery(#)}}每第 {it:#} 次复制写入结果{p_end}
{p2col :{opt replace}}覆盖 {it:filename}{p_end}
{p2line}
{p2colreset}{...}


{marker description}{...}
{title:描述}

{pstd}
{cmd:saving()} 选项将数据保存到磁盘。这个选项在那些重复调用其他命令并收集用户指定结果的前缀命令中是很常见的。


{marker option}{...}
{title:选项}

包含帮助 prefix_saving_option

{pmore}
统计信息由前缀命令的用户隐含或指定。


{marker suboptions}{...}
{title:子选项}

{phang}
{opt double} 指定每次复制的结果保存为 {opt double} 类型，意味着 8 字节实数。默认情况下，结果保存为 {opt float} 类型，意味着 4 字节实数。这个选项可以在没有 {opt saving()} 选项的情况下使用，以通过使用双精度计算方差估计。

{phang}
{opt every(#)} 指定每第 {it:#} 次复制将结果写入磁盘。只有在 {it:command} 每次复制的耗时很长时，才应将 {opt every()} 与 {opt saving()} 一起指定。这个选项将允许在其他软件崩溃计算机时恢复部分结果。请参见 {manhelp postfile P}。

{phang}
{opt replace} 指定如果 {it:filename} 存在，则覆盖它。此选项在对话框中不显示。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <prefix_saving_option.sthlp>}