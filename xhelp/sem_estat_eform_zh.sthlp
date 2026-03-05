{smcl}
{* *! version 1.0.11  25sep2018}{...}
{viewerdialog estat "dialog gsem_estat, message(-eform-) name(gsem_estat_eform)"}{...}
{vieweralsosee "[SEM] estat eform" "mansection SEM estateform"}{...}
{findalias asgsemlogit}{...}
{findalias asgsemcombined}{...}
{findalias asgsemexp}{...}
{findalias asgsemllog}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[SEM] gsem" "help gsem_command_zh"}{...}
{vieweralsosee "[SEM] gsem postestimation" "help gsem_postestimation_zh"}{...}
{vieweralsosee "[SEM] Intro 7" "mansection SEM Intro7"}{...}
{viewerjumpto "Syntax" "sem_estat_eform_zh##syntax"}{...}
{viewerjumpto "Menu" "sem_estat_eform_zh##menu"}{...}
{viewerjumpto "Description" "sem_estat_eform_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "sem_estat_eform_zh##linkspdf"}{...}
{viewerjumpto "Options" "sem_estat_eform_zh##options"}{...}
{viewerjumpto "Remarks" "sem_estat_eform_zh##remarks"}{...}
{viewerjumpto "Examples" "sem_estat_eform_zh##examples"}
{help sem_estat_eform:English Version}
{hline}{...}
{p2colset 1 22 20 2}{...}
{p2col:{bf:[SEM] estat eform} {hline 2}}显示指数化系数{p_end}
{p2col:}({mansection SEM estateform:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 14 2}
{cmd:estat} {cmd:eform}
[{it:eqnamelist}]
[{cmd:,}
{opt l:evel(#)}
{it:{help sem_estat_eform##display_options:display_options}}]

{phang}
其中 {it:eqnamelist} 是方程名称的列表。在 {cmd:gsem} 中， 
    方程名称对应于响应变量的名称。 
    如果未指定 {it:eqnamelist}，则显示第一个方程的指数化结果。


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > SEM（结构方程模型） > 其他 >}
     {bf:显示指数化系数}


{marker description}{...}
{title:描述}

{pstd}
{cmd:estat eform} 用于 {cmd:gsem} 后，但不用于 {cmd:sem}。

{pstd}
{cmd:gsem} 报告系数。
您可以在估计后使用 {cmd:estat} {cmd:eform} 获取指数化系数及其标准误差，以重新显示结果。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection SEM estateformRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{opt level(#)}; 见 {helpb estimation options##level():[R] 估计选项}; 
默认为 {cmd:level(95)}。 

{marker display_options}{...}
{phang}
{it:display_options}
     控制因子变量等的显示。
     允许的 {it:display_options} 有
{opt noci},
{opt nopv:alues},
{opt noomit:ted},
{opt vsquish},
{opt noempty:cells},
{opt base:levels},
{opt allbase:levels},
{opt nofvlab:el},
{opt fvwrap(#)},
{opt fvwrapon(style)},
{opth cformat(%fmt)},
{opt pformat(%fmt)},
{opt sformat(%fmt)}，以及
{opt nolstretch}。
详见 {helpb estimation options##display_options:[R] 估计选项}。


{marker remarks}{...}
{title:备注}

{pstd}
在某些广义线性响应函数中，指数化系数具有特别的意义。这些特殊意义如下：

            常用名称   家族         链接    exp(coef) 的含义
	    {hline 60}
            logit         Bernoulli     logit   赔率比
            ologit        ordinal       logit   赔率比
            mlogit        multinomial   logit   相对风险比
            Poisson       Poisson       log     发生率比
            nbreg         nbreg         log     发生率比
	    {hline 60}

            生存分布       exp(coef) 的含义
	    {hline 60}
            指数分布                 危险比
            Weibull                     危险比
            gamma                       时间比
            loglogistic                 时间比
            lognormal                   时间比
	    {hline 60}

{pstd}
见 {findalias gsemlogit} 和 {findalias gsemcombined}。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse gsem_lbw}{p_end}

{pstd}拟合一个包含一个逻辑回归和一个泊松回归的模型{p_end}
{phang2}{cmd:. gsem (low <- ptl age smoke ht lwt i.race ui, logit)}{break}
        {cmd:(ptl <- age smoke ht, poisson)}{p_end}

{pstd}显示逻辑回归的赔率比{p_end}
{phang2}{cmd:. estat eform low}{p_end}

{pstd}显示泊松回归的发生率比{p_end}
{phang2}{cmd:. estat eform ptl}{p_end}

{pstd}显示赔率比和发生率比{p_end}
{phang2}{cmd:. estat eform low ptl}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <sem_estat_eform.sthlp>}