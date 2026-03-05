{smcl}
{* *! version 1.1.11  30nov2018}{...}
{viewerdialog pctile "dialog pctile"}{...}
{viewerdialog xtile "dialog xtile"}{...}
{vieweralsosee "[D] pctile" "mansection D pctile"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] centile" "help centile_zh"}{...}
{vieweralsosee "[R] summarize" "help summarize_zh"}{...}
{viewerjumpto "Syntax" "pctile_zh##syntax"}{...}
{viewerjumpto "Menu" "pctile_zh##menu"}{...}
{viewerjumpto "Description" "pctile_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "pctile_zh##linkspdf"}{...}
{viewerjumpto "Options" "pctile_zh##options"}{...}
{viewerjumpto "Examples" "pctile_zh##examples"}{...}
{viewerjumpto "Stored results" "pctile_zh##results"}
{help pctile:English Version}
{hline}{...}
{p2colset 1 15 17 2}{...}
{p2col:{bf:[D] pctile} {hline 2}}创建包含百分位数的变量{p_end}
{p2col:}({mansection D pctile:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{phang}
创建包含百分位数的变量

{p 8 15 2}
{cmd:pctile}
{dtype}
{newvar}
{cmd:=} {it:{help exp_zh}}
{ifin}
[{it:{help pctile##weight:weight}}]
[{cmd:,}
{it:{help pctile##pctile_options:pctile_options}}]


{phang}
创建包含分位数类别的变量

{p 8 15 2}
{cmd:xtile}
{newvar} {cmd:=} {it:{help exp_zh}}
{ifin}
[{it:{help pctile##weight:weight}}]
[{cmd:,} {it:{help pctile##xtile_options:xtile_options}}]


{phang}
计算百分位数并将其存储在 r()

{p 8 15 2}
{cmd:_pctile}
{varname}
{ifin}
[{it:{help pctile##weight:weight}}]
[{cmd:,} {it:{help pctile##_pctile_options:_pctile_options}}]


{synoptset 22 tabbed}{...}
{marker pctile_options}{...}
{synopthdr :pctile_options}
{synoptline}
{syntab :主要}
{synopt :{opt n:quantiles(#)}}分位数的数量；默认值为
{cmd:nquantiles(2)}{p_end}
{synopt :{opth g:enp(newvar:newvarp)}}生成
{it:newvarp} 变量，其中包含百分比{p_end}
{synopt :{opt alt:def}}使用替代公式计算百分位数{p_end}
{synoptline}

{synoptset 22 tabbed}{...}
{marker xtile_options}{...}
{synopthdr :xtile_options}
{synoptline}
{syntab :主要}
{synopt :{opt n:quantiles(#)}}分位数的数量；默认值为
{cmd:nquantiles(2)}{p_end}
{synopt :{opth c:utpoints(varname)}}使用 {it:varname} 的值作为切点
{p_end}
{synopt :{opt alt:def}}使用替代公式计算百分位数{p_end}
{synoptline}

{synoptset 22}{...}
{marker _pctile_options}{...}
{synopthdr :_pctile_options}
{synoptline}
{synopt :{opt n:quantiles(#)}}分位数的数量；默认值为
{cmd:nquantiles(2)}{p_end}
{synopt :{opth p:ercentiles(numlist)}}计算对应于
指定百分比的百分位数{p_end}
{synopt :{opt alt:def}}使用替代公式计算百分位数{p_end}
{synoptline}

{marker weight}{...}
{p 4 6 2}
允许使用 {opt aweight}s、 {opt fweight}s 和 {opt pweight}s 
（参见 {manhelp weight U:11.1.6 weight}），但在指定 
{opt altdef} 选项时不允许使用权重。
{p_end}


{marker menu}{...}
{title:菜单}

    {title:pctile} 

{phang2}
{bf:统计 > 汇总、表格和检验 >}
    {bf:汇总和描述性统计 > 创建百分位数变量}

    {title:xtile}

{phang2}
{bf:统计 > 汇总、表格和检验 >}
     {bf:汇总和描述性统计 > 创建分位数变量}


{marker description}{...}
{title:描述}

{pstd}
{opt pctile} 创建一个新变量，其中包含 
{it:{help exp_zh}} 的百分位数，其中表达式 {it:exp} 通常只是另一个
变量。

{pstd}
{opt xtile} 创建一个新变量，通过其分位数对 
{it:exp} 进行分类。如果指定了 {opth cutpoints(varname)} 选项，
则使用 {it:varname} 的值作为类别切点对 {it:exp} 进行分类。
例如，{it:varname} 可能包含另一个变量的百分位数，通过 {opt pctile} 
生成。

{pstd}
{opt _pctile} 是一个程序员命令，可以计算多达 4,096 个百分位数，
并将结果放入 {hi:r()}; 参见 {findalias frresult}。
{opt summarize, detail} 计算一些百分位数
（1、5、10、25、50、75、90、95 和 99百分位数）；参见 {manhelp summarize R}。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection D pctileQuickstart:快速入门}

        {mansection D pctileRemarksandexamples:备注和示例}

        {mansection D pctileMethodsandformulas:方法和公式}

{pstd}
以上各部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主要}

{phang}{opt nquantiles(#)} 指定分位数的数量。
它计算对应于百分比 100*k/m 的百分位数，
其中 k=1, 2, …, m-1，m={it:#}。例如， {cmd:nquantiles(10)}
请求计算第 10、20、…、90 百分位数。默认值为
{cmd:nquantiles(2)}；即计算中位数。

{phang}{opth "genp(newvar:newvarp)"}（仅适用于 {cmd:pctile}）
指定生成包含对应于百分位数的百分比的新变量。

{phang}{opt altdef} 使用计算百分位数的替代公式。
默认方法是通过使用
平均值来反转经验分布函数，当该函数是平坦的（默认值与
{cmd:summarize} 使用的方法相同；见 {manhelp summarize R}）。
替代公式使用插值方法。请参见 
{mansection D pctileMethodsandformulas:{it:方法和公式}} 在
{bf:[D] pctile} 中。指定 {opt altdef} 时不能使用权重。

{phang}{opth cutpoints(varname)}（仅适用于 {cmd:xtile}）请求 
{opt xtile} 使用 {it:varname} 的值，而不是分位数，作为类别的切点。
所有 {it:varname} 的值都将被使用，无论任何 {opt if}
或 {opt in} 限制；见 
{mansection D pctileRemarksandexamplestechnote:技术说明} 在
{bf:[D] pctile} 中。

{phang}{opth percentiles(numlist)}（仅适用于 {cmd:_pctile}）请求
对应于指定百分比的百分位数。
百分位数放置在 {cmd:r(r1)}, {cmd:r(r2)}, … 等等。
例如， {cmd:percentiles(10(20)90)} 请求计算第 10、第 30、第 50、
第 70 和第 90 百分位数，并将其放入
{cmd:r(r1)}, {cmd:r(r2)}, {cmd:r(r3)}, {cmd:r(r4)} 和 {cmd:r(r5)}。
最多可以请求 4,096（包括）个百分位数。
有关 numlist 语法，请参见 {help nlist_zh}。  


{marker examples}{...}
{title:示例}

    {hline}
    设置
{phang2}{cmd:. sysuse auto}

{pstd}创建变量 {cmd:pct}，其中包含 {cmd:mpg} 的十分位数{p_end}
{phang2}{cmd:. pctile pct = mpg, nq(10)}{p_end}

{pstd}列出结果数据{p_end}
{phang2}{cmd:. list pct in 1/10}

{pstd}设置{p_end}
{phang2}{cmd:. drop pct}

{pstd}创建变量 {cmd:pct}，包含 {cmd:mpg} 的十分位数， 
并创建变量 {cmd:percent}，包含百分比{p_end}
{phang2}{cmd:. pctile pct = mpg, nq(10) genp(percent)}{p_end}

{pstd}列出结果数据{p_end}
{phang2}{cmd:. list percent pct in 1/10}

{pstd}设置{p_end}
{phang2}{cmd:. drop pct percent}

{pstd}创建 {cmd:pct}，包含加权 {cmd:mpg} 的十分位数，
并创建变量 {cmd:percent}，包含百分比{p_end}
{phang2}{cmd:. pctile pct = mpg [w=weight], nq(10) genp(percent)}

{pstd}列出结果数据{p_end}
{phang2}{cmd:. list percent pct in 1/10}

    {hline}
    设置
{phang2}{cmd:. webuse bp1, clear}

{pstd}列出变量 {cmd:bp}{p_end}
{phang2}{cmd:. list bp, sep(4)}

{pstd}创建变量 {cmd:quart}，包含 {cmd:bp} 的四分位数{p_end}
{phang2}{cmd:. xtile quart = bp, nq(4)}{p_end}

{pstd}列出变量 {cmd:bp} 和 {cmd:quart}{p_end}
{phang2}{cmd:. list bp quart, sep(4)}

{pstd}设置{p_end}
        {cmd:. input class}

                   class
          1.  {cmd:100}
          2.  {cmd:110}
          3.  {cmd:120}
          4.  {cmd:130}
          5.  {cmd:end}

{pstd}创建变量 {cmd:category}，使用 {cmd:class} 的值对 {cmd:bp} 进行分类{p_end}
{phang2}{cmd:. xtile category = bp, cut(class)}{p_end}

{pstd}列出变量 {cmd:bp}、{cmd:class} 和 {cmd:category}{p_end}
{phang2}{cmd:. list bp class category, sep(4)}

    {hline}
    设置
{phang2}{cmd:. sysuse auto, clear}

{pstd}计算 {cmd:weight} 的十分位数并将其存储在
{cmd:r(r}{it:#}{cmd:)}{p_end}
{phang2}{cmd:. _pctile weight, nq(10)}

{pstd}列出存储的结果{p_end}
{phang2}{cmd:. return list}

{pstd}计算指定百分位数的 {cmd:weight}，并将其存储在 
{cmd:r(r}{it:#}{cmd:)}{p_end}
{phang2}{cmd:. _pctile weight, p(10, 33.333, 45 50, 55, 66.667, 90)}

{pstd}列出存储的结果{p_end}
{phang2}{cmd:. return list}{p_end}
    {hline}


{marker results}{...}
{title:存储的结果}

{pstd}
{cmd:pctile} 和 {cmd:_pctile} 将以下内容存储在 {cmd:r()}:

{synoptset 10 tabbed}{...}
{p2col 5 10 14 2:标量}{p_end}
{synopt:{cmd:r(r}{it:#}{cmd:)}}请求的百分位数 {it:#} 的值{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <pctile.sthlp>}