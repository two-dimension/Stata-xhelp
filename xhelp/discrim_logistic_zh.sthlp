{smcl}
{* *! version 1.1.12  12dec2018}{...}
{viewerdialog discrim "dialog discrim, message(-logistic-) name(discrim_logistic)"}{...}
{vieweralsosee "[MV] discrim logistic" "mansection MV discrimlogistic"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MV] discrim logistic postestimation" "help discrim logistic postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MV] discrim" "help discrim_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] logistic" "help logistic_zh"}{...}
{vieweralsosee "[R] mlogit" "help mlogit_zh"}{...}
{viewerjumpto "语法" "discrim logistic##syntax"}{...}
{viewerjumpto "菜单" "discrim logistic##menu"}{...}
{viewerjumpto "描述" "discrim logistic##description"}{...}
{viewerjumpto "PDF 文档链接" "discrim_logistic_zh##linkspdf"}{...}
{viewerjumpto "选项" "discrim logistic##options"}{...}
{viewerjumpto "示例" "discrim logistic##examples"}{...}
{viewerjumpto "存储结果" "discrim logistic##results"}
{help discrim_logistic:English Version}
{hline}{...}
{p2colset 1 26 28 2}{...}
{p2col:{bf:[MV] discrim logistic} {hline 2}}逻辑判别分析{p_end}
{p2col:}({mansection MV discrimlogistic:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 25 2}
{cmd:discrim} {cmdab:logi:stic} {varlist} {ifin}
        [{it:{help discrim logistic##weight:weight}}]{cmd:,}
	{opth g:roup(varlist:groupvar)}
	[{it:选项}]

{synoptset 19 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:模型}
{p2coldent:* {opth g:roup(varlist:groupvar)}}指定组的变量{p_end}
{synopt:{opth pri:ors(discrim_logistic##priors:priors)}}组先验概率{p_end}
{synopt:{opth tie:s(discrim_logistic##ties:ties)}}处理分类中平局的方式{p_end}

{syntab:报告}
{synopt:{opt not:able}}抑制重置分类表的计算{p_end}
{synopt:[{cmd:no}]{cmd:log}}显示或抑制 {cmd:mlogit} 似然迭代日志； 默认为显示{p_end}
{synoptline}
{p2colreset}{...}

包含 help discrim_opts

{p 4 6 2}
*{cmd:group()} 是必需的。{p_end}
{p 4 6 2}
{opt statsby} 和 {cmd:xi} 是允许的； 请参见 {help prefix_zh}。
{p_end}
{marker weight}{...}
{p 4 6 2}
{opt fweight} 是允许的； 请参见 {help weight_zh}。
{p_end}
{p 4 6 2}
请参见
{manhelp discrim_logistic_postestimation MV:discrim logistic postestimation}
获取估计后的可用特性。
{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 多变量分析 > 判别分析 > 逻辑判别}


{marker description}{...}
{title:描述}

{pstd}
{cmd:discrim logistic} 执行逻辑判别分析。
有关其他判别命令，请参见 {manhelp discrim MV}。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection MV discrimlogisticQuickstart:快速开始}

        {mansection MV discrimlogisticRemarksandexamples:备注和示例}

        {mansection MV discrimlogisticMethodsandformulas:方法和公式}

{pstd}
上述部分不包括在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:模型}

{phang}
{opth group:(varlist:groupvar)}
是必需的，指定分组变量的名称。 {it:groupvar} 必须是一个数值变量。

包含 help discrim_priors

{dlgtab:报告}

{phang}
{opt notable}
抑制重置分类表的计算和显示。

{phang}
{cmd:log} 和 {cmd:nolog} 指定是否显示 {cmd:mlogit} 似然迭代日志。 默认情况下显示迭代日志，除非您使用 {cmd:set iterlog off} 来抑制它； 参见 {cmd:set iterlog} 在 {manhelpi set_iter R:set iter} 中。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse rootstock}{p_end}

{pstd}拟合一个逻辑判别分析模型，针对六个根砧组采用相等的先验概率，并显示分类矩阵{p_end}
{phang2}{cmd:. discrim logistic y1 y2 y3 y4, group(rootstock)}{p_end}

{pstd}拟合相同模型，但使用前四个根砧的先验概率为 0.2，最后两个根砧为 0.1{p_end}
{phang2}
{cmd:. discrim logistic y*, group(rootstock) priors(.2,.2,.2,.2,.1,.1)}
{p_end}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:discrim logistic} 将以下内容存储在 {cmd:e()} 中：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观察数量{p_end}
{synopt:{cmd:e(N_groups)}}组数量{p_end}
{synopt:{cmd:e(k)}}判别变量数量{p_end}
{synopt:{cmd:e(ibaseout)}}基本结果编号{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:discrim}{p_end}
{synopt:{cmd:e(subcmd)}}{cmd:logistic}{p_end}
{synopt:{cmd:e(cmdline)}}输入的命令{p_end}
{synopt:{cmd:e(groupvar)}}组变量名称{p_end}
{synopt:{cmd:e(grouplabels)}}组的标签{p_end}
{synopt:{cmd:e(varlist)}}判别变量{p_end}
{synopt:{cmd:e(dropped)}}因共线性而被剔除的变量{p_end}
{synopt:{cmd:e(wtype)}}权重类型{p_end}
{synopt:{cmd:e(wexp)}}权重表达式{p_end}
{synopt:{cmd:e(title)}}估计输出中的标题{p_end}
{synopt:{cmd:e(ties)}}处理平局的方式{p_end}
{synopt:{cmd:e(properties)}}{cmd:b noV}{p_end}
{synopt:{cmd:e(estat_cmd)}}用于实现 {cmd:estat} 的程序{p_end}
{synopt:{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}
{synopt:{cmd:e(marginsnotok)}}被 {cmd:margins} 禁止的预测{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:e(b)}}系数向量{p_end}
{synopt:{cmd:e(groupcounts)}}每组的观察数量{p_end}
{synopt:{cmd:e(grouppriors)}}每组的先验概率{p_end}
{synopt:{cmd:e(groupvalues)}}每组的数值{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 函数}{p_end}
{synopt:{cmd:e(sample)}}标记估计样本{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <discrim_logistic.sthlp>}