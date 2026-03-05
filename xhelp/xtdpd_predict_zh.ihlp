
{smcl}
{* *! version 1.2.0  02oct2014}{...}
{marker syntax_predict}{...}
{marker predict}{...}
{help xtdpd_predict:English Version}
{hline}
{title:预测的语法}

{p 8 16 2}{cmd:predict}
{dtype}
{newvar}
{ifin}
[{cmd:,} {opt xb} {opt e} {opt stdp} {opt di:fference}] 

包含帮助菜单_predict

{marker description_predict}{...}
{title:预测的描述}

{pstd}
{cmd:predict} 创建一个包含预测值的新变量，例如线性预测值。

{marker options_predict}{...}
{title:预测的选项}

{dlgtab:主要}

{phang}
{opt xb}，默认选项，计算线性预测。

{phang}
{opt e} 计算残差误差。

{phang}
{opt stdp} 计算预测的标准误差，可以看作是观察值协变量模式的预测期望值或均值的标准误差。预测的标准误差也称为拟合值的标准误差。{opt stdp} 不能与 {opt difference} 组合使用。

{phang}
{opt difference} 指定计算第一差分的统计值，而不是默认的水平值。