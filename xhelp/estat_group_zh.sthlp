{smcl}
{* *! version 1.0.4  23may2018}{...}
{viewerdialog estat "dialog estat"}{...}
{vieweralsosee "[ME] estat group" "mansection ME estatgroup"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[ME] mecloglog" "help mecloglog_zh"}{...}
{vieweralsosee "[ME] meglm" "help meglm_zh"}{...}
{vieweralsosee "[ME] meintreg" "help meintreg_zh"}{...}
{vieweralsosee "[ME] melogit" "help melogit_zh"}{...}
{vieweralsosee "[ME] menbreg" "help menbreg_zh"}{...}
{vieweralsosee "[ME] menl" "help menl_zh"}{...}
{vieweralsosee "[ME] meologit" "help meologit_zh"}{...}
{vieweralsosee "[ME] meoprobit" "help meoprobit_zh"}{...}
{vieweralsosee "[ME] mepoisson" "help mepoisson_zh"}{...}
{vieweralsosee "[ME] meprobit" "help meprobit_zh"}{...}
{vieweralsosee "[ME] mestreg" "help mestreg_zh"}{...}
{vieweralsosee "[ME] metobit" "help metobit_zh"}{...}
{vieweralsosee "[ME] mixed" "help mixed_zh"}{...}
{viewerjumpto "Syntax" "estat group##syntax"}{...}
{viewerjumpto "Menu for estat" "estat group##menu_estat"}{...}
{viewerjumpto "Description" "estat group##description"}{...}
{viewerjumpto "Links to PDF documentation" "estat_group_zh##linkspdf"}{...}
{viewerjumpto "Example" "estat group##example"}
{help estat_group:English Version}
{hline}{...}
{p2colset 1 21 23 2}{...}
{p2col:{bf:[ME] estat group} {hline 2}}汇总嵌套组的组成{p_end}
{p2col:}({mansection ME estatgroup:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 14 2}
{cmd:estat} {opt gr:oup}


INCLUDE help menu_estat


{marker description}{...}
{title:描述}

{pstd}
{cmd:estat group} 报告模型每一层级的组数及每组的最小、平均和最大大小。模型的层级由数据中相应的组变量确定。由于组被视为嵌套，因此此摘要中的信息可能与您单独对每个组变量使用 {cmd:tabulate} 命令所获得的信息不同。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection ME estatgroupRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker example}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse productivity}{p_end}
{phang2}{cmd:. mixed gsp private emp hwy water other unemp || region: ||}
             {cmd:state:}{p_end}

{pstd}汇总嵌套组的组成{p_end}
{phang2}{cmd:. estat group}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <estat_group.sthlp>}