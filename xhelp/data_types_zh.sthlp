{smcl}
{* *! version 1.2.3  11may2018}{...}
{vieweralsosee "[D] 数据类型" "mansection D Datatypes"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] 压缩" "help compress_zh"}{...}
{vieweralsosee "[D] 去字符串化" "help destring_zh"}{...}
{vieweralsosee "[D] 编码" "help encode_zh"}{...}
{vieweralsosee "[D] 格式" "help format_zh"}{...}
{vieweralsosee "[D] 重新转换" "help recast_zh"}{...}
{viewerjumpto "描述" "data types##description"}{...}
{viewerjumpto "PDF文档链接" "data_types_zh##linkspdf"}{...}
{viewerjumpto "备注" "data types##remarks"}
{help data_types:English Version}
{hline}{...}
{p2colset 1 19 21 2}{...}
{p2col:{bf:[D] 数据类型} {hline 2}}数据类型快速参考{p_end}
{p2col:}({mansection D Datatypes:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:描述}

{pstd}
此条目提供Stata允许的数据类型的快速参考。有关详细信息，请参阅 {findalias frdatatypes}。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection D DatatypesRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

           {space 46} 最接近
    存储{space 46}0但
    类型                 最小              最大    不是 0     字节
    {hline 70}
    {opt byte}                    -127                  100    +/-1          1
    {opt int}                  -32,767               32,740    +/-1          2
    {opt long}          -2,147,483,647        2,147,483,620    +/-1          4
    {opt float}   -1.70141173319*10^38  1.70141173319*10^38    +/-10^-38     4
    {opt double}  -8.9884656743*10^307  8.9884656743*10^307    +/-10^-323    8
    {hline 70}
    {opt float} 的精度为 3.795x10^-8。
    {opt double} 的精度为 1.414x10^-16。


    字符串
    存储{space 7}最大
    类型          长度         字节
    {hline 41}
    {cmd:str1}             1             1
    {cmd:str2}             2             2
     ...             .             .
     ...             .             .
     ...             .             .
    {cmd:str{ccl maxstrvarlen}}         {ccl maxstrvarlen}           {ccl maxstrvarlen}
    {cmd:strL}            {ccl maxstrlvarlen}     {ccl maxstrlvarlen}
    {hline 41}

{pstd}
数据的每个元素被称为数字类型或字符串类型。 "实数" 有时可以替代数字来使用。与每种数据类型相关的是存储类型。

{pstd}
数字以 {opt byte}、{opt int}、{opt long}、{opt float} 或 {opt double} 形式存储，默认类型为 {opt float}。 {opt byte}、{opt int} 和 {opt long} 被称为整数类型，因为它们只能保存整数。

{pstd}
字符串以 {opt str}{it:#} 形式存储，例如 {opt str1}、{opt str2}、{opt str3}、...、{cmd:str2045}，或以 {opt strL} 存储。 {opt str} 后的数字表示字符串的最大长度。 {opt str5} 可以保存单词 "male"，但无法保存单词 "female"，因为 "female" 有六个字符。 {opt strL} 可以保存任意长度的字符串，最多可达到 {ccl maxstrlvarlen} 个字符，甚至可以保存包含嵌入 {cmd:\0} 字符的二进制数据。

{pstd}
Stata 将数据保留在内存中，您应该尽可能节省地记录数据。如果您的字符串变量的最大长度为 6，存储为 {opt str20} 将浪费内存。同样，如果您有一个整数变量，存储为 {opt double} 也是浪费。

{title:数字存储类型的精度}

{pstd}
{opt float} 的精度约为 7 位数字；数字的大小并不重要。因此，1234567 可以完美地存储为 {opt float}，1234567e+20 也可以。然而，数字 123456789 将被舍入为 123456792。通常，这种舍入并没有影响。

{pstd}
如果您存储的是身份证号码，舍入可能会有影响。如果身份证号码是整数且不超过 9 位数字，则应将其存储为 {opt long}；否则，存储为 {opt double}。 {opt double} 的精度为 16 位数字。

{pstd}
Stata 以二进制形式存储数字，这对小于 1 的数字产生了第二个影响。 1/10 没有完美的二进制表示，就像 1/11 没有完美的十进制表示一样。在 {opt float} 中，0.1 被存储为 0.10000000149011612。请注意，与大于 1 的数字一样，这里也是有 7 位数字的精度。然而，Stata 在进行所有计算时使用双精度。如果您将 0.1 存储在名为 {cmd:x} 的 {opt float} 中，然后要求，例如，{cmd:list if x==.1}，则列表中将没有内容。您刚输入的 .1 被转换为双精度，具有 16 位数字的精度（0.100000000000000014...），而这个数字与以 {opt float} 精度存储的 0.1 从未相等。

{pstd}
一个解决方案是输入 {cmd:list if x==float(.1)}。 {helpb float()} 函数将其参数四舍五入到浮点精度。
另一个选择是将您的数据存储为 {opt double}，但这可能会浪费内存。 只有少数人拥有精度达到千分之一的 10 的第 7 次方的数据。例外包括银行，它们对数亿美元的金额保持精确到分的记录。 如果您处理的是这样的金融数据，请将您的金额以 {opt double} 存储。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <data_types.sthlp>}