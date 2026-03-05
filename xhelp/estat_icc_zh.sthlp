{smcl}
{* *! version 1.1.4  23may2018}{...}
{viewerdialog estat "dialog estat"}{...}
{vieweralsosee "[ME] estat icc" "mansection ME estaticc"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[ME] meglm" "help meglm_zh"}{...}
{vieweralsosee "[ME] meintreg" "help meintreg_zh"}{...}
{vieweralsosee "[ME] melogit" "help melogit_zh"}{...}
{vieweralsosee "[ME] meprobit" "help meprobit_zh"}{...}
{vieweralsosee "[ME] metobit" "help metobit_zh"}{...}
{vieweralsosee "[ME] mixed" "help mixed_zh"}{...}
{viewerjumpto "语法" "estat icc##syntax"}{...}
{viewerjumpto "estat 菜单" "estat icc##menu_estat"}{...}
{viewerjumpto "描述" "estat icc##description"}{...}
{viewerjumpto "PDF 文档链接" "estat_icc_zh##linkspdf"}{...}
{viewerjumpto "选项" "estat icc##option_estat_icc"}{...}
{viewerjumpto "示例" "estat icc##example"}{...}
{viewerjumpto "存储结果" "estat icc##results"}
{help estat_icc:English Version}
{hline}{...}
{p2colset 1 19 21 2}{...}
{p2col:{bf:[ME] estat icc} {hline 2}}估计类内相关系数{p_end}
{p2col:}({mansection ME estaticc:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 14 2}
{cmd:estat} {opt icc} [{cmd:,} {opt l:evel(#)}]


INCLUDE help menu_estat


{marker description}{...}
{title:描述}

{pstd}
{cmd:estat icc} 用于在使用 {cmd:mixed}，{cmd:meintreg}，
{cmd:metobit}，{cmd:melogit} 和 {cmd:meprobit} 进行估计后。
{cmd:estat icc} 也用于在使用 {cmd:meglm} 估计时，当拟合模型为线性、logit或probit混合效应模型。

{pstd}
{cmd:estat icc} 显示模型每个嵌套层次的响应对的类内相关系数。
类内相关系数可用于随机截距模型或条件于随机效应协变量等于0的随机系数模型。
它们不适用于交叉效应模型或具有独立结构之外的残差误差结构。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection ME estaticcRemarksandexamples:备注和示例}

        {mansection ME estaticcMethodsandformulas:方法和公式}

{pstd}
上述部分不包含在本帮助文件中。


{marker option_estat_icc}{...}
{title:选项}

{phang}
{opt level(#)}
指定置信区间的置信水平，百分比形式。
默认值为 {cmd:level(95)}，或由 {helpb set level} 设置。


{marker example}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse productivity}{p_end}
{phang2}{cmd:. mixed gsp private emp hwy water other unemp || region: ||}
             {cmd:state:}{p_end}

{pstd}计算残差类内相关系数{p_end}
{phang2}{cmd:. estat icc}{p_end}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:estat icc} 将以下内容存储在 {cmd:r()} 中：

{synoptset 15 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:r(icc}{it:#}{cmd:)}}水平-{it:#} 的类内相关系数{p_end}
{synopt:{cmd:r(se}{it:#}{cmd:)}}水平-{it:#} 的类内相关系数的标准误{p_end}
{synopt:{cmd:r(level)}}置信区间的置信水平{p_end}
{p2colreset}{...}

{synoptset 15 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:r(label}{it:#}{cmd:)}}水平 {it:#} 的标签{p_end}
{p2colreset}{...}

{synoptset 15 tabbed}{...}
{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:r(ci}{it:#}{cmd:)}}水平-{it:#} 的类内相关系数的置信区间（下限和上限）向量{p_end}
{p2colreset}{...}

{pstd}
对于G级嵌套模型，{it:#} 可以是 2 到 G 之间的任何整数。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <estat_icc.sthlp>}