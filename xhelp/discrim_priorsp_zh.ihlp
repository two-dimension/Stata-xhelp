
{help discrim_priorsp:English Version}
{hline}
{* *! version 1.0.1  22may2007}{...}
{phang}
{opt priors(priors)}
指定组成员的先验概率。
如果未指定 {cmd:priors()}，则使用 {cmd:e(grouppriors)}。
允许以下 {it:priors}：

{phang2}
{cmd:priors(}{opt eq:ual}{cmd:)} 指定相等的先验概率。

{phang2}
{cmd:priors(}{opt prop:ortional}{cmd:)} 指定与组大小成比例的先验概率。

{phang2}
{cmd:priors(}{it:matname}{cmd:)} 指定一个包含组先验概率的行向量或列向量。

{phang2}
{cmd:priors(}{it:matrix_exp}{cmd:)} 指定一个矩阵表达式，提供组先验概率的行向量或列向量。

{phang}
{opt ties(ties)}
指定如何处理组分类中的平局情况。
如果未指定 {cmd:ties()}，则使用 {cmd:e(ties)}。
允许以下 {it:ties}：

{phang2}
{cmd:ties(}{opt m:issing}{cmd:)} 指定组分类中的平局产生缺失值。

{phang2}
{cmd:ties(}{opt r:andom}{cmd:)} 指定组分类中的平局随机打破。

{phang2}
{cmd:ties(}{opt f:irst}{cmd:)} 指定组分类中的平局设置为第一个平局组。