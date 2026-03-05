{smcl}
{* *! version 1.1.9  19oct2017}{...}
{viewerdialog "tssmooth exponential" "dialog tssmooth_exponential"}{...}
{vieweralsosee "[TS] tssmooth exponential" "mansection TS tssmoothexponential"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TS] tsset" "help tsset_zh"}{...}
{vieweralsosee "[TS] tssmooth" "help tssmooth_zh"}{...}
{viewerjumpto "语法" "tssmooth_exponential_zh##syntax"}{...}
{viewerjumpto "菜单" "tssmooth_exponential_zh##menu"}{...}
{viewerjumpto "描述" "tssmooth_exponential_zh##description"}{...}
{viewerjumpto "PDF文档链接" "tssmooth_exponential_zh##linkspdf"}{...}
{viewerjumpto "选项" "tssmooth_exponential_zh##options"}{...}
{viewerjumpto "示例" "tssmooth_exponential_zh##examples"}{...}
{viewerjumpto "存储结果" "tssmooth_exponential_zh##results"}
{help tssmooth_exponential:English Version}
{hline}{...}
{p2colset 1 30 32 2}{...}
{p2col:{bf:[TS] tssmooth exponential} {hline 2}}单指数平滑{p_end}
{p2col:}({mansection TS tssmoothexponential:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 29 2}
{cmd:tssmooth} {opt e:xponential} {dtype} {newvar} {cmd:=} {it:{help exp_zh}}
   {ifin} [{cmd:,} {it:options}]

{synoptset 15 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:主要}
{synopt :{cmd:replace}}如果已存在，则替换 {newvar}{p_end}
{synopt :{opt p:arms(#a)}}使用 {it:#a} 作为平滑参数{p_end}
{synopt :{opt sa:mp0(#)}}使用 {it:#} 个观察值来获得递归的初始值{p_end}
{synopt :{opt s0(#)}}使用 {it:#} 作为递归的初始值{p_end}
{synopt :{opt f:orecast(#)}}使用 {it:#} 个周期进行样本外预测{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}在使用 {cmd:tssmooth exponential} 之前，您必须 {cmd:tsset} 您的数据；请参见 {help tsset_zh:[TS] tsset}.{p_end}
{p 4 6 2}{it:exp} 可能包含时间序列操作符；请参见 {help tsvarlist_zh}.{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 时间序列 > 平滑器/单变量预测器 >}
    {bf:单指数平滑}


{marker description}{...}
{title:描述}

{pstd}
{cmd:tssmooth exponential} 对变数的趋势建模，该变数与前一个值的变化存在序列相关性。更准确地说，它对一个变量建模，该变量的首个差分遵循低阶移动平均过程。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection TS tssmoothexponentialQuickstart:快速开始}

        {mansection TS tssmoothexponentialRemarksandexamples:备注和示例}

        {mansection TS tssmoothexponentialMethodsandformulas:方法和公式}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主要}

{phang}
{opt replace} 如果已存在，替换 {newvar}。

{phang}
{opt parms(#a)} 指定用于指数平滑的参数 alpha；{bind:{cmd:0} < {it:#a} < {cmd:1}}。如果未指定 {opt parms(#a)}，则选择平滑参数以最小化样本内平方预测误差之和。

{phang}
{opt samp0(#)} 和 {opt s0(#)} 是互斥的方式来指定递归的初始值。

{pmore}
{opt samp0(#)} 指定初始值通过计算样本前 {it:#} 个观察值的平均值来获得。

{pmore}
{opt s0(#)} 指定要使用的初始值。

{pmore}
如果未指定任何选项，则默认使用样本前半部分计算的平均值。

{phang}
{opt forecast(#)} 给出样本外预测的观察值数量； {bind:{cmd:0} {ul:<} {it:#} {ul:<} {cmd:500}}。默认值为 {cmd:forecast(0)}，相当于不进行样本外预测。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse sales1}

{pstd}对 {cmd:sales} 执行单指数平滑{p_end}
{phang2}{cmd:. tssmooth exponential double sm2a=sales}

{pstd}与上述相同，但使用 0.4 作为平滑参数{p_end}
{phang2}{cmd:. tssmooth exponential double sm2b=sales, p(.4)}

{pstd}与上述相同，但使用 3 个周期进行样本外预测{p_end}
{phang2}{cmd:. tssmooth exponential double sm2c=sales, p(.4) forecast(3)}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:tssmooth exponential} 将以下内容存储在 {cmd:r()}：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:r(N)}}观察值数量{p_end}
{synopt:{cmd:r(alpha)}} alpha 平滑参数{p_end}
{synopt:{cmd:r(rss)}} 平方预测误差之和{p_end}
{synopt:{cmd:r(rmse)}} 均方根误差{p_end}
{synopt:{cmd:r(N_pre)}} 用于计算起始值的观察值数量{p_end}
{synopt:{cmd:r(s1_0)}} S_t 的初始值{p_end}

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 宏}{p_end}
{synopt:{cmd:r(method)}} 平滑方法{p_end}
{synopt:{cmd:r(exp)}} 指定的表达式{p_end}
{synopt:{cmd:r(timevar)}} 在 {cmd:tsset} 中指定的时间变量{p_end}
{synopt:{cmd:r(panelvar)}} 在 {cmd:tsset} 中指定的面板变量{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <tssmooth_exponential.sthlp>}