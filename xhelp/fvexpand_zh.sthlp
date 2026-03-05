{smcl}
{* *! version 1.0.10  02aug2018}{...}
{vieweralsosee "[P] fvexpand" "mansection P fvexpand"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] fvrevar" "help fvrevar_zh"}{...}
{vieweralsosee "[U] 11.4.3 因子变量" "help fvvarlist_zh"}{...}
{viewerjumpto "语法" "fvexpand_zh##syntax"}{...}
{viewerjumpto "描述" "fvexpand_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "fvexpand_zh##linkspdf"}{...}
{viewerjumpto "备注" "fvexpand_zh##remarks"}{...}
{viewerjumpto "存储结果" "fvexpand_zh##results"}
{help fvexpand:English Version}
{hline}{...}
{p2colset 1 17 19 2}{...}
{p2col:{bf:[P] fvexpand} {hline 2}}扩展因子变量列表{p_end}
{p2col:}({mansection P fvexpand:查看完整 PDF 手册条目}){p_end}


{marker syntax}{...}
{title:语法}

{phang2}
{cmd:fvexpand} [{varlist}] {ifin}

{phang}
{it:varlist} 可以包含因子变量和时间序列运算符；请参见
{help fvvarlist_zh} 和 {help tsvarlist_zh}。


{marker description}{...}
{title:描述}

{pstd}
{cmd:fvexpand} 将因子变量列表扩展为相应的具体变量列表。 {varlist} 可以是一般性或特定的，甚至可能已经扩展。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection P fvexpandRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在本帮助文件中。


{marker remarks}{...}
{title:备注}

{pstd}
一般因子变量列表的一个示例是 {cmd:mpg} {cmd:i.foreign}。对应的特定因子变量列表将是 {cmd:mpg} {cmd:i(0 1)b0.foreign}，如果 {cmd:foreign} 在数据中取值 0 和 1。

{pstd}
特定因子变量列表是相对于给定问题而言特定的，也就是说，针对给定的数据集和子样本。特定变量列表确定因子变量所取的值及基准。

{pstd}
因子变量列表 {cmd:mpg} {cmd:i(0 1)b0.foreign} 是特定的。相同的变量列表也可以写作 {cmd:mpg} {cmd:i0b.foreign} {cmd:i1.foreign}，所以也是特定的。前者是未扩展的特定变量列表，后者是扩展的特定变量列表。

{pstd}
{cmd:fvexpand} 接受一般或特定（扩展或未扩展）的因子变量列表，以及可选的 {cmd:if} 或 {cmd:in}，并返回一个完全扩展的特定变量列表。


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:fvexpand} 在 {cmd:r()} 中存储以下内容：

{synoptset 15 tabbed}{...}
{p2col 5 25 29 2: 宏}{p_end}
{synopt:{cmd:r(varlist)}}扩展的具体变量列表{p_end}
{synopt:{cmd:r(fvops)}}{cmd:true} 如果 {it:varlist} 包含因子变量{p_end}
{synopt:{cmd:r(tsops)}}{cmd:true} 如果 {it:varlist} 包含时间序列运算符{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <fvexpand.sthlp>}