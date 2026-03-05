
{smcl}
{* *! version 1.1.10  16apr2009}{...}
{* 本帮助文件不出现在手册中}{...}
{cmd:help merge_10}{right:{help prdocumented_zh:之前已记录}}
{help merge_10:English Version}
{hline}
{hline}

{title:标题}

{p2colset 5 18 20 2}{...}
{p2col :{hi:[D] merge} {hline 2}}{cmd:merge} 11 版本之前的语法{p_end}
{p2colreset}{...}

{p 12 12 8}
{it}[{bf:merge} 语法自版本 11 起有所更改。
本帮助文件记录了 {cmd:merge} 的旧语法，因此可能对您来说没有兴趣。 您无需将旧 do 文件中的 {cmd:merge} 转换为现代语法，因为 Stata 仍然理解旧语法和新语法。 本帮助文件是提供给希望调试或理解旧代码的用户的。
点击 {help merge_zh:这里} 查看现代 {cmd:merge} 命令的帮助文件。]{rm}

{title:语法}

{p 8 15 2}
{opt mer:ge} [{varlist}] {cmd:using} {it:filename} [{it:filename} {cmd:...}]
[{cmd:,} {it:options}]

{synoptset 18 tabbed}{...}
{synopthdr}
{synoptline}
{syntab :选项}
{synopt :{opth keep(varlist)}}仅保留 {it:filename} 中指定的变量{p_end}
{synopt :{opth _merge(newvar)}}{it:newvar} 标记结果观察的来源；默认是 {opt _merge}{p_end}
{synopt :{opt nol:abel}}不复制 {it:filename} 中的值标签定义{p_end}
{synopt :{opt nonote:s}}不复制 {it:filename} 中的说明{p_end}
{synopt :{opt update}}用 {it:filename} 中的数据替换内存中的缺失数据{p_end}
{synopt :{opt replace}}用 {it:filename} 中的数据替换内存中非缺失数据{p_end}
{synopt :{opt nok:eep}}删除在使用数据集中没有匹配的观察值{p_end}
{synopt :{opt nos:ummary}}在指定多个 {it:filenames} 时删除汇总变量{p_end}
{p2coldent :* {opt uniq:ue}}匹配变量唯一识别内存和 {it:filename} 中的观察{p_end}
{p2coldent :* {opt uniqm:aster}}匹配变量唯一识别内存中的观察{p_end}
{p2coldent :* {opt uniqus:ing}}匹配变量唯一识别 {it:filename} 中的观察{p_end}
{p2coldent :* {opt sort}}在合并之前按匹配变量对主数据集和使用数据集进行排序；如果未指定 {opt uniqmaster} 或 {opt uniqusing}，则 {opt sort} 隐含 {opt unique}{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}* {opt unique}、{opt uniqmaster}、{opt uniqusing} 和 {opt sort} 需要指定 {it:varlist}（匹配变量）。{p_end}

{title:描述}

{pstd}
{cmd:merge} 将当前内存中的数据集（称为 {it:master} 数据集）中的对应观察与存储为 {it:filename} 的 Stata 格式数据集（称为 {it:using} 数据集）连接成单个观察。 如果指定 {it:filename} 而不带扩展名，则假定为 {cmd:.dta}。

{pstd}
{cmd:merge} 可以执行一对一和匹配合并。

{title:选项}

{dlgtab:选项}

{phang}
{opth keep(varlist)} 指定要从使用数据中保留的变量。 如果未指定 {opt keep()}，则保留所有变量。

{pmore}
{opt keep(varlist)} 中的 {varlist} 在两方面与标准的 Stata 变量列表不同：变量名称不得缩写，除了使用通配符；并且您不能引用变量范围，例如 price-weight。

{phang}
{opt _merge(newvar)} 指定要创建的变量名，该变量将标记结果观察的来源。 默认值为 {cmd:_merge(_merge)}；也就是说，如果您未指定此选项，则新变量将命名为 {opt _merge}。

{phang}
{opt nolabel} 防止 Stata 将使用数据集中的值标签定义复制到结果中。 即使您未指定此选项，来自使用数据集的标签定义也不会替换主数据集中的标签定义。

{phang}
{opt nonotes} 防止来自使用数据的数据中的 {help notes_zh} 被合并到结果中。 默认情况下，来自使用数据的说明将被合并，而这些说明在主数据集中尚未出现。

{phang}
{opt update} 指定在主数据集中包含缺失值的情况下，保留来自使用数据集的值。 默认情况下，主数据集是保持不变的 -- 当两个数据集中找到变量时，将保留主数据集中的值。

{phang}
{opt replace} 仅与 {opt update} 一起允许，指定即使主数据集中包含非缺失值，也要用来自使用数据集的相应值替换它们，当相应值不相等时。 然而，缺失值永远不会替换为非缺失值。

{phang}
{opt nokeep} 使 {cmd:merge} 忽略在使用数据集中没有相应观察的观察值。 默认情况下，将这些观察值添加到合并结果中，并将此类观察值标记为 {opt _merge}==2。

{phang}
{opt nosummary} 使 {cmd:merge} 删除在指定多个使用数据集时创建的汇总变量。 默认情况下，创建 {cmd:_merge1} 记录与第一个使用数据集合并的结果，{cmd:_merge2} 记录与第二个使用数据集合并的结果，依此类推。 {cmd:_merge1}、{cmd:_merge2} 等等，包含 1 表示在相应的使用数据集中找到了观察值，0 则表示没有。

{pmore}
无论是否指定 {cmd:nosummary}，都会创建总体状态变量 {cmd:_merge}。

{phang}
{opt unique}、{opt uniqmaster} 和 {opt uniqusing} 指定在匹配合并中，匹配变量唯一识别观察。 使用 {opt unique}、{opt uniqmaster} 和 {opt uniqusing} 时需要匹配变量。

{pmore}
{opt unique} 指定匹配变量在主数据集中和使用数据集中唯一识别观察。 在大多数匹配合并中，您应该指定 {opt unique}。 当您指定该选项时，{cmd:merge} 不会执行任何不同的操作，除非您所做的假设是错误的，在这种情况下，将发出错误消息，数据不会被合并。

{pmore}
{opt uniqmaster} 指定匹配变量唯一识别内存中的观察，也就是主数据，但不一定是使用数据集中的观察。

{pmore}
{opt uniqusing} 指定匹配变量唯一识别使用数据集中的观察，但不一定是主数据集中的观察。

{pmore}
因此，{opt unique} 相当于指定 {opt uniqmaster} 和 {opt uniqusing}。

{pmore}
当指定多个使用数据集时，情况变得更加复杂。 {opt unique} 仍然意味着在所有数据集中是唯一的，{opt uniqusing} 仍然意味着在每个使用数据集中是唯一的，这正如您所期待的那样，但 {opt uniqmaster} 具有全新的含义： {opt uniqmaster} 意味着在主数据集和所有除了最后一个使用数据集之外的使用数据集中是唯一的！ 它断言匹配变量在每个步骤中唯一识别主数据集中的观察，这意味着当主数据集与第一个使用数据集合并时，然后当（新）主数据集（等于原始数据加上第一个使用数据集）与第二个使用数据集合并，依此类推。 总之，{opt uniqmaster} 在指定多个使用数据集时没有实际用处。

{pmore}
如果未指定三个唯一选项中的任何一个，则主数据集和使用数据集中都不要求观察值是唯一的，尽管它们可以是。 如果它们不是唯一的，具有相同匹配变量值的记录将按观察连接，直到一侧或另一侧的所有记录都匹配；在那之后，较短侧的最后记录将被重复多次，以与较长侧上需要匹配的剩余记录相匹配。

{phang}
{opt sort} 指定在合并数据集之前，如果尚未按匹配变量排序，则对主和使用数据集进行排序。 使用 {opt sort} 时需要匹配变量。 如果未指定 {opt uniqmaster} 或 {opt uniqusing}，则 {opt sort} 隐含 {opt unique}。

{title:备注}

{pstd}
{cmd:merge} 可以执行一对一和匹配合并。 在这两种情况下，变量 {cmd:_merge}（或在提供的情况下指定的变量 {cmd:_merge()}）将被添加到数据中

{center:_merge==1    来自主数据集的观察                            }
{center:_merge==2    仅来自一个使用数据集的观察                  }
{center:_merge==3    来自至少两个数据集的观察，包括主或使用 }

{pstd}
{cmd:update} 仅能在有一个使用文件时使用。 当指定 {cmd:update} 时，{cmd:_merge} 的代码为

{center:_merge==1    来自主数据集的观察                            }
{center:_merge==2    来自使用数据集的观察                        }
{center:_merge==3    来自主和使用数据集的观察，主与使用一致  }
{center:_merge==4    来自主和使用数据集的观察，主中的缺失被更新  }
{center:_merge==5    来自主和使用数据集的观察，主与使用不一致  }

{pstd}
当指定多个使用文件时，创建一组汇总变量，只要未使用 {cmd:nosummary}。 这些汇总变量命名为 {cmd:_merge1}（与第一个使用数据集相关），{cmd:_merge2}（与第二个使用数据集相关）等（或者再次是如果提供的情况下指定的 {cmd:_merge()}，后面跟随使用文件的编号）。 这些变量将包含 

{center:_merge{it:k}==0   在相应使用数据集中不存在的观察  }
{center:_merge{it:k}==1   在相应使用数据集中存在的观察      }

{pstd}
与每个汇总变量相关的数据集标识变量标签被附加到这些汇总变量上。

{title:示例}

    {hline}
    设置
{phang2}{cmd:. webuse odd}{p_end}
{phang2}{cmd:. list}{p_end}
{phang2}{cmd:. webuse even1}{p_end}
{phang2}{cmd:. list}

{pstd}执行一对一合并{p_end}
{phang2}{cmd:. merge using http://www.stata-press.com/data/r11/odd}{p_end}
{phang2}{cmd:. list}

    {hline}
    设置
{phang2}{cmd:. webuse even1, clear}{p_end}

{pstd}执行匹配合并{p_end}
{phang2}{cmd:. merge number using http://www.stata-press.com/data/r11/odd, sort}
{p_end}
{phang2}{cmd:. list}{p_end}
{phang2}{cmd:. sort number}{p_end}
{phang2}{cmd:. list}{p_end}

    {hline}
    设置
{phang2}{cmd:. webuse autotech, clear}{p_end}
{phang2}{cmd:. describe}{p_end}
{phang2}{cmd:. describe using http://www.stata-press.com/data/r11/autocost}
{p_end}

{pstd}执行匹配合并{p_end}
{phang2}{cmd:. merge make using http://www.stata-press.com/data/r11/autocost}{p_end}
{phang2}{cmd:. tabulate _merge}{p_end}

    {hline}
    设置
{phang2}{cmd:. webuse dollars, clear}{p_end}
{phang2}{cmd:. list}{p_end}
{phang2}{cmd:. webuse sforce}{p_end}
{phang2}{cmd:. list}{p_end}

{pstd}执行带扩展的匹配合并{p_end}
{phang2}{cmd:. merge region using http://www.stata-press.com/data/r11/dollars}
{p_end}

    {hline}
    设置
{phang2}{cmd:. webuse odd3, clear}{p_end}
{phang2}{cmd:. list}{p_end}
{phang2}{cmd:. webuse letter}{p_end}
{phang2}{cmd:. list}{p_end}
{phang2}{cmd:. webuse even}{p_end}
{phang2}{cmd:. list}{p_end}

{pstd}执行带多个数据集的匹配合并{p_end}
{phang2}{cmd:. merge number using http://www.stata-press.com/data/r11/odd3}
        {cmd:http://www.stata-press.com/data/r11/letter}{p_end}

    {hline}
    设置
{phang2}{cmd:. webuse original, clear}{p_end}
{phang2}{cmd:. list}{p_end}
{phang2}{cmd:. webuse updates}{p_end}
{phang2}{cmd:. list}{p_end}
{phang2}{cmd:. webuse original}{p_end}

{pstd}使用匹配合并更新数据{p_end}
{phang2}{cmd:. merge make using http://www.stata-press.com/data/r11/updates,}
           {cmd:update}{p_end}
{phang2}{cmd:. list}{p_end}
    {hline}

{title:另见}

{psee}
手册:  {help prdocumented_zh:之前已记录}

{psee}
{space 2}帮助:  {manhelp merge D}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <merge_10.sthlp>}