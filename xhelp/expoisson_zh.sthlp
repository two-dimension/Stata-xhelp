{smcl}
{* *! version 1.2.5  11dec2018}{...}
{viewerdialog expoisson "dialog expoisson"}{...}
{vieweralsosee "[R] expoisson" "mansection R expoisson"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] expoisson postestimation" "help expoisson postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] poisson" "help poisson_zh"}{...}
{vieweralsosee "[XT] xtpoisson" "help xtpoisson_zh"}{...}
{viewerjumpto "Syntax" "expoisson_zh##syntax"}{...}
{viewerjumpto "Menu" "expoisson_zh##menu"}{...}
{viewerjumpto "Description" "expoisson_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "expoisson_zh##linkspdf"}{...}
{viewerjumpto "Options" "expoisson_zh##options"}{...}
{viewerjumpto "Technical note" "expoisson_zh##technote"}{...}
{viewerjumpto "Examples" "expoisson_zh##examples"}{...}
{viewerjumpto "Stored results" "expoisson_zh##results"}{...}
{viewerjumpto "Reference" "expoisson_zh##reference"}
{help expoisson:English Version}
{hline}{...}
{p2colset 1 18 20 2}{...}
{p2col:{bf:[R] expoisson} {hline 2}}精确泊松回归{p_end}
{p2col:}({mansection R expoisson:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 18 2}
{cmd:expoisson} {depvar} {indepvars} {ifin}
[{it:{help expoisson##weight:权重}}]
[{cmd:,} {it:选项}] 

{synoptset 20 tabbed}{...}
{synopthdr}
{synoptline}
{syntab :模型}
{synopt :{opth cond:vars(varlist)}}对{it:varlist}中的变量进行条件控制{p_end}
{synopt :{opth gr:oup(varname)}}通过{it:varname}的唯一值分层/分组{p_end}
{synopt :{opth exp:osure(varname:varname_e)}}在模型中包含ln({it:varname_e})，系数约束为1{p_end}
{synopt :{opth off:set(varname:varname_o)}}在模型中包含{it:varname_o}，系数约束为1{p_end}

{syntab :选项}
{synopt :{cmdab:mem:ory(}{it:#}[{cmd:b}|{cmd:k}|{cmd:m}|{cmd:g}]{cmd:)}}设置内存使用限制；默认值为{cmd:memory(25m)}{p_end}
{synopt :{opth sav:ing(expoisson##saving:filename)}}将联合条件分布保存到{it:filename}{p_end}

{syntab :报告}
{synopt :{opt l:evel(#)}}设置置信水平；默认值为{cmd:level(95)}{p_end}
{synopt :{opt irr}}报告发生率比{p_end}
{synopt :{opt t:est(testopt)}}报告观察到的充分统计量、条件得分检验或条件概率检验的p值{p_end}
{synopt :{opth mue(varlist)}}计算{it:varlist}的中位数无偏估计{p_end}
{synopt :{opt midp}}使用中值p值规则{p_end}
{synopt :[{cmd:no}]{cmd:log}}显示或抑制枚举日志；默认是显示{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
{cmd:by}、{cmd:statsby}和{cmd:xi}是允许的；见{help prefix_zh}.{p_end}
{marker weight}{...}
{p 4 6 2}
允许使用{cmd:fweight}; 见{help weight_zh}.{p_end}
{p 4 6 2}
请参见{manhelp expoisson_postestimation R:expoisson postestimation}以获取估计后的可用特性。


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 精确统计 > 精确泊松回归}


{marker description}{...}
{title:描述}

{pstd}
{cmd:expoisson}拟合精确泊松回归模型，与标准最大似然估计的泊松回归相比，在小样本中产生更准确的推断。对于分层数据，{cmd:expoisson}在每个层中的事件数量上进行条件控制，是固定效应泊松回归的替代方法。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection R expoissonQuickstart:快速入门}

        {mansection R expoissonRemarksandexamples:备注和示例}

        {mansection R expoissonMethodsandformulas:方法和公式}

{pstd}
上述部分不包括在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:模型}

{marker condvars}{...}
{phang}
{opth condvars(varlist)}指定您不感兴趣的参数估计的变量。通过将这些变量从{indepvars}转移到{cmd:condvars()}，您可以节省大量计算时间和内存。您要理解，无论您输入

            {cmd:. expoisson y x1 x2 x3 x4}

{pmore}
还是 

            {cmd:. expoisson y x1 x3, condvars(x2 x4)}

{phang}
{opth group(varname)}指定定义分层的变量(如果有)。对于在{it:varname}中识别的每个层，假设有一个常数项，并且{indepvars}的充分统计量在每组内的观察到的成功数量（以及模型中的其他变量）上进行条件控制。组变量必须是整数值。

{phang}
{opth exposure:(varname:varname_e)}，{opt offset(varname_o)}；见{helpb estimation options##noconstant:[R] 估计选项}。

{dlgtab:选项}

{phang} {marker memory} 
{cmd:memory(}{it:#}[{cmd:b}|{cmd:k}|{cmd:m}|{cmd:g}]{cmd:)}设置{cmd:expoisson}在计算参数充分统计量的条件分布时使用的内存量限制。默认值为{cmd:memory(25m)}，其中{cmd:m}代表兆字节或1,048,576字节。还可以使用以下选项：{cmd:b}代表字节；{cmd:k}代表千字节，即1,024字节；{cmd:g}代表千兆字节，即1,024兆字节。允许的最低设置为{cmd:1m}，最大为{cmd:2048m}或{cmd:2g}，但不要尝试使用超过您计算机可用内存的值。另请参见{help expoisson##enumerations:技术说明}关于计算条件分布的内容。

{phang}
{marker saving}
{cmd:saving(}{it:{help filename_zh}}[{cmd:,} {cmd:replace}]{cmd:)}将每个指定的独立变量的联合条件分布保存。每个变量有一个文件，文件名使用前缀{it:filename}加上变量名称。例如，{cmd:saving(mydata)}对于一个名为{cmd:X}的独立变量将生成一个名为{cmd:mydata_X.dta}的数据文件。使用{cmd:replace}替换已有文件。每个文件包含在所有其他{it:indepvars}和在{opt condvars()}中指定的变量条件下该独立变量的条件分布。每个数据文件包含两个变量：变量参数的可行充分统计量和它们的相关权重。权重变量命名为{cmd:_w_}。

{dlgtab:报告}

{phang}
{opt level(#)}；见{helpb estimation options##level():[R] 估计选项}。{opt level(#)}选项在重放时无法使用，因为置信区间基于特定估计量的枚举。要更改置信水平，必须重新拟合模型。

{phang}
{opt irr}报告转化为发生率比的估计系数，即exp(b)而不是b。标准误差和置信区间也类似转换。此选项影响结果的显示方式，而不影响估计或存储的方法。{cmd:irr}可以在估计时或重放先前估计的结果时指定。

{phang}
{marker test}
{cmd:test(}{opt suff:icient}|{cmd:score}|{opt pr:obability)}报告与观察充分统计量、条件成绩检验或条件概率检验相关的p值。默认值是{cmd:test(sufficient)}。所有统计量在估计时计算，每个统计量可以在估计后显示；见{helpb expoisson postestimation:[R] expoisson postestimation}。

{phang}
{opth mue(varlist)}指定报告{it:varlist}中变量的中位数无偏估计（MUEs）。默认情况下，报告条件最大似然估计（CMLE），除非CMLE为无穷大。如果希望对所有{indepvars}获得MUE，请指定{cmd:mue(_all)}。

{phang}
{opt midp}指示{cmd:expoisson}在计算MUE、p值和置信区间时使用中值p值规则。这个调整是为了离散分布，通过将观察到的统计量的离散概率值减半，然后再将其添加到p值中。中值p值规则无法应用于CMLE为无穷大的MUE。

{phang}
{opt log}和{opt nolog}指定是否显示枚举日志，该日志显示计算充分统计量条件分布的进展。默认情况下显示枚举日志，除非您使用{cmd:set iterlog off}将其抑制；见{cmd:set iterlog}在{manhelpi set_iter R:set iter}中。


{marker technote}{...}
{marker enumerations}{...}
{title:技术说明}

{pstd}
{opt memory(#)}选项限制{cmd:expoisson}在计算参数充分统计量的条件分布时消耗的内存量。{cmd:memory()}独立于数据最大内存设置（见{cmd:set max_memory}在{help memory_zh:[D] memory}中），因此{cmd:expoisson}可能会超出{cmd:set max_memory}中指定的内存限制而不终止。默认情况下，提供的日志显示处理每个观察点后枚举的数量（条件分布的大小）。通常，您会看到枚举数量增加，然后在某个时候，它们会减少，因为多元偏移算法（{help exlogistic##HMP1987:Hirji, Mehta和Patel 1987}）确定某些枚举无法实现条件变量的观察充分统计量。然而，当算法完成时，必须将参数充分统计量的条件分布存储为数据集，因此，在完成算法时如果没有足够的内存存储条件分布，可能会出现内存错误。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
        {cmd:. webuse smokes}

{pstd}对{cmd:cases}进行精确泊松回归，并使用暴露变量{cmd:peryrs}{p_end}
{phang2}{cmd:. expoisson cases smokes, exposure(peryrs) irr}{p_end}

{pstd}重放结果并报告条件得分检验{p_end}
{phang2}{cmd:. expoisson, test(score) irr}{p_end}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:expoisson}将以下内容存储在{cmd:e()}中：

{synoptset 22 tabbed}{...}
{syntab:标量}
{synopt:{cmd:e(N)}}观察数量{p_end}
{synopt:{cmd:e(k_groups)}}组的数量{p_end}
{synopt:{cmd:e(relative_weight)}}观察到的{cmd:e(sufficient)}和{cmd:e(condvars)}的相对权重{p_end}
{synopt:{cmd:e(sum_y)}}{it:depvar}的总和{p_end}
{synopt:{cmd:e(k_indvars)}}独立变量的数量{p_end}
{synopt:{cmd:e(k_condvars)}}条件变量的数量{p_end}
{synopt:{cmd:e(midp)}}中值p值规则指示符{p_end}
{synopt:{cmd:e(eps)}}相对差异容忍度{p_end}

{syntab:宏}
{synopt:{cmd:e(cmd)}}{cmd:expoisson}{p_end}
{synopt:{cmd:e(cmdline)}}输入的命令{p_end}
{synopt:{cmd:e(title)}}估计输出中的标题{p_end}
{synopt:{cmd:e(depvar)}}因变量名称{p_end}
{synopt:{cmd:e(indvars)}}独立变量{p_end}
{synopt:{cmd:e(condvars)}}条件变量{p_end}
{synopt:{cmd:e(groupvar)}}组变量{p_end}
{synopt:{cmd:e(exposure)}}暴露变量{p_end}
{synopt:{cmd:e(offset)}}线性偏移变量{p_end}
{synopt:{cmd:e(level)}}置信水平{p_end}
{synopt:{cmd:e(wtype)}}权重类型{p_end}
{synopt:{cmd:e(wexp)}}权重表达式{p_end}
{synopt:{cmd:e(datasignature)}}校验和{p_end}
{synopt:{cmd:e(datasignaturevars)}}用于计算校验和的变量{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt:{cmd:e(estat_cmd)}}用于实现{cmd:estat}的程序{p_end}
{synopt:{cmd:e(marginsnotok)}}预测被{cmd:margins}禁止{p_end}

{syntab:矩阵}
{synopt:{cmd:e(b)}}系数向量{p_end}
{synopt:{cmd:e(mue_indicators)}}指示使用MUE而不是CMLE来估计的{cmd:e(b)}的元素{p_end}
{synopt:{cmd:e(se)}}{cmd:e(b)}的标准误（仅限CMLE）{p_end}
{synopt:{cmd:e(ci)}}{cmd:e(b)}的{cmd:e(level)}置信区间矩阵{p_end}
{synopt:{cmd:e(sum_y_groups)}}每组的{cmd:e(depvar)}总和{p_end}
{synopt:{cmd:e(N_g)}}每组的观察数量{p_end}
{synopt:{cmd:e(sufficient)}}{cmd:e(b)}的充分统计量{p_end}
{synopt:{cmd:e(p_sufficient)}}{cmd:e(sufficient)}的p值{p_end}
{synopt:{cmd:e(scoretest)}}{it:indepvars}的条件得分检验{p_end}
{synopt:{cmd:e(p_scoretest)}}{cmd:e(scoretest)}的p值{p_end}
{synopt:{cmd:e(probtest)}}{it:indepvars}的条件概率检验{p_end}
{synopt:{cmd:e(p_probtest)}}{cmd:e(probtest)}的p值{p_end}

{syntab:函数}
{synopt:{cmd:e(sample)}}标记估计样本{p_end}
{p2colreset}{...}


{marker reference}{...}
{title:参考}

{marker HMP1987}{...}
{phang}
Hirji, K. F., C. R. Mehta, 和 N. R. Patel. 1987.
为精确逻辑回归计算分布。
{it:美国统计协会杂志} 82: 1110-1117。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <expoisson.sthlp>}