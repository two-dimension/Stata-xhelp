{smcl}
{* *! version 1.0.0  20oct2017}{...}
{viewerdialog dyngen "dialog dyngen"}{...}
{vieweralsosee "[D] dyngen" "mansection D dyngen"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] generate" "help generate_zh"}{...}
{findalias asfrdatatypes}{...}
{findalias asfrexp}{...}
{viewerjumpto "Syntax" "dyngen_zh##syntax"}{...}
{viewerjumpto "Menu" "dyngen_zh##menu"}{...}
{viewerjumpto "Description" "dyngen_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "dyngen_zh##linkspdf"}{...}
{viewerjumpto "Option" "dyngen_zh##option"}{...}
{viewerjumpto "Example" "dyngen_zh##example"}
{help dyngen:English Version}
{hline}{...}
{p2colset 1 15 17 2}{...}
{p2col:{bf:[D] dyngen} {hline 2}}动态生成变量的新值{p_end}
{p2col:}({mansection D dyngen:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法} 

        {cmd:dyngen} {cmd:{c -(}}
            {cmd:update} {varname}_1 {cmd:=} {it:{help exp_zh}} [{it:{help if_zh}}] [{cmd:,} {opt m:issval(#)}]
            .
            .
            .
            {cmd:update} {varname}_N {cmd:=} {it:{help exp_zh}} [{it:{help if_zh}}] [{cmd:,} {opt m:issval(#)}]
        {cmd:{c )-}} {ifin}

{phang}
{varname}_n, n = 1, ..., N, 必须已存在于数据集中。{p_end}
{phang}
{it:exp} 必须是有效的表达式，并且可以包括时间序列运算符；请参见
{findalias frtsvarlists}.


{marker menu}{...}
{title:菜单}

{phang}
{bf:数据 > 创建或更改数据 > 动态生成新值}


{marker description}{...}
{title:描述}

{pstd}
{cmd:dyngen} 在两个或多个变量之间相互依赖的滞后值时，替换变量的值。 
当必须为整个变量集计算每个观察值的值，然后才能转到下一个观察值时，请使用 {cmd:dyngen}。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection D dyngenRemarksandexamples:备注和示例}

{pstd}
以上部分不包含在此帮助文件中。


{marker option}{...}
{title:选项}

{phang}
{opt missval(#)} 指定在执行计算时用作缺失值的替代值。 
此选项在引用在数据之前存在的滞后时特别有用。


{marker example}{...}
{title:示例}

{pstd}设置{p_end}
        {cmd:. input time x1 x2}

		time 	x1	x2
          1.  {cmd:1 3 1}
          2.  {cmd:2 4 4}
          3.  {cmd:3 5 2}
          4.  {cmd:4 5 1}
          5.  {cmd:5 2 1}
          6.  {cmd:end}


{pstd}将 {cmd:x1} 和 {cmd:x2} 复制到 {cmd:d1} 和 {cmd:d2}，它们将存储
动态更新的值{p_end}
{phang2}{cmd:. generate d1=x1}{p_end}
{phang2}{cmd:. generate d2=x2}

{pstd}总结数据以查找均值{p_end}
{phang2}{cmd:. summarize d1 d2}

{pstd}动态生成变量 {cmd:d1} 和 {cmd:d2} 的新值，
用总结中的均值替代缺失值{p_end}
        {cmd:. dyngen {c -(}}
          1.  {cmd:update d1 = .4*d1 + .1*d2[_n-1], missval(12.2)}
          2.  {cmd:update d2 = .2*d1[_n-1] + .3*d2[_n-1], missval(277)}
          3.  {cmd:{c )-}}

{pstd}列出结果{p_end}
{phang2}{cmd:. list x1 x2 d*}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <dyngen.sthlp>}