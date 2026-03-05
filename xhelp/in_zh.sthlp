{smcl}
{* *! version 1.1.1  11feb2011}{...}
{findalias asfrinrange}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[U] 11 语言语法" "help language_zh"}{...}
{vieweralsosee "[U] 11 语言语法（by 前缀）" "help by_zh"}{...}
{vieweralsosee "[U] 11.1.3 if 范围（if 限定词）" "help if_zh"}{...}
{viewerjumpto "语法" "in_zh##syntax"}{...}
{viewerjumpto "描述" "in_zh##description"}{...}
{viewerjumpto "示例" "in_zh##examples"}
{help in:English Version}
{hline}{...}
{title:标题}

{pstd}
{findalias frinrange}


{marker syntax}{...}
{title:语法}

	{it:command} {cmd:in} {it:范围}

    其中 {it:范围} 为       {it:#}
			 {it:#}{cmd:/}{it:#}
			 {it:#}{cmd:/l}
			 {cmd:f/}{it:#}


{marker description}{...}
{title:描述}

{pstd}
{cmd:in} 在命令的末尾表示该命令只使用指定的观察值。{cmd:in} 适用于大多数 Stata 命令。


{marker examples}{...}
{title:示例}

        {cmd:. sysuse auto}
        {cmd:. list price in 10}{right:(可以用任何命令替代 {cmd:list})  }
        {cmd:. list price in 10/20}
        {cmd:. list price in 20/l}{right:(范围末尾的小写字母 l)             }
        {cmd:. list price in 1/10}{right:(范围开头的数字 1)          }
        {cmd:. list price in f/10}{right:(f 意味着与 1 相同)                    }
        {cmd:. list price in -10/l}{right:(范围末尾的小写字母 l)             }


{pstd}
{cmd:F} 可以作为 {cmd:f} 的同义词，而 {cmd:L} 可以作为 {cmd:l} 的同义词。

{pstd}
可以使用负数来指定距离数据末尾的距离。最后一个示例表示列出最后 10 个观察值，也可以写作

        {cmd:. list price in -10/-1}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <in.sthlp>}