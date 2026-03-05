
{help ci_opt:English Version}
{hline}
{* *! version 1.0.1  15oct2015}{...}
{phang}
{opt level(#)} 指定置信区间的置信水平，单位为百分比。默认值为 {cmd:level(95)} 或通过 {helpb set level} 设置。

{phang}
{opt separator(#)} 指定在输出中应插入分隔线的频率。默认值为 {cmd:separator(5)}，意味着每五个变量后绘制一条线。 {cmd:separator(10)} 则会在每十个变量后绘制此线。 {cmd:separator(0)} 则抑制分隔线的绘制。

{phang}
{opt total} 与 {opt by} 前缀一起使用。它请求在为每个组输出的同时，还输出所有组的合并结果。
{p_end}