
{help bayesecmd_reportopts_special:English Version}
{hline}
{* 同样适用于 bayesecmd_reportopts.ihlp，但包含 clevel() 和 hpd *}{...}
{* 在单独的 bayes_estcmd 帮助文件中，以便包含额外选项 *}{...}
{* *! 版本 1.0.1  2018年9月5日 *}{...}
包含帮助 bayesmh_eform
{synopt :{opt batch(#)}}指定批均值计算的区块长度；默认值为 {cmd:batch(0)}{p_end}
{synopt :{cmdab:sav:ing(}{help filename_zh:{it:filename}}[{cmd:, replace}]{cmd:)}}保存
仿真结果到 {it:filename}{cmd:.dta}{p_end}
{synopt :{opt nomodelsumm:ary}}抑制模型摘要{p_end}
{synopt :[{cmd:no}]{opt dots}}抑制点或每 100 次迭代显示点，以及每 1,000 次迭代显示迭代号码；默认为
{cmd:nodots}{p_end}
{synopt :{cmd:dots(}{it:#}[{cmd:,} {opt every(#)}]{cmd:)}}在执行仿真时显示点{p_end}
{synopt :[{cmd:no}]{opth show:(bayesmh##paramref:paramref)}}指定要排除或包含在输出中的模型参数{p_end}
{synopt :{opt notab:le}}抑制估计表{p_end}
{synopt :{opt nohead:er}}抑制输出头{p_end}
{synopt :{opt title(string)}}在参数估计表上方显示 {it:string} 作为标题{p_end}
{synopt :{help bayesmh##display_options:{it:display_options}}}控制间距、行宽以及基础和空单元{p_end}