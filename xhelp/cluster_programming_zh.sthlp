{smcl}
{* *! version 1.2.7  19oct2017}{...}
{vieweralsosee "[MV] cluster programming utilities" "mansection MV clusterprogrammingutilities"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MV] cluster" "help cluster_zh"}{...}
{vieweralsosee "[MV] clustermat" "help clustermat_zh"}{...}
{vieweralsosee "[MV] cluster programming subroutines" "help cluster_subroutines_zh"}{...}
{viewerjumpto "Syntax" "cluster programming##syntax"}{...}
{viewerjumpto "Description" "cluster programming##description"}{...}
{viewerjumpto "Links to PDF documentation" "cluster_programming_zh##linkspdf"}{...}
{viewerjumpto "Options for cluster set" "cluster programming##options_set"}{...}
{viewerjumpto "Options for cluster delete" "cluster programming##options_delete"}{...}
{viewerjumpto "Options for cluster measures" "cluster programming##options_measures"}{...}
{viewerjumpto "Stored results" "cluster programming##results"}
{help cluster_programming:English Version}
{hline}{...}
{p2colset 1 39 41 2}{...}
{p2col:{bf:[MV] cluster programming utilities} {hline 2}}聚类分析编程工具{p_end}
{p2col:}({mansection MV clusterprogrammingutilities:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

包括 help cluster_programming_syntax


{marker description}{...}
{title:描述}

{p 4 4 2}
{bind:{cmd:cluster query}}、{bind:{cmd:cluster set}}、{bind:{cmd:cluster delete}}、{bind:{cmd:cluster parsedistance}} 和 {bind:{cmd:cluster measures}} 命令为程序员提供了将自定义聚类分析子例程添加到 Stata 的 {cmd:cluster} 命令的工具；见 {manhelp cluster MV} 和 {manhelp cluster_subroutines MV:聚类编程子例程}。这些命令使新命令能够利用 Stata 的聚类管理功能。

{p 4 4 2}
{cmd:cluster query} 提供了一种获取 Stata 中聚类分析各种属性的方法。如果省略 {it:clname}，{cmd:cluster query} 将在 {hi:r(names)} 中返回所有当前定义的聚类分析的名称列表。如果提供 {it:clname}，则指定聚类分析的各种属性将返回在 {hi:r()} 中。这些属性包括类型、方法、所用（不）相似性、创建的变量名称、注释以及附加到聚类分析的任何其他信息。

{p 4 4 2}
{cmd:cluster set} 允许您设置定义 Stata 中聚类分析的各种属性，包括命名您的聚类结果并将名称添加到当前定义的聚类结果的主列表中。使用 {cmd:cluster set}，您可以提供有关聚类分析结果的类型、方法和（不）相似性测量的信息。您可以将变量和 Stata 特征（见 {manhelp char P}）与您的聚类分析关联。{cmd:cluster set} 还允许您向聚类分析结果添加注释和其他指定字段。这些项目成为数据集的一部分，并与数据一起保存。

{p 4 4 2}
{cmd:cluster delete} 允许您从 Stata 中的聚类分析中删除属性。此命令是 {bind:{cmd:cluster set}} 的反操作。

{p 4 4 2}
{cmd:cluster parsedistance} 获取相似性或不相似性 {it:measure} 名称，并根据 Stata 提供的列表检查它，考虑到允许的最小缩写和别名。别名会被解析（例如，{cmd:Euclidean} 变为等效的 {cmd:L2}）。

{p 4 4 2}
{cmd:cluster measures} 计算在 {cmd:compare()} 选项中列出的观察值与根据 {cmd:if} 和 {cmd:in} 条件包含的观察值之间的相似性或不相似性 {it:measure}，并将结果放入 {cmd:generate()} 选项指定的变量中。见 {manhelp matrix_dissimilarity MV:矩阵不相似性} 获取将（不）相似性放入矩阵中的 {cmd:matrix dissimilarity} 命令。

{p 4 4 2}
Stata 还为程序员提供了一种通过提供子命令来扩展 {cmd:cluster} 命令的方法；见 {manhelp cluster_subroutines MV:聚类编程子例程}。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection MV clusterprogrammingutilitiesRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker options_set}{...}
{title:集群设置选项}

{phang}
{cmd:addname} 将 {it:clname} 添加到当前定义的聚类分析的主列表。当未指定 {it:clname} 时，{cmd:addname} 选项是强制的，在这里，{bind:{cmd:cluster set}} 会自动找到一个当前未使用的聚类名称并将其用作聚类名称。{bind:{cmd:cluster set}} 在 {hi:r(name)} 中返回聚类的名称。如果未指定 {cmd:addname}，则 {it:clname} 必须在之前的主列表中添加（例如，通过之前对 {bind:{cmd:cluster set}} 的调用）。

{phang}
{cmd:type(}{it:type}{cmd:)} 设置 {it:clname} 的聚类类型。{cmd:type(hierarchical)} 表示聚类分析是层次式聚类，{cmd:type(partition)} 表示它是分区式聚类。您不受这些类型的限制。例如，您可能会编程某种模糊聚类分析，因此使用 {cmd:type(fuzzy)}。

{phang}
{cmd:method(}{it:method}{cmd:)} 设置聚类分析的方法名称。例如，Stata 使用 {cmd:method(kmeans)} 表示 k均值聚类分析，使用 {cmd:method(single)} 表示单链接聚类分析。您不受当前在 Stata 中使用的名称的限制。

{phang}
{cmd:similarity(}{it:measure}{cmd:)} 和 {cmd:dissimilarity(}{it:measure}{cmd:)} 设置用于聚类分析的相似性或不相似性测量的名称。例如，Stata 使用 {cmd:dissimilarity(L2)} 表示 L2 或欧几里得距离。您不受当前在 Stata 中使用的名称的限制。见 {manhelpi measure_option MV} 和 {manlink MV cluster} 中的（不）相似性测量的列表和讨论。见 {manhelp parse_dissim MV} 获取用于解析（不）相似性名称的程序员命令。

{phang}
{cmd:var(}{it:tag {help varname_zh}}{cmd:)} 在聚类分析中设置一个名为 {it:tag} 的标记，指向变量 {it:varname}。例如，Stata 使用 {bind:{cmd:var(group} {it:varname}{cmd:)}} 从 k均值聚类分析中设置分组变量。使用单链接聚类时，Stata 使用 {bind:{cmd:var(id} {it:idvarname}{cmd:)}}, {bind:{cmd:var(order} {it:ordervarname}{cmd:)}}, 和 {bind:{cmd:var(height} {it:hgtvarname}{cmd:)}} 来设置定义聚类分析结果的 {cmd:id}、{cmd:order} 和 {cmd:height} 变量。您不受当前在 Stata 中使用的名称的限制。可以在 {bind:{cmd:cluster set}} 命令中指定多达 10 个 {cmd:var()} 选项。

{phang}
{cmd:char(}{it:tag charname}{cmd:)} 在聚类分析中设置一个名为 {it:tag} 的标记，指向名为 {it:charname} 的 Stata 特征；见 {manhelp char P}。该特征可以是 {_dta[]} 数据集特征或变量特征。可以在 {bind:{cmd:cluster set}} 命令中指定多达 10 个 {cmd:char()} 选项。

{phang}
{cmd:other(}{it:tag text}{cmd:)} 在聚类分析中设置一个名为 {it:tag} 的标记，附加 {it:text} 到 {it:tag} 标记。Stata 使用 {bind:{cmd:other(k} {it:#}{cmd:)}} 表示在 k均值聚类分析中 {hi:k}（组数）为 {it:#}。您不受当前在 Stata 中使用的名称的限制。可以在 {bind:{cmd:cluster set}} 命令中指定多达 10 个 {cmd:other()} 选项。

{phang}
{cmd:note(}{it:text}{cmd:)} 向 {it:clname} 聚类分析添加注释。{bind:{cmd:cluster notes}} 命令（见 {manhelp cluster_notes MV:聚类注释}）是用于添加、删除或查看聚类注释的命令。{bind:{cmd:cluster notes}} 命令使用 {cmd:note()} 选项的 {bind:{cmd:cluster set}} 来向聚类分析添加注释。可以在 {bind:{cmd:cluster set}} 命令中指定多达 10 个 {cmd:note()} 选项。


{marker options_delete}{...}
{title:删除聚类选项}

{phang}
{cmd:zap} 删除聚类分析 {it:clname} 的所有可能设置。它等同于指定 {cmd:delname}、{cmd:type}、{cmd:method}、{cmd:similarity}、{cmd:dissimilarity}、{cmd:allnotes}、{cmd:allcharzap}、{cmd:allothers} 和 {cmd:allvarzap} 选项。

{phang}
{cmd:delname} 从当前的聚类分析主列表中移除 {it:clname}。此选项不影响组成聚类分析的各种设置。要移除它们，请使用 {bind:{cmd:cluster delete}} 的其他选项。

{phang}
{cmd:type} 删除 {it:clname} 的聚类类型条目。

{phang}
{cmd:method} 删除 {it:clname} 的聚类方法条目。

{phang}
{cmd:similarity} 和 {cmd:dissimilarity} 分别删除 {it:clname} 的相似性和不相似性条目。

{phang}
{opth notes(numlist)} 删除 {it:clname} 中指定编号的注释。编号与 {bind:{cmd:cluster query} {it:clname}} 命令返回的结果相对应。{bind:{cmd:cluster notes drop}} 命令（见 {manhelp cluster_notes MV:聚类注释}）删除聚类注释。它调用 {bind:{cmd:cluster delete}}，使用 {cmd:notes()} 选项删除注释。

{phang}
{cmd:allnotes} 从 {it:clname} 聚类分析中移除所有注释。

{phang}
{cmd:var(}{it:tag}{cmd:)} 从 {it:clname} 中移除标记为 {it:tag} 的条目，该条目指向一个变量。此选项不会删除变量。

{phang}
{cmd:allvars} 移除 {it:clname} 的所有指向变量的条目。此选项不会删除相应的变量。

{phang}
{cmd:varzap(}{it:tag}{cmd:)} 与 {cmd:var()} 相同，并实际删除相关变量。

{phang}
{cmd:allvarzap} 与 {cmd:allvars} 相同，并实际删除变量。

{phang}
{cmd:char(}{it:tag}{cmd:)} 从 {it:clname} 中移除标记为 {it:tag} 的条目，该条目指向一个 Stata 特征（见 {manhelp char P}）。此选项不会删除特征。

{phang}
{cmd:allchars} 从 {it:clname} 中移除所有指向 Stata 特征的条目。此选项不会删除特征。

{phang}
{cmd:charzap(}{it:tag}{cmd:)} 与 {cmd:char()} 相同，并实际删除特征。

{phang}
{cmd:allcharzap} 与 {cmd:allchars} 相同，并实际删除特征。

{phang}
{cmd:other(}{it:tag}{cmd:)} 从 {it:clname} 中删除 {it:tag} 条目及其相关文本，该条目由 {bind:{cmd:cluster set}} 命令的 {cmd:other()} 选项设置。

{phang}
{cmd:allothers} 删除所有使用 {bind:{cmd:cluster set}} 命令的 {cmd:other()} 选项设置的条目来自 {it:clname}。


{marker options_measures}{...}
{title:聚类测量选项}

{phang}
{opth compare(numlist)} 是必需的，并指定要用作比较观察的观察值。每个这些观察值将与通过 {cmd:if} 和 {cmd:in} 条件所暗示的观察值进行比较，使用指定的（不）相似性 {it:measure}。结果存储在 {cmd:generate()} 选项中对应的新变量中。{it:numlist} 中的元素数量必须与 {cmd:generate()} 选项中的变量名称数量相同。

{phang}
{opth generate(newvarlist)} 是必需的，并指定要创建的变量名称。{it:newvarlist} 中的元素数量必须与 {cmd:compare()} 选项中指定的数字数量相同。

{phang}
{it:measure} 指定相似性或不相似性测量。 默认值是 {opt L2} （同义词 {opt Euc:lidean}）。此选项不区分大小写。有关受支持测量的详细描述，请参阅 {manhelpi measure_option MV}。

{phang}
{cmd:propvars} 用于二元测量，并指定通过 {cmd:if} 和 {cmd:in} 条件所暗示的观察值应解释为二元观察的比例。二元测量的默认行为将所有非零值视为一（排除缺失值）。使用 {cmd:propvars} 时，值确认在零到一之间（包括）。有关在二元测量中使用比例的讨论，请参阅 {manhelpi measure_option MV}。

{phang}
{cmd:propcompares} 用于二元测量。它表示比较观察值（那些在 {cmd:compare()} 选项中指定的观察值）应解释为二元观察的比例。二元测量的默认行为将所有非零值视为一（排除缺失值）。使用 {cmd:propcompares} 时，值确认在零到一之间（包括）。有关在二元测量中使用比例的讨论，请参阅 {manhelpi measure_option MV}。


{marker results}{...}
{title:存储结果}

{pstd}
未带参数的 {cmd:cluster query} 在 {cmd:r()} 中存储以下内容：

{synoptset 25 tabbed}{...}
{p2col 5 25 29 2: 宏}{p_end}
{synopt:{cmd:r(names)}}聚类解决方案名称{p_end}

{pstd}
带参数的 {cmd:cluster query} 在 {cmd:r()} 中存储以下内容：

{synoptset 25 tabbed}{...}
{p2col 5 25 29 2: 宏}{p_end}
{synopt:{cmd:r(name)}}聚类名称{p_end}
{synopt:{cmd:r(type)}}聚类分析的类型{p_end}
{synopt:{cmd:r(method)}}聚类分析方法{p_end}
{synopt:{cmd:r(similarity)}}相似性测量名称{p_end}
{synopt:{cmd:r(dissimilarity)}}不相似性测量名称{p_end}
{synopt:{cmd:r(note}{it:#}{cmd:)}}聚类注释编号 {it:#}{p_end}
{synopt:{cmd:r(v}{it:#}{cmd:_tag)}}变量标签编号 {it:#}{p_end}
{synopt:{cmd:r(v}{it:#}{cmd:_name)}}与 {cmd:r(v}{it:#}{cmd:_tag)} 关联的变量名{p_end}
{synopt:{cmd:r(}{it:tag}{cmd:var)}}与 {it:tag} 关联的变量名{p_end}
{synopt:{cmd:r(c}{it:#}{cmd:_tag)}}特征标签编号 {it:#}{p_end}
{synopt:{cmd:r(c}{it:#}{cmd:_name)}}与 {cmd:r(c}{it:#}{cmd:_tag)} 关联的特征名称{p_end}
{synopt:{cmd:r(c}{it:#}{cmd:_val)}}与 {cmd:r(c}{it:#}{cmd:_tag)} 关联的特征值{p_end}
{synopt:{cmd:r(}{it:tag}{cmd:char)}}与 {it:tag} 关联的特征名称{p_end}
{synopt:{cmd:r(o}{it:#}{cmd:_tag)}}其他标签编号 {it:#}{p_end}
{synopt:{cmd:r(o}{it:#}{cmd:_val)}}与 {cmd:r(o}{it:#}{cmd:_tag)} 关联的其他值{p_end}

{pstd}
{cmd:cluster set} 在 {cmd:r()} 中存储以下内容：

{synoptset 25 tabbed}{...}
{p2col 5 25 29 2: 宏}{p_end}
{synopt:{cmd:r(name)}}聚类名称{p_end}

{pstd}
{cmd:cluster parsedistance} 在 {cmd:s()} 中存储以下内容：

{synoptset 25 tabbed}{...}
{p2col 5 25 29 2: 宏}{p_end}
{synopt:{cmd:s(dist)}}（不）相似性测量名称{p_end}
{synopt:{cmd:s(unab)}}未缩写的（不）相似性测量名称（解析别名之前）{p_end}
{synopt:{cmd:s(darg)}}接受 (不) 相似性的参数，如 {opt L(#)}{p_end}
{synopt:{cmd:s(dtype)}}{cmd:similarity} 或 {cmd:dissimilarity}{p_end}
{synopt:{cmd:s(drange)}}测量范围（从最相似到最不相似）{p_end}
{synopt:{cmd:s(binary)}}如果该测量适用于二元观察则为 {cmd:binary}{p_end}

{pstd}
{cmd:cluster measures} 在 {cmd:r()} 中存储以下内容：

{synoptset 25 tabbed}{...}
{p2col 5 25 29 2: 宏}{p_end}
{synopt:{cmd:r(generate)}}来自 {cmd:generate()} 选项的变量名称{p_end}
{synopt:{cmd:r(compare)}}来自 {cmd:compare()} 选项的观察号码{p_end}
{synopt:{cmd:r(dtype)}}{cmd:similarity} 或 {cmd:dissimilarity}{p_end}
{synopt:{cmd:r(distance)}}（不）相似性测量的名称{p_end}
{synopt:{cmd:r(binary)}}如果该测量适用于二元观察则为 {cmd:binary}{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <cluster_programming.sthlp>}