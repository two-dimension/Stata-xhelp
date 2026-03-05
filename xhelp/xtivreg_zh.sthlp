{smcl}
{* *! version 1.2.2  15mar2019}{...}
{viewerdialog xtivreg "dialog xtivreg"}{...}
{vieweralsosee "[XT] xtivreg" "mansection XT xtivreg"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[XT] xtivreg postestimation" "help xtivreg postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] ivregress" "help ivregress_zh"}{...}
{vieweralsosee "[XT] xtabond" "help xtabond_zh"}{...}
{vieweralsosee "[XT] xteregress" "help xteregress"}{...}
{vieweralsosee "[XT] xthtaylor" "help xthtaylor_zh"}{...}
{vieweralsosee "[XT] xtreg" "help xtreg_zh"}{...}
{vieweralsosee "[XT] xtset" "help xtset_zh"}{...}
{viewerjumpto "Syntax" "xtivreg_zh##syntax"}{...}
{viewerjumpto "Menu" "xtivreg_zh##menu"}{...}
{viewerjumpto "Description" "xtivreg_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "xtivreg_zh##linkspdf"}{...}
{viewerjumpto "Options for RE model" "xtivreg_zh##options_re"}{...}
{viewerjumpto "Options for BE model" "xtivreg_zh##options_be"}{...}
{viewerjumpto "Options for FE model" "xtivreg_zh##options_fe"}{...}
{viewerjumpto "Options for FD model" "xtivreg_zh##options_fd"}{...}
{viewerjumpto "Examples" "xtivreg_zh##examples"}{...}
{viewerjumpto "Stored results" "xtivreg_zh##results"}{...}
{viewerjumpto "References" "xtivreg_zh##references"}
{help xtivreg:English Version}
{hline}{...}
{p2colset 1 17 19 2}{...}
{p2col:{bf:[XT] xtivreg} {hline 2}}面板数据模型的工具变量和两阶段最小二乘法{p_end}
{p2col:}({mansection XT xtivreg:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{phang}
广义最小二乘法随机效应（RE）模型

{p 8 16 2}{cmd:xtivreg} {depvar} [{it:{help varlist_zh:varlist_1}}] 
{cmd:(}{it:{help varlist_zh:varlist_2}} {cmd:=}
       {it:{help varlist_zh:varlist_iv}}{cmd:)} {ifin} 
[{cmd:, re} {it:{help xtivreg##reoptions:RE_options}}]


{phang}
间接效应（BE）模型

{p 8 16 2}{cmd:xtivreg} {depvar} [{it:{help varlist_zh:varlist_1}}]
{cmd:(}{it:{help varlist_zh:varlist_2}} {cmd:=}
       {it:{help varlist_zh:varlist_iv}}{cmd:)} {ifin} 
{cmd:, be} [{it:{help xtivreg##beoptions:BE_options}}]


{phang}
固定效应（FE）模型

{p 8 16 2}{cmd:xtivreg} {depvar} [{it:{help varlist_zh:varlist_1}}]
{cmd:(}{it:{help varlist_zh:varlist_2}} {cmd:=}
       {it:{help varlist_zh:varlist_iv}}{cmd:)} {ifin} 
{cmd:, fe} [{it:{help xtivreg##feoptions:FE_options}}]


{phang}
一阶差分（FD）估计器

{p 8 16 2}{cmd:xtivreg} {depvar} [{it:{help varlist_zh:varlist_1}}]
{cmd:(}{it:{help varlist_zh:varlist_2}} {cmd:=}
       {it:{help varlist_zh:varlist_iv}}{cmd:)} {ifin} 
{cmd:, fd} [{it:{help xtivreg##fdoptions:FD_options}}]


{marker reoptions}{...}
{synoptset 19 tabbed}{...}
{synopthdr :RE_options}
{synoptline}
{syntab:模型}
{synopt :{opt re}}使用随机效应估计器；默认选项{p_end}
{synopt :{opt ec:2sls}}使用 Baltagi 的 EC2SLS 随机效应估计器{p_end}
{synopt :{opt nosa}}使用 Baltagi-Chang 的方差分量估计量{p_end}
{synopt :{opt reg:ress}}将协变量视为外生变量，忽略工具变量{p_end}

{syntab:标准误/稳健性}
{synopt :{opth vce(vcetype)}}{it:vcetype} 可以是 {opt conventional}, 
         {opt r:obust}, {opt cl:uster} {it:clustvar}, {opt boot:strap}, 或
	 {opt jack:knife}{p_end}

{syntab:报告}
{synopt :{opt l:evel(#)}}设置置信水平；默认值为 {cmd:level(95)}{p_end}
{synopt :{opt first}}报告第一阶段估计{p_end}
{synopt :{opt sm:all}}报告 t 和 F 统计量而非 Z 和卡方统计量{p_end}
{synopt :{opt th:eta}}报告 theta{p_end}
{synopt :{it:{help xtivreg##re_display_options:display_options}}}控制
INCLUDE help shortdes-displayoptall

INCLUDE help shortdes-coeflegend
{synoptline}
{p2colreset}{...}
  
{marker beoptions}{...}
{synoptset 19 tabbed}{...}
{synopthdr :BE_options}
{synoptline}
{syntab:模型}
{synopt :{opt be}}使用间接效应估计器{p_end}
{synopt :{opt reg:ress}}将协变量视为外生变量，忽略工具变量{p_end}

{syntab:标准误/稳健性}
{synopt :{opth vce(vcetype)}}{it:vcetype} 可以是 {opt conventional},
       {opt r:obust}, {opt cl:uster} {it:clustvar}, {opt boot:strap}, 或
       {opt jack:knife}{p_end}

{syntab:报告}
{synopt :{opt l:evel(#)}}设置置信水平；默认值为 {cmd:level(95)}{p_end}
{synopt :{opt first}}报告第一阶段估计{p_end}
{synopt :{opt sm:all}}报告 {it:t} 和 {it:F} 统计量而非 {it:Z} 和卡方统计量{p_end}
{synopt :{it:{help xtivreg##be_display_options:display_options}}}控制
INCLUDE help shortdes-displayoptall

INCLUDE help shortdes-coeflegend
{synoptline}
{p2colreset}{...}

{marker feoptions}{...}
{synoptset 19 tabbed}{...}
{synopthdr :FE_options}
{synoptline}
{syntab:模型}
{synopt :{opt fe}}使用固定效应估计器{p_end}
{synopt :{opt reg:ress}}将协变量视为外生变量，忽略工具变量{p_end}

{syntab:标准误/稳健性}
{synopt :{opth vce(vcetype)}}{it:vcetype} 可以是 {opt conventional},
         {opt r:obust}, {opt cl:uster} {it:clustvar}, {opt boot:strap}, 或
         {opt jack:knife}{p_end}

{syntab:报告}
{synopt :{opt l:evel(#)}}设置置信水平；默认值为 {cmd:level(95)}{p_end}
{synopt :{opt first}}报告第一阶段估计{p_end}
{synopt :{opt sm:all}}报告 {it:t} 和 {it:F} 统计量而非 {it:Z} 和卡方统计量{p_end}
{synopt :{it:{help xtivreg##fe_display_options:display_options}}}控制
INCLUDE help shortdes-displayoptall

INCLUDE help shortdes-coeflegend
{synoptline}
{p2colreset}{...}
  
{marker fdoptions}{...}
{synoptset 19 tabbed}{...}
{synopthdr :FD_options}
{synoptline}
{syntab:模型}
{synopt :{opt nocons:tant}}抑制常数项{p_end}
{synopt :{opt fd}}请求使用一阶差分估计器{p_end}
{synopt :{opt reg:ress}}将协变量视为外生变量，忽略工具变量{p_end}

{syntab:标准误/稳健性}
{synopt :{opth vce(vcetype)}}{it:vcetype} 可以是 {opt conventional},
         {opt r:obust}, {opt cl:uster} {it:clustvar}, {opt boot:strap}, 或
         {opt jack:knife}{p_end}

{syntab:报告}
{synopt :{opt l:evel(#)}}设置置信水平；默认值为 {cmd:level(95)}{p_end}
{synopt :{opt first}}报告第一阶段估计{p_end}
{synopt :{opt sm:all}}报告 {it:t} 和 {it:F} 统计量而非 {it:Z} 和卡方统计量{p_end}
{synopt :{it:{help xtivreg##fd_display_options:display_options}}}控制
列和列格式、行间距、线宽和省略变量的显示{p_end}

INCLUDE help shortdes-coeflegend
{synoptline}
{p2colreset}{...}

{p 4 6 2}
必须指定面板变量。对于 {cmd:xtivreg, fd}，还必须指定时间变量。使用 {help xtset_zh}.{p_end}
{p 4 6 2}
{it:varlist_1} 和 {it:varlist_iv} 可以包含因子变量，除非
       使用 {cmd:fd} 估计器；见 {help fvvarlist_zh}.{p_end}
{p 4 6 2}
{it:depvar}、{it:varlist_1}、{it:varlist_2} 和 {it:varlist_iv} 可以包含时间序列运算符；见 {help tsvarlist_zh}.{p_end}
{p 4 6 2}
允许使用 {opt by} 和 {opt statsby}；见 {help prefix_zh}.{p_end}
{p 4 6 2}
{opt coeflegend} 不会出现在对话框中.{p_end}
{p 4 6 2}
请参见 {manhelp xtivreg_postestimation XT:xtivreg postestimation} 以获取估计后可用的功能.{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 纵向/面板数据 > 内生协变量 >}
     {bf:工具变量回归（FE、RE、BE、FD）}


{marker description}{...}
{title:描述}

{pstd}
{cmd:xtivreg} 提供五种不同的估计量，用于拟合某些右侧协变量为内生的面板数据模型。这些估计量是外生变量简单面板数据估计量的两阶段最小二乘法推广。带有 {cmd:be} 选项的 {cmd:xtivreg} 使用两阶段最小二乘法间接估计器。带有 {cmd:fe} 选项的 {cmd:xtivreg} 使用两阶段最小二乘法内部估计器。带有 {cmd:re} 选项的 {cmd:xtivreg} 使用两阶段最小二乘法随机效应估计器。有两种实现方式：来自 {help xtivreg##BV1987:Balestra 和 Varadharajan-Krishnakumar (1987)} 的 G2SLS 和 Baltagi 的 EC2SLS。Balestra 和 Varadharajan-Krishnakumar 的 G2SLS 是默认选项，因为其计算成本较低。Baltagi 的 EC2SLS 可以通过指定 {cmd:ec2sls} 选项来获得。带有 {cmd:fd} 选项的 {cmd:xtivreg} 请求使用两阶段最小二乘法一阶差分估计器。

{pstd}
请参见 {help xtivreg##B2013:Baltagi (2013)} 以获取关于含有内生协变量的面板数据模型的介绍。关于一阶差分估计器的推导和应用，见 {help xtivreg##AH1981:Anderson 和 Hsiao (1981)}。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection XT xtivregQuickstart:快速入门}

        {mansection XT xtivregRemarksandexamples:备注和示例}

        {mansection XT xtivregMethodsandformulas:方法和公式}

{pstd}
上述部分不包括在此帮助文件中。


{marker options_re}{...}
{title:RE模型选项}

{dlgtab:模型}

{phang}
{opt re} 请求使用 G2SLS 随机效应估计器。 {opt re} 是默认选项。

{phang}
{opt ec2sls} 请求使用 Baltagi 的 EC2SLS 随机效应估计器，代替默认的 Balestra 和 Varadharajan-Krishnakumar 估计器。

{phang}
{opt nosa} 指定使用 Baltagi-Chang 的方差分量估计量，而不使用默认的 Swamy-Arora 适配估计量。

{phang}
{opt regress} 指定将所有协变量视为外生变量，并忽略工具列表。指定 {opt regress} 将导致 {cmd:xtivreg} 拟合请求的面板数据回归模型，忽略 {it:varlist_iv}。

{dlgtab:标准误/稳健性}

INCLUDE help xt_vce_asymptall

{pmore}
{cmd:vce(conventional)}，默认情况下，使用常规推导的方差估计量来进行广义最小二乘法回归。

{pmore}
指定 {cmd:vce(robust)} 相当于指定 {cmd:vce(cluster} {it:panelvar}{cmd:)}；见
{mansection XT xtregMethodsandformulasxtreg,re:{it:xtreg, re}} 中的 {it:方法和公式}，该部分属于 {bf:[XT] xtreg}。

{dlgtab:报告}

{phang}
{opt level(#)}；见
{helpb estimation options##level():[R] 估计选项}。

{phang}
{opt first} 指定显示第一阶段回归。

{phang}
{opt small} 指定报告 t 统计量，而不是 Z 统计量，并报告 F 统计量，而不是卡方统计量。

{phang}
{opt theta} 指定输出应包含用于组合间接和固定估计量的 theta 的估计值。对于平衡数据，这是一个常数；对于不平衡数据，值的摘要将显示在输出的头部。

{marker re_display_options}{...}
INCLUDE help displayopts_list

{pstd}
{opt xtivreg} 选项中包含以下选项，但在对话框中未显示：

{phang}
{opt coeflegend}；见
     {helpb estimation options##coeflegend:[R] 估计选项}。


{marker options_be}{...}
{title:BE模型选项}

{dlgtab:模型}

{phang}
{opt be} 请求使用间接回归估计器。

{phang}
{opt regress} 指定将所有协变量视为外生变量，并忽略工具列表。指定 {opt regress} 将导致 {cmd:xtivreg} 拟合请求的面板数据回归模型，忽略 {it:varlist_iv}。

{dlgtab:标准误/稳健性}

INCLUDE help xt_vce_asymptall

{pmore}
{cmd:vce(conventional)}，默认情况下，使用常规推导的方差估计量来进行广义最小二乘法回归。

{pmore}
指定 {cmd:vce(robust)} 相当于指定 {cmd:vce(cluster} {it:panelvar}{cmd:)}；见
{mansection XT xtregMethodsandformulasxtreg,fe:{it:xtreg, fe}} 中的 {it:方法和公式}，该部分属于 {bf:[XT] xtreg}。

{dlgtab:报告}

{phang}
{opt level(#)}；见
{helpb estimation options##level():[R] 估计选项}。

{phang}
{opt first} 指定显示第一阶段回归。

{phang}
{opt small} 指定报告 t 统计量，而不是 Z 统计量，并报告 F 统计量，而不是卡方统计量。

{marker be_display_options}{...}
INCLUDE help displayopts_list

{pstd}
{opt xtivreg} 选项中包含以下选项，但在对话框中未显示：

{phang}
{opt coeflegend}；见
     {helpb estimation options##coeflegend:[R] 估计选项}。


{marker options_fe}{...}
{title:FE模型选项}

{dlgtab:模型}

{phang}
{opt fe} 请求使用固定效应（内部）回归估计器。  

{phang}
{opt regress} 指定将所有协变量视为外生变量，并忽略工具列表。指定 {opt regress} 将导致 {cmd:xtivreg} 拟合请求的面板数据回归模型，忽略 {it:varlist_iv}。

{dlgtab:标准误/稳健性}

INCLUDE help xt_vce_asymptall

{pmore}
{cmd:vce(conventional)}，默认情况下，使用常规推导的方差估计量来进行广义最小二乘法回归。

{pmore}
指定 {cmd:vce(robust)} 相当于指定 {cmd:vce(cluster} {it:panelvar}{cmd:)}；见
{mansection XT xtregMethodsandformulasxtreg,fe:{it:xtreg, fe}} 中的 {it:方法和公式}，该部分属于 {bf:[XT] xtreg}。

{dlgtab:报告}

{phang}
{opt level(#)}；见
{helpb estimation options##level():[R] 估计选项}。

{phang}
{opt first} 指定显示第一阶段回归。

{phang}
{opt small} 指定报告 t 统计量，而不是 Z 统计量，并报告 F 统计量，而不是卡方统计量。

{marker fe_display_options}{...}
INCLUDE help displayopts_list

{pstd}
{opt xtivreg} 选项中包含以下选项，但在对话框中未显示：

{phang}
{opt coeflegend}；见
     {helpb estimation options##coeflegend:[R] 估计选项}。


{marker options_fd}{...}
{title:FD模型选项}

{dlgtab:模型}

{phang}
{opt noconstant}; 见
 {helpb estimation options##noconstant:[R] 估计选项}。

{phang}
{opt fd} 请求使用一阶差分回归估计器。

{phang}
{opt regress} 指定将所有协变量视为外生变量，并忽略工具列表。指定 {opt regress} 将导致 {cmd:xtivreg} 拟合请求的面板数据回归模型，忽略 {it:varlist_iv}。

{dlgtab:标准误/稳健性}

INCLUDE help xt_vce_asymptall

{pmore}
{cmd:vce(conventional)}，默认情况下，使用常规推导的方差估计量来进行广义最小二乘法回归。

{pmore}
指定 {cmd:vce(robust)} 相当于指定 {cmd:vce(cluster} {it:panelvar}{cmd:)}；见
{mansection XT xtregMethodsandformulasxtreg,fe:{it:xtreg, fe}} 中的 {it:方法和公式}，该部分属于 {bf:[XT] xtreg}。

{dlgtab:报告}

{phang}
{opt level(#)}；见
{helpb estimation options##level():[R] 估计选项}。

{phang}
{opt first} 指定显示第一阶段回归。

{phang}
{opt small} 指定报告 t 统计量，而不是 Z 统计量，并报告 F 统计量，而不是卡方统计量。

{marker fd_display_options}{...}
{phang}
{it:display_options}：
{opt noci},
{opt nopv:alues},
{opt noomit:ted},
{opt vsquish},
{opth cformat(%fmt)},
{opt pformat(%fmt)},
{opt sformat(%fmt)}，以及
{opt nolstretch}；
    见 {helpb estimation options##display_options:[R] 估计选项}。

{pstd}
{opt xtivreg} 选项中包含以下选项，但在对话框中未显示：

{phang}
{opt coeflegend}；见
     {helpb estimation options##coeflegend:[R] 估计选项}。


{marker examples}{...}
{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse abdata}{p_end}

{pstd}一阶差分估计器{p_end}
{phang2}{cmd:. xtivreg n l2.n l(0/1).w l(0/2).(k ys) yr1981-yr1984}
                  {cmd:(l.n = l3.n), fd}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse nlswork}{p_end}

{pstd}固定效应模型{p_end}
{phang2}{cmd:. xtivreg ln_w age c.age#c.age not_smsa (tenure = union south), fe}

{pstd}广义最小二乘法随机效应模型{p_end}
{phang2}{cmd:. xtivreg ln_w age c.age#c.age not_smsa 2.race}
              {cmd:(tenure = union birth south), re}{p_end}
    {hline}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:xtivreg, re} 将以下内容存储到 {cmd:e()}：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观察数量{p_end}
{synopt:{cmd:e(N_g)}}组数量{p_end}
{synopt:{cmd:e(df_m)}}模型自由度{p_end}
{synopt:{cmd:e(df_rz)}}残差自由度{p_end}
{synopt:{cmd:e(g_min)}}最小组大小{p_end}
{synopt:{cmd:e(g_avg)}}平均组大小{p_end}
{synopt:{cmd:e(g_max)}}最大组大小{p_end}
{synopt:{cmd:e(Tcon)}}{cmd:1} 表示面板平衡，{cmd:0} 否则{p_end}
{synopt:{cmd:e(N_clust)}}集群数量{p_end}
{synopt:{cmd:e(sigma)}}附属参数（{cmd:gamma}, {cmd:lnormal}）{p_end}
{synopt:{cmd:e(sigma_u)}}面板级标准差{p_end}
{synopt:{cmd:e(sigma_e)}}epsilon_it 的标准差{p_end}
{synopt:{cmd:e(r2_w)}}内部模型的 R-squared{p_end}
{synopt:{cmd:e(r2_o)}}整体模型的 R-squared{p_end}
{synopt:{cmd:e(r2_b)}}间接模型的 R-squared{p_end}
{synopt:{cmd:e(chi2)}}卡方{p_end}
{synopt:{cmd:e(rho)}}rho{p_end}
{synopt:{cmd:e(F)}}模型 F 统计量（仅限 {cmd:small}）{p_end}
{synopt:{cmd:e(m_p)}}模型测试的 p 值{p_end}
{synopt:{cmd:e(thta_min)}}最小 theta{p_end}
{synopt:{cmd:e(thta_5)}}theta，第 5 百分位{p_end}
{synopt:{cmd:e(thta_50)}}theta，第 50 百分位{p_end}
{synopt:{cmd:e(thta_95)}}theta，第 95 百分位{p_end}
{synopt:{cmd:e(thta_max)}}最大 theta{p_end}
{synopt:{cmd:e(rank)}}{cmd:e(V)} 的秩{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:xtivreg}{p_end}
{synopt:{cmd:e(cmdline)}}输入的命令{p_end}
{synopt:{cmd:e(depvar)}}因变量名称{p_end}
{synopt:{cmd:e(ivar)}}表示组的变量{p_end}
{synopt:{cmd:e(tvar)}}表示组内时间的变量{p_end}
{synopt:{cmd:e(insts)}}工具{p_end}
{synopt:{cmd:e(instd)}}被工具化的变量{p_end}
{synopt:{cmd:e(model)}}{cmd:g2sls} 或 {cmd:ec2sls}{p_end}
{synopt:{cmd:e(small)}}如果指定，则为 {cmd:small}{p_end}
{synopt:{cmd:e(clustvar)}}集群变量名称{p_end}
{synopt:{cmd:e(chi2type)}}{cmd:Wald}; 模型卡方测试类型{p_end}
{synopt:{cmd:e(vce)}}{it:vcetype} 在 {cmd:vce()} 中指定{p_end}
{synopt:{cmd:e(vcetype)}}用于标注标准误的标题{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt:{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}
{synopt:{cmd:e(marginsok)}}{cmd:margins} 允许的预测{p_end}
{synopt:{cmd:e(marginsnotok)}}{cmd:margins} 不允许的预测{p_end}
{synopt:{cmd:e(asbalanced)}}因子变量 {cmd:fvset} 作为 {cmd:asbalanced}{p_end}
{synopt:{cmd:e(asobserved)}}因子变量 {cmd:fvset} 作为 {cmd:asobserved}{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:e(b)}}系数向量{p_end}
{synopt:{cmd:e(V)}}估计量的方差-协方差矩阵{p_end}
{synopt:{cmd:e(V_modelbased)}}模型基础方差{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 函数}{p_end}
{synopt:{cmd:e(sample)}}标记估计样本{p_end}

{pstd}
{cmd:xtivreg, be} 将以下内容存储到 {cmd:e()}：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观察数量{p_end}
{synopt:{cmd:e(N_g)}}组数量{p_end}
{synopt:{cmd:e(mss)}}模型平方和{p_end}
{synopt:{cmd:e(df_m)}}模型自由度{p_end}
{synopt:{cmd:e(rss)}}残差平方和{p_end}
{synopt:{cmd:e(df_r)}}残差自由度{p_end}
{synopt:{cmd:e(df_rz)}}经过间接变换后的残差自由度{p_end}
{synopt:{cmd:e(g_min)}}最小组大小{p_end}
{synopt:{cmd:e(g_avg)}}平均组大小{p_end}
{synopt:{cmd:e(g_max)}}最大组大小{p_end}
{synopt:{cmd:e(rs_a)}}调整后的 R-squared{p_end}
{synopt:{cmd:e(r2_w)}}内部模型的 R-squared{p_end}
{synopt:{cmd:e(r2_o)}}整体模型的 R-squared{p_end}
{synopt:{cmd:e(r2_b)}}间接模型的 R-squared{p_end}
{synopt:{cmd:e(N_clust)}}集群数量{p_end}
{synopt:{cmd:e(chi2)}}模型 Wald{p_end}
{synopt:{cmd:e(chi2_p)}}模型卡方测试的 p 值{p_end}
{synopt:{cmd:e(F)}} F 统计量（仅限 {cmd:small}）{p_end}
{synopt:{cmd:e(rmse)}}均方根误差{p_end}
{synopt:{cmd:e(rank)}}{cmd:e(V)} 的秩{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:xtivreg}{p_end}
{synopt:{cmd:e(cmdline)}}输入的命令{p_end}
{synopt:{cmd:e(depvar)}}因变量名称{p_end}
{synopt:{cmd:e(ivar)}}表示组的变量{p_end}
{synopt:{cmd:e(tvar)}}表示组内时间的变量{p_end}
{synopt:{cmd:e(insts)}}工具{p_end}
{synopt:{cmd:e(instd)}}被工具化的变量{p_end}
{synopt:{cmd:e(model)}}{cmd:be}{p_end}
{synopt:{cmd:e(small)}}如果指定，则为 {cmd:small}{p_end}
{synopt:{cmd:e(clustvar)}}集群变量名称{p_end}
{synopt:{cmd:e(vce)}}{it:vcetype} 在 {cmd:vce()} 中指定{p_end}
{synopt:{cmd:e(vcetype)}}用于标注标准误的标题{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt:{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}
{synopt:{cmd:e(marginsok)}}{cmd:margins} 允许的预测{p_end}
{synopt:{cmd:e(marginsnotok)}}{cmd:margins} 不允许的预测{p_end}
{synopt:{cmd:e(asbalanced)}}因子变量 {cmd:fvset} 作为 {cmd:asbalanced}{p_end}
{synopt:{cmd:e(asobserved)}}因子变量 {cmd:fvset} 作为 {cmd:asobserved}{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:e(b)}}系数向量{p_end}
{synopt:{cmd:e(V)}}估计量的方差-协方差矩阵{p_end}
{synopt:{cmd:e(V_modelbased)}}模型基础方差{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 函数}{p_end}
{synopt:{cmd:e(sample)}}标记估计样本{p_end}

{pstd}
{cmd:xtivreg, fd} 将以下内容存储到 {cmd:e()}：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观察数量{p_end}
{synopt:{cmd:e(N_g)}}组数量{p_end}
{synopt:{cmd:e(df_m)}}模型自由度{p_end}
{synopt:{cmd:e(rss)}}残差平方和{p_end}
{synopt:{cmd:e(df_r)}}残差自由度（仅限 {cmd:small}）{p_end}
{synopt:{cmd:e(df_rz)}}一阶差分回归后的残差自由度{p_end}
{synopt:{cmd:e(g_min)}}最小组大小{p_end}
{synopt:{cmd:e(g_avg)}}平均组大小{p_end}
{synopt:{cmd:e(g_max)}}最大组大小{p_end}
{synopt:{cmd:e(N_clust)}}集群数量{p_end}
{synopt:{cmd:e(sigma)}}附属参数（{cmd:gamma}, {cmd:lnormal}）{p_end}
{synopt:{cmd:e(corr)}}corr(u_i, Xb){p_end}
{synopt:{cmd:e(sigma_u)}}面板级标准差{p_end}
{synopt:{cmd:e(sigma_e)}}epsilon_it 的标准差{p_end}
{synopt:{cmd:e(r2_w)}}内部模型的 R-squared{p_end}
{synopt:{cmd:e(r2_o)}}整体模型的 R-squared{p_end}
{synopt:{cmd:e(r2_b)}}间接模型的 R-squared{p_end}
{synopt:{cmd:e(chi2)}}模型 Wald（不为 {cmd:small}）{p_end}
{synopt:{cmd:e(chi2_p)}}模型卡方测试的 p 值{p_end}
{synopt:{cmd:e(rho)}}rho{p_end}
{synopt:{cmd:e(F)}} F 统计量（仅限 {cmd:small}）{p_end}
{synopt:{cmd:e(rank)}}{cmd:e(V)} 的秩{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:xtivreg}{p_end}
{synopt:{cmd:e(cmdline)}}输入的命令{p_end}
{synopt:{cmd:e(depvar)}}因变量名称{p_end}
{synopt:{cmd:e(ivar)}}表示组的变量{p_end}
{synopt:{cmd:e(tvar)}}表示组内时间的变量{p_end}
{synopt:{cmd:e(insts)}}工具{p_end}
{synopt:{cmd:e(instd)}}被工具化的变量{p_end}
{synopt:{cmd:e(model)}}{cmd:fd}{p_end}
{synopt:{cmd:e(small)}}如果指定，则为 {cmd:small}{p_end}
{synopt:{cmd:e(clustvar)}}集群变量名称{p_end}
{synopt:{cmd:e(vce)}}{it:vcetype} 在 {cmd:vce()} 中指定{p_end}
{synopt:{cmd:e(vcetype)}}用于标注标准误的标题{p_end}
{synopt:{cmd:e(properties)}}{cmd:b V}{p_end}
{synopt:{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}
{synopt:{cmd:e(marginsok)}}{cmd:margins} 允许的预测{p_end}
{synopt:{cmd:e(marginsnotok)}}{cmd:margins} 不允许的预测{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:e(b)}}系数向量{p_end}
{synopt:{cmd:e(V)}}估计量的方差-协方差矩阵{p_end}
{synopt:{cmd:e(V_modelbased)}}模型基础方差{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 函数}{p_end}
{synopt:{cmd:e(sample)}}标记估计样本{p_end}

{marker references}{...}
{title:参考文献}

{marker AH1981}{...}
{phang}
Anderson, T. W., 和 C. Hsiao. 1981. 具有误差成分的动态模型估计。 {it:美国统计协会杂志} 76: 598-606.

{marker BV1987}{...}
{phang}
Balestra, P., 和 J. Varadharajan-Krishnakumar. 1987. 具有误差成分结构的同时方程组的全信息估计。 {it:计量经济理论} 3: 223-246.

{marker B2013}{...}
Baltagi, B. H. 2013.
{browse "http://www.stata.com/bookstore/eapd.html":{it:面板数据的计量经济分析}. 第5版}
Chichester, UK: Wiley.
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <xtivreg.sthlp>}