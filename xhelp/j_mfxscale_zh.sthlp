{smcl}
{* *! version 1.0.5  02feb2012}{...}
{vieweralsosee "[R] mfx" "help mfx_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "FAQ: Scaling and marginal effects" "browse http://www.stata.com/support/faqs/stat/mfx_scale.html"}{...}
{viewerjumpto "Rescaling warning message" "j_mfxscale_zh##warning"}{...}
{viewerjumpto "Examples" "j_mfxscale_zh##examples"}
{help j_mfxscale:English Version}
{hline}{...}
{marker warning}{...}
{title:重新缩放警告信息}

{pstd}
边际效应是导数。要找到导数，{cmd:mfx} 使用近似公式 (f(x+h)-f(x))/h。

{pstd}
因此，{cmd:mfx} 必须找到一个合适的变化量 h，该变化量要足够小以保证近似的准确性，但又不能小到两个小数相除时会导致不准确。

{pstd}
通常情况下，{cmd:mfx} 在获得边际效应时不会遇到问题，边际效应是预测函数相对于每个自变量 x 的导数。

{pstd}
为了计算边际效应的标准误差，{cmd:mfx} 使用增量法，并必须计算边际效应相对于模型中每个系数的导数。为此，{cmd:mfx} 寻找系数 b 的一个合适的小变化。当系数 b 的小变化导致边际效应的大变化时，{cmd:mfx} 就很难找到一个合适的变化量 b。这条警告信息是在 {cmd:mfx} 经过 50 次迭代寻找合适变化后发出的。

{pstd}
该消息显示了哪个变量出现了问题。重新缩放该变量意味着将该变量除以或乘以一个数字，然后再次运行估计命令，再运行 {cmd:mfx}。

{pstd}
例如，当你将一个变量除以 100 时，该变量的边际效应和标准误差都会被除以 100，这意味着我们得到了相同的检验统计量和 p 值。其他变量的边际效应和标准误差将保持不变；然而，{cmd:mfx} 在寻找合适的变化量 b 时可能会更成功。

{marker examples}{...}
{title:示例}

{phang}{cmd:. sysuse auto}{p_end}
{phang}{cmd:. replace mpg=mpg*100000000}{p_end}
{phang}{cmd:. gen mpg2=mpg*mpg}{p_end}
{phang}{cmd:. mlogit rep mpg mpg2 turn, nolog}{p_end}
{phang}{cmd:. mfx, predict(p outcome(1)) varlist(mpg)  tracelvl(3)}{p_end}
{phang}{cmd:. replace mpg=mpg/1000000}{p_end}
{phang}{cmd:. replace mpg2=mpg*mpg}{p_end}
{phang}{cmd:. mlogit rep mpg mpg2 turn, nolog}{p_end}
{phang}{cmd:. mfx, predict(p outcome(1)) varlist(mpg)  tracelvl(3)}{p_end}

{phang}{cmd:. webuse school}{p_end}
{phang}{cmd:. heckprobit private years logptax, select(vote= years loginc)}{p_end}
{phang}{cmd:. mfx, predict(xbsel) tracelvl(2)}{p_end}
{phang}{cmd:. mfx, predict(xbsel) tracelvl(3) varlist(years)}{p_end}
{phang}{cmd:. replace loginc=loginc/10}{p_end}
{phang}{cmd:. heckprobit private years logptax, select(vote= years loginc)}{p_end}
{phang}{cmd:. mfx, predict(xbsel) tracelvl(3) varlist(years)}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <j_mfxscale.sthlp>}