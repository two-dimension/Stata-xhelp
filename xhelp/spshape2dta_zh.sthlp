{smcl}
{* *! version 1.0.5  17may2019}{...}
{viewerdialog Sp "dialog sp"}{...}
{vieweralsosee "[SP] spshape2dta" "mansection SP spshape2dta"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[SP] Intro 3" "mansection SP Intro3"}{...}
{vieweralsosee "[SP] Intro 4" "mansection SP Intro4"}{...}
{viewerjumpto "语法" "spshape2dta_zh##syntax"}{...}
{viewerjumpto "菜单" "spshape2dta_zh##menu"}{...}
{viewerjumpto "描述" "spshape2dta_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "spshape2dta_zh##linkspdf"}{...}
{viewerjumpto "选项" "spshape2dta_zh##options"}{...}
{viewerjumpto "示例" "spshape2dta_zh##example"}
{help spshape2dta:English Version}
{hline}{...}
{p2colset 1 21 23 2}{...}
{p2col:{bf:[SP] spshape2dta} {hline 2}}翻译 shapefile 为 Stata 格式{p_end}
{p2col:}({mansection SP spshape2dta:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 14 2}
{cmd:spshape2dta} {it:name}
[{cmd:,} {it:options}]

{synoptset 16}{...}
{synopthdr}
{synoptline}
{synopt :{opt clear}}清除内存中的现有数据{p_end}
{synopt :{opt replace}}如果 {it:name}{cmd:.dta} 或 {it:name}{cmd:_shp.dta} 已存在，则替换它们{p_end}
{synopt :{opt saving(name2)}}创建名为 {it:name2}{cmd:.dta} 和 {it:name2}{cmd:_shp.dta} 的新文件，而不是 {it:name}{cmd:.dta} 和 {it:name}{cmd:_shp.dta}{p_end}
{synoptline}
{p2colreset}{...}

{phang}
     {cmd:spshape2dta} 将文件 {it:name}{cmd:.shp} 和 {it:name}{cmd:.dbf} 转换。它们必须在当前目录中。

{phang}
     {cmd:spshape2dta} 创建文件 {it:name}{cmd:.dta} 和 {it:name}{cmd:_shp.dta}。它们将在当前目录中创建。内存中的数据（如果有的话）保持不变。


INCLUDE help menu_spatial


{marker description}{...}
{title:描述}

{pstd}
{cmd:spshape2dta} {it:name} 读取文件 {it:name}{cmd:.shp} 和 {it:name}{cmd:.dbf} 并创建 Sp 数据集 {it:name}{cmd:.dta} 和翻译后的 shapefile {it:name}{cmd:_shp.dta}。翻译后的 shapefile 将链接到 Sp 数据集 {it:name}{cmd:.dta}。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection SP spshape2dtaQuickstart:快速入门}

        {mansection SP spshape2dtaRemarksandexamples:备注和示例}

{pstd}
以上部分未包含在本帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{opt clear} 指定清除内存中的任何数据。

{phang}
{opt replace} 指定如果正在创建的新文件已存在于磁盘上，则可以被替换。

{phang}
{opt saving(name2)} 指定新文件的名称应为 {it:name2}{cmd:.dta} 和 {it:name2}{cmd:_shp.dta}，而不是 {it:name}{cmd:.dta} 和 {it:name}{cmd:_shp.dta}。


{marker example}{...}
{title:示例}

{pstd}
在浏览器中搜索“shapefile U.S. counties census”。从结果中，选择
{browse "https://catalog.data.gov/dataset/tiger-line-shapefile-2016-nation-u-s-current-county-and-equivalent-national-shapefile":{it:TIGER/Line Shapefile, 2016, nation, U.S., Current County and Equivalent National Shapefile}}。
在结果页面上，点击下载 {bf:Shapefile Zip File}，该文件在 {bf:Downloads & Resources} 部分。文件 {cmd:tl_2016_us_county.zip} 将下载到计算机的 {cmd:Downloads} 目录。

{pstd}
您必须处于 {cmd:Downloads} 目录中（也就是与该文件相同的目录）才能运行空间命令。

{pstd}解压文件{p_end}
{phang2}{cmd:. unzipfile tl_2016_us_county.zip}{p_end}

{pstd}数据集设置{p_end}
{phang2}{cmd:. spshape2dta tl_2016_us_county}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <spshape2dta.sthlp>}