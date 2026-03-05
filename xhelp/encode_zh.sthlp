{smcl}
{* *! version 1.1.13  19oct2017}{...}
{viewerdialog encode "dialog encode"}{...}
{viewerdialog decode "dialog decode"}{...}
{vieweralsosee "[D] encode" "mansection D encode"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] compress" "help compress_zh"}{...}
{vieweralsosee "[D] destring" "help destring_zh"}{...}
{vieweralsosee "[D] generate" "help generate_zh"}{...}
{viewerjumpto "Syntax" "encode_zh##syntax"}{...}
{viewerjumpto "Menu" "encode_zh##menu"}{...}
{viewerjumpto "Description" "encode_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "encode_zh##linkspdf"}{...}
{viewerjumpto "Options for encode" "encode_zh##options_encode"}{...}
{viewerjumpto "Options for decode" "encode_zh##options_decode"}{...}
{viewerjumpto "Examples" "encode_zh##examples"}{...}
{viewerjumpto "Video example" "encode_zh##video"}
{help encode:English Version}
{hline}{...}
{p2colset 1 15 17 2}{...}
{p2col:{bf:[D] encode} {hline 2}}将字符串编码为数字，反之亦然{p_end}
{p2col:}({mansection D encode:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{phang}
字符串变量转为数字变量

{p 8 16 2}
{opt en:code} {varname} {ifin} {cmd:,} {opth g:enerate(newvar)}
[{opt l:abel}{cmd:(}{it:name}{cmd:)} {opt noe:xtend}]


{phang}
数字变量转为字符串变量

{p 8 16 2}
{opt dec:ode} {varname} {ifin} {cmd:,} {opth g:enerate(newvar)}
[{opt maxl:ength}{cmd:(}{it:#}{cmd:)}]


{marker menu}{...}
{title:菜单}

    {title:编码}

{phang2}
{bf:数据 > 创建或更改数据 > 其他变量转换命令}
    {bf:> 从字符串变量编码值标签}

    {title:解码}

{phang2}
{bf:数据 > 创建或更改数据 > 其他变量转换命令}
     {bf:> 从标记的数字变量解码字符串}


{marker description}{...}
{title:描述}

{pstd}
{cmd:encode} 创建一个名为 {newvar} 的新变量，该变量基于字符串变量 {varname}，创建、添加或根据需要使用值标签 {it:newvar} 或（如果指定） {it:name}。 如果 {it:varname} 包含仅作为字符串存储的数字，则不要使用 {cmd:encode}；相反，使用
{cmd:generate} {it:newvar} {cmd:=} {opt real(varname)} 或 {cmd:destring}；
请参见 {helpb real()} 或 {manhelp destring D}。

{pstd}
{cmd:decode} 基于“编码”的数字变量 {it:varname} 及其值标签，创建一个名为 {it:newvar} 的新字符串变量。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection D encodeQuickstart:快速入门}

        {mansection D encodeRemarksandexamples:备注和示例}

{pstd}
上述节不包含在本帮助文件中。


{marker options_encode}{...}
{title:编码选项}

{phang}
{opth generate(newvar)} 是必需项，指定要创建的变量的名称。

{phang}
{opt label(name)} 指定要创建或使用的值标签的名称，并在命名值标签已存在时添加。如果未指定 {opt label()}，则 {cmd:encode} 使用与新变量相同的名称作为标签名称。

{phang}
{opt noextend} 指定如果 {it:varname} 中存在不在 {opt label(name)} 中的值，则不对其进行编码。 默认情况下，任何不在 {opt label(name)} 中的值将添加到该标签中。


{marker options_decode}{...}
{title:解码选项}

{phang}
{opth generate(newvar)} 是必需项，指定要创建的变量的名称。

{phang}
{opt maxlength(#)} 指定要保留的值标签的字节数；{it:#} 必须在 1 和 32,000 之间。 默认值为 {cmd:maxlength(32000)}。


{marker examples}{...}
{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse hbp2}{p_end}
{phang2}{cmd:. describe sex}

{pstd}基于字符串变量 {cmd:sex} 创建数字变量 {cmd:gender} 并创建值标签 {cmd:gender}{p_end}
{phang2}{cmd:. encode sex, generate(gender)}

{pstd}列出 {cmd:sex} 和 {cmd:gender} 的值{p_end}
{phang2}{cmd:. list sex gender in 1/4}

{pstd}列出 {cmd:sex} 和 {cmd:gender} 的值，但显示 {cmd:gender} 的数值而不是标签{p_end}
{phang2}{cmd:. list sex gender in 1/4, nolabel}

{pstd}列出 {cmd:gender} 值标签的名称和内容{p_end}
{phang2}{cmd:. label list gender}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse hbp2, clear}{p_end}
{phang2}{cmd:. describe sex}

{pstd}基于字符串变量 {cmd:sex} 创建数字变量 {cmd:gender} 并创建值标签 {cmd:sexlbl}{p_end}
{phang2}{cmd:. encode sex, generate(gender) label(sexlbl)}

{pstd}描述 {cmd:gender} 变量{p_end}
{phang2}{cmd:. describe gender}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse hbp2, clear}{p_end}
{phang2}{cmd:. describe sex}

{pstd}创建值标签 {cmd:gender}{p_end}
{phang2}{cmd:. label define gender 1 "female" 2 "male"}

{pstd}将第二个观测值的 {cmd:sex} 的值更改为 {cmd:other}{p_end}
{phang2}{cmd:. replace sex = "other" in 2}

{pstd}基于字符串变量 {cmd:sex} 创建数字变量 {cmd:gender}，并根据需要添加到值标签 {cmd:gender}{p_end}
{phang2}{cmd:. encode sex, generate(gender)}

{pstd}列出 {cmd:gender} 值标签的名称和内容{p_end}
{phang2}{cmd:. label list gender}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse hbp3, clear}{p_end}
{phang2}{cmd:. describe female}{p_end}
{phang2}{cmd:. label list sexlbl}

{pstd}基于数字变量 {cmd:female} 创建字符串变量 {cmd:sex}{p_end}
{phang2}{cmd:. decode female, generate(sex)}

{pstd}描述变量 {cmd:sex}{p_end}
{phang2}{cmd:. describe sex}

{pstd}列出 {cmd:female} 和 {cmd:sex} 的值{p_end}
{phang2}{cmd:. list female sex in 1/4}

{pstd}列出 {cmd:female} 和 {cmd:sex} 的值，但显示 {cmd:female} 的数值而不是标签{p_end}
{phang2}{cmd:. list female sex in 1/4, nolabel}{p_end}
    {hline}


{marker video}{...}
{title:视频示例}

{phang2}{browse "https://www.youtube.com/watch?v=ZRWHjdIZyxo":如何将分类字符串变量转换为带标签的数字变量}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <encode.sthlp>}