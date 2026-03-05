{smcl}
{* *! version 1.0.3  14jun2019}{...}
{vieweralsosee "[D] frlink" "mansection D frlink"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] frget" "help frget_zh"}{...}
{vieweralsosee "[D] frames intro" "help frames intro"}{...}
{vieweralsosee "[D] merge" "help merge_zh"}{...}
{viewerjumpto "Syntax" "frlink_zh##syntax"}{...}
{viewerjumpto "Description" "frlink_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "frlink_zh##linkspdf"}{...}
{viewerjumpto "Options" "frlink_zh##options"}{...}
{viewerjumpto "Examples" "frlink_zh##examples"}{...}
{viewerjumpto "Stored results" "frlink_zh##results"}
{help frlink:English Version}
{hline}{...}
{p2colset 1 15 17 2}{...}
{p2col:{bf:[D] frlink} {hline 2}}链接帧{p_end}
{p2col:}({mansection D frlink:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{marker linkage}{...}
{pstd}
在当前帧和另一帧之间创建链接

{p 8 35 2}
{cmd:frlink} {c -(}{cmd:1:1}|{cmd:m:1}{c )-}
{help frlink##varlist1:{it:varlist}}₁{cmd:,}
{cmd:frame(}{it:frame}₂
[{help frlink##varlist2:{it:varlist}}₂]{cmd:)}{break}
[{cmdab:gen:erate(}{help frlink##linkvar1:{it:linkvar}}₁{cmd:)}]


{marker dir}{...}
{pstd}
列出现有链接的名称

{p 8 8 2}
{cmd:frlink} {cmd:dir}


{marker describe}{...}
{pstd}
列出现有链接的详细信息，并验证其仍然有效

{p 8 8 2}
{cmd:frlink} {cmdab:d:escribe}
{help frlink##linkvar2:{it:linkvar}}₂


{marker rebuild}{...}
{pstd}
在数据已更改或帧已重命名时重新创建现有链接

{p 8 8 2}
{cmd:frlink} {cmd:rebuild} 
{help frlink##linkvar2:{it:linkvar}}₂
[{cmd:,} {cmd:frame(}{help frlink##frame3:{it:frame}}₃{cmd:)}]


{pstd}
删除现有链接（删除变量会消除链接）

{p 8 8 2}
{cmd:drop}
{help frlink##linkvar2:{it:linkvar}}₂


{marker merge}{...}
{phang}
{cmd:1:1} 和 {cmd:m:1} 指示观察值如何匹配。 

{marker varlist1}{...}
{phang}
{varlist}₁ 包含当前帧中的匹配变量，称为帧 1。 
{p_end}

{marker linkvar1}{...}
{phang}
{it:linkvar}₁ 是要赋予新变量的名称，该变量由 {cmd:frlink} 创建。该变量将添加到帧 1 的数据集中。
该变量包含链接帧所需的所有信息。

{pmore}
您可以使用 {cmd:generate(}{it:linkvar}₁{cmd:)} 选项指定 {it:linkvar}₁ 的名称，或者让 {cmd:frlink} 为您命名。如果 {cmd:frlink()} 选择名称，该变量将与 {it:frame}₂ 具有相同的名称。

{marker linkvar2}{...}
{phang}
{it:linkvar}₂ 是现有链接变量的名称。


{marker description}{...}
{title:描述}

{pstd}
{cmd:frlink} 创建并有助于管理不同帧之间的数据集链接。链接允许在一个帧中的变量通过另一个帧访问。如果您不知道什么是帧，请参见 {helpb frames intro:[D] frames intro}。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection D frlinkQuickstart:快速入门}

        {mansection D frlinkRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{pstd}
选项按以下标题呈现：

        {help frlink##opts_merge:frlink 1:1 和 frlink m:1 的选项}
	{help frlink##opts_rebuild:frlink rebuild 的选项}


{marker opts_merge}{...}
{title:frlink 1:1 和 frlink m:1 的选项}

{marker varlist2}{...}
{phang}
{cmd:frame(}{it:frame}₂ [{it:varlist}₂]{cmd:)} 指定要创建链接的帧的名称 {it:frame}₂，并可选择匹配的 {it:varlist}₂ 中变量的名称。
如果未指定 {it:varlist}₂，匹配变量假定在两个帧中具有相同的名称。 {cmd:frame()} 是必需的。

{pmore}
     要创建指向名为 {cmd:counties} 的帧的链接，您可以输入 

{p 12 12 2}
{cmd:. frlink m:1 countyid, frame(counties)}

{pmore}
    此示例省略了 {it:varlist}₂ 的规格，并且当匹配变量 {cmd:countyid} 在两个帧中具有相同名称时有效。 如果在其他帧中变量命名为 {cmd:cntycode}，则应输入 

{p 12 12 2}
    {cmd:. frlink m:1 countyid, frame(counties cntycode)}

{pmore}
    因此，匹配观察值的规则是
    当前帧中的 {cmd:countyid} 等于其他帧中的 {cmd:cntycode}。

{pmore}
    必要时，您可以指定多个匹配变量。
    例如，您希望匹配美国数据中的县名。
    县名在各州之间重复，因此您通过输入结合县和州的名称进行匹配 

{p 12 12 2}
{cmd:. frlink m:1 countyname statename, frame(counties)}

{pmore}
    如果匹配变量在 {cmd:counties} 帧中的名称不同，例如 {cmd:county} 和 {cmd:state}，您应输入

{p 12 12 2}
{cmd:. frlink m:1 countyname statename, frame(counties county state)}

{phang}
{opth generate:(frlink##linkvar1:linkvar₁)}
    指定将包含链接帧所需信息的新变量名称。该变量将添加到帧 1 的数据集中。此选项很少使用。

{pmore}
     如果未指定此选项，则链接变量的名称将与在 {cmd:frame()} 选项中指定的帧名称相同。 


{marker opts_rebuild}{...}
{title:frlink rebuild 的选项}

{marker frame3}{...}
{phang}
{cmd:frame(}{it:frame}₃{cmd:)}
    指定与现有链接不同的帧名称。 {it:frame}₃ 是通过 
    {help frlink##linkvar2:{it:linkvar}}₂ 链接的新帧名称。

{pmore}
    例如，昨天，您通过输入 

{p 12 48 2}
{cmd:. frlink m:1 countyname statename, frame(george)}

{pmore}
    创建了一个名为 {cmd:george} 的链接，指向名为 {cmd:george} 的帧中的数据。
    今天，您将链接数据加载到名为 {cmd:counties} 的帧中。  
    为了重建链接，使得链接 {cmd:george} 指向 {cmd:counties} 中的数据，输入 

{p 12 48 2}
{cmd:. frlink rebuild george, frame(counties)}

{pmore}
    如果您还希望将链接重命名为 {cmd:counties}，输入

{p 12 48 2}
{cmd:. rename george counties}

{pmore}
    然后您将拥有一个名为 {cmd:counties} 的链接，指向名为 {cmd:counties} 的帧中的数据。
    


{marker examples}{...}
{title:示例}

    {hline}

{pstd}设置{p_end}
{phang2}{cmd:. webuse persons}{p_end}
{phang2}{cmd:. frame create txcounty}{p_end}
{phang2}{cmd:. frame txcounty: webuse txcounty}

{pstd}创建对帧 {cmd:counties} 的多对一链接，将当前帧中的 {cmd:countyid} 变量与帧 {cmd:txcounty} 中的 {cmd:countyid} 变量匹配{p_end}
{phang2}{cmd:. frlink m:1 countyid, frame(txcounty)}

    {hline}

{pstd}设置{p_end}
{phang2}{cmd:. clear all}{p_end}
{phang2}{cmd:. webuse family}{p_end}
{phang2}{cmd:. frame create family}{p_end}
{phang2}{cmd:. frame family: use family    // 是的，使用相同数据}

{pstd}创建多对一链接{p_end}
{phang2}{cmd:. frlink m:1 pid_m, frame(people pid) generate(m)}{p_end}
{phang2}{cmd:. frlink m:1 pid_f, frame(people pid) generate(f)}

{pstd}创建一个变量，包含当前人母亲的母亲、当前人母亲的父亲、当前人父亲的母亲和当前人父亲的父亲的ID{p_end}
{phang2}{cmd:. frget pid_mm = pid_m, from(m)}{p_end}
{phang2}{cmd:. frget pid_mf = pid_f, from(m)}{p_end}
{phang2}{cmd:. frget pid_fm = pid_m, from(f)}{p_end}
{phang2}{cmd:. frget pid_ff = pid_f, from(f)}

{pstd}为每个新创建的变量创建多对一链接{p_end}
{phang2}{cmd:. frlink m:1 pid_mm, frame(family pid) generate(mm)}{p_end}
{phang2}{cmd:. frlink m:1 pid_mf, frame(family pid) generate(mf)}{p_end}
{phang2}{cmd:. frlink m:1 pid_fm, frame(family pid) generate(fm)}{p_end}
{phang2}{cmd:. frlink m:1 pid_ff, frame(family pid) generate(ff)}{p_end}

    {hline}

{pstd}设置{p_end}
{phang2}{cmd:. webuse discharge1, clear}{p_end}
{phang2}{cmd:. frame create discharge2}{p_end}
{phang2}{cmd:. frame discharge2: webuse discharge2}{p_end}

{pstd}在变量 {cmd:patientid} 上创建对帧 {cmd:discharge2} 的一对一链接{p_end}
{phang2}{cmd:. frlink 1:1 patientid, frame(discharge2)}

    {hline}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:frlink} {cmd:m:1} 和 {cmd:frlink} {cmd:1:1} 存储以下内容在 {cmd:r()} 中：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt :{cmd:r(unmatched)}}{it:#} 在当前帧中无法匹配的观察值{p_end}


{pstd}
{cmd:frlink} {cmd:dir} 存储以下内容在 {cmd:r()}:
 
{p2col 5 15 19 2: 标量}{p_end}
{synopt :{cmd:r(n_vars)}}{it:#} 链接变量的数量{p_end}

{p2col 5 15 19 2: 宏}{p_end}
{synopt :{cmd:r(vars)}}空格分隔的链接变量名称列表{p_end}


{pstd}
{cmd:frlink} {cmd:describe} 不在 {cmd:r()} 中存储任何内容。


{pstd}
{cmd:frlink} {cmd:rebuild} 存储以下内容在 {cmd:r()}：

{p2col 5 15 19 2: 标量}{p_end}
{synopt :{cmd:r(unmatched)}}{it:#} 在当前帧中无法匹配的观察值{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <frlink.sthlp>}