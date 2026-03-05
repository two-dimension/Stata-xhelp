{smcl}
{* *! version 1.2.18  19oct2017}{...}
{viewerdialog stcurve "dialog stcurve"}{...}
{vieweralsosee "[ST] stcurve" "mansection ST stcurve"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[ST] stcox" "help stcox_zh"}{...}
{vieweralsosee "[ST] stcox postestimation" "help stcox_postestimation_zh"}{...}
{vieweralsosee "[ST] stcrreg" "help stcrreg_zh"}{...}
{vieweralsosee "[ST] stcrreg postestimation" "help stcrreg_postestimation_zh"}{...}
{vieweralsosee "[ST] stintreg" "help stintreg_zh"}{...}
{vieweralsosee "[ST] stintreg postestimation" "help stintreg_postestimation_zh"}{...}
{vieweralsosee "[ST] streg" "help streg_zh"}{...}
{vieweralsosee "[ST] streg postestimation" "help streg_postestimation_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[ME] mestreg" "help mestreg_zh"}{...}
{vieweralsosee "[ME] mestreg postestimation" "help mestreg postestimation"}{...}
{vieweralsosee "[XT] xtstreg" "help xtstreg_zh"}{...}
{vieweralsosee "[XT] xtstreg postestimation" "help xtstreg postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[ST] sts" "help sts_zh"}{...}
{vieweralsosee "[ST] stset" "help stset_zh"}{...}
{viewerjumpto "Syntax" "stcurve_zh##syntax"}{...}
{viewerjumpto "Menu" "stcurve_zh##menu"}{...}
{viewerjumpto "Description" "stcurve_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "stcurve_zh##linkspdf"}{...}
{viewerjumpto "Options" "stcurve_zh##options"}{...}
{viewerjumpto "Examples" "stcurve_zh##examples"}
{help stcurve:English Version}
{hline}{...}
{p2colset 1 17 19 2}{...}
{p2col:{bf:[ST] stcurve} {hline 2}}绘制生存、风险、累积风险或累积发生函数{p_end}
{p2col:}({mansection ST stcurve:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 16 2}
{cmd:stcurve} [{cmd:,} {it:options}]

{synoptset 34 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:主要}
{p2coldent :* {opt sur:vival}}绘制生存函数{p_end}
{p2coldent :* {opt haz:ard}}绘制风险函数{p_end}
{p2coldent :* {opt cumh:az}}绘制累积风险函数{p_end}
{p2coldent :* {opt cif}}绘制累积发生函数{p_end}
{synopt :{cmd:at(}{varname}{cmd:=}{it:#} [{varname}{cmd:=}{it:# ...}]{cmd:)}}指定协变量的值并{p_end}
{p2col 7 43 43 2:[{cmd:at1(}{varname}{cmd:=}{it:#} [{varname}{cmd:=}{it:# ...}]{cmd:)}}指定未列协变量的均值{p_end}
{synopt :[{cmd:at2(}{varname}{cmd:=}{it:#} [{varname}{cmd:=}{it:# ...}]{cmd:)}}{p_end}
{synopt :[...]]]}

{syntab:选项}
{synopt :{opt alpha:1}}条件脆弱性模型{p_end}
{synopt :{opt fixed:only}}将所有随机效应设为零{p_end}
{synopt :{opt uncond:itional}}无条件脆弱性模型或随机效应模型{p_end}
{synopt :{opt marg:inal}}无条件的同义词{p_end}
{synopt :{opt r:ange(# #)}}分析时间范围{p_end}
{synopt :{cmdab:out:file:(}{it:{help filename_zh}} [{cmd:,} {opt replace}]{cmd:)}}保存用于绘制曲线的值{p_end}
{synopt :{opt width(#)}}覆盖“最优”宽度；与{opt hazard} 一起使用{p_end}
{synopt :{opth k:ernel(kdensity##kernel:kernel)}}内核函数；与{opt hazard} 一起使用{p_end}
{synopt :{opt nob:oundary}}无边界修正；与{opt hazard} 一起使用{p_end}

{syntab:绘图}
{synopt :{it:{help connect_options_zh:connect_options}}}影响绘制的生存函数、风险函数或累积风险函数的呈现{p_end}

{syntab:添加图形}
{synopt :{opth "addplot(addplot_option:plot)"}}将其他图形添加到生成的图形{p_end}

{syntab:Y 轴，X 轴，标题，图例，总体}
{synopt :{it:twoway_options}}除 {opt by()} 之外的任何选项，详细信息请参见
         {manhelpi twoway_options G-3}{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}* 必须指定 {opt survival}、{opt hazard}、{opt cumhaz} 或 
{opt cif} 之一.{p_end}
{p 4 6 2}{cmd:survival} 和 {cmd:hazard} 在使用 {help stcrreg_zh} 进行估计后不允许使用。{p_end}
{p 4 6 2}{cmd:cif} 仅在使用 {help stcrreg_zh} 进行估计后允许使用。{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 生存分析 > 回归模型 >}
    {bf:绘制生存、风险、累积风险或累积发生函数}


{marker description}{...}
{title:描述}

{pstd}
{cmd:stcurve} 在 {cmd:stcox}、{cmd:streg}、{cmd:stintreg}、{cmd:mestreg}、{cmd:xtstreg} 之后绘制生存、风险或累积风险函数。
{cmd:stcurve} 在 {cmd:stcrreg} 之后还绘制累积子风险或累积发生函数。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection ST stcurveQuickstart:快速开始}

        {mansection ST stcurveRemarksandexamples:备注和示例}

{pstd}
以上部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主要}

{phang}
{opt survival} 指定绘制生存函数。  
{opt survival} 在与 {cmd:stcrreg} 进行估计后不允许使用。

{phang}
{opt hazard} 指定绘制风险函数。
{opt hazard} 在与 {cmd:stcrreg} 进行估计后不允许使用。

{phang}
{opt cumhaz} 指定在 {cmd:stcox}、{cmd:streg}、{cmd:stintreg}、{cmd:mestreg} 或
{cmd:xtstreg} 后绘制累积风险函数，并在 {cmd:stcrreg} 后绘制累积子风险函数。

{phang}
{opt cif} 指定绘制累积发生函数。  
此选项仅在与 {cmd:stcrreg} 进行估计后可用。

{phang}
{cmd:at(}{varname}{cmd:=}{it:# ...}{cmd:)} 指定 {it:varname} 指定的协变量的值为 {it:#}。 默认情况下，
{cmd:stcurve} 通过设定每个协变量为其均值来评估函数。
此选项使函数在 {opt at()} 中列出的协变量的值以及所有未列协变量的均值处进行评估。

{pmore}
{cmd:at1(}{it:varname}{cmd:=}{it:# ...}{cmd:)},
{cmd:at2(}{it:varname}{cmd:=}{it:# ...}{cmd:)}, ...,
{cmd:at10(}{it:varname}{cmd:=}{it:# ...}{cmd:)} 指定在同一图形上绘制多个曲线（最多 10 条）。
{opt at1()}、{opt at2()}、...、{opt at10()} 的作用类似于 {opt at()} 选项。
它们指定函数在指定的协变量值和所有未列协变量的均值处进行评估。
{opt at1()} 指定第一条曲线的协变量值，{opt at2()} 指定第二条曲线的协变量值，依此类推。

{dlgtab:选项}

{phang}
{opt alpha1} 在拟合脆弱性模型后使用时，绘制条件于脆弱性值为 1 的曲线。这是
共享脆弱性模型的默认值。

{phang}
{opt fixedonly} 指定将所有随机效应设为零，相当于仅使用模型的固定部分。
此选项仅在 {opt xtstreg} 或 {opt mestreg} 后允许使用；在 {opt xtstreg} 后为默认值。

{phang}
{opt unconditional} 和 {opt marginal} 在拟合脆弱性模型或随机效应模型后，绘制条件于脆弱性或随机效应无条件的曲线。即，曲线是在脆弱性分布或随机效应分布上“平均”的。
此选项在未共享的脆弱性模型和随机效应模型后为默认值。此选项在 {opt stintreg} 或 {opt xtstreg} 后不允许使用。

{phang}
{opt range(# #)} 指定绘制的时间轴范围。如果未指定此选项，{cmd:stcurve} 会在数据中从最早到最新时间的区间中绘制所需曲线。

{phang}
{cmd:outfile(}{it:{help filename_zh}} [{cmd:,} {opt replace}]{cmd:)} 将用于绘制曲线的值保存在 {it:filename}{cmd:.dta} 中。

{phang}
{opt width(#)} 仅适用于与 {opt hazard} 一起使用（并且仅在 {cmd:stcox} 后适用），用于指定在绘制估计风险函数时使用的核光滑带宽。如果未指定，将使用默认带宽，详见 {manhelp kdensity R}。

{phang}
{opt kernel(kernel)} 仅在使用 {opt hazard} 和在 {cmd:stcox} 后使用，因为对于 Cox 回归，风险函数的估计是通过平滑估计的 {it:hazard contributions} 获得的。{opt kernel()} 指定用于计算所需的加权核密度估计以产生平滑的风险函数估计的核函数。默认值为 {cmd:kernel(epanechnikov)}，但 {it:kernel} 可以是 {cmd:kdensity} 支持的任何核；{manhelp kdensity R}。

{phang}
{opt noboundary} 仅适用于使用 {opt hazard} 并在 {cmd:stcox} 之后绘制平滑风险函数。 它指定计算平滑的风险函数估计时不进行边界偏差调整。默认情况下，平滑风险函数在靠近边界时会进行调整；请参见 {manlink ST sts graph}。如果使用 {opt epan2}、{opt biweight} 或 {opt rectangular} 核，则在边界附近进行的偏差修正使用边界核。如果使用其他核，则平滑风险函数的绘制范围限制在距离每个端点一个带宽之内。对于这些其他核，指定 {opt noboundary} 仅会移除此范围限制。

{dlgtab:绘图}

{phang}
{it:connect_options} 影响绘制的生存函数、风险函数或累积风险函数的呈现；请参见 {manhelpi connect_options G-3}。

{dlgtab:添加图形}

{phang}
{opt addplot(plot)} 提供将其他图形添加到生成的图形中的方法；请参见 {manhelpi addplot_option G-3}。

{dlgtab:Y 轴，X 轴，标题，图例，总体}

{phang}
{it:twoway_options} 是在 {manhelpi twoway_options G-3} 中记录的任何选项，但不包括 {opt by()}。这些选项包括图形标题选项（见 {manhelpi title_options G-3}）和将图形保存到磁盘的选项（见 {manhelpi saving_option G-3}）。


{marker examples}{...}
{title:stcox 之后的示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse drugtr}

{pstd}拟合 Cox 模型{p_end}
{phang2}{cmd:. stcox age drug}

{pstd}绘制估计生存函数{p_end}
{phang2}{cmd:. stcurve, survival}

{pstd}绘制安慰剂组和治疗组的估计生存函数{p_end}
{phang2}{cmd:. stcurve, survival at1(drug=0) at2(drug=1)}

{pstd}在对数尺度上绘制安慰剂组和治疗组的估计风险函数{p_end}
{phang2}{cmd:. stcurve, hazard at1(drug=0) at2(drug=1) kernel(gauss)}
           {cmd:yscale(log)}{p_end}


{title:streg 之后的示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse cancer}

{pstd}将 {cmd:drug} 的值映射为安慰剂为 0，非安慰剂为 1{p_end}
{phang2}{cmd:. replace drug = drug == 2 | drug == 3}

{pstd}拟合对数逻辑斯蒂生存模型{p_end}
{phang2}{cmd:. streg age drug, d(llog)}

{pstd}绘制生存函数{p_end}
{phang2}{cmd:. stcurve, survival ylabels(0 .5 1)}

{pstd}绘制风险函数{p_end}
{phang2}{cmd:. stcurve, hazard}

{pstd}绘制安慰剂组和治疗组的生存函数{p_end}
{phang2}{cmd:. stcurve, survival at1(drug=0) at2(drug=1) ylabels(0 .5 1)}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse catheter, clear}

{pstd}声明数据为生存时间数据{p_end}
{phang2}{cmd:. stset time infect}

{pstd}拟合 Weibull/逆高斯共享脆弱性模型{p_end}
{phang2}{cmd:. streg age female, d(weibull) frailty(invgauss) shared(patient)}
{p_end}

{pstd}绘制女性在均值年龄时的个体风险函数{p_end}
{phang2}{cmd:. stcurve, hazard at(female=1) alpha1}

{pstd}绘制女性在均值年龄时的人群风险函数{p_end}
{phang2}{cmd:. stcurve, hazard at(female=1) unconditional}{p_end}

    {hline}


{title:stcrreg 之后的示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse hypoxia}

{pstd}声明数据为生存时间数据{p_end}
{phang2}{cmd:. stset dftime, failure(failtype==1)}

{pstd}拟合竞争风险模型{p_end}
{phang2}{cmd:. stcrreg ifp tumsize pelnode, compete(failtype==2)}

{pstd}比较两组的累积发生函数，保持其他协变量在均值{p_end}
{phang2}{cmd:. stcurve, cif at1(pelnode=0) at2(pelnode=1)}{p_end}


{title:mestreg 之后的示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse catheter}

{pstd}随机效应 Weibull 生存模型{p_end}
{phang2}{cmd:. mestreg age female || patient:, distribution(weibull)}

{pstd}比较男性和女性在53岁时的边际生存函数{p_end}
{phang2}{cmd:. stcurve, surv at1(female=0 age=53) at2(female=1 age=53)}{p_end}
    
    
{title:xtstreg 之后的示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse catheter}{p_end}
{phang2}{cmd:. xtset patient}{p_end}

{pstd}随机效应 Weibull 生存模型{p_end}
{phang2}{cmd:. xtstreg age female, distribution(weibull)}

{pstd}比较在零随机效应条件下男性和女性的生存函数{p_end}
{phang2}{cmd:. stcurve, surv at1(female=0) at2(female=1)}{p_end}


{title:stintreg 之后的示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse cosmesis}{p_end}

{pstd}拟合一个Wellfull生存模型用于区间截断数据{p_end}
{phang2}{cmd:. stintreg i.treat, distribution(weibull) interval(ltime rtime)}

{pstd}比较两种治疗的生存函数：仅放射治疗与放射治疗加化学治疗{p_end}
{phang2}{cmd:. stcurve, surv at1(treat=0) at2(treat=1)}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <stcurve.sthlp>}