{smcl}
{* *! version 2.1.4  14may2018}{...}
{viewerdialog "SEM Builder" "stata sembuilder"}{...}
{vieweralsosee "[SEM] sem path notation extensions" "mansection SEM sempathnotationextensions"}{...}
{vieweralsosee "[SEM] Intro 2" "mansection SEM Intro2"}{...}
{vieweralsosee "[SEM] Intro 6" "mansection SEM Intro6"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[SEM] sem" "help sem_command_zh"}{...}
{vieweralsosee "[SEM] sem and gsem path notation" "help sem and gsem path notation"}{...}
{viewerjumpto "Syntax" "sem_path_notation_extensions_zh##syntax"}{...}
{viewerjumpto "Description" "sem_path_notation_extensions_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "sem_path_notation_extensions_zh##linkspdf"}{...}
{viewerjumpto "Options" "sem_path_notation_extensions_zh##options"}{...}
{viewerjumpto "Examples" "sem_path_notation_extensions_zh##examples"}
{help sem_path_notation_extensions:English Version}
{hline}{...}
{p2colset 1 39 41 2}{...}
{p2col:{bf:[SEM] sem path notation extensions} {hline 2}}路径图的命令语法{p_end}
{p2col:}({mansection SEM sempathnotationextensions:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{cmd:sem} {it:paths} ... [{cmd:,} {opt covariance()} {opt variance()} 
            {opt means()} {opth group(varname)}]

{p 8 12 2}
{cmd:sem} {it:paths} ... [{cmd:,} {opt covstructure()}
            {opt means()} {opth group(varname)}]

{pstd}
{it:paths} 指定模型中变量之间的直接路径。

{pstd}
要拟合的模型由 {it:paths}、 {opt covariance()}、 {opt variance()}、
{opt covstructure()} 和 {opt means()} 完全描述。

{pstd}
在指定 {cmd:group()} 选项时，这些元素的语法会被修改（泛化）。


{marker description}{...}
{title:描述}

{pstd}
此条目仅涉及 {cmd:sem}。

{pstd}
描述你的SEM的命令语法完全由 {it:paths}、{opt covariance()}、{opt variance()}、
{opt covstructure()} 和 {opt means()} 指定。 具体如何工作在
{helpb sem and gsem path notation:[SEM] sem and gsem path notation} 和
{helpb sem and gsem option covstructure:[SEM] sem and gsem option covstructure()} 中有介绍。
在阅读此节之前请参见这些部分。

{pstd}
此条目涉及 {cmd:sem} 独有的路径特性，且与用于比较不同组的 {cmd:group()} 选项有关。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection SEM sempathnotationextensionsRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{opt covariance()}、{opt variance()} 和
{opt means()} 在
{helpb sem and gsem path notation:[SEM] sem and gsem path notation} 中有描述。

{phang}
{opt covstructure()} 在
{helpb sem and gsem option covstructure:[SEM] sem and gsem option covstructure()} 中有描述。

{phang}
{opth group(varname)} 
允许使用 {it:paths}、{cmd:covariance()}、{cmd:variance()}、
{cmd:covstructure()} 和 {cmd:means()} 指定的模型与由 {it:varname} 定义的组自动泛化（交互）；参见 
{manlink SEM Intro 6}。 当指定 {cmd:group()} 时，{it:paths} 和 {cmd:covariance()}、{cmd:variance()}、{cmd:covstructure()} 和 {cmd:means()} 的参数语法会增加额外的语法元素。


{marker examples}{...}
{title:示例}

{title:示例：指定多个组模型}

{pstd}设置{p_end}
{phang2}{cmd:. sysuse auto}{p_end}

{pstd}简单回归模型{p_end}
{phang2}{cmd:. sem (mpg <- turn trunk length)}{p_end}

{pstd}指定组{p_end}
{phang2}{cmd:. sem (mpg <- turn trunk length), group(foreign)}{p_end}

{pstd}上述的替代表示法{p_end}
{phang2}{cmd:. sem (0: mpg <- turn trunk length)}{break}
	{cmd: (1: mpg <- turn trunk length), group(foreign)}{p_end}


{title:示例：与组一起指定 means()、covariance() 和 variance() 选项}

{pstd}设置{p_end}
{phang2}{cmd:. webuse sem_2fmmby}{p_end}

{pstd}具有组的测量模型{p_end}
{phang2}{cmd:. sem (Peer -> peerrel1 peerrel2 peerrel3 peerrel4)}{break}
        {cmd:(Par -> parrel1 parrel2 parrel3 parrel4), group(grade)}{p_end}

{pstd}约束 {cmd:Peer} 的均值为 0 在两个组中{p_end}
{phang2}{cmd:. sem (Peer -> peerrel1 peerrel2 peerrel3 peerrel4)}{break}
        {cmd:(Par -> parrel1 parrel2 parrel3 parrel4),}{break}
 	{cmd:group(grade) mean(Peer@0)}{p_end}

{pstd}与上面相同{p_end}
{phang2}{cmd:. sem (Peer -> peerrel1 peerrel2 peerrel3 peerrel4)}{break}
        {cmd:(Par -> parrel1 parrel2 parrel3 parrel4),}{break}
        {cmd:group(grade) mean(1:Peer@0) mean(2:Peer@0)}{p_end}

{pstd}估计组 1 中 {cmd:parrel1} 和 {cmd:parrel2} 的误差间的协方差{p_end}
{phang2}{cmd:. sem (Peer -> peerrel1 peerrel2 peerrel3 peerrel4)}{break}
        {cmd:(Par -> parrel1 parrel2 parrel3 parrel4),}{break}
        {cmd:group(grade) covariance(1:e.parrel1*e.parrel2)}{p_end}

{pstd}约束 {cmd:Par} 的方差在两个组中相等{p_end}
{phang2}{cmd:. sem (Peer -> peerrel1 peerrel2 peerrel3 peerrel4)}{break}
        {cmd:(Par -> parrel1 parrel2 parrel3 parrel4),}{break}
        {cmd:group(grade) variance(1:Par@v) variance(2:Par@v)}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <sem_path_notation_extensions.sthlp>}