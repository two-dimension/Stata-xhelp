
{smcl}
{* *! version 1.0.4  16apr2009}{...}
{cmd:help hadimvo}{right:{help prdocumented_zh:之前文档化}}
{hline}
{help hadimvo:English Version}
{hline}
{pstd}
{cmd:hadimvo} 继续有效，但从 Stata 8 开始，不再是 Stata 的正式组成部分。这是原始帮助文件，我们将不再更新，因此某些链接可能不再有效。


{title:标题}

{p 4 21 2}
{hi:[R] hadimvo} {hline 2} 识别多元离群值


{title:语法}

{p 4 12 2}{cmd:hadimvo} {varlist} {ifin}{cmd:,} {cmdab:g:enerate:(}{it:newvar1} [{it:newvar2}]{cmd:)}
[{opt p(#)}]


{title:描述}

{pstd}
{cmd:hadimvo} 使用 Hadi (1992, 1994) 的方法识别多元数据中的多个离群值，创建 {it:newvar1}，如果观察值是“离群值”则为 1，否则为 0。可选择创建 {it:newvar2}，该变量包含基本子集的距离。


{title:选项}

{phang}{cmd:generate(}{it:newvar1} [{it:newvar2}]{cmd:)} 不是可选的；它确定要创建的新变量。无论您指定一个变量还是两个变量，都是可选的。如果指定，{it:newvar2} 将包含来自基本子集的距离（而不是距离的平方）。也就是说，指定 {cmd:gen(odd)} 创建变量 {hi:odd}，如果观察值在 Hadi 的意义上是离群值则为 1，否则为 0。指定 {cmd:gen(odd dist)} 还会创建变量 {hi:dist}，包含 Hadi 距离。

{phang}{cmd:p(}{it:#}{cmd:)} 指定离群值截止的显著性水平；0 < {it:#} < 1。默认值是 {cmd:p(.05)}。更大的数字会识别更多的样本比例为离群值。如果指定的 {it:#} 大于 1，则将其解释为百分比。因此，{cmd:p(5)} 等价于 {cmd:p(.05)}。


{title:示例}

    {cmd:. hadimvo price weight, gen(odd)}
    {cmd:. list if odd}{right:/* 列出离群值            */  }
    {cmd:. summ price weight if ~odd}{right:/* 清洁数据的摘要统计 */  }

    {cmd:. drop odd}
    {cmd:. hadimvo price weight, gen(odd D)}
    {cmd:. summarize D, detail}
    {cmd:. sort D}
    {cmd:. list make price weight D odd}

    {cmd:. hadimvo price weight mpg, gen(odd2 D2) p(.01)}
    {cmd:. regress} {it:...} {cmd:if ~odd2}


{title:另见}

{psee}
手册:  {help prdocumented_zh:之前文档化}

{psee}
{space 2}帮助:  {manhelp mvreg R}, {manhelp regress R},
{manhelp regress_postestimation R:回归后估计}, {manhelp sureg R}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <hadimvo.sthlp>}