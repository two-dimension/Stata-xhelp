{smcl}
{* *! version 1.0.10  14may2018}{...}
{vieweralsosee "[SEM] sem model description options" "mansection SEM semmodeldescriptionoptions"}{...}
{vieweralsosee "[SEM] Intro 2" "mansection SEM Intro2"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[SEM] sem" "help sem_command_zh"}{...}
{vieweralsosee "[SEM] sem and gsem option constraints()" "help sem and gsem option constraints"}{...}
{vieweralsosee "[SEM] sem and gsem option covstructure()" "help sem and gsem option covstructure"}{...}
{vieweralsosee "[SEM] sem and gsem option from()" "help sem_and gsem option_from"}{...}
{vieweralsosee "[SEM] sem and gsem option reliability()" "help sem_and gsem option_reliability"}{...}
{vieweralsosee "[SEM] sem and gsem path notation" "help sem_and_gsem_path_notation_zh"}{...}
{vieweralsosee "[SEM] sem postestimation" "help sem_postestimation_zh"}{...}
{viewerjumpto "Syntax" "sem_model_options_zh##syntax"}{...}
{viewerjumpto "Description" "sem_model_options_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "sem_model_options_zh##linkspdf"}{...}
{viewerjumpto "Options" "sem_model_options_zh##options"}{...}
{viewerjumpto "Remarks" "sem_model_options_zh##remarks"}{...}
{viewerjumpto "Examples" "sem_model_options_zh##examples"}
{help sem_model_options:English Version}
{hline}{...}
{p2colset 1 40 42 2}{...}
{p2col:{bf:[SEM] sem model description options} {hline 2}}模型描述选项{p_end}
{p2col:}({mansection SEM semmodeldescriptionoptions:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{cmd:sem} {it:{help sem_and_gsem_path notation:路径}} ...{cmd:,} ...
    {it:模型描述选项}

{synoptset 28 tabbed}{...}
{synopthdr:模型描述选项}
{synoptline}
{p2coldent :* {helpb sem and gsem path notation:{ul:cov}ariance()}}协方差处理的路径符号{p_end}
{p2coldent :* {helpb sem and gsem path notation:{ul:var}iance()}}方差处理的路径符号{p_end}
{p2coldent :* {helpb sem and gsem path notation:{ul:mean}s()}}均值处理的路径符号{p_end}

{p2coldent :* {helpb sem and gsem option covstructure:{ul:covstr}ucture()}}对协方差施加限制的替代方法{p_end}

{synopt :{opt nocons:tant}}不拟合截距{p_end}
{synopt :{opt nomean:s}}不拟合均值或截距{p_end}
{synopt :{opt noanchor}}不应用默认锚定{p_end}
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
{it:路径}和上述选项描述了将由 {cmd:sem} 拟合的模型。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection SEM semmodeldescriptionoptionsRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{opt covariance()}, {opt variance()}, 和 {opt means()} 全面描述了要拟合的模型。有关更多信息，参见 
{helpb sem_and gsem path_notation:[SEM] sem和gsem路径符号}。

{phang}
{opt covstructure()} 提供了一种方便的方法来约束模型中的协方差。或者可以通过使用标准路径符号来施加限制，或两者结合使用。参见
{helpb sem_and gsem option_covstructure:[SEM] sem和gsem选项covstructure()}。

{phang}
{opt noconstant} 指定所有截距约束为0。有关更多信息，参见 
{helpb sem_and gsem path_notation:[SEM] sem和gsem路径符号}。

{phang}
{opt nomeans} 指定不拟合均值和截距。均值和截距被集中在优化的函数中，通常是似然函数。无论指定此选项与否，所有其他参数的结果都是相同的。

{p 8 8 2}
此选项很少被指定。当您使用不包含均值的汇总统计数据时，{cmd:sem} 会自行为您发出此选项。

{phang}
{opt noanchor} 指定 {cmd:sem} 不检查识别缺失并在需要时填充锚定。如果需要锚定，{cmd:sem} 将发出错误消息。当您认为已指定必要的归一化约束，并希望了解到如果您错了，您可以使用此选项。有关更多信息，请参见
{it:{mansection SEM Intro4RemarksandexamplesIdentification2Normalizationconstraints(anchoring):识别2：归一化约束（锚定）}}
在 {manlink SEM Intro 4}中。

{phang}
{opt forcenoanchor} 与 {opt noanchor} 类似，但不是发出错误消息，而是 {cmd:sem} 继续进行估计。您不应该指定此选项。{opt forcenoanchor} 在StataCorp的 {cmd:sem} 测试中使用。

{phang}
{opt reliability()} 指定某变量中不因测量误差而产生的方差比例。有关更多信息，参见 
{helpb sem_and gsem option_reliability:[SEM] sem和gsem选项reliability()}。

{phang}
{opt constraints()} 指定您希望对模型施加的参数约束；参见 {helpb sem_and gsem option_constraints:[SEM] sem和gsem选项constraints()}。约束还可以按照 {helpb sem_and gsem path_notation##item11:[SEM] sem和gsem路径符号} 中所述指定，通常使用路径符号更为方便。

{phang}
{opt from()} 指定在优化过程中使用的起始值；参见 {helpb sem_and gsem option_from:[SEM] sem和gsem选项from()}。也可以使用 {cmd:init()} 子选项指定起始值，如在 
{helpb sem_and gsem path_notation##item16:[SEM] sem和gsem路径符号}中所述。


{marker remarks}{...}
{title:备注}

{pstd}
要成功使用 {cmd:sem}，您需要了解 {it:路径}， 
{opt covariance()}， {opt variance()} 和 {opt means()}；有关更多信息，请参见 
{it:{mansection SEM Intro2RemarksandexamplesUsingpathdiagramstospecifystandardlinearSEMs:使用路径图指定标准线性SEM}} 
在 {bf:[SEM] Intro 2} 和
{helpb sem_and gsem path_notation:[SEM] sem和gsem路径符号}。

{pstd}
{opt covstructure()} 通常很方便；参见 
{helpb sem_and gsem option_covstructure:[SEM] sem和gsem选项covstructure()}。


{marker examples}{...}
{title:示例}

{pstd}
这些选项的示例可以在所指示的帮助文件中找到。

{synoptset 26 tabbed}{...}
{synopt:{cmd:covariance()}, {cmd:variance()}}请参阅 {helpb sem and gsem path notation##examples:[SEM] sem和gsem路径符号}中的示例{p_end}
{synopt:{space 2}和 {cmd:mean()}}{p_end}
{synopt:{cmd:covstructure()}}请参阅 {helpb sem and gsem option covstructure##examples:[SEM] sem和gsem选项covstructure()}中的示例{p_end}
{synopt:{cmd:noconstant}}请参阅 {helpb sem and gsem path notation##examples:[SEM] sem和gsem路径符号}中的示例{p_end}
{synopt:{cmd:reliability()}}请参阅 {helpb sem and gsem option reliability##examples:[SEM] sem和gsem选项reliability()}中的示例{p_end}
{synopt:{cmd:constraints()}}请参阅 {helpb sem and gsem option constraints##examples:[SEM] sem和gsem选项constraints()}中的示例{p_end}
{synopt:{cmd:from()}}请参阅 {helpb sem and gsem option from##examples:[SEM] sem和gsem选项from()}中的示例{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <sem_model_options.sthlp>}