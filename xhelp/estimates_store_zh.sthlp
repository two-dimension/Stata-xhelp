{smcl}
{* *! version 2.1.11  22jun2019}{...}
{viewerdialog "estimates store" "dialog estimates_store"}{...}
{viewerdialog "estimates restore" "dialog estimates_restore"}{...}
{viewerdialog "estimates dir" "dialog estimates_dir"}{...}
{viewerdialog "estimates drop" "dialog estimates_drop"}{...}
{vieweralsosee "[R] estimates store" "mansection R estimatesstore"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] estimates" "help estimates_zh"}{...}
{vieweralsosee "[LASSO] estimates store" "help lasso estimates store"}{...}
{viewerjumpto "语法" "estimates_store_zh##syntax"}{...}
{viewerjumpto "菜单" "estimates_store_zh##menu"}{...}
{viewerjumpto "描述" "estimates_store_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "estimates_store_zh##linkspdf"}{...}
{viewerjumpto "选项" "estimates_store_zh##option"}{...}
{viewerjumpto "示例" "estimates_store_zh##example"}{...}
{viewerjumpto "存储结果" "estimates_store_zh##results"}
{help estimates_store:English Version}
{hline}{...}
{p2colset 1 24 26 2}{...}
{p2col:{bf:[R] estimates store} {hline 2}}存储和恢复估计结果{p_end}
{p2col:}({mansection R estimatesstore:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{opt est:imates} {opt sto:re}{bind:  }
{it:name}
[{cmd:,} 
{cmd:nocopy}]

{p 8 12 2}
{opt est:imates} {opt res:tore}
{it:name}


{p 8 12 2}
{opt est:imates} {opt q:uery}

{p 8 12 2}
{opt est:imates} {cmd:dir}{bind:    }
[{it:namelist}]


{p 8 12 2}
{opt est:imates} {cmd:drop}{bind:   }
{it:namelist}

{p 8 12 2}
{opt est:imates} {cmd:clear}


{phang}
其中 {it:namelist} 是一个名称、名称列表、 {cmd:_all} 或 
{cmd:*}。{break}
{cmd:_all} 和 {cmd:*} 的意思是相同的。


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 后估计}


{marker description}{...}
{title:描述}

{pstd}
{cmd:estimates} {cmd:store} {it:name} 将当前（活动的）估计结果以 {it:name} 的名称保存。

{pstd}
{cmd:estimates} {cmd:restore} {it:name} 将存储在 {it:name} 下的结果加载到当前（活动的）估计结果中。

{pstd}
{cmd:estimates} {cmd:query} 告诉你当前（活动的）估计是否已被存储，如果是，则给出名称。

{pstd}
{cmd:estimates} {cmd:dir} 显示存储估计结果的列表。

{pstd}
{cmd:estimates} {cmd:drop} {it:namelist} 
删除指定的存储估计结果。

{pstd}
{cmd:estimates} {cmd:clear}
删除所有存储的估计结果。  

{pstd}
{cmd:estimates} {cmd:clear}、 
{cmd:estimates} {cmd:drop} {cmd:_all} 和 
{cmd:estimates} {cmd:drop} {cmd:*} 做同样的事情。
{cmd:estimates} {cmd:drop} 和 {cmd:estimates} {cmd:clear} 
不会消除当前（活动的）估计结果。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection R estimatesstoreQuickstart:快速开始}

        {mansection R estimatesstoreRemarksandexamples:备注和示例}

{pstd}
上述章节不包含在此帮助文件中。


{marker option}{...}
{title:选项}

{phang}
{cmd:nocopy}，与 {cmd:estimates} {cmd:store} 一起使用，指定当前（活动的）估计结果将移动到 {it:name} 而不是被复制。 输入 

		. {cmd:estimates store hold, nocopy}

{pmore}
    与输入 

		. {cmd:estimates store hold}
		. {cmd:ereturn clear}

{pmore}
    的效果相同，前者更快。 {cmd:nocopy} 选项有时被程序员使用。


{marker example}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. sysuse auto}{p_end}
{phang2}{cmd:. regress mpg weight displ}

{pstd}存储结果{p_end}
{phang2}{cmd:. estimates store myreg}

{phang2}{cmd:.} ... {it:你可以执行其他操作，包括拟合其他模型} ...

{pstd}恢复回归结果{p_end}
{phang2}{cmd:. estimates restore myreg}

{pstd}为比较，再次显示相同的输出{p_end}
{phang2}{cmd:. regress}

{pstd}列出存储的估计结果{p_end}
{phang2}{cmd:. estimates dir}

{pstd}删除存储为 {cmd:myreg} 的估计结果{p_end}
{phang2}{cmd:. estimates drop myreg}

{pstd}
在 {cmd:estimates} {cmd:restore} {cmd:myreg} 之后，回到你输入 {cmd:regress} {cmd:mpg}
{cmd:weight} {cmd:displ} 之后的状态，估计结果就像之前一样。

{pstd}
{cmd:estimates} {cmd:store} 将结果存储在内存中。
当你退出 Stata 时，这些存储的结果将消失。 如果你希望 
做一份估计结果的永久副本，请参阅 
{bf:{help estimates_save_zh:[R] estimates save}}。

{pstd}
在内存中制作副本的目的有两个： (1) 让你可以快速 
在它们之间切换，(2) 便于制作比较估计结果的表格。 关于后者，请参见 
{bf:{help estimates_table_zh:[R] estimates table}}
和 
{bf:{help estimates_stats_zh:[R] estimates stats}}。


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:estimates} {cmd:dir} 将以下内容存储在 {cmd:r()} 中：

		宏
		    {cmd:r(names)}   存储结果的名称

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <estimates_store.sthlp>}