{smcl}
{* *! version 1.1.8  19oct2017}{...}
{vieweralsosee "[P] tabdisp" "mansection P tabdisp"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] collapse" "help collapse_zh"}{...}
{vieweralsosee "[R] table" "help table_zh"}{...}
{vieweralsosee "[R] tabstat" "help tabstat_zh"}{...}
{vieweralsosee "[R] tabulate oneway" "help tabulate_oneway_zh"}{...}
{vieweralsosee "[R] tabulate, summarize()" "help tabulate_summarize_zh"}{...}
{vieweralsosee "[R] tabulate twoway" "help tabulate_twoway_zh"}{...}
{viewerjumpto "Syntax" "tabdisp_zh##syntax"}{...}
{viewerjumpto "Description" "tabdisp_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "tabdisp_zh##linkspdf"}{...}
{viewerjumpto "Options" "tabdisp_zh##options"}{...}
{viewerjumpto "Examples" "tabdisp_zh##examples"}
{help tabdisp:English Version}
{hline}{...}
{p2colset 1 16 18 2}{...}
{p2col:{bf:[P] tabdisp} {hline 2}}显示表格{p_end}
{p2col:}({mansection P tabdisp:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 16 2}
{cmd:tabdisp} {it:rowvar} [{it:colvar} [{it:supercolvar}]]
{ifin}{cmd:,}
{cmdab:c:ellvar:(}{it:{help varname_zh:varnames}}{cmd:)} [{cmd:by(}{it:superrowvars}{cmd:)}
{opth f:ormat(%fmt)} {cmdab:cen:ter} {cmdab:l:eft}
{cmdab:con:cise} {cmdab:m:issing} {cmdab:t:otals} {cmd:dotz}
{cmdab:cellw:idth:(}{it:#}{cmd:)} {cmdab:csep:width:(}{it:#}{cmd:)}
{cmdab:scsep:width:(}{it:#}{cmd:)} {cmdab:stubw:idth:(}{it:#}{cmd:)}]

{phang}
{cmd:by} 是允许的; 请参见 {manhelp by D}。

{pstd}
{it:rowvar}、{it:colvar} 和 {it:supercolvar} 可以是数值或字符串变量。


{marker description}{...}
{title:描述}

{pstd}
{cmd:tabdisp} 在表格中显示数据。{cmd:tabdisp}
不计算任何统计信息，旨在供程序员使用。

{pstd}
有关计算统计信息并在表格中显示的对应命令，请参见 {manhelp table R}。

{pstd}
尽管 {cmd:tabdisp} 旨在用于编程应用，但它可以
以交互方式使用来列出数据。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection P tabdispRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}{cmd:cellvar(}{it:{help varname_zh:varnames}}{cmd:)} 是必需的; 它指定包含要在表格单元中显示的值的数值或字符串变量。最多可以指定五个变量名。

{phang}{cmd:by(}{it:superrowvars}{cmd:)} 指定数值或字符串变量，以作为 {it:superrows} 处理。最多可以指定四个变量。

{phang}{opth format(%fmt)} 指定在表格单元中呈现数字的显示格式。{cmd:format(%9.0g)} 是默认值; {cmd:format(%9.2f)} 是一种流行的替代品。您指定的格式的宽度并不重要，除了 {cmd:%}{it:fmt} 必须有效之外。单元的宽度由 {cmd:tabdisp} 选择，以其认为看起来最好的宽度。{cmd:cellwidth()} 选项允许您覆盖 {cmd:tabdisp} 的选择。

{phang}{cmd:center} 指定结果在表格单元中居中。默认是右对齐结果。为了使居中效果良好，通常需要同时指定显示格式。{cmd:center format(%9.2f)} 是常用选项。

{phang}{cmd:left} 指定列标签左对齐。默认是右对齐列标签，以区分它们与左对齐的超级列标签。如果您指定了 {cmd:left}，那么列标签和超级列标签都将左对齐。

{phang}{cmd:concise} 指定不显示所有条目均缺失的行。

{phang}{cmd:missing} 指定在包含缺失值的单元中显示缺失值（{cmd:.}、{cmd:.a}、{cmd:.b}，...或{cmd:.z}）。默认是缺失值的单元留空。

{phang}{cmd:totals} 指定在 {it:rowvar}、{it:colvar}、{it:supercolvar} 或 {it:superrowvars} 包含系统缺失值（{cmd:.}）的观察被解释为包含 {cmd:cellvar()} 的相应总计，并且表格相应标记。如果还指定了 {cmd:dotz} 选项，则包含 {cmd:.z} 的观察将被这样解释。

{phang}{cmd:dotz} 指定在标记表格的 stub 时，缺失值 {cmd:.} 和 {cmd:.z} 的角色互换。默认情况下，如果 {it:rowvar}、{it:colvar}、{it:supercolvar} 和 {it:superrowvars} 中有任何值缺失（{cmd:.}、{cmd:.a}、{cmd:.b}，...或 {cmd:.z}），则 "{cmd:.}" 将最后放置。{cmd:dotz} 指定 {cmd:.z} 放在最后。此外，如果指定了 {cmd:totals} 选项，则将 {cmd:.z} 值而不是 "{cmd:.}" 值标记为 "总计"。

{phang}{cmd:cellwidth(}{it:#}{cmd:)} 指定单元的宽度，以数字宽度的单位计算; 10 表示由 10 个数字占据的空间，即 0123456789。默认的 {cmd:cellwidth()} 不是固定数字，而是由 {cmd:tabdisp} 选择的、在展示合理数量的列时展开表格的数字。

{phang}{cmd:csepwidth(}{it:#}{cmd:)} 指定列之间的分离，以数字宽度的单位计算。默认不是固定数字，而是由 {cmd:tabdisp} 选定的、其认为最好的数字。

{phang}{cmd:scsepwidth(}{it:#}{cmd:)} 指定超级列之间的分离，以数字宽度的单位计算。默认不是固定数字，而是由 {cmd:tabdisp} 选定的、其认为最好的数字。

{phang}{cmd:stubwidth(}{it:#}{cmd:)} 指定左侧表格 stub 分配的宽度，以数字宽度的单位计算。默认不是固定数字，而是由 {cmd:tabdisp} 选定的、其认为最好的数字。


{marker examples}{...}
{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse tabdxmpl1}

{pstd}列出数据{p_end}
{phang2}{cmd:. list}

{pstd}使用 {cmd:tabdisp} 列出数据{p_end}
{phang2}{cmd:. tabdisp a b, cell(c)}

{pstd}删除第 6 个观察{p_end}
{phang2}{cmd:. drop in 6}

{pstd}使用 {cmd:tabdisp} 列出数据{p_end}
{phang2}{cmd:. tabdisp a b, cell(c)}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. sysuse auto2, clear}

{pstd}列出一些数据{p_end}
{phang2}{cmd:. list make mpg weight displ rep78 in 1/10}

{pstd}使用 {cmd:tabdisp} 列出一些数据{p_end}
{phang2}{cmd:. tabdisp make, cell(mpg weight displ rep78)}

{pstd}按 {cmd:foreign} 和 {cmd:rep78} 分类创建 {cmd:mpg} 的均值数据集{p_end}
{phang2}{cmd:. collapse (mean) mpg, by(foreign rep78)}

{pstd}列出数据{p_end}
{phang2}{cmd:. list}

{pstd}使用 {cmd:tabdisp} 列出数据{p_end}
{phang2}{cmd:. tabdisp foreign rep78, cell(mpg)}

{pstd}删除 {cmd:rep78} 有缺失值的观察{p_end}
{phang2}{cmd:. drop if rep78 >= .}

{pstd}使用 {cmd:tabdisp} 列出数据，格式为 {cmd:%9.2f} 并在单元中居中结果{p_end}
{phang2}{cmd:. tabdisp foreign rep78, cell(mpg) format(%9.2f) center}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse tabdxmpl3, clear}

{pstd}使用 {cmd:tabdisp} 列出由所有字符串变量组成的数据{p_end}
{phang2}{cmd:. tabdisp agecat sex party, c(reaction) center}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse tabdxmpl4}

{pstd}列出数据{p_end}
{phang2}{cmd:. list}

{pstd}使用 {cmd:tabdisp} 列出数据{p_end}
{phang2}{cmd:. tabdisp sex response, cell(pop)}

{pstd}使用 {cmd:tabdisp} 列出数据，请求显示缺失值{p_end}
{phang2}{cmd:. tabdisp sex response, cell(pop) missing}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse tabdxmpl5}

{pstd}列出数据{p_end}
{phang2}{cmd:. list}

{pstd}使用 {cmd:tabdisp} 列出数据{p_end}
{phang2}{cmd:. tabdisp sex response, cell(pop)}

{pstd}使用 {cmd:tabdisp} 列出数据，将系统缺失值标记为总计{p_end}
{phang2}{cmd:. tabdisp sex response, cell(pop) total}{p_end}
    {hline}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <tabdisp.sthlp>}