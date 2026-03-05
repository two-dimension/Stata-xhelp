{smcl}
{* *! version 1.1.12  15may2018}{...}
{viewerdialog mkmat "dialog mkmat"}{...}
{viewerdialog svmat "dialog svmat"}{...}
{vieweralsosee "[P] matrix mkmat" "mansection P matrixmkmat"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[P] matrix" "help matrix_zh"}{...}
{vieweralsosee "[P] matrix accum" "help matrix_accum_zh"}{...}
{vieweralsosee "[M-4] Stata" "help m4_stata_zh"}{...}
{viewerjumpto "Syntax" "mkmat_zh##syntax"}{...}
{viewerjumpto "Menu" "mkmat_zh##menu"}{...}
{viewerjumpto "Description" "mkmat_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mkmat_zh##linkspdf"}{...}
{viewerjumpto "Options" "mkmat_zh##options"}{...}
{viewerjumpto "Remarks on mkmat" "mkmat_zh##remarks"}{...}
{viewerjumpto "Examples" "mkmat_zh##examples"}
{help mkmat:English Version}
{hline}{...}
{p2colset 1 21 23 2}{...}
{p2col:{bf:[P] matrix mkmat} {hline 2}}将变量转换为矩阵及反之{p_end}
{p2col:}({mansection P matrixmkmat:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

    从变量创建矩阵

{p 8 14 2}{cmd:mkmat} {varlist} {ifin}
[{cmd:,} {cmdab:mat:rix:(}{it:matname}{cmd:)} {cmdab:nomis:sing} 
 {opth rown:ames(varname)} 
 {opth rowe:q(varname)} 
 {opth rowpre:fix(strings:string)} 
 {opt obs}
 {opt nch:ar(#)}]


    从矩阵创建变量

{p 8 14 2}{cmd:svmat} {dtype} {it:A} [{cmd:,}
{cmdab:n:ames:(col}|{cmd:eqcol}|{cmd:matcol}|{it:{help strings_zh:string}}{cmd:)}]


    重命名矩阵的行和列

{p 8 16 2}{cmd:matname} {it:A} {it:namelist} [{cmd:,}
{cmdab:r:ows:(}{it:range}{cmd:)} {cmdab:c:olumns:(}{it:range}{cmd:)}
{cmdab:e:xplicit}]


{pstd}
其中 {it:A} 是现有矩阵的名称，{it:type} 是新变量的存储类型，而 {it:namelist} 是以下之一：

{phang2}1){space 2}一个 {it:varlist}，即现有变量的名称，可能是缩写；

{phang2}2){space 2}{cmd:_cons} 和现有变量的名称，可能是缩写；

{phang2}3){space 2}当指定了 {cmd:explicit} 选项时的任意名称。


{marker menu}{...}
{title:菜单}

    {title:mkmat}

{phang2}
{bf:数据 > 矩阵, ado语言 > 将变量转换为矩阵}

    {title:svmat}

{phang2}
{bf:数据 > 矩阵, ado语言 > 将矩阵转换为变量}


{marker description}{...}
{title:描述}

{pstd}
{cmd:mkmat} 将 {varlist} 中列出的变量存储在同名的列向量中，即 N x 1 矩阵，其中 N = {cmd:_N}，是数据集中观察的数量。 可以选择将其存储为 N x k 矩阵，其中 k 是 {it:varlist} 中变量的数量。 变量名称用作列名。 默认情况下，行被命名为 {cmd:r1}，{cmd:r2}，....

{pstd}
{cmd:svmat} 将一个矩阵的列存储为新变量。 它是 {cmd:mkmat} 命令的反向操作，该命令从现有变量创建一个矩阵。

{pstd}
{cmd:matname} 重命名矩阵的行和列。 {cmd:matname} 与 {cmd:matrix rownames} 和 {cmd:matrix colnames} 命令的不同之处在于 {cmd:matname} 扩展了 varlist 缩写，并允许行和列的限制范围。 请参见 {manhelp matrix_rownames P:matrix rownames}。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection P matrixmkmatRemarksandexamples:备注和示例}

{pstd}
上述部分不包括在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{cmd:matrix(}{it:matname}{cmd:)} 请求将向量组合为一个矩阵，而不是创建列向量。

{phang}
{cmd:nomissing} 指定在任何变量中具有缺失值的观察被排除（“逐行删除”）。

{phang}
{opth rownames(varname)} 和 {opt roweq(varname)} 
指定新创建的矩阵或向量的行名称和行方程取自 {it:varname}。 {it:varname} 应该是一个字符串变量或一个正整数数值变量。 （值标签会被忽略；如果您想使用值标签，请使用 {helpb decode}）。 在名称中，空格和点会被替换为下划线 ({cmd:_})。

{phang}
{opth rowprefix:(strings:string)} 指定将字符串 {it:string} 前缀添加到创建的矩阵或列向量的行名称中。 在前缀中，空格和点会被替换为下划线 ({cmd:_})。 如果未指定 {cmd:rownames()}，则 {cmd:rowprefix()} 默认为 {cmd:r}，否则默认为空。

{phang}
{opt obs} 指定使用观察编号作为行名称。 此选项不能与 {cmd:rownames()} 组合使用。

{phang}
{opt nchar(#)} 指定行名称被截断为 {it:#} 个字符，1<={it:#}<=32。 默认值为 {cmd:nchar(32)}。

{phang}
{cmd:names(}{cmd:col}|{cmd:eqcol}|{cmd:matcol}|{it:{help strings_zh:string}}{cmd:)} 指定新变量的命名方式。

{pmore}
{cmd:names(col)} 使用矩阵的列名称来命名变量。

{pmore}
{cmd:names(eqcol)} 使用以列名为前缀的方程名称。

{pmore}
{cmd:names(matcol)} 使用以矩阵名称为前缀的列名称。

{pmore}
{cmd:names(}{it:string}{cmd:)} 命名变量为
    {it:string}{hi:1}, {it:string}{hi:2}, ..., {it:string}n，其中 {it:string} 是用户指定的 {it:string}，n 是矩阵的列数。

{pmore}
如果未指定 {cmd:names()}，则变量被命名为
    {it:A}{hi:1}, {it:A}{hi:2}, ..., {it:An}，其中 {it:A} 是矩阵的名称。

{phang}
{cmd:rows(}{it:range}{cmd:)} 和 {cmd:columns(}{it:range}{cmd:)} 指定要重命名的矩阵的行和列。 指定的行或列数必须等于 {it:namelist} 中名称的数量。 如果同时指定了 {cmd:rows()} 和 {cmd:columns()}，则指定的行被命名为 {it:namelist}，指定的列也被命名为 {it:namelist}。 范围必须以以下形式给出：

{p 12 26 2}{cmd:rows(.)}{space 5}重命名所有行{p_end}
{p 12 26 2}{cmd:rows(2..8)}{space 2}重命名第 2 行到第 8 行{p_end}
{p 12 26 2}{cmd:rows(3)}{space 5}仅重命名第 3 行{p_end}
{p 12 26 2}{cmd:rows(4...)}{space 2}将第 4 行重命名为最后一行

{pmore}如果未给出 {cmd:rows()} 和 {cmd:columns()}，
    {cmd:rows(.)} {cmd:columns(.)} 是默认值。 即，矩阵必须是方形的，行和列都被命名为 {it:namelist}。

{phang}{cmd:explicit} 抑制 varlist 缩写的扩展，并跳过验证名称是否为现有变量的名称。 也就是说，{it:namelist} 中的名称被明确使用，可以是任何有效的行或列名称。


{marker remarks}{...}
{title:关于 mkmat 的备注}

{pstd}
尽管可以使用 {helpb matrix accum} 命令将变量的交叉积加载到矩阵中，但程序员有时可能会发现以向量的形式处理数据集中的变量比处理交叉积更方便。 {cmd:mkmat} 允许用户以简单的方式将特定变量加载到 Stata 的内存中的矩阵中。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. sysuse auto}{p_end}

{pstd}将 {cmd:mpg} 存储在列向量 {cmd:mpg} 中{p_end}
{phang2}{cmd:. mkmat mpg}{p_end}

{pstd}列出向量 {cmd:mpg} 的内容{p_end}
{phang2}{cmd:. matrix list mpg}{p_end}

{pstd}创建一个矩阵 {cmd:X}，该矩阵的列由 {cmd:foreign}、{cmd:weight} 和 {cmd:displacement} 的值组成{p_end}
{phang2}{cmd:. mkmat foreign weight displacement, matrix(X)}{p_end}

{pstd}列出矩阵 {cmd:X} 的内容{p_end}
{phang2}{cmd:. matrix list X}{p_end}

{pstd}创建向量 {cmd:b}{p_end}
{phang2}{cmd:. matrix b = invsym(X'*X) * X'*mpg}

{pstd}运行线性回归{p_end}
{phang2}{cmd:. regress mpg foreign weight displacement, noconstant}{p_end}

{pstd}创建矩阵 {cmd:c}，其中包含系数向量的转置{p_end}
{phang2}{cmd:. matrix c = e(b)'}{p_end}

{pstd}列出向量 {cmd:b} 和 {cmd:c}{p_end}
{phang2}{cmd:. matrix list b}{p_end}
{phang2}{cmd:. matrix list c}{p_end}

{pstd}创建矩阵 {cmd:D}，其第一列包含向量 {cmd:b}{p_end}
{phang2}{cmd:. matrix D = b, c}{p_end}

{pstd}列出矩阵 {cmd:D} 的内容{p_end}
{phang2}{cmd:. matrix list D}{p_end}

{pstd}将矩阵 {cmd:D} 的列作为变量保存到数据集中，名称为 {cmd:reg1} 和 {cmd:reg2}{p_end}
{phang2}{cmd:. svmat D, names(reg)}{p_end}

{pstd}列出结果{p_end}
{phang2}{cmd:. list make price reg1 reg2 in 1/5}

{pstd}通过将向量 {cmd:c} 附加到向量 {cmd:b} 的末尾来创建向量 {cmd:f}{p_end}
{phang2}{cmd:. matrix f = b\c}

{pstd}将 {cmd:f} 的第二行重命名为 "wgt"，其中 "wgt" 当前不作为变量存在{p_end}
{phang2}{cmd:. matname f wgt, rows(2) explicit}

{pstd}列出向量 {cmd:f} 的内容{p_end}
{phang2}{cmd:. matrix list f}


    {title:指标矩阵的对应分析}

{pstd}设置{p_end}
{phang2}{cmd:. webuse ca_smoking, clear}

{pstd}为 {cmd:smoking} 创建指标变量 {cmd:S1} 和 {cmd:S2}{p_end}
{phang2}{cmd:. tab smoking, gen(S)}{p_end}

{pstd}为 {cmd:rank} 创建指标变量{p_end}
{phang2}{cmd:. tab rank, gen(R)}{p_end}

{pstd}创建矩阵 {cmd:ISR}，其列由指标变量的值组成{p_end}
{phang2}{cmd:. mkmat S* R*, matrix(ISR)}{p_end}

{pstd}列出矩阵 {cmd:ISR} 的内容{p_end}
{phang2}{cmd:. mat list ISR}

{pstd}对 {cmd:ISR} 进行简单的对应分析{p_end}
{phang2}{cmd:. camat ISR, dim(3)}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mkmat.sthlp>}