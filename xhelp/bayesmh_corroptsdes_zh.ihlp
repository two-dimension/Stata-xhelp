
{help bayesmh_corroptsdes:English Version}
{hline}
{* *! version 1.0.0  10jan2017}{...}
{phang}
{opt corrlag(#)} 指定用于计算有效样本大小的最大自相关滞后。默认值为
min{500,{cmd:mcmcsize()}/2}。
总自相关被计算为从 0 到 {opt corrlag()} 或自相关值小于 {opt corrtol()} 的索引处的所有滞后 k 自相关值的总和（如果后者小于 {opt corrlag()}）。
包含帮助 bayesmh_corrlagbatch

{phang}
{opt corrtol(#)} 指定用于计算有效样本大小的自相关容忍度。默认值为 {cmd:corrtol(0.01)}。对于给定的模型参数，如果滞后 k 自相关的绝对值小于 {opt corrtol()}，则会丢弃 k 次滞后后的所有自相关滞后。
包含帮助 bayesmh_corrtolbatch