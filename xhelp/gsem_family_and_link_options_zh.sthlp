{smcl}
{* *! version 1.2.5  14may2018}{...}
{viewerdialog "SEM Builder" "stata sembuilder"}{...}
{vieweralsosee "[SEM] gsem family-and-link options" "mansection SEM gsemfamily-and-linkoptions"}{...}
{vieweralsosee "[SEM] Intro 2" "mansection SEM Intro2"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[SEM] gsem" "help gsem_command_zh"}{...}
{vieweralsosee "[SEM] gsem path notation extensions" "help gsem_path_notation_extensions_zh"}{...}
{vieweralsosee "[SEM] sem and gsem path notation" "help sem_and_gsem_path_notation_zh"}{...}
{viewerjumpto "语法" "gsem_family_and_link_options_zh##syntax"}{...}
{viewerjumpto "描述" "gsem_family_and_link_options_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "gsem_family_and_link_options_zh##linkspdf"}{...}
{viewerjumpto "选项" "gsem_family_and_link_options_zh##options"}{...}
{viewerjumpto "备注" "gsem_family_and_link_options_zh##remarks"}{...}
{viewerjumpto "示例" "gsem_family_and_link_options_zh##examples"}
{help gsem_family_and_link_options:English Version}
{hline}{...}
{p2colset 1 39 41 2}{...}
{p2col:{bf:[SEM] gsem family-and-link options} {hline 2}}家族和连接选项{p_end}
{p2col:}({mansection SEM gsemfamily-and-linkoptions:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{cmd:gsem} {it:{help sem_and_gsem_path notation:路径}} ...{cmd:,} ...
    {it:family_and_link_options}

{synoptset 28}{...}
{synopthdr:family_and_link_options}
{synoptline}
{synopt :{opth f:amily(gsem_family_and_link_options##family:family)}}分布家族；默认是 {cmd:family(gaussian)}{p_end}
{synopt :{opth li:nk(gsem_family_and_link_options##link:link)}}连接函数；每个家族的默认值不同{p_end}

{synopt :{opt cloglog}}与 {cmd:family(bernoulli) link(cloglog)} 同义{p_end}
{synopt :{opt exponential}}与 {cmd:family(exponential) link(log)} 同义{p_end}
{synopt :{opt gamma}}与 {cmd:family(gamma) link(log)} 同义{p_end}
{synopt :{opt logit}}与 {cmd:family(bernoulli) link(logit)} 同义{p_end}
{synopt :{opt loglogistic}}与 {cmd:family(loglogistic) link(log)} 同义{p_end}
{synopt :{opt lognormal}}与 {cmd:family(lognormal) link(log)} 同义{p_end}
{synopt :{opt llogistic}}与 {cmd:family(llogistic) link(log)} 同义{p_end}
{synopt :{opt lnormal}}与 {cmd:family(lnormal) link(log)} 同义{p_end}
{synopt :{opt mlogit}}与 {cmd:family(multinomial) link(logit)} 同义{p_end}
{synopt :{opt nbreg}}与 {cmd:family(nbreg mean) link(log)} 同义{p_end}
{synopt :{opt ocloglog}}与 {cmd:family(ordinal) link(cloglog)} 同义{p_end}
{synopt :{opt ologit}}与 {cmd:family(ordinal) link(logit)} 同义{p_end}
{synopt :{opt oprobit}}与 {cmd:family(ordinal) link(probit)} 同义{p_end}
{synopt :{opt poisson}}与 {cmd:family(poisson) link(log)} 同义{p_end}
{synopt :{opt probit}}与 {cmd:family(bernoulli) link(probit)} 同义{p_end}
{synopt :{opt regress}}与 {cmd:family(gaussian) link(identity)} 同义{p_end}
{synopt :{opt weibull}}与 {cmd:family(weibull) link(log)} 同义{p_end}

{synopt :{opth exp:osure(varname:varname_e)}}包含 ln({it:varname_e})，系数限制为 1{p_end}
{synopt :{opth off:set(varname:varname_o)}}包含 {it:varname_o}，系数限制为 1{p_end}
{synoptline}

{marker family}{...}
{synopthdr:family}
{synoptline}
{synopt :{opt gau:ssian} [{cmd:,} {it:{help gsem_family_and_link_options##opts_table:options}}]}高斯（正态）；默认值{p_end}
{synopt :{opt be:rnoulli}}伯努利{p_end}
{synopt :{opt bet:a}}贝塔{p_end}
{synopt :{opt bin:omial} [{it:#} | {varname}]}二项；默认的二项试验数量为 1{p_end}
{synopt :{opt o:rdinal}}有序{p_end}
{synopt :{opt m:ultinomial}}多项{p_end}
{synopt :{opt poi:sson} [{cmd:,} {it:{help gsem_family_and_link_options##poisson:poisson}}]}泊松{p_end}
{synopt :{opt nb:inomial} [{cmd:mean} | {cmdab:cons:tant}]}负二项；默认的离散度为 {cmd:mean}{p_end}
{synopt :{opt e:xponential} [{cmd:,} {it:{help gsem_family_and_link_options##survival:survival}}]}指数{p_end}
{synopt :{opt gam:ma} [{cmd:,} {it:{help gsem_family_and_link_options##survival:survival}}]}伽马{p_end}
{synopt :{opt logl:ogistic} [{cmd:,} {it:{help gsem_family_and_link_options##survival:survival}}]}对数逻辑{p_end}
{synopt :{opt logn:ormal} [{cmd:,} {it:{help gsem_family_and_link_options##survival:survival}}]}对数正态{p_end}
{synopt :{opt w:eibull} [{cmd:,} {it:{help gsem_family_and_link_options##survival:survival}}]}韦布尔{p_end}
{synopt :{opt pointmass} {it:#}}在 {it:#} 的点质量密度{p_end}
{synoptline}

{marker link}{...}
{synopthdr:link}
{synoptline}
{synopt :{opt iden:tity}}恒等{p_end}
{synopt :{opt log}}对数{p_end}
{synopt :{opt logit}}逻辑{p_end}
{synopt :{opt prob:it}}概率{p_end}
{synopt :{opt clog:log}}补充对数{p_end}
{synoptline}

{marker opts_table}{...}
{synopthdr:options}
{synoptline}
{synopt :{opth ld:epvar(varname)}}区间响应数据的下限{p_end}
{synopt :{opth ud:epvar(varname)}}区间响应数据的上限{p_end}
{synopt :{cmdab:lc:ensored(}{varname}|{it:#}{cmd:)}}左检索的下限{p_end}
{synopt :{cmdab:rc:ensored(}{varname}|{it:#}{cmd:)}}右检索的上限{p_end}
{synoptline}
{p 4 6 2}
仅允许在 {cmd:family(gaussian)} 和 {cmd:link(identity)} 下使用。
{p_end}

{marker poisson}{...}
{synopthdr:poisson}
{synoptline}
{synopt :{cmdab:lt:runcated(}{varname}|{it:#}{cmd:)}}左截断的下限{p_end}
{synoptline}

{marker survival}{...}
{synopthdr:survival}
{synoptline}
{synopt :{cmdab:lt:runcated(}{varname}|{it:#}{cmd:)}}左截断的下限{p_end}
{synopt :{opth fail:ure(varname)}}失败事件指示器{p_end}
{synopt :{opt ph}}比例风险参数化{p_end}
{synopt :{opt aft}}加速失效时间参数化{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
{opt ph} 仅在家族 {cmd:exponential} 和 {opt weibull} 中允许。
{p_end}
{p 4 6 2}
{opt aft} 仅在家族 {cmd:exponential}、{cmd:gamma}、{cmd:loglogistic}、{cmd:lognormal} 和 {cmd:weibull} 中允许。
{p_end}

{pstd}
如果您同时指定了 {cmd:family()} 和 {cmd:link()}，并非所有组合都是合理的。
可以选择以下组合：

                                 identity  log  logit  probit  cloglog
            {hline 60}
            Gaussian                D       x
            Bernoulli                             D      x        x
            beta                                  D      x        x
            binomial                              D      x        x
            ordinal                               D      x        x
            multinomial                           D
            Poisson                         D
            negative binomial               D
            exponential                     D
            Weibull                         D
            gamma                           D
            loglogistic                     D
            lognormal                       D
            pointmass               D
	    {hline 60}
            D 表示默认值。


{marker description}{...}
{title:描述}

{pstd}
{cmd:gsem} 不仅允许形式为 
y_i = {bf:x}_i beta + u_i 的模型，还允许

           g{E(y_i)} = {bf:x}_i beta
                 y_i sim F

{pstd}
在此，您可以从菜单中选择 F 和 g()。F 被称为家族，g() 被称为连接。一个选择集合是高斯分布作为 F 和恒等函数作为 g()。在这种情况下，{cmd:gsem} 复制线性回归。g()和 F 的其他组合产生其他流行模型，包括逻辑回归（也称为逻辑回归）、概率、 multinomial logit、泊松回归等。 


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection SEM gsemfamily-and-linkoptionsRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{opth family:(gsem family and link options##family:family)} 和
{opth link:(gsem family and link options##family:linkname)}
     指定 F 和 g()。如果都未指定，则假定为线性回归。

{pmore} 
     两个家族允许可选参数：

{phang2}
{cmd:family(binomial} [{it:#} | {varname}]{cmd:)}
    指定数据为二项形式，即响应变量记录来自一系列伯努利试验的成功次数。试验次数可以指定为常数，或者指定为允许试验次数在观察中变化的 varname，也可以不指定。在最后一种情况下，试验次数等同于指定 {cmd:family(bernoulli)}。

{phang2} 
{cmd:family(nbinomial} [{cmd:mean} | {cmd:constant}]{cmd:)}
     指定负二项模型，即具有过度离散性的泊松模型。然而要注意，即使泊松模型在模型中包含潜在变量时，也可能会出现过度离散。我们可以使用“条件过度离散”来描述超过潜在变量所暗示的离散度。

{pmore2} 
     这种条件过度离散可以采用两种形式。在均值过度离散中，条件过度离散是条件（预测）均值的线性函数。常数过度离散是指条件过度离散当然是常数。

{pmore2}
     如果不指定 {cmd:mean} 或 {cmd:constant}，则假定为 {cmd:mean}。 

{pmore}
{cmd:family(pointmass} {it:#}{cmd:)} 是在同时指定 {opt lclass()} 时允许的特殊家族。

{phang} 
{cmd:cloglog}, 
{cmd:exponential}, 
{cmd:gamma}, 
{cmd:logit}, 
{cmd:loglogistic}, 
{cmd:lognormal}, 
{cmd:llogistic}, 
{cmd:lnormal}, 
{cmd:mlogit}, 
{cmd:nbreg}, 
{cmd:ocloglog}, 
{cmd:ologit}, 
{cmd:oprobit}, 
{cmd:poisson}, 
{cmd:probit},
{cmd:regress},
和 
{cmd:weibull}
是指定流行模型的简写。 

{phang}
{opth exposure:(varname:varname_e)} 和 {opth offset:(varname:varname_o)}
    最常与家族 {cmd:poisson} 和 {cmd:nbreg} 一起使用，通常涉及计数模型。

{pmore}
    {cmd:exposure()} 指定一个变量，反映每个观察的暴露程度——通常以时间单位衡量——在其上计数了响应事件。  
    如果一个观察的暴露时间是另一个的两倍，并且其他条件相同，那么会期望计数到两倍的事件。 
    为了假设这一点，ln(varname_e) 被放入
    {bf:x}_i beta 中，系数限制为 1。

{pmore}
    {cmd:offset()} 将 {it:varname_o} 放入 
    {bf:x}_i beta 中，系数限制为 1。
    {cmd:offset()} 只是另一个指定 {cmd:exposure()} 的方式，其中偏移变量是暴露量的对数。 

{pmore}
    如果没有指定 {cmd:exposure()} 或 {cmd:offset()}，则假定观察具有相等的暴露量。 

{phang}
{opth ldepvar(varname)} 和 {opth udepvar(varname)} 表示每个观察可以是点数据、区间数据、左截断数据或右截断数据。给定观察的数据类型由 {it:y_i} 和 {it:varname} 中的值决定。以下规范是等价的：

{pmore2}
{it:depvar1} {cmd:<-} {cmd:...} {cmd:,} {cmd:family(gaussian, udepvar(}{it:depvar2}{cmd:))}

{pmore2}
{it:depvar2} {cmd:<-} {cmd:...} {cmd:,} {cmd:family(gaussian, ldepvar(}{it:depvar1}{cmd:))}

{pmore}
因此仅允许使用 {opt ldepvar()} 或 {opt udepvar()} 中的一个。
在任何情况下，{it:depvar1} 和 {it:depvar2} 应具有以下形式：

             数据类型 {space 16} {it:depvar1}  {it:depvar2}
             {hline 46}
             点数据{space 10}{it:a} = [{it:a},{it:a}]{space 4}{it:a}{space 8}{it:a} 
             区间数据{space 11}[{it:a},{it:b}]{space 4}{it:a}{space 8}{it:b}
             左截断数据{space 3}(-inf,{it:b}]{space 4}{cmd:.}{space 8}{it:b}
             右截断数据{space 3}[{it:a},inf){space 4}{it:a}{space 8}{cmd:.} 
             {hline 46}

{phang}
{cmd:lcensored(}{varname}|{it:#}{cmd:)} 和
{opt rcensored(varname|#)} 指示分别左截断和右截断的下限和上限。只能指定一个。

{pmore}
{opt lcensored(arg)} 指定 {it:y_i} {ul:<} {it:arg} 的观察为左截断，所有其他观察不是。

{pmore}
{opt rcensored(arg)} 指定 {it:y_i} {ul:<} {it:arg} 的观察为右截断，所有其他观察不是。

{pmore}
{opt lcensored()} 和 {opt rcensored()} 不能与 {opt ldepvar()} 或 {opt udepvar()} 结合使用。

{phang}
{cmd:ltruncated(}{varname}|{it:#}{cmd:)} 指示截断的下限。

{pmore}
{opt ltruncated(arg)} 指定分布在 {it:arg} 左侧截断，意味着 {it:y_i} {ul:<} {it:arg} 不在对应分布家族的支持内。此选项重新缩放基础密度函数，以适应 {it:y_i} 的截断支持。这意味着，{it:y_i} 的值小于或等于 {it:arg} 不贡献于似然函数。对于生存家族，这意味着时间（存在时间）从 {it:arg} 开始，而不是从 0 开始。

{phang}
{opt failure(varname)} 指定失败事件。

{pmore}
如果未指定 {opt failure()}，则假定所有观察均指示失败。

{pmore}
如果指定了 {opt failure(varname)}，则 {it:varname} 被解释为指示变量；0 和缺失值表示被截断，所有其他值被解释为表示失败。

{phang}
{opt ph} 指定比例风险参数化，并在家族 {opt exponential} 和 {opt weibull} 中允许。这是这些家族的默认参数化。

{phang}
{opt aft} 指定加速失效时间参数化，并在家族 {opt exponential}、{opt gamma}、{opt loglogistic}、{opt lognormal} 和 {opt weibull} 中允许。这是 {opt exponential} 和 {opt weibull} 的可选参数化，但是其他家族的唯一参数化。


{marker remarks}{...}
{title:备注}

{pstd}
请参见
{it:{mansection SEM gsemfamily-and-linkoptionsRemarksandexamples:备注和示例}}
以获取更多信息。 


{marker examples}{...}
{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse gsem_1fmm}{p_end}

{pstd}使用伯努利家族和概率链接拟合测量模型，以建模每个响应{p_end}
{phang2}{cmd:. gsem (X -> x1 x2 x3 x4), family(bernoulli) link(probit)}{p_end}

{pstd}使用 {cmd:probit} 快捷方式拟合上述模型{p_end}
{phang2}{cmd:. gsem (X -> x1 x2 x3 x4), probit}{p_end}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse gsem_lbw}{p_end}

{pstd}拟合一个有一个逻辑回归和一个泊松的模型{p_end}
{phang2}{cmd:. gsem (low <- ptl age smoke ht lwt i.race ui, logit)}{break}
	{cmd:(ptl <- age smoke ht, poisson)}{p_end}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse gsem_sysdsn1}{p_end}

{pstd}拟合一个多项逻辑回归模型{p_end}
{phang2}{cmd:. gsem (i.insure <- i.nonwhite age i.male), mlogit}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <gsem_family_and_link_options.sthlp>}