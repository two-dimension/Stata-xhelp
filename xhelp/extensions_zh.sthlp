
{smcl}
{* *! version 1.1.15  21jun2019}{...}
{findalias asfrfilenames}{...}
{title:标题}
{help extensions:English Version}
{hline}

    {findalias frfilenames}


{title:备注}

{pstd}
通常（例外为 {cmd:copy}、{cmd:dir}、{cmd:ls}、{cmd:erase}、
{cmd:rm} 和 {cmd:type}），如果你没有提供文件扩展名，Stata 会自动提供一个文件扩展名。例如，如果你输入 {cmd:use} {cmd:mydata}，Stata 会假设你是指 {cmd:use} {cmd:mydata.dta}，因为 {cmd:.dta} 是 Stata 通常用于数据文件的扩展名。

{pstd}
Stata 提供 23 个默认的文件扩展名，这些扩展名被各种命令使用：

{p2colset 9 20 22 2}{...}
{p2col :{mansection U 17Ado-files:{bf:.ado}}}自动加载的 do 文件{p_end}
{p2col :{help infile2_zh:.dct}}文本数据字典{p_end}
{p2col :{mansection U 16Do-files:{bf:.do}}}do 文件{p_end}
{p2col :{help save_zh:.dta}}Stata 格式的数据集{p_end}
{p2col :{help datasignature_zh:.dtasig}}{cmd:datasignature} 文件{p_end}
{p2col :{helpb graph save:.gph}}{cmd:graph}{p_end}
{p2col :{helpb graph editor:.grec}}图形编辑器录制（文本格式）{p_end}
{p2col :{helpb irf set:.irf}}脉冲响应函数数据集{p_end}
{p2col :{help log_zh:.log}}文本格式的日志文件{p_end}
{p2col :{helpb m1 source:.mata}}Mata 源代码{p_end}
{p2col :{helpb mata mlib:.mlib}}Mata 库{p_end}
{p2col :{helpb mata matsave:.mmat}}Mata 矩阵{p_end}
{p2col :{helpb mata mosave:.mo}}Mata 对象文件{p_end}
{p2col :{help infile1_zh:.raw}}文本格式的数据{p_end}
{p2col :{help smcl_zh:.smcl}}SMCL 格式的日志文件{p_end}
{p2col :{helpb datetime business calendars:.stbcal}}商务日历{p_end}
{p2col :{helpb estimates save:.ster}}保存的估计值{p_end}
{p2col :{help smcl_zh:.sthlp}}帮助文件{p_end}
{p2col :{help project_manager_zh:.stpr}}项目文件{p_end}
{p2col :{helpb mi ptrace:.stptrace}}参数跟踪文件{p_end}
{p2col :{helpb sem gui:.stsem}}SEM 构建器文件{p_end}
{p2col :{helpb spmatrix use:.stswm}}空间加权矩阵{p_end}
{p2col :{helpb lasso estimates store:.stxer}}使用套索命令时 {cmd:.ster} 的附属文件{p_end}
{p2col :{help checksum_zh:.sum}}用于验证网络传输的校验和文件{p_end}

{pstd}
你不必以 {cmd:.dta} 扩展名命名数据文件 -- 如果你输入显式的文件扩展名，它将覆盖默认扩展名。例如，如果你的数据集存储为 {cmd:myfile.dat}，你可以输入 {cmd:use myfile.dat}。如果你的数据集存储为仅 {cmd:myfile} 且没有文件扩展名，你可以在文件名末尾输入一个句点来表示你正在显式指定空扩展名。你应输入 {cmd:use} {cmd:myfile.} 来使用此数据集。

{pstd}
Stata 还使用其他 12 种文件扩展名。这些文件仅对高级程序员感兴趣或用于 Stata 的内部使用。它们是

{p2col :{help class_zh:.class}}面向对象编程的类文件{p_end}
{p2col :{helpb dialog programming:.dlg}}对话框资源文件{p_end}
{p2col :{helpb dialog programming:.idlg}}对话框资源包含文件{p_end}
{p2col :{help smcl_zh:.ihlp}}帮助包含文件{p_end}
{p2col :{help search_zh:.key}}{cmd:search} 的关键字数据库文件{p_end}
{p2col :{cmd:.maint}}维护文件（仅供 Stata 内部使用）{p_end}
{p2col :{cmd:.mnu}}菜单文件（仅供 Stata 内部使用）{p_end}
{p2col :{help net_zh:.pkg}}用户站点包文件{p_end}
{p2col :{help plugin_zh:.plugin}}编译附加文件（DLL）{p_end}
{p2col :{helpb schemes intro:.scheme}}图形方案的控制文件{p_end}
{p2col :{helpb graph query:.style}}图形样式文件{p_end}
{p2col :{mansection U 29.5Makingyourowndownloadsite:{bf:.toc}}}用户站点描述文件{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <extensions.sthlp>}