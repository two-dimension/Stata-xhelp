{smcl}
{* *! version 1.1.5  30nov2018}{...}
{viewerdialog estat "dialog regress_estat, message(-moran-)"}{...}
{vieweralsosee "[SP] estat moran" "mansection SP estatmoran"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[SP] Intro" "mansection SP Intro"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[SP] spmatrix create" "help spmatrix create"}{...}
{vieweralsosee "[SP] spregress" "help spregress_zh"}{...}
{vieweralsosee "[R] regress" "help regress_zh"}{...}
{viewerjumpto "语法" "estat moran##syntax"}{...}
{viewerjumpto "菜单" "estat moran##menu_estat"}{...}
{viewerjumpto "描述" "estat moran##description"}{...}
{viewerjumpto "PDF文档链接" "estat_moran_zh##linkspdf"}{...}
{viewerjumpto "选项" "estat moran##option"}{...}
{viewerjumpto "示例" "estat moran##examples"}{...}
{viewerjumpto "存储结果" "estat moran##results"}
{help estat_moran:English Version}
{hline}{...}
{p2colset 1 21 23 2}{...}
{p2col:{bf:[SP] estat moran} {hline 2}}Moran残差相关性检验
与邻近残差的关系{p_end}
{p2col:}({mansection SP estatmoran:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 14 2}
{cmd:estat} {cmd:moran}{cmd:,} 
{opt err:orlag(spmatname)}
[{opt err:orlag(spmataname)} ...]


INCLUDE help menu_estat


{marker description}{...}
{title:描述}

{pstd}
{cmd:estat moran} 是一种后验检验，可以在使用 {help regress_zh} 处理空间数据后运行。 它执行Moran残差的空间相关性检验。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection SP estatmoranQuickstart:快速开始}

        {mansection SP estatmoranRemarksandexamples:备注和示例}

        {mansection SP estatmoranMethodsandformulas:方法和公式}

{pstd}
上述部分未包含在该帮助文件中。


{marker option}{...}
{title:选项}

{phang}
{opt errorlag(spmatname)} 指定一个空间加权矩阵，该矩阵定义将被测试的误差空间滞后。 {cmd:errorlag()} 是必需的。此选项可重复，以允许测试更高阶的误差滞后。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. copy https://www.stata-press.com/data/r16/homicide1990.dta .}
{p_end}
{phang2}{cmd:. copy https://www.stata-press.com/data/r16/homicide1990_shp.dta .}
{p_end}
{phang2}{cmd:. use homicide1990}
{p_end}
{phang2}{cmd:. spset}
{p_end}

{pstd}创建带有默认谱归一化的邻接加权矩阵{p_end}
{phang2}{cmd:. spmatrix create contiguity W}

{pstd}进行线性回归拟合{p_end}
{phang2}{cmd:. regress hrate}

{pstd}进行Moran检验{p_end}
{phang2}{cmd:. estat moran, errorlag(W)}

{pstd}创建一个反距离加权矩阵{p_end}
{phang2}{cmd:. spmatrix create idistance M}

{pstd}进行联合检验以确定是否指定了空间依赖的加权矩阵{p_end}
{phang2}{cmd:. estat moran, errorlag(W) errorlag(M)}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:estat moran} 在 {cmd:r()} 中存储以下内容：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:r(chi2)}}卡方{p_end}
{synopt:{cmd:r(df)}}卡方的自由度{p_end}
{synopt:{cmd:r(p)}}模型检验的p值{p_end}

{p2col 5 15 19 2: 宏}{p_end}
{synopt:{cmd:r(elmat)}}用于指定误差滞后的加权矩阵{p_end}
{p2colreset}{...}


{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <estat_moran.sthlp>}