{smcl}
{* *! version 1.1.4  14may2018}{...}
{viewerdialog "SEM Builder" "stata sembuilder"}{...}
{vieweralsosee "[SEM] sem 报告选项" "mansection SEM semreportingoptions"}{...}
{findalias assembequal}{...}
{findalias assemcorr}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[SEM] sem" "help sem_command_zh"}{...}
{viewerjumpto "语法" "sem_reporting_options_zh##syntax"}{...}
{viewerjumpto "描述" "sem_reporting_options_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "sem_reporting_options_zh##linkspdf"}{...}
{viewerjumpto "选项" "sem_reporting_options_zh##options"}{...}
{viewerjumpto "备注" "sem_reporting_options_zh##remarks"}{...}
{viewerjumpto "示例" "sem_reporting_options_zh##examples"}{...}
{viewerjumpto "参考" "sem_reporting_options_zh##reference"}
{help sem_reporting_options:English Version}
{hline}{...}
{p2colset 1 32 34 2}{...}
{p2col:{bf:[SEM] sem 报告选项} {hline 2}}影响结果报告的选项{p_end}
{p2col:}({mansection SEM semreportingoptions:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{cmd:sem} {help sem_and_gsem path notation:{it:paths}} ...{cmd:,} ...
     {it:reporting_options}

{p 8 12 2}
{cmd:sem,} {it:reporting_options}


{synoptset 19}{...}
{synopthdr:reporting_options}
{synoptline}
{synopt :{opt l:evel(#)}}设置信心水平；默认值为 {cmd:level(95)}{p_end}
{synopt :{opt stand:ardized}}显示标准化系数和数值{p_end}
{synopt :{opt coefl:egend}}显示系数图例{p_end}
{synopt :{opt nocns:r:report}}不显示约束{p_end}
{synopt :{opt nodes:cribe}}不显示变量分类表{p_end}
{synopt :{opt nohead:er}}不显示参数表上方的标题{p_end}
{synopt :{opt nofoot:note}}不显示参数表下方的脚注{p_end}
{synopt :{opt notable}}不显示参数表{p_end}
{synopt :{opt nofvlab:el}}显示组值而不是值标签{p_end}
{synopt :{opt fvwrap(#)}}允许 {it:#} 行用于换行长值标签{p_end}
{synopt :{opt fvwrapon(style)}}对长值标签换行应用 {it:style}；
{it:style} 可为 {cmd:word} 或 {cmd:width}{p_end}

{synopt :{opt byparm}}将结果显示在一个单一表中，按参数排列行{p_end}
{synopt :{opt showg:invariant}}报告所有估计参数{p_end}
{synoptline}


{marker description}{...}
{title:描述}

{pstd}
这些选项控制 {cmd:sem} 显示估计结果的方式。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection SEM semreportingoptionsRemarksandexamples:备注和示例}

{pstd}
以上部分未包含在本帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{opt level(#)}；详见
{helpb estimation options##level():[R] 估计选项}。

{phang}
{opt standardized} 显示标准化值，即系数的 "beta" 值、协方差的相关性和方差的 1。
标准化值是通过模型拟合方差获得的
({help sem reporting options##Bollen1989:Bollen 1989}, 124-125)。
我们建议在解释标准化值时要谨慎，特别是在多个组的情况下。

{phang}
{opt coeflegend} 显示揭示如何在 {opt _b[]} 记法中指定估计系数的图例，您有时需要在指定后估计命令时使用该记法。

{phang}
{opt nocnsreport} 抑制约束的显示。
{cmd:sem} 自动设置的固定为零约束不会在报告中显示，以保持输出简洁。

{phang}
{opt nodescribe} 抑制变量分类表的显示。

{phang}
{opt noheader} 抑制参数表上方的标题显示，该显示报告最终的对数似然值、观察数等。

{phang}
{opt nofootnote} 抑制参数表下方显示的脚注。

{phang}
{opt notable} 抑制参数表的显示。

{phang}
{opt nofvlabel} 显示组值而非值标签。

{phang}
{opt fvwrap(#)} 指定在必须换行的长值标签时允许的行数。
需要超过 {it:#} 行的标签将被截断。该选项会覆盖 {cmd:fvwrap} 设置；详见
{helpb set showbaselevels:[R] 设置显示基本水平}。

{phang}
{opt fvwrapon(style)} 指定换行的值标签是否在单词边界处分割，或根据可用空间进行分割。

{phang2}
{cmd:fvwrapon(word)}，为默认值，指定在单词边界处分割值标签。

{phang2}
{cmd:fvwrapon(width)} 指定根据可用空间分割值标签。

{pmore}
该选项会覆盖 {cmd:fvwrapon} 设置；详见
{helpb set showbaselevels:[R] 设置显示基本水平}。

{phang}
{opt byparm} 指定在一个单一表中报告多个组的估计结果，行按参数排列。默认值是为每个组报告结果在单独的表中。

{phang}
{opt showginvariant} 指定每个估计参数在参数表中报告。默认值是仅报告每个不变参数一次。
该选项仅在使用 {cmd:byparm} 选项时有效。


{marker remarks}{...}
{title:备注}

{pstd}
您可以在拟合模型时或重新显示结果时指定上述任一选项，您可以通过在 {cmd:sem} 命令后仅指定选项来重新显示结果：

{phang2}{cmd:. sem (...) (...), ...}{p_end}
{phang2}{it:(显示原始输出)}

{phang2}{cmd:. sem}{p_end}
{phang2}{it:(输出被重新显示)}

{phang2}{cmd:. sem, standardized}{p_end}
{phang2}{it:(显示标准化输出)}

{phang2}{cmd:. sem, coeflegend}{p_end}
{phang2}{it:(显示系数名称表)}

{phang2}{cmd:. sem}{p_end}
{phang2}{it:(输出被重新显示)}

{pstd}
详见 {findalias sembequal} 和 {findalias semcorr}。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse sem_2fmmby}{p_end}
{phang2}{cmd:. sem (Peer -> peerrel1 peerrel2 peerrel3 peerrel4)}{break}
	{cmd: (Par -> parrel1 parrel2 parrel3 parrel4), group(grade)}{p_end}

{pstd}显示标准化系数{p_end}
{phang2}{cmd:. sem, standardized}{p_end}

{pstd}显示系数图例{p_end}
{phang2}{cmd:. sem, coeflegend}{p_end}

{pstd}仅显示参数表{p_end}
{phang2}{cmd:. sem, nofootnote noheader nocnsreport}{p_end}

{pstd}报告所有估计参数{p_end}
{phang2}{cmd:. sem, showginvariant}{p_end}


{marker reference}{...}
{title:参考}

{marker Bollen1989}{...}
{phang}
Bollen, K. A. 1989.  {it:潜变量的结构方程}.  纽约：Wiley。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <sem_reporting_options.sthlp>}