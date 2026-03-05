{smcl}
{* *! version 1.2.6  14may2018}{...}
{vieweralsosee "[M-5] st_matrix()" "mansection M-5 st_matrix()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-5] st_global()" "help mf_st_global_zh"}{...}
{vieweralsosee "[M-5] st_rclear()" "help mf_st_rclear_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] Stata" "help m4_stata_zh"}{...}
{viewerjumpto "语法" "mf_st_matrix_zh##syntax"}{...}
{viewerjumpto "描述" "mf_st_matrix_zh##description"}{...}
{viewerjumpto "PDF文档链接" "mf_st_matrix_zh##linkspdf"}{...}
{viewerjumpto "备注" "mf_st_matrix_zh##remarks"}{...}
{viewerjumpto "兼容性" "mf_st_matrix_zh##conformability"}{...}
{viewerjumpto "诊断" "mf_st_matrix_zh##diagnostics"}{...}
{viewerjumpto "源代码" "mf_st_matrix_zh##source"}
{help mf_st_matrix:English Version}
{hline}{...}
{p2colset 1 22 24 2}{...}
{p2col:{bf:[M-5] st_matrix()} {hline 2}}获取并放置Stata矩阵
{p_end}
{p2col:}({mansection M-5 st_matrix():查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{it:实数 矩阵}{bind:  }
{cmd:st_matrix(}{it:字符串标量 名称}{cmd:)}

{p 8 12 2}
{it:字符串 矩阵} 
{cmd:st_matrixrowstripe(}{it:字符串标量 名称}{cmd:)}

{p 8 12 2}
{it:字符串 矩阵} 
{cmd:st_matrixcolstripe(}{it:字符串标量 名称}{cmd:)}


{p 8 12 2}
{it:void}{bind:         }
{cmd:st_matrix(}{it:字符串标量 名称}{cmd:,}
{it:实数 矩阵 X}{cmd:)}

{p 8 52 2}
{it:void}{bind:         }
{cmd:st_matrix(}{it:字符串标量 名称}{cmd:,}
{it:实数 矩阵 X}{cmd:,}{break}
{it:字符串标量 hcat}{cmd:)}

{p 8 12 2}
{it:void}{bind:         }
{cmd:st_matrixrowstripe(}{it:字符串标量 名称}{cmd:,}
{it:字符串 矩阵 s}{cmd:)}

{p 8 12 2}
{it:void}{bind:         }
{cmd:st_matrixcolstripe(}{it:字符串标量 名称}{cmd:,}
{it:字符串 矩阵 s}{cmd:)}


{p 8 12 2}
{it:void}{bind:         }
{cmd:st_replacematrix(}{it:字符串标量 名称}{cmd:,}
{it:实数 矩阵 X}{cmd:)}


{p 8 12 2}
{it:字符串} {it:标量}
{cmd:st_matrix_hcat(}{it:名称}{cmd:)}


{p 4 8 2}
其中

{p 8 12 2}
1.  所有函数允许 {it:名称} 为 
{p_end}
{p 16 20 2}
     a.  全局矩阵名称，例如 {cmd:"mymatrix"},
{p_end}

{p 16 20 2}
     b.  {cmd:r()} 矩阵，例如 {cmd:"r(Z)"}, 或
{p_end}

{p 16 20 2}
     c.  {cmd:e()} 矩阵，例如 {cmd:"e(V)"}.

{p 8 12 2}
2.  {cmd:st_matrix(}{it:名称}{cmd:)} 返回指定Stata矩阵的内容。
    如果矩阵不存在，则返回 {cmd:J(0,0,.)}。

{p 8 12 2}
3.  {cmd:st_matrix(}{it:名称}{cmd:,} {it:X}{cmd:)} 设置或重置指定Stata矩阵的内容。 
    行和列的条纹被设置为默认值 {cmd:r1}, {cmd:r2}, ..., 和 {cmd:c1}, {cmd:c2}, ....
    
{p 8 12 2}
4.  {cmd:st_replacematrix(}{it:名称}{cmd:,} {it:X}{cmd:)} 是替换现有Stata矩阵的替代方法。 
    {it:X} 的行数和列数必须与要替换的Stata矩阵匹配，并且行和列的条纹不会被替换。

{p 8 12 2}
5.  如果 {it:value}{cmd:==J(0,0,.)} (如果值为0 {it:x} 0)，
    {cmd:st_matrix(}{it:名称}{cmd:,} {it:X}{cmd:)} 将删除指定的Stata矩阵。

{p 8 12 2}
6.  既不能使用 {cmd:st_matrix()} 也不能使用 {cmd:st_replacematrix()} 来设置、替换或删除特殊的Stata {cmd:e()} 矩阵
    {cmd:e(b)}, {cmd:e(V)}, 或 {cmd:e(Cns)}。  只有Stata命令 {cmd:ereturn} {cmd:post} 和 {cmd:ereturn} {cmd:repost} 可以被用于设置这些特殊矩阵；
    参见 {bf:{help ereturn_zh:[P] ereturn}}。 
    另请参阅 {bf:{help mf_stata_zh:[M-5] stata()}}用于从Mata执行Stata命令。

{p 8 12 2}
7.  {cmd:st_matrix(}{it:名称}{cmd:,} {it:X}{cmd:,} {it:hcat}{cmd:)} 
    设置或重置指定的Stata矩阵，并在设置Stata {cmd:e()} 或 {cmd:r()} 矩阵时设置隐藏或历史状态。
    允许的 {it:hcat} 值为 "{cmd:visible}"、"{cmd:hidden}"、
    "{cmd:historical}"，以及诸如 "{cmd:10}"、"{cmd:10.1}" 的字符串标量发布编号，或任何匹配
    "{it:#}[{it:#}][{cmd:.}[{it:#}[{it:#}]]" 的字符串发布编号。有关隐藏和历史存储结果的描述，请参见 {manlink P return}。

{p 8 12 2}
8.  {cmd:st_matrix_hcat(}{it:名称}{cmd:)} 返回与Stata {cmd:e()} 或 {cmd:r()} 矩阵关联的 {it:hcat} 。

{p 8 12 2}
9.  {cmd:st_matrixrowstripe()} 和 {cmd:st_matrixcolstripe()} 
    允许查询和重置现有或以前创建的Stata矩阵的行和列条纹。


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:st_matrix(}{it:名称}{cmd:)} 返回Stata矩阵 {it:名称} 的内容，
如果矩阵不存在，则返回 {cmd:J(0,0,.)}。

{p 4 4 2}
{cmd:st_matrixrowstripe(}{it:名称}{cmd:)} 返回与矩阵 {it:名称} 关联的行条纹，
或返回 {cmd:J(0,2,"")} 如果矩阵不存在。

{p 4 4 2}
{cmd:st_matrixcolstripe(}{it:名称}{cmd:)} 返回与矩阵 {it:名称} 关联的列条纹，
或返回 {cmd:J(0,2,"")} 如果矩阵不存在。

{p 4 4 2}
{cmd:st_matrix(}{it:名称}, {it:X}{cmd:)} 将Stata矩阵 {it:名称} 的内容设置或重置为 {it:X}。
如果矩阵之前不存在，则创建一个新矩阵。如果矩阵存在，则新内容替换旧内容。无论哪种方式，行和列的条纹也会被重置为包含
{cmd:"r1"}, {cmd:"r2"}, ..., 和 {cmd:"c1"}, {cmd:"c2"}, ...

{p 4 4 2}
{cmd:st_matrix(}{it:名称}, {it:X}{cmd:)}
当 {it:X} 为 0 {it:x} 0 时删除Stata矩阵 {it:名称}：
{cmd:st_matrix(}{it:名称}{cmd:, J(0,0,.))} 删除Stata矩阵 {it:名称} 或者如果 {it:名称} 不存在则不执行任何操作。

{p 4 4 2}
{cmd:st_matrixrowstripe(}{it:名称}, {it:s}{cmd:)} 和
{cmd:st_matrixcolstripe(}{it:名称}, {it:s}{cmd:)} 
将与已存在的Stata矩阵 {it:名称} 关联的行和列条纹的内容改变为 {it:s}。
在任何情况下，{it:s} 必须是 {it:n} {it:x} 2，其中 {it:n} 为基础矩阵的行数（列数）。

{p 4 4 2}
{cmd:st_matrixrowstripe(}{it:名称}, {it:s}{cmd:)} 和
{cmd:st_matrixcolstripe(}{it:名称}, {it:s}{cmd:)}
在 {it:s} 为 0 {it:x} 2 的情况下（即，
{cmd:J(0,2,"")}）将行和列条纹重置为 {cmd:"r1"}, {cmd:"r2"}, ..., 和 
{cmd:"c1"}, {cmd:"c2"}, ... .

{p 4 4 2}
{cmd:st_replacematrix(}{it:名称}, {it:X}{cmd:)} 将Stata矩阵 {it:名称} 的内容重置为 {it:X}。 
现有的Stata矩阵必须与 {it:X} 具有相同的行数和列数。行条纹和列条纹保持不变。

{p 4 4 2}
{cmd:st_matrix(}{it:名称}{cmd:,} {it:X}{cmd:,} {it:hcat}{cmd:)} 
和 
{cmd:st_matrix_hcat(}{it:名称}{cmd:)} 用于设置和查询与
Stata {cmd:e()} 或 {cmd:r()} 矩阵对应的 {it:hcat}。它们的使用频率很低。
有关更多信息，请参见 {manlink R Stored results} 和 {manlink P return}。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection M-5 st_matrix()Remarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{marker remarks1}{...}
{title:处理Stata的行和列条纹}

{p 4 4 2} 
行条纹和列条纹以相同的方式呈现：
{it:s} 的每一行代表与基础矩阵的某一行或列相关的 {it:eq}{cmd::}{it:op}{cmd:.}{it:name}。 
第一列记录 {it:eq}，第二列记录 {it:op}{cmd:.}{it:name}。 
例如，给定以下Stata矩阵

                                eq2:  eq2:
                            L.          L.
                   turn  turn  turn  turn
              mpg     1     2     3     4
            L.mpg     5     6     7     8
          eq2:mpg     9    10    11    12
        eq2:L.mpg    13    14    15    16

{p 4 4 2} 
{cmd:st_matrixrowstripe(}{it:name}{cmd:)} 返回 4 {it:x} 2 字符串矩阵

	""      "mpg"
	""      "L.mpg"
	"eq2"	"mpg"
	"eq2"	"L.mpg"

{p 4 4 2} 
{cmd:st_matrixcolstripe(}{it:name}{cmd:)} 返回 

	""      "turn"
	""      "L.turn"
	"eq2"	"turn"
	"eq2"	"L.turn"


{marker conformability}{...}
{title:兼容性}

    {cmd:st_matrix(}{it:name}{cmd:)}:
	     {it:name}:  1 {it:x} 1
	   {it:result}:  {it:m x n}  (0 {it:x} 0 如果未找到)

    {cmd:st_matrixrowstripe(}{it:name}{cmd:)}:
	     {it:name}:  1 {it:x} 1
	   {it:result}:  {it:m x} 2  (0 {it:x} 2 如果未找到)

    {cmd:st_matrixcolstripe(}{it:name}{cmd:)}:
	     {it:name}:  1 {it:x} 1
	   {it:result}:  {it:n x} 2  (0 {it:x} 2 如果未找到)

    {cmd:st_matrix(}{it:name}{cmd:,} {it:X}{cmd:)}:
	     {it:name}:  1 {it:x} 1
		{it:X}:  {it:r x c}  (0 {it:x} 0 意味着删除)
	   {it:result}:  {it:void}

    {cmd:st_matrix(}{it:name}{cmd:,} {it:X}{cmd:,} {it:hcat}{cmd:)}:
	     {it:name}:  1 {it:x} 1
		{it:X}:  {it:r x c}
	     {it:hcat}:  1 {it:x} 1
	   {it:result}:  {it:void}

    {cmd:st_matrixrowstripe(}{it:name}{cmd:,} {it:s}{cmd:)}:
	     {it:name}:  1 {it:x} 1
		{it:s}:  {it:r x} 2  (0 {it:x} 2 意味着默认 {cmd:"r1"}, {cmd:"r2"}, ...)
	   {it:result}:  {it:void}

    {cmd:st_matrixcolstripe(}{it:name}{cmd:,} {it:s}{cmd:)}:
	     {it:name}:  1 {it:x} 1
		{it:s}:  {it:c x} 2  (0 {it:x} 2 意味着默认 {cmd:"c1"}, {cmd:"c2"}, ...)
	   {it:result}:  {it:void}

    {cmd:st_replacematrix(}{it:name}{cmd:,} {it:X}{cmd:)}:
	     {it:name}:  1 {it:x} 1
		{it:X}:  {it:m x n}  (0 {it:x} 0 意味着删除)
	   {it:result}:  {it:void}

    {cmd:st_matrix_hcat(}{it:name}{cmd:)}
	     {it:name}:  1 {it:x} 1
	   {it:result}:  1 {it:x} 1


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
{cmd:st_matrix(}{it:name}{cmd:)},
{cmd:st_matrixrowstripe(}{it:name}{cmd:)}, 和
{cmd:st_matrixcolstripe(}{it:name}{cmd:)}
如果 {it:name} 格式不正确则会中止并报错。 另外，

{p 8 12 2}
1.
{cmd:st_matrix(}{it:name}{cmd:)}
如果Stata矩阵 {it:name} 不存在，则返回 {cmd:J(0,0,.)}。

{p 8 12 2}
2.
{cmd:st_matrixrowstripe(}{it:name}{cmd:)} 和
{cmd:st_matrixcolstripe(}{it:name}{cmd:)}
如果Stata矩阵 {it:name} 不存在，则返回 {cmd:J(0,2,"")}。没有可能性出现矩阵 {it:name} 存在但没有行和列条纹。

{p 4 4 2}
{cmd:st_matrix(}{it:name}{cmd:,} {it:X}{cmd:)}, 
{cmd:st_matrixrowstripe(}{it:name}{cmd:,} {it:s}{cmd:)}, 和 
{cmd:st_matrixcolstripe(}{it:name}{cmd:,} {it:s}{cmd:)}
如果 {it:name} 格式不正确则会中止并报错。 另外，

{p 8 12 2}
1.
{cmd:st_matrixrowstripe(}{it:name}{cmd:,} {it:s}{cmd:)}
如果 {cmd:rows(}{it:s}{cmd:)} 不等于Stata矩阵 {it:name} 的行数且 
{cmd:rows(}{it:s}{cmd:)}!=0，或者如果 {cmd:cols(}{it:s}{cmd:)}!=2， 则会中止并报错。

{p 8 12 2}
2.
{cmd:st_matrixcolstripe(}{it:name}{cmd:,} {it:s}{cmd:)}
如果 {cmd:cols(}{it:s}{cmd:)} 不等于Stata矩阵 {it:name} 的列数且 
{cmd:cols(}{it:s}{cmd:)}!=0，或者如果 {cmd:cols(}{it:s}{cmd:)}!=2， 则会中止并报错。

{p 4 4 7}
{cmd:st_replacematrix(}{it:name}{cmd:,} {it:X}{cmd:)} 
如果Stata矩阵 {it:name} 的行数和列数与 {it:X} 不匹配，则会中止并报错。 
如果Stata矩阵 {it:name} 不存在且 {it:X}{cmd:!=J(0,0,.)}，则 {cmd:st_replacematrix()} 也会中止并报错。如果矩阵不存在且 {it:X}{cmd:==J(0,0,.)}，则 {cmd:st_replacematrix()} 不执行任何操作。
{cmd:st_replacematrix()} 如果 {it:name} 格式不正确则会中止并报错。

{p 4 4 2}
{cmd:st_matrix(}{it:name}{cmd:,} {it:X}{cmd:,} {it:hcat}{cmd:)}
如果 {it:hcat} 不是允许的值，则会中止并报错。

{p 4 4 2}
{cmd:st_matrix_hcat(}{it:name}{cmd:)} 当 {it:name} 不是Stata {cmd:e()} 或 {cmd:r()} 矩阵时返回 "{cmd:visible}"，并且当 {cmd:name} 为不存在的 {cmd:e()} 或 {cmd:r()} 值时返回 {cmd:""}。


{marker source}{...}
{title:源代码}

{p 4 4 2}
函数是内置的。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_st_matrix.sthlp>}