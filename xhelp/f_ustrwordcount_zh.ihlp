
{help f_ustrwordcount:English Version}
{hline}
{* *! version 1.0.0  25mar2015}{...}
    {cmd:ustrwordcount(}{it:s}[{cmd:,}{it:loc}]{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述：}Unicode 字符串 {it:s} 中非空 Unicode 单词的数量{p_end}

{p2col:}空的 Unicode 单词是仅由 Unicode 空白字符组成的 Unicode 单词。如果未指定 {it:loc}，则使用 {mansection U 12.4.2.4LocalesinUnicode:默认区域}。Unicode 单词不同于由 {help f_word_zh:word()} 函数生成的 Stata 单词。Stata 单词是以空格分隔的标记。Unicode 单词是基于一组 {browse "http://www.unicode.org/reports/tr29/#Word_Boundaries":单词边界规则} 或某些语言（如中文、日文和泰文）的字典的语言单位。该函数在发生错误时可能返回负数。{p_end}

{p2col:}{cmd:ustrwordcount("Parlez-vous français", "fr")} = {cmd:4}{p_end}
{p2col: 域 {it:s}：}Unicode 字符串{p_end}
{p2col: 域 {it:loc}：}Unicode 字符串{p_end}
{p2col: 范围：}整数{p_end}
{p2colreset}{...}