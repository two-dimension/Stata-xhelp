{smcl}
{* *! version 1.1.4  20sep2014}{...}
{findalias asfroperators}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[FN] 按类别的函数" "help functions_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] egen" "help egen_zh"}{...}
{vieweralsosee "[D] generate" "help generate_zh"}{...}
{viewerjumpto "语法" "operator_zh##syntax"}{...}
{viewerjumpto "示例" "operator_zh##examples"}
{help operator:English Version}
{hline}{...}
{title:标题}

{pstd}
{findalias froperators}


{marker syntax}{...}
{title:语法}

					   {col 58}关系运算符
	 算术运算符       {col 34}逻辑运算符   {col 53}(数值和字符串)
    {hline 20}{col 30}{hline 18}{col 53}{hline 21}
     {cmd:+}   加法      {col 34}{cmd:&}   与{col 56}{cmd:>}   大于
     {cmd:-}   减法   {col 34}{cmd:|}   或 {col 56}{cmd:<}   小于
     {cmd:*}   乘法 {col 34}{cmd:!}   非{col 56}{cmd:>=}  大于或等于
     {cmd:/}   除法      {col 34}{cmd:~}   非{col 56}{cmd:<=}  小于或等于
     {cmd:^}   幂运算                              {col 56}{cmd:==}  等于
     {cmd:-}   取反				  {col 56}{cmd:!=}  不等于
     {cmd:+}   字符串连接               {col 56}{cmd:~=}  不等于

{pstd}双等号 ({cmd:==}) 用于进行相等性测试。

{pstd}
所有运算符的计算顺序（从先到后）为 {cmd:!} (或 {cmd:~}), {cmd:^}, {cmd:-} (取反), {cmd:/}, {cmd:*}, {cmd:-} (减法), {cmd:+}, {cmd:!=} (或 {cmd:~=}), {cmd:>}, {cmd:<}, {cmd:<=},
{cmd:>=}, {cmd:==}, {cmd:&}, 和 {cmd:|}。

{marker examples}{...}
{title:示例}

{phang}{cmd:. sysuse auto}{p_end}
{phang}{cmd:. generate weight2 = weight^2}{p_end}
{phang}{cmd:. count if rep78 > 4}{p_end}
{phang}{cmd:. count if rep78 > 4 & weight < 3000}{p_end}
{phang}{cmd:. list make if rep78 == 5 | mpg > 25}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <operator.sthlp>}