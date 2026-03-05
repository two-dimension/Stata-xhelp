{smcl}
{* *! version 1.2.5  19oct2017}{...}
{viewerdialog recode "dialog recode"}{...}
{vieweralsosee "[D] recode" "mansection D recode"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] generate" "help generate_zh"}{...}
{vieweralsosee "[D] mvencode" "help mvencode_zh"}{...}
{viewerjumpto "Syntax" "recode_zh##syntax"}{...}
{viewerjumpto "Menu" "recode_zh##menu"}{...}
{viewerjumpto "Description" "recode_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "recode_zh##linkspdf"}{...}
{viewerjumpto "Options" "recode_zh##options"}{...}
{viewerjumpto "Examples" "recode_zh##examples"}{...}
{viewerjumpto "Video example" "recode_zh##video"}
{help recode:English Version}
{hline}{...}
{p2colset 1 15 17 2}{...}
{p2col:{bf:[D] recode} {hline 2}}重新编码分类变量{p_end}
{p2col:}({mansection D recode:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{phang}基本语法{p_end}
{p 8 16 2}
{cmd:recode} {varlist} {cmd:(}{it:rule}{cmd:)} 
[{cmd:(}{it:rule}{cmd:)} {it:...}]
[{cmd:,} {opth g:enerate(newvar)}]


{phang}完整语法{p_end}
{p 8 16 2}
{cmd:recode} {varlist} {cmd:(}{it:erule}{cmd:)} 
[{cmd:(}{it:erule}{cmd:)} {it:...}] {ifin}
[{cmd:,} {it:options}]


{phang}
最常见的 {it:rule} 形式是

{center:{c TLC}{hline 16}{c TT}{hline 13}{c TT}{hline 27}{c TRC}}
{center:{c |} {it:rule}           {c |} 示例     {c |} 意义                   {c |}}
{center:{c LT}{hline 16}{c +}{hline 13}{c +}{hline 27}{c RT}}
{center:{c |} {it:#} {cmd:=} {it:#}          {c |} 3 = 1       {c |} 3 被重新编码为 1            {c |}}
{center:{c |} {it:#} {it:#} {cmd:=} {it:#}        {c |} 2 . = 9     {c |} 2 和 . 被重新编码为 9      {c |}}
{center:{c |} {it:#}{cmd:/}{it:#} {cmd:=} {it:#}        {c |} 1/5 = 4     {c |} 1 到 5 被重新编码为 4  {c |}}
{center:{c |} {opt nonm:issing} {cmd:=} {it:#} {c |} 非缺失值 = 8 {c |} 所有其他非缺失值变为 8 {c |}}
{center:{c |} {opt mis:sing} {cmd:=} {it:#}    {c |} 缺失值 = 9    {c |} 所有其他缺失值变为 9   {c |}}
{center:{c BLC}{hline 16}{c BT}{hline 13}{c BT}{hline 27}{c BRC}}

{phang}
其中 {it:erule} 的形式为

{p 8 17 2}
{it:element} [{it:element ...}] {cmd:=} {it:el} [{cmd:"}{it:label}{cmd:"}]

{p 8 20 2} 
{opt nonm:issing =} {it:el} [{cmd:"}{it:label}{cmd:"}]

{p 8 17 2}
{opt mis:sing =} {it:el} [{cmd:"}{it:label}{cmd:"}]

{p 8 14 2}
{cmd:else} | {cmd:*} {cmd:=} {it:el} [{cmd:"}{it:label}{cmd:"}]

{phang}
{it:element} 的形式为

{p 8 12 2}
{it:el} | {it:el}{cmd:/}{it:el}

{phang}
而 {it:el} 是

{p 8 11 2}
{it:#} | {cmd:min} | {cmd:max}

{phang}
关键字规则 {cmd:missing}、{cmd:nonmissing} 和 {cmd:else} 必须是最后指定的规则。{cmd:else} 不得与 {cmd:missing} 或 {cmd:nonmissing} 结合使用。

{synoptset 20 tabbed}{...}
{synopthdr}
{synoptline}
{syntab :选项}
{synopt :{opth g:enerate(newvar)}}生成包含变换变量的 {it:newvar}; 默认是替换现有变量{p_end}
{synopt :{opt pre:fix(str)}}生成以 {it:str} 为前缀的新变量{p_end}
{synopt :{opt l:abel(name)}}为转化规则定义的值标签指定名称{p_end}
{synopt :{opt copy:rest}}从原始变量中复制样本外值{p_end}
{synopt :{opt t:est}}测试规则是否被调用且不重叠{p_end}
{synoptline}
{p2colreset}{...}


{marker menu}{...}
{title:菜单}

{phang}
{bf:数据 > 创建或更改数据 > 其他变量转换命令}
       {bf:> 重新编码分类变量}


{marker description}{...}
{title:描述}

{pstd}
{cmd:recode} 根据指定的规则更改数值变量的值。 不符合任何规则条件的值保持不变，除非指定了 {it:otherwise} 规则。

{pstd}
范围 {it:#1}{cmd:/}{it:#2} 引用介于 {it:#1} 和 {it:#2} 之间的所有（真实和整数）值，包括边界 {it:#1} 和 {it:#2}。 这种对 {it:#1}{cmd:/}{it:#2} 的解释与 {help numlist_zh:numlists} 中的不同。

{pstd}
{cmd:min} 和 {cmd:max} 提供了一种方便的方法来引用 {varlist} 中每个变量的最小值和最大值，可以在规范的 from-value 部分和 to-value 部分中使用。 结合 {help if_zh} 和 {help in_zh}，最小值和最大值在受限的数据集中确定。

{pstd}
关键字规则指定未被先前规则更改的值的变换：

{p2colset 9 26 27 2}{...}
{p2col: {opt nonm:issing}}所有未被规则更改的非缺失值{p_end}
{p2col: {opt mis:sing}}所有未被规则更改的缺失值 ({cmd:.}, {cmd:.a}, {cmd:.b},..., {cmd:.z}){p_end}
{p2col: {cmd:else}}所有未被规则更改的非缺失和缺失值{p_end}
{p2col: {cmd:*}} {cmd:else} 的同义词
{p2colreset}{...}

{pstd}
{cmd:recode} 提供了一种方便的方法，在定义变换时为生成的变量定义值标签，从而降低定义与变量值标签之间不一致的风险。 可以为整数值和扩展的 {help missing_zh:missing values} ({cmd:.a}, {cmd:.b},..., {cmd:.z}) 定义值标签，但不能为非整数值或 sysmiss ({cmd:.}) 定义。

{pstd}
尽管语法图中未显示，但如果仅转化一个变量且不定义值标签，则围绕 {it:rule} 和关键字条款的括号是可选的。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection D recodeQuickstart:快速开始}

        {mansection D recodeRemarksandexamples:备注和示例}

{pstd}
上面的部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:选项}

{phang}
{opth generate(newvar)} 指定将包含变换变量的变量名称。 {opt into()} 是 {opt generate()} 的同义词。 超出 {help if_zh} 或 {help in_zh} 所隐含的范围的值被设为缺失 ({cmd:.})，除非指定了 {opt copyrest} 选项。

{pmore}
如果未指定 {opt generate()}，则输入变量被覆盖； 超出 {opt if} 或 {opt in} 范围的值不会被修改。覆盖变量是危险的（您不能撤消更改，值标签可能错误等），因此我们强烈建议指定 {opt generate()}。

{phang}
{opt prefix(str)} 指定重新编码的变量返回到由原始变量名称前缀 {it:str} 形成的新变量中。

{phang}
{opt label(name)} 指定从转化规则定义的值标签的名称。 {opt label()} 只能与 {opt generate()}（或其同义词 {opt into()}）和 {opt prefix()} 一起定义。 如果变量被重新编码，标签名称默认设置为 {newvar}，除非该名称已存在。

{phang}
{opt copyrest} 指定从原始变量复制样本外的值。 与其他数据管理命令一致，{cmd:recode} 默认设置 {newvar} 为缺失 ({cmd:.})，在 {help if_zh:{bf:if} {it:exp}} 和 {help in_zh:{bf:in} {it:range}} 所选择的观察值之外。

{phang}
{opt test} 指定 Stata 测试规则是否被调用或规则是否重叠；例如，{cmd:(1/5=1) (3=2)}。


{marker examples}{...}
{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse recxmpl}

{pstd}列出数据{p_end}
{phang2}{cmd:. list}

{pstd}对于 {cmd:x}，将 1 更改为 2，保持所有其他值不变，并将结果存储在 {cmd:nx}{p_end}
{phang2}{cmd:. recode x (1 = 2), gen(nx)}

{pstd}列出结果{p_end}
{phang2}{cmd:. list x nx}

{pstd}对于 {cmd:x1}，交换 1 和 2，并将结果存储在 {cmd:nx1}{p_end}
{phang2}{cmd:. recode x1 (1 = 2) (2 = 1), gen(nx1)}

{pstd}列出结果{p_end}
{phang2}{cmd:. list x1 nx1}

{pstd}对于 {cmd:x2}，将 1 和 2 合并为 1，将 3 更改为 2，将 4 到 7 更改为 3，并将结果存储在 {cmd:nx2}{p_end}
{phang2}{cmd:. recode x2 (1 2 = 1) (3 = 2) (4/7 = 3), gen(nx2)}

{pstd}列出结果{p_end}
{phang2}{cmd:. list x2 nx2}

{pstd}对于 {cmd:x1}、{cmd:x2} 和 {cmd:x3}，改变 1、2、...、8 的方向，将 8 移到 1，7 移到 2，以此类推，将变换后的变量存储在 {cmd:newx1}、{cmd:newx2} 和 {cmd:newx3}{p_end}
{phang2}{cmd:. recode x1-x3 (1=8) (2=7) (3=6) (4=5) (5=4) (6=3) (7=2) (8=1),}
           {cmd:pre(new) test}{p_end}

{pstd}列出结果{p_end}
{phang2}{cmd:. list x1 newx1 x2 newx2 x3 newx3}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse fullauto, clear}

{pstd}对于 {cmd:rep77} 和 {cmd:rep78}，将 1 和 2 合并为 1，将 3 更改为 2，将 4 和 5 合并为 3，存储结果在 {cmd:newrep77} 和 {cmd:newrep78}，并定义一个新值标签 {cmd:newrep}{p_end}
{phang2}{cmd:. recode rep77 rep78 (1 2 = 1 "低于平均") (3 = 2 平均)}
              {cmd:(4 5 = 3 "高于平均"), pre(new) label(newrep)}{p_end}

{pstd}列出旧的和新的值标签{p_end}
{phang2}{cmd:. label list repair newrep}

{pstd}列出一些数据{p_end}
{phang2}{cmd:. list *rep77 *rep78 in 1/10, nolabel}{p_end}
    {hline}


{txt}{phang}提示：长 {cmd:recode} 命令可以方便地使用行续符 {cmd:///} 编写。例如
{cmd}

    . recode x y (1 2 = 1 低)  ///
                 (3   = 2 中)  ///
                 (4 5 = 3 高)  ///
                 (nonmissing = 9 "其他")  ///
                 (missing = .)  ///
               , gen(Rx Ry) label(Cat3){txt}


{marker video}{...}
{title:视频示例}

{phang2}{browse "https://www.youtube.com/watch?v=XWVaXN2KwmA":如何从连续变量创建分类变量}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <recode.sthlp>}