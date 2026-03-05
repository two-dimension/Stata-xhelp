{smcl}
{* *! version 1.0.9  03may2019}{...}
{vieweralsosee "[P] set locale_ui" "mansection P setlocale_ui"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[P] creturn" "help creturn_zh"}{...}
{vieweralsosee "[R] query" "help query_zh"}{...}
{vieweralsosee "[R] set" "help set_zh"}{...}
{viewerjumpto "Syntax" "set_locale_ui_zh##syntax"}{...}
{viewerjumpto "Description" "set_locale_ui_zh##description"}
{help set_locale_ui:English Version}
{hline}{...}
{p2colset 1 22 24 2}{...}
{p2col:{bf:[P] set locale_ui} {hline 2}}指定用户界面的本地化包
{p_end}
{p2col:}({mansection P setlocale_ui:查看完整的PDF手册条目}){p_end}


{marker syntax}{...}
{title:语法}

{pstd}
为用户界面本地化指定一个语言环境

{p 8 16 2}
{cmd:set}
{cmd:locale_ui}
{it:locale}


{pstd}
使用系统语言环境进行用户界面本地化 

{p 8 16 2}
{cmd:set}
{cmd:locale_ui}
{cmd:default}


            {it:locale}       支持的本地化包
           {hline 46}
            {opt default}      系统默认
            {opt en}           英语
            {opt zh_CN}        中文（简体）
            {opt ja}           日语
            {opt ko}           韩国语
            {opt es}           西班牙语
            {opt sv}           瑞典语
           {hline 46}


{marker description}{...}
{title:描述}

{pstd}
{cmd:set} {cmd:locale_ui} {it:locale} 设置 Stata 用于用户界面 (UI) 的语言环境。例如，命令 {cmd:set locale_ui ja} 会使 Stata 以日语显示菜单和其他各种 UI 文本。如果能够将指定的 {it:locale} 与本地化包匹配，则会使用该包中所包含的语言来显示各种 UI 元素（菜单、对话框、消息框等）。该设置在下一次启动 Stata 时生效。如果在 {cmd:set} {cmd:locale_ui} 中指定的语言环境无法匹配，则 UI 将以英语显示。

{pstd}
{cmd:set} {cmd:locale_ui} {cmd:default} 将 Stata 使用的语言环境设置为系统默认值。在此默认设置下，Stata 将尝试匹配计算机操作系统中设置的语言环境。如果系统默认值能够与 Stata 安装的本地化包之一匹配，则 UI 元素将以相应的语言显示。如果 Stata 未提供能够与您的操作系统语言环境匹配的本地化包，则将使用英语。

{pstd}
有关语言环境的进一步讨论，请参见 {findalias frlocales}。

{pstd}
当前的 UI 设置存储在 {cmd:c(locale_ui)} 中。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <set_locale_ui.sthlp>}