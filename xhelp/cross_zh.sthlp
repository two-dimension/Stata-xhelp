{smcl}
{* *! version 1.1.7  19oct2017}{...}
{viewerdialog cross "dialog cross"}{...}
{vieweralsosee "[D] cross" "mansection D cross"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] append" "help append_zh"}{...}
{vieweralsosee "[D] fillin" "help fillin_zh"}{...}
{vieweralsosee "[D] joinby" "help joinby_zh"}{...}
{vieweralsosee "[D] merge" "help merge_zh"}{...}
{vieweralsosee "[D] save" "help save_zh"}{...}
{viewerjumpto "Syntax" "cross_zh##syntax"}{...}
{viewerjumpto "Menu" "cross_zh##menu"}{...}
{viewerjumpto "Description" "cross_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "cross_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "cross_zh##remarks"}{...}
{viewerjumpto "Example" "cross_zh##example"}
{help cross:English Version}
{hline}{...}
{p2colset 1 14 16 2}{...}
{p2col:{bf:[D] cross} {hline 2}}形成两个数据集的每一对组合{p_end}
{p2col:}({mansection D cross:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

	{cmd:cross} {cmd:using} {it:{help filename_zh}}


{marker menu}{...}
{title:菜单}

{phang}
{bf:数据 > 合并数据集 > 形成两个数据集的每一对组合}


{marker description}{...}
{title:描述}

{pstd}
{opt cross} 形成内存中的数据与 {it:{help filename_zh}} 中数据的每一对组合。如果 {it:filename} 指定时没有后缀，则假定为 {opt .dta}。  


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection D crossQuickstart:快速入门}

        {mansection D crossRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{pstd}
此命令很少使用；另见 {manhelp joinby D}、{manhelp merge D} 和 {manhelp append D}。

{pstd}
交叉是指以所有可能的方式合并两个数据集。即，内存中的数据的第一条观测值与 {it:filename} 中的每一条观测值合并，接着是第二条，如此类推。因此结果将包含 N_1 N_2 条观测值，其中 N_1 和 N_2 分别是内存中和 {it:filename} 中的观测值数量。

{pstd}
通常，这些数据集没有共同的变量。如果有，符合条件的变量将仅采用内存中数据的值。


{marker example}{...}
{title:示例}

{pstd}创建 {cmd:sex} 数据集{p_end}

        {cmd:. input str6 sex}

                   sex
          1.  {cmd:male}
          2.  {cmd:female}
          3.  {cmd:end}

{pstd}保存 {cmd:sex} 数据集{p_end}
{phang2}{cmd:. save sex}

{pstd}从内存中删除数据{p_end}
{phang2}{cmd:. drop _all}

{pstd}创建 {cmd:agecat} 数据集{p_end}

        {cmd:. input agecat}

                   agecat
          1.  {cmd:20}
          2.  {cmd:30}
          3.  {cmd:40}
          4.  {cmd:end}

{pstd}形成 {cmd:agecat} 与 {cmd:sex} 的每一对组合{p_end}
{phang2}{cmd:. cross using sex}

{pstd}列出结果{p_end}
{phang2}{cmd:. list}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <cross.sthlp>}