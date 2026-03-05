{smcl}
{* *! version 1.2.16  19oct2017}{...}
{viewerdialog nestreg "dialog nestreg"}{...}
{vieweralsosee "[R] nestreg" "mansection R nestreg"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[P] program properties" "help program_properties_zh"}{...}
{viewerjumpto "语法" "nestreg_zh##syntax"}{...}
{viewerjumpto "菜单" "nestreg_zh##menu"}{...}
{viewerjumpto "描述" "nestreg_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "nestreg_zh##linkspdf"}{...}
{viewerjumpto "选项" "nestreg_zh##options"}{...}
{viewerjumpto "备注/示例" "nestreg_zh##remarks"}{...}
{viewerjumpto "存储结果" "nestreg_zh##results"}
{help nestreg:English Version}
{hline}{...}
{p2colset 1 16 18 2}{...}
{p2col:{bf:[R] nestreg} {hline 2}}嵌套模型统计{p_end}
{p2col:}({mansection R nestreg:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{pstd}
标准估计命令语法

{p 8 31 2}
{cmd:nestreg}
	[{cmd:,}
		{it:options}
	] {cmd::} {it:{help nestreg##cmd_name:command_name}}
	{depvar} {opth (varlist)} [{opth (varlist)} ...] {ifin}
        [{it:{help nestreg##weight:weight}}]
	[{cmd:,} {it:command_options}]


{pstd}
调查估计命令语法

{p 8 31 2}
{cmd:nestreg}
	[{cmd:,}
		{it:options}] {cmd::} {cmd:svy}
          [{it:{help svy##svy_vcetype:vcetype}}] [{cmd:,}
           {it:{help svy##svy_options:svy_options}}]
        {cmd::} {it:{help nestreg##cmd_name:command_name}}
	{depvar} {opth (varlist)} [{opth (varlist)} ...] {ifin}
	[{cmd:,} {it:command_options}]


{synoptset 15 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:报告}
{synopt:{opt wald:table}}报告 Wald 测试结果；为默认选项{p_end}
{synopt:{opt lr:table}}报告似然比测试结果{p_end}
{synopt:{opt qui:etly}}抑制来自
      {it:{help nestreg##cmd_name:command_name}}的任何输出{p_end}
{synopt:{opt store(stub)}}将嵌套估计结果存储在 
             {cmd:_est_}{it:stub#}{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
{cmd:by} 是允许的；请参见 {help prefix_zh}。
{p_end}
{marker weight}{...}
{p 4 6 2}
如果 {it:command_name} 允许，权重是允许的；请参见 {help weight_zh}。
{p_end}
{p 4 6 2}
团括号中的 {it:varlist} 表示此变量列表被视为一个块。 在没有括号的情况下，每个 {it:varlist} 中的变量将被视为自己的块。
{p_end}
{p 4 6 2}
所有后估计命令的行为都与不带 {opt nestreg} 前缀的 {it:command_name} 后相同；请参见 {it:command_name} 的后估计手册条目。
{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 其他 > 嵌套模型统计}


{marker description}{...}
{title:描述}

{pstd}
{opt nestreg} 通过顺序添加变量块来拟合嵌套模型，然后报告嵌套模型之间的比较测试。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection R nestregQuickstart:快速入门}

        {mansection R nestregRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:报告}

{phang}
{opt waldtable} 指定报告 Wald 测试结果的表格。
{opt waldtable} 是默认值。

{phang}
{opt lrtable} 指定报告似然比测试的表格。
如果指定了 {helpb weights:pweight}s、{cmd:vce(robust)} 选项或 
{cmd:vce(cluster} {it:clustvar}{cmd:)} 选项，则不允许使用此选项。 {opt lrtable}
在使用 {help svy_zh} 前缀时也不被允许。

{phang}
{opt quietly} 抑制来自
{it:{help nestreg##cmd_name:command_name}}的任何输出。

{phang}
{opt store(stub)} 指定每个 {cmd:nestreg} 拟合的模型都以 {cmd:_est_}{it:stub#} 的名称存储，其中 {it:#} 是从第一个到最后一个的嵌套顺序。


{marker remarks}{...}
{title:备注}

{pstd}
备注分为以下几部分：

{pmore2}
{help nestreg##nestreg:估计命令}{break}
{help nestreg##wald:Wald 测试}{break}
{help nestreg##lr:似然比测试}{break}
{help nestreg##programming:为 nestreg 编程}


{marker nestreg}{...}
{title:估计命令}

{pstd}
{cmd:nestreg} 在调用 {it:command_name} 之前，会从估计样本中去除共线预测变量和缺失值观察。

{marker cmd_name}{...}
{pstd}
以下 Stata 命令受到 {cmd:nestreg} 的支持：

{pmore}
{help betareg_zh},
{help clogit_zh},
{help cloglog_zh},
{help glm_zh},
{help intreg_zh},
{help logistic_zh},
{help logit_zh},
{help nbreg_zh},
{help ologit_zh},
{help oprobit_zh},
{help poisson_zh},
{help probit_zh},
{help qreg_zh},
{help regress_zh},
{help scobit_zh},
{help stcox_zh},
{help stcrreg_zh},
{help stintreg_zh},
{help streg_zh}，以及
{help tobit_zh}

{pstd}
对于 {help stcox_zh}、{help stcrreg_zh}、 
{help stintreg_zh} 或 {help streg_zh}，您不需要提供 {it:depvar}；但在其他情况下，{it:depvar} 是必需的。您必须为 {help intreg_zh} 提供两个 {it:depvar}。


{marker wald}{...}
{title:Wald 测试}

{pstd}
我们希望测试以下出生率预测变量的显著性： {cmd:medage}、{cmd:medagesq} 和 {cmd:region}
（已分为四个指示变量，{cmd:reg1}、{cmd:reg2}、{cmd:reg3} 和 {cmd:reg4}）。

{phang2}
{cmd:. webuse census4}
{p_end}
{phang2}
{cmd:. nestreg: regress brate (medage) (medagesq) (reg2-reg4)}
{p_end}

{pstd}
这个对 {cmd:nestreg} 的单次调用运行了 {help regress_zh} 三次，在每次运行中将预测变量块添加到模型中，如下所示：

{phang2}
{cmd:. regress brate medage}
{p_end}
{phang2}
{cmd:. regress brate medage medagesq}
{p_end}
{phang2}
{cmd:. regress brate medage medagesq reg2-reg4}
{p_end}

{pstd}
{cmd:nestreg} 收集了每个模型拟合的相应预测变量块的 F 统计量和模型 R 平方统计量。

{pstd}
第一个块的 F 统计量为 164.72，是对第一个块变量的联合显著性测试；它只是 {cmd:brate} 关于 {cmd:medage} 的回归的 F 统计量。第二个块的 F 统计量为 35.25，是对第二个块变量在回归中联合显著性的测试，包括第一个和第二个块变量。在我们的例子中，这就是 {cmd:medagesq} 在 {cmd:brate} 关于 {cmd:medage} 和 {cmd:medagesq} 的回归中的 F 测试。类似地，第三个块的 F 统计量为 8.85，对 {cmd:reg2}、{cmd:reg3} 和 {cmd:reg4} 在最终回归中的联合测试对应。

{marker lr}{...}
{title:似然比测试}

{pstd}
{cmd:nestreg} 命令提供了一种简单的语法，用于执行针对嵌套模型规范的似然比测试；另见 {manhelp lrtest R}。使用 {hi:[R] lrtest} 的第一个示例中的数据，我们希望联合测试以下低出生体重预测变量的显著性： {cmd:age}、{cmd:lwt}、{cmd:ptl} 和 {cmd:ht}。

{phang2}
{cmd:. webuse lbw}
{p_end}
{phang2}
{cmd:. xi: nestreg, lr: logistic low (i.race smoke ui) (age lwt ptl ht)}
{p_end}

{pstd}
完整模型的估计结果保留在 {cmd:e()} 中，因此我们可以在稍后使用 {cmd:estat} 和其他后估计命令。

{phang2}
{cmd:. estat gof}
{p_end}


{marker programming}{...}
{title:为 nestreg 编程}

{pstd}
如果您希望您的社区贡献命令 ({it:command_name}) 能与 {cmd:nestreg} 一起使用，它必须遵循 {help language_zh:standard Stata syntax} 并允许 {help if_zh} 限定符。此外，{it:command_name} 必须具有 {opt sw} 或 {opt swml} 作为程序属性；请参见 {manhelp program_properties P:程序属性}。如果 {it:command_name} 具有 {opt swml} 作为属性，{it:command_name} 必须将对数似然值存储在 {cmd:e(ll)} 中，并将模型的自由度存储在 {cmd:e(df_m)} 中。


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:nestreg} 将以下内容存储在 {cmd:r()} 中：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 矩阵}{p_end}
{p2col :{cmd:r(wald)}}与 Wald 表相对应的矩阵{p_end}
{p2col :{cmd:r(lr)}}与似然比表相对应的矩阵{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <nestreg.sthlp>}