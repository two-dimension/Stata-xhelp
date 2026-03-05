{smcl}
{* *! version 1.3.1  15oct2018}{...}
{findalias asfrsyntax}{...}
{viewerjumpto "语法" "using_zh##syntax"}{...}
{viewerjumpto "描述" "using_zh##description"}{...}
{viewerjumpto "示例" "using_zh##examples"}
{help using:English Version}
{hline}{...}
{title:标题}

{pstd}
使用修饰符（来自 {findalias frsyntax}）

{marker syntax}{...}
{title:语法}

{p 8 16 2}{it:command} {cmd:using} {it:filename}

{marker description}{...}
{title:描述}

{pstd}
Stata的这一部分语法仅被少数命令使用，例如 {cmd:infile} 和 {cmd:outfile}。在 {cmd:using} 之后，您需要指定一个有效的 {it:filename}。如果 {it:filename} 中包含空格或其他特殊字符，则需要用引号将其引用。

{marker examples}{...}
{title:示例}

    {cmd:. infile a b c using myfile.raw}{right:(所有平台)  }
    {cmd:. infile a b c using \mydata\myfile.raw}{right:(Windows)        }
    {cmd:. infile a b c using ~/mydata/myfile.raw}{right:(Unix)           }
    {cmd:. infile a b c using "~:My Data:myfile.raw"}{right:(Mac)            }

{phang}{cmd:. webuse autotech}{p_end}
{phang}{cmd:. describe}{p_end}
{phang}{cmd:. describe using https://www.stata-press.com/data/r16/autocost}
{p_end}
{phang}{cmd:. merge 1:1 make using https://www.stata-press.com/data/r16/autocost}

{phang}{cmd:. webuse kahn, clear}{p_end}
{phang}{cmd:. istdize death pop age using}
                {cmd:https://www.stata-press.com/data/r16/popkahn,}
		{cmd:by(state) pop(deaths pop) print}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <using.sthlp>}