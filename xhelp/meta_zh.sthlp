{smcl}
{* *! version 1.0.0  17jun2019}{...}
{vieweralsosee "[META] meta" "mansection META meta"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[META] Intro" "mansection META Intro"}{...}
{viewerjumpto "Description" "meta_zh##description"}
{help meta:English Version}
{hline}{...}
{p2colset 1 16 18 2}{...}
{p2col:{bf:[META] meta} {hline 2}}元分析介绍{p_end}
{p2col:}({mansection META meta:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:描述}

    {c TLC}{hline 61}{c TRC}
    {c |} {cmd:meta} 命令执行元分析。简而言之，{col 67}{c |}
    {c |} 您可以执行以下操作： {col 67}{c |}
    {c |}{col 67}{c |}
    {c |}    1.  计算或指定效应大小；详见{col 67}{c |}
    {c |}        {helpb meta esize:[META] meta esize} 和 {...}
{helpb meta set:[META] meta set}.{col 67}{c |}
    {c |}{col 67}{c |}
    {c |}    2.  汇总元分析数据；详见{col 67}{c |}
    {c |}        {helpb meta summarize:[META] meta summarize} 和 {...}
{helpb meta forestplot:[META] meta forestplot}.{col 67}{c |}
    {c |}{col 67}{c |}
    {c |}    3.  执行元回归以处理异质性；{col 67}{c |}
    {c |}        详见 {helpb meta regress:[META] meta regress}.{col 67}{c |}
    {c |}{col 67}{c |}
    {c |}    4.  探索小样本效应和发表偏倚；{col 67}{c |}
    {c |}        详见 {helpb meta funnelplot:[META] meta funnelplot}、{...}
{helpb meta bias:[META] meta bias} 和{col 67}{c |}
    {c |}        {helpb meta trimfill:[META] meta trimfill}.{col 67}{c |}
    {c BLC}{hline 61}{c BRC}


{pstd}
有关无软件的元分析介绍，请参见
{manhelp META Intro}。

{pstd}
声明、更新和描述 {help meta_glossary##meta_data:{bf:meta} 数据}

{p2colset 9 39 41 2}{...}
{p2col :{helpb meta data}}声明元分析数据{p_end}
{p2col :{helpb meta esize}}计算效应大小并声明 {cmd:meta} 数据{p_end}
{p2col :{helpb meta set}}使用预先计算的效应大小声明 {cmd:meta} 数据{p_end}
{p2col :{helpb meta update}}更新当前 {cmd:meta} 数据的设置{p_end}
{p2col :{helpb meta query}}描述当前 {cmd:meta} 数据的设置{p_end}
{p2col :{helpb meta clear}}清除当前 {cmd:meta} 数据的设置{p_end}

{pstd}
通过使用表格汇总 {cmd:meta} 数据

{p2col :{helpb meta summarize}}汇总元分析数据{p_end}
{p2col :{mansection META metasummarizeRemarksandexamplesmsumexsubgr:{bf:meta summarize, subgroup()}}}执行子组元分析{p_end}
{p2col : {mansection META metasummarizeRemarksandexamplesmsumexcumul:{bf:meta summarize, cumulative()}}}执行累积元分析{p_end}

{pstd}
通过使用森林图汇总 {cmd:meta} 数据

{p2col :{helpb meta forestplot}}生成元分析森林图{p_end}
{p2col :{mansection META metaforestplotRemarksandexamplesmfpexsubgrs:{bf:meta forestplot, subgroup()}}}生成子组元分析森林图{p_end}
{p2col :{mansection META metaforestplotRemarksandexamplesmfpexcum:{bf:meta forestplot, cumulative()}}}生成累积元分析森林图{p_end}

{pstd}
探索异质性并执行元回归 

{p2col :{helpb meta labbeplot}}为二元数据生成 L'Abb{c e'} 图{p_end}
{p2col :{helpb meta regress}}执行元回归{p_end}
{p2col :{helpb estat bubbleplot}}在元回归后生成气泡图{p_end}

{pstd}
探索和处理小样本效应（漏斗图不对称、发表偏倚）

{p2col :{helpb meta funnelplot}}生成漏斗图{p_end}
{p2col :{mansection META metafunnelplotRemarksandexamplesmfunexcontours:{bf:meta funnelplot, contours()}}}生成轮廓增强的漏斗图{p_end}
{p2col :{helpb meta bias}}检验小样本效应或漏斗图不对称{p_end}
{p2col :{helpb meta trimfill}}执行发表偏倚的修剪和填充分析{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <meta.sthlp>}