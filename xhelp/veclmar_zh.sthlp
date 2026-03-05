{smcl}
{* *! version 1.1.9  20sep2018}{...}
{viewerdialog veclmar "dialog veclmar"}{...}
{vieweralsosee "[TS] veclmar" "mansection TS veclmar"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TS] varlmar" "help varlmar_zh"}{...}
{vieweralsosee "[TS] vec" "help vec_zh"}{...}
{vieweralsosee "[TS] vec intro" "help vec_intro_zh"}{...}
{viewerjumpto "语法" "veclmar_zh##syntax"}{...}
{viewerjumpto "菜单" "veclmar_zh##menu"}{...}
{viewerjumpto "描述" "veclmar_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "veclmar_zh##linkspdf"}{...}
{viewerjumpto "选项" "veclmar_zh##options"}{...}
{viewerjumpto "示例" "veclmar_zh##examples"}{...}
{viewerjumpto "存储的结果" "veclmar_zh##results"}
{help veclmar:English Version}
{hline}{...}
{p2colset 1 17 18 2}{...}
{p2col:{bf:[TS] veclmar} {hline 2}}对残差自相关的 LM 检验{p_end}
{p2col:}({mansection TS veclmar:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 19 2}
{cmd:veclmar} [{cmd:,} {it:options}]

{synoptset}{...}
{synopthdr}
{synoptline}
{synopt :{opt ml:ag(#)}}使用 {it:#} 作为自相关的最大阶数；默认值为
  {cmd:mlag(2)}{p_end}
{synopt :{opt est:imates(estname)}}使用之前存储的结果 {it:estname}；
  默认使用活动结果{p_end}
{synopt :{opt sep:arator(#)}}在每 {it:#} 行后绘制分隔线{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}{cmd:veclmar} 只能在 {cmd:vec} 之后使用；请参见
{help vec_zh:[TS] vec}.{p_end}
{p 4 6 2}在使用 {cmd:veclmar} 之前，您必须 {cmd:tsset} 数据；请参见
{help tsset_zh:[TS] tsset}.{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 多元时间序列 > VEC 诊断和检验 >}
     {bf:残差自相关的 LM 检验}


{marker description}{...}
{title:描述}

{pstd}
{cmd:veclmar} 实现了向量误差修正模型 (VECM) 残差自相关的拉格朗日乘子 (LM) 检验。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection TS veclmarQuickstart:快速启动}

        {mansection TS veclmarRemarksandexamples:备注和示例}

        {mansection TS veclmarMethodsandformulas:方法和公式}

{pstd}
上述章节不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{opt mlag(#)} 指定要检验的自相关的最大阶数。
在 {opt mlag()} 中指定的整数必须大于 0；默认值为 2。

{phang}
{opt estimates(estname)} 请求 {cmd:veclmar} 使用之前获得的存储为 {it:estname} 的 {cmd:vec} 估计集。默认情况下，
{cmd:veclmar} 使用活动结果。有关操作估计结果的信息，请参见 {manhelp estimates R}。

{phang}
{opt separator(#)} 指定分隔线之间的行数。默认情况下，分隔线不会出现。例如，
{cmd:separator(1)} 会在每行之间绘制一条线，{cmd:separator(2)} 会在每两行之间绘制一条线，以此类推。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse rdinc}{p_end}

{pstd}拟合向量误差修正模型{p_end}
{phang2}{cmd:. vec ln_ne ln_se}{p_end}

{pstd}执行残差自相关的拉格朗日乘子检验{p_end}
{phang2}{cmd:. veclmar}{p_end}

{pstd}与上述相同，但将最大自相关阶数设置为 4{p_end}
{phang2}{cmd:. veclmar, mlag(4)}{p_end}


{marker results}{...}
{title:存储的结果}

{pstd}
{cmd:veclmar} 在 {cmd:r()} 中存储以下内容：

{synoptset 10 tabbed}{...}
{p2col 5 10 14 2: 矩阵}{p_end}
{synopt:{cmd:r(lm)}}卡方(df) 和 p 值{p_end}
{p2colreset}{...}


{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <veclmar.sthlp>}