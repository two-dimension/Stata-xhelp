{smcl}
{* *! version 1.0.15  15may2018}{...}
{viewerdialog mi "dialog mi"}{...}
{vieweralsosee "[MI] mi convert" "mansection MI miconvert"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MI] Intro" "help mi_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MI] Styles" "help mi_styles_zh"}{...}
{viewerjumpto "语法" "mi convert##syntax"}{...}
{viewerjumpto "菜单" "mi convert##menu"}{...}
{viewerjumpto "描述" "mi convert##description"}{...}
{viewerjumpto "PDF 文档链接" "mi_convert_zh##linkspdf"}{...}
{viewerjumpto "选项" "mi convert##options"}{...}
{viewerjumpto "备注" "mi convert##remarks"}
{help mi_convert:English Version}
{hline}{...}
{p2colset 1 20 22 2}{...}
{p2col:{bf:[MI] mi convert} {hline 2}}更改 mi 数据的样式{p_end}
{p2col:}({mansection MI miconvert:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{cmd:mi convert} {opt w:ide} [{cmd:,} {it:options}]

{p 8 12 2}
{cmd:mi convert} {opt  ml:ong} [{cmd:,} {it:options}]

{p 8 12 2}
{cmd:mi convert} {opt fl:ong} [{cmd:,} {it:options}]

{p 8 12 2}
{cmd:mi convert} {opt flongs:ep} {it:name} [{cmd:,} {it:options}]


{synoptset 15}{...}
{synopthdr}
{synoptline}
{synopt:{cmd:clear}}数据如果没有保存，可以进行转换{p_end}

{synopt:{cmdab:noup:date}}参见 {bf:{help mi_noupdate_option_zh:[MI] noupdate 选项}}{p_end}
{synoptline}
{p2colreset}{...}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 多重插补}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:mi} {cmd:convert} 将 {cmd:mi} 数据从一种样式转换为另一种样式。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection MI miconvertRemarksandexamples:备注及示例}

{pstd}
上述部分不包括在此帮助文件中。


{marker options}{...}
{title:选项}

{p 4 8 2}
{cmd:clear}
    表示即使数据自上次更改以来未保存到磁盘，也可以进行转换。

{p 4 8 2}
{cmd:noupdate}
    在某些情况下，将抑制此命令可能执行的自动 {cmd:mi} {cmd:update}； 
    参见 {bf:{help mi_noupdate_option_zh:[MI] noupdate 选项}}.


{marker remarks}{...}
{title:备注}

{p 4 4 2}
备注分为以下几部分：

	{help mi_convert##convenience:将 mi convert 作为便利工具使用}
	{help mi_convert##fromflongsep:从 flongsep 转换}
	{help mi_convert##toflongsep:转换为 flongsep}


{marker convenience}{...}
{title:将 mi convert 作为便利工具使用}

{p 4 4 2}
某些任务在一种样式下比在另一种样式下更容易。
{cmd:mi} {cmd:convert} 允许您切换到更方便的样式。
一个会话片段可能如下所示：

	. {cmd:mi convert wide}

	. {cmd:drop if sex=="male"}

	. {cmd:mi convert mlong, clear}

	. {cmd:replace age2 = age^2}

{p 4 4 2}
用户显然在利用他或她对 
{bf:{help mi_styles_zh:[MI] 样式}}的理解。  
以上的官方做法是：

	. {cmd:drop if sex=="male"}

	. {cmd:mi update}

	. {cmd:mi passive: replace age2 = age^2}

{p 4 4 2}
选择哪种方法并不重要。


{marker fromflongsep}{...}
{title:从 flongsep 转换}

{p 4 4 2}
如果您有 flongsep 数据，值得查明是否可以将其转换为其他样式。 
其他样式比 flongsep 更方便，而在其上运行 {cmd:mi} 命令速度更快。
如果在内存中有 flongsep 数据，请输入：

	. {cmd:mi convert mlong}

{p 4 4 2}
结果将是成功或内存不足错误。  

{p 4 4 2}
如果愿意， 
您可以大致估计所需的内存量，方法如下：

{p 8 12 2}
    1.  使用您的 flongsep 数据。 输入 {cmd:mi} {cmd:describe}。
        记下 {it:M}，即插补的数量，
        记下完整观测数量，我们称之为 {it:N}，
        以及不完整观测数量，我们称之为 {it:n}。

{p 8 12 2}
    2.  在仍然使用 flongsep 数据的情况下，输入 {cmd:memory}。
        记下在“已使用”列下报告的“数据”和“开销”之和。我们将总和称之为 {it:S}。

{p 8 12 2}
    3.  计算 {it:T} = {it:S} + {it:M}*{it:S}*({it:n}/{it:N})。
        {it:T} 是对您在 mlong 样式中 {cmd:mi} 数据会消耗的内存的近似值。
        在此基础上，我们需要添加一些以考虑 Stata 命令使用的额外内存以及您可能想要添加的变量或观测值。
        添加多少总是有争议的。对于大型数据集，添加 10% 或 5 MB，以较小者为准。

{p 4 4 2}
例如，您可能有：

		{it:M} =        30
		{it:N} =    10,000
		{it:n} =     1,500
		{it:S} = 8,040,000 = 8 MB 

{p 4 4 2}
因此我们会计算 {it:T} = 8 + 30*8*(1500/10000) = 44 MB，为了获得 48 或 49 MB ，我们会再加上 4 或 5 MB。


{marker toflongsep}{...}
{title:转换为 flongsep}

{p 4 4 2}
注意 {cmd:mi} {cmd:convert} 的语法用于转换为 flongsep 是：

	{cmd:mi convert flongsep} {it:name}

{p 4 4 2}
您必须指定一个名称，该名称将成为构成 flongsep 数据集合的各数据集名称的基础。
{it:m}=0 的数据将存储在 {it:name}{cmd:.dta} 中； 
{it:m}=1 的数据存储在 {cmd:_1_}{it:name}{cmd:.dta} 中； 
{it:m}=2 的数据存储在 {cmd:_2_}{it:name}{cmd:.dta} 中； 
依此类推。 文件将存储在当前目录中；
请参见 {cmd:pwd} 命令在 {bf:{help cd_zh:[D] cd}}。

{p 4 4 2}
如果您打算使用 flongsep 数据，请参见 
{it:{help mi_styles##advice_flongsep:使用 flongsep 的建议}}
在 {bf:{help mi_styles_zh:[MI] 样式}}中。
另请参见 
{bf:{help mi_copy_zh:[MI] mi copy}}
和 
{bf:{help mi_erase_zh:[MI] mi erase}}。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mi_convert.sthlp>}