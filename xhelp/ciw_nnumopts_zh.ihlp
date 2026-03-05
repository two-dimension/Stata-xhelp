
{help ciw_nnumopts:English Version}
{hline}
{* *! version 1.0.0  27feb2019}{...}
{p2coldent:* {opth n(numlist)}}总样本量；计算置信区间宽度和置信区间宽度的概率所必需的{p_end}
{p2coldent:* {opth n1(numlist)}}对照组的样本量{p_end}
{p2coldent:* {opth n2(numlist)}}实验组的样本量{p_end}
{p2coldent:* {opth nrat:io(numlist)}}样本量比，{cmd:N2/N1}；默认值为 {cmd:nratio(1)}，意味着组大小相等{p_end}
{synopt :{cmd:compute(N1}|{cmd:N2)}}根据 {cmd:N2} 解算 {cmd:N1} 或根据 {cmd:N1} 解算 {cmd:N2}{p_end}