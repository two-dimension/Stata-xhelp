{smcl}
{* *! version 1.1.12  19oct2017}{...}
{viewerdialog cusum "dialog cusum"}{...}
{vieweralsosee "[R] cusum" "mansection R cusum"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] logistic" "help logistic_zh"}{...}
{vieweralsosee "[R] logit" "help logit_zh"}{...}
{vieweralsosee "[R] probit" "help probit_zh"}{...}
{viewerjumpto "语法" "cusum_zh##syntax"}{...}
{viewerjumpto "菜单" "cusum_zh##menu"}{...}
{viewerjumpto "说明" "cusum_zh##description"}{...}
{viewerjumpto "PDF文档链接" "cusum_zh##linkspdf"}{...}
{viewerjumpto "选项" "cusum_zh##options"}{...}
{viewerjumpto "示例" "cusum_zh##examples"}{...}
{viewerjumpto "存储结果" "cusum_zh##results"}
{help cusum:English Version}
{hline}{...}
{p2colset 1 14 16 2}{...}
{p2col:{bf:[R] cusum} {hline 2}}累计和图及二元变量的测试
{p_end}
{p2col:}({mansection R cusum:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 14 2}
{cmd:cusum} {it:yvar} {it:xvar}
{ifin}
[{cmd:,} {it:options}]

{synoptset 20 tabbed}{...}
{synopthdr}
{synoptline}
{syntab :主选项}
{synopt :{opth gen:erate(newvar)}}将累计和保存到 {it:newvar}{p_end}
{synopt :{opt yf:it(fitvar)}}计算针对 {it:fitvar} 的累计和{p_end}
{synopt :{opt nog:raph}}抑制绘图{p_end}
{synopt :{opt noca:lc}}抑制CUSUM测试统计量{p_end}

{syntab :CUSUM图}
{synopt :{it:{help connect_options_zh}}}影响绘制线条的呈现{p_end}

{syntab :附加图}
{synopt :{opth "addplot(addplot_option:plot)"}}将图添加到生成的图表中{p_end}

{syntab :Y轴、X轴、标题、图例、整体}
{synopt :{it:twoway_options}}任何不包括在 {opt by()} 中的选项，详见
      {manhelpi twoway_options G-3}{p_end}
{synoptline}
{p2colreset}{...}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 其他 > 质量控制 >}
       {bf:Cusum图及二元变量测试}


{marker description}{...}
{title:说明}

{pstd}
{opt cusum} 将二元（0/1）变量 {it:yvar} 的累计和图形化， 并与（通常）连续变量 {it:xvar} 进行比较。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection R cusumQuickstart:快速入门}

        {mansection R cusumRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主选项}

{phang}
{opth generate(newvar)} 将累计和保存到 {it:newvar}。

{phang}
{opt yfit(fitvar)} 计算针对 {it:fitvar} 的累计和，
即“残差” {it:fitvar} 减去 {it:yvar} 的运行总和。
通常, {it:fitvar} 是通过逻辑回归分析获得的正结果预测概率。

{phang}
{opt nograph} 抑制绘图。

{phang}
{opt nocalc} 抑制CUSUM测试统计量的计算。

{dlgtab:CUSUM图}

{phang}
{it:connect_options} 影响绘制线条的呈现; 请参见 
{manhelpi connect_options G-3}。

{dlgtab:附加图}

{phang}
{opt addplot(plot)}
提供了一种将其他图添加到生成的图表的方法。请参见 {manhelpi addplot_option G-3}。

{dlgtab:Y轴、X轴、标题、图例、整体}

{phang}
{it:twoway_options} 是任何在 
{manhelpi twoway_options G-3} 中记录的选项， 
不包括 {opt by()}。
这些选项包括为图表命名（参见 {manhelpi title_options G-3}）和将图表保存到磁盘的选项（参见 {manhelpi saving_option G-3}）。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. sysuse auto}{p_end}

{pstd}绘制 {cmd:foreign} 的累计和与 {cmd:weight} 的关系{p_end}
{phang2}{cmd:. cusum foreign weight}{p_end}

{pstd}与上述相同，但将累计和保存到变量 {cmd:cs} 中{p_end}
{phang2}{cmd:. cusum foreign weight, generate(cs)}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:cusum} 在 {cmd:r()} 中存储以下内容：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:r(N)}}观察数量{p_end}
{synopt:{cmd:r(prop1)}}正结果的比例{p_end}
{synopt:{cmd:r(cusum1)}}累计和{p_end}
{synopt:{cmd:r(zl)}}测试（线性）{p_end}
{synopt:{cmd:r(P_zl)}}测试（线性）的p值{p_end}
{synopt:{cmd:r(cusumq)}}二次累计和{p_end}
{synopt:{cmd:r(zq)}}测试（二次）{p_end}
{synopt:{cmd:r(P_zq)}}测试（二次）的p值{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <cusum.sthlp>}