{smcl}
{* *! version 1.1.5  15oct2018}{...}
{viewerdialog Sp "dialog sp"}{...}
{vieweralsosee "[SP] spset" "mansection SP spset"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[SP] Intro 3" "mansection SP Intro3"}{...}
{vieweralsosee "[SP] Intro 4" "mansection SP Intro4"}{...}
{vieweralsosee "[SP] Intro 5" "mansection SP Intro5"}{...}
{vieweralsosee "[SP] Intro 6" "mansection SP Intro6"}{...}
{vieweralsosee "[SP] Intro 7" "mansection SP Intro7"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[SP] spbalance" "help spbalance_zh"}{...}
{vieweralsosee "[SP] spdistance" "help spdistance_zh"}{...}
{vieweralsosee "[SP] spshape2dta" "help spshape2dta_zh"}{...}
{vieweralsosee "[XT] xtset" "help xtset_zh"}{...}
{viewerjumpto "语法" "spset_zh##syntax"}{...}
{viewerjumpto "菜单" "spset_zh##menu"}{...}
{viewerjumpto "描述" "spset_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "spset_zh##linkspdf"}{...}
{viewerjumpto "选项" "spset_zh##options"}{...}
{viewerjumpto "示例" "spset_zh##examples"}{...}
{viewerjumpto "存储结果" "spset_zh##results"}
{help spset:English Version}
{hline}{...}
{p2colset 1 15 17 2}{...}
{p2col:{bf:[SP] spset} {hline 2}}声明数据为空间数据{p_end}
{p2col:}({mansection SP spset:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{phang}
显示当前设置

{p 12 16 2}
{cmd:spset}


{phang}
使用形状文件设置数据

{p 12 56 2}
{cmd:spshape2dta} ...{space 26}(参见 {manhelp spshape2dta SP})


{phang}
在没有形状文件的情况下设置数据

{p 12 16 2}
{cmd:spset} {it:idvar} [{cmd:,}
{help spset##options_table:{it:options}}]


{phang}
修改如何使用形状文件设置数据

{p 12 56 2}
{cmd:spset} [{it:idvar}]{cmd:,} {cmd:modify}
[{help spset##shpmodoptions:{it:shpmodoptions}}]


{phang}
修改如何在没有形状文件的情况下设置数据

{p 12 16 2}
{cmd:spset}{cmd:,} {cmd:modify}
[{help spset##modoptions:{it:modoptions}}]


{phang}
清除设置

{p 12 16 2}
{cmd:spset,} {cmd:clear}


{phang}
  {it:idvar} 是一个现有的数值变量，用于唯一标识地理单元，意味着横截面数据中的观察值和面板数据中的面板。

{phang}
   {it:shapefile} 指的是以 Stata 格式保存的形状文件，可以指定带或不带 {cmd:.dta} 后缀。此类文件通常具有 {it:name}{cmd:_shp.dta} 的形式。

{marker options_table}{...}
{synoptset 20}{...}
{synopthdr}
{synoptline}
{synopt :{opt coord(xvar yvar)}}指定 {it:xvar} 和 {it:yvar} 作为位置坐标{p_end}
{synopt :{opth coordsys:(spset##coordsys:coordsys)}}指定如何解释坐标{p_end}
{synoptline}

{marker shpmodoptions}{...}
{synopthdr:shpmodoptions}
{synoptline}
{synopt :{opth coordsys:(spset##coordsys:coordsys)}}更改如何解释坐标{p_end}
{synopt :{opt noshpfile}}断开与形状文件的链接{p_end}
{synopt :{opt replace}}用 {it:idvar} 替换当前地理标识符{p_end}
{synoptline}

{marker modoptions}{...}
{synopthdr:modoptions}
{synoptline}
{synopt :{opt coord(xvar yvar)}}用 {it:xvar} 和 {it:yvar} 替换位置坐标{p_end}
{synopt :{opth coordsys:(spset##coordsys:coordsys)}}更改如何解释坐标{p_end}
{synopt :{opt nocoord}}清除坐标设置{p_end}
{synopt :{opt shpfile(shapefile)}}建立与形状文件的链接{p_end}
{synoptline}
{p2colreset}{...}


INCLUDE help menu_spatial


{marker description}{...}
{title:描述}

{pstd}
在使用其他 Sp 命令之前，数据必须被 {cmd:spset}。{cmd:spset} 命令有以下三个用途：

{phang2}
1.  它报告数据是否被 {cmd:spset}，如果被设置，如何设置。

{phang2}
2.  它首次设置空间数据。

{phang2}
3.  它随时修改数据的 {cmd:spset} 设置。

{pstd}
被 {cmd:spset} 的数据称为 Sp 数据。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection SP spsetQuickstart:快速入门}

        {mansection SP spsetRemarksandexamples:备注和示例}

{pstd}
上述各节不包括在此帮助文档中。


{marker options}{...}
{title:选项}

{phang}
{opt coord(xvar yvar)} 和 {cmd:nocoord}
 指定坐标。{cmd:coord()} 指定记录 x 和 y 坐标或经度和
 纬度的变量。{cmd:nocoord} 指定忘记先前设置的坐标。

{pmore}
 {opt coord(xvar yvar)} 创建或替换 Sp 变量 {cmd:_CX} 和 {cmd:_CY} 的内容。
  
{pmore}
 {opt coord()} 和 {opt nocoord} 仅在数据未链接到形状文件时允许使用。如果您希望使用与形状文件提供的不同的坐标，请通过键入以下命令断开与形状文件的连接：

{pmore3}
{cmd:. spset, modify noshpfile}

{pmore}
 然后使用 {cmd:spset,} {cmd:modify} {opt coord(xvar yvar)}。
 您稍后可以使用 {cmd:spset,} {cmd:modify} {opt shpfile(shapefile)} 恢复连接。重新链接到形状文件将恢复存储在 {cmd:_CX} 和 {cmd:_CY} 中的原始坐标。

{marker coordsys}{...}
{phang}
{opt coordsys(coordsys)} 
指定如何解释坐标。您可以
指定 {cmd:coordsys()}，无论是否连接到形状文件。
{cmd:coordsys()} 语法为

            {cmd:coordsys(planar)}               (默认)
            {cmd:coordsys(latlong)}              (公里为单位)
            {cmd:coordsys(latlong, kilometers)}
            {cmd:coordsys(latlong, miles)}

{pmore}
 {cmd:coordsys(latlong)} 指定经度和纬度
 坐标。{cmd:kilometers} 和 {cmd:miles} 指定 
 计算距离时使用的单位。
{cmd:planar} 坐标的距离始终使用平面坐标的单位。

{phang}
{opt modify} 
  指定要修改现有的 {opt spset} 设置。省略 {opt modify} 意味着数据
  首次被 {opt spset}。

{pmore}
  您可以根据需要多次修改 Sp 设置。

{phang}
{opt clear} 
   清除所有 Sp 设置。它会删除之前由 {opt spset} 创建的变量 {cmd:_ID}、 
   {cmd:_CX} 和 {cmd:_CY}。

{phang}
{opt replace} 用 {it:idvar} 替换当前地理标识符。

{phang}
{opt noshpfile} 
断开与 Stata 格式形状文件的链接，通常文件名为 
{it:shapefile}{cmd:_shp.dta}。与形状文件链接的数据将会如同
从未链接过一样。在断开连接之前，您应该记下
形状文件的名称：

           {cmd:. spset}          (记下形状文件的名称)
           {cmd:. spset, modify noshpfile}

{pmore}
形状文件可能被命名为 {it:shapefile}{cmd:_shp.dta}。
如果您希望重新建立连接，稍后您需要该名称。

{phang}
{opt shpfile(shapefile)} 和 {opt drop} 用于链接或重新链接到形状文件。
要重新建立与刚刚断开的形状文件的链接，您可以键入以下命令：

            {cmd:. spset, modify shpfile(}{it:shapefile}{cmd:_shp)}

{pmore}
不仅会重新链接形状文件，而且存储在 {cmd:_CX} 和 {cmd:_CY} 中的坐标也将被恢复。

{pmore}
{opt shpfile()} 如果内存中的数据包含在形状文件中未找到的 {cmd:_ID} 值的观察值，将拒绝链接形状文件。在这种情况下，如果您愿意从内存中的数据中丢弃额外的观察值，请指定 {opt shpfile()} 和 {opt drop}。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. copy https://www.stata-press.com/data/r16/homicide1990.dta .}
{p_end}
{phang2}{cmd:. copy https://www.stata-press.com/data/r16/homicide1990_shp.dta .}
{p_end}
{phang2}{cmd:. use homicide1990}
{p_end}

{pstd}检查数据的 Sp 设置{p_end}
{phang2}{cmd:. spset}
{p_end}

{pstd}将坐标转换为经纬度并测量
以英里为单位的距离{p_end}
{phang2}{cmd:. spset, modify coordsys(latlong, miles)}
{p_end}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:spset} 将以下内容存储在 {cmd:r()} 中：

{synoptset 24 tabbed}{...}
{p2col 5 24 28 2: 宏}{p_end}
{synopt:{cmd:r(sp_ver)}}{cmd:1}{p_end}
{synopt:{cmd:r(sp_id)}}{cmd:_ID}{p_end}
{synopt:{cmd:r(sp_id_var)}}{it:varname} 或空{p_end}
{synopt:{cmd:r(sp_shp_dta_path)}}{cmd:_shp.dta} 文件的路径{p_end}
{synopt:{cmd:r(sp_shp_dta)}}{it:shapefile}{cmd:_shp.dta}{p_end}
{synopt:{cmd:r(sp_cx)}}{cmd:_CX} 或空{p_end}
{synopt:{cmd:r(sp_cy)}}{cmd:_CY} 或空{p_end}
{synopt:{cmd:r(sp_coord_sys)}}{cmd:planar} 或 {cmd:latlong}{p_end}
{synopt:{cmd:r(sp_coord_sys_dunit)}}{cmd:kilometers} 或 {cmd:miles} 如果
{cmd:r(sp_coord_sys)} = {cmd:latlong}{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <spset.sthlp>}