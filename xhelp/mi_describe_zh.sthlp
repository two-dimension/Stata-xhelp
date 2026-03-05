{smcl}
{* *! version 1.0.17  27sep2018}{...}
{viewerdialog mi "dialog mi"}{...}
{vieweralsosee "[MI] mi describe" "mansection MI midescribe"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MI] Intro" "help mi_zh"}{...}
{viewerjumpto "语法" "mi describe##syntax"}{...}
{viewerjumpto "菜单" "mi describe##menu"}{...}
{viewerjumpto "描述" "mi describe##description"}{...}
{viewerjumpto "PDF 文档链接" "mi_describe_zh##linkspdf"}{...}
{viewerjumpto "选项" "mi describe##options"}{...}
{viewerjumpto "示例" "mi describe##examples"}{...}
{viewerjumpto "存储结果" "mi describe##results"}
{help mi_describe:English Version}
{hline}{...}
{p2colset 1 21 23 2}{...}
{p2col:{bf:[MI] mi describe} {hline 2}}描述 mi 数据{p_end}
{p2col:}({mansection MI midescribe:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{cmd:mi}
{cmdab:q:uery}

{p 8 12 2}
{cmd:mi}
{cmdab:d:escribe}
[{cmd:,}
{it:describe_options}]


{synoptset 18}{...}
{synopthdr:describe_options}
{synoptline}
{synopt:{cmdab:d:etail}}显示 {it:m}=1, {it:m}=2, ... 的缺失值计数{p_end}

{synopt:{cmdab:noup:date}}参见 {bf:{help mi_noupdate_option_zh:[MI] noupdate option}}{p_end}
{synoptline}
{p2colreset}{...}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 多重插补}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:mi} {cmd:query} 报告内存中的数据是否为 {cmd:mi} 数据，若是，则报告它们的设置样式。

{p 4 4 2}
{cmd:mi} {cmd:describe} 提供更详细的 {cmd:mi} 数据报告。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection MI midescribeRemarksandexamples:备注和示例}

{pstd}
以上部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{p 4 8 2}
{cmd:detail} 报告 {it:m}=1, {it:m}=2, ...,
    {it:m}={it:M} 的插补和被动变量中的缺失值数量，以及 {it:m}=0 的缺失值数量。

{p 4 8 2}
{cmd:noupdate}
    在某些情况下抑制该命令可能执行的自动 {cmd:mi} {cmd:update}; 
    请参见 {bf:{help mi_noupdate_option_zh:[MI] noupdate option}}。


{marker examples}{...}
{title:示例}

{pstd}
查询数据是否以及如何被 {cmd:mi set}{break}
（如果您的数据未被 {cmd:mi set}，您将收到一条说明此事的消息。）{p_end}
{phang2}{cmd:. mi query}

{pstd}设置{p_end}
{phang2}
{cmd:. webuse mheartintreg}
{p_end}

{pstd}声明数据{p_end}
{phang2}
{cmd:. mi set mlong}
{p_end}

{pstd}
插补受限的 BMI 值，这些值记录在 {cmd:lbmi} 和 {cmd:ubmi}
变量中，
使用区间回归{p_end}
{phang2}
{cmd:. mi impute intreg newbmi attack smokes age female hsgrad, add(20) ll(lbmi) ul(ubmi)}
{p_end}

{pstd}描述生成的 {cmd:mi} 数据{p_end}
{phang2}
{cmd:. mi describe}
{p_end}

{pstd}检查数据最后一次被 {cmd:mi} {cmd:update} 的时间{p_end}
{phang2}
{cmd:. mi query}
{p_end}


{marker results}{...}
{title:存储结果}

{p 4 4 2}
{cmd:mi query} 将以下内容存储在 {cmd:r()} 中：

{col 9}标量
{col 13}{cmd:r(update)}{col 30}自上次 {cmd:mi update} 后的秒数
{col 13}{cmd:r(m)}{col 30}{it:m} 如果 {cmd:r(style)=="flongsep"}
{col 13}{cmd:r(M)}{col 30}{it:M} 如果 {cmd:r(style)!="flongsep"}

{col 9}宏
{col 13}{cmd:r(style)}{col 30}{it:style}
{col 13}{cmd:r(name)}{col 30}{it:name} 如果 {cmd:r(style)=="flongsep"}


{p 8 8 2}
请注意，即使数据不是 {cmd:mi}，{cmd:mi query} 也会发出返回代码 0。在这种情况下，{cmd:r(style)} 为 ""。

{p 4 4 2}
{cmd:mi describe} 将以下内容存储在 {cmd:r()} 中：

{col 9}标量
{col 13}{cmd:r(update)}{col 30}自上次 {cmd:mi update} 后的秒数
{col 13}{cmd:r(N)}{col 30}在 {it:m}=0 中的观测数
{col 13}{cmd:r(N_incomplete)}{col 30}在 {it:m}=0 中的不完整观测数
{col 13}{cmd:r(N_complete)}{col 30}在 {it:m}=0 中的完整观测数
{col 13}{cmd:r(M)}{col 30}{it:M}

{col 9}宏
{col 13}{cmd:r(style)}{col 30}{it:style}
{col 13}{cmd:r(ivars)}{col 30}插补变量的名称
{col 13}{cmd:r(_0_miss_ivars)}{col 30}{it:#} = {cmd:.} 在每个 {cmd:r(ivars)} 中在 {it:m}=0
{col 13}{cmd:r(_0_hard_ivars)}{col 30}{it:#} > {cmd:.} 在每个 {cmd:r(ivars)} 中在 {it:m}=0

{col 13}{cmd:r(pvars)}{col 30}被动变量的名称
{col 13}{cmd:r(_0_miss_pvars)}{col 30}{it:#} >= {cmd:.} 在每个 {cmd:r(pvars)} 中在 {it:m}=0

{col 13}{cmd:r(rvars)}{col 30}常规变量的名称

{p 8 8 2}
如果指定了 {cmd:detail} 选项，针对每个 {it:m}, {it:m}=1, 2, ...,
{it:M}，还会存储

{col 9}宏
{col 13}{cmd:r(_}{it:m}{cmd:_miss_ivars)}{col 30}{it:#} = {cmd:.} 在每个 {cmd:r(ivars)} 中在 {it:m}
{col 13}{cmd:r(_}{it:m}{cmd:_miss_pvars)}{col 30}{it:#} >= {cmd:.} 在每个 {cmd:r(pvars)} 中在 {it:m}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mi_describe.sthlp>}