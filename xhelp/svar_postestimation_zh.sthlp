{smcl}
{* *! version 1.1.11  19oct2017}{...}
{viewerdialog predict "dialog svar_p"}{...}
{vieweralsosee "[TS] var svar postestimation" "mansection TS varsvarpostestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TS] var svar" "help var svar"}{...}
{viewerjumpto "后验估计命令" "svar postestimation##description"}{...}
{viewerjumpto "PDF文档链接" "svar_postestimation_zh##linkspdf"}{...}
{viewerjumpto "预测" "svar postestimation##syntax_predict"}{...}
{viewerjumpto "示例" "svar postestimation##examples"}
{help svar_postestimation:English Version}
{hline}{...}
{p2colset 1 33 35 2}{...}
{p2col:{bf:[TS] var svar postestimation} {hline 2}}svar的后验估计工具{p_end}
{p2col:}({mansection TS varsvarpostestimation:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:后验估计命令}

{pstd}
在使用{opt svar}后，以下后验估计命令尤为重要：

{synoptset 17}{...}
{synopt:命令}描述{p_end}
{synoptline}
{synopt:{helpb fcast compute}}获取动态预测{p_end}
{synopt:{helpb fcast graph}}绘制从{opt fcast compute}获得的动态预测图{p_end}
{synopt:{help irf_zh}}生成和分析脉冲响应函数（IRF）和方差解释（FEVD）{p_end}
{synopt:{help vargranger_zh}}格兰杰因果关系检验{p_end}
{synopt:{help varlmar_zh}}残差的LM自相关检验{p_end}
{synopt:{help varnorm_zh}}检验残差的正态性{p_end}
{synopt:{help varsoc_zh}}滞后阶数选择标准{p_end}
{synopt:{help varstable_zh}}检查估计的稳定性条件{p_end}
{synopt:{help varwle_zh}}瓦尔德滞后排除统计量{p_end}
{synoptline}
{p2colreset}{...}

{pstd}
以下标准后验估计命令也可用： 

{synoptset 17}{...}
{synopt:命令}描述{p_end}
{synoptline}
INCLUDE help post_estatic
INCLUDE help post_estatsum
INCLUDE help post_estatvce
INCLUDE help post_estimates
INCLUDE help post_forecast
INCLUDE help post_lincom
INCLUDE help post_lrtest
INCLUDE help post_nlcom
{p2col :{helpb svar postestimation##predict:预测}}预测、残差、影响统计量和其他诊断测量{p_end}
INCLUDE help post_predictnl
INCLUDE help post_test
INCLUDE help post_testnl
{synoptline}
{p2colreset}{...}


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection TS varsvarpostestimationRemarksandexamples:备注和示例}

{pstd}
以上部分不包含在此帮助文件中。


{marker syntax_predict}{...}
{marker predict}{...}
{title:预测的语法}

{p 8 16 2}
{cmd:predict}
{dtype}
{newvar}
{ifin}
[{cmd:,}
{it:statistic}
{opt eq:uation(eqno|eqname)}]

{synoptset 17 tabbed}{...}
{synopthdr:statistic}
{synoptline}
{syntab:主要}
{synopt:{opt xb}}线性预测；默认值{p_end}
{synopt:{opt stdp}}线性预测的标准误差{p_end}
{synopt:{opt r:esiduals}}残差{p_end}
{synoptline}
{p2colreset}{...}
INCLUDE help esample


INCLUDE help menu_predict


{marker des_predict}{...}
{title:预测的描述}

{pstd}
{cmd:predict} 创建一个包含预测的新的变量，如线性预测和残差。


{marker options_predict}{...}
{title:预测的选项}

{dlgtab:主要}

{phang}
{opt xb}，默认情况下，计算指定方程的线性预测。

{phang}
{opt stdp} 计算指定方程的线性预测的标准误差。

{phang}
{opt residuals} 计算残差。

{phang}
{opt equation(eqno|eqname)} 指定引用的方程。

{pmore}
    {opt equation()} 与选项{opt xb}、{opt stdp}和{opt residuals}一起填入一个{it:eqno}或{it:eqname}。 {cmd:equation(#1})将表示计算第一个方程，{cmd:equation(#2)}表示第二个，以此类推。你也可以通过名称引用方程；因此，{cmd:equation(income)}将引用名称为income的方程，而{cmd:equation(hours)}将引用名称为hours的方程。

{pmore}
   如果你不指定{opt equation()}，结果就与指定{cmd:equation(#1)}相同。

{pstd}
有关在多方程命令后使用{opt predict}的更多信息，见{manhelp predict R}。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse lutkepohl2}{p_end}
{phang2}{cmd:. matrix A = (1,0,0\.,1,0\.,.,1)}{p_end}
{phang2}{cmd:. matrix B = (.,0,0\0,.,0\0,0,.)}

{pstd}短期刚好识别的SVAR模型{p_end}
{phang2}{cmd:. svar dln_inv dln_inc dln_consump, aeq(A) beq(B)}{p_end}

{pstd}在{cmd:svar}之后执行残差自相关的拉格朗日乘子检验{p_end}
{phang2}{cmd:. varlmar}

{pstd}在{cmd:svar}之后检验干扰项的正态性{p_end}
{phang2}{cmd:. varnorm}

{pstd}估计IRF和FEVD并保存为{cmd:order1}于{cmd:myirf1.irf}{p_end}
{phang2}{cmd:. irf create order1, set(myirf1)}

{pstd}创建正交脉冲响应函数的表{p_end}
{phang2}{cmd:. irf table oirf}

{pstd}计算线性预测{p_end}
{phang2}{cmd:. predict xb}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <svar_postestimation.sthlp>}