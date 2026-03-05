{smcl}
{* *! version 1.0.0  28apr2019}{...}
{viewerdialog cmrologit "dialog cmrologit"}{...}
{vieweralsosee "[CM] cmrologit" "mansection CM cmrologit"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[CM] cmrologit postestimation" "help cmrologit postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[CM] cmclogit" "help cmclogit_zh"}{...}
{vieweralsosee "[CM] cmroprobit" "help cmroprobit_zh"}{...}
{vieweralsosee "[CM] cmset" "help cmset_zh"}{...}
{vieweralsosee "[R] ologit" "help ologit_zh"}{...}
{viewerjumpto "语法" "cmrologit_zh##syntax"}{...}
{viewerjumpto "菜单" "cmrologit_zh##menu"}{...}
{viewerjumpto "描述" "cmrologit_zh##description"}{...}
{viewerjumpto "PDF文档链接" "cmrologit_zh##linkspdf"}{...}
{viewerjumpto "选项" "cmrologit_zh##options"}{...}
{viewerjumpto "示例" "cmrologit_zh##examples"}{...}
{viewerjumpto "存储结果" "cmrologit_zh##results"}{...}
{viewerjumpto "参考文献" "cmrologit_zh##references"}
{help cmrologit:English Version}
{hline}{...}
{p2colset 1 19 21 2}{...}
{p2col:{bf:[CM] cmrologit} {hline 2}}排序逻辑选择模型{p_end}
{p2col:}({mansection CM cmrologit:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 16 2}
{cmd:cmrologit}
{depvar}
{indepvars}
{ifin}
[{help cmrologit##weight:{it:weight}}]
[{cmd:,} {it:options}]

{synoptset 30 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:模型}
{synopt :{opt inc:omplete(#)}}使用 {it:#} 对未排序的替代方案进行编码；
默认值为 {cmd:incomplete(0)}{p_end}
{synopt :{opt rev:erse}}反转偏好顺序{p_end}
{synopt :{opt ties(spec)}}处理平局的方法： {cmd:exactm}、{cmd:breslow}、
{cmd:efron} 或 {cmd:none}{p_end}
{synopt :{opt altwise}}使用替代方式删除而不是案例方式删除{p_end}
{synopt :{opt note:strhs}}保留在案例内不变的右侧变量{p_end}
{synopt :{opth off:set(varname)}}将 {it:varname} 包含在模型中，其系数被约束为1{p_end}

{syntab:SE/稳健性}
{synopt :{opth vce(vcetype)}}{it:vcetype} 可以是 {cmd:oim}、
{opt r:obust}、{opt cl:uster} {it:clustvar}、{opt boot:strap}，
或 {opt jack:knife}{p_end}


{syntab:报告}
{synopt :{opt l:evel(#)}}设置置信水平；默认值为
{cmd:level(95)}{p_end}
{synopt :{it:{help cmrologit##display_options:display_options}}}控制
包含帮助短描述-displayoptall

{syntab:最大化}
{synopt :{it:{help cmrologit##maximize_options:maximize_options}}}控制最大化过程；很少使用{p_end}

包含帮助短描述-coeflegend
{synoptline}
{p2colreset}{...}
{p 4 6 2}
在使用 {cmd:cmrologit} 之前，您必须 {cmd:cmset} 数据；
请参见 {manhelp cmset CM}.{p_end}
包含帮助 fvvarlist2
{p 4 6 2}
{cmd:bootstrap}、 
{cmd:by}、 
{cmd:fp}、 
{cmd:jackknife} 和 
{cmd:statsby}
是允许的；请参见 {help prefix_zh}.{p_end}
包含帮助 weight_boot
{marker weight}{...}
{p 4 6 2}
{cmd:fweight}、 {cmd:iweight} 和 {cmd:pweight} 
是允许的，但在使用 {cmd:ties(efron)} 时不允许使用权重， 
在使用 {cmd:ties(exactm)} 时不允许使用 {cmd:pweight}；
请参见 {help weight_zh}.{p_end}
{p 4 6 2}
{cmd:coeflegend} 不会出现在对话框中。{p_end}
{p 4 6 2}
请参见 {manhelp cmrologit_postestimation CM:cmrologit postestimation} 以获取
估计后可用的功能。{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 选择模型 > 排序逻辑模型}


{marker description}{...}
{title:描述}

{pstd}
{cmd:cmrologit} 通过最大似然拟合排序逻辑回归模型
({help cmrologit##beggscardellhausman1981:Beggs、Cardell 和 Hausman 1981}）。
该模型也称为 Plackett-Luce 模型
({help cmrologit##marden1995:Marden 1995})，作为爆炸逻辑模型
({help cmrologit##punjstaelin1978:Punj 和 Staelin 1978})，以及选择基础的联合分析方法
({help cmrologit##hairblackbabinanderson2010:Hair 等 2010}).


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection CM cmrologitQuickstart:快速入门}

        {mansection CM cmrologitRemarksandexamples:备注和示例}

        {mansection CM cmrologitMethodsandformulas:方法和公式}

{pstd}
以上部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:模型}

{phang}
{opt incomplete(#)} 指定用于编码未排序替代方案的数值。
假设未排序的替代方案比排序的替代方案优先级低（即数据记录最偏好的替代方案的排序）。 
不能假设受访者在未排序的替代方案间是无差别的。 {it:#} 默认值为 0。

{phang}
{opt reverse} 指定在偏好顺序中，更高的数字意味着替代方案的吸引力较低。 
默认情况下，更高的值表示更具吸引力的替代方案。 
排序逻辑模型在这个意义上是不对称的，反转顺序只是导致系数符号变化。

{phang}
{opt ties(spec)} 指定处理平局的机制（替代方案间的无差别）（请参见 {manhelp stcox ST} 获取详细信息）：

            {cmdab:ex:actm}    精确边际似然（默认）
            {cmdab:bre:slow}   Breslow 方法（如果指定了 {cmd:pweight}，则为默认）
            {cmdab:efr:on}     Efron 方法（如果使用鲁棒 VCE，则为默认）
            {cmd:none}      不允许平局

{phang}
{opt altwise} 指定在因变量缺失值的情况下使用替代方式删除观测值。 
默认情况下使用案例方式删除；即，如果遇到任何缺失值，整个组成一个案例的观测组将被省略。 
此选项不适用于通过 {cmd:if} 或 {cmd:in} 限制词或 {cmd:by} 前缀排除的观测值；这些观测值始终按替代方式处理，无论是否指定了 {cmd:altwise}。

{phang}
{opt notestrhs} 抑制对独立变量在（至少一些）案例内变化的测试。 
变量的恒定效应无法识别。 
例如，一个评审者的性别不能直接影响他的排名；它只能通过与在替代方案之间变化的变量的相互作用影响排名。

{phang}
{opth offset(varname)}；请参见 {helpb estimation options:[R] 估计选项}。

{dlgtab:SE/稳健性}

{marker vcetype}{...}
{phang}
{opt vce(vcetype)} 指定报告的标准误差类型，包括源自渐近理论的类型（{cmd:oim}）、 
对某些类型模型失配鲁棒的类型（{cmd:robust}）、允许组内相关性的类型（{cmd:cluster} {it:clustvar}） 
以及使用自助法或留一法的方法（{cmd:bootstrap}、{cmd:jackknife}）；请参见 
{manhelpi vce_option R}。

{pmore}
如果指定了 {cmd:ties(exactm)}，则 {it:vcetype} 只能是 {cmd:oim}、 {cmd:bootstrap} 或 {cmd:jackknife}。

{dlgtab:报告}

{phang}
{opt level(#)}；请参见 {helpb estimation options:[R] 估计选项}。

包含帮助 displayopts_list

{marker maximize_options}{...}
{dlgtab:最大化}

{phang}
{it:maximize_options}：
{opt iter:ate(#)}、 
{opt tr:ace}、 
[{cmd:no}]{cmd:log}、 
{opt tol:erance(#)}、 
{opt ltol:erance(#)}、 
{opt nrtol:erance(#)}、 
和 {opt nonrtol:erance}；
请参见 {help maximize_zh:[R] 最大化}。这些选项很少使用。

{pstd}
以下选项在 {cmd:cmrologit} 中可用，但未显示在对话框中：

{phang}
{opt coeflegend}；请参见 {helpb estimation options:[R] 估计选项}。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse evignet}{p_end}
{phang2}{cmd:. cmset caseid, noalternatives}{p_end}

{pstd}拟合排序逻辑选择模型{p_end}
{phang2}{cmd:. cmrologit pref i.female age i.grades i.edufit i.workexp i.boardexp if job==1}

{pstd}对所有工作拟合模型并估计集群稳健标准误差{p_end}
{phang2}{cmd:. cmrologit pref job##(i.female i.grades i.edufit i.workexp), vce(cluster employer)}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:cmrologit} 在 {cmd:e()} 中存储以下内容：

{synoptset 25 tabbed}{...}
{p2col 5 25 29 2: 标量}{p_end}
{synopt :{cmd:e(N)}}观测数{p_end}
{synopt :{cmd:e(N_case)}}案例数{p_end}
{synopt :{cmd:e(N_ic)}}贝叶斯信息准则中的 N
(BIC){p_end}
{synopt :{cmd:e(N_clust)}}集群数{p_end}
{synopt :{cmd:e(df_m)}}模型自由度{p_end}
{synopt :{cmd:e(ll)}}对数似然{p_end}
{synopt :{cmd:e(ll_0)}}空模型的对数似然（"所有排名都是等概率"）{p_end}
{synopt :{cmd:e(chi2)}}卡方{p_end}
{synopt :{cmd:e(r2_p)}}伪 R-squared{p_end}
{synopt :{cmd:e(p)}}模型检验的 p 值{p_end}
{synopt :{cmd:e(code_inc)}}不完整偏好的值{p_end}
{synopt :{cmd:e(alt_min)}}替代方案的最小数量{p_end}
{synopt :{cmd:e(alt_avg)}}替代方案的平均数量{p_end}
{synopt :{cmd:e(alt_max)}}替代方案的最大数量{p_end}
{synopt :{cmd:e(rank)}}{cmd:e(V)}的级别{p_end}
{synopt :{cmd:e(converged)}}{cmd:1} 表示已收敛，{cmd:0} 表示未收敛{p_end}

{p2col 5 25 29 2: 宏}{p_end}
{synopt :{cmd:e(cmd)}}{cmd:cmrologit}{p_end}
{synopt :{cmd:e(cmdline)}}按键入的命令{p_end}
{synopt :{cmd:e(depvar)}}因变量名称{p_end}
{synopt :{cmd:e(caseid)}}案例 ID 变量名称{p_end}
{synopt :{cmd:e(wtype)}}权重类型{p_end}
{synopt :{cmd:e(wexp)}}权重表达式{p_end}
{synopt :{cmd:e(marktype)}}{cmd:casewise} 或 {cmd:altwise}，标记出类型{p_end}
{synopt :{cmd:e(key_N_ic)}}{cmd:cases}，贝叶斯信息标准准则（BIC）中 N 的关键{p_end}
{synopt :{cmd:e(title)}}估计输出中的标题{p_end}
{synopt :{cmd:e(clustvar)}}集群变量名称{p_end}
{synopt :{cmd:e(offset)}}线性偏移变量{p_end}
{synopt :{cmd:e(chi2type)}}{cmd:Wald} 或 {cmd:LR}；模型卡方检验类型{p_end}
{synopt :{cmd:e(reverse)}}{cmd:reverse}，如果已指定{p_end}
{synopt :{cmd:e(ties)}}{cmd:breslow}、 {cmd:efron}、 {cmd:exactm}{p_end}
{synopt :{cmd:e(vce)}}在 {cmd:vce()} 中指定的 {it:vcetype}{p_end}
{synopt :{cmd:e(vcetype)}}用于标注标准误差的标题{p_end}
{synopt :{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt :{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}
{synopt :{cmd:e(marginsok)}}通过 {cmd:margins} 允许预测{p_end}
{synopt :{cmd:e(marginsnotok)}}通过 {cmd:margins} 不允许预测{p_end}
{synopt :{cmd:e(marginsdefault)}} {cmd:margins} 的默认 {cmd:predict()} 规格{p_end}
{synopt :{cmd:e(asbalanced)}}因子变量 {cmd:fvset} 作为 {cmd:asbalanced}{p_end}
{synopt :{cmd:e(asobserved)}}因子变量 {cmd:fvset} 作为 {cmd:asobserved}{p_end}

{p2col 5 25 29 2: 矩阵}{p_end}
{synopt :{cmd:e(b)}}系数向量{p_end}
{synopt :{cmd:e(V)}}估计值的方差-协方差矩阵{p_end}
{synopt :{cmd:e(V_modelbased)}}基于模型的方差{p_end}

{p2col 5 25 29 2: 函数}{p_end}
{synopt :{cmd:e(sample)}}标记估计样本{p_end}
{p2colreset}{...}


{marker references}{...}
{title:参考文献}

{marker beggscardellhausman1981}{...}
{phang}
Beggs, S.、S. Cardell 和 J. A. Hausman. 1981. 评估电动车的潜在需求。 {it:经济计量学杂志} 17: 1-19.

{marker hairblackbabinanderson2010}{...}
{phang}
Hair, J. F., Jr.、W. C. Black、B. J. Babin 和 R. E. Anderson. 2010.
《多元数据分析》。第7版。新泽西州上萨德尔河： Pearson。

{marker marden1995}{...}
{phang}
Marden, J. I. 1995. 《分析和建模排名数据》。伦敦：Chapman & Hall。

{marker punjstaelin1978}{...}
{phang}
Punj, G. N. 和 R. Staelin. 1978. 研究生商学院的选择过程。 {it:市场研究杂志} 15: 588-598.
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <cmrologit.sthlp>}