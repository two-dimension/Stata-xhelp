{smcl}
{* *! version 1.6.3  01apr2019}{...}
{findalias asfrflavors}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "Stata/IC" "help stataic_zh"}{...}
{vieweralsosee "Stata/SE" "help statase_zh"}{...}
{vieweralsosee "Stata/MP" "help statamp_zh"}
{help flavors:English Version}
{hline}{...}
{title:标题}

{pstd}
{findalias frflavors}


{title:目录}

        {help flavors##platforms:5.1 平台}

        {help flavors##flavors:5.2 Stata/MP、Stata/SE 和 Stata/IC}
            {help flavors##version_own:5.2.1 确定您拥有哪个版本}
            {help flavors##version_installed:5.2.2 确定安装了哪个版本}

        {help flavors##limits:5.3 Stata/MP、SE 和 IC 的大小限制}

        {help flavors##speed:5.4 Stata/MP、SE 和 IC 的速度比较}

        {help flavors##comparison:5.5 Stata/MP、SE 和 IC 的功能比较}


{marker platforms}{...}
{title:5.1 平台}

{pstd}
Stata 可用于多种系统，包括

        Stata for Windows，64位 x86-64

        Stata for Mac，64位 x86-64

        Stata for Linux，64位 x86-64

{pstd}
您运行的 Stata 版本无关紧要——Stata 就是 Stata。您以相同的方式指令 Stata，Stata 产生的结果也相同，连随机数生成器也一致。文件也可以共享。在一台计算机上创建的数据集可以在任何其他计算机上使用，图形、程序或 Stata 使用或生成的任何文件也是如此。在平台之间移动文件完全只是复制它们而已；不需要翻译。

{pstd}
然而，有些计算机的速度比其他计算机快。有些计算机的内存比其他计算机的更多。内存更大且速度更快的计算机效果更好。

{pstd}
购买 Stata 后，您可以在上述任一平台上安装它。Stata 许可证并不锁定到单一操作系统。


{marker flavors}{...}
{title:5.2 Stata/MP、Stata/SE 和 Stata/IC}

{pstd}
Stata 有三种版本，或许说大小更为合适。版本按大小从大到小依次为 Stata/MP、Stata/SE 和 Stata/IC。

{pstd}
Stata/MP 是 Stata 的多处理器版本。它运行在多个 CPU 或多个内核上，数量从 2 到 64。Stata/MP 使用您指定的任何核心（甚至是一个），最多使用您许可的核心数量。Stata/MP 是 Stata 中速度最快的版本。即便如此，所有并行化的细节都在内部处理，您使用 Stata/MP 的方式与使用其他版本的 Stata 完全一致。您可以阅读 Stata/MP 的工作原理以及随着核心数量增加其速度如何提升，参见 Stata/MP 性能报告 
{browse "https://www.stata.com/statamp/report.pdf":https://www.stata.com/statamp/report.pdf}。

{pstd}
Stata/SE 类似于 Stata/MP，但仅适用于单个 CPU。Stata/SE 可以在多个 CPU 或多个核心计算机上运行，但它只使用其中一个 CPU 或核心。SE 代表特殊版。

{pstd}
除了速度是 Stata 中最快的版本外，Stata/MP 也是最大的。理论上，Stata/MP 允许最多 1,099,511,627,775 个观察值，但您可能首先会遇到内存耗尽的问题。使用 Stata/MP，您最多可以有 120,000 个变量。统计模型最多可以有 11,000 个变量。

{pstd}
Stata/SE 允许最多 2,147,583,647 个观察值，前提是您有足够的内存。您最多可以有 32,767 个变量，并且与 Stata/MP 一样，统计模型最多可以有 11,000 个变量。

{pstd}
Stata/IC 是标准版 Stata。根据内存情况，最多允许 2,147,583,647 个观察值和 2,048 个变量。统计模型最多可以有 800 个变量。


{marker version_own}{...}
    {title:5.2.1 确定您拥有哪个版本}

{pstd}
检查您的许可证和激活密钥。每份 Stata 附带的许可证和激活密钥包含您在安装过程中输入的代码。这决定您拥有哪个版本的 Stata 以及哪个平台。

{pstd}
如果您想要将一个版本升级为另一个版本，请联系我们或您的分销商。通常，您只需获取一个具有适当代码的升级许可证和激活密钥即可。所有版本的 Stata 都在同一 DVD 上。

{pstd}
如果您购买了一个版本的 Stata 并希望使用一个较低版本，您可以这样做。如果您在工作时有一台大型计算机，而在家中有一台较小的计算机，您可能会想这样做。但请记住，您只有一个许可证（或者您购买的许可证数量）。您可以合法且道德地在两台计算机上安装 Stata，然后使用其中一台，但不应该同时使用两台。


{marker version_installed}{...}
    {title:5.2.2 确定安装了哪个版本}

{pstd}
如果 Stata 已经安装，您可以通过像往常一样打开 Stata 并输入 {cmd:about} 来找出您使用的是哪个 Stata：

        . about

        Stata/IC {ccl stata_version} for Windows (64位 x86-64)
        出生于 {it:date}
        版权所有 (C) 1985-2019 StataCorp LLC

        总物理内存:     8388608 KB
        可用物理内存:  937932 KB

        10 用户 32 核心 Stata 网络永久许可证：
               序列号:  5015041234
                 许可给:  Alan R. Riley
                               StataCorp


{marker limits}{...}
{title:5.3 Stata/MP、SE 和 IC 的大小限制}

{pstd}
Stata/MP 允许更多变量和观察值、更长的宏以及比 Stata/SE 更长的命令行。Stata/SE 允许更多变量、更大模型、更长的宏以及比 Stata/IC 更长的命令行。更长的命令行和宏长度是由于允许的变量数量更多。更大的模型意味着 Stata/MP 和 Stata/SE 可以适应更多自变量的统计模型。有关 Stata/MP、Stata/SE 和 Stata/IC 的最大大小限制，请参见 {help limits_zh}。


{marker speed}{...}
{title:5.4 Stata/MP、SE 和 IC 的速度比较}

{pstd}
我们撰写了一个比较 Stata/MP 和 Stata/SE 性能的白皮书；请参阅 
{browse "https://www.stata.com/statamp/report.pdf"}。该白皮书包括逐命令的性能测量。

{pstd}
总结而言，在一台双核计算机上，Stata/MP 运行命令所需的时间为 Stata/SE 的 71%。这些数字是中位数；某些命令运行时间只有一半，而其他命令则没有任何加速。统计估计命令运行时间为 59%。所引用的数字是中位数。平均性能提升较高，因为执行时间较长的命令通常会获得更大的加速。

{pstd}
在四个核心上运行的 Stata/MP 的所有命令运行时间为 Stata/SE 的 50%（所有命令）和 35%（估计命令）。这两个数字都是中位数测量。

{pstd}
Stata/MP 支持最多 64 个核心。

{pstd}
Stata/IC 的速度比 Stata/SE 慢，但这种差异只在处理接近 Stata/IC 限制的数据集时才会显现。Stata/SE 的内存占用更大，并利用这些额外内存为更大的旁路表处理大型数据集。只有超过 Stata/IC 的限制时，较大表的真正好处才会显现。Stata/SE 是为处理大型数据集而设计的。

{pstd}
在所有情况下，差异都是技术性的和内部的。从用户的角度来看，Stata/MP、Stata/SE 和 Stata/IC 的工作方式相同。


{marker comparison}{...}
{title:5.5 Stata/MP、SE 和 IC 的功能比较}

{pstd}
所有平台上所有版本的 Stata 功能都是相同的。差异在于速度和限制。限制的差异如下：

                                  Stata/IC               Stata/SE 和 /MP
          参数  {c |}  默认    最小    最大  {c |}  默认    最小     最大
          {hline 11}{c +}{hline 25}{c +}{hline 28}
          {helpb maxvar}     {c |}    2,048  2,048  2,048  {c |}    5,000  2,048 120,000 (MP)
                     {c |}                         {c |}                  32,767 (SE)
                     {c |}                         {c |}
          {helpb processors} {c |}        1      1      1  {c |}        2      1      64 (MP)
                     {c |}                         {c |}        1      1       1 (SE)
          {hline 11}{c BT}{hline 25}{c BT}{hline 28}
          注：Stata/MP 的默认处理器数量为许可的最低处理器和可用处理器中的较小者。

{pstd}
Stata/MP 和 Stata/SE 的限制是可设置的。您可以通过输入 

        {cmd:. set maxvar} {it:#}
        {cmd:. set processors} {it:#}

暂时重置限制。

{pstd}
关于最后一点，Stata/MP 用户有时希望使用较少的处理器以便为其他应用程序保留一些空余。

{pstd}
如果要永久重置限制，请输入

        {cmd:. set maxvar} {it:#}{cmd:, permanently}

{pstd}
如果您使用 Stata/SE 或 Stata/MP，请参阅
{bf:{help statase_zh:help stata/se}}
或
{bf:{help statamp_zh:help stata/mp}}
以了解更多信息。

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <flavors.sthlp>}