{smcl}
{* *! version 1.4.7  29may2018}{...}
{viewerdialog rologit "dialog rologit"}{...}
{vieweralsosee "之前文档" "help prdocumented_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] rologit 后期估计" "help rologit postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] clogit" "help clogit_zh"}{...}
{vieweralsosee "[R] logistic" "help logistic_zh"}{...}
{vieweralsosee "[R] mlogit" "help mlogit_zh"}{...}
{vieweralsosee "[R] nlogit" "help nlogit_zh"}{...}
{vieweralsosee "[R] slogit" "help slogit_zh"}{...}
{viewerjumpto "语法" "rologit_zh##syntax"}{...}
{viewerjumpto "菜单" "rologit_zh##menu"}{...}
{viewerjumpto "描述" "rologit_zh##description"}{...}
{viewerjumpto "选项" "rologit_zh##options"}{...}
{viewerjumpto "示例" "rologit_zh##examples"}{...}
{viewerjumpto "数据组织说明" "rologit_zh##note"}{...}
{viewerjumpto "存储结果" "rologit_zh##results"}{...}
{viewerjumpto "参考文献" "rologit_zh##references"}
{help rologit:English Version}
{hline}{...}
{p2colset 1 16 18 2}{...}
{p2col:{bf:[R] rologit} {hline 2}}秩序逻辑回归{p_end}
{p2col:}({browse "http://www.stata.com/manuals15/rrologit.pdf":查看完整PDF手册条目}){p_end}
{p2colreset}{...}

{pstd}
{cmd:rologit} 已重命名为 {help cmrologit_zh}。{cmd:rologit} 继续有效，但从 Stata 16 开始，已不再是 Stata 的官方部分。这是原始帮助文件，我们将不再更新，因此某些链接可能不再有效。

{marker syntax}{...}
{title:语法}

{p 8 17 2}
{cmd:rologit} {depvar} {indepvars} {ifin}
[{it:{help rologit##weight:weight}}]{cmd:,}
   {opth gr:oup(varname)} 
   [{it:options}]

{synoptset 19 tabbed}{...}
{synopthdr:选项}
{synoptline}
{syntab:模型}
{p2coldent: * {opth gr:oup(varname)}}标识变量，用于连接选项{p_end}
{synopt :{opth off:set(varname)}}在模型中包含 {it:varname} ，其系数受约束为 1{p_end}
{synopt :{opt inc:omplete(#)}}使用 {it:#} 编码未排序的选项；默认值为 {cmd:incomplete(0)}{p_end}
{synopt :{opt rev:erse}}反转优先级顺序{p_end}
{synopt :{opt note:strhs}}保留组内不变的右侧变量{p_end}
{synopt :{opt ties(spec)}}处理平局的方法： {opt exactm}, {opt breslow}, {opt efron}, 或 {opt none}{p_end}

{syntab:标准误/稳健}
{synopt :{opth "vce(rologit##vcetype:vcetype)"}}{it:vcetype} 可以是 {opt oim}, {opt r:obust}, {opt cl:uster} {it:clustvar}, {opt boot:strap}, 或 {opt jack:knife}{p_end}

{syntab:报告}
{synopt :{opt l:evel(#)}}设置信任水平；默认值为 {cmd:level(95)}{p_end}
{synopt :{it:{help rologit##display_options:display_options}}}控制
包括帮助简述-displayoptall

{syntab:最大化}
{synopt :{it:{help rologit##maximize_options:maximize_options}}}控制最大化过程；很少使用{p_end}

包括帮助简述-coeflegend
{synoptline}
{p2colreset}{...}
{p 4 6 2}*{opt group(varname)} 是必需的。{p_end}
包括帮助 fvvarlist
{p 4 6 2}{cmd:bootstrap}、{cmd:by}、{cmd:fp}、{cmd:jackknife}、{cmd:rolling} 和 {cmd:statsby} 是允许的；请参见 {help prefix_zh}。{p_end}
{p 4 6 2}在 {help bootstrap_zh} 前缀下不允许使用权重。{p_end}
{marker weight}{...}
{p 4 6 2}{cmd:fweight}s、{cmd:iweight}s 和 {cmd:pweight}s 是允许的，
但在 {cmd:ties(efron)} 下不允许；见 {help weight_zh}。{p_end}
{p 4 6 2}{opt coeflegend} 不会出现在对话框中。{p_end}
{p 4 6 2}有关估计后可用特征，请参见 {manhelp rologit_postestimation R:rologit postestimation}。

{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 序数结果 > 秩序逻辑回归}

{marker description}{...}
{title:描述}

{pstd}
{cmd:rologit} 通过最大似然拟合秩序逻辑回归模型
({help rologit##BCH1981:Beggs, Cardell 和 Hausman 1981}）。这种模型也称为 Plackett-Luce 模型
({help rologit##M1995:Marden 1995}），也称为爆炸逻辑模型
({help rologit##PS1978:Punj 和 Staelin 1978}），以及基于选择的联合分析方法
({help rologit##HBBA2010:Hair 等 2010}）。

{pstd}
{cmd:rologit} 期望数据为长格式，类似于 {cmd:clogit}，其中每个排名的选项形成一个观察；所有与个体相关的观察通过在 {opt group()} 选项中指定的变量链接在一起。与 {cmd:clogit} 的区别在于，{cmd:rologit} 中的 {depvar} 记录了选项的排名，而在 {cmd:clogit} 中，{it:depvar} 仅用不等于零的值标记最佳选项。{cmd:rologit} 将 {it:depvar} 的相同得分视为平局。排名信息在“底部”可能不完整（最不喜欢的选项）。也就是说，未排序选项可以编码为 0 或可使用 {opt incomplete()} 选项指定的公共值。

{pstd}
如果您的数据记录仅包含唯一的选项，{cmd:rologit} 拟合的模型与 {cmd:clogit} 相同。

{marker options}{...}
{title:选项}

{dlgtab:模型}

{phang}
{opth group(varname)} 是必需的，它指定链接选项的标识变量
（数字或字符串），这些选项已经彼此比较并排序。

{phang}
{opth offset(varname)}；见
      {helpb estimation options##offset():[R] 估计选项}。

{phang}
{opt incomplete(#)} 指定用于编码未排序选项的数字值。假定未排序选项不如
已排序选项受欢迎（即，数据记录了最受欢迎选项的排名）。并不假定受试者对未排序选项是无差别的。{it:#} 默认值为 0。

{phang}
{opt reverse} 指定在优先级顺序中，较高的数字意味着较不受欢迎的选项。默认情况下，较高的值表示更受欢迎的选项。秩序逻辑模型并不是对称的，这意味着反转排序只是导致系数符号的变化。

{phang}
{opt notestrhs} 抑制独立变量在（至少部分）组内变化的检验。始终恒定的变量效应无法识别。例如，审核人员的性别不能直接影响他的排名；它只能通过与在选项之间变化的变量的交互作用来影响排名。

{phang}
{opt ties(spec)} 指定处理平局（选项之间的无差别的处理）的方法（请参见 {manhelp stcox ST} 获取详细信息）：

{p2colset 9 19 21 2}{...}
{p2col :{opt ex:actm}}精确边际似然（默认）{p_end}
{p2col :{opt bre:slow}}Breslow 方法（如果指定了 {cmd:pweight} 则默认）{p_end}
{p2col :{opt efr:on}}Efron 方法（如果是稳健 VCE 则默认）{p_end}
{p2col :{cmd:none}}不允许平局{p_end}
{p2colreset}{...}

{marker vcetype}{...}
{dlgtab:标准误/稳健}

{phang}
{opt vce(vcetype)} 指定报告的标准误的类型，包括 
从渐近理论导出的类型（{cmd:oim}），对某些类型的错误规格
稳健的（{cmd:robust}），允许组内相关（{cmd:cluster} {it:clustvar}），以及使用
自助法或切割方法（{cmd:bootstrap}、{cmd:jackknife}）；见 {help vce_option_zh:[R] {it:vce_option}}。

{pmore}
如果指定了 {cmd:ties(exactm)}，则 {it:vcetype} 只能是 {opt oim}、{opt bootstrap} 或 {opt jackknife}。

{dlgtab:报告}

{phang}
{opt level(#)}；见 {helpb estimation options##level():[R] 估计选项}。

包括帮助 displayopts_list

{marker maximize_options}{...}
{dlgtab:最大化}

{phang}
{it:maximize_options}： {opt iter:ate(#)}、{opt tr:ace},
[{cmd:{ul:no}}]{cmd:{ul:lo}}{cmd:g}、{opt tol:erance(#)}, 
{opt ltol:erance(#)}, 
{opt nrtol:erance(#)}，和 {opt nonrtol:erance}；
见 {manhelp maximize R}。这些选项很少使用。

{pstd}
以下选项在 {opt rologit} 中可用，但未显示在对话框中：

{phang}
{opt coeflegend}；见
     {helpb estimation options##coeflegend:[R] 估计选项}。

{marker examples}{...}
{title:示例}

{pstd}
您有数据表明受试者对最多四个选项进行了排名。{cmd:rologit}要求数据为“长格式”，
其中一个受试者的响应记录在不同的记录（观察）中。

{center:caseid    depvar   option   x1    x2   male}
{center:   1         4        1      1     0      0}
{center:   1         2        2      0     1      0}
{center:   1         3        3      0     0      0}
{center:   1         1        4      1     1      0}

{center:   2         1        1      3     0      0}
{center:   2         3        2      0     1      0}
{center:   2         3        3      2     1      0}
{center:   2         4        4      1     2      0}

{center:   3         1        1      3     1      1}
{center:   3         3        2      1     1      1}
{center:   3         4        4      0     1      1}

{center:   4         2        1      1     1      1}
{center:   4         1        2      1     1      1}
{center:   4         0        3      0     1      1}
{center:   4         0        4      1     0      1}

{pstd}
其中 0 表示受试者 4 只指定了他最喜欢的两个选项。在这个示例中

{pmore}
受试者 1 的排名为

{pmore2}
option_1 > option_3 > option_2 > option_4

{pmore}
受试者 2 的排名有平局，

{pmore2}
option_4 > option_2 == option_3 > option_1

{pmore}
受试者 3 排名了一个选项子集，忽略了选项 3，

{pmore2}
option_4 > option_2 > option_1

{pmore}
受试者 4 的排名不完整，

{pmore2}
option_1 > option_2 > (option_3,option_4)

{pstd}
受试者 4 排名 option_1 为所有四个选项中最高，排名 option_2 为剩下三个选项中最高。然而，他在 option_3 和 option_4 之间的偏好顺序未知。

{pmore}{cmd:. webuse rologitxmpl2}{p_end}

{pstd}
您可以为这四个选项拟合一个秩序逻辑模型，如下所示：

{pmore}{cmd:. rologit depvar x1 x2, group(caseid)}{p_end}

{pstd}
也可以制定更复杂的模型。我们可以进行似然比检验，检验男性和女性是否以相同的方式对选项进行排序（请注意，性别的主要效应未被识别），

{pmore}{cmd:. estimates store base}{p_end}
{pmore}{cmd:. rologit depvar x1 x2 male#c.x1 male#c.x2, group(caseid)}{p_end}
{pmore}{cmd:. estimates store full}{p_end}
{pmore}{cmd:. lrtest base full}{p_end}

{marker note}{...}
{title:数据组织说明}

{pstd}
有时您的数据将处于“宽格式”，其中选项的排名在一系列变量中描述，而不是与一个受试者相关的不同观察。

	caseid  opt1  opt2  opt3  opt4
	  1       4     2     3     1
	  2       1     3     3     4
	  3       1     3     .     4
	  4       2     1     0     0

{pstd}
您可能想要验证这条信息是否与上述长格式数据相同。Stata 命令 {help reshape_zh} 使得“长格式”和“宽格式”之间的转换相当简单，

{pmore}{cmd:. reshape long opt, i(caseid) j(option)}{p_end}
{pmore}{cmd:. drop if missing(opt)}{p_end}

{marker results}{...}
{title:存储结果}

{pstd}
{cmd:rologit} 在 {cmd:e()} 中存储以下内容：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观察数量{p_end}
{synopt:{cmd:e(ll_0)}}空模型的对数似然（"所有排名都是等可能的"）{p_end}
{synopt:{cmd:e(ll)}}对数似然{p_end}
{synopt:{cmd:e(df_m)}}模型自由度{p_end}
{synopt:{cmd:e(chi2)}}卡方{p_end}
{synopt:{cmd:e(p)}}模型检验的 p 值{p_end}
{synopt:{cmd:e(r2_p)}}伪 R^2{p_end}
{synopt:{cmd:e(N_g)}}组数{p_end}
{synopt:{cmd:e(g_min)}}最小组大小{p_end}
{synopt:{cmd:e(g_avg)}}平均组大小{p_end}
{synopt:{cmd:e(g_max)}}最大组大小{p_end}
{synopt:{cmd:e(code_inc)}}不完整偏好的值{p_end}
{synopt:{cmd:e(N_clust)}}集群数量{p_end}
{synopt:{cmd:e(rank)}}{cmd:e(V)} 的秩{p_end}
{synopt:{cmd:e(converged)}}{cmd:1} 如果收敛，{cmd:0} 否则{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:rologit}{p_end}
{synopt:{cmd:e(cmdline)}}输入的命令{p_end}
{synopt:{cmd:e(depvar)}}因变量名称{p_end}
{synopt:{cmd:e(group)}}{cmd:group()} 变量名称{p_end}
{synopt:{cmd:e(wtype)}}权重类型{p_end}
{synopt:{cmd:e(wexp)}}权重表达式{p_end}
{synopt:{cmd:e(title)}}估计输出中的标题{p_end}
{synopt:{cmd:e(clustvar)}}集群变量名称{p_end}
{synopt:{cmd:e(offset)}}线性偏移变量{p_end}
{synopt:{cmd:e(chi2type)}}{cmd:Wald} 或 {cmd:LR}；模型卡方检验的类型{p_end}
{synopt:{cmd:e(reverse)}}{cmd:reverse}，如果指定{p_end}
{synopt:{cmd:e(ties)}}{cmd:breslow}、{cmd:efron}、{cmd:exactm}{p_end}
{synopt:{cmd:e(vce)}}{it:vcetype} 在 {cmd:vce()} 中指定{p_end}
{synopt:{cmd:e(vcetype)}}用于标记标准误的标题{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt:{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}
{synopt:{cmd:e(marginsok)}}允许 {cmd:margins} 的预测{p_end}
{synopt:{cmd:e(marginsnotok)}}不允许 {cmd:margins} 的预测{p_end}
{synopt:{cmd:e(marginsdefault)}}对 {cmd:margins} 的默认 {opt predict()} 规格{p_end}
{synopt:{cmd:e(asbalanced)}}因子变量 {cmd:fvset} 为 {cmd:asbalanced}{p_end}
{synopt:{cmd:e(asobserved)}}因子变量 {cmd:fvset} 为 {cmd:asobserved}{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:e(b)}}系数向量{p_end}
{synopt:{cmd:e(V)}}估计量的方差-协方差矩阵{p_end}
{synopt:{cmd:e(V_modelbased)}}基于模型的方差{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 函数}{p_end}
{synopt:{cmd:e(sample)}}标记估计样本{p_end}
{p2colreset}{...}

{marker references}{...}
{title:参考文献}

{marker BCH1981}{...}
{phang}
Beggs, S.、S. Cardell 及 J. A. Hausman。1981。评估电动车的潜在需求。{it:经济计量学期刊} 17: 1-19。

{marker HBBA2010}{...}
{phang}
Hair, J. F., Jr.、W. C. Black、B. J. Babin 和 R. E. Anderson。2010。
{it:多变量数据分析}. 第7版。新泽西州上萨德河：皮尔逊。

{marker M1995}{...}
{phang}
Marden, J. I. 1995。{it:分析与建模排名数据}。
伦敦：查普曼与霍尔。

{marker PS1978}{...}
{phang}
Punj, G. N. 和 R. Staelin。1978。研究生商学院的选择过程。{it:市场营销研究期刊} 15: 588-598。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <rologit.sthlp>}