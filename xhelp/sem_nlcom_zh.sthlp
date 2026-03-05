{smcl}
{* *! version 1.0.7  19oct2017}{...}
{viewerdialog nlcom "dialog nlcom"}{...}
{vieweralsosee "[SEM] nlcom " "mansection SEM nlcom"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[SEM] estat stdize" "help sem_estat_stdize_zh"}{...}
{findalias asgsemmediation}{...}
{vieweralsosee "[SEM] lincom" "help sem_lincom_zh"}{...}
{vieweralsosee "[SEM] test" "help sem_test_zh"}{...}
{vieweralsosee "[SEM] testnl" "help sem_testnl_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] nlcom" "help nlcom_zh"}{...}
{viewerjumpto "Syntax" "sem_nlcom_zh##syntax"}{...}
{viewerjumpto "Menu" "sem_nlcom_zh##menu"}{...}
{viewerjumpto "Description" "sem_nlcom_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "sem_nlcom_zh##linkspdf"}{...}
{viewerjumpto "Options" "sem_nlcom_zh##options"}{...}
{viewerjumpto "Remarks" "sem_nlcom_zh##remarks"}{...}
{viewerjumpto "Examples" "sem_nlcom_zh##examples"}{...}
{viewerjumpto "Stored results" "sem_nlcom_zh##results"}
{help sem_nlcom:English Version}
{hline}{...}
{p2colset 1 16 18 2}{...}
{p2col:{bf:[SEM] nlcom} {hline 2}}参数的非线性组合{p_end}
{p2col:}({mansection SEM nlcom:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{phang2}{cmd:nlcom} {it:{help exp_zh:exp}} [{cmd:,}
      {it:{help nlcom_zh:options}}]


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > SEM（结构方程建模） > 测试和置信区间 > 参数的非线性组合}


{marker description}{...}
{title:描述}

{pstd}
{cmd:nlcom} 是在 {cmd:sem}、{cmd:gsem} 和其他 Stata 估计命令后使用的后估计命令。

{pstd}
{cmd:nlcom} 计算（可能的）非线性参数组合的点估计、标准误、z 统计量、p 值和置信区间。详见 {help nlcom_zh:[R] nlcom}。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection SEM nlcomRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{pstd}    
请参阅 {it:{help nlcom##options:选项}} 在 {help nlcom_zh:[R] nlcom} 中。


{marker remarks}{...}
{title:备注}

{pstd}
请参阅 {findalias gsemmediation}。

{pstd}    
{cmd:nlcom} 在 SEM 的度量中工作，也就是说，路径系数、方差和协方差。如果您希望根据标准化系数和相关性来构建您的非线性组合，并且使用 {cmd:sem} 而非 {cmd:gsem} 拟合该模型，则请在 {cmd:nlcom} 前加上 {cmd:estat stdize:}；详见 {help sem_estat_stdize_zh:[SEM] estat stdize}。

{pstd}    
严格来说，{cmd:estat stdize:} 是不必要的，因为在您希望使用标准化系数或相关的任何地方，您可以直接输入公式。如果您这样做，您将得到相同的结果，除了数值精度。使用 {cmd:estat stdize:} 前缀所产生的答案会更准确，因为 {cmd:estat stdize:} 能够在计算的某部分替代解析导数，而 {cmd:nlcom} 在进行整个计算时则必须使用数值导数。 


{marker examples}{...}
{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse sem_2fmm}{p_end}
{phang2}{cmd:. sem (Affective -> a1 a2 a3 a4 a5) (Cognitive -> c1 c2 c3 c4 c5)}{p_end}

{pstd}显示系数图例{p_end}
{phang2}{cmd:. sem, coeflegend}{p_end}

{pstd}估计 {cmd:a2} 和 {cmd:a3} 的系数比{p_end}
{phang2}{cmd:. nlcom _b[a2:Affective] / _b[a3:Affective]}{p_end}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse gsem_multmed}{p_end}
{phang2}{cmd:. gsem (perform <- satis support M1[branch])}{break}
	{cmd:(satis <- support M2[branch]), cov(M1[branch]*M2[branch]@0)}{p_end}

{pstd}显示系数图例{p_end}
{phang2}{cmd:. gsem, coeflegend}{p_end}

{pstd}估计系数的乘积以获得 {cmd:support} 对 {cmd:perform} 的间接效应{p_end}
{phang2}{cmd:. nlcom _b[perform:satis]*_b[satis:support]}{p_end}

    {hline}

{marker results}{...}
{title:存储结果}

{pstd}
请参阅 {it:{help nlcom##results:存储结果}} 在
{help nlcom_zh:[R] nlcom} 中。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <sem_nlcom.sthlp>}