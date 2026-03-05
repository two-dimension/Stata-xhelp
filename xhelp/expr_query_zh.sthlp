{smcl}
{* *! version 1.2.1  10may2018}{...}
{vieweralsosee "undocumented" "help undocumented_zh"}{...}
{viewerjumpto "语法" "expr_query_zh##syntax"}{...}
{viewerjumpto "描述" "expr_query_zh##description"}{...}
{viewerjumpto "备注" "expr_query_zh##remarks"}{...}
{viewerjumpto "示例" "expr_query_zh##examples"}{...}
{viewerjumpto "存储结果" "expr_query_zh##stored"}{...}
{viewerjumpto "诊断" "expr_query_zh##diag"}
{help expr_query:English Version}
{hline}{...}
{title:标题}

{p2colset 5 23 25 2}{...}
{p2col :{bf:[P] expr_query} {hline 2}}获取表达式中使用的变量{p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 25 2}
{cmd:expr_query} [{cmd:=}] {it:exp}


{marker description}{...}
{title:描述}

{pstd}
{cmd:expr_query} 在 {cmd:r()} 中返回在 {it:exp} 中使用的变量名，其中
{it:exp} 是可能与 {help generate_zh} 或 {helpb replace} 一起使用的表达式。

{pstd}
变量名是数据集中变量的名称。它们不包括标量或矩阵变量。


{marker remarks}{...}
{title:备注}

{pstd}
在某些编程环境中，用户指定的表达式会在内存中的数据集修改后再进行评估。
{cmd:expr_query} 返回的列表可以被添加到需要保留的变量列表中。


{marker examples}{...}
{title:示例}

{pstd}
我们开始于不在上下文中的示例，仅仅是演示 {cmd:r()} 值
{cmd:expr_query} 可供您使用。

	. {cmd:sysuse auto}

	. {cmd:expr_query 1/mpg}

	. {cmd:return list}
          宏：
                       r(type) : "{res}numeric{txt}"
                   r(varnames) : "{res}mpg{txt}"


	. {cmd:expr_query weight/(1/mpg)}

	. {cmd:return list}
          宏：
                       r(type) : "{res}numeric{txt}"
                   r(varnames) : "{res}mpg weight{txt}"


	. {cmd:expr_query "car " + lower(make)}

	. {cmd:return list}
          宏：
                       r(type) : "{res}string{txt}"
                   r(varnames) : "{res}make{txt}"


	. {cmd:expr_query 1/sqrt(2)}

	. {cmd:return list}
          宏：
                       r(type) : "{res}numeric{txt}"
                   r(varnames) : "{res} {txt}"

{pstd}
{cmd:expr_query} 是一个编程命令。
典型用法如下：

	{cmd}program myprog
		version {ccl stata_version}
		syntax varlist =exp [if] [in], ... 
		marksample touse
		{it:...}
		expr_query `exp'
		local uservars `r(varnames)'
		...
		local vars_to_keep : list varlist | uservars
		preserve
		keep if `touse'
		keep `vars_to_keep'
		...
		tempvar weight
		gen double `weight' `exp'     /* <--- */
		...
		...
	end{txt}

{pstd}
在上面的示例中，用户指定了，在 {cmd:myprog} 命令行中，表达式等内容。
命令 {cmd:syntax} 解析用户输入的内容。
{cmd:expr_query} 提供用户指定的表达式所使用的变量列表；{cmd:myprog} 接着根据用户提供的其他语法部分，制作一个需要保留的变量列表——忽略该表达式。
最后，保留的变量列表和表达式中使用的变量通过逻辑运算符 {cmd:|}（或）结合在一起，得到两个列表的并集。{cmd:myprog} 保留了用户的数据，保留了其所需的变量，并执行它需要执行的其他工作。最终（我们用箭头标记了这一行），{cmd:myprog} 根据用户指定的表达式生成了一个临时新变量。
由于在 {cmd:vars_to_keep} 中包含了用户指定的 {cmd:`exp'} 所需的任何变量，因此 {cmd:generate} 命令将成功执行。


{marker stored}{...}
{title:存储结果}

{pstd}
{cmd:expr_query} 不产生输出，但在 {cmd:r()} 中存储以下内容：

{synoptset 16 tabbed}{...}
{p2col 5 16 20 2: 宏}{p_end}
{synopt:{cmd:r(type)}}{cmd:numeric} 或 {cmd:string}{p_end}
{synopt:{cmd:r(varnames)}}以空格分隔的变量名列表；
	  如果没有在 {it:exp} 中使用变量，则包含一个空白 ({cmd:" "}){p_end}
{synopt:{cmd:r(tsvarlist)}}时间序列变量列表{p_end}
{synopt:{cmd:r(fvvarlist)}}因子变量列表{p_end}
{p2colreset}{...}


{marker diag}{...}
{title:诊断}

{pstd}
{cmd:expr_query} 产生与 {cmd:generate} 或 {cmd:replace} 在 {it:exp} 中存在错误时所产生的相同错误信息和非零返回代码。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <expr_query.sthlp>}