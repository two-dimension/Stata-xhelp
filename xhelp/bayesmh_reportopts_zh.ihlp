
{help bayesmh_reportopts:English Version}
{hline}
{* *! version 1.0.2  04dec2018}{...}
{synopt :{opt clev:el(#)}}设置可信区间水平；默认值为 {cmd:clevel(95)}{p_end}
{synopt :{opt hpd}}显示 HPD 可信区间，而不是默认的双尾可信区间{p_end}
包含帮助 bayesmh_eform
{synopt :{opt batch(#)}}指定批次均值计算的区块长度；默认值为 {cmd:batch(0)}{p_end}
{synopt :{cmdab:sav:ing(}{help filename_zh:{it:filename}}{cmd:, replace)}}将模拟结果保存到 {it:filename}{cmd:.dta}{p_end}
{synopt :{opt nomodelsumm:ary}}抑制模型摘要{p_end}
{synopt :{opt noexpr:ession}}抑制模型摘要中的表达式输出{p_end}
{synopt :{opt chainsdetail}}显示每个链的详细模拟摘要{p_end}
{synopt :[{cmd:no}]{opt dots}}抑制点或每 100 次迭代显示点，每 1,000 次迭代显示迭代编号；默认值为 {cmd:nodots}{p_end}
{synopt :{cmd:dots(}{it:#}[{cmd:,} {opt every(#)}]{cmd:)}}在模拟执行时显示点 {p_end}
{synopt :[{cmd:no}]{opth show:(bayesmh##paramref:paramref)}}指定要从输出中排除或包含的模型参数{p_end}
{synopt :{cmdab:showre:ffects}[{cmd:(}{it:{help bayesian_postestimation##bayesian_post_reref:reref}}{cmd:)}]}指定所有或一部分随机效应参数包含在输出中{p_end}
{synopt :{opt notab:le}}抑制估计表{p_end}
{synopt :{opt nohead:er}}抑制输出标题{p_end}
{synopt :{opt title(string)}}在参数估计表上方显示 {it:string} 作为标题{p_end}
{synopt :{help bayesmh##display_options:{it:display_options}}}控制间距、行宽以及基本和空单元{p_end}