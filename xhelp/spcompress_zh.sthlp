{smcl}
{* *! version 1.0.8  17may2019}{...}
{viewerdialog Sp "dialog sp"}{...}
{vieweralsosee "[SP] spcompress" "mansection SP spcompress"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[SP] Intro" "mansection SP Intro"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] compress" "help compress_zh"}{...}
{viewerjumpto "Syntax" "spcompress_zh##syntax"}{...}
{viewerjumpto "Menu" "spcompress_zh##menu"}{...}
{viewerjumpto "Description" "spcompress_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "spcompress_zh##linkspdf"}{...}
{viewerjumpto "Option" "spcompress_zh##option"}{...}
{viewerjumpto "Example" "spcompress_zh##example"}{...}
{viewerjumpto "Stored results" "spcompress_zh##results"}
{help spcompress:English Version}
{hline}{...}
{p2colset 1 20 22 2}{...}
{p2col:{bf:[SP] spcompress} {hline 2}}压缩 Stata 格式的
形状文件{p_end}
{p2col:}({mansection SP spcompress:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 14 2}
{cmd:spcompress}
[{cmd:,} {cmd:force}]


INCLUDE help menu_spatial


{marker description}{...}
{title:描述}

{pstd}
{cmd:spcompress} 创建一个新的 Stata 格式的形状文件，省略在内存中
的 Sp 数据中不存在的地点（地理单元）。新的形状文件将
以内存中的数据命名。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection SP spcompressQuickstart:快速入门}

        {mansection SP spcompressRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker option}{...}
{title:选项}

{phang}
{opt force} 允许替换现有的形状文件。{opt force} 是 StataCorp
使用的选项名称，当您在指定之前应该三思而后行。通常，
您希望创建一个新的形状文件。


{marker example}{...}
{title:示例}

{pstd}
在您的浏览器中搜索“形状文件 美国 县 人口普查”。从
结果中选择
{browse "https://catalog.data.gov/dataset/tiger-line-shapefile-2016-nation-u-s-current-county-and-equivalent-national-shapefile":{it:TIGER/Line Shapefile, 2016, nation, U.S., Current County and Equivalent National Shapefile}}。
在结果页面上，单击下载 {bf:形状文件压缩包}，从
{bf:下载与资源} 部分。文件 {cmd:tl_2016_us_county.zip} 被下载到
我们计算机上的 {cmd:下载} 目录。

{pstd}
您必须位于 {cmd:下载} 目录（即与此文件相同的目录）
以运行空间命令。

{pstd}数据集设置{p_end}
{phang2}{cmd:. unzipfile tl_2016_us_county.zip}{p_end}
{phang2}{cmd:. spshape2dta tl_2016_us_county}{p_end}

{pstd}创建 {cmd:tl_2016_us_county.dta} 的子集{p_end}
{phang2}{cmd:. use tl_2016_us_county}{p_end}
{phang2}{cmd:. keep if STATEFP == "48"}{p_end}

{pstd}压缩空间数据{p_end}
{phang2}{cmd:. spcompress}{p_end}

{pstd}这会产生错误消息，因为数据已链接 
到 {cmd:tl_2016_us_county_shp.dta}，该文件已经存在。您可以
使用上述 {cmd:spcompress} 的 {cmd:force} 选项，但
此过程的更安全替代方案如下：{p_end}
{phang2}{cmd:. use tl_2016_us_county}{p_end}
{phang2}{cmd:. keep if STATEFP == "48"}{p_end}
{phang2}{cmd:. save texas}{p_end}
{phang2}{cmd:. spcompress}{p_end}


{marker results}{...}
{title:存储结果}

{pstd}
{opt spcompress} 在 {opt r()} 中存储以下信息：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:r(num_drop_ids)}}{it:#} 的 {help sp_glossary##spatial_units:空间单元} 被丢弃{p_end}
{synopt:{cmd:r(num_ids)}}{it:#} 的 {help sp_glossary##spatial_units:空间单元} 仍然存在{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <spcompress.sthlp>}