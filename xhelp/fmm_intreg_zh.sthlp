{smcl}
{* *! version 1.0.6  04oct2018}{...}
{viewerdialog "fmm: intreg" "dialog fmm, message(-intreg-)"}{...}
{vieweralsosee "[FMM] fmm: intreg" "mansection FMM fmmintreg"}{...}
{vieweralsosee "[FMM] fmm intro" "mansection FMM fmmintro"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[FMM] fmm" "help fmm_zh"}{...}
{vieweralsosee "[FMM] fmm postestimation" "help fmm postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[FMM] Glossary" "help fmm_glossary_zh"}{...}
{vieweralsosee "[R] intreg" "help intreg_zh"}{...}
{vieweralsosee "[SVY] svy estimation" "help svy estimation"}{...}
{viewerjumpto "Syntax" "fmm_intreg_zh##syntax"}{...}
{viewerjumpto "Menu" "fmm_intreg_zh##menu"}{...}
{viewerjumpto "Description" "fmm_intreg_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "fmm_intreg_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "fmm_intreg_zh##remarks"}{...}
{viewerjumpto "Example" "fmm_intreg_zh##example"}{...}
{viewerjumpto "Stored results" "fmm_intreg_zh##results"}
{help fmm_intreg:English Version}
{hline}{...}
{p2colset 1 22 24 2}{...}
{p2col :{bf:[FMM] fmm: intreg} {hline 2}}有限混合区间回归模型{p_end}
{p2col:}({mansection FMM fmmintreg:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{pstd}
基本语法

{p 8 15 2}
{cmd:fmm} {it:#}{cmd::} {cmd:intreg}
{help depvar:{it:depvar_lower}}
{help depvar:{it:depvar_upper}}
[{indepvars}] [{cmd:,} {it:options}]


{pstd}
完整语法

{p 8 15 2}
{cmd:fmm} {it:#} {ifin}
[{help fmm intreg##weight:{it:weight}}]
[{cmd:,} {it:{help fmm_intreg##fmmopts:fmmopts}}]{cmd::} {cmd:intreg}
{help depvar:{it:depvar_lower}}
{help depvar:{it:depvar_upper}}
[{indepvars}] [{cmd:,} {it:options}]


{phang}
其中 {it:#} 指定模型的类别数。

{marker typedepvar}{...}
{phang}
{it:depvar_lower} 和 {it:depvar_upper} 的值应具有以下形式：

             数据类型 {space 16} {it:depvar_lower}  {it:depvar_upper}
             {hline 56}
             点数据{space 10}{it:a} = [{it:a},{it:a}]{space 7}{it:a}{space 13}{it:a} 
             区间数据{space 11}[{it:a},{it:b}]{space 7}{it:a}{space 13}{it:b}
             左删失数据{space 3}(-inf,{it:b}]{space 7}{cmd:.}{space 13}{it:b}
             右删失数据{space 3}[{it:a},inf){space 7}{it:a}{space 13}{cmd:.} 
             缺失{space 29}{cmd:.}{space 13}{cmd:.} 
             {hline 56}

{synoptset 26 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:模型}
{synopt :{opt nocons:tant}}抑制常数项{p_end}
{synopt :{opth off:set(varname)}}以系数限制为1来包括 {it:varname} 在模型中{p_end}
{synoptline}
{p 4 6 2}
{it:indepvars} 可以包含因子变量；请参见 {help fvvarlist_zh}.{p_end}
{p 4 6 2}
{it:depvar_lower},
{it:depvar_upper} 和 
{it:indepvars} 可以包含时间序列操作符；请参见 {help tsvarlist_zh}.{p_end}
{p 4 6 2}
有关 {it:options} 的详细描述，请参见 
{help intreg##options:{it:选项}} 在 {manhelp intreg R} 中。

包含 help fmm_options_table
包含 help fmm_options_note

包含 help fmm_pclass_table


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > FMM（有限混合模型） > 连续结果 > 区间回归}


{marker description}{...}
{title:描述}

{pstd}
{cmd:fmm: intreg} 拟合区间回归模型的混合体；有关详细信息，请参见 {manhelp fmm FMM} 和 {manhelp intreg R}。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection FMM fmmintroRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{pstd}
有关有限混合模型的一般介绍，请参见
{manlink FMM fmm intro}。
有关线性回归的一般信息，请参见 {manhelp intreg R}。


{marker example}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse intregxmpl}{p_end}

{pstd}两个区间回归模型的混合{p_end}
{phang2}{cmd:. fmm 2: intreg wage1 wage2 age c.age#c.age nev_mar rural school tenure}{p_end}


{marker results}{...}
{title:存储结果}

{pstd}
请参阅
{help fmm##results:{it:存储结果}} 在 {manhelp fmm FMM} 中。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <fmm_intreg.sthlp>}