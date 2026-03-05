
{help svy_dots:English Version}
{hline}
{* *! version 1.0.0  23jan2019}{...}
{phang}
{opt nodots} 和 {opt dots(#)} 用于指定是否显示复制点。默认情况下，每个成功的复制都会显示一个点字符。如果 {it:command} 返回错误，则显示红色的 `x'，如果 {it:exp_list} 中至少有一个值缺失，则显示 `e'。您还可以通过使用 {helpb set dots} 控制是否显示点。

{phang2}
{opt nodots} 抑制复制点的显示。

{phang2}
{opt dots(#)} 每 {it:#} 次复制后显示一个点。
{cmd:dots(0)} 是 {cmd:nodots} 的同义词。
{p_end}