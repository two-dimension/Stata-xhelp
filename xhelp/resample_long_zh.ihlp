
{help resample_long:English Version}
{hline}
{* *! version 1.0.0  22jun2019}{...}
{phang}
{cmd:resample}[{cmd:(}{it:#}{cmd:)}] 指定了样本拆分的重复次数，并对结果进行平均。这减少了样本拆分随机性对估计系数的影响。不指定 {cmd:resample} 或 {opt resample(#)} 相当于指定 {cmd:resample(1)}。换句话说，默认情况下不进行重抽样。单独指定 {cmd:resample} 相当于指定 {cmd:resample(10)}。也就是说，样本拆分会重复进行 10 次。在每次样本拆分中，都计算了 lasso。因此，当未指定此选项时，lasso 会重复 {opt xfolds(#)} 次。但是，当指定了 {opt resample(#)} 时，lasso 会重复 {opt xfolds(#)} x {opt resample(#)} 次。因此，虽然我们建议使用 {cmd:resample} 来获取最终结果，但请注意，这可能是一个非常耗时的过程。