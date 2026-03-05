
{smcl}
{* *! version 1.0.1  12jun2019}{...}
{findalias asfrnames}{...}
{title:标题}
{help reswords:English Version}
{hline}

{title:{findalias frnames}}

{pstd}
名称是由1到32个字母（{cmd:A}-{cmd:Z} 和 {cmd:a}-{cmd:z}）、数字（{cmd:0}-{cmd:9}）和下划线（{cmd:_}）组成的序列。

{pstd}
程序员：局部宏名称最多可以有31个字符；请参见 {findalias frlocal}。

{pstd}
Stata 保留以下名称：

        {cmd:_all}     {cmd:float}   {cmd:_N}      {cmd:_skip}
        {cmd:_b}       {cmd:if}      {cmd:_pi}     {cmd:str}{it:#}
        {cmd:byte}     {cmd:in}      {cmd:_pred}   {cmd:strL}
        {cmd:_coef}    {cmd:int}     {cmd:_rc}     {cmd:using}
        {cmd:_cons}    {cmd:long}    {cmd:_se}     {cmd:with}
        {cmd:double}   {cmd:_n}

{pstd}
您不能将这些保留名称用于您的变量。

{pstd}
名称的第一个字符必须是字母或下划线。然而，我们建议您不要以下划线开头命名变量。Stata所有内置变量均以下划线开头，我们保留自由添加新的 {it:_variables} 的权利。

{pstd}
Stata 区分大小写；也就是说，{cmd:myvar}、{cmd:Myvar} 和 {cmd:MYVAR} 是三个不同的名称。

{pstd}
Stata 中的所有对象——不仅仅是变量——都遵循此命名规则。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <reswords.sthlp>}