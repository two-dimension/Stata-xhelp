
{help bayesmh_simopts:English Version}
{hline}
{* *! version 1.0.1  04dec2018}{...}
{synopt :{opt nchains(#)}}链的数量；默认情况下模拟一个链{p_end}
{synopt :{opt mcmcs:ize(#)}}MCMC样本大小；默认值为
{cmd:mcmcsize(10000)}{p_end}
{synopt :{opt burn:in(#)}}烧入期；默认值为 {cmd:burnin(2500)}{p_end}
{synopt :{opt thin:ning(#)}}稀疏间隔；默认值为
{cmd:thinning(1)}{p_end}
{synopt :{opt rseed(#)}}随机数种子{p_end}
{synopt :{opth excl:ude(bayesmh##paramref:paramref)}}指定要从模拟结果中排除的模型参数{p_end}