
{help f_ustrnormalize:English Version}
{hline}
{* *! version 1.0.2  12mar2015}{...}
    {cmd:ustrnormalize(}{it:s}{cmd:,}{it:norm}{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col:描述:}将 Unicode 字符串 {it:s} 规范化为由 {it:norm} 指定的五种规范化形式之一{p_end}

{p2col:}规范化形式包括 {bf:nfc}、{bf:nfd}、{bf:nfkc}、{bf:nfkd} 或 {bf:nfkcc}。对于 {it:norm} 的任何其他值，该函数将返回空字符串。Unicode 规范化消除了由于 Unicode 字符等效性造成的 Unicode 字符串差异。{bf:nfc} 指定 {bf:规范化形式 C}，将分解的 Unicode 代码点规范化为组合形式。{bf:nfd} 指定 {bf:规范化形式 D}，将组合的 Unicode 代码点规范化为分解形式。{bf:nfc} 和 {bf:nfd} 产生规范等价形式。{bf:nfkc} 和 {bf:nfkd} 类似于 {bf:nfc} 和 {bf:nfd}，但产生兼容等价形式。{bf:nfkcc} 指定带有大小写折叠的 {bf:nfkc}。这种规范化和大小写折叠实现了 {browse "http://www.unicode.org/reports/tr44/":Unicode 字符数据库}。{p_end}

{p2col:}在 Unicode 标准中，“i” ({bf:\u0069} 后跟分音符 {bf:\u0308}) 和组合字符 {bf:\u00ef} 都代表“i” 带有两个点，如“naïve”中所示。因此，代码点序列 {bf:\u0069\u0308} 和代码点 {bf:\u00ef} 被视为 Unicode 等价。根据 Unicode 标准，它们在 Unicode 字符串操作（如显示、比较和选择）中应被视为同一个字符。然而，Stata 不支持多个代码点字符；每个代码点被视为一个单独的 Unicode 字符。因此，{bf:\u0069\u0308} 在结果窗口显示为两个字符。{cmd:ustrnormalize()} 可以与 {bf:"nfc"} 一起使用，将 {bf:\u0069\u0308} 规范化为规范等价的组合代码点 {bf:\u00ef}。{p_end}

{p2col 5 22 26 2:}{cmd:ustrnormalize(ustrunescape("\u0069\u0308"), "nfc")} = {cmd:"ï"}{p_end}

{p2col:}分解形式 {bf:nfd} 可用于从基本字母中移除变音符号。首先，将 Unicode 字符串规范化为规范分解形式，然后调用 {help f_ustrto_zh:ustrto()}，使用模式 {bf:skip} 跳过所有非 ASCII 字符。{p_end}

{p2col:}另请参见 {help f_ustrfrom_zh:ustrfrom()}。

{p2col 5 22 26 2:}{cmd:ustrto(ustrnormalize("café", "nfd"), "ascii", 2)} = {cmd:"cafe"}{p_end}
{p2col: 域 {it:s}:}Unicode 字符串{p_end}
{p2col: 域 {it:norm}:}Unicode 字符串{p_end}
{p2col: 范围:}Unicode 字符串{p_end}
{p2colreset}{...}