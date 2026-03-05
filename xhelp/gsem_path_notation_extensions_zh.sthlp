{smcl}
{* *! version 1.0.6  14may2018}{...}
{viewerdialog "SEM Builder" "stata sembuilder"}{...}
{vieweralsosee "[SEM] gsem 路径符号扩展" "mansection SEM gsempathnotationextensions"}{...}
{vieweralsosee "[SEM] 入门 2" "mansection SEM Intro2"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[SEM] gsem" "help gsem_command_zh"}{...}
{vieweralsosee "[SEM] gsem 组选项" "help gsem group options"}{...}
{vieweralsosee "[SEM] gsem 潜类选项" "help gsem lclass options"}{...}
{vieweralsosee "[SEM] sem 和 gsem 路径符号" "help sem and gsem path notation"}{...}
{viewerjumpto "语法" "gsem_path_notation_extensions_zh##syntax"}{...}
{viewerjumpto "描述" "gsem_path_notation_extensions_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "gsem_path_notation_extensions_zh##linkspdf"}{...}
{viewerjumpto "选项" "gsem_path_notation_extensions_zh##options"}{...}
{viewerjumpto "示例" "gsem_path_notation_extensions_zh##examples"}
{help gsem_path_notation_extensions:English Version}
{hline}{...}
{p2colset 1 40 42 2}{...}
{p2col:{bf:[SEM] gsem 路径符号扩展} {hline 2}}命令语法用于路径图{p_end}
{p2col:}({mansection SEM gsempathnotationextensions:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{cmd:gsem} {it:paths} ... [{cmd:,} {opt covariance()} {opt variance()} 
            {opt means()} {opt group()} {opt lclass()}]

{p 8 12 2}
{cmd:gsem} {it:paths} ... [{cmd:,} {opt covstructure()}
            {opt means()} {opt group()} {opt lclass()}]

{pstd}
{it:paths} 指定模型中变量之间的直接路径。

{pstd}
要拟合的模型由 {it:paths}、{opt covariance()}、{opt variance()}、
{opt covstructure()} 和 {opt means()} 完全描述。

{pstd}
当指定 {cmd:group()} 或 {cmd:lclass()} 选项时，这些元素的语法会有所修改。


{marker description}{...}
{title:描述}

{pstd}
此条目仅涉及 {cmd:gsem}。

{pstd}
描述广义结构方程模型的命令语法完全由 {it:paths}、{opt covariance()}、
{opt variance()}、{opt covstructure()} 和 {opt means()} 指定；见
{helpb sem and gsem path notation:[SEM] sem 和 gsem 路径符号} 和
{helpb sem and gsem option covstructure:[SEM] sem 和 gsem 选项 covstructure()}。

{pstd}
使用 {cmd:gsem} 时，符号扩展允许广义线性响应变量、多级潜在变量、分类潜在变量和组间比较。这是本条目的主题。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection SEM gsempathnotationextensionsRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{opt covariance()}、{opt variance()} 和
{opt means()} 的描述见
{helpb sem and gsem path notation:[SEM] sem 和 gsem 路径符号}。

{phang}
{opt covstructure()} 的描述见
{helpb sem and gsem option covstructure:[SEM] sem 和 gsem 选项 covstructure()}。

{phang}
{opth group(varname)} 允许将使用 {it:paths}、{cmd:covariance()}、{cmd:variance()}、
{cmd:covstructure()} 和 {cmd:means()} 指定的模型自动与由 {it:varname} 定义的组进行交互；
见 {manlink SEM Intro 6}。
当指定 {opt group()} 时，{it:paths} 的语法和 {opt covariance()}、{opt variance()}、{opt covstructure()} 和 {opt means()} 的参数会增加一个额外的语法部分。

{phang}
{opt lclass()} 允许使用 {it:paths}、{opt covariance()}、{opt variance()} 和 {opt covstructure()} 指定的模型自动与分类潜在变量进行交互；
见 {manlink SEM Intro 2}。
当指定 {opt lclass()} 时，{it:paths} 的语法和 {opt covariance()}、{opt variance()} 和 {opt covstructure()} 的参数会增加一个额外的语法部分。


{marker examples}{...}
{title:示例}

{title:示例：指定家庭和链接选项}

{pstd}设置{p_end}
{phang2}{cmd:. webuse gsem_melanoma}{p_end}

{pstd}拟合一个负二项分布家庭和对数链接的模型{p_end}
{phang2}{cmd:. gsem (deaths <- uv), family(nbinomial) link(log)}{p_end}

{pstd}与上面相同的模型{p_end}
{phang2}{cmd:. gsem (deaths <- uv), nbreg}{p_end}


{title:示例：指定具有嵌套效应的多级模型}

{pstd}拟合一个具有随机截距的两级负二项模型
用于区域{p_end}
{phang2}{cmd:. gsem (deaths <- uv M1[region]), nbreg}{p_end}

{pstd}拟合一个具有随机截距的三层负二项模型，其中国家和地区嵌套在国家中{p_end}
{phang2}{cmd:. gsem (deaths <- uv M1[nation] M2[nation>region]), nbreg}{p_end}


{title:示例：指定具有交叉效应的多级模型}

{pstd}设置{p_end}
{phang2}{cmd:. webuse gsem_fifeschool}

{pstd}拟合一个具有交叉随机效应的模型，用于小学和中学{p_end}
{phang2}{cmd:. gsem (attain <- i.sex M1[pid] M2[sid])}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <gsem_path_notation_extensions.sthlp>}