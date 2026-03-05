{smcl}
{* *! version 1.0.0  21jun2019}{...}
{viewerdialog lassoinfo "dialog lassoinfo"}{...}
{vieweralsosee "[LASSO] lassoinfo" "mansection lasso lassoinfo"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[LASSO] lassoselect" "help lassoselect_zh"}{...}
{vieweralsosee "[LASSO] lasso postestimation" "help lasso postestimation"}{...}
{vieweralsosee "[LASSO] lasso inference postestimation" "help lasso inference postestimation"}{...}
{viewerjumpto "Syntax" "lassoinfo_zh##syntax"}{...}
{viewerjumpto "Menu" "lassoinfo_zh##menu"}{...}
{viewerjumpto "Description" "lassoinfo_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "lassoinfo_zh##linkspdf"}{...}
{viewerjumpto "Option" "lassoinfo_zh##option"}{...}
{viewerjumpto "Examples" "lassoinfo_zh##examples"}{...}
{viewerjumpto "Stored results" "lassoinfo_zh##results"}
{help lassoinfo:English Version}
{hline}{...}
{p2colset 1 22 24 2}{...}
{p2col:{bf:[LASSO] lassoinfo} {hline 2}}显示有关 lasso 估计结果的信息{p_end}
{p2col:}({mansection LASSO lassoinfo:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{pstd}
用于所有 lasso 估计结果

{p 8 17 2}
{cmd:lassoinfo} [{it:namelist}]


{pstd}
用于 {cmd:xpo} 估计结果

{p 8 17 2}
{cmd:lassoinfo} [{it:namelist}] [{cmd:, each}]


{phang}
{it:namelist} 是存储估计结果的名称、名称列表、{cmd:_all} 或 {cmd:*}。 {cmd:_all} 和 {cmd:*} 意义相同。请参见 {manhelp estimates_store R:estimates store}。


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 后期估计}


{marker description}{...}
{title:描述}

{pstd}
{cmd:lassoinfo} 显示由所有拟合 lasso 的命令所适配的 lasso 的基本信息。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection LASSO lassoinfoQuickstart:快速入门}

        {mansection LASSO lassoinfoRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker option}{...}
{title:选项}

{phang}
{cmd:each} 仅适用于 {cmd:xpo} 模型。它指定为每个交叉拟合折叠显示每个 lasso 的信息。如果指定了 {cmd:resample}，则为每个重新抽样中的每个交叉拟合折叠显示每个 lasso 的信息。默认情况下，显示的是 lasso 的汇总统计信息。


{marker examples}{...}
{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse breathe}{p_end}
{phang2}{cmd:. dsregress react no2_class no2_home,}
	{cmd:controls(i.(meducation overweight msmoke sex) noise sev* age)}

{pstd}显示每个 lasso 中选择的变量数量{p_end}
{phang2}{cmd:. lassoinfo}{p_end}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse nlsy80, clear}{p_end}
{phang2}{cmd:. xpoivregress wage exper}
    {cmd:(educ = i.pcollege##c.(meduc feduc) i.urban sibs iq),}
    {cmd:controls(c.age##c.age tenure kww i.(married black south urban))}

{pstd}显示每个 lasso 中选择的变量数量{p_end}
{phang2}{cmd:. lassoinfo}{p_end}

    {hline}


{marker results}{...}
{title:存储的结果}

{pstd}
{cmd:lassoinfo} 将以下内容存储到 {cmd:r()} 中：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:r(names)}}显示的估计结果名称{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:r(table)}}包含显示的数值的矩阵{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <lassoinfo.sthlp>}