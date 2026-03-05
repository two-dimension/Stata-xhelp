{smcl}
{* *! version 1.0.2  21jan2016}{...}
{vieweralsosee "之前记录的" "help prdocumented_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] 查询" "help query_zh"}{...}
{viewerjumpto "语法" "charset_zh##syntax"}{...}
{viewerjumpto "描述" "charset_zh##description"}{...}
{viewerjumpto "选项" "charset_zh##option"}{...}
{viewerjumpto "备注" "charset_zh##remarks"}
{help charset:English Version}
{hline}{...}
{pstd}
{cmd:set charset} 仍然可以使用，但从 Stata 14 开始，它不再是 Stata 的官方部分。这是原始帮助文件，我们将不再更新，因此某些链接可能不再有效。

{pstd}
请参见 {help unicode_zh} 以获取更新的命令。


{title:标题}

{phang}
设置 Stata 用于 ASCII 文本的字符集（仅限 Mac）


{marker syntax}{...}
{title:语法}

{p 8 22 2}
	{cmd:set charset} {c -(} {cmd:mac} | {cmd:latin1} {c )-}
	[{cmd:,} {cmdab:permanently}]


{marker description}{...}
{title:描述}

{pstd}
{cmd:set charset} 设置 Stata 在 Mac 上用于渲染 ASCII 文本的字符集。由于自然语言中的字符数量远远超过 ASCII 中可打印字符代码的数量，字符集允许在 ASCII 中表示更多字符，以适应不同语言。Windows 和 Unix 使用 ISO-8859-1 (Latin1) 编码，可以通过输入 {cmd:set charset latin1} 来设置。Mac 使用 Mac OS Roman 编码，可以通过输入 {cmd:set charset mac} 来设置。

{pstd}
输入 {cmd: set charset} 而不带参数将显示当前设置。

{pstd}
Mac 的 {cmd:charset} 默认值为 {cmd:mac}。


{marker option}{...}
{title:选项}

{phang}
{cmd:permanently} 指定除了立即更改外，还要记住该设置并使其成为您启动 Stata 时的默认设置。
{p_end}


{marker remarks}{...}
{title:备注}

{pstd}
更改字符集的目的是在使用与数据创建时不同的字符集的平台上显示包含重音字符的数据（即，在 Mac 上显示在 Windows 中创建的数据）。 确定使用哪个字符集对文本进行正确解释是必要的。

{pstd}
例如，当您使用 {cmd:{c -(}char{c )-}} 指令显示 ASCII 字符时，{cmd:{c -(}c e'{c )-}} 将无论 {cmd:charset} 设置如何都呈现 {c e'} 字符。

{center:{cmd:{c -(}c e'{c )-}}      {c e'} (所有平台)                  }

{pstd}
然而，ASCII 字符代码 {cmd:{c -(}c 0xe9{c )-}} 在 Latin1 编码中等同于 
{cmd:{c -(}c e'{c )-}}，而 ASCII 字符代码 {cmd:{c -(}c 0x8e{c )-}} 在 Mac Roman 编码中等同于 
{cmd:{c -(}c e'{c )-}}。
当显示 ASCII 字符代码 {cmd:{c -(}c 0xe9{c )-}} 时，SMCL 将根据平台和 {cmd:charset} 设置呈现不同的字符。

{center:{cmd:{c -(}c 0xe9{c )-}}    {c e'} (Windows 和 Unix)               }
{center:{cmd:{c -(}c 0x8e{c )-}}    {c e'} (Mac且 {cmd:charset} 设置为 {cmd:mac})   }
{center:{cmd:{c -(}c 0xe9{c )-}}    {c E'g} (Mac且 {cmd:charset} 设置为 {cmd:mac})   }

{pstd}
在 Mac 上将 {cmd:charset} 设置为 {cmd:latin1} 将呈现 ASCII 字符代码 {cmd:{c -(}c 0xe9{c )-}}，与其在 Windows 和 Unix 上的外观保持一致。

{center:{cmd:{c -(}c 0xe9{c )-}}    {c e'} (Mac且 {cmd:charset} 设置为 {cmd:latin1})}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <charset.sthlp>}