
{smcl}
{* *! version 1.0.2  23may2011}{...}
{title:使用重复抽样获得的后验参数}

{help mi_boot_note:English Version}
{hline}
{pstd}
您指定了 {cmd:bootstrap} 选项，该选项通过观察数据的 bootstrap 样本来估计插补模型的参数。默认方法则是从它们的联合后验分布或从后验分布的正态近似中模拟参数。当正态近似不够准确时（{help mi_boot_note##R2004:Royston 2004，第 5.1 节}），特别是在小样本情况下，bootstrap 方法可能会优于默认方法。{cmd:bootstrap} 选项在处理分类数据插补中的完美预测时也可能会有用（{help mi_boot_note##WDR2010:White, Daniel, and Royston 2010}）。

{pstd}
有关 bootstrap 抽样的更多信息，请参见 {manhelp bsample R}。

{title:参考文献}

{marker R2004}{...}
{phang}
Royston, P. 2004. 
    {browse "http://www.stata-journal.com/sjpdf.html?articlenum=st0067":缺失值的多重插补。}
    {it:Stata Journal} 4: 227-241.
{p_end}

{marker WDR2010}{...}
{phang}
White, I. R., R. Daniel, and P. Royston. 2010.  避免因完美预测而导致的多重插补不完整分类数据的偏差。  
{it:Computational Statistics & Data Analysis} 54: 2267-2275.
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mi_boot_note.sthlp>}