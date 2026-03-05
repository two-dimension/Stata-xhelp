{smcl}
{* *! version 1.0.4  19oct2017}{...}
{viewerdialog teffects "dialog teffects"}{...}
{vieweralsosee "[TE] teffects multivalued" "mansection TE teffectsmultivalued"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TE] teffects" "help teffects_zh"}{...}
{viewerjumpto "描述" "teffects multivalued##description"}{...}
{viewerjumpto "PDF文档链接" "teffects_multivalued_zh##linkspdf"}{...}
{viewerjumpto "备注" "teffects multivalued##remarks"}{...}
{viewerjumpto "示例" "teffects multivalued##examples"}{...}
{viewerjumpto "参考文献" "teffects multivalued##references"}
{help teffects_multivalued:English Version}
{hline}{...}
{p2colset 1 30 32 2}{...}
{p2col:{bf:[TE] teffects multivalued} {hline 2}}多值处理效应{p_end}
{p2col:}({mansection TE teffectsmultivalued:查看完整的PDF手册条目}){p_end}


{marker description}{...}
{title:描述}

{pstd}
本条目讨论在处理为多值时使用 {cmd:teffects}。本条目假定您已经熟悉潜在结果框架以及使用 {cmd:teffects} 命令进行二元处理。有关更多信息，请参见 
{bf:{mansection TE teffectsintro:[TE] teffects 导论}} 或
{bf:{mansection TE teffectsintroadvanced:[TE] teffects 进阶导论}}。

{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection TE teffectsmultivaluedRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在本帮助文件中。


{marker remarks}{...}
{title:备注: 引言}

{pstd}
当处理为二元时，每个参与者可以接受处理或不接受处理。相比之下，多值处理指的是每个参与者可以接受几种不同的处理之一，或者根本不接受处理。例如，在测试某种药物的疗效时，患者可以接受10毫克（mg）、20 mg、30 mg的剂量，或者根本不接受剂量。我们首先想要能够比较接受10 mg剂量的患者与接受无剂量的患者、接受20 mg剂量的患者与接受无剂量的患者、接受30 mg剂量的患者与接受无剂量的患者。一旦我们能够进行这些比较，我们然后可以比较30 mg剂量的疗效与20 mg剂量或10 mg剂量的疗效。

{pstd}
以经济学中的一个例子为重点，我们考虑一个失业人员，其可以参与一个综合技能培训项目，参加一个帮助求职者撰写简历的一天工作坊，或者选择不参与其中任何一个项目。我们想知道每个项目与不参与相比的效果；一旦我们知道这一点，我们就可以比较综合项目和一天项目的效果。

{pstd}
多值处理增加了必须估计的参数数量，并使符号更加复杂。然而，使用 {cmd:teffects} 命令处理多值时，与处理二元时相比并没有更大的困难。

{pstd}
您可以使用 {cmd:teffects ra}、{cmd:teffects ipw}、{cmd:teffects ipwra} 和
{cmd:teffects aipw} 来估计多值处理效应。然而，Abadie 和 Imbens 开发的理论
({help teffects multivalued##AI2006:2006},
 {help teffects multivalued##AI2012:2012}) 尚未扩展到处理多值处理，因此在这些情况下您不能使用
{cmd:teffects nnmatch} 或 {cmd:teffects psmatch}。

{pstd}
{help teffects multivalued##C2010:Cattaneo (2010)},
{help teffects multivalued##I2000:Imbens (2000)}, 和
{help teffects multivalued##W2010:Wooldridge (2010, sec. 21.6.3)}
讨论了多值处理的处理效应估计的各个方面。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse bdsianesi5}

{pstd}使用Poisson模型通过RA获得ATE和基础潜在结果，以避免非负工资（变量 {cmd:ed} 代表四个处理级别）{p_end}
{phang2}{cmd:. teffects ra (wage london eastern paed math7, poisson) (ed)}

{pstd}与上述相同，使用AIPW估计量{p_end}
{phang2}{cmd:. teffects aipw (wage london eastern paed math7, poisson)}
    {cmd:(ed math7 read7 maed paed)}

{pstd}与上述相同，报告所有四个潜在结果，而不是三个ATE{p_end}
{phang2}{cmd:. teeffects aipw (wage london eastern paed math7, poisson)}
       {cmd:(ed math7 read7 maed paed), pomeans}

{pstd}获得估计的ATE{p_end}
{phang2}{cmd:. contrast r.ed, nowald}


{marker references}{...}
{title:参考文献}

{marker AI2006}{...}
{phang}
Abadie, A. 和 G. W. Imbens. 2006. 用于平均处理效应的匹配估计量的大样本性质。
{it:Econometrica} 74: 235-267。

{marker AI2012}{...}
{phang}
------. 2012. 基于估计倾向得分的匹配。哈佛大学和国家经济研究局。
{browse "http://www.hks.harvard.edu/fs/aabadie/pscore.pdf"}。

{marker C2010}{...}
{phang}
Cattaneo, M. D. 2010. 在无偏性基础上的多值处理效应的有效半参数估计。
{it:Journal of Econometrics} 155: 138-154。

{marker I2000}{...}
{phang}
Imbens, G. W. 2000. 倾向得分在估计剂量反应函数中的作用。 {it:Biometrika} 87: 706-710。

{marker W2010}{...}
{phang}
Wooldridge, J. M. 2010。
{browse "http://www.stata.com/bookstore/cspd.html":{it:经济计量分析的截面和面板数据}}。
第2版。麻省理工学院出版社。剑桥，MA。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <teffects_multivalued.sthlp>}