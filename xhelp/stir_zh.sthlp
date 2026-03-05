{smcl}
{* *! version 1.2.4  20dec2018}{...}
{viewerdialog stir "dialog stir"}{...}
{vieweralsosee "[ST] stir" "mansection ST stir"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] Epitab" "help epitab_zh"}{...}
{vieweralsosee "[ST] stset" "help stset_zh"}{...}
{vieweralsosee "[ST] stsum" "help stsum_zh"}{...}
{viewerjumpto "Syntax" "stir_zh##syntax"}{...}
{viewerjumpto "Menu" "stir_zh##menu"}{...}
{viewerjumpto "Description" "stir_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "stir_zh##linkspdf"}{...}
{viewerjumpto "Options" "stir_zh##options"}{...}
{viewerjumpto "Examples" "stir_zh##examples"}{...}
{viewerjumpto "Video example" "stir_zh##video"}{...}
{viewerjumpto "Stored results" "stir_zh##results"}
{help stir:English Version}
{hline}{...}
{p2colset 1 14 16 2}{...}
{p2col:{bf:[ST] stir} {hline 2}}报告发生率比较{p_end}
{p2col:}({mansection ST stir:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 13 2}
{cmd:stir} {it:exposedvar} {ifin} [{cmd:,} {it:options}]

{synoptset 21 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:主要}
{synopt :{opth st:rata(varname)}}按 {it:varname} 分层{p_end}
{synopt :{opt nosh:ow}}不显示 st 设置信息{p_end}

{syntab:选项}
{synopt :{opt ird}}报告发生率差异而非比率{p_end}
{synopt :{opt es:tandard}}将外部权重与分层统计合并{p_end}
{synopt :{opt is:tandard}}将内部权重与分层统计合并{p_end}
{synopt :{opth s:tandard(varname)}}将用户指定的权重与分层统计合并{p_end}
{synopt :{opt p:ool}}显示合并估计{p_end}
{synopt :{opt noc:rude}}不显示粗略估计{p_end}
{synopt :{opt noh:om}}不显示均匀性检验{p_end}
{synopt :{opt tb}}计算基于检验的置信区间{p_end}
{synopt :{opt l:evel(#)}}设置置信水平；默认值是 {cmd:level(95)}{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
选项除 {opt noshow}、{opt tb} 和 {opt level(#)} 外，只有在指定 {opt strata()} 时才相关。{p_end}
{p 4 6 2}
您必须在使用 {cmd:stir} 之前 {cmd:stset} 数据；请参见 {manhelp stset ST}。{p_end}
{p 4 6 2}
允许使用 {cmd:by}；请参见 {manhelp by D}。{p_end}
{p 4 6 2}
可以使用 {cmd:stset} 指定 {opt fweight} 和 {opt iweight}；请参见 {manhelp stset ST}。{cmd:stir} 不能与加权数据 {opt pweight} 一起使用。


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 生存分析 > 汇总统计、检验和表格 >}
     {bf:报告发生率比较}


{marker description}{...}
{title:描述}

{pstd}
{cmd:stir} 报告发生率比率（IRR）和发生率差的点估计和置信区间。
分层 IRR 可以被标准化以产生标准化死亡比。

{pstd}
{cmd:stir} 可用于单记录或多记录、单失败或多失败的 st 数据。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection ST stirQuickstart:快速入门}

        {mansection ST stirRemarksandexamples:备注和示例}

        {mansection ST stirMethodsandformulas:方法和公式}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主要}

{phang}
{opth strata(varname)} 指定计算按 {it:varname} 分层，该变量可以是数值型或字符串型。显示分层统计，然后与 Mantel-Haenszel 权重结合。

{phang}
{opt noshow} 防止 {cmd:stir} 显示关键的 st 变量。这个选项很少使用，因为大多数人输入 {cmd:stset, show} 或 {cmd:stset, noshow} 来设置是否希望在每个 st 命令输出的顶部提到这些变量；请参见 {manhelp stset ST}。

{dlgtab:选项}

{phang}
{opt ird}、{opt estandard}、{opt istandard}、{opth standard(varname)}、{opt pool}、{opt nocrude} 和 {opt nohom} 仅在指定 {opt strata()} 时相关；请参见 {manhelp Epitab R}。

{phang}
{opt tb} 和 {opt level(#)} 在所有情况下相关；请参见 {manhelp Epitab R}。


{marker examples}{...}
{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse page2}

{pstd}报告暴露组和未暴露组之间的发生率比和差异{p_end}
{phang2}{cmd:. stir group}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse hip3}

{pstd}显示 st 设置{p_end}
{phang2}{cmd:. stset}

{pstd}计算标准化的 IRR，按暴露组的时间权重每个性别，并显示 IRR 的合并估计{p_end}
{phang2}{cmd:. stir protect, strata(male) istandard pool}{p_end}
    {hline}


{marker video}{...}
{title:视频示例}

{phang}
{browse "https://www.youtube.com/watch?v=ItmXrcfpTfE&list=UUVk4G4nEtBS4tLOyHqustDA":如何计算发生率和发生率比}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:stir} 在 {cmd:r()} 中存储以下内容：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:r(p)}}单侧 p 值{p_end}
{synopt:{cmd:r(ird)}}发生率差{p_end}
{synopt:{cmd:r(lb_ird)}}置信区间下限 {cmd:ird}{p_end}
{synopt:{cmd:r(ub_ird)}}置信区间上限 {cmd:ird}{p_end}
{synopt:{cmd:r(irr)}}发生率比{p_end}
{synopt:{cmd:r(lb_irr)}}置信区间下限 {cmd:irr}{p_end}
{synopt:{cmd:r(ub_irr)}}置信区间上限 {cmd:irr}{p_end}
{synopt:{cmd:r(afe)}}暴露组中的归因（前瞻性）比例{p_end}
{synopt:{cmd:r(lb_afe)}}置信区间下限 {cmd:afe}{p_end}
{synopt:{cmd:r(ub_afe)}}置信区间上限 {cmd:afe}{p_end}
{synopt:{cmd:r(afp)}}人口的归因比例{p_end}
{synopt:{cmd:r(chi2_mh)}}Mantel-Haenszel 同质性卡方{p_end}
{synopt:{cmd:r(chi2_p)}}合并同质性卡方{p_end}
{synopt:{cmd:r(pooled)}}合并 IRR（或 IRD）估计{p_end}
{synopt:{cmd:r(lb_pooled)}}合并置信区间下限{p_end}
{synopt:{cmd:r(ub_pooled)}}合并置信区间上限{p_end}
{synopt:{cmd:r(crude)}}粗略 IRR（或 IRD）估计{p_end}
{synopt:{cmd:r(lb_crude)}}粗略置信区间下限{p_end}
{synopt:{cmd:r(ub_crude)}}粗略置信区间上限{p_end}
{synopt:{cmd:r(df)}}自由度{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <stir.sthlp>}