
{help bayesecmd_reportopts:English Version}
{hline}
{* *! version 1.0.1  12mar2017}{...}
{synopt :{opt clev:el(#)}}设置可信区间水平；默认值为 {cmd:clevel(95)}{p_end}
{synopt :{opt hpd}}显示 HPD 可信区间，而不是默认的等尾可信区间{p_end}
包含 help bayesmh_eform
{synopt :{opt batch(#)}}指定批量均值计算的块长度；默认值为 {cmd:batch(0)}{p_end}
{synopt :{cmdab:sav:ing(}{help filename_zh:{it:filename}}[{cmd:, replace}]{cmd:)}}将模拟结果保存到 {it:filename}{cmd:.dta}{p_end}
{synopt :{opt nomodelsumm:ary}}抑制模型摘要{p_end}
{synopt :[{cmd:no}]{opt dots}}抑制点或每 100 次迭代显示点，每 1,000 次迭代显示迭代数字；默认值为 {cmd:nodots}{p_end}
{synopt :{cmd:dots(}{it:#}[{cmd:,} {opt every(#)}]{cmd:)}}在模拟执行期间显示点 {p_end}
{synopt :[{cmd:no}]{opth show:(bayesmh##paramref:paramref)}}指定要从输出中排除或包含的模型参数{p_end}
{synopt :{opt notab:le}}抑制估计表{p_end}
{synopt :{opt nohead:er}}抑制输出头部{p_end}
{synopt :{opt title(string)}}在参数估计表上方显示 {it:string} 作为标题{p_end}
{synopt :{help bayesmh##display_options:{it:display_options}}}控制间距、线宽以及基线和空单元格{p_end}