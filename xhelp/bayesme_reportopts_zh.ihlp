
{help bayesme_reportopts:English Version}
{hline}
{* 类似于 bayesecmd_reportopts.ihlp *}{...}
{* *! 版本 1.0.0  2019年4月25日}{...}
包含帮助 bayes_clevel_hpd_short
包含帮助 bayesmh_eform
{synopt :{opt remargl}}计算对数边际似然{p_end}
{synopt :{opt batch(#)}}指定批量均值计算的块长度；默认值为 {cmd:batch(0)}{p_end}
{synopt :{cmdab:sav:ing(}{help filename_zh:{it:filename}}[{cmd:, replace}]{cmd:)}}将模拟结果保存到 {it:filename}{cmd:.dta}{p_end}
{synopt :{opt nomodelsumm:ary}}抑制模型摘要{p_end}
{synopt :{opt nomesumm:ary}}抑制多层结构摘要{p_end}
{synopt :[{cmd:no}]{opt dots}}抑制点的显示或每 100 次迭代显示点，并且每 1,000 次迭代显示迭代次数；默认值为 {cmd:dots}{p_end}
{synopt :{cmd:dots(}{it:#}[{cmd:,} {opt every(#)}]{cmd:)}}在模拟执行期间显示点{p_end}
{synopt :[{cmd:no}]{opth show:(bayesmh##paramref:paramref)}}指定要从输出中排除或包含的模型参数{p_end}
{synopt :{opt showre:ffects}[{cmd:(}{it:{help bayesian postestimation##bayesian_post_reref:reref}}{cmd:)}]}指定所有或部分随机效应参数包含在输出中{p_end}