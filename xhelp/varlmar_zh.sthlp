{smcl}
{* *! version 1.1.10  20sep2018}{...}
{viewerdialog varlmar "dialog varlmar"}{...}
{vieweralsosee "[TS] varlmar" "mansection TS varlmar"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TS] var" "help var_zh"}{...}
{vieweralsosee "[TS] var intro" "help var_intro_zh"}{...}
{vieweralsosee "[TS] var svar" "help svar_zh"}{...}
{vieweralsosee "[TS] varbasic" "help varbasic_zh"}{...}
{viewerjumpto "Syntax" "varlmar_zh##syntax"}{...}
{viewerjumpto "Menu" "varlmar_zh##menu"}{...}
{viewerjumpto "Description" "varlmar_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "varlmar_zh##linkspdf"}{...}
{viewerjumpto "Options" "varlmar_zh##options"}{...}
{viewerjumpto "Examples" "varlmar_zh##examples"}{...}
{viewerjumpto "Stored results" "varlmar_zh##results"}{...}
{viewerjumpto "Reference" "varlmar_zh##reference"}
{help varlmar:English Version}
{hline}{...}
{p2colset 1 17 19 2}{...}
{p2col:{bf:[TS] varlmar} {hline 2}}LM检验VAR或SVAR模型残差自相关性{p_end}
{p2col:}({mansection TS varlmar:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 14 2}
{cmd:varlmar} [{cmd:,} {it:选项}]

{synoptset 20}{...}
{synopthdr}
{synoptline}
{synopt:{opt ml:ag(#)}}使用 {it:#} 作为自相关的最大阶数；默认值为 {cmd:mlag(2)} {p_end}
{synopt:{opt est:imates(estname)}}使用先前存储的结果 {it:estname}；
默认值为使用活动结果 {p_end}
{synopt:{opt sep:arator(#)}}在每 {it:#} 行后画分隔线 {p_end}
{synoptline}
{p 4 6 2}
{opt varlmar} 只能在 {cmd:var} 或 {cmd:svar} 后使用；请参见
{help var_zh:[TS] var} 或 {help svar_zh:[TS] var svar}。
{p_end}
{p 4 6 2}
在使用 {opt varlmar} 之前，您必须 {cmd:tsset} 您的数据；
{help tsset_zh:[TS] tsset}。
{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 多元时间序列 > VAR 诊断和检验 >}
    {bf:LM检验残差自相关性}


{marker description}{...}
{title:描述}

{pstd}
{opt varlmar} 实现对VAR模型残差自相关的拉格朗日乘子（LM）检验，该检验是在
{help varlmar##J1995:Johansen (1995)} 中提出的。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection TS varlmarQuickstart:快速入门}

        {mansection TS varlmarRemarksandexamples:备注和示例}

        {mansection TS varlmarMethodsandformulas:方法和公式}

{pstd}
上述部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{opt mlag(#)} 指定要检验的自相关的最大阶数。
   在 {opt mlag()} 中指定的整数必须大于 0；默认值为 2。

{phang}
{opt estimates(estname)} 请求 {opt varlmar} 使用先前获得的
   存储为 {it:estname} 的 {cmd:var} 或 {cmd:svar} 估计。默认情况下，{opt varlmar} 使用活动结果。请参见
   {manhelp estimates R} 获取有关操作估计结果的信息。

{phang}
{opt separator(#)} 指定在每行之间应绘制分隔线的频率。默认情况下，不出现分隔线。例如，
{cmd:separator(1)} 会在每行之间绘制一条线，{cmd:separator(2)} 在每隔一行之间绘制，以此类推。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse lutkepohl2}{p_end}

{pstd}拟合向量自回归（VAR）模型{p_end}
{phang2}{cmd:. var dln_inv dln_inc dln_consump if qtr<=tq(1978q4)}{p_end}

{pstd}将估计结果存储在 {cmd:basic} 中{p_end}
{phang2}{cmd:. estimates store basic}{p_end}

{pstd}拟合第二个VAR模型{p_end}
{phang2}{cmd:. var dln_inv dln_inc dln_consump if qtr<=tq(1978q4),}
                {cmd:lags(1/3) dfk small}{p_end}

{pstd}对第二个VAR模型进行残差自相关的LM检验{p_end}
{phang2}{cmd:. varlmar}

{pstd}对"basic" VAR模型进行残差自相关的LM检验{p_end}
{phang2}{cmd:. varlmar, estimates(basic)}

{pstd}设置{p_end}
{phang2}{cmd:. matrix A = (.,0,0\.,.,0\.,.,.)}{p_end}
{phang2}{cmd:. matrix B = I(3)}{p_end}

{pstd}拟合结构性向量自回归模型{p_end}
{phang2}{cmd:. svar dln_inv dln_inc dln_consump if qtr<=tq(1978q4),}
            {cmd:lags(1/3) dfk small aeq(A) beq(B)}

{pstd}在 {cmd:svar} 后对残差自相关进行LM检验{p_end}
{phang2}{cmd:. varlmar}



{marker results}{...}
{title:存储结果}

{pstd}
{cmd:varlmar} 将以下内容存储在 {cmd:r()} 中：

{synoptset 10 tabbed}{...}
{p2col 5 10 14 2: 矩阵}{p_end}
{synopt:{cmd:r(lm)}}卡方、自由度和p值{p_end}
{p2colreset}{...}


{marker reference}{...}
{title:参考文献}

{marker J1995}{...}
{phang}
Johansen, S. 1995.
{it:基于似然的协整向量自回归模型推断}。
牛津：牛津大学出版社。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <varlmar.sthlp>}