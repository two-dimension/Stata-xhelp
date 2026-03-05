{smcl}
{* *! version 1.1.7  19oct2017}{...}
{vieweralsosee "[D] hexdump" "mansection D hexdump"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] filefilter" "help filefilter_zh"}{...}
{vieweralsosee "[D] type" "help type_zh"}{...}
{viewerjumpto "Syntax" "hexdump_zh##syntax"}{...}
{viewerjumpto "Description" "hexdump_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "hexdump_zh##linkspdf"}{...}
{viewerjumpto "Options" "hexdump_zh##options"}{...}
{viewerjumpto "The ASCII table" "hexdump_zh##table"}{...}
{viewerjumpto "Examples" "hexdump_zh##examples"}{...}
{viewerjumpto "Stored results" "hexdump_zh##results"}
{help hexdump:English Version}
{hline}{...}
{p2colset 1 16 18 2}{...}
{p2col:{bf:[D] hexdump} {hline 2}}显示文件的十六进制报告{p_end}
{p2col:}({mansection D hexdump:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}

{marker syntax}{...}
{title:语法}

{p 8 16 2}
{cmd:hexdump}
{it:{help filename_zh}}
[{cmd:,} {it:options}]

{synoptset 12}{...}
{synopthdr}
{synoptline}
{synopt :{opt a:nalyze}}显示转储的报告而不是转储
本身{p_end}
{synopt :{opt tab:ulate}}在 {opt analyze} 报告中显示 ASCII 和扩展 ASCII 字符的完整表格{p_end}
{synopt :{opt noex:tended}}不显示可打印的扩展 ASCII 字符{p_end}
{synopt :{opt res:ults}}存储每个字符代码观察到的频率的结果; 编程选项{p_end}
{synopt :{opt f:rom(#)}}转储或分析文件的第一个字节; 默认是从第一个字节开始， {cmd:from(0)}{p_end}
{synopt :{opt t:o(#)}}转储或分析文件的最后一个字节; 默认是继续到文件末尾{p_end}
{synoptline}
{p2colreset}{...}

{marker description}{...}
{title:描述}

{pstd}
{opt hexdump} 显示文件的十六进制转储，或可选地，分析转储的报告。

{marker linkspdf}{...}
{title:链接到 PDF 文档}

        {mansection D hexdumpRemarksandexamples:备注和示例}

{pstd}
以上部分不包括在此帮助文件中。

{marker options}{...}
{title:选项}

{phang}
{opt analyze} 指定显示转储的报告，而不是转储本身。

{phang}
{opt tabulate} 指定在 {opt analyze} 报告中也显示 ASCII 和扩展 ASCII 字符的完整表格。

{phang}
{opt noextended} 指定 {opt hexdump} 不显示可打印的扩展 ASCII 字符，即在范围 161-254 或等效于 0xa1-0xfe 的字符。 （{opt hexdump} 不显示字符 128-160 和 255。）

{phang}
{opt results} 是为程序员准备的。它指定，除了其他存储的结果外， {opt hexdump} 存储 {cmd:r(c0)}, {cmd:r(c1)}, ...,
{cmd:r(c255)}，其中包含每个字符代码观察到的频率。

{phang}
{opt from(#)} 指定要转储或分析的文件的第一个字节。默认是从文件的第一个字节开始，{cmd:from(0)}。

{phang}
{opt to(#)} 指定要转储或分析的文件的最后一个字节。默认是继续到文件末尾。

{marker table}{...}
{title:ASCII 表}

{center:{c TLC}{hline 11}{c TT}{hline 34}{c TT}{hline 24}{c TRC}}
{center:{c |}           {c |}                 我们    也         {c |}                        {c |}}
{center:{c |}           {c |}               写入  书写       {c |}                        {c |}}
{center:{c |} 类别     {c |} 十进制  十六进制  作为     作为      {c |} 描述                {c |}}
{center:{c LT}{hline 11}{c +}{hline 34}{c +}{hline 24}{c RT}}
{center:{c |} 控制    {c |}   000     00    \0     NUL       {c |} 空                   {c |}}
{center:{c |} 代码    {c |}   001     01    ^A     SOH       {c |} 开始标题            {c |}}
{center:{c |}           {c |}   002     02    ^B     STX       {c |} 开始文本            {c |}}
{center:{c |}           {c |}   003     03    ^C     ETX       {c |} 结束文本            {c |}}
{center:{c |}           {c |}   004     04    ^D     EOT       {c |} 结束传输          {c |}}
{center:{c |}           {c |}   005     05    ^E     ENQ       {c |} 查询                {c |}}
{center:{c |}           {c |}   006     06    ^F     ACK       {c |} 确认                {c |}}
{center:{c |}           {c |}   007     07    ^G     BEL       {c |} 响铃                {c |}}
{center:{c |}           {c |}   008     08    ^H     BS        {c |} 退格                {c |}}
{center:{c |}           {c |}   009     09    \t     HT  ^I    {c |} 水平制表          {c |}}
{center:{c |}           {c |}   010     0a    \n     LF  ^J    {c |} 行进，换行        {c |}}
{center:{c |}           {c |}   011     0b    ^K     VT        {c |} 垂直制表          {c |}}
{center:{c |}           {c |}   012     0c    ^L     FF        {c |} 换页              {c |}}
{center:{c |}           {c |}   013     0d    \r     CR  ^M    {c |} 回车              {c |}}
{center:{c |}           {c |}   014     0e    ^N     SO        {c |} 移出              {c |}}
{center:{c |}           {c |}   015     0f    ^O     SI        {c |} 移入              {c |}}
{center:{c |}           {c |}   016     10    ^P     DLE       {c |} 数据链路转义     {c |}}
{center:{c |}           {c |}   017     11    ^Q     DC1  XON  {c |} 设备控制 1       {c |}}
{center:{c |}           {c |}   018     12    ^R     DC2       {c |} 设备控制 2       {c |}}
{center:{c |}           {c |}   019     13    ^S     DC3  XOFF {c |} 设备控制 3       {c |}}
{center:{c |}           {c |}   020     14    ^T     DC4       {c |} 设备控制 4       {c |}}
{center:{c |}           {c |}   021     15    ^U     NAK       {c |} 否定确认        {c |}}
{center:{c |}           {c |}   022     16    ^V     SYN       {c |} 同步闲置        {c |}}
{center:{c |}           {c |}   023     17    ^W     ETB       {c |} 结束传输块      {c |}}
{center:{c |}           {c |}   024     18    ^X     CAN       {c |} 取消              {c |}}
{center:{c |}           {c |}   025     19    ^Y     EM        {c |} 媒介结束          {c |}}
{center:{c |}           {c |}   026     1a    ^Z     SUB       {c |} 替代              {c |}}
{center:{c |}           {c |}   027     1b    Esc    ESC  ^[   {c |} 转义              {c |}}
{center:{c |}           {c |}   028     1c    28     FS   ^\   {c |} 文件分隔符      {c |}}
{center:{c |}           {c |}   029     1d    29     GS   ^]   {c |} 组分隔符        {c |}}
{center:{c |}           {c |}   030     1e    30     RS   ^^   {c |} 记录分隔符      {c |}}
{center:{c |}           {c |}   031     1f    31     US   ^_   {c |} 单位分隔符      {c |}}
{center:{c LT}{hline 11}{c +}{hline 34}{c +}{hline 24}{c RT}}
{center:{c |} ASCII     {c |}   032     20    blank  SP        {c |} 空格              {c |}}
{center:{c |} 可打印   {c |}   033     21    !                {c |} 感叹号            {c |}}
{center:{c |}           {c |}   034     22    "                {c |} 引号              {c |}}
{center:{c |}           {c |}   035     23    #                {c |} 号码符号          {c |}}
{center:{c |}           {c |}   036     24    $                {c |} 美元符号          {c |}}
{center:{c |}           {c |}   037     25    %                {c |} 百分号            {c |}}
{center:{c |}           {c |}   038     26    &                {c |} 和                 {c |}}
{center:{c |}           {c |}   039     27    '                {c |} 省略号            {c |}}
{center:{c |}           {c |}   040     28    (                {c |} 左括号            {c |}}
{center:{c |}           {c |}   041     29    )                {c |} 右括号            {c |}}
{center:{c |}           {c |}   042     2a    )                {c |} 右括号            {c |}}
{center:{c |}           {c |}   043     2b    +                {c |} 加号              {c |}}
{center:{c |}           {c |}   044     2c    ,                {c |} 逗号              {c |}}
{center:{c |}           {c |}   045     2d    -                {c |} 连字符            {c |}}
{center:{c BLC}{hline 11}{c BT}{hline 34}{c BT}{hline 24}{c BRC}}

{marker examples}{...}
{title:示例}

{phang}{cmd:. hexdump myfile.raw}{p_end}

{phang}{cmd:. hexdump myfile.raw, analyze}{p_end}

{marker results}{...}
{title:存储结果}

{pstd}
{cmd:hexdump, analyze} 和 {cmd:hexdump, results} 在 {cmd:r()} 中存储以下内容：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:r(Windows)}}{cmd:\r\n}的数量{p_end}
{synopt:{cmd:r(Mac)}}单独的 {cmd:\r}的数量{p_end}
{synopt:{cmd:r(Unix)}}单独的 {cmd:\n}的数量{p_end}
{synopt:{cmd:r(blank)}}空白的数量{p_end}
{synopt:{cmd:r(tab)}}制表符的数量{p_end}
{synopt:{cmd:r(comma)}}逗号 (,) 字符的数量{p_end}
{synopt:{cmd:r(ctl)}}二进制 0 的数量; A-Z，排除 {cmd:\r}、 {cmd:\n}、 {cmd:\t}; DELs; 和 128-159、255{p_end}
{synopt:{cmd:r(uc)}} A-Z 的数量{p_end}
{synopt:{cmd:r(lc)}} a-z 的数量{p_end}
{synopt:{cmd:r(digit)}} 0-9 的数量{p_end}
{synopt:{cmd:r(special)}}可打印特殊字符的数量 (!@#, 等){p_end}
{synopt:{cmd:r(extended)}}可打印扩展字符的数量 (160-254){p_end}
{synopt:{cmd:r(filesize)}}字符的数量{p_end}
{synopt:{cmd:r(lmin)}}最小行长度{p_end}
{synopt:{cmd:r(lmax)}}最大行长度{p_end}
{synopt:{cmd:r(lnum)}}行数{p_end}
{synopt:{cmd:r(eoleof)}}如果在 EOF 处有 EOL，值为 1，否则值为 0{p_end}
{synopt:{cmd:r(l1)}}第一行的长度{p_end}
{synopt:{cmd:r(l2)}}第二行的长度{p_end}
{synopt:{cmd:r(l3)}}第三行的长度{p_end}
{synopt:{cmd:r(l4)}}第四行的长度{p_end}
{synopt:{cmd:r(l5)}}第五行的长度{p_end}
{synopt:{cmd:r(c0)}}二进制 0 的数量 ({cmd:results} 仅限){p_end}
{synopt:{cmd:r(c1)}}二进制 1 的数量 ({cmd:^A}) ({cmd:results} 仅限){p_end}
{synopt:{cmd:r(c2)}}二进制 2 的数量 ({cmd:^B}) ({cmd:results} 仅限){p_end}
{synopt:...}...{p_end}
{synopt:{cmd:r(c255)}}二进制 255 的数量 ({cmd:results} 仅限){p_end}

{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:r(format)}}{cmd:ASCII}、 {cmd:EXTENDED ASCII} 或 {cmd:BINARY}{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <hexdump.sthlp>}