{smcl}
{* *! version 1.0.12  23oct2017}{...}
{viewerdialog roccomp "dialog roccomp"}{...}
{viewerdialog rocgold "dialog rocgold"}{...}
{vieweralsosee "[R] roccomp" "mansection R roccomp"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] logistic postestimation" "help logistic postestimation"}{...}
{vieweralsosee "[R] roc" "help roc_zh"}{...}
{vieweralsosee "[R] rocfit" "help rocfit_zh"}{...}
{vieweralsosee "[R] rocreg" "help rocreg_zh"}{...}
{vieweralsosee "[R] roctab" "help roctab_zh"}{...}
{viewerjumpto "Syntax" "roccomp_zh##syntax"}{...}
{viewerjumpto "Menu" "roccomp_zh##menu"}{...}
{viewerjumpto "Description" "roccomp_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "roccomp_zh##linkspdf"}{...}
{viewerjumpto "Options" "roccomp_zh##options_roccomp"}{...}
{viewerjumpto "Examples" "roccomp_zh##examples"}{...}
{viewerjumpto "Stored results" "roccomp_zh##results"}
{help roccomp:English Version}
{hline}{...}
{p2colset 1 16 18 2}{...}
{p2col:{bf:[R] roccomp} {hline 2}}ROC面积比较检验
{p_end}
{p2col:}({mansection R roccomp:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{pstd}
检验ROC区域的相等性

{p 8 16 2}
{cmd:roccomp}
{it:refvar}
{it:classvar}
[{it:classvars}]
{ifin}
[{it:{help roccomp##weight:权重}}]
[{cmd:,} {it:{help roccomp##roccomp_options:roccomp_options}}]


{pstd}
检验ROC区域相对于标准ROC曲线的相等性

{p 8 16 2}
{cmd:rocgold}
{it:refvar}
{it:goldvar}
{it:classvar}
[{it:classvars}]
{ifin}
[{it:{help roccomp##weight:权重}}]
[{cmd:,} {it:{help roccomp##rocgold_options:rocgold_options}}]


{marker roccomp_options}{...}
{synoptset 25 tabbed}{...}
{synopthdr:roccomp_options}
{synoptline}
{syntab:主要}
{synopt:{opth by(varname)}}按变量分组{p_end}
{synopt:{opt test(matname)}}使用对比矩阵比较ROC区域{p_end}
{synopt:{opt g:raph}}绘制ROC曲线{p_end}
{synopt:{opt noref:line}}禁止绘制45度参考线{p_end}
{synopt:{opt sep:arate}}将每条ROC曲线放在各自的图表上{p_end}
{synopt:{opt sum:mary}}报告ROC曲线下的面积{p_end}
{synopt:{opt bin:ormal}}使用双正态分布假设估计区域{p_end}
{synopt:{cmdab:line:}{ul:{it:#}}{cmd:opts(}{it:{help cline_options_zh}}{cmd:)}}影响第{it:#}条双正态拟合线的呈现{p_end}
{synopt:{opt l:evel(#)}}设置置信水平；默认值为
{cmd:level(95)}{p_end}

{syntab:绘图}
{synopt:{cmdab:plot:}{ul:{it:#}}{cmd:opts(}{it:{help roccomp##plot_options:plot_options}}{cmd:)}}影响 
        第{it:#}条ROC曲线的呈现{p_end}

{syntab:参考线}
{synopt:{opth rlop:ts(cline_options)}}影响参考线的呈现{p_end}

{syntab:Y轴、X轴、标题、图例、整体}
{synopt:{it:twoway_options}}除{opt by()}之外的任何选项在{manhelpi twoway_options G-3}中有记录{p_end}
{synoptline}
{p2colreset}{...}

{marker rocgold_options}{...}
{synoptset 25 tabbed}{...}
{synopthdr:rocgold_options}
{synoptline}
{syntab:主要}
{synopt:{opt sid:ak}}使用Sidak方法调整p值{p_end}
{synopt:{opt test(matname)}}使用对比矩阵比较ROC区域{p_end}
{synopt:{opt g:raph}}绘制ROC曲线{p_end}
{synopt:{opt noref:line}}禁止绘制45度参考线{p_end}
{synopt:{opt sep:arate}}将每条ROC曲线放在各自的图表上{p_end}
{synopt:{opt sum:mary}}报告ROC曲线下的面积{p_end}
{synopt:{opt bin:ormal}}使用双正态分布假设估计区域{p_end}
{synopt:{cmdab:line:}{ul:{it:#}}{cmd:opts(}{it:{help cline_options_zh}}{cmd:)}}影响第{it:#}条双正态拟合线的呈现{p_end}
{synopt:{opt l:evel(#)}}设置置信水平；默认值为
{cmd:level(95)}{p_end}

{syntab:绘图}
{synopt:{cmdab:plot:}{ul:{it:#}}{cmd:opts(}{it:{help roccomp##plot_options:plot_options}}{cmd:)}}影响 
        第{it:#}条ROC曲线的呈现；绘图1是“金标准”{p_end}

{syntab:参考线}
{synopt:{opth rlop:ts(cline_options)}}影响参考线的呈现{p_end}

{syntab:Y轴、X轴、标题、图例、整体}
{synopt:{it:twoway_options}}任何记录在{manhelpi twoway_options G-3}中的选项。这包括图表标题的选项（见{manhelpi title_options G-3}）、保存图表到磁盘的选项（见{manhelpi saving_option G-3}）和{opt by()}选项（见{manhelpi by_option G-3}）。


{marker examples}{...}
{title:示例}

    设置
{phang2}{cmd:. webuse ct2}{p_end}

{pstd}检验{cmd:mod1}的ROC下的面积与{cmd:mod3}相等{p_end}
{phang2}{cmd:. roccomp status mod1 mod3}{p_end}

{pstd}添加ROC曲线的图表{p_end}
{phang2}{cmd:. roccomp status mod1 mod3, graph summary}{p_end}

{pstd}在比较ROC区域时使用对比矩阵C{p_end}
{phang2}{cmd:. matrix C = (1,0,-1)}{p_end}
{phang2}{cmd:. roccomp status mod1 mod2 mod3, test(C)}{p_end}

{pstd}将{cmd:mod2}和{cmd:mod3}的区域与{cmd:mod1}金标准进行比较{p_end}
{phang2}{cmd:. rocgold status mod1 mod2 mod3}{p_end}

{pstd}添加ROC曲线的图表{p_end}
{phang2}{cmd:. rocgold status mod1 mod2 mod3, graph summary}{p_end}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:roccomp}在{cmd:r()}中存储以下内容：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:r(N_g)}}组数{p_end}
{synopt:{cmd:r(p)}}卡方检验的p值{p_end}
{synopt:{cmd:r(df)}}卡方自由度{p_end}
{synopt:{cmd:r(chi2)}}卡方值{p_end}

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 矩阵}{p_end}
{synopt:{cmd:r(V)}}方差-协方差矩阵{p_end}

{pstd}
{cmd:rocgold}在{cmd:r()}中存储以下内容：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:r(N_g)}}组数{p_end}

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 矩阵}{p_end}
{synopt:{cmd:r(V)}}方差-协方差矩阵{p_end}
{synopt:{cmd:r(chi2)}}卡方向量{p_end}
{synopt:{cmd:r(df)}}卡方自由度向量{p_end}
{synopt:{cmd:r(p)}}卡方检验的p值向量{p_end}
{synopt:{cmd:r(p_adj)}}调整后p值向量{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <roccomp.sthlp>}