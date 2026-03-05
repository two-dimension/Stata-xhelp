{smcl}
{* *! version 2.1.12  19oct2017}{...}
{viewerdialog "estimates describe" "dialog estimates_describe"}{...}
{vieweralsosee "[R] estimates describe" "mansection R estimatesdescribe"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] estimates" "help estimates_zh"}{...}
{viewerjumpto "语法" "estimates_describe_zh##syntax"}{...}
{viewerjumpto "菜单" "estimates_describe_zh##menu"}{...}
{viewerjumpto "描述" "estimates_describe_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "estimates_describe_zh##linkspdf"}{...}
{viewerjumpto "选项" "estimates_describe_zh##option"}{...}
{viewerjumpto "备注" "estimates_describe_zh##remarks"}{...}
{viewerjumpto "示例" "estimates_describe_zh##examples"}{...}
{viewerjumpto "存储结果" "estimates_describe_zh##results"}
{help estimates_describe:English Version}
{hline}{...}
{p2colset 1 27 29 2}{...}
{p2col:{bf:[R] estimates describe} {hline 2}}描述估计结果{p_end}
{p2col:}({mansection R estimatesdescribe:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{opt est:imates} {opt des:cribe}

{p 8 12 2}
{opt est:imates} {opt des:cribe}
{it:name}

{p 8 12 2}
{opt est:imates} {opt des:cribe}
{cmd:using} {it:{help filename_zh}}
[{cmd:,} 
{opt number(#)}]


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 事后估计}


{marker description}{...}
{title:描述}

{pstd}
{cmd:estimates} {cmd:describe} 描述当前（活动）估计值。
报告的内容包括产生估计的命令行、通过 {helpb estimates title} 设置的任何标题，以及通过 {helpb estimates notes} 添加的任何备注。

{pstd}
{cmd:estimates} {cmd:describe} {it:name} 也做同样的事情，但报告由 {helpb estimates store} 存储的估计结果。

{pstd}
{cmd:estimates} {cmd:describe} {cmd:using} {it:{help filename_zh}} 也是如此，但报告由 {helpb estimates save} 保存的估计结果。如果 {it:filename} 包含多个估计值集（通过 {cmd:estimates} {cmd:save,} {cmd:append} 保存），还会报告估计值的集数。如果 {it:filename} 没有指定扩展名，默认假设为 {cmd:.ster}。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection R estimatesdescribeQuickstart:快速入门}

        {mansection R estimatesdescribeRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker option}{...}
{title:选项}

{phang}
{opt number(#)} 指定描述来自 {it:{help filename_zh}} 的第 {it:#} 个估计结果集。
这假设在 {it:filename} 中已由 {cmd:estimates} {cmd:save,} {cmd:append} 保存多个估计结果集。
默认值是 {cmd:number(1)}。


{marker remarks}{...}
{title:备注}

{pstd}
{cmd:estimates} {cmd:describe} 可用于描述当前内存中的估计结果，

	. {cmd:estimates describe}

	  产生的估计结果来自

	     . regress mpg weight displ if foreign

{pstd} 
也可用于描述通过 {cmd:estimates} {cmd:save} 存储在 {cmd:.ster} 文件中的结果：

	. {cmd:estimates describe using final}

	  估计结果 "最终结果" 于 2009 年 4 月 12 日 14:20 保存，
	  产生的结果来自

	     . logistic myopic age sex drug1 drug2 if complete==1

	  备注：
	    1.  使用文件 patient.dta
	    2.  "datasignature myopic age sex drug1 drug2 if complete==1" 
	        报告 148:5(58763):2252897466:3722318443
	    3.  必需由 rgg 审阅


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. sysuse auto}{p_end}

{pstd}拟合回归{p_end}
{phang2}{cmd:. regress mpg gear turn}{p_end}

{pstd}添加备注{p_end}
{phang2}{cmd:. estimates notes: My basic results}{p_end}

{pstd}描述结果{p_end}
{phang2}{cmd:. estimates describe}{p_end}

{pstd}保存结果{p_end}
{phang2}{cmd:. estimates save basic}

{pstd}描述存储的结果{p_end}
{phang2}{cmd:. probit foreign mpg gear}{p_end}
{phang2}{cmd:. estimates store myprobit}{p_end}
{phang2}{cmd:. estimates describe myprobit}

{pstd}描述保存到磁盘的结果{p_end}
{phang2}{cmd:. estimates describe using basic}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:estimates describe} 和
{cmd:estimates describe} {it:name} 存储以下内容在 {cmd:r()}:

	宏
	    {cmd:r(title)}           标题
	    {cmd:r(cmdline)}         原始命令行

{pstd}
{cmd:estimates} {cmd:describe} {cmd:using} {it:filename} 存储上述内容以及以下内容在 {cmd:r()}:

	标量
	    {cmd:r(datetime)}        {cmd:%tc} 保存的文件的日期/时间值
	    {cmd:r(nestresults)}     文件中的估计结果集数量

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <estimates_describe.sthlp>}