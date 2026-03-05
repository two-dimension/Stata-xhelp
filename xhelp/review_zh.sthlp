{smcl}
{* *! version 1.1.4  19oct2017}{...}
{vieweralsosee "[R] #review" "mansection R review"}{...}
{viewerjumpto "Syntax" "review_zh##syntax"}{...}
{viewerjumpto "Description" "review_zh##description"}{...}
{viewerjumpto "Remarks" "review_zh##remarks"}{...}
{viewerjumpto "Examples" "review_zh##examples"}
{help review:English Version}
{hline}{...}
{p2colset 1 16 18 2}{...}
{p2col:{bf:[R] #review} {hline 2}}回顾先前的命令{p_end}
{p2col:}({mansection R #review:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 17 2}
{opt #r:eview} [{it:#1} [{it:#2}]]


{marker description}{...}
{title:描述}

{pstd}
{cmd:#review} 命令显示在终端上输入的最后几行命令。


{marker remarks}{...}
{title:备注}

{pstd}
{cmd:#review}（发音为 {it:pound-review}）是 Stata 的预处理命令。
{cmd:#}{it:command} 不会生成返回代码或产生普通 Stata 错误。与 {cmd:#}{it:command} 相关的唯一错误信息是 "unrecognized #command"。

{pstd}
{cmd:#review} 命令显示在终端上输入的最后几行命令。
如果没有参数跟随 {cmd:#review}，则显示终端输入的最后五行命令。第一个参数指定要回顾的行数，因此 {cmd:#review 10} 显示最后 10 行输入。第二个参数指定要显示的行数，因此 {cmd:#review 10 5} 从第十行开始显示五行。

{pstd}
Stata 为 {cmd:#review} 行保留一个缓冲区，并存储尽可能多的以前行，以便适应，新行会覆盖最旧的行。对不再存储的 {cmd:#review} 行的请求将被忽略。只有在终端上输入的行会被放入 {cmd:#review} 缓冲区。请参见 {findalias fredit}。


{marker examples}{...}
{title:示例}

{pstd}显示在终端上输入的最后五行命令{p_end}
{phang2}{cmd:. #review}{p_end}

{pstd}与上述命令相同{p_end}
{phang2}{cmd:. #r}{p_end}

{pstd}显示在终端上输入的最后 10 行命令{p_end}
{phang2}{cmd:. #review 10}{p_end}

{pstd}显示在终端上输入的最后 100 行命令{p_end}
{phang2}{cmd:. #review 100}{p_end}

{pstd}显示在终端上输入的最后 10 行命令，从第 20 行开始{p_end}
{phang2}{cmd:. #review 20 10}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <review.sthlp>}