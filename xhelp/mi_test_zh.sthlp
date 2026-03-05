{smcl}
{* *! version 1.0.10  15may2018}{...}
{viewerdialog mi "dialog mi"}{...}
{vieweralsosee "[MI] mi test" "mansection MI mitest"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MI] mi estimate" "help mi_estimate_zh"}{...}
{vieweralsosee "[MI] mi estimate using" "help mi_estimate_using_zh"}{...}
{vieweralsosee "[MI] mi estimate postestimation" "help mi estimate postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MI] Glossary" "help mi glossary"}{...}
{vieweralsosee "[MI] Intro" "help mi_zh"}{...}
{vieweralsosee "[MI] Intro substantive" "help mi intro substantive"}{...}
{viewerjumpto "Syntax" "mi_test_zh##syntax"}{...}
{viewerjumpto "Menu" "mi_test_zh##menu"}{...}
{viewerjumpto "Description" "mi_test_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mi_test_zh##linkspdf"}{...}
{viewerjumpto "Options" "mi_test_zh##options"}{...}
{viewerjumpto "Examples" "mi_test_zh##examples"}{...}
{viewerjumpto "Stored results" "mi_test_zh##results"}{...}
{viewerjumpto "References" "mi_test_zh##references"}
{help mi_test:English Version}
{hline}{...}
{p2colset 1 17 19 2}{...}
{p2col:{bf:[MI] mi test} {hline 2}}在 mi 估计后测试假设{p_end}
{p2col:}({mansection MI mitest:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{pstd}
测试系数是否为零

{p 8 16 2}
{cmd:mi} {cmd:test} {it:{help mi test##coeflist:系数列表}}


{pstd}
测试单个方程内的系数是否为零

{p 8 16 2}
{cmd:mi} {cmd:test} [{it:{help mi test##eqno:方程编号}}] [{cmd::}
     {it:{help mi test##coeflist:系数列表}}]


{pstd}
测试系数子集是否为零（完整语法）

{p 8 16 2}
{cmd:mi} {cmd:test} {cmd:(}{it:{help mi test##spec:规格}}{cmd:)} [{cmd:(}{it:{help mi test##spec:规格}}{cmd:)} ...]
  [{cmd:,} {it:{help mi test##test_options:测试选项}}]


{pstd}
测试变换后系数子集是否为零

{p 8 16 2}
{cmd:mi} {cmdab:testtr:ansform} {it:{help mi test##name:名称}}
  [{cmd:(}{it:{help mi test##name:名称}}{cmd:)} ...]
  [{cmd:,} {it:{help mi test##transform_options:变换选项}}]


{marker test_options}{...}
{synoptset 18 tabbed}{...}
{synopthdr:测试选项}
{synoptline}
{syntab:测试}
{synopt: {opt ufmit:est}}执行不受限的 FMI 模型测试{p_end}
{synopt: {opt nosmall}}不对自由度应用小样本修正{p_end}
{synopt: {opt cons:tant}}在要测试的系数中包含常数{p_end}
{synoptline}


{marker transform_options}{...}
{synoptset 18 tabbed}{...}
{synopthdr:变换选项}
{synoptline}
{syntab:测试}
{synopt: {opt ufmit:est}}执行不受限的 FMI 模型测试{p_end}
{synopt: {opt nosmall}}不对自由度应用小样本修正{p_end}
{synopt: {opt noleg:end}}抑制变换图例{p_end}
{synoptline}


{marker coeflist}{...}
{p 4 6 2}
{it:系数列表}可以包含因子变量和时间序列操作符; 见 {help fvvarlist_zh} 和 {help tsvarlist_zh}。

    {it:系数列表}是
          {it:系数} [{it:系数} ...]
          {cmd:[}{it:方程编号}{cmd:]}{it:系数} [{cmd:[}{it:方程编号}{cmd:]}{it:系数}...]
          {cmd:[}{it:方程编号}{cmd:]_b[}{it:系数}{cmd:]}[{cmd:[}{it:方程编号}{cmd:]}_b{cmd:[}{it:系数}{cmd:]}...]

{marker eqno}{...}
     {it:方程编号}是
          {cmd:#}{it:#}
          {it:方程名称}

{marker spec}{...}
    {it:规格}是
          {it:系数列表}
          {cmd:[}{it:方程编号}{cmd:]} [{cmd::} {it:系数列表}]

{pstd}
{it:系数}标识模型中的系数; 见 {help test##coef:描述} 在 {manhelp test R} 中获取详情。 {it:方程名称} 是方程的名称。

{marker name}{...}
{pstd}
{it:名称}是通过 {cmd:mi estimate} 或 {cmd:mi estimate using} 指定的表达式名称（见 {manhelp mi_estimate MI:mi estimate} 或 {manhelp mi_estimate_using MI:mi estimate using}）。


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 多重插补}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:mi} {cmd:test} 执行系数的联合测试。 

{p 4 4 2}
{cmd:mi} {cmd:testtransform} 执行按 {helpb mi estimate} 或 {helpb mi estimate using} 指定的变换系数的联合测试。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection MI mitestRemarksandexamples:备注和示例}

        {mansection MI mitestMethodsandformulas:方法和公式}

{pstd}
上述章节未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:测试}

{phang}
{cmd:ufmitest} 指定使用不受限的缺失信息比例（FMI）模型测试。 默认测试假设所有系数因非响应而缺失的信息比例相等。 这等同于假设插补之间和插补内方差成比例。 当对该假设存疑时，提供的插补数量相对于估计系数数量较大时，不受限的测试可能是更可取的。

{phang}
{cmd:nosmall} 指定不对自由度进行小样本调整。 默认情况下，系数（和变换系数）的个别测试使用 {help mi test##BR1999:Barnard 和 Rubin (1999)} 的小样本调整，整体模型测试使用 {help mi test##R2007:Reiter (2007)} 的小样本调整。

{phang}
{cmd:constant} 指定在使用 {cmd:[}{it:{help mi test##eqno:方程编号}}{cmd:]} 形式的 {it:{help mi test##spec:规格}} 时，包含 {cmd:_cons} 在要测试的系数列表中。 默认情况下不包括 {cmd:_cons}。

{phang}
{cmd:nolegend}，与 {cmd:mi testtransform} 一起指定，抑制变换图例。


{marker examples}{...}
{title:示例}

{pstd}测试 {cmd:tax}、{cmd:sqft}、{cmd:age}、{cmd:nfeatures}、{cmd:ne}、{cmd:custom} 和 {cmd:corner} 在房屋转售价格回归分析中的作用{p_end}
{phang2}{cmd:. webuse mhouses1993s30}{p_end}
{phang2}{cmd:. mi estimate: regress price tax sqft age nfeatures ne custom corner}{p_end}
{phang2}{cmd:. mi test tax sqft age nfeatures ne custom corner}{p_end}

{pstd}测试系数子集，例如 {cmd:sqft} 和 {cmd:tax}，是否等于零{p_end}
{phang2}{cmd:. mi test tax sqft}{p_end}

{pstd}测试 {cmd:sqft} 和 {cmd:tax} 的系数是否相等{p_end}
{phang2}{cmd:. mi estimate (diff: _b[tax]-_b[sqft]), saving(miest):}{p_end}
{phang3}{cmd:regress price tax sqft age nfeatures ne custom corner}{p_end}
{phang2}{cmd:. mi testtransform diff}{p_end}

{pstd}测试三个系数是否共同相等{p_end}
{phang2}{cmd:. mi estimate (diff1: _b[tax]-_b[sqft]) (diff2: _b[custom]-_b[tax]) using miest}{p_end}
{phang2}{cmd:. mi testtr diff1 diff2}{p_end}

{pstd}测试非线性假设{p_end}
{phang2}{cmd:. mi estimate (rdiff: _b[tax]/_b[sqft] - 1) using miest}{p_end}
{phang2}{cmd:. mi testtr rdiff}{p_end}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:mi} {cmd:test} 和 {cmd:mi} {cmd:testtransform} 将以下结果存储到 {cmd:r()} 中：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:r(df)}}测试约束的自由度{p_end}
{synopt:{cmd:r(df_r)}}剩余自由度{p_end}
{synopt:{cmd:r(p)}}双侧 p 值{p_end}
{synopt:{cmd:r(F)}}F 统计量{p_end}
{synopt:{cmd: r(drop)}}{cmd:1} 如果约束被丢弃，{cmd:0} 否则{p_end}
{synopt:{cmd:r(dropped_i)}}丢弃的第 i 个约束的索引{p_end}
{p2colreset}{...}


{marker references}{...}
{title:参考文献}

{marker BR1999}{...}
{phang}
Barnard, J., 和 D. B. Rubin. 1999. 多重插补中的小样本自由度. {it:Biometrika} 86: 948-955.

{marker R2007}{...}
{phang}
Reiter, J. P. 2007. 具有多重插补的多组分显著性测试的小样本自由度. {it:Biometrika} 94: 502-508.
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mi_test.sthlp>}