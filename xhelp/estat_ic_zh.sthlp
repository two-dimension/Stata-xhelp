{smcl}
{* *! version 1.0.3  19oct2017}{...}
{viewerdialog estat "dialog estat"}{...}
{vieweralsosee "[R] estat ic" "mansection R estatic"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] estat" "help estat_zh"}{...}
{vieweralsosee "[R] estat summarize" "help estat summarize"}{...}
{vieweralsosee "[R] estat vce" "help estat vce"}{...}
{viewerjumpto "Syntax" "estat ic##syntax"}{...}
{viewerjumpto "Menu for estat" "estat ic##menu_estat"}{...}
{viewerjumpto "Description" "estat ic##description"}{...}
{viewerjumpto "Links to PDF documentation" "estat_ic_zh##linkspdf"}{...}
{viewerjumpto "Option" "estat ic##option_estat_ic"}{...}
{viewerjumpto "Example" "estat ic##example"}{...}
{viewerjumpto "Stored results" "estat ic##results"}
{help estat_ic:English Version}
{hline}{...}
{p2colset 1 17 19 2}{...}
{p2col:{bf:[R] estat ic} {hline 2}}显示信息准则{p_end}
{p2col:}({mansection R estatic:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

        {cmd:estat ic} [{cmd:,} {opt n(#)}]


包含帮助菜单_estat


{marker description}{...}
{title:描述}

{pstd}
{opt estat ic} 显示 Akaike 和 Schwarz 的贝叶斯信息准则。 


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection R estaticQuickstart:快速入门}

        {mansection R estaticRemarksandexamples:备注和示例}

        {mansection R estaticMethodsandformulas:方法和公式}

{pstd}
上述部分不包含在此帮助文件中。


{marker option_estat_ic}{...}
{title:选项}

{phang}
{opt n(#)} 指定计算 BIC 时使用的 {it:N}；请参见 {manhelp bic_note R:BIC note}。


{marker example}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. sysuse auto}{p_end}
{phang2}{cmd:. regress price headroom trunk length mpg}{p_end}

{pstd}获取 AIC 和 BIC{p_end}
{phang2}{cmd:. estat ic}{p_end}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:estat ic} 在 {cmd:r()} 中存储以下内容：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 矩阵}{p_end}
{synopt:{cmd:r(S)}}1 x 6 的结果矩阵：{p_end}
{synopt:}{space 2}1. 样本大小{space 19}4. 自由度{p_end}
{synopt:}{space 2}2. 空模型的对数似然{space 2}5. AIC{p_end}
{synopt:}{space 2}3. 完全模型的对数似然{space 2}6. BIC{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <estat_ic.sthlp>}