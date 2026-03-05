{smcl}
{* *! version 1.2.22  06aug2018}{...}
{viewerdialog egen "dialog egen"}{...}
{vieweralsosee "[D] egen" "mansection D egen"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] collapse" "help collapse_zh"}{...}
{vieweralsosee "[D] generate" "help generate_zh"}{...}
{viewerjumpto "Syntax" "egen_zh##syntax"}{...}
{viewerjumpto "Menu" "egen_zh##menu"}{...}
{viewerjumpto "Description" "egen_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "egen_zh##linkspdf"}{...}
{viewerjumpto "Examples" "egen_zh##examples"}
{help egen:English Version}
{hline}{...}
{p2colset 1 13 15 2}{...}
{p2col:{bf:[D] egen} {hline 2}}生成的扩展命令{p_end}
{p2col:}({mansection D egen:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 14 2}
{cmd:egen} {dtype} {newvar} {cmd:=} {it:fcn}{cmd:(}{it:arguments}{cmd:)} {ifin} 
[{cmd:,} {it:options}]

{phang}
{cmd:by} 允许与某些 {cmd:egen} 函数结合使用，如下所述。

{phang}
根据 {it:fcn}， {it:arguments} 指的是一个表达式、{it:varlist} 或 {it:numlist}，而 {it:options} 也是依赖于 {it:fcn} 的，其中 {it:fcn} 是

{phang2}{opth anycount(varlist)}{cmd:,}
{opt v:alues}{cmd:(}{it:integer} {it:{help numlist_zh}}{cmd:)}{p_end}
{pmore2}不能与 {cmd:by} 结合使用。它返回 {it:varlist} 中与给定 {it:numlist} 中任意整数值相等的变量数量。任意因 {help if_zh} 或 {help in_zh} 排除的观察值的值被设置为0（非缺失）。也见 {opt anyvalue(varname)} 和 {opt anymatch(varlist)}。

{phang2}
{opth anymatch(varlist)}{cmd:,}
{opt v:alues}{cmd:(}{it:integer} {it:{help numlist_zh}}{cmd:)}{p_end}
{pmore2}
不能与 {cmd:by} 结合使用。若 {it:varlist} 中的任何变量与提供的 {it:numlist} 中的任意整数值相等，返回1，否则返回0。任意因 {help if_zh} 或 {help in_zh} 排除的观察值的值被设置为0（非缺失）。也见 {opt anyvalue(varname)} 和 {opt anycount(varlist)}。

{phang2}
{opth anyvalue(varname)}{cmd:,}
{opt v:alues}{cmd:(}{it:integer} {it:{help numlist_zh}}{cmd:)}{p_end}
{pmore2}
不能与 {cmd:by} 结合使用。如果 {it:varname} 等于提供的 {it:numlist} 中的任意整数值，则取 {it:varname} 的值，否则为缺失。也见 {opt anymatch(varlist)} 和 {opt anycount(varlist)}。

{phang2}
{opth concat(varlist)} [{cmd:,} {opth f:ormat(%fmt)} {opt d:ecode}
{opt maxl:ength(#)} {opt p:unct}{cmd:(}{it:pchars}{cmd:)}]{p_end}
{pmore2}
不能与 {cmd:by} 结合使用。它将 {it:varlist} 连接生成一个字符串变量。字符串变量的值不变。数值变量的值按原样转换为字符串，或使用 {cmd:format(%}{it:fmt}{cmd:)}选项下的数值格式转换，或在使用 {opt decode}选项时解码，这时还可以使用 {opt maxlength()} 控制使用的最大标签长度。默认情况下，变量是连续添加的：可以使用 {opt punct(pchars)} 指定标点符号，如空格 {cmd:punct(" ")} 或逗号 {cmd:punct(,)}。

        {opth count(exp)} {right:(允许 {help by_zh:{bf:by} {it:varlist}{bf::}})  }
{pmore2}
创建一个常量（在 {it:varlist} 中），包含 {it:exp} 的非缺失观察值的数量。另见 {help egen##rownonmiss():{bf:rownonmiss()}} 和 {help egen##rowmiss():{bf:rowmiss()}}。

{phang2}
{opth cut(varname)}{cmd:,}
{c -(}{cmd:at(}{it:#}{cmd:,}{it:#}{cmd:,}{it:...}{cmd:,}{it:#}{cmd:)}|{opt g:roup}{cmd:(}{it:#}{cmd:)}{c )-} [{opt ic:odes} {opt lab:el}]{p_end}
{pmore2}
不能与 {cmd:by} 结合使用。创建一个新的分类变量，用左侧分组区间的端点编码，区间由 {opt at()} 选项指定，期望为升序的数值列表。

{pmore2}
{cmd:at(}{it:#}{cmd:,}{it:#}{cmd:,}{it:...}{cmd:,}{it:#}{cmd:)}
提供组的断点，按升序排列。断点列表可以简单用逗号分隔的数字列表，但也可以包括语法 {cmd:a(b)c}，表示从 {cmd:a} 到 {cmd:c} 步长为 {cmd:b}。对于 {cmd:at()} 中第一个指定的数字小于的观察值和大于或等于最后一个指定的数字的观察值，{newvar} 被设置为缺失。如果没有指定断点，命令期望使用 {opt group()} 选项。

{pmore2}
{opt group(#)} 指定在没有断点的情况下用于分组的频率相等的区间数量。指定此选项会自动启用 {opt icodes}。

{pmore2}
{opt icodes} 请求使用0、1、2等代替区间的左侧端点。

{pmore2}
{cmd:label} 请求将分组变量的整数编码值标记为分组区间的左侧端点。指定该选项会自动启用 {opt icodes}。

{phang2}
{opth diff(varlist)}{p_end}
{pmore2}
不能与 {cmd:by} 结合使用。它创建一个指示变量，如果 {it:varlist} 中的变量不相等，则为1，否则为0。

{phang2}
{opt ends}{cmd:(}{it:strvar}{cmd:)} [{cmd:,} {cmdab:p:unct:(}{it:pchars}{cmd:)}
{cmdab:tr:im} [{cmdab:h:ead}|{cmdab:l:ast}|{cmdab:t:ail}]]{p_end}
{pmore2}
不能与 {cmd:by} 结合使用。它从字符串变量 {it:strvar} 中获取第一个“词”或头（使用 {opt head} 选项）、最后一个“词”（使用 {opt last} 选项）或其余部分或尾（使用 {opt tail} 选项）。

{pmore2}
{opt head}、 {opt last} 和 {opt tail} 的判断依据是 {it:pchars} 的出现，默认是一个空格 (" ")。

{pmore2}
头是出现在 {it:pchars} 的第一次之前的任何东西，若不存在则为整个字符串。例如，“frog toad”的头是“frog”，“frog”的头是“frog”。使用 {cmd:punct(,)}，则“frog,toad”的头是“frog”。

{pmore2}
最后一个词是出现在 {it:pchars} 的最后一次之后的任何东西，若空格未出现则为整个字符串。“frog toad newt”的最后一个词是“newt”，“frog”的最后一个词是“frog”。使用 {cmd:punct(,)}，则“frog,toad”的最后一个词是“toad”。

{pmore2}
其余部分或尾是出现在 {it:pchars} 的第一次之后的任何东西，如果 {it:pchars} 未出现，则为空字符串""。“frog toad newt”的尾是“toad newt”，“frog”的尾是""。“frog,toad”的尾则是“toad”。

{pmore2}
{opt trim} 选项修剪任何前导或尾随空格。

{phang2}
{opth fill(numlist)}{p_end}
{pmore2}
不能与 {cmd:by} 结合使用。它创建一个升序或降序的数字或复杂重复模式的变量。 {it:numlist} 必须至少包含两个数字，并且可以使用标准 {it:numlist} 表示法指定；见 {help numlist_zh}。 {help if_zh} 和 {help in_zh} 不允许与 {opt fill()} 结合使用。

{phang2}
{opth group(varlist)} [{cmd:,} {opt m:issing}
{opt l:abel} {opt lname}{cmd:(}{it:name}{cmd:)}
{opt t:runcate}{cmd:(}{it:num}{cmd:)}]{p_end}
{pmore2}
不能与 {cmd:by} 结合使用。它创建一个变量，其值为1、2、...，代表由 {it:varlist} 形成的组。 {it:varlist} 可以包含数值变量、字符串变量或两者的组合。组的顺序为 {it:varlist} 的排序顺序。 {opt missing} 表示在分组时处理 {it:varlist} 中的缺失值（无论是 {cmd:.} 还是 {cmd:""}）与其他值一样，而不是将缺失值分配给组缺失。 {opt label} 选项返回从1开始的整数，按照 {it:varlist} 的不同分组的排序顺序。整数被标记为 {it:varlist} 的值或其值标签（如存在）。 {opt lname()} 指定用于持有标签的值标签的名称；{opt lname()} 意味着 {opt label}。 {opt truncate()} 选项将每个变量在 {it:varlist} 中贡献的标签值截断到由整数参数 {it:num} 指定的长度。 {opt truncate} 选项不能在未指定 {opt label} 选项的情况下使用。 {opt truncate} 选项不会改变形成的组；它只改变标签。

        {opth iqr(exp)}{right:(允许 {help by_zh:{bf:by} {it:varlist}{bf::}})  }
{pmore2}
创建一个常量（在 {it:varlist} 中），包含 {it:exp} 的四分位距。另见 {help egen##pctile():{bf:pctile()}}。

        {opth kurt(varname)}{right:(允许 {help by_zh:{bf:by} {it:varlist}{bf::}})  }
{pmore2}
返回 {it:varname} 的峰度（在 {it:varlist} 中）。

        {opth mad(exp)}{right:(允许 {help by_zh:{bf:by} {it:varlist}{bf::}})  }
{pmore2}
返回 {it:exp} 的中位数绝对偏差（在 {it:varlist} 中）。

        {opth max(exp)}{right:(允许 {help by_zh:{bf:by} {it:varlist}{bf::}})  }
{pmore2}
创建一个常量（在 {it:varlist} 中），包含 {it:exp} 的最大值。

        {opth mdev(exp)}{right:(允许 {help by_zh:{bf:by} {it:varlist}{bf::}})  }
{pmore2}
返回 {it:exp} 的均值绝对偏差（在 {it:varlist} 中）。

{marker mean()}{...}
        {opth mean(exp)}{right:(允许 {help by_zh:{bf:by} {it:varlist}{bf::}})  }
{pmore2}
创建一个常量（在 {it:varlist} 中），包含 {it:exp} 的均值。

{marker median()}{...}
        {opth median(exp)}{right:(允许 {help by_zh:{bf:by} {it:varlist}{bf::}})  }
{pmore2}
创建一个常量（在 {it:varlist} 中），包含 {it:exp} 的中位数。另见 {help egen##pctile():{bf:pctile()}}。

        {opth min(exp)}{right:(允许 {help by_zh:{bf:by} {it:varlist}{bf::}})  }
{pmore2}
创建一个常量（在 {it:varlist} 中），包含 {it:exp} 的最小值。

        {opth mode(varname)} [{cmd:,} {opt min:mode} {opt max:mode} {opt num:mode}{cmd:(}{it:integer}{cmd:)} {opt miss:ing}] {right:(允许 {help by_zh:{bf:by} {it:varlist}{bf::}})  }
{pmore2}
为 {it:varname} 生成众数（在 {it:varlist} 中），可能是数值或字符串。众数是出现频率最高的值。如果存在两个或更多众数，或者 {it:varname} 包含所有缺失值，那么生成的众数将是缺失。为避免这种情况，可以使用 {opt minmode}、{opt maxmode} 或 {opt nummode()} 选项在多个众数中选择，并且 {opt missing} 选项将把缺失值视为类别。 {opt minmode} 返回最低的值， {opt maxmode} 返回最高的值。 {opt nummode(#)} 将返回第 {it:#} 个众数，从最低值开始计算。缺失值在确定众数时被排除，除非指定 {opt missing}。即便如此，众数的值仍会为缺失的 {it:varname} 观察值记录，除非它们被明确排除，即通过 {bind:{cmd:if} {it:varname} {cmd:< .} 或 {cmd:if} {it:varname} {cmd:!= ""}}。

{phang2}
{opt mtr(year income)}{p_end}
{pmore2}
不能与 {cmd:by} 结合使用。它返回1940年至2019年间，某年 {it:year} 的已婚夫妇，税前收入为 {it:income} 的美国边际所得税率。 {it:year} 和 {it:income} 可以指定为变量名或常数；例如，{bind:{cmd:mtr(1993 faminc)}}, {cmd:mtr(surveyyr 28000)}，或 {cmd:mtr(surveyyr faminc)}。空白或逗号可以用来分隔 {it:income} 和 {it:year}。

        {opth pc(exp)} [{cmd:, prop}]{right:(允许 {help by_zh:{bf:by} {it:varlist}{bf::}})  }
{pmore2}
返回 {it:exp}（在 {it:varlist} 中），缩放为总数的百分比，范围在0到100之间。 {opt prop} 选项返回 {it:exp}，缩放为总数的比例，范围在0到1之间。

{marker pctile()}{...}
        {opth pctile(exp)} [{cmd:, p(}{it:#}{cmd:)}]{right:(允许 {help by_zh:{bf:by} {it:varlist}{bf::}})  }
{pmore2}
创建一个常量（在 {it:varlist} 中），包含 {it:#} 分位数的 {it:exp}。如果未指定 {opt p(#)}，则默认为50，即中位数。另见 {help egen##median():{bf:median()}}。

        {opth rank(exp)} [{cmd:,} {opt f:ield}|{opt t:rack}|{opt u:nique}]{right:(允许 {help by_zh:{bf:by} {it:varlist}{bf::}})  }
{pmore2}
创建 {it:exp} 的排序（在 {it:varlist} 中）；默认情况下，平等观察值分配平均排名。 {cmd:field} 选项计算 {it:exp} 的原始等级：最高值排名为1，不对平局进行调整。即，原始等级是1加上更高值的数量。 {opt track} 选项计算 {it:exp} 的跟踪等级：最低值排名为1，不对平局进行调整。即，跟踪等级是1加上更低值的数量。 {opt unique} 选项计算 {it:exp} 的唯一排名：值被排名为1,...,{it:#}，并且值及其平局被任意打破。平局的第二名被排名为2和3。

{phang2}
{opth rowfirst(varlist)}{p_end}
{pmore2}
不能与 {cmd:by} 结合使用。它为每个观察值（行）提供 {it:varlist} 中的第一个非缺失值。如果对于某个观察值，{it:varlist} 中的所有值均缺失，则 {newvar} 被设置为缺失。

{phang2}
{opth rowlast(varlist)}{p_end}
{pmore2}
不能与 {cmd:by} 结合使用。它为每个观察值（行）提供 {it:varlist} 中的最后一个非缺失值。如果对于某个观察值，{it:varlist} 中的所有值均缺失，则 {newvar} 被设置为缺失。

{phang2}
{opth rowmax(varlist)}{p_end}
{pmore2}
不能与 {cmd:by} 结合使用。它为每个观察值（行）提供 {it:varlist} 中的最大值（忽略缺失值）。如果对于某个观察值，{it:varlist} 中的所有值均缺失，则 {newvar} 被设置为缺失。

{phang2}
{opth rowmean(varlist)}{p_end}
{pmore2}
不能与 {cmd:by} 结合使用。它计算 {it:varlist} 中变量的（行）均值，忽略缺失值；例如，如果指定了三个变量，并且在某些观察值中，其中一个变量缺失，则在这些观察值中，{newvar} 将包含存在的两个变量的均值。其他观察值将包含所有三个变量的均值。当没有变量存在时，{it:newvar} 被设置为缺失。

{marker rowmedian()}{...}
{phang2}
{opth rowmedian(varlist)}{p_end}
{pmore2}
不能与 {cmd:by} 结合使用。它为 {it:varlist} 中的变量提供（行）中位数，忽略缺失值。如果对于某个观察值，{it:varlist} 中的所有变量均缺失，则在该观察值中 {newvar} 被设置为缺失。另见 {help egen##rowpctile():{bf:rowpctile()}}。

{phang2}
{opth rowmin(varlist)}{p_end}
{pmore2}
不能与 {cmd:by} 结合使用。它为每个观察值（行）提供 {it:varlist} 中的最小值。如果对于某个观察值，{it:varlist} 中的所有值均缺失，则 {newvar} 被设置为缺失。

{marker rowmiss()}{...}
{phang2}
{opth rowmiss(varlist)}{p_end}
{pmore2}
不能与 {cmd:by} 结合使用。它提供每个观察值（行）中 {it:varlist} 中缺失值的数量。  

{marker rownonmiss()}{...}
{phang2}
{opth rownonmiss(varlist)} [{cmd:,} {opt s:trok}]{p_end}
{pmore2}
不能与 {cmd:by} 结合使用。它提供每个观察值（行）中 {it:varlist} 中非缺失值的数量——这是 {opt rowmean()} 计算均值时分母使用的值。

{pmore2}
字符串变量无法指定，除非同时指定了 {opt strok} 选项。如果指定了 {opt strok}，则字符串变量在其值为""时将被视为包含缺失值。数值变量在其值为 "{ul:>}{cmd:.}" 时视为包含缺失值。

{marker rowpctile()}{...}
{phang2}
{opth rowpctile(varlist)} [{cmd:, p(}{it:#}{cmd:)}]{p_end}
{pmore2}
不能与 {cmd:by} 结合使用。它提供 {it:varlist} 中变量的 {it:#} 分位数，忽略缺失值。如果对于某个观察值，{it:varlist} 中的所有变量均缺失，则在该观察值中 {it:newvar} 被设置为缺失。如果未指定 {cmd:p()}，则默认假设为 {cmd:p(50)}，即中位数。另见 {help egen##rowmedian():{bf:rowmedian()}}。

{phang2}
{opth rowsd(varlist)}{p_end}
{pmore2}
不能与 {cmd:by} 结合使用。它创建 {it:varlist} 中变量的（行）标准差，忽略缺失值。

{phang2}
{opth rowtotal(varlist)} [{cmd:,} {opt m:issing}]{p_end}
{pmore2}
不能与 {cmd:by} 结合使用。它创建 {it:varlist} 中变量的（行）总和，将缺失视为0。如果指定了 {opt missing} 并且对于某个观察值，{it:varlist} 中的所有值均缺失，则 {it:newvar} 被设置为缺失。

        {opth sd(exp)}{right:(允许 {help by_zh:{bf:by} {it:varlist}{bf::}})  }
{pmore2}
创建一个常量（在 {it:varlist} 中），包含 {it:exp} 的标准差。另见 {help egen##mean():{bf:mean()}}。

        {opt seq()} [{cmd:,} {opt f:rom(#)} {opt t:o(#)} {opt b:lock(#)}]{right:(允许 {help by_zh:{bf:by} {it:varlist}{bf::}})  }
{pmore2}
返回整数序列。值从 {opt from()}（默认1）开始，增加到 {opt to()}（默认是最大值）以指定的块（默认大小1）。如果 {opt to()} 小于最大数字，则在 {opt from()} 处重新开始序列。编号也可以在由 {it:varlist} 定义的组内分开，或者当 {opt to()} 小于 {opt from()} 时递减。序列取决于观察值的排序顺序，遵循三条规则：1) 由 {help if_zh} 或 {help in_zh} 排除的观察值不计入；2) 按照指定的 {it:varlist} 排序；3) 否则，按照被调用时的顺序。没有指定 {it:arguments}。

        {opth skew(varname)}{right:(允许 {help by_zh:{bf:by} {it:varlist}{bf::}})  }
{pmore2}
返回 {it:varname} 的偏斜度（在 {it:varlist} 中）。

{phang2}
{opth std(exp)} [{cmd:,} {opt m:ean(#)} {opt s:td(#)}]{p_end}
{pmore2}
不能与 {cmd:by} 结合使用。它创建 {it:exp} 的标准化值。选项指定所需的均值和标准差。默认值为 {cmd:mean(0)} 和 {cmd:std(1)}，生成均值为0和标准差为1的变量。

{phang2}
{opth tag(varlist)} [{cmd:,} {opt m:issing}]{p_end}
{pmore2}
不能与 {cmd:by} 结合使用。它在 {it:varlist} 定义的每个不同组中，仅标记一个观察值。当一组中的所有观察值对一个总结变量计算出相同的值时，许多情况下可以只使用一个值。结果若该观察值被标记则为1，且不会缺失，否则为0。任何因 {help if_zh} 或 {help in_zh} 排除的观察值被设置为0（非缺失）。因此，如果 {opt tag} 是由 {cmd:egen tag =} {opt tag(varlist)} 生成的变量，则 {opt if tag} 始终是安全的。 {opt missing} 指定可以包含 {it:varlist} 的缺失值。

{marker total()}{...}
        {opth total(exp)} [{cmd:,} {opt m:issing}] {right:(允许 {help by_zh:{bf:by} {it:varlist}{bf::}})  }
{pmore2}
创建一个常量（在 {it:varlist} 中），包含 {it:exp} 的总和，将缺失视为0。如果指定了 {opt missing} 并且 {it:exp} 中的所有值均缺失，则 {it:newvar} 被设置为缺失。另见 {help egen##mean():{bf:mean()}}。


{marker menu}{...}
{title:菜单}

{phang}
{bf:数据 > 创建或更改数据 > 创建新变量（扩展）}


{marker description}{...}
{title:描述}

{pstd}
{cmd:egen} 创建一个可选指定存储类型的 {newvar}，其值等于 {it:fcn}{cmd:(}{it:arguments}{cmd:)}。这里 {it:fcn}{cmd:()} 是专为 {cmd:egen} 编写的函数，如下文所述或用户编写的函数。仅可与 {cmd:egen} 结合使用 {cmd:egen} 函数，反之亦然，只有 {cmd:egen} 可执行 {cmd:egen} 函数。

{pstd}
根据 {it:fcn}{cmd:()}，如果存在， {it:arguments} 指的是一个表达式、{varlist} 或 {it:{help numlist_zh}}，而 {it:options} 也是依赖于 {it:fcn} 的。显式的下标（使用 {cmd:_N} 和 {cmd:_n}）通常在 {cmd:generate} 中使用，不应与 {cmd:egen} 一起使用；见 {help subscripting_zh}。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection D egenQuickstart:快速入门}

        {mansection D egenRemarksandexamples:备注和示例}

        {mansection D egenMethodsandformulas:方法和公式}

{pstd}
上述部分不包含在此帮助文件中。


{marker examples}{...}
{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse egenxmpl}

{pstd}描述数据{p_end}
{phang2}{cmd:. describe}

{pstd}创建一个变量，包含 {cmd:cholesterol} 的均值{p_end}
{phang2}{cmd:. egen avg = mean(cholesterol)}

{pstd}创建一个变量，包含与均值胆固醇水平的偏差{p_end}
{phang2}{cmd:. generate deviation = chol - avg}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse egenxmpl2, clear}

{pstd}描述数据{p_end}
{phang2}{cmd:. describe}

{pstd}创建一个变量，包含每个诊断代码的中位住院天数{p_end}
{phang2}{cmd:. by dcode, sort: egen medstay = median(los)}

{pstd}创建一个变量，包含与中位住院天数的偏差{p_end}
{phang2}{cmd:. generate deltalos = los - medstay}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. clear}{p_end}
{phang2}{cmd:. set obs 5}{p_end}
{phang2}{cmd:. generate x = _n if _n != 3}

{pstd}创建一个变量，包含 {cmd:x} 的运行总和{p_end}
{phang2}{cmd:. generate runsum = sum(x)}

{pstd}创建一个变量，包含等于 {cmd:x} 的总体总和{p_end}
{phang2}{cmd:. egen totalsum = total(x)}

{pstd}列出结果{p_end}
{phang2}{cmd:. list}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse egenxmpl3, clear}

{pstd}描述数据{p_end}
{phang2}{cmd:. describe}

{pstd}创建一个 {cmd:differ}，如果 {cmd:inc1}、 {cmd:inc2} 和 {cmd:inc3} 不全相等，则为1，否则为0{p_end}
{phang2}{cmd:. egen byte differ = diff(inc1 inc2 inc3)}

{pstd}列出收入不同的观察值{p_end}
{phang2}{cmd:. list if differ == 1}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. sysuse auto, clear}

{pstd}创建一个包含 {cmd:mpg} 排名的变量{p_end}
{phang2}{cmd:. egen rank = rank(mpg)}

{pstd}根据 {cmd:rank} 排序数据{p_end}
{phang2}{cmd:. sort rank}

{pstd}列出结果{p_end}
{phang2}{cmd:. list mpg rank}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse states1, clear}

{pstd}描述数据{p_end}
{phang2}{cmd:. describe}

{pstd}创建一个 {cmd:stdage}，包含 {cmd:age} 的标准化值{p_end}
{phang2}{cmd:. egen stdage = std(age)}

{pstd}总结结果{p_end}
{phang2}{cmd:. summarize age stdage}

{pstd}显示 {cmd:age} 和 {cmd:stdage} 之间的相关性{p_end}
{phang2}{cmd:. correlate age stdage}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse egenxmpl4, clear}

{pstd}创建一个 {cmd:hsum}，包含每行 {cmd:a}、 {cmd:b} 和 {cmd:c} 的总和{p_end}
{phang2}{cmd:. egen hsum = rowtotal(a b c)}

{pstd}创建一个 {cmd:havg}，包含每行 {cmd:a}、 {cmd:b} 和 {cmd:c} 的均值{p_end}
{phang2}{cmd:. egen havg = rowmean(a b c)}

{pstd}创建一个 {cmd:hstd}，包含每行 {cmd:a}、 {cmd:b} 和 {cmd:c} 的标准差{p_end}
{phang2}{cmd:. egen hsd = rowsd(a b c)}

{pstd}创建一个 {cmd:hnonmiss}，包含每行 {cmd:a}、 {cmd:b} 和 {cmd:c} 的非缺失观察值数量{p_end}
{phang2}{cmd:. egen hnonmiss = rownonmiss(a b c)}

{pstd}创建一个 {cmd:hmiss}，包含每行 {cmd:a}、 {cmd:b} 和 {cmd:c} 的缺失观察值数量{p_end}
{phang2}{cmd:. egen hmiss = rowmiss(a b c)}

{pstd}列出结果{p_end}
{phang2}{cmd:. list}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse egenxmpl5, clear}

{pstd}创建一个 {cmd:rmin}，包含观察值（行）中 {cmd:x}、 {cmd:y} 和 {cmd:z} 的最小值{p_end}
{phang2}{cmd:. egen rmin = rowmin(x y z)}

{pstd}创建一个 {cmd:rmax}，包含观察值（行）中 {cmd:x}、 {cmd:y} 和 {cmd:z} 的最大值{p_end}
{phang2}{cmd:. egen rmax = rowmax(x y z)}

{pstd}创建一个 {cmd:rfirst}，包含观察值（行）中 {cmd:x}、 {cmd:y} 和 {cmd:z} 的第一个非缺失值{p_end}
{phang2}{cmd:. egen rfirst = rowfirst(x y z)}

{pstd}创建一个 {cmd:rlast}，包含观察值（行）中 {cmd:x}、 {cmd:y} 和 {cmd:z} 的最后一个非缺失值{p_end}
{phang2}{cmd:. egen rlast = rowlast(x y z)}

{pstd}列出结果{p_end}
{phang2}{cmd:. list}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. sysuse auto, clear}

{pstd}创建一个 {cmd:highrep78}，如果 {cmd:rep78} 等于3、4或5，则包含 {cmd:rep78} 的值，否则 {cmd:highrep78} 包含缺失值（{cmd:.}）{p_end}
{phang2}{cmd:. egen highrep78 = anyvalue(rep78), v(3/5)}

{pstd}列出结果{p_end}
{phang2}{cmd:. list rep78 highrep78}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse egenxmpl6, clear}

{pstd}创建一个 {cmd:racesex}，包含 {cmd:race} 和 {cmd:sex} 形成的组的值1、2、...，如果 {cmd:race} 或 {cmd:sex} 缺失，则包含缺失{p_end}
{phang2}{cmd:. egen racesex = group(race sex)}

{pstd}列出结果{p_end}
{phang2}{cmd:. list race sex racesex in 1/7}

{pstd}创建一个 {cmd:rs2}，包含 {cmd:race} 和 {cmd:sex} 形成的组的值1、2、...，将缺失视为任何其他值{p_end}
{phang2}{cmd:. egen rs2 = group(race sex), missing}

{pstd}列出结果{p_end}
{phang2}{cmd:. list race sex rs2 in 1/7}{p_end}
    {hline}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <egen.sthlp>}