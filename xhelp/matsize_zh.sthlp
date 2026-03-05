{smcl}
{* *! version 1.2.0  23may2018}{...}
{vieweralsosee "之前记录的内容" "help prdocumented_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] 内存" "help memory_zh"}{...}
{vieweralsosee "[R] 查询" "help query_zh"}{...}
{viewerjumpto "语法" "matsize_zh##syntax"}{...}
{viewerjumpto "描述" "matsize_zh##description"}{...}
{viewerjumpto "选项" "matsize_zh##option"}{...}
{viewerjumpto "备注" "matsize_zh##remarks"}
{help matsize:English Version}
{hline}{...}
{p2colset 1 16 18 2}{...}
{p2col:{bf:[R] matsize} {hline 2}}设置模型中的最大变量数量{p_end}
{p2col:}({browse "http://www.stata.com/manuals15/rmatsize.pdf":查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}

{pstd}
从 Stata 16 开始，模型中的最大变量数量是固定的；请参见 {help limits_zh}。
{cmd:set matsize} 仅在版本控制下有效。
这是原始帮助文件，我们将不再更新，因此某些链接可能不再有效。

{marker syntax}{...}
{title:语法}

{p 8 20 2}{cmd:set} {cmdab:mat:size} {it:#} [{cmd:,} {cmdab:perman:ently}]

{phang}
    其中 {cmd:10} {ul:<} {it:#} {ul:<} {cmd:11000} 适用于 Stata/MP 和 Stata/SE
        而 {cmd:10} {ul:<} {it:#} {ul:<} {cmd:800} 适用于 Stata/IC。

{marker description}{...}
{title:描述}

{pstd}
{cmd:set matsize} 设置最大矩阵大小，影响可以包含在 Stata 的任何估计命令中的变量数量。
对于 {help statamp_zh:Stata/MP}、{help SpecialEdition:Stata/SE} 和
{help stataic_zh:Stata/IC}，默认值为 400，但可以增加或减少。

{pstd}
改变 {cmd:matsize} 对 Mata 没有影响。

{marker option}{...}
{title:选项}

{phang}
{cmd:permanently} 指定除了立即进行更改之外，还记住 {cmd:matsize} 设置，并在调用 Stata 时使其成为默认设置。

{marker remarks}{...}
{title:备注}

{pstd}
我们希望在变量 {cmd:x1} 到 {cmd:x400} 上拟合 {cmd:y} 的模型。未思考的情况下，我们输入

    {cmd:. regress y x1-x400}
    {err}matsize 太小
{p 8 8}
您尝试创建一个包含超过 400 行或列的矩阵，或尝试拟合一个包含超过 400 个变量及附加参数的模型。您需要使用 {cmd:set matsize} 命令增加 matsize；请参见帮助 {help matsize_zh}。
{p_end}
    {txt}{search r(908):r(908);}

{pstd}
我们意识到需要增加 matsize，因此输入

    {cmd:. set matsize 450}

    {cmd:. regress y x1-x400}
      （输出出现）

{pstd}
程序员应注意，当前的 matsize 设置存储为 c-class 值 {cmd:c(matsize)}；请参见 {manhelp creturn P}。

{title:设置 matsize}

{pstd}
增加 {cmd:matsize} 会增加 Stata 的内存消耗：

          matsize           内存使用
	  {hline 28}
             400               1.254M 
             800               4.950M
           1,600              19.666M
           3,200              78.394M
           6,400             313.037M
          11,000             924.080M
	  {hline 28}

{pstd}
上表低估了 Stata 将使用的内存量。
该表是在假设有一个矩阵和十一
个向量的情况下推导的。如果需要两个矩阵，上述数字几乎会翻倍。

{pstd}
如果您使用的是 32 位计算机，您可能无法将 {cmd:matsize} 设置为
11,000。值为 11,000 将需要每个矩阵近 1GB 的内存。大多数 32 位操作系统分配给 Stata 的总内存是
2GB，因此如果您有两个矩阵，将没有内存可用于
数据或 Stata 的代码！

{pstd}
您不应该将 {cmd:set matsize} 设置得比必要的要大。这样做最多只是浪费内存，最坏的情况是减慢 Stata 的运行速度或阻止 Stata 为其他任务提供足够的内存。如果您收到错误信息 "matsize 太小"，请仅增加 {cmd:matsize} 足以消除该错误信息。

{title:与 matsize 相关的错误代码}

{phang}146. {cmd:变量或值过多} 
            {cmd:(matsize 太小)}{break}
{cmd:您可以使用 set matsize 命令增加 matsize;}
{cmd:请参见帮助 matsize.}{p_end}
{pmore2}您的 {cmd:anova} 模型的规范包含超过
{cmd:matsize} - 2 个解释变量；请参见 {manhelp matsize R}。

{phang}908. {cmd:matsize 太小}{p_end}
{pmore2}您尝试创建一个行或列过多的矩阵，或尝试拟合一个变量过多的模型。您需要增加
{cmd:matsize}。使用 {cmd:set matsize}；请参见 {manhelp matsize R}。

{pmore2}
如果您使用因子变量并包含了具有很多缺失单元的交互项，请增加 {cmd:matsize} 或使用 {cmd:set emptycells}
{cmd:drop} 以减少所需的矩阵大小；请参见
{manhelp set_emptycells R:set emptycells}。

{pmore2}
如果您使用因子变量，您可能不小心将一个连续变量视为分类变量，导致出现很多类别。请对这样的变量使用
{cmd:c.} 运算符。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <matsize.sthlp>}