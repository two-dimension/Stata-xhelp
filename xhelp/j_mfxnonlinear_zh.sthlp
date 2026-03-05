{smcl}
{* *! version 1.0.4  11feb2011}{...}
{vieweralsosee "[R] mfx" "help mfx_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "FAQ: Methods for obtaining marginal effects" "browse http://www.stata.com/support/faqs/stat/mfx_dydx.html"}
{help j_mfxnonlinear:English Version}
{hline}{...}
{title:尝试非线性警告消息}

{pstd}
边际效应是一个导数。为了以数值方式找到导数，{cmd:mfx} 使用近似值 (f(x+h)-f(x))/h。

{pstd}
因此，{cmd:mfx} 必须找到一个适合的变化量 h，该变化量足够小，以便近似值准确，但又不能小到两个小数相除会不准确。{cmd:mfx} 通过选择一个初始 h，然后循环迭代，每次循环调整 h 的大小，直到找到合适的 h。

{pstd}
对于包含多个变量的模型，这一过程可能非常耗时，因此您可能想通过使用另一种方法来避免这种情况，我们称之为“线性方法”。该方法使用不同的公式集，这样只需要找到少数几个导数。所有剩余的导数可以在不迭代的情况下获得。

{pstd}
如果 {cmd:mfx} 在通过迭代计算少数几个导数时遇到问题，您可以随时使用普通的“非线性”方法。这将会更慢，但是由于这是不同的计算，因此可能不会遇到同样的问题。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <j_mfxnonlinear.sthlp>}