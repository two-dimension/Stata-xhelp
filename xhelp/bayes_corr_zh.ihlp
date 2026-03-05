
{help bayes_corr:English Version}
{hline}
{* *! version 1.0.0  12mar2015}{...}
{phang}
{opt corrlag(#)} 指定用于计算有效样本大小的最大自相关滞后。默认值是
min{c -(}500,{cmd:mcmcsize()}/2{c )-}。总自相关值计算为从 0 到 {cmd:corrlag()} 或自相关值降到小于 {cmd:corrtol()} 的索引的所有滞后 k 的自相关值之和。
选项 {cmd:corrlag()} 和 {cmd:batch()} 不可同时使用。

{phang}
{opt corrtol(#)} 指定用于计算有效样本大小的自相关容差。默认值是 {cmd:corrtol(0.01)}。对于给定的模型参数，如果滞后 k 的自相关绝对值小于 {cmd:corrtol()}，则会丢弃 kth 滞后以后的所有自相关滞后。选项 {cmd:corrtol()} 和 {cmd:batch()} 也不可同时使用。
{p_end}