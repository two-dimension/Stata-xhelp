{smcl}
{* *! version 1.1.9  19oct2017}{...}
{viewerdialog "tssmooth dexponential" "dialog tssmooth_dexponential"}{...}
{vieweralsosee "[TS] tssmooth dexponential" "mansection TS tssmoothdexponential"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TS] tsset" "help tsset_zh"}{...}
{vieweralsosee "[TS] tssmooth" "help tssmooth_zh"}{...}
{viewerjumpto "Syntax" "tssmooth_dexponential_zh##syntax"}{...}
{viewerjumpto "Menu" "tssmooth_dexponential_zh##menu"}{...}
{viewerjumpto "Description" "tssmooth_dexponential_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "tssmooth_dexponential_zh##linkspdf"}{...}
{viewerjumpto "Options" "tssmooth_dexponential_zh##options"}{...}
{viewerjumpto "Examples" "tssmooth_dexponential_zh##examples"}{...}
{viewerjumpto "Stored results" "tssmooth_dexponential_zh##results"}
{help tssmooth_dexponential:English Version}
{hline}{...}
{p2colset 1 31 33 2}{...}
{p2col:{bf:[TS] tssmooth dexponential} {hline 2}}双指数平滑{p_end}
{p2col:}({mansection TS tssmoothdexponential:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 20 2}
{cmd:tssmooth} {opt d:exponential} {dtype} {newvar} {cmd:=}
   {it:{help exp_zh}} {ifin} [{cmd:,} 
   {it:options}]

{synoptset 15 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:主}
{synopt :{opt replace}}如果 {newvar} 已经存在则替换它{p_end}
{synopt :{opt p:arms(#a)}}使用 {it:#a} 作为平滑参数{p_end}
{synopt :{opt sa:mp0(#)}}使用 {it:#} 个观测值来获取递归的初始值{p_end}
{synopt :{opt s0(#1 #2)}}使用 {it:#1} 和 {it:#2} 作为递归的初始值{p_end}
{synopt :{opt f:orecast(#)}}用于样外预测的 {it:#} 个周期{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}您必须在使用 {cmd:tssmooth dexponential} 之前 {cmd:tsset} 您的数据；请参阅 {help tsset_zh:[TS] tsset}.{p_end}
{p 4 6 2}{it:exp} 可以包含时间序列操作符；请参阅 {help tsvarlist_zh}。


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 时间序列 > 平滑器/单变量预测器 >}
     {bf:双指数平滑}


{marker description}{...}
{title:描述}

{pstd}
{cmd:tssmooth dexponential} 建模一个变量的趋势，该变量的前值之间的差异是序列相关的。 更准确地说，它建模一个变量的二阶差分遵循低阶移动平均过程。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection TS tssmoothdexponentialQuickstart:快速开始}

        {mansection TS tssmoothdexponentialRemarksandexamples:备注和示例}

        {mansection TS tssmoothdexponentialMethodsandformulas:方法和公式}

{pstd}
上述部分不包括在这个帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主}

{phang}
{opt replace} 如果 {newvar} 已经存在，则替换它。

{phang}
{opt parms(#a)} 指定双指数平滑中的参数 alpha；{bind:{cmd:0} < {it:#a} < {cmd:1}}。如果没有指定 {opt parms(#a)}，则选择平滑参数以最小化样本内的平方预测误差和。

{phang}
{opt samp0(#)} 和 {opt s0(#1 #2)} 是指定递归初始值的互斥方式。

{pmore}
默认情况下，初始值通过对数据集中前半部分的观测值进行线性回归拟合，并带有时间趋势来获得；请参见 {mansection TS tssmoothdexponentialRemarksandexamples:{it:备注和示例}} 在 {bf:[TS] tssmooth dexponential} 中。

{pmore}
{opt samp0(#)} 指定在该回归中使用前 {it:#} 个。

{pmore}
{opt s0(#1 #2)} 指定使用 {it:#1} {it:#2} 作为初始值。

{phang}
{opt forecast(#)} 指定用于样外预测的周期数；{bind:{cmd:0} {ul:<} {it:#} {ul:<} {cmd:500}}。 默认值是 {cmd:forecast(0)}，相当于不执行样外预测。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse sales2}

{pstd}对 {cmd:sales} 执行双指数平滑{p_end}
{phang2}{cmd:. tssmooth dexponential double sm2a=sales}

{pstd}与上面相同，但使用 .7 作为平滑参数{p_end}
{phang2}{cmd:. tssmooth dexponential double sm2b=sales, p(.7)}

{pstd}与上面相同，但使用 1031 和 1031 作为递归的初始值{p_end}
{phang2}{cmd:. tssmooth dexponential double sm2c=sales, p(.7) s0(1031 1031)}

{pstd}与上面相同，但使用 4 个周期进行样外预测{p_end}
{phang2}{cmd:. tssmooth dexponential double sm2d=sales, p(.7) s0(1031 1031)}
             {cmd:forecast(4)}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:tssmooth dexponential} 在 {cmd:r()} 中存储以下内容：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:r(N)}}观测值的数量{p_end}
{synopt:{cmd:r(alpha)}}alpha平滑参数{p_end}
{synopt:{cmd:r(rss)}}平方误差和{p_end}
{synopt:{cmd:r(rmse)}}均方根误差{p_end}
{synopt:{cmd:r(N_pre)}}用于计算起始值的观测值数量（如果计算了起始值）{p_end}
{synopt:{cmd:r(s2_0)}}线性项的初始值，即 S_0^[2]{p_end}
{synopt:{cmd:r(s1_0)}}常数项的初始值，即 S_0{p_end}
{synopt:{cmd:r(linear)}}线性项的最终值{p_end}
{synopt:{cmd:r(constant)}}常数项的最终值{p_end}
{synopt:{cmd:r(period)}}如果过滤器是季节性的则是周期{p_end}

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 宏}{p_end}
{synopt:{cmd:r(method)}}平滑方法{p_end}
{synopt:{cmd:r(exp)}}指定的表达式{p_end}
{synopt:{cmd:r(timevar)}}在 {cmd:tsset} 中指定的时间变量{p_end}
{synopt:{cmd:r(panelvar)}}在 {cmd:tsset} 中指定的面板变量{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <tssmooth_dexponential.sthlp>}