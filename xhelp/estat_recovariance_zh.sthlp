{smcl}
{* *! version 1.0.4  23may2018}{...}
{viewerdialog estat "dialog estat"}{...}
{vieweralsosee "[ME] estat recovariance" "mansection ME estatrecovariance"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[ME] menl" "help menl_zh"}{...}
{vieweralsosee "[ME] mixed" "help mixed_zh"}{...}
{viewerjumpto "语法" "estat recovariance##syntax"}{...}
{viewerjumpto "estat 的菜单" "estat recovariance##menu_estat"}{...}
{viewerjumpto "描述" "estat recovariance##description"}{...}
{viewerjumpto "PDF 文档链接" "estat_recovariance_zh##linkspdf"}{...}
{viewerjumpto "选项" "estat recovariance##option_estat_recovariance"}{...}
{viewerjumpto "示例" "estat recovariance##example"}{...}
{viewerjumpto "存储结果" "estat recovariance##results"}
{help estat_recovariance:English Version}
{hline}{...}
{p2colset 1 28 30 2}{...}
{p2col:{bf:[ME] estat recovariance} {hline 2}}显示估计的随机效应协方差矩阵{p_end}
{p2col:}({mansection ME estatrecovariance:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 14 2}
{cmd:estat} {opt recov:ariance} [{cmd:,} {opt relev:el(levelvar)}
          {opt corr:elation} {help matlist_zh:{it:matlist_options}}]


INCLUDE help menu_estat


{marker description}{...}
{title:描述}

{pstd}
{cmd:estat recovariance} 应在使用 {cmd:menl} 和 {cmd:mixed} 进行估计后使用。

{pstd}
{cmd:estat recovariance} 显示模型中每个级别的随机效应的估计方差-协方差矩阵。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection ME estatrecovarianceRemarksandexamples:备注和示例}

{pstd}
以上部分不包括在此帮助文件中。


{marker option_estat_recovariance}{...}
{title:选项}

{phang}
{opt relevel(levelvar)} 指定要显示的随机效应协方差矩阵的模型级别。
默认情况下，显示模型中所有级别的协方差矩阵。 {it:levelvar} 是描述该级别分组的变量名，或为 {cmd:_all}，这是表示包含所有估计数据的组的特殊指定。
{cmd:_all} 指定在 {cmd:menl} 中不被支持。

{phang}
{opt correlation} 将协方差矩阵显示为相关矩阵。

{phang}
{it:matlist_options} 是控制矩阵（或多个矩阵）显示方式的样式和格式选项；有关可用选项的列表，请参见 {help matlist_zh:[P] matlist}。


{marker example}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse pig}{p_end}
{phang2}{cmd:. mixed weight week || id: week, covariance(unstructured)}{p_end}

{pstd}级别 ID 的随机效应相关矩阵{p_end}
{phang2}{cmd:. estat recovariance, correlation}{p_end}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:estat recovariance} 将以下内容存储在 {cmd:r()} 中：

{synoptset 15 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:r(relevels)}}级别数量{p_end}
{p2colreset}{...}

{synoptset 15 tabbed}{...}
{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:r(Cov}{it:#}{cmd:)}}级别-{it:#} 随机效应协方差矩阵{p_end}
{synopt:{cmd:r(Corr}{it:#}{cmd:)}}级别-{it:#} 随机效应相关矩阵（如果指定了选项 {cmd:correlation}）{p_end}
{p2colreset}{...}

{pstd}
对于 G 级嵌套模型，{it:#} 可以是 2 到 G 之间的任何整数。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <estat_recovariance.sthlp>}