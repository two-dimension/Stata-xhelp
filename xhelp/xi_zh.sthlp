{smcl}
{* *! version 1.1.14  05jun2019}{...}
{viewerdialog xi "dialog xi"}{...}
{vieweralsosee "[R] xi" "mansection R xi"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[U] 11.1.10 前缀命令" "help prefix_zh"}{...}
{vieweralsosee "[U] 20 估计和后估计命令 (估计)" "help estcom_zh"}{...}
{vieweralsosee "[U] 20 估计和后估计命令 (后估计)" "help postest_zh"}{...}
{viewerjumpto "语法" "xi_zh##syntax"}{...}
{viewerjumpto "菜单" "xi_zh##menu"}{...}
{viewerjumpto "描述" "xi_zh##description"}{...}
{viewerjumpto "PDF文档链接" "xi_zh##linkspdf"}{...}
{viewerjumpto "选项" "xi_zh##options"}{...}
{viewerjumpto "备注" "xi_zh##remarks"}{...}
{viewerjumpto "示例" "xi_zh##examples"}{...}
{viewerjumpto "存储结果" "xi_zh##results"}
{help xi:English Version}
{hline}{...}
{p2colset 1 11 13 2}{...}
{p2col:{bf:[R] xi} {hline 2}}交互扩展{p_end}
{p2col:}({mansection R xi:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 14 2}
{cmd:xi} [{cmd:,} {opth pre:fix(strings:string)} {opt noomit}] {it:term(s)}

{p 8 14 2}
{cmd:xi} [{cmd:,} {opth pre:fix(strings:string)} {opt noomit}] {cmd::} {it:任何_stata命令} 
   {it:包含_terms的变量列表}  {it:...}

{phang}
其中 {it:term} 的形式为

{col 9}{cmd:i.}{it:变量名}{col 39}或{col 48}{cmd:I.}{it:变量名}
{col 9}{cmd:i.}{it:变量名1}{cmd:*i.}{it:变量名2}{col 48}{cmd:I.}{it:变量名1}{cmd:*I.}{it:变量名2}
{col 9}{cmd:i.}{it:变量名1}{cmd:*}{it:变量名3}{col 48}{cmd:I.}{it:变量名1}{cmd:*}{it:变量名3}
{col 9}{cmd:i.}{it:变量名1}{cmd:|}{it:变量名3}{col 48}{cmd:I.}{it:变量名1}{cmd:|}{it:变量名3}

{pstd}
{it:变量名}、{it:变量名1}和{it:变量名2}表示数值或字符串分类变量。{it:变量名3}表示连续的数值变量。


{marker menu}{...}
{title:菜单}

{phang}
{bf:数据 > 创建或更改数据 > 其他变量创建命令 >}
        {bf:交互扩展}


    {c TLC}{hline 65}{c TRC}
    {c |} 现在Stata中的大多数命令都允许使用因子变量；请参见 {c |}
    {c |} {help fvvarlist_zh}。要确定一个命令是否允许因子变量，  {c |}
    {c |} 请检查在命令选项表下方打印的信息。 {c |}
    {c |} 如果命令允许因子变量，它将说明  {c |}
    {c |} 类似于"{it:indepvars} 可能包含因子变量。" {c |}
    {c |}								  {c |}
    {c |} 我们建议你使用因子变量，而不是 {cmd:xi}，如果命令允许因子变量。 {c |}
    {c |}								  {c |}
    {c |} 我们在文档中包含了 {manhelp xi R}，以便读者在使用不允许因子变量的 Stata 命令时可以参考。  {c |}
    {c BLC}{hline 65}{c BRC}


{marker description}{...}
{title:描述}

{pstd}
{cmd:xi} 将包含分类变量的项扩展为指示（也称为虚拟）变量集，通过创建新变量，并且在第二种语法中 ({bind:{cmd:xi:} {it:任何_stata命令}})，执行具有扩展项的指定命令。所创建的虚拟变量为

{p 8 32 2}{cmd:i.}{it:变量名}{space 15}为分类变量 {it:变量名} 创建虚拟变量

{p 8 32 2}{cmd:i.}{it:变量名1}{cmd:*i.}{it:变量名2}{space 3}为分类变量 {it:变量名1} 和 {it:变量名2} 创建虚拟变量：所有交互和主效应

{p 8 32 2}{cmd:i.}{it:变量名1}{cmd:*}{it:变量名3}{space 5}为分类变量 {it:变量名1} 和连续变量 {it:变量名3} 创建虚拟变量：所有交互和主效应

{p 8 32 2}{cmd:i.}{it:变量名1}{cmd:|}{it:变量名3}{space 5}为分类变量 {it:变量名1} 和连续变量 {it:变量名3} 创建虚拟变量：所有交互和 {it:变量名3} 的主效应，但没有 {it:变量名1} 的主效应


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection R xiRemarksandexamples:备注和示例}

{pstd}
上述部分不包括在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{opth prefix:(strings:string)} 允许你选择其他前缀而不是 {hi:_I} 来用于新创建的交互变量。前缀不能超过四个字符。默认情况下，{cmd:xi} 将创建以 {hi:_I} 开头的交互变量。当你使用 {cmd:xi} 时，它会删除所有以前创建的以指定在 {opt prefix(string)} 选项中的前缀或默认的 {hi:_I} 开头的交互变量。因此，如果你希望保留带有特定前缀的变量，请在 {opt prefix(string)} 选项中指定一个不同的前缀。

{phang}
{opt noomit} 防止 {cmd:xi} 省略组。此选项提供了一种为每个具有一个或多个变量的类别生成指示变量的方式，当与估计命令的 {opt noconstant} 选项结合使用时非常有用。


{marker remarks}{...}
{title:备注}

{pstd}
备注分为以下几个标题：

        {help xi##remarks1:{cmd:i.}{it:变量名}的总结}
        {help xi##remarks2:控制省略虚拟的总结}
        {help xi##remarks3:输出解释}
        {help xi##remarks4:如何 {cmd:xi} 命名变量}
        {help xi##remarks5:{cmd:xi} 作为命令而不是命令前缀}
        {help xi##remarks6:警告}{...}


{marker remarks1}{...}
{title:{cmd:i.}{it:变量名}的总结}

{phang}
o  {it:变量名} 可以是字符串或数字。

{phang}
o  指示（虚拟）变量会自动创建。

{phang}
o  默认情况下，虚拟变量集是通过省略与变量最小值对应的虚拟变量来识别的（如何进行其他指定将在下面讨论）。

{phang}
o  新的虚拟变量将保留在你的数据集中。默认情况下，新的虚拟变量的名称以 {hi:_I} 开头；因此，你可以通过输入 "{hi:drop _I*}" 来删除它们。你不必这样做；每次使用 {cmd:xi} 时，任何以前生成的与在 {cmd:prefix()} 选项中指定的前缀相同的自动生成虚拟变量（默认为 {hi:_I}）都会被删除并创建新的。

{phang}
o  新的虚拟变量具有变量标签，因此你可以通过输入 "{cmd:describe}" 或 "{cmd:describe _I*}" 来确定它们对应的内容；参见 {manhelp describe D}。

{phang}
o  {cmd:xi} 可以与任何 Stata 命令一起使用（不仅仅是 {cmd:logistic}）。


{marker remarks2}{...}
{title:控制省略虚拟的总结}

{cmd:i.}{it:变量名} 默认情况下省略第一组，但如果你定义

{phang2}
{cmd:char _dta[omit] "prevalent"}

{pstd}
那么默认行为将改为省略最普遍的组。你可以输入

{phang2}
{cmd:char _dta[omit]}

{pstd}
来恢复默认行为。

无论如何，如果你定义一个特征变量，形式为

{phang2}
{cmd:char} {it:变量名}{cmd:[omit]} {it:#}

{pstd}
或者，如果 {it:变量名} 是字符串，

{phang2}
{cmd:char} {it:变量名}{cmd:[omit]} {cmd:"}{it:字符串文字}{cmd:"}

{pstd}
那么指定的值将被省略。

    示例：
{phang2}
{cmd:. char agegrp[omit] 1}{p_end}
{phang2}
{cmd:. char race[omit] "White"} {space 1} (对于 {hi:race} 是一个字符串变量){p_end}
{phang2}
{cmd:. char agegrp[omit]} {space 7} (恢复默认)


{marker remarks3}{...}
{title:输出解释}

    {cmd:. xi: regress mpg i.rep78}
    {txt}i.rep78{right:_Irep78_1-5   (自然编码；_Irep78_1 被省略)  }
    {it:(回归的输出出现)}

{pstd}
解释： {cmd:i.rep78} 扩展为虚拟变量 {hi:_Irep78_1}、{hi:_Irep78_2}、...、{hi:_Irep78_5}。最后的数字是“自然”编码，意味着 {hi:_Irep78_1} 对应于 {hi:rep78}==1，{hi:_Irep78_2} 对应于 {hi:rep78}==2，等等。最后，{hi:rep78}==1的虚拟变量被省略了。

    {cmd:. xi: regress mpg i.make}
    {txt}i.make{right:_Imake_1-74   (_Imake_1 对于 make==AMC Concord 被省略)  }
    {it:(回归的输出出现)}

{pstd}
解释： {cmd:i.make} 扩展为 {hi:_Imake_1}、{hi:_Imake_2}、...、{hi:_Imake_74}。编码不是自然的，因为 make 是一个字符串变量。{hi:_Imake_1} 对应于一个 make，{hi:_Imake_2} 则对应另一个，以此类推。我们可以通过输入 "{cmd:describe}" 找到编码。{hi:_Imake_1} 对于 AMC Concord 被选择为省略项。


{marker remarks4}{...}
{title:如何 {cmd:xi} 命名变量}

{pstd}
{cmd:xi} 为其创建的虚拟变量分配的名称形式为

	{it:<prefix>}{it:<stub>}{hi:_}{it:<groupid>}

{pstd}
默认情况下，前缀是 {hi:_I}：

	{hi:_I}{it:<stub>}{hi:_}{it:<groupid>}

{pstd}
你随后可以通过 {it:<prefix>}{it:<stub>}{cmd:*} 来引用整组变量。

{pstd}
例如：

	name{col 25}=  {hi:_I} + {it:<stub>} + {hi:_} + {it:<groupid>}{col 61}整个集合
	{hline 62}
	_Iagegrp_1         _I   agegrp   _    1{col 61}_Iagegrp*
	_Iagegrp_2         _I   agegrp   _    2{col 61}_Iagegrp*
	_IageXwgt_1        _I   ageXwgt  _    1{col 61}_IageXwgt*
	_IageXrac_1_2      _I   ageXrac  _    1_2{col 61}_IageXrac*
	_IageXrac_2_1      _I   ageXrac  _    2_1{col 61}_IageXrac*


{marker remarks5}{...}
{title:{cmd:xi} 作为命令而不是命令前缀}

{pstd}
{cmd:xi} 可以作为命令前缀或作为单独的命令使用。在后者情况下，{cmd:xi} 仅创建指示变量和交互变量。等同于输入

{phang}
{cmd:. xi: regress y i.agegrp*wgt}

    是

    {cmd:. xi i.agegrp*wgt}
    {txt}i.agegrp{right:_Iagegrp_1-4   (自然编码；Iagegrp_1 被省略)  }
    i.agegrp*wgt{right:_IageXwgt_1-4   (编码如上)                      }

{phang}
{cmd:. regress y _Iagegrp* _IageXwgt*}


{marker remarks6}{...}
{title:警告}

{p 4 6 2}- {cmd:xi} 在你的数据集中创建新变量；大多数是 {cmd:byte}s，但与连续变量的交互将具有底层连续变量的存储类型。你可能会收到错误信息"{err:no room to add more variables}" 或 "{err:insufficient memory}"。你可能需要调整 {cmd:maxvar} 设置，或者如果设置得太低重置 {cmd:max_memory}；参见 {findalias frmemory}。

{p 4 6 2}- 在使用 {cmd:xi} 与估计命令时，你可能会收到错误信息"{err:unable to allocate matrix}"。这通常由于你尝试创建一个过大的矩阵；参见 {manhelp Limits R}。


{marker examples}{...}
{title:示例}

{psee}{cmd:. xi: logistic outcome weight i.agegrp bp}{p_end}
{psee}{cmd:. xi: logistic outcome weight bp i.agegrp i.race}{p_end}
{psee}{cmd:. xi: logistic outcome weight bp i.agegrp*i.race}{p_end}
{psee}{cmd:. xi: logistic outcome bp i.agegrp*weight i.race}{p_end}
{psee}{cmd:. xi: logistic outcome bp i.agegrp|weight i.race}{p_end}
{psee}{cmd:. xi: logistic outcome bp i.agegrp*weight i.agegrp*i.race}{p_end}
{psee}{cmd:. xi, prefix(_S) : logistic outcome weight i.agegrp bp}{p_end}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:xi} 存储以下特征：

{synoptset 32 tabbed}{...}
{synopt:{cmd:_dta[__xi__Vars__Prefix__]}}前缀名称{p_end}
{synopt:{cmd:_dta[__xi__Vars__To__Drop__]}}创建的变量{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <xi.sthlp>}