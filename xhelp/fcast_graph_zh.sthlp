{smcl}
{* *! version 1.1.10  19oct2017}{...}
{viewerdialog "fcast graph" "dialog fcast_graph"}{...}
{vieweralsosee "[TS] fcast graph" "mansection TS fcastgraph"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TS] fcast compute" "help fcast_compute_zh"}{...}
{vieweralsosee "[TS] var intro" "help var_intro_zh"}{...}
{vieweralsosee "[TS] vec intro" "help vec_intro_zh"}{...}
{viewerjumpto "Syntax" "fcast graph##syntax"}{...}
{viewerjumpto "Menu" "fcast graph##menu"}{...}
{viewerjumpto "Description" "fcast graph##description"}{...}
{viewerjumpto "Links to PDF documentation" "fcast_graph_zh##linkspdf"}{...}
{viewerjumpto "Options" "fcast graph##options"}{...}
{viewerjumpto "Examples" "fcast graph##examples"}
{help fcast_graph:English Version}
{hline}{...}
{p2colset 1 21 23 2}{...}
{p2col:{bf:[TS] fcast graph} {hline 2}}图形化预测结果，基于 fcast compute
{p_end}
{p2col:}({mansection TS fcastgraph:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 17 2}
{cmd:fcast}
{opt g:raph}
{varlist}
{ifin}
[{cmd:,}
{it:选项}]

{pstd}
其中 {it:varlist} 包含由 {helpb fcast compute} 生成的一个或多个预测变量。

{synoptset 25 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:主要}
{synopt:{opt di:fferences}}图形化一阶差分变量的预测结果（仅限 {opt vec} ){p_end}
{synopt:{opt noci}}压制置信区间{p_end}
{synopt:{opt o:bserved}}在图中包含预测变量的观察值{p_end}

{syntab:预测图}
{synopt:{it:{help cline_options_zh}}}影响预测线的呈现{p_end}

{syntab:置信区间图}
{synopt:{opth ciop:ts(area_options)}}影响置信区间带的呈现{p_end}

{syntab:观察图}
{synopt:{opth obop:ts(cline_options)}}影响预测变量观察值的呈现{p_end}

{syntab:Y 轴、时间轴、标题、图例、整体}
{synopt:{it:twoway_options}}除 {opt by()} 外的任何选项，详见 {manhelpi twoway_options G-3}{p_end}
{synopt:{opth byop:ts(by_option)}}影响组合图的外观{p_end}
{synoptline}
{p2colreset}{...}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 多变量时间序列 > VEC/VAR 预测 > 图形化预测}


{marker description}{...}
{title:描述}

{pstd}
{opt fcast graph} 图形化 VAR(p) 或 VECM 的内生变量的动态预测，前提是已经通过 {opt fcast compute} 获得；详见 {manhelp fcast_compute TS:fcast compute}。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection TS fcastgraphQuickstart:快速入门}

        {mansection TS fcastgraphRemarksandexamples:备注与示例}

{pstd}
上述部分不包括在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主要}

{phang}
{opt differences} 指定绘制一阶差分变量的预测结果。此选项仅在使用 {opt fcast compute} 进行 {opt vec}后的预测中可用。 {opt differences} 选项隐含了 {opt noci}。

{phang}
{opt noci} 指定压制置信区间。默认情况下，置信区间是包含的。

{phang}
{opt observed} 指定在图中包括预测变量的观察值。默认情况下，观察值是不被绘制的。

{dlgtab:预测图}

{phang}
{it:cline_options} 影响对应预测的绘制线条的呈现；请参见 {manhelpi cline_options G-3}。

{dlgtab:置信区间图}

{phang}
{opth ciopts(area_options)} 
   影响置信区间带的绘制；请参见 {manhelpi area_options G-3}。

{dlgtab:观察图}

{phang}
{opth obopts(cline_options)} 影响预测变量观察值的呈现；请参见 {manhelpi cline_options G-3}。此选项隐含了 {opt observed} 选项。

{dlgtab:Y 轴、时间轴、标题、图例、整体}

{phang}
{it:twoway_options} 是 {manhelpi twoway_options G-3} 中文档化的任何选项，不包括 {opt by()}。

{phang}
{opt byopts(by_option)} 在 {manhelpi by_option G-3}中有文档记录。
这些选项影响组合图的外观。


{marker examples}{...}
{title:示例}

    {hline}
    设置
{phang2}{cmd:. webuse lutkepohl2}{p_end}

{pstd}拟合限制在指定时间段内的 VAR 模型{p_end}
{phang2}{cmd:. var dln_inc dln_consump dln_inv if qtr<tq(1979q1)}{p_end}

{pstd}计算 8 步动态预测{p_end}
{phang2}{cmd:. fcast compute m2_, step(8)}{p_end}

{pstd}图形化动态预测，包含预测变量的观察值{p_end}
{phang2}{cmd:. fcast graph m2_dln_inc m2_dln_inv m2_dln_consump, observed}
{p_end}

    {hline}
    设置
{phang2}{cmd:. webuse urates, clear}{p_end}

{pstd}拟合限制在指定时间段内的 VECM，包含受限常数，使用两个协整方程，并对基础 VAR 使用最大滞后 4{p_end}
{phang2}{cmd:. vec missouri indiana kentucky illinois if t<tm(2003m7),}
        {cmd:trend(rconstant) rank(2) lags(4)}{p_end}

{pstd}计算 6 步动态预测{p_end}
{phang2}{cmd:. fcast compute m1_, step(6)}{p_end}

{pstd}图形化动态预测，包含预测变量的观察值{p_end}
{phang2}{cmd:. fcast graph m1_missouri m1_indiana m1_kentucky m1_illinois,}
            {cmd:observed}{p_end}
    {hline}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <fcast_graph.sthlp>}