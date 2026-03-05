{smcl}
{* *! version 1.0.2  14jun2019}{...}
{vieweralsosee "[D] frget" "mansection D frget"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] frlink" "help frlink_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] frames intro" "help frames intro"}{...}
{vieweralsosee "[D] merge" "help merge_zh"}{...}
{viewerjumpto "语法" "frget_zh##syntax"}{...}
{viewerjumpto "描述" "frget_zh##description"}{...}
{viewerjumpto "链接到 PDF 文档" "frget_zh##linkspdf"}{...}
{viewerjumpto "选项" "frget_zh##options"}{...}
{viewerjumpto "示例" "frget_zh##examples"}{...}
{viewerjumpto "存储结果" "frget_zh##results"}
{help frget:English Version}
{hline}{...}
{p2colset 1 14 16 2}{...}
{p2col:{bf:[D] frget} {hline 2}}从链接的框架复制变量{p_end}
{p2col:}({mansection D frget:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 35 2}
{cmd:frget} {varlist}{cmd:,} 
{cmd:from(}{it:linkname}{cmd:)}
[{it:rename_options}]{bind:    (1)}

{p 8 35 2}
{cmd:frget} {newvar} {cmd:=} {varname}{cmd:,} 
{cmd:from(}{it:linkname}{cmd:)}
{bind:           (2)}


{marker linkname}{...}
{phang}
{it:linkname} 是当前框架中由 {cmd:frlink} 创建的 {it:linkvar} 的名称；参见 {bf:{help frlink_zh:[D] frlink}}。

{synoptset}{...}
{synopthdr:rename_option}
{synoptline}
{synopt :{opth pre:fix(string)}}将新变量名称前缀为 {it:string}{p_end}
{synopt :{opth suf:fix(strings:string)}}将新变量名称后缀为 {it:string}{p_end}
{synopt :{opth exclude(varlist)}}排除指定的变量{p_end}
{synoptline}

{phang}
语法 1 从由 {it:linkname} 链接的框架复制 {it:varlist} 指定的变量名称到当前框架。

{phang}
语法 2 从由 {it:linkname} 链接的框架将 {it:varname} 复制到当前框架的 {it:newvar}。

{pmore}
    复制意味着复制和克隆。 显示格式、变量标签、值标签、注释和特征也会被复制。

{p 4 8 2}
在语法 2 中，{it:newvar}{cmd:=}{it:varname} 可以重复。
例如，

{p 12 16 2}
{cmd:. frget edinc=income hval=homevalue, from(counties)}


{marker description}{...}
{title:描述}

{pstd}
{cmd:frget} 从链接框架的数据中复制变量及其相关元数据到当前框架的数据中。复制是指从链接框架复制相关的观察值到当前框架的适当观察值中。

{pstd}
如果您不知道框架是什么，请参见 {helpb frames intro:[D] frames intro}。


{marker linkspdf}{...}
{title:链接到 PDF 文档}

        {mansection D frgetQuickstart:快速入门}

        {mansection D frgetRemarksandexamples:备注和示例}

{pstd}
上面的部分不包括在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{cmd:from(}{help frget##linkname:{it:linkname}}{cmd:)} 
    指定从中复制变量的链接框架的身份。框架的链接通过 {bf:{help frlink_zh:frlink}} 命令创建。链接通常以链接到的框架命名。链接 {cmd:counties} 链接到框架 {cmd:counties}，因此您指定 {cmd:from(counties)}。如果链接 {cmd:c} 链接到框架 {cmd:counties}，您指定 {cmd:from(c)}。 {cmd:from()} 是必需的。

{phang}
{opth prefix:(strings:string)}
    指定一个字符串作为当前框架中创建的新变量名称的前缀。假设您输入 

{p 12 14 2}
{cmd:. frget inc*, from(counties)}

{pmore}
    请求将变量 {cmd:income} 和 {cmd:income_family} 复制到当前框架。如果变量 {cmd:income} 已经存在于当前框架中，该命令将发出相应的错误信息并且不复制任何变量。要复制这两个变量，您可以输入

{p 12 14 2}
{cmd:. frget inc*, from(counties) prefix(c_)}

{pmore}
    然后变量将被复制到名为 {cmd:c_income} 和 {cmd:c_income_family} 的变量。

{phang}
{opth suffix:(strings:string)}
    的工作方式与 {cmd:prefix(}{it:string}{cmd:)} 类似，区别在于字符串是作为后缀而不是前缀添加到变量名称上。如果您愿意，可以同时指定这两个选项。

{phang}
{opth exclude(varlist)}
   指定不需要复制的变量。选项的示例是

{p 12 14 2}
{cmd:frget *, from(counties) exclude(emp*)}

{pmore}
    除了以 {cmd:emp} 开头的变量之外，所有变量将被复制。

{pmore}
    更准确地说，所有变量除了 {cmd:emp*}、{cmd:_*} 和 {help frlink_zh:match variables} 将被复制，因为 {cmd:frget} 始终省略下划线和匹配变量。请参阅下面的 {mansection D frgetRemarksandexamplesexplain:解释}。


{marker examples}{...}
{title:示例}

{pstd}
通过链接 {cmd:lnk} 获取变量 {cmd:a}、{cmd:b} 和 {cmd:c}{p_end}
{phang2}{cmd:. frget a b c, from(lnk)}

{pstd}
通过链接 {cmd:lnk} 获取变量 d 和 e，并在当前框架中将它们命名为 {cmd:newd} 和 {cmd:newe}{p_end}
{phang2}{cmd:. frget newd=d newe=e, from(lnk)}

{pstd}
通过链接 {cmd:lnk} 获取所有变量，并在前面加上前缀 {cmd:l_}{p_end}
{phang2}{cmd:frget *, from(lnk) prefix(l_)}

{pstd}
通过链接 {cmd:lnk} 获取所有变量，排除匹配模式 {cmd:ind*}{p_end}
{phang2}{cmd:. frget *, from(lnk) exclude(ind*)}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:frget} 在 {cmd:r()} 中存储以下内容：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:r(k)}}从链接框架复制的变量数量{p_end}

{p2col 5 15 19 2: 宏}{p_end}
{synopt:{cmd:r(newlist)}}当前框架中的新变量{p_end}
{synopt:{cmd:r(srclist)}}从链接框架复制的变量{p_end}
{synopt:{cmd:r(excluded)}}未从链接框架复制的变量{p_end}
{synopt:{cmd:r(dups)}}当前框架中已经存在的变量{p_end}
{synopt:{cmd:r(notfound)}}在链接框架中找不到的变量{p_end}
{p2colreset}{...}

{pstd}
仅当 {cmd:frget} 出现错误信息，因而有潜在的新变量名称已在当前框架中存在时，{cmd:r(dups)} 才会出现。

{pstd}
仅在语法 2 中，当 {cmd:frget} 因为在链接框架中找不到 {it:varname} 而出现错误信息时，{cmd:r(notfound)} 才会出现。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <frget.sthlp>}