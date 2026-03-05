{smcl}
{* *! version 1.1.11  20dec2018}{...}
{viewerdialog "irf describe" "dialog irf_describe"}{...}
{vieweralsosee "[TS] irf describe" "mansection TS irfdescribe"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TS] irf" "help irf_zh"}{...}
{vieweralsosee "[TS] var intro" "help var_intro_zh"}{...}
{vieweralsosee "[TS] vec intro" "help vec_intro_zh"}{...}
{viewerjumpto "Syntax" "irf_describe_zh##syntax"}{...}
{viewerjumpto "Menu" "irf_describe_zh##menu"}{...}
{viewerjumpto "Description" "irf_describe_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "irf_describe_zh##linkspdf"}{...}
{viewerjumpto "Options" "irf_describe_zh##options"}{...}
{viewerjumpto "Examples" "irf_describe_zh##examples"}{...}
{viewerjumpto "Stored results" "irf_describe_zh##results"}
{help irf_describe:English Version}
{hline}{...}
{p2colset 1 22 24 2}{...}
{p2col:{bf:[TS] irf describe} {hline 2}}描述一个 IRF 文件{p_end}
{p2col:}({mansection TS irfdescribe:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 21 2}
{cmd:irf}
{opt d:escribe}
[{it:irf_resultslist}]
[{cmd:,}
{it:options}]

{synoptset 21}{...}
{synopthdr}
{synoptline}
{synopt:{opth set(filename)}}使 {it:filename} 成为活动文件{p_end}
{synopt:{opt using(irf_filename)}}描述 {it:irf_filename} 而不使其成为活动文件{p_end}
{synopt:{opt d:etail}}显示 IRF 结果的附加细节{p_end}
{synopt:{opt v:ariables}}显示 IRF 数据集的基础结构{p_end}
{synoptline}
{p2colreset}{...}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 多变量时间序列 > 管理 IRF 结果和文件 >}
     {bf:描述 IRF 文件}


{marker description}{...}
{title:描述}

{pstd}
{cmd:irf describe} 描述估计命令的规范以及用于创建保存在 IRF 文件中的 IRF 结果的 IRF 规范。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection TS irfdescribe快速入门:快速入门}

        {mansection TS irfdescribe备注和示例:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{opth set(filename)} 指定要描述和设置的 IRF 文件；请参见 
   {manhelp irf_set TS:irf set}。如果 {it:filename} 没有扩展名，则默认为 {opt .irf}。

{phang}
{opt using(irf_filename)} 指定要描述的 IRF 文件。当前活动的 IRF 文件（如果有）保持不变。如果 {it:irf_filename} 没有扩展名，则默认为 {opt .irf}。

{phang}
{opt detail} 指定 {opt irf describe} 显示每组 IRF 结果的详细信息。指定 {it:irf_resultslist} 时隐含 {opt detail}。

{phang}
{opt variables} 是程序员选项；额外显示由 {opt describe} 命令生成的输出。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse lutkepohl2}

{pstd}拟合 VAR 模型{p_end}
{phang2}{cmd:. var dln_inv dln_inc dln_consump if qtr<=tq(1978q4), lags(1/2)}
           {cmd:dfk}

{pstd}使用各种内生变量的排序创建 IRF 结果 {cmd:order1}, {cmd:order2}, 和 {cmd:order3}{p_end}
{phang2}{cmd:. irf create order1, set(myirfs, replace)}{p_end}
{phang2}{cmd:. irf create order2, order(dln_inc dln_inv dln_consump)}{p_end}
{phang2}{cmd:. irf create order3, order(dln_inc dln_consump dln_inv)}

{pstd}显示 IRF 结果的简短摘要{p_end}
{phang2}{cmd:. irf describe}

{pstd}显示 {cmd:order1} 的模型和 IRF 规范的摘要{p_end}
{phang2}{cmd:. irf describe order1}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:irf describe} 将以下内容存储在 {cmd:r()} 中：

{synoptset 25 tabbed}{...}
{p2col 5 25 29 2: 标量}{p_end}
{synopt:{cmd:r(N)}}IRF 文件中的观察数量{p_end}
{synopt:{cmd:r(k)}}IRF 文件中的变量数量{p_end}
{synopt:{cmd:r(width)}}IRF 文件中的数据集宽度{p_end}
{synopt:{cmd:r(changed)}}指示数据自上次保存以来已更改的标志{p_end}

{synoptset 25 tabbed}{...}
{p2col 5 25 29 2: 宏}{p_end}
{synopt:{cmd:r(_version)}}IRF 结果文件的版本{p_end}
{synopt:{cmd:r(irfnames)}}IRF 文件中 IRF 结果的名称{p_end}
{synopt:{cmd:r(}{it:irfname}{cmd:_model)}}{cmd:var}、{cmd:sr var}、{cmd:lr var} 或
{cmd:vec}{p_end}
{synopt:{cmd:r(}{it:irfname}{cmd:_order)}}IRF 估计中假定的 Cholesky 顺序{p_end}
{synopt:{cmd:r(}{it:irfname}{cmd:_exog)}}VAR或基础VAR中的外生变量及其滞后{p_end}
{synopt:{cmd:r(}{it:irfname}{cmd:_exogvars)}}VAR或基础VAR中的外生变量{p_end}
{synopt:{cmd:r(}{it:irfname}{cmd:_constant)}}{cmd:constant} 或
{cmd:noconstant}{p_end}
{synopt:{cmd:r(}{it:irfname}{cmd:_lags)}}模型中的滞后{p_end}
{synopt:{cmd:r(}{it:irfname}{cmd:_exlags)}}模型中外生变量的滞后{p_end}
{synopt:{cmd:r(}{it:irfname}{cmd:_tmin)}}估计样本中时间变量的最小值{p_end}
{synopt:{cmd:r(}{it:irfname}{cmd:_tmax)}}估计样本中时间变量的最大值{p_end}
{synopt:{cmd:r(}{it:irfname}{cmd:_timevar)}}{cmd:tsset} 时间变量的名称{p_end}
{synopt:{cmd:r(}{it:irfname}{cmd:_tsfmt)}}估计样本中时间变量的格式{p_end}
{synopt:{cmd:r(}{it:irfname}{cmd:_varcns)}}{cmd:unconstrained} 或对 VAR 系数施加的以分号分隔的约束列表{p_end}
{synopt:{cmd:r(}{it:irfname}{cmd:_svarcns)}}{cmd:"."} 或对 SVAR 系数施加的以分号分隔的约束列表{p_end}
{synopt:{cmd:r(}{it:irfname}{cmd:_step)}}IRF 估计中的最大步数{p_end}
{synopt:{cmd:r(}{it:irfname}{cmd:_stderror)}}{cmd:asymptotic}、{cmd:bs}、{cmd:bsp}，或 {cmd:none}，具体取决于指定给 {cmd:irf create} 的标准误差类型{p_end}
{synopt:{cmd:r(}{it:irfname}{cmd:_reps)}}{cmd:"."} 或进行的自助法重抽样次数{p_end}
{synopt:{cmd:r(}{it:irfname}{cmd:_version)}}最初包含 {it:irfname} IRF 结果的 IRF 文件的版本{p_end}
{synopt:{cmd:r(}{it:irfname}{cmd:_rank)}}{cmd:"."} 或协整方程的数量{p_end}
{synopt:{cmd:r(}{it:irfname}{cmd:_trend)}}{cmd:"."} 或在 {cmd:vec} 中指定的 {cmd:trend()}{p_end}
{synopt:{cmd:r(}{it:irfname}{cmd:_veccns)}}{cmd:"."} 或施加于 VECM 参数的约束{p_end}
{synopt:{cmd:r(}{it:irfname}{cmd:_sind)}}{cmd:"."} 或在 {cmd:vec} 中包含的标准化季节性指标{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <irf_describe.sthlp>}