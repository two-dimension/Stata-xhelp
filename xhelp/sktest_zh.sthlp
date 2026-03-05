{smcl}
{* *! version 1.2.10  14may2018}{...}
{viewerdialog sktest "dialog sktest"}{...}
{vieweralsosee "[R] sktest" "mansection R sktest"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] 诊断图" "help diagnostic_plots_zh"}{...}
{vieweralsosee "[R] 梯度" "help ladder_zh"}{...}
{vieweralsosee "[R] lv" "help lv_zh"}{...}
{vieweralsosee "[MV] mvtest 正态性" "help mvtest_normality_zh"}{...}
{vieweralsosee "[R] swilk" "help swilk_zh"}{...}
{viewerjumpto "语法" "sktest_zh##syntax"}{...}
{viewerjumpto "菜单" "sktest_zh##menu"}{...}
{viewerjumpto "描述" "sktest_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "sktest_zh##linkspdf"}{...}
{viewerjumpto "选项" "sktest_zh##option"}{...}
{viewerjumpto "示例" "sktest_zh##example"}{...}
{viewerjumpto "存储结果" "sktest_zh##results"}{...}
{viewerjumpto "参考文献" "sktest_zh##references"}
{help sktest:English Version}
{hline}{...}
{p2colset 1 15 17 2}{...}
{p2col:{bf:[R] sktest} {hline 2}}偏度和峰度的正态性检验{p_end}
{p2col:}({mansection R sktest:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 15 2}
{cmd:sktest}
{varlist}
{ifin}
[{it:{help sktest##weight:权重}}]
[{cmd:,} {opt noa:djust}]

{marker weight}{...}
{p 4 6 2}
允许使用 {opt aweight} 和 {opt fweight}；见 {help weight_zh}。


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 摘要、表格和检验 >}
     {bf:分布图和检验 > 偏度和峰度正态性检验}


{marker description}{...}
{title:描述}

{pstd}
对于 {varlist} 中的每个变量，{opt sktest} 基于偏度和峰度进行正态性检验，然后将两个检验的结果合并为一个总体检验统计量。{opt sktest} 需要至少 8 个观测值才能进行计算。有关多元正态性检验，请参见 {manhelp mvtest_normality MV:mvtest normality}。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection R sktest快速入门:快速入门}

        {mansection R sktest备注和示例:备注和示例}

        {mansection R sktest方法和公式:方法和公式}

{pstd}
上述部分不包含在此帮助文件中。


{marker option}{...}
{title:选项}

{dlgtab:主要}

{phang}
{opt noadjust} 抑制 {help sktest##R1991:Royston (1991)} 对总体卡方及其显著性水平所做的经验调整，并呈现 {help sktest##DBD1990:D'Agostino、Balanger 和 D'Agostino (1990)} 所描述的未修改的检验结果。


{marker example}{...}
{title:示例}

{phang}{cmd:. sysuse auto}{p_end}
{phang}{cmd:. sktest mpg trunk}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:sktest} 将以下内容存储在 {cmd:r()} 中：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:r(chi2)}}卡方{p_end}
{synopt:{cmd:r(P_skew)}}Pr(偏度){p_end}
{synopt:{cmd:r(P_kurt)}}Pr(峰度){p_end}
{synopt:{cmd:r(P_chi2)}}Prob > chi2{p_end}
{p2colreset}{...}

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 矩阵}{p_end}
{synopt:{cmd:r(N)}}观测值矩阵{p_end}
{synopt:{cmd:r(Utest)}}检验结果矩阵，每个变量一行{p_end}
{p2colreset}{...}


{marker references}{...}
{title:参考文献}

{marker DBD1990}{...}
{phang}
D'Agostino, R. B., A. J. Belanger 和 R. B. D'Agostino Jr. 1990.
关于使用强大且信息丰富的正态性检验的建议。
{it:美国统计学家} 44: 316-321。

{marker R1991}{...}
{phang}
Royston, P. 1991. sg3.5: 对 sg3.4 的评论及改进的 D'Agostino 检验。
{browse "http://www.stata.com/products/stb/journals/stb3.pdf":{it:Stata 技术公告} 3}: 23-24。
重印于 {it:Stata 技术公告重印}, 第 1 卷，第 110-112 页。
德克萨斯州大学站：Stata 出版社。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <sktest.sthlp>}