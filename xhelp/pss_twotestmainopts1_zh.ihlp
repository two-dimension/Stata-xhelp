
{help pss_twotestmainopts1:English Version}
{hline}
{* *! version 1.0.5  21mar2019}{...}
{p2coldent:* {opth a:lpha(numlist)}}显著性水平；默认为
   {cmd:alpha(0.05)}{p_end}
{p2coldent:* {opth p:ower(numlist)}}统计功效；默认为 {cmd:power(0.8)}{p_end}
{p2coldent:* {opth b:eta(numlist)}}第二类错误概率；默认为
   {cmd:beta(0.2)}{p_end}
{p2coldent:* {opth n(numlist)}}总样本量；计算功效或效应量所需{p_end}
{p2coldent:* {opth n1(numlist)}}对照组样本量{p_end}
{p2coldent:* {opth n2(numlist)}}实验组样本量{p_end}
{p2coldent:* {opth nrat:io(numlist)}}样本量比例，{cmd:N2/N1}；默认为
{cmd:nratio(1)}，意味着组大小相等{p_end}
{synopt: {cmd:compute(N1}|{cmd:N2)}}在给定 {cmd:N2} 的情况下求解 {cmd:N1} 或在给定 {cmd:N1} 的情况下求解 {cmd:N2}{p_end}