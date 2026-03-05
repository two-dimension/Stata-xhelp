{smcl}
{* *! version 1.1.3  14may2018}{...}
{viewerdialog "SEM Builder" "stata sembuilder"}{...}
{vieweralsosee "[SEM] gsem 模型描述选项" "mansection SEM gsemmodeldescriptionoptions"}{...}
{vieweralsosee "[SEM] 介绍 2" "mansection SEM Intro2"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[SEM] gsem" "help gsem_command_zh"}{...}
{vieweralsosee "[SEM] sem 和 gsem 选项 constraints()" "help sem and gsem option constraints"}{...}
{vieweralsosee "[SEM] sem 和 gsem 选项 covstructure()" "help sem and gsem option covstructure"}{...}
{vieweralsosee "[SEM] sem 和 gsem 选项 from()" "help sem and gsem option from"}{...}
{vieweralsosee "[SEM] sem 和 gsem 选项 reliability()" "help sem and gsem option reliability"}{...}
{vieweralsosee "[SEM] sem 和 gsem 路径表示法" "help sem and gsem path notation"}{...}
{viewerjumpto "语法" "gsem_model_options_zh##syntax"}{...}
{viewerjumpto "描述" "gsem_model_options_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "gsem_model_options_zh##linkspdf"}{...}
{viewerjumpto "选项" "gsem_model_options_zh##options"}{...}
{viewerjumpto "备注" "gsem_model_options_zh##remarks"}{...}
{viewerjumpto "示例" "gsem_model_options_zh##examples"}
{help gsem_model_options:English Version}
{hline}{...}
{p2colset 1 41 43 2}{...}
{p2col:{bf:[SEM] gsem 模型描述选项} {hline 2}}模型描述选项{p_end}
{p2col:}({mansection SEM gsemmodeldescriptionoptions:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{cmd:gsem} {it:{help sem_and_gsem_path notation:路径}} ...{cmd:,} ...
    {it:模型描述选项}

{synoptset 28 tabbed}{...}
{synopthdr:模型描述选项}
{synoptline}
{synopt:{opt family()}, {cmd:link()}, ...}见 {helpb gsem family and link options:[SEM] gsem family-and-link options}{p_end}

{p2coldent :* {helpb sem and gsem path notation:{ul:cov}ariance()}}用于协方差处理的路径表示法{p_end}
{p2coldent :* {helpb sem and gsem path notation:{ul:var}iance()}}用于方差处理的路径表示法{p_end}
{p2coldent :* {helpb sem and gsem path notation:{ul:mean}s()}}用于均值处理的路径表示法{p_end}

{p2coldent :* {helpb sem and gsem option covstructure:{ul:covstr}ucture()}}对协方差施加限制的替代方法

{synopt :{opt col:linear}}保留共线变量{p_end}
{synopt :{opt nocons:tant}}不拟合截距{p_end}
{synopt :{opt noasis}}从 Bernoulli 模型中省略完美预测因子{p_end}
{synopt :{opt noanchor}}不应用默认的锚定{p_end}
{synopt :{opt forcenoanchor}}程序员选项{p_end}

{p2coldent :* {helpb sem and gsem option reliability:{ul:rel}iability()}}测量变量的可靠性{p_end}

{synopt :{helpb sem and gsem option constraints:{ul:const}raints()}}指定约束{p_end}
{synopt :{helpb sem and gsem option from:from()}}指定起始值{p_end}
{synoptline}
{p 4 6 2}
* 选项可以多次指定。
{p_end}


{marker description}{...}
{title:描述}

{pstd}
{it:路径} 和上述选项描述了将通过 {cmd:gsem} 拟合的模型。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection SEM gsemmodeldescriptionoptionsRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{cmd:family()} 和 {cmd:link()}
     指定分布和链接函数，如 {cmd:family(poisson)} {cmd:link(log)},
     用于广义线性响应。可以使用许多同义词，因此您可以仅指定 {cmd:poisson}。此外，还有 {cmd:exposure()} 和
     {cmd:offset()} 选项。请参见
      {helpb gsem family and link options:[SEM] gsem family-and-link options}。

{phang}
{opt covariance()}, {opt variance()} 和 {opt means()} 完全描述了将要拟合的模型。请参见 
{helpb sem_and gsem path_notation:[SEM] sem 和 gsem 路径表示法}。

{phang}
{opt covstructure()} 提供了一种方便的方法来约束模型中的协方差。或者，您可以使用标准路径表示法施加限制。请参见
{helpb sem_and gsem option_covstructure:[SEM] sem 和 gsem 选项 covstructure()}。

{phang}
{cmd:collinear};
     请见 {helpb estimation options:[R] 估计选项}。

{phang}
{opt noconstant} 指定所有截距被约束为 0。请参见
{helpb sem_and gsem path_notation:[SEM] sem 和 gsem 路径表示法}。

{pmore}
    该选项很少指定。

{phang}
{cmd:noasis}
     指定完美预测变量应从所有家庭 Bernoulli 模型中省略。默认情况下，{cmd:gsem}
     不会省略该变量，因此可以指定一些巧妙的模型，其中一个方程包含完美预测因子，但这些因子仍通过模型的其他部分被识别。

{phang}
{opt noanchor} 指定 {cmd:gsem} 不检查缺乏识别并在需要时填充锚点。相反，当需要锚点时，{cmd:gsem} 应该发出错误消息。当您相信已指定必要的归一化约束并希望了解是否出错时，请指定此选项。请见
{it:{mansection SEM Intro4RemarksandexamplesIdentification2Normalizationconstraints(anchoring):识别 2: 归一化约束 (锚定)}}
在 {manlink SEM Intro 4} 中。

{phang}
{opt forcenoanchor} 与 {opt noanchor} 类似，除了不发出错误消息外，{cmd:gsem} 将继续估计。您不应指定此选项。{opt forcenoanchor} 用于 StataCorp 对 {cmd:gsem} 的测试。

{phang}
{opt reliability()} 指定不是由测量误差引起的变量方差的比例。请参见 
{helpb sem_and gsem option_reliability:[SEM] sem 和 gsem 选项 reliability()}。

{phang}
{opt constraints()} 指定您希望对模型施加的参数约束；请见 {helpb sem_and gsem option_constraints:[SEM] sem 和 gsem 选项 constraints()}。
约束也可以按照 {helpb sem_and gsem path_notation##item11:[SEM] sem 和 gsem 路径表示法} 中描述的方式指定，通常使用路径表示法更方便。

{phang}
{opt from()} 指定优化过程使用的起始值；请见 {helpb sem_and gsem option_from:[SEM] sem 和 gsem 选项 from()}。
起始值也可以使用 {cmd:init()} 子选项指定，如 
{helpb sem_and gsem path_notation##item16:[SEM] sem 和 gsem 路径表示法} 中描述的那样。


{marker remarks}{...}
{title:备注}

{pstd}
要成功使用 {cmd:gsem}，您需要理解 {it:路径}, 
{opt covariance()}, {opt variance()} 和 {opt means()}; 请见 
{it:{mansection SEM Intro2RemarksandexamplesUsingpathdiagramstospecifystandardlinearSEMs:使用路径图指定标准线性 SEMs}}
在 {bf:[SEM] 介绍 2} 和
{helpb sem_and gsem path_notation:[SEM] sem 和 gsem 路径表示法}。

{pstd}
{opt covstructure()} 通常很方便；请见 
{helpb sem_and gsem option_covstructure:[SEM] sem 和 gsem 选项 covstructure()}。


{marker examples}{...}
{title:示例}

{pstd}
这些选项的示例可以在指定的帮助文件中找到。

{synoptset 26 tabbed}{...}
{synopt:{cmd:covariance()}, {cmd:variance()}}请参见 
         {helpb sem and gsem path notation##examples:[SEM] sem 和 gsem 路径表示法} 中的示例{p_end}
{synopt:{space 2}和 {cmd:mean()}}{p_end}
{synopt:{cmd:covstructure()}}请参见 
         {helpb sem and gsem option covstructure##examples:[SEM] sem 和 gsem 选项 covstructure()} 中的示例{p_end}
{synopt:{cmd:noconstant}}请参见 
         {helpb sem and gsem path notation##examples:[SEM] sem 和 gsem 路径表示法} 中的示例{p_end}
{synopt:{cmd:reliability()}}请参见 
         {helpb sem and gsem option reliability##examples:[SEM] sem 和 gsem 选项 reliability()} 中的示例{p_end}
{synopt:{cmd:constraints()}}请参见 
         {helpb sem and gsem option constraints##examples:[SEM] sem 和 gsem 选项 constraints()} 中的示例{p_end}
{synopt:{cmd:from()}}请参见 
         {helpb sem and gsem option from##examples:[SEM] sem 和 gsem 选项 from()} 中的示例{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <gsem_model_options.sthlp>}