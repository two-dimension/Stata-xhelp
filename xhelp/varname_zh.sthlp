{smcl}
{* *! version 1.1.4  02mar2015}{...}
{findalias asfrvarlists}{...}
{vieweralsosee "" "--"}{...}
{findalias asfrsyntax}{...}
{findalias asfrvarabbrev}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[U] 11.4.2 Lists of new variables (newvar)" "help newvar_zh"}{...}
{viewerjumpto "Description" "varname_zh##description"}{...}
{viewerjumpto "Examples" "varname_zh##examples"}
{help varname:English Version}
{hline}{...}
{title:标题}

    {hi:varname} （来自 {findalias frvarlists}）


{marker description}{...}
{title:描述}

{pstd}
一个 {it:varname} 是一个变量名，比如 

{p 8 34 2}{cmd:x}{p_end}
{p 8 34 2}{cmd:myvar}{p_end}
{p 8 34 2}{cmd:Myvar}{p_end}
{p 8 34 2}{cmd:inc92}{p_end}
{p 8 34 2}{cmd:ausländisch}{p_end}
{p 8 34 2}{cmd:reciprocal_of_miles_per_gallon}{p_end}
{p 8 34 2}{cmd:_odd}{p_end}
{p 8 34 2}{cmd:_1994}{p_end}

{pstd}
当我们使用术语 varname 时，我们通常指的是一个已存在的 varname -- 一个已经在数据集中存在的变量。替代的选择是 {it:{help newvar_zh}}。

{pstd} 
提到一个已存在的 varname 时，我们可以缩写 -- 只使用一些首字母，前提是我们指定的信息足够唯一以识别该变量：

{pin}
{cmd:Myv} 可能是 {cmd:Myvar} 的唯一缩写。

{pin}
{cmd:reciprocal} 可能是 {cmd:reciprocal_of_miles_per_gallon} 的唯一缩写。

{pstd}
有时我们可以使用完整的 {it:{help varlist_zh}} 表示法，但它必须识别一个变量：

{pin}
{cmd:my*r} 可能唯一标识 {cmd:myvar}

{pin}
{cmd:r*gallon} 可能唯一标识 {cmd:reciprocal_of_miles_per_gallon}。

{pstd}
在 varlist 表示法中， 
{cmd:*} 表示这里可以有零个或多个字符。

{pstd}
变量名通常在选项中指定，有时 varlist 表示法是允许的，有时则不允许。不过，缩写始终允许，前提是你没有禁用它们；请参阅 {helpb set varabbrev}。

{pstd}
请注意，变量名可以是 1 到 32 个 Unicode 字符长，并且必须以 Unicode 字母或 {cmd:_} 开头，剩余字符可以是 Unicode 字母、{cmd:_} 或 Unicode 数字字符。Unicode 字母的示例包括 "a"、"Z" 和 "é"；Unicode 数字的示例包括 0、1 和 9。

{pstd}
Unicode 字母的正式定义是一个 Unicode 字符，对于其 {cmd:uisletter()} 返回 {cmd:1}。Unicode 数字是一个 Unicode 字符，对于其 {cmd:uisdigit()} 返回 {cmd:1}。

{pstd}
在变量名中允许包含无效的 UTF-8 序列，并且计为一个字符。这主要是出于向后兼容的原因。例如，带有重音符的大写字母 "E" 在 ISO-Latin-1 编码中被编码为 {bf:char(200)}，这可能出现在早期版本的 Stata 的变量名中，但单独的 {bf:char(200)} 是无效的 UTF-8 序列。有关详细信息，请参阅 {findalias frunicodeadvice}。


{marker examples}{...}
{title:示例}

{phang}{cmd:. sysuse auto}{p_end}
{phang}{cmd:. list gear_ratio in 1/10}{p_end}
{phang}{cmd:. generate weightSquared = weight^2}{p_end}
{phang}{cmd:. list we* in 1/10}{p_end}
{phang}{cmd:. format weightS %12.0gc}{p_end}
{phang}{cmd:. rename rep78 repair_record_of_cars_in_1978}{p_end}
{phang}{cmd:. describe rep, fullnames}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <varname.sthlp>}