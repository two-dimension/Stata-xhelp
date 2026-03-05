{smcl}
{* *! version 1.1.2  11feb2011}{...}
{vieweralsosee "[U] 13 函数和表达式" "help exp_zh"}{...}
{viewerjumpto "描述" "exp_list_zh##description"}{...}
{viewerjumpto "示例" "exp_list_zh##examples"}
{help exp_list:English Version}
{hline}{...}
{title:标题}

{pstd}
{it:exp_list} {hline 2} 表达式列表


{marker description}{...}
{title:描述}

{pstd}
在 {it:exp_list} 中的表达式假定符合以下语法。 请注意，{it:exp_list} 不应被括号包围，尽管单个表达式可以。

{p2colset 9 32 36 2}{...}
{p2col :{it:exp_list} 包含}{cmd:(}{it:name}{cmd::} {it:elist}{cmd:)}{p_end}
{p2col :}{it:elist}{p_end}
{p2col :}{it:eexp}{p_end}

{p2col :{it:elist} 包含}{it:newvar} = {opt (exp)}{p_end}
{p2col :}{opt (exp)}{p_end}

{p2col :{it:eexp} 是}{it:specname}{p_end}
{p2col :}{cmd:[}{it:eqno}{cmd:]}{it:specname}{p_end}

{p2col :{it:specname} 是}{cmd:_b}{p_end}
{p2col :}{cmd:_b[]}{p_end}
{p2col :}{cmd:_se}{p_end}
{p2col :}{cmd:_se[]}{p_end}

{p2col :{it:eqno} 是}{cmd:#}{it:#}{p_end}
{p2col :}{it:name}{p_end}

{pmore}
{it:exp} 是标准的 Stata 表达式；请参见帮助文档 {help exp_zh}。


{marker examples}{...}
{title:示例}

    {cmd:. sysuse auto}

{cmd}{...}
    . bootstrap (location: mean=r(mean) median=r(p50))
                (scale: sd=r(sd) iqr=(r(p75)-r(p25))
                        range=(r(max)-r(min)))
                : summarize price, detail
{reset}{...}

{phang}
{cmd:. bootstrap or=(exp(_b[mpg])): logit foreign mpg weight}

{phang}
{cmd:. jackknife sd=(r(sd)) skew=(r(skewness)), rclass: summarize mpg, detail}

{phang}
{cmd:. permute price _b rmse=(e(rmse)): regress price trunk}

{phang}
{cmd:. statsby _b n=(e(N)), by(rep78 foreign): regress mpg weight}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <exp_list.sthlp>}