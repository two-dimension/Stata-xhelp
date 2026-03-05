
{help xtdpd_estat:English Version}
{hline}
{* *! version 1.0.0  02oct2014}{...}
{marker syntax_estat}{...}
{marker estatabond}{marker estatsargan}{...}
{title:estat的语法}

{pstd}自相关测试

{p 8 16 2}
{cmd:estat} {cmdab:ab:ond} [{cmd:,} {cmdab:art:ests}{cmd:(}{it:#}{cmd:)}]


{pstd}过度识别限制的Sargan测试

{p 8 16 2}
{cmd:estat} {cmd:sargan}


包括帮助菜单_estat


{marker des_estat}{...}
{title:estat的描述}

{pstd}
{cmd:estat abond} 报告第一差分残差的 Arellano-Bond 自相关测试。

{pstd}
{cmd:estat sargan} 报告过度识别限制的 Sargan 测试。


{marker option_estat_abond}{...}
{title:estat abond的选项}

{phang}
{opt artests(#)} 指定要测试的自相关的最高阶数。默认情况下，报告在估计过程中计算的测试。如果 {opt artests(#)} 指定的阶数高于原始估计过程中计算的阶数，则模型将被重新拟合。仅在数据未更改的情况下，模型才能被重新拟合。
{p_end}