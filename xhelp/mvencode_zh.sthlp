{smcl}
{* *! version 1.1.11  19oct2017}{...}
{viewerdialog mvencode "dialog mvencode"}{...}
{viewerdialog mvdecode "dialog mvdecode"}{...}
{vieweralsosee "[D] mvencode" "mansection D mvencode"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] generate" "help generate_zh"}{...}
{vieweralsosee "[D] recode" "help recode_zh"}{...}
{viewerjumpto "语法" "mvencode_zh##syntax"}{...}
{viewerjumpto "菜单" "mvencode_zh##menu"}{...}
{viewerjumpto "描述" "mvencode_zh##description"}{...}
{viewerjumpto "PDF文档链接" "mvencode_zh##linkspdf"}{...}
{viewerjumpto "选项" "mvencode_zh##options"}{...}
{viewerjumpto "示例" "mvencode_zh##examples"}{...}
{viewerjumpto "视频示例" "mvencode_zh##video"}
{help mvencode:English Version}
{hline}{...}
{p2colset 1 17 19 2}{...}
{p2col:{bf:[D] mvencode} {hline 2}}将缺失值转为数值，反之亦然{p_end}
{p2col:}({mansection D mvencode:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{phang}
将缺失值转换为数值

{p 8 18 2}
{cmd:mvencode} {varlist} {ifin}{cmd:,} {cmd:mv(}{it:#}|{it:mvc}{cmd:=}{it:#} [{bind:{cmd:\} {it:mvc}{cmd:=}{it:#}}...] 
[{bind:{cmd:\} {cmd:else=}{it:#}}]{cmd:)} [{opt o:verride}]


{phang}
将数值转换为缺失值

{p 8 18 2}
{cmd:mvdecode} {varlist} {ifin}{cmd:,} 
{cmd:mv(}{it:{help numlist_zh}} | {it:{help numlist_zh}}{cmd:=}{it:mvc} 
[{cmd:\} {it:{help numlist_zh}}{cmd:=}{it:mvc}...]{cmd:)}


{phang}
其中 {it:mvc} 是 {cmd:.}|{cmd:.a}|{cmd:.b}|...|{cmd:.z}


{marker menu}{...}
{title:菜单}

    {title:mvencode}

{phang2}
{bf:数据 > 创建或更改数据 > 其他变量转换命令}
     {bf:> 将缺失值转换为数值}
  
    {title:mvdecode}

{phang2}
{bf:数据 > 创建或更改数据 > 其他变量转换命令}
     {bf:> 将数值转换为缺失值}


{marker description}{...}
{title:描述}

{pstd}
{cmd:mvencode} 将指定 {varlist} 中的缺失值转换为数值。

{pstd}
{cmd:mvdecode} 将指定 {it:varlist} 中的 {help numlist_zh} 的出现转换为缺失值代码。

{pstd}
缺失值代码可以是 sysmiss {cmd:(.)} 以及扩展缺失值代码 {cmd:.a}, {cmd:.b}, {cmd:...}, {cmd:.z}。

{pstd}
在 {it:varlist} 中的字符串变量将被忽略。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection D mvencodeQuickstart:快速开始}

        {mansection D mvencodeRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在本帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主}

{phang}
{cmd:mv(}{it:#}|{it:mvc}{cmd:=}{it:#}
[{bind:{cmd:\} {it:mvc}{cmd:=}{it:#}}...] [{cmd:\} {opt else=}{it:#}]{cmd:)}
是必需的，指定缺失值要更改为的数值。

{pmore}
{opt mv(#)} 指定所有类型的缺失值更改为 {it:#}。

{pmore}
{opt mv(mvc=#)} 指定缺失值代码 {it:mvc} 的出现更改为 {it:#}。可以指定多个转换规则，用反斜杠 ({cmd:\}) 分隔。列表可以通过特定规则 {opt else=}{it:#} 结束，指定所有尚未转换的缺失值类型设置为 {it:#}。

{pmore}
示例: {cmd:mv(9)}, {cmd:mv(.=99\.a=98\.b=97)}, {cmd:mv(.=99\else=98)}

{phang}
{cmd:mv(}{it:{help numlist_zh}} | {it:numlist}{cmd:=}{it:mvc} [{cmd:\} {it:numlist}{cmd:=}{it:mvc}...]{cmd:)}
是必须的，指定要转换为缺失值的数值。

{pmore}
{cmd:mv(}{it:numlist}{cmd:=}{it:mvc}{cmd:)} 指定 {it:numlist} 中的值转换为缺失值代码 {it:mvc}。可以通过反斜杠 ({cmd:\}) 指定多个转换规则。有关 numlist 的语法，请参见 {help nlist_zh}。

{pmore}
示例: {cmd:mv(9)}, {cmd:mv(99=.\98=.a\97=.b)}, {cmd:mv(99=.\100/999=.a)}

{phang}
{opt override} 指定覆盖 {cmd:mvencode} 提供的保护。没有此选项，如果数据中任何数值已被使用，{cmd:mvencode} 将拒绝进行请求的更改。


{marker examples}{...}
{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. sysuse auto}

{pstd}将数据中的缺失值转换为999{p_end}
{phang2}{cmd:. mvencode _all, mv(999)}

{pstd}将999的值更改回缺失值{p_end}
{phang2}{cmd:. mvdecode _all, mv(999)}

{pstd}列出数据{p_end}
{phang2}{cmd:. list rep78 if rep78 == .}{p_end}

{pstd}在观测值3中将 {cmd:rep78} 设置为999{p_end}
{phang2}{cmd:. replace rep78 = 999 in 3}

{pstd}尝试将数据中的缺失值转换为999{p_end}
{phang2}{cmd:. mvencode _all, mv(999)}

{pstd}强制将数据中的缺失值转换为999{p_end}
{phang2}{cmd:. mvencode _all, mv(999) override}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. sysuse auto, clear}{p_end}

{pstd}列出数据{p_end}
{phang2}{cmd:. list rep78 foreign if rep78 == .}

{pstd}如果 {cmd:foreign} 为 {cmd:Domestic}，将 {cmd:rep78} 的缺失值转换为998；如果为 {cmd:Foreign}，则转换为999{p_end}
{phang2}{cmd:. mvencode rep78 if foreign == 0, mv(998)}{p_end}
{phang2}{cmd:. mvencode rep78 if foreign == 1, mv(999)}

{pstd}列出数据{p_end}
{phang2}{cmd:. list rep78 foreign if rep78 > 900}

{pstd}对于 {cmd:rep78}，将998转换为 {cmd:.} 和999转换为 {cmd:.a}{p_end}
{phang2}{cmd:. mvdecode rep78, mv(998=. \ 999=.a)}

{pstd}列出数据{p_end}
{phang2}{cmd:. list rep78 foreign if rep78 >= .}{p_end}
    {hline}
 

{marker video}{...}
{title:视频示例}

{phang2}{browse "https://www.youtube.com/watch?v=6HV2773-dVM":如何将缺失值代码转换为缺失值}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mvencode.sthlp>}