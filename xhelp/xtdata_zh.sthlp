{smcl}
{* *! version 1.1.10  19oct2017}{...}
{viewerdialog xtdata "dialog xtdata"}{...}
{vieweralsosee "[XT] xtdata" "mansection XT xtdata"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[XT] xtsum" "help xtsum_zh"}{...}
{viewerjumpto "语法" "xtdata_zh##syntax"}{...}
{viewerjumpto "菜单" "xtdata_zh##menu"}{...}
{viewerjumpto "描述" "xtdata_zh##description"}{...}
{viewerjumpto "PDF文档链接" "xtdata_zh##linkspdf"}{...}
{viewerjumpto "选项" "xtdata_zh##options"}{...}
{viewerjumpto "示例" "xtdata_zh##examples"}{...}
{viewerjumpto "警告" "xtdata_zh##warnings"}
{help xtdata:English Version}
{hline}{...}
{p2colset 1 16 18 2}{...}
{p2col:{bf:[XT] xtdata} {hline 2}}使用xt数据进行更快的规范搜索{p_end}
{p2col:}({mansection XT xtdata:查看完整PDF手册条目}){p_end}


{marker syntax}{...}
{title:语法}

{p 8 15 2}
{cmd:xtdata} [{varlist}] {ifin} 
[{cmd:,} {it:options}]


{synoptset 15 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:主要}
{synopt :{opt re}}将数据转换为适合随机效应估计的形式{p_end}
{synopt :{opt r:atio(#)}}随机效应与纯残差的比率（标准差）{p_end}
{synopt :{opt be}}将数据转换为适合间断估计的形式{p_end}
{synopt :{opt fe}}将数据转换为适合固定效应（内部）估计的形式{p_end}
{synopt :{opt nodouble}}保持原变量类型；默认情况下，将类型重铸为 {opt double}{p_end}
{synopt :{opt clear}}覆盖当前内存中的数据{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
必须指定一个面板变量；使用 {help xtset_zh}。


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 纵向/面板数据 > 设置和工具 >}
     {bf:使用xt数据进行更快的规范搜索}


{marker description}{...}
{title:描述}

{pstd}
{cmd:xtdata} 生成指定的变量在 {varlist} 以及数据中所有变量的变换数据集。一旦数据被变换，Stata 的 {cmd:regress} 命令可以更快地进行规范搜索，而不是使用 {cmd:xtreg}；请参见 {manhelp regress R} 和 {manhelp xtreg XT}。使用 {cmd:xtdata, re} 还会创建一个名为 {opt constant} 的变量。在 {cmd:xtdata, re} 后使用 {cmd:regress} 时，指定 {opt noconstant} 并在回归中包含 {cmd:constant}。在 {cmd:xtdata, be} 和 {cmd:xtdata, fe} 后，您不需要包含 {cmd:constant} 或指定 {cmd:regress} 的 {opt noconstant} 选项。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection XT xtdataQuickstart:快速入门}

        {mansection XT xtdataRemarksandexamples:备注和示例}

        {mansection XT xtdataMethodsandformulas:方法和公式}

{pstd}
上面的部分不包括在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主要}

{phang}
{opt re} 指定数据被转换为适合随机效应估计的形式。如果未指定 {opt be}、{opt fe} 或 {opt re}，则默认使用 {opt re}。同时，必须指定 {opt ratio()}。

{phang}
{opt ratio(#)}（仅与 {cmd:xtdata, re} 一起使用）指定 sigma_u/sigma_e 的比率，即随机效应与纯残差的比率。这是标准差的比率，而不是方差。

{phang}
{opt be} 指定数据被转换为适合间断估计的形式。

{phang}
{opt fe} 指定数据被转换为适合固定效应（内部）估计的形式。

{phang}
{opt nodouble} 指定变换的变量在可能的情况下保持其原始类型。默认情况下，会将变量重铸为 {cmd:double}。

{pmore}
请记住，{cmd:xtdata} 将变量转换为从组均值的差值、从组均值的伪差值或组均值。指定 {opt nodouble} 会减少结果数据集的大小，但可能会在这些计算中引入舍入错误。

{phang}
{opt clear} 指定即使数据集自上次保存到磁盘以来已更改，数据也可以被转换。


{marker examples}{...}
{title:示例}

{hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse xtdatasmpl}{p_end}

{pstd}执行间断变换{p_end}
{phang2}{cmd:. xtdata ln_w grade age* ttl_exp* tenure* black not_smsa south, be}
{p_end}

{pstd}相当于 {cmd:xtreg, be}{p_end}
{phang2}{cmd:. regress ln_w grade age* ttl_exp* tenure* black not_smsa south}
{p_end}

{hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse xtdatasmpl, clear}{p_end}

{pstd}执行内部变换{p_end}
{phang2}{cmd:. xtdata, fe}{p_end}

{pstd}相当于 {cmd:xtreg, fe}{p_end}
{phang2}{cmd:. regress ln_w grade age* ttl_exp* tenure* black not_smsa south}
{p_end}

{hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse xtdatasmpl, clear}{p_end}

{pstd}执行随机效应变换{p_end}
{phang2}{cmd:. xtdata, re ratio(.88719358)}{p_end}

{pstd}相当于 {cmd:xtreg, re}{p_end}
{phang2}{cmd:. regress ln_w grade age* ttl_exp* tenure* black not_smsa south}
                 {cmd:constant, noconstant}{p_end}
{hline}

{marker warnings}{...}
{title:警告}

{phang}1. {cmd:xtdata} 旨在用于分析的规范搜索阶段。最终结果应在未转换的数据上使用 {cmd:xtreg} 进行估计。

{phang}2. 在 {cmd:xtdata, fe} 后使用 {cmd:regress} 会产生过小的标准误差，但只是稍微过小。

{phang}3. 对显著性测试和置信区间的解释应保持宽松。 在 {cmd:xtdata, fe} 和 {cmd:re} 后，正在假设一个不正确（但接近正确）的分布。

{phang}4. 您应该忽略 {cmd:regress} 输出顶部报告的摘要统计。

{phang}5. 在转换数据后，您可以形成线性，但不能形成非线性回归变量的组合。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <xtdata.sthlp>}