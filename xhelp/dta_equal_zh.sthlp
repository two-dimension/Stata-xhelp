{smcl}
{* *! version 1.1.2  10aug2012}{...}
{vieweralsosee undocumented "help undocumented"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] cf" "help cf_zh"}{...}
{viewerjumpto "Syntax" "dta_equal_zh##syntax"}{...}
{viewerjumpto "Description" "dta_equal_zh##description"}{...}
{viewerjumpto "Options" "dta_equal_zh##options"}{...}
{viewerjumpto "Stored results" "dta_equal_zh##results"}
{help dta_equal:English Version}
{hline}{...}
{title:标题}

{p 4 22 2}
{hi:[P] dta_equal} {hline 2} 断言数据集相等


{marker syntax}{...}
{title:语法}

{p 8 24 2}
{cmd:dta_equal}
{it:filename1}
{it:filename2}
[{cmd:,} {it:options}]

{p 8 24 2}
{cmd:dta_equal}{bind:      }{cmd:.}{bind:    }{it:filename2}
[{cmd:,} {it:options}]

{synoptset 20}{...}
{synopthdr}
{synoptline}
{synopt:{opth ex:clude(varname:varnames)}}从比较中排除 {it:varnames}
{p_end}
{synopt:{cmd:uniq1}}排除在 {it:filename1} 中唯一的变量
{p_end}
{synopt:{cmd:uniq2}}排除在 {it:filename2} 中唯一的变量
{p_end}
{synopt:{opt none:ok}}如果排除后没有共同变量也是可以的
{p_end}
{synoptline}
{p2colreset}{...}
	

{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:dta_equal} 认证命令缓慢但坚定地逐个比较
{it:filename1}{cmd:.dta} 和 {it:filename2}{cmd:.dta}，如果它们不同则以错误 r(9) 中止。如果 {it:filename1} 被指定为 
时期 ({cmd:.})，则 {it:filename1} 被视为内存中的数据。

{p 4 4 2}
显示为 
在 {it:filename1} 中唯一的变量， 
按字母顺序排列；
在 {it:filename2} 中唯一的变量，按字母顺序排列；
以及
共同变量，按字母顺序排列。

{p 4 4 2}
如果所有变量（在排除后）在两个数据集中包含相同的值，{cmd:dta_equal} 仅返回 {cmd:r(0)}。

{p 4 4 2}
如果文件名未指定后缀，则默认假定为 {cmd:.dta}。


{marker options}{...}
{title:选项}

{p 4 8 2}
{cmd:exclude(}{it:varnames}{cmd:)}
    从比较中排除列出的变量名。
    名称必须一个接一个完整输入。

{p 4 8 2}
{cmd:uniq1}
    从比较中排除在 {it:filename1} 中唯一的变量。如果未指定此选项，唯一变量会导致错误 r(9)。

{p 4 8 2}
{cmd:uniq2}
    从比较中排除在 {it:filename2} 中唯一的变量。如果未指定此选项，唯一变量会导致错误 r(9)。

{p 4 8 2}
{cmd:noneok} 
    指定如果所有变量被排除也是可以的。
    如果未指定此选项，没有共同变量会导致错误 r(9)。


{marker results}{...}
{title:存储结果}

{p 4 4 2}
{cmd:dta_equal} 在 {cmd:r()} 中存储以下内容：

{synoptset 12 tabbed}{...}
{p2col 5 12 16 2:宏}{p_end}
{synopt:{cmd:r(common)}}共同变量，按字母顺序{p_end}
{synopt:{cmd:r(uniq1)}}在 {it:filename1} 中唯一的变量，按字母顺序
{p_end}
{synopt:{cmd:r(uniq2)}}在 {it:filename2} 中唯一的变量，按字母顺序
{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <dta_equal.sthlp>}