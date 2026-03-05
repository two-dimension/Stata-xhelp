{smcl}
{* *! version 1.2.4  19oct2017}{...}
{viewerdialog "irf create" "dialog irf_create"}{...}
{vieweralsosee "[TS] irf create" "mansection TS irfcreate"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TS] irf" "help irf_zh"}{...}
{vieweralsosee "[TS] var intro" "help var_intro_zh"}{...}
{vieweralsosee "[TS] vec intro" "help vec_intro_zh"}{...}
{viewerjumpto "语法" "irf_create_zh##syntax"}{...}
{viewerjumpto "菜单" "irf_create_zh##menu"}{...}
{viewerjumpto "描述" "irf_create_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "irf_create_zh##linkspdf"}{...}
{viewerjumpto "选项" "irf_create_zh##options"}{...}
{viewerjumpto "备注" "irf_create_zh##remarks"}{...}
{viewerjumpto "示例" "irf_create_zh##examples"}
{help irf_create:English Version}
{hline}{...}
{p2colset 1 20 22 2}{...}
{p2col:{bf:[TS] irf create} {hline 2}}获取 IRF、动态乘数函数和 FEVD{p_end}
{p2col:}({mansection TS irfcreate:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{pstd}
在 {cmd:var} 之后

{p 8 22 2}
{cmd:irf}
{opt cr:eate}
{it:irfname}
[{cmd:,}
{it:{help irf_create##var_options:var_options}}]


{pstd}
在 {cmd:svar} 之后

{p 8 22 2}
{cmd:irf}
{opt cr:eate}
{it:irfname}
[{cmd:,}
{it:{help irf_create##svar_options:svar_options}}]


{pstd}
在 {cmd:vec}、{cmd:dsge} 或 {cmd:dsgenl} 之后

{p 8 22 2}
{cmd:irf}
{opt cr:eate}
{it:irfname}
[{cmd:,}
{it:{help irf_create##vec_options:vec_options}}]


{pstd}
在 {cmd:arima} 之后

{p 8 22 2}
{cmd:irf}
{opt cr:eate}
{it:irfname}
[{cmd:,}
{it:{help irf_create##arima_options:arima_options}}]


{pstd}
在 {cmd:arfima} 之后

{p 8 22 2}
{cmd:irf}
{opt cr:eate}
{it:irfname}
[{cmd:,}
{it:{help irf_create##arfima_options:arfima_options}}]


{phang}
{it:irfname} 是任何不超过 15 个字符的有效名称。

{synoptset 32 tabbed}{...}
{marker var_options}{...}
{synopthdr:var_options}
{synoptline}
{syntab:主要}
{synopt:{cmd:set(}{it:{help filename_zh}}[{cmd:, replace}]{cmd:)}}使 {it:filename} 激活{p_end}
{synopt:{opt replace}}如果存在则替换 {it:irfname}{p_end}
{synopt:{opt st:ep(#)}}将预测范围设置为 {it:#}；默认值为 {cmd:step(8)}{p_end}
{synopt:{opth o:rder(varlist)}}指定内生变量的 Cholesky 排序{p_end}
{synopt:{opt est:imates(estname)}}使用之前存储的结果 {it:estname}；默认使用活动结果{p_end}

{syntab:标准误}
{synopt:{opt nose}}不计算标准误{p_end}
{synopt:{opt bs}}从自助回归残差中获得标准误{p_end}
{synopt:{opt bsp}}通过参数自助法获得标准误{p_end}
{synopt:{opt nod:ots}}对每一次自助复制不显示 "{cmd:.}"{p_end}
{synopt:{opt r:eps(#)}}使用 {it:#} 次自助复制；默认值为 {cmd:reps(200)}{p_end}
{synopt:{cmdab:bsa:ving(}{it:{help filename_zh}}[{cmd:, replace}]{cmd:)}}在 {it:filename} 中保存自助结果{p_end}
{synoptline}

{marker svar_options}{...}
{synopthdr:svar_options}
{synoptline}
{syntab:主要}
{synopt:{cmd:set(}{it:{help filename_zh}}[{cmd:, replace}]{cmd:)}}使 {it:filename} 激活{p_end}
{synopt:{opt replace}}如果存在则替换 {it:irfname}{p_end}
{synopt:{opt st:ep(#)}}将预测范围设置为 {it:#}；默认值为 {cmd:step(8)}{p_end}
{synopt:{opt est:imates(estname)}}使用之前存储的结果 {it:estname}；默认使用活动结果{p_end}

{syntab:标准误}
{synopt:{opt nose}}不计算标准误{p_end}
{synopt:{opt bs}}从自助回归残差中获得标准误{p_end}
{synopt:{opt bsp}}通过参数自助法获得标准误{p_end}
{synopt:{opt nod:ots}}对每一次自助复制不显示 "{cmd:.}"{p_end}
{synopt:{opt r:eps(#)}}使用 {it:#} 次自助复制；默认值为 {cmd:reps(200)}{p_end}
{synopt:{cmdab:bsa:ving(}{it:{help filename_zh}}[{cmd:, replace}]{cmd:)}}在 {it:filename} 中保存自助结果{p_end}
{synoptline}

{marker vec_options}{...}
{synopthdr:vec_options}
{synoptline}
{syntab:主要}
{synopt:{cmd:set(}{it:{help filename_zh}}[{cmd:, replace}]{cmd:)}}使 {it:filename} 激活{p_end}
{synopt:{opt replace}}如果存在则替换 {it:irfname}{p_end}
{synopt:{opt st:ep(#)}}将预测范围设置为 {it:#}；默认值为 {cmd:step(8)}{p_end}
{synopt:{opt est:imates(estname)}}使用之前存储的结果 {it:estname}；默认使用活动结果{p_end}
{synoptline}

{marker arima_options}{...}
{synopthdr:arima_options}
{synoptline}
{syntab:主要}
{synopt:{cmd:set(}{it:{help filename_zh}}[{cmd:, replace}]{cmd:)}}使 {it:filename} 激活{p_end}
{synopt:{opt replace}}如果存在则替换 {it:irfname}{p_end}
{synopt:{opt st:ep(#)}}将预测范围设置为 {it:#}；默认值为 {cmd:step(8)}{p_end}
{synopt:{opt est:imates(estname)}}使用之前存储的结果 {it:estname}；默认使用活动结果{p_end}

{syntab:标准误}
{synopt:{opt nose}}不计算标准误{p_end}
{synoptline}

{marker arfima_options}{...}
{synopthdr:arfima_options}
{synoptline}
{syntab:主要}
{synopt:{cmd:set(}{it:{help filename_zh}}[{cmd:, replace}]{cmd:)}}使 {it:filename} 激活{p_end}
{synopt:{opt replace}}如果存在则替换 {it:irfname}{p_end}
{synopt:{opt st:ep(#)}}将预测范围设置为 {it:#}；默认值为 {cmd:step(8)}{p_end}
{synopt:{opt smem:ory}}计算短记忆 IRF{p_end}
{synopt:{opt est:imates(estname)}}使用之前存储的结果 {it:estname}；默认使用活动结果{p_end}

{syntab:标准误}
{synopt:{opt nose}}不计算标准误{p_end}
{synoptline}
{p2colreset}{...}

{p 4 6 2}
如果未指定选项，默认使用渐近标准误。{p_end}
{p 4 6 2}
{opt irf create} 适用于在拟合模型后使用，
{cmd:var}、{cmd:svar}、{cmd:vec}、{cmd:arima}、{cmd:arfima}、
{cmd:dsge} 或 {cmd:dsgenl} 命令；
请参见 {help var_zh:[TS] var}、{help svar_zh:[TS] var svar}、
{help vec_zh:[TS] vec}、{help arima_zh:[TS] arima}、
{help arfima_zh:[TS] arfima}、
{help dsge_zh:[DSGE] dsge} 或 {help dsgenl_zh:[DSGE] dsgenl}，
{p_end}
{p 4 6 2}
您必须在使用 {cmd:var}、{cmd:svar}、
{cmd:vec}、{cmd:arima}、{cmd:arfima}、{cmd:dsge} 或 {cmd:dsgenl} 
之前 {cmd:tsset} 您的数据，因此，
在使用 {opt irf create} 之前；请参阅 {help tsset_zh:[TS] tsset}.{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 多元时间序列 > IRF 和 FEVD 分析 >}
    {bf:获取 IRF、动态乘数函数和 FEVD}


{marker description}{...}
{title:描述}

{pstd}
{opt irf create} 估计多个集合的脉冲响应函数 (IRFs)、动态乘数函数和预测误差方差分解 (FEVDs)。 
所有这些估计及其标准误统称为 IRF 结果，保存在指定文件名的 IRF 文件中。
创建一组 IRF 结果后，可以使用其他 {help irf_zh} 命令进行分析。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection TS irfcreateQuickstart:快速开始}

        {mansection TS irfcreateRemarksandexamples:备注和示例}

        {mansection TS irfcreateMethodsandformulas:方法和公式}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主要}

{phang}
{cmd:set(}{it:{help filename_zh}}[{cmd:, replace}]{cmd:)}
    指定要使用的 IRF 文件。如果未指定 {opt set()}，则使用活动 IRF 文件；请参见 {manhelp irf_set TS:irf set}。

{pmore}
    如果指定了 {opt set()}，则指定的文件将成为活动文件，就如同您发出了 {cmd:irf set} 命令一样。

{phang}
{opt replace} 指定如果已存在，则可以替换保存在 {it:irfname} 下的结果。IRF 结果保存在文件中，一个文件可以包含多个 IRF 结果。

{phang}
{opt step(#)} 指定步长（预测）范围；默认值为八个时期。
    
{phang}
{opth order(varlist)} 仅在通过 {cmd:var} 估计后允许；指定在估计正交化 IRFs 时使用的内生变量的 Cholesky 排序。 
默认使用在 {cmd:var} 命令中最初指定变量的顺序。

{phang}
{opt smemory} 仅在通过 {cmd:arfima} 估计后允许；指定 IRFs 基于短记忆模型计算，
并将分数差参数 {it:d} 设为零。
    
{phang}
{opt estimates(estname)} 指定要使用的由 {cmd:var}、{cmd:svar} 或 {cmd:vec} 之前估计的估计结果，并
通过 {cmd:estimates} 存储；请参见 {help estimates_zh:[R] estimates}。 
此选项很少被指定。

{dlgtab:标准误}

{phang}
{opt nose}、{opt bs} 和 {opt bsp} 是指定如何（是否）计算标准误的替代选项。
如果未指定这些选项，则计算渐近标准误，除非在两个情况下： 
在通过 {cmd:vec} 估计后和在进行长期约束的情况下通过 {cmd:svar} 估计后。
在这两种情况下，默认值如同指定了 {opt nose}，尽管在第二种情况下，可以指定 {opt bs} 或 {opt bsp}。
在通过 {cmd:vec} 估计后，标准误简单地不可用。

{phang2}
    {opt nose} 指定不计算标准误。

{phang2}
    {opt bs} 指定通过自助方法计算标准误。 如果数据中存在缺失，则不能指定 {opt bs}。

{phang2}
    {opt bsp} 指定通过多元正态参数自助法计算标准误。 如果数据中存在缺失，则不能指定 {opt bsp}。

{phang}
{opt nodots}、{opt reps(#)} 和
{cmd:bsaving(}{it:{help filename_zh}}[, {cmd:replace}]{cmd:)}
   仅在指定了 {opt bs} 或 {opt bsp} 时相关。

{phang2}
    {opt nodots} 指定在每次 {opt irf create} 执行自助复制时不显示点。

{phang2}
    {opt reps(#)}，{it:#} > 50，指定要执行的自助复制次数。默认值为 {cmd:reps(200)}。

{phang2}
    {cmd:bsaving(}{it:filename}[{cmd:, replace}]{cmd:)} 指定创建文件 {it:filename} 并将自助复制结果保存在其中。 
新文件 {it:filename} 只是一个 {opt .dta} 数据集，可以稍后使用 {help use_zh} 加载。如果指定了 {it:filename} 而没有扩展名，则默认假定为 {opt .dta}。


{marker remarks}{...}
{title:备注}

{pstd}
{opt irf create} 估计几种类型的 IRFs、动态乘数函数和 FEVDs。保存的估计取决于用于拟合模型的估计方法，如下表所示：

                                                  估计命令
                                                                       {cmd:dsge}/
        保存                           {cmd:arima}  {cmd:arfima}  {cmd:var}  {cmd:svar}  {cmd:vec}  {cmd:dsgenl}
	{hline 69}
        简单 IRFs                       x      x      x    x     x     x
        正交 IRFs                       x      x      x    x     x
        动态乘数                                       x
        累积 IRFs                   x      x      x    x     x
        累积正交 IRFs                x      x      x    x     x
        累积动态乘数                               x
        结构 IRFs                      x      x    x

        Cholesky FEVDs                                  x    x     x
        结构 FEVDs                                     x
	{hline 69}


{marker examples}{...}
{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse lutkepohl2}{p_end}

{pstd}拟合一个向量自回归模型{p_end}
{phang2}{cmd:. var dln_inv dln_inc dln_consump if qtr<=tq(1978q4), lags(1/2)}
        {cmd: dfk}

{pstd}估计 IRFs 和 FEVDs，并保存在 {cmd:order1} 中，文件为 {cmd:myirf1.irf}
{p_end}
{phang2}{cmd:. irf create order1, set(myirf1)}

{pstd}与上述相同，但是将预测范围设置为 10，并保存为
{cmd:order1b}{p_end}
{phang2}{cmd:. irf create order1b, step(10) set(myirf1)}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse urates}{p_end}

{pstd}拟合一个向量误差修正模型{p_end}
{phang2}{cmd:. vec missouri indiana kentucky illinois, trend(rconstant)}
             {cmd:rank(2) lags(4)}

{pstd}使用 50 作为预测范围估计 IRFs 和 FEVDs，并保存在 
{cmd:vec1} 中，文件为 {cmd:vecirfs.irf}{p_end}
{phang2}{cmd:. irf create vec1, step(50) set(vecirfs)}{p_end}
    {hline}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <irf_create.sthlp>}