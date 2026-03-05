{smcl}
{* *! version 1.0.0  14jun2019}{...}
{viewerdialog "frames" "dialog frames"}{...}
{vieweralsosee "[D] frames" "mansection D frames"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] frames intro" "help frames intro"}{...}
{vieweralsosee "[M-5] st_frame*()" "help mf_st_frame_zh"}{...}
{viewerjumpto "Syntax" "frames_zh##syntax"}{...}
{viewerjumpto "Menu" "frames_zh##menu"}{...}
{viewerjumpto "Description" "frames_zh##description"}
{help frames:English Version}
{hline}{...}
{p2colset 1 15 17 2}{...}
{p2col:{bf:[D] frames} {hline 2}}数据框{p_end}
{p2col:}({mansection D frames:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{pstd}
如果您是 Stata 中数据框的新手，请先阅读
{helpb frames intro:[D] frames intro}。


{marker syntax}{...}
{title:语法}

{pstd}
{cmd:frame} 和 {cmd:frames} 是同义词。下面，我们将根据上下文的自然程度使用其中之一。


{pstd}
显示当前（工作）框的名称

{p 8 16 2}
{cmd:frame} {cmd:pwf}
{dup 36:{bind: }}(见 {manhelp frame_pwf D:frame pwf})

{p 8 16 2}
{cmd:frame}

{p 8 16 2}
{cmd:pwf}


{pstd}
显示内存中所有框的名称

{p 8 16 2}
{cmd:frames} {cmd:dir}
{dup 35:{bind: }}(见 {manhelp frames_dir D:frames dir})


{pstd}
创建新的空框

{p 8 16 2}
{cmd:frame} {cmd:create} {it:newframename}
{bind:                    }(见 {manhelp frame_create D:frame create})


{pstd}
使用 {cmd:frame} {cmd:post} 创建具有指定变量的新框

{p 8 16 2}
{cmd:frame} {cmd:create} {it:newframename} {it:{help newvarlist_zh}}
{bind:         }(见 {manhelp frame_post P:frame post})


{pstd}
更改当前（工作）框的身份

{p 8 16 2}
{cmd:frame} {cmd:change} {it:framename}
{dup 23:{bind: }}(见 {manhelp frame_change D:frame change})

{p 8 16 2}
{cmd:cwf} {it:framename}


{pstd}
在指定框中执行命令的数据

{p 8 16 2}
{cmd:frame} {it:framename}{cmd::} {it:stata_command}
{dup 15:{bind: }}(见 {manhelp frame_prefix D:frame prefix})

{p 8 16 2}
{cmd:frame} {it:framename} {cmd:{c -(}}
{p_end}
{p 16 24 2}
{it:在 framename 上下文中执行的命令}
{p_end}
{p 8 16 2}
{cmd:{c )-}}
{p_end}


{pstd}
复制一个框

{p 8 16 2}
{cmd:frame} {cmd:copy} {it:frame_from} {it:frame_to}
[{cmd:,}
{cmd:replace}]
{bind:   }(见 {manhelp frame_copy D:frame copy})


{pstd}
将变量或观测值的子集复制到新框

{p 8 16 2}
{cmd:frame} {cmd:put}
{dup 36:{bind: }}(见 {manhelp frame_put D:frame put})


{pstd}
向框中添加新观测值

{p 8 16 2}
{cmd:frame} {cmd:post} {it:framename} {cmd:(}{it:{help exp_zh}}{cmd:)}
{cmd:(}{it:exp}{cmd:)} {it:...} {cmd:(}{it:exp}{cmd:)}
{bind:   }(见 {manhelp frame_post P:frame post})


{pstd}
删除（消除）不是当前框的框

{p 8 16 2}
{cmd:frame} {cmd:drop} {it:framename}
{dup 25:{bind: }}(见 {manhelp frame_drop D:frame drop})


{pstd}
重命名现有框（可以是当前框）

{p 8 16 2}
{cmd:frame} {cmd:rename} {it:oldframename} {it:newframename}
{dup 7:{bind: }}(见 {manhelp frame_rename D:frame rename})


{pstd}
恢复为仅包含一个名为 {cmd:default} 的空框的初始状态

{p 8 16 2}
{cmd:frames} {cmd:reset}
{dup 33:{bind: }}(见 {manhelp frames_reset D:frames reset})


{pstd}
链接框

{p 8 16 2}
{cmd:frlink}
{dup 39:{bind: }}(见 {manhelp frlink D:frlink})


{pstd}
从链接框中获取变量

{p 8 16 2}
{cmd:frget}
{dup 40:{bind: }}(见 {manhelp frget D:frget})


{pstd}
访问另一个框中变量的函数

{p 8 16 2}
{cmd:frval(}{it:linkvar}{cmd:,} {varname}{cmd:)}
{dup 23:{bind: }}(见 {help f_frval_zh:help frval()})

{p 8 16 2}
{cmd:_frval(}{it:framename}{cmd:,} {varname}{cmd:,} {it:i}{cmd:)}


INCLUDE help menu_frames


{marker description}{...}
{title:描述}

{pstd}
此条目提供与数据框相关的每个单独命令和函数的快速参考。

{pstd}
数据框在 {helpb frames intro:[D] frames intro} 中进行了详细讨论。

{pstd}
还有一组 Mata 函数用于处理框。
见 {manhelp mf_st_frame M-5:st_frame*()}。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <frames.sthlp>}