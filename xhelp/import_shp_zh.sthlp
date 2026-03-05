{smcl}
{* *! version 1.0.2  15mar2017}{...}
{vieweralsosee "undocumented" "help undocumented_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] import dbase" "help import dbase"}{...}
{vieweralsosee "[D] import" "help import_zh"}{...}
{viewerjumpto "Syntax" "import_shp_zh##syntax"}{...}
{viewerjumpto "Description" "import_shp_zh##description"}{...}
{viewerjumpto "Options" "import_shp_zh##options"}{...}
{viewerjumpto "Examples" "import_shp_zh##examples"}
{help import_shp:English Version}
{hline}{...}
{title:标题}

{p 4 22 2}
{hi:[D] import shp} {hline 2} 导入和导出 shapefile


{marker syntax}{...}
{title:语法}

{phang}
加载一个 shapefile

{p 8 16 2}
{cmd:import} {cmd:shp} [{cmd:using}] {it:{help filename_zh}}
[{cmd:,} {opt clear}]


{phang}
将内存中的数据保存到一个 shapefile

{p 8 16 2}
{cmd:export} {cmd:shp} [{cmd:using}] {it:{help filename_zh}}
[{cmd:,} {opt replace}]


{pstd}
如果 {it:{help filename_zh}} 在没有扩展名的情况下被指定，则会假定 {cmd:.shp} 作为 {cmd:import shp} 和 {cmd:export shp} 的扩展名。如果 {it:filename} 包含空格，请将其用双引号括起来。


{marker description}{...}
{title:描述}

{pstd}
{cmd:import shp} 将一个 shapefile ({cmd:.shp}) 读入内存。shapefile 是一种存储地理特征几何位置和属性信息的非拓扑格式。shapefile 中的地理特征可以用点、线或多边形（区域）表示。shapefile 通常与 dBase 文件配对，dBase 文件可以存储附加的属性，并可以与 shapefile 的特征连接。有关如何将 dBase 文件导入 Stata 的信息，请参见 {helpb import dbase}。

{pstd}
Stata 还有其他用于导入数据的命令。如果您不确定 {cmd:import shp} 是否能够满足您的需求，请参阅 {manhelp import D} 和 {findalias frdatain}。


{marker options}{...}
{title:选项}

{phang}
{opt clear} 用于 {cmd:import shp}，指定可以替换内存中的数据，即使当前数据尚未保存到磁盘中。

{phang}
{opt replace} 用于 {cmd:export shp}，指定如果 {it:{help filename_zh}} 已经存在，则替换它。


{marker examples}{...}
{title:示例}

{pstd}
将文件 {cmd:point.shp} 读入内存{p_end}
{phang2}{cmd:. import shp point}

{pstd}
将内存中的 shapefile 导出到文件 {bf:mypoint.shp}{p_end}
{phang2}{cmd:. export shp mypoint}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <import_shp.sthlp>}