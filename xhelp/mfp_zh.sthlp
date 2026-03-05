{smcl}
{* *! version 1.3.6  14may2018}{...}
{viewerdialog mfp "dialog mfp"}{...}
{vieweralsosee "[R] mfp" "mansection R mfp"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] mfp postestimation" "help mfp postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] fp" "help fp_zh"}{...}
{viewerjumpto "Syntax" "mfp_zh##syntax"}{...}
{viewerjumpto "Menu" "mfp_zh##menu"}{...}
{viewerjumpto "Description" "mfp_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mfp_zh##linkspdf"}{...}
{viewerjumpto "Options" "mfp_zh##options"}{...}
{viewerjumpto "Remarks" "mfp_zh##remarks"}{...}
{viewerjumpto "Examples" "mfp_zh##examples"}{...}
{viewerjumpto "Stored results" "mfp_zh##results"}
{help mfp:English Version}
{hline}{...}
{p2colset 1 12 14 2}{...}
{p2col:{bf:[R] mfp} {hline 2}}多变量分数多项式模型{p_end}
{p2col:}({mansection R mfp:View complete PDF manual entry}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{cmd:mfp}
	[{cmd:,}
		{it:options}]
        {cmd::} {it:{help mfp##reg_cmd:regression_cmd}}
	[{it:{help mfp##reg_cmd:yvar1}} [{it:{help mfp##reg_cmd:yvar2}}]]
	{it:{help mfp##reg_cmd:xvarlist}}
	{ifin}
        [{it:{help mfp##weight:weight}}]
	[{cmd:,} {it:regression_cmd_options}]

{synoptset 26 tabbed}{...}
{synopthdr}
{synoptline}
{syntab :模型 2}
{synopt :{opt seq:uential}}采用Royston和Altman模型选择算法；默认使用封闭检验程序{p_end}
{synopt :{opt cyc:les(#)}}最大迭代周期数；默认值为{cmd:cycles(5)}{p_end}
{synopt :{opt dfd:efault(#)}}默认最大自由度；默认值为{cmd:dfdefault(4)}{p_end}
{synopt :{opt cent:er(cent_list)}}指定自变量的中心化{p_end}
{synopt :{opt al:pha(alpha_list)}}用于测试FP模型之间的p值；默认值为{cmd:alpha(0.05)}{p_end}
{synopt :{opt df(df_list)}}每个预测变量的自由度{p_end}
{synopt :{opth po:wers(numlist:numlist)}}使用的FP次数列表；默认值为{bind:{cmd:powers(-2 -1(.5)1 2 3)}}{p_end}

{syntab :高级模型}
{synopt :{cmdab:xo:rder(+}|{cmd:-}|{cmd:n)}}进入模型选择算法的顺序；默认值为{cmd:xorder(+)}{p_end}
{synopt :{opt sel:ect(select_list)}}每个预测变量的名义p值选择{p_end}
{synopt :{opt xp:owers(xp_list)}}每个预测变量的FP次数{p_end}
{synopt :{opth zer:o(varlist)}}将指定预测变量的非正值视为0，当FP被转换时{p_end}
{synopt :{opth cat:zero(varlist)}}为指定预测变量添加指标变量{p_end}
{synopt :{opt all}}在生成变量时包含样本外观察值{p_end}

{syntab :报告}
{synopt :{opt lev:el(#)}}设定置信水平；默认值为{cmd:level(95)}{p_end}
{synopt :{it:{help mfp##display_options:display_options}}}控制列格式和行宽{p_end}
{synoptline}

{synopthdr :regression_cmd_options}
{synoptline}
{syntab :高级模型}
{synopt :{it:regression_cmd_options}}适用于当前回归命令的选择{p_end}
{synoptline}
{p2colreset}{...}

{marker weight}{...}
{p 4 6 2}
所有由{it:regression_cmd}支持的权重类型都被允许；参见{help weight_zh}.{p_end}
{p 4 6 2}
参阅{helpb mfp postestimation:[R] mfp postestimation}以获取估计后可用功能.{p_end}
{p 4 6 2}
{opt fp generate}可用于创建包含分数多项式次数的新变量。参见{help fp_zh:[R] fp}.{p_end}

{pstd}
{marker reg_cmd}其中

{pin}
{it:regression_cmd}可以是
{help clogit_zh},
{help glm_zh},
{help intreg_zh}, 
{help logistic_zh},
{help logit_zh},
{help mlogit_zh},
{help nbreg_zh},
{help ologit_zh},
{help oprobit_zh},
{help poisson_zh},
{help probit_zh},
{help qreg_zh},
{help regress_zh},
{help rreg_zh},
{help stcox_zh},
{help stcrreg_zh},
{help streg_zh},
或
{help xtgee_zh}。

{pin}
{it:yvar1}在使用{opt streg}、{opt stcrreg}和{opt stcox}时不被允许。
对于这些命令，您必须首先{help stset_zh}您的数据。

{pin}
当{it:regression_cmd}为{opt intreg}时，必须同时指定{it:yvar1}和{it:yvar2}。

{pin}
{it:xvarlist}的元素类型为{varlist}和/或{opt (varlist)}；例如，

{pin2}
{cmd:x1 x2 (x3 x4 x5)}

{pin}
括在括号中的元素是联合测试的，不能进行分数多项式变换。

{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 线性模型与相关 > 分数多项式 >}
    {bf:多变量分数多项式模型} 


{marker description}{...}
{title:描述}

{pstd}
{opt mfp}选择最佳预测结果变量的多变量分数多项式（MFP）模型，变量位于{it:{help varlist_zh:xvarlist}}的右侧。

{pstd}
对于单变量分数多项式，可以使用{cmd:fp}拟合比{cmd:mfp}更广泛的模型。有关更多详情，请参见{help fp_zh:[R] fp}。  


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection R mfpQuickstart:快速入门}

        {mansection R mfpRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在本帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:模型 2}

{phang}
{opt sequential}选择顺序分数多项式（FP）选择算法（请参见{mansection R mfpRemarksandexamplesMethodsofFPmodelselection:{it:FP模型选择的方法}}在{bf:[R] mfp}中）。

{phang}
{opt cycles(#)}设置允许的最大迭代周期数。默认值为{cmd:cycles(5)}。

{phang}
{opt dfdefault(#)}确定预测变量的默认最大自由度(df)。默认值为{cmd:dfdefault(4)}（二级FP）。

{phang}
{opt center(cent_list)}
定义协变量{it:{help varname_zh:xvar1}},{it:xvar2}, ...的中心化为{it:{help varlist_zh:xvarlist}}。默认值为{cmd:center(mean)}，但对于二元协变量，默认为{opt center(#)}，其中{it:#}为协变量两个不同值中的较小者。
在{it:cent_list}中的典型项为{varlist}{cmd::}{c -(}{opt mean}|{it:#}|{opt no}{c )-}。
项之间用逗号分隔。第一个项目是特殊的，即{it:varlist}是可选的，如果省略，则默认被重置为指定的值（{opt mean}、{it:#}或{opt no}）。例如，{cmd:center(no, age:mean)}将默认值设置为{opt no}（即不进行中心化）并将{opt age}的中心化设置为{opt mean}。

{phang}
{opt alpha(alpha_list)}
    设置不同级别之间FP模型的显著性水平。{it:alpha_list}的规则与{helpb mfp##df:df()}选项中的{it:df_list}相同。
    所有变量的默认名义p值（显著性水平，选择水平）为0.05。

{pmore}
	示例：{cmd:alpha(0.01)}指定所有变量具有1%的FP选择水平。

{pmore}
	示例：{cmd:alpha(0.05, weight:0.1)}指定所有变量（除了{opt weight}）具有5%的FP选择水平；{opt weight}的水平为10%。

{phang}{marker df}
{opt df(df_list)}
    设置每个预测变量的自由度。自由度（不计回归常数{cmd:_cons}）是FP的两倍，因此，例如，拟合为二次FP（FP2）的{it:{help varname_zh:xvar}}有4个自由度。{it:df_list}中的第一个项目可以是{it:#}或{varlist}{cmd::}{it:#}。后续项目必须为{it:varlist}{cmd::}{it:#}。项之间用逗号分隔，并且{it:varlist}按照通常用于变量的方式指定。使用第一种项目类型，所有预测变量的自由度都被视为{it:#}。使用第二种项目类型，{it:varlist}的所有成员（必须是{it:{help varlist_zh:xvarlist}}的子集）具有{it:#}的自由度。

{pmore}
    指定在{it:xvarlist}中，但不在{it:df_list}中的类型为{it:varlist}的预测变量的默认自由度，根据预测变量的不同（唯一）值的数量分配，如下所示：

            {hline 43}
            不同值数量    默认自由度
            {hline 43}
                      1             （无效预测变量）
                     2-3            1
                     4-5            min(2, {opt dfdefault()})
                     {ul:>}6             {opt dfdefault()}
            {hline 43}

{pmore}
    示例：{cmd:df(4)}{break}
    所有变量都有4个自由度。

{pmore}
    示例：{cmd:df(2, weight displ:4)}{break}
    {opt weight}和{opt displ}具有4个自由度；所有其他变量具有2个自由度。

{pmore}
    示例：{cmd:df(weight displ:4, mpg:2)}{break}
    {opt weight}和{opt displ}具有4个自由度，{opt mpg}具有2个自由度；所有其他变量具有默认自由度。

{phang}{marker powers}
{opth powers(numlist)}是要使用的FP次数集。 默认集是-2、-1、-0.5、0、0.5、1、2、3（0表示对数）。

{dlgtab:高级模型}

{phang}
{cmd:xorder(+}|{cmd:-}|{cmd:n)}
    确定协变量进入模型选择算法的顺序。默认值为{cmd:xorder(+)），即按多重线性回归中的显著性递减顺序输入（最显著的首先）。{cmd:xorder(-)}按显著性逆序排列，而{cmd:xorder(n)}保持原始{it:{help varlist_zh:xvarlist}}中的顺序。

{phang}
{opt select(select_list)}
    设置由后向消除选择的变量的名义p值（显著性水平）。如果去除某个变量导致偏差的显著性增加，变量将被删除。{it:select_list}的规则与{helpb mfp##df:df()}选项中的{it:df_list}相同。
    对于所有变量使用默认选择水平1强制它们全部进入模型。对某个给定变量将名义p值设置为1则强制其进入模型，其他则根据选择或不选择。{it:{help varlist_zh:xvarlist}}中用括号界定的元素的名义p值由{opt (varlist)}的组合指定到{it:select_list}中。

{pmore}
    示例：{cmd:select(0.05)}{break}
    所有变量的名义p值为5%。

{pmore}
    示例：{cmd:select(0.05, weight:1)}{break}
    除了{opt weight}，所有变量的名义p值为5%；{opt weight}被强制进入模型。

{pmore}
    示例：{cmd:select(a (b c):0.05)}{break}
    除了{opt a}、{opt b}和{opt c}以外的所有变量被强制进入模型。{opt b}和{opt c}以2个自由度在5%水平上联合测试，而{opt a}单独在5%水平上进行测试。

{phang}
{opt xpowers(xp_list)}
    为协变量单独设置允许的FP次方。{it:xp_list}的规则与{helpb mfp##df:df()}选项中的{it:df_list}相同。默认选择与{helpb mfp##powers:powers()}选项相同。

{pmore}
    示例：{cmd:xpowers(-1 0 1)}{break}
    所有变量的次数为-1、0、1。

{pmore}
    示例：{cmd:xpowers(x5:-1 0 1)}{break}
    除了{cmd:x5}外，所有变量都有默认的次数；{cmd:x5}的次数为-1、0、1。

{phang}
{opth zero(varlist)}
    在应用FP变换时，处理成员的负值和零值为零。默认情况下，此类变量会经过预先的线性变换，以避免负值和零值，正如在{manhelp fp R}的{helpb fp##scale:scale}选项中所描述的那样。{it:varlist}必须是{it:{help varlist_zh:xvarlist}}的一部分。

{phang}
{opth catzero(varlist)}
    是{opt zero()}的变体；参见{it:{mansection R mfpRemarksandexamplesZerosandzerocategories:零和零类别}}在{bf:[R] mfp}中。{it:varlist}必须是{it:{help varlist_zh:xvarlist}}的一部分。

{phang}
{it:regression_cmd_options}可以是适用于{it:{help mfp##reg_cmd:regression_cmd}}的任何选项。

{phang}
{cmd:all}在生成FP变量时包含样本外观察值。
默认情况下，生成的FP变量在估计样本之外包含缺失值。

{dlgtab:报告}

{phang}
{opt level(#)}
指定置信区间的置信水平（以百分比表示）。默认值为{cmd:level(95)}或由{helpb set level}设置。

{marker display_options}{...}
{phang}
{it:display_options}:
{opth cformat(%fmt)},
{opt pformat(%fmt)},
{opt sformat(%fmt)}和
{opt nolstretch}；
    参见{helpb estimation options##display_options:[R] 估计选项}.


{marker remarks}{...}
{title:备注}

{pstd}
对于未括在括号中的{it:xvarlist}中的元素，{cmd:mfp}将数据中命名为{cmd:I}{it:xvar}{cmd:__1}、{cmd:I}{it:xvar}{cmd:__2}等的变量留存，其中{it:xvar}表示{it:xvar1}名称的前四个字母，依此类推适用于{it:xvar2}、{it:xvar3}等。新变量包含{it:xvar1}、{it:xvar2}等的最佳拟合FP次数。
                                                                                

{marker examples}{...}
{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. sysuse auto}{p_end}

{pstd}拟合MFP回归{p_end}
{phang2}{cmd:. mfp: regress mpg weight displacement foreign}{p_end}

{pstd}为weight和displacement指定4个自由度，为所有其他变量指定1个自由度{p_end}
{phang2}{cmd:. mfp, df(1, weight displ:4): regress mpg weight displacement}
   {cmd:foreign}{p_end}

{pstd}强制{cmd:foreign}进入模型；设定所有其他变量的后向消除阈值为0.05；为{cmd:foreign}指定1个自由度和其他变量的2个自由度{p_end}
{phang2}{cmd:. mfp, select(0.05, foreign:1) df(2, foreign:1): regress mpg}
    {cmd:weight displacement foreign}{p_end}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse brcancer, clear}{p_end}
{phang2}{cmd:. stset rectime, fail(censrec)}{p_end}

{pstd}拟合MFP Cox回归；强制hormon进入模型并为其他变量设定后向消除阈值为0.05{p_end}
{phang2}{cmd:. mfp, select(0.05, hormon:1): stcox x1 x2 x3 x4a x4b x5 x6 x7}
   {cmd:hormon, nohr}{p_end}

    {hline}


{marker results}{...}
{title:存储结果}

{pstd}
除了{it:regression_cmd}存储的内容外，{cmd:mfp}还在{cmd:e()}中存储以下内容：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:e(fp_nx)}}{it:xvarlist}中的预测变量数量{p_end}
{synopt:{cmd:e(fp_dev)}}最终模型拟合的偏差{p_end}
{synopt:{cmd:e(Fp_id}{it:#}{cmd:)}}第{it:#}个元素的初始自由度{it:xvarlist}{p_end}
{synopt:{cmd:e(Fp_fd}{it:#}{cmd:)}}第{it:#}个元素的最终自由度{it:xvarlist}{p_end}
{synopt:{cmd:e(Fp_al}{it:#}{cmd:)}}第{it:#}个元素的FP选择水平{it:xvarlist}{p_end}
{synopt:{cmd:e(Fp_se}{it:#}{cmd:)}}第{it:#}个元素的后向消除选择水平{it:xvarlist}{p_end}

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 宏}{p_end}
{synopt:{cmd:e(fp_cmd)}}{cmd:fracpoly}{p_end}
{synopt:{cmd:e(fp_cmd2)}}{cmd:mfp}{p_end}
{synopt:{cmd:e(cmdline)}}输入的命令{p_end}
{synopt:{cmd:e(fracpoly)}}使用{cmd:fracpoly}拟合所选模型的命令{p_end}
{synopt:{cmd:e(fp_fvl)}}最终模型中的变量{p_end}
{synopt:{cmd:e(fp_depv)}}{it:yvar1} ({it:yvar2}){p_end}
{synopt:{cmd:e(fp_opts)}}估计命令选项{p_end}
{synopt:{cmd:e(fp_x1)}}{it:xvarlist}中的第一个变量{p_end}
{synopt:{cmd:e(fp_x2)}}{it:xvarlist}中的第二个变量{p_end}
{synopt:...}{p_end}
{synopt:{cmd:e(fp_x}{it:N}{cmd:)}}{it:xvarlist}中的最后一个变量，N={cmd:e(fp_nx)}{p_end}
{synopt:{cmd:e(fp_k1)}}{it:xvarlist}中第一个变量的次数(*){p_end}
{synopt:{cmd:e(fp_k2)}}{it:xvarlist}中第二个变量的次数(*){p_end}
{synopt:...}{p_end}
{synopt:{cmd:e(fp_k}{it:N}{cmd:)}}{it:xvarlist}中最后一个变量的次数(*)，N={cmd:e(fp_nx)}{p_end}

{pstd}
注意：（*）如果变量在最终模型中未被选择，则包含`.`。{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mfp.sthlp>}