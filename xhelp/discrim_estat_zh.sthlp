{smcl}
{* *! version 1.2.4  19oct2017}{...}
{viewerdialog "estat after discrim knn" "dialog discrim_knn_estat"}{...}
{viewerdialog "estat after discrim lda" "dialog discrim_lda_estat"}{...}
{viewerdialog "estat after discrim logistic" "dialog discrim_logistic_estat"}{...}
{viewerdialog "estat after discrim qda" "dialog discrim_qda_estat"}{...}
{vieweralsosee "[MV] discrim estat" "mansection MV discrimestat"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MV] discrim" "help discrim_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MV] discrim knn postestimation" "help discrim_knn_postestimation_zh"}{...}
{vieweralsosee "[MV] discrim lda postestimation" "help discrim_lda_postestimation_zh"}{...}
{vieweralsosee "[MV] discrim logistic postestimation" "help discrim_logistic_postestimation_zh"}{...}
{vieweralsosee "[MV] discrim qda postestimation" "help discrim_qda_postestimation_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MV] candisc" "help candisc_zh"}{...}
{viewerjumpto "Postestimation commands" "discrim estat##description"}{...}
{viewerjumpto "Links to PDF documentation" "discrim_estat_zh##linkspdf"}{...}
{viewerjumpto "Syntax for estat" "discrim estat##syntax_estat"}{...}
{viewerjumpto "Menu for estat" "discrim estat##menu_estat"}{...}
{viewerjumpto "Description for estat" "discrim estat##desc_estat"}{...}
{viewerjumpto "Options for estat classtable" "discrim estat##options_estat_classtable"}{...}
{viewerjumpto "Options for estat errorrate" "discrim estat##options_estat_errorrate"}{...}
{viewerjumpto "Options for estat grsummarize" "discrim estat##options_estat_grsummarize"}{...}
{viewerjumpto "Options for estat list" "discrim estat##options_estat_list"}{...}
{viewerjumpto "Options for estat summarize" "discrim estat##options_estat_summarize"}{...}
{viewerjumpto "Examples" "discrim estat##examples"}{...}
{viewerjumpto "Stored results" "discrim estat##results"}
{help discrim_estat:English Version}
{hline}{...}
{p2colset 1 23 25 2}{...}
{p2col:{bf:[MV] discrim estat} {hline 2}}后估计工具
	{bf:discrim}
{p_end}
{p2col:}({mansection MV discrimestat:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:后估计命令}

{pstd}
以下后估计命令在 {cmd:candisc}、{cmd:discrim} {cmd:knn}、{cmd:discrim} {cmd:lda}、{cmd:discrim} {cmd:logistic} 和 {cmd:discrim} {cmd:qda} 之后特别有用：

{synoptset 19}{...}
{p2coldent:命令}描述{p_end}
{synoptline}
{synopt:{helpb discrim estat##syntax_estat:estat classtable}}分类
	表{p_end}
{synopt:{helpb discrim estat##syntax_estat:estat errorrate}}分类
	错误率估计{p_end}
{synopt:{helpb discrim estat##syntax_estat:estat grsummarize}}组
	摘要{p_end}
{synopt:{helpb discrim estat##syntax_estat:estat list}}分类
	清单{p_end}
{synopt:{helpb discrim estat##syntax_estat:estat summarize}}估计
	样本摘要{p_end}
{synoptline}

{pstd}
在 {cmd:discrim lda} 和 {cmd:discrim qda} 之后还有更多特别有用的后估计命令；详见
{manhelp discrim_lda_postestimation MV:discrim lda 后估计} 和 
{manhelp discrim_qda_postestimation MV:discrim qda 后估计}。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection MV discrimestatRemarksandexamples:备注和示例}

        {mansection MV discrimestatMethodsandformulas:方法和公式}

{pstd}
以上部分不包括在此帮助文件中。


{marker estatclasstable}{marker estaterrorrate}{marker estatgrsummarize}{...}
{marker estatlist}{marker estatsummarize}{...}
{marker syntax_estat}{...}
{title:语法}

{pstd}分类表

{p 8 25 2}
	{cmd:estat} {opt class:table} {ifin}
  [{it:{help discrim estat##weight:weight}}]
  [{cmd:,} {it:{help discrim_estat##classtable_options:classtable_options}}]


{pstd}分类错误率估计

{p 8 25 2}
	{cmd:estat} {opt err:orrate} {ifin}
  [{it:{help discrim estat##weight:weight}}]
  [{cmd:,} {it:{help discrim_estat##errorrate_options:errorrate_options}}]


{pstd}组摘要

{p 8 25 2}
	{cmd:estat} {opt grs:ummarize}
  [{cmd:,} {it:{help discrim_estat##grsummarize_options:grsummarize_options}}]


{pstd}分类清单

{p 8 25 2}
	{cmd:estat} {opt li:st} {ifin}
  [{cmd:,} {it:{help discrim_estat##list_options:list_options}}]


{pstd}估计样本摘要

{p 8 25 2}
	{cmd:estat} {opt su:mmarize} [{cmd:,}
		{opt lab:els} {opt nohea:der} {opt nowei:ghts}]


{marker classtable_options}{...}
{synoptset 18 tabbed}{...}
{synopthdr:classtable_options}
{synoptline}
{syntab:Main}
{synopt:{opt cl:ass}}显示分类表；默认值{p_end}
{synopt:{opt loo:class}}显示留一交叉分类表{p_end}

{syntab:Options}
{synopt:{opth pri:ors(discrim_estat##priors:priors)}}组的先验
	概率；默认为 {cmd:e(grouppriors)}{p_end}
{synopt:{opt nopri:ors}}抑制显示先验概率{p_end}
{synopt:{opth tie:s(discrim_estat##ties:ties)}}如何处理分类中的平局；默认为 {cmd:e(ties)}{p_end}
{synopt:{opt tit:le(text)}}分类表的标题{p_end}
{synopt:{opt prob:abilities}}显示被分类到每个组的平均后验概率{p_end}
{synopt:{opt noper:cents}}抑制显示百分比{p_end}
{synopt:{opt not:otals}}抑制显示行和列的总计{p_end}
{synopt:{opt norowt:otals}}抑制显示行的总计{p_end}
{synopt:{opt nocolt:otals}}抑制显示列的总计{p_end}
{synoptline}
{p2colreset}{...}


{synoptset 18}{...}
{marker priors}{...}
{synopthdr:priors}
{synoptline}
{synopt:{opt eq:ual}}相等的先验概率{p_end}
{synopt:{opt prop:ortional}}组大小成比例的先验概率{p_end}
{synopt:{it:matname}}包含组先验概率的行或列向量{p_end}
{synopt:{it:matrix_exp}}矩阵表达式提供组先验概率的行或列向量{p_end}
{synoptline}


{marker ties}{...}
{synopthdr:ties}
{synoptline}
{synopt:{opt m:issing}}组分类中的平局产生缺失值{p_end}
{synopt:{opt r:andom}}组分类中的平局是随机打破的{p_end}
{synopt:{opt f:irst}}组分类中的平局被设定为第一个平局组{p_end}
{synopt:{opt n:earest}}组分类中的平局根据最接近的观察结果来分配，或者如果这仍然导致平局则为缺失；仅在 {cmd:discrim knn} 之后可用{p_end}
{synoptline}


{marker errorrate_options}{...}
{synoptset 18 tabbed}{...}
{synopthdr:errorrate_options}
{synoptline}
{syntab:Main}
{synopt:{opt cl:ass}}显示基于分类的错误率估计表；默认值{p_end}
{synopt:{opt loo:class}}显示留一交叉基于分类的错误率估计表{p_end}
{synopt:{opt cou:nt}}使用基于计数的错误率估计{p_end}
{synopt:{opt pp}[{cmd:(}{it:{help discrim_estat##ppopts:ppopts}}{cmd:)}]}使用基于后验概率的错误率估计{p_end}

{syntab:Options}
{synopt:{opth pri:ors(discrim_estat##priors:priors)}}组的先验概率；
	默认为 {cmd:e(grouppriors)}{p_end}
{synopt:{opt nopri:ors}}抑制显示先验概率{p_end}
{synopt:{opth tie:s(discrim_estat##ties:ties)}}如何处理分类中的平局；默认为 {cmd:e(ties)}{p_end}
{synopt:{opt tit:le(text)}}错误率估计表的标题{p_end}
{synopt:{opt not:otal}}抑制显示总计列{p_end}
{synoptline}
{p2colreset}{...}


{synoptset 18}{...}
{marker ppopts}{...}
{synopthdr:ppopts}
{synoptline}
{synopt:{opt s:tratified}}提供分层结果{p_end}
{synopt:{opt uns:tratified}}提供非分层结果{p_end}
{synoptline}


{marker grsummarize_options}{...}
{synoptset 21 tabbed}{...}
{synopthdr:grsummarize_options}
{synoptline}
{syntab:Main}
{synopt:{cmd:n}[{cmd:(}{it:{help %fmt}}{cmd:)}]}组大小{p_end}
{synopt:{cmdab:m:ean}[{cmd:(}{it:{help %fmt}}{cmd:)}]}均值{p_end}
{synopt:{cmdab:med:ian}[{cmd:(}{it:{help %fmt}}{cmd:)}]}中位数{p_end}
{synopt:{cmd:sd}[{cmd:(}{it:{help %fmt}}{cmd:)}]}标准差{p_end}
{synopt:{cmd:cv}[{cmd:(}{it:{help %fmt}}{cmd:)}]}变异系数{p_end}
{synopt:{cmdab:sem:ean}[{cmd:(}{it:{help %fmt}}{cmd:)}]}均值的标准误{p_end}
{synopt:{cmd:min}[{cmd:(}{it:{help %fmt}}{cmd:)}]}最小值{p_end}
{synopt:{cmd:max}[{cmd:(}{it:{help %fmt}}{cmd:)}]}最大值{p_end}

{syntab:Options}
{synopt:{opt notot:al}}抑制显示包含总体统计的总计{p_end}
{synopt:{opt tran:spose}}按行显示组，而不是按列显示{p_end}
{synoptline}


{marker list_options}{...}
{synoptset 27 tabbed}{...}
{synopthdr:list_options}
{synoptline}
{syntab:Main}
{synopt:{opt mis:classified}}仅列出错误分类和未分类的观察结果{p_end}
{synopt:{cmdab:cl:assification(}{help discrim_estat##clopts:{it:clopts}}{cmd:)}}控制
	分类的显示{p_end}
{synopt:{cmdab:pr:obabilities(}{help discrim_estat##propts:{it:propts}}{cmd:)}}控制
	概率的显示{p_end}
{synopt:{cmdab:var:list}[{cmd:(}{help discrim_estat##varopts:{it:varopts}}{cmd:)}]}显示
	判别变量{p_end}
{synopt:[{cmdab:no:}]{opt o:bs}}显示或抑制观察号{p_end}
{synopt:{cmdab:i:d(}{varname} [{opth for:mat(%fmt)}]{cmd:)}}显示
	识别变量{p_end}

{syntab:Options}
{synopt:{cmdab:w:eight}[{cmd:(}{help discrim_estat##weightopts:{it:weightopts}}{cmd:)}]}显示
	频率权重{p_end}
{synopt:{opth pri:ors(discrim_estat##priors:priors)}}组的先验概率；
	默认为 {cmd:e(grouppriors)}{p_end}
{synopt:{opth tie:s(discrim_estat##ties:ties)}}如何处理分类中的平局；默认为 {cmd:e(ties)}{p_end}
{synopt:{opt sep:arator(#)}}每 {it:#} 行显示一个水平分隔线{p_end}
{synoptline}
{p2colreset}{...}


{synoptset 27}{...}
{marker clopts}{...}
{synopthdr:clopts}
{synoptline}
{synopt:{opt noc:lass}}不显示标准分类{p_end}
{synopt:{opt loo:class}}显示留一交叉分类{p_end}
{synopt:{opt not:rue}}不显示组变量{p_end}
{synopt:{opt nos:tar}}不显示表示错误分类观察的星号{p_end}
{synopt:{opt nol:abel}}抑制显示组和分类变量的值标签{p_end}
{synopt:{opth for:mat(%fmt)}}组和分类变量的格式；
	默认对于未标记数字变量为 {cmd:%5.0f}{p_end}
{synoptline}


{marker propts}{...}
{synopthdr:propts}
{synoptline}
{synopt:{opt nop:r}}抑制显示标准后验概率{p_end}
{synopt:{opt loo:pr}}显示留一交叉后验概率{p_end}
{synopt:{opth for:mat(%fmt)}}概率的格式；默认为 {cmd:format(%7.4f)}{p_end}
{synoptline}


{marker varopts}{...}
{synopthdr:varopts}
{synoptline}
{synopt:{opt non:e}}不显示判别变量；默认{p_end}
{synopt:{opt f:irst}}在分类和概率之前显示输入变量{p_end}
{synopt:{opt l:ast}}在分类和概率之后显示输入变量{p_end}
{synopt:{opth for:mat(%fmt)}}输入变量的格式；默认使用输入变量格式{p_end}
{synoptline}


{marker weightopts}{...}
{synopthdr:weightopts}
{synoptline}
{synopt:{opt non:e}}不显示权重{p_end}
{synopt:{opth for:mat(%fmt)}}权重格式；默认对权重 < 1,000 为 {cmd:%3.0f}，对 1,000 < 权重 < 100,000 为 {cmd:%5.0f}，否则为 {cmd:%8.0g}{p_end}
{synoptline}


{marker weight}{...}
{p 4 6 2}{opt fweight}被允许；见 {help weight_zh}。


包含帮助菜单 estat


{marker desc_estat}{...}
{title:estat 的描述}

{pstd}
{cmd:estat classtable}
显示原始组与分类表的交叉列联表。可用分类百分比、平均后验
概率、组先验概率、总计以及留一交叉结果。

{pstd}
{cmd:estat errorrate}
显示分类的错误率估计。可用基于计数的估计和分层及非分层的后验概率基于估计。这些估计可以是重置分类或留一交叉估计。

{pstd}
{cmd:estat grsummarize}
呈现由分组变量定义的每组判别变量的估计样本摘要统计。可以显示均值、
中位数、最小值、最大值、标准差、变异系数、均值的标准误和组大小。总体
样本统计也可以获得。

{pstd}
{cmd:estat list}
列出观察结果的组成员资格、分类和概率。

{pstd}
{cmd:estat summarize}
对估计样本中的判别分析变量进行摘要。


{marker options_estat_classtable}{...}
{title:estat classtable 的选项}

{dlgtab:Main}

{phang}
{opt class}，默认，显示分类表。在样本观察中，这称为重置分类
表。

{phang}
{opt looclass}
显示留一交叉分类表，而不是默认的分类表。留一交叉分类仅适用于估计样本，因此，除了用 {cmd:if} 和 {cmd:in} 限制观察结果外，观察结果还进一步限制为那些包含在 {cmd:e(sample)} 中的结果。

{dlgtab:Options}

{phang}
{opt priors(priors)}
指定组成员资格的先验概率。如果未指定 {opt priors()}，则使用 {cmd:e(grouppriors)}。如果与 {cmd:priors()} 一起指定了 {opt nopriors}，则将先验概率用于分类变量的计算，但不显示。允许以下 {it:priors}：

{phang2}
{cmd:priors(}{opt eq:ual}{cmd:)} 指定相等的先验概率。

{phang2}
{cmd:priors(}{opt prop:ortional}{cmd:)} 指定组大小成比例的先验概率。

{phang2}
{cmd:priors(}{it:matname}{cmd:)} 指定一个包含组先验概率的行或列向量。

{phang2}
{cmd:priors(}{it:matrix_exp}{cmd:)} 指定一个提供组先验概率行或列向量的矩阵表达式。

{phang}
{opt nopriors}
抑制显示先验概率。此选项不会改变依赖于在 {opt priors()} 中指定或在 {cmd:e(grouppriors)} 中找到的先验概率的计算。

{phang}
{opt ties(ties)}
指定将如何处理组分类中的平局。如果未指定 {opt ties()}，则由 {cmd:e(ties)} 决定如何处理平局。允许以下 {it:ties}：

{phang2}
{cmd:ties(}{opt m:issing}{cmd:)} 指定组分类中的平局产生缺失值。

{phang2}
{cmd:ties(}{opt r:andom}{cmd:)} 指定组分类中的平局随机打破。

{phang2}
{cmd:ties(}{opt f:irst}{cmd:)} 指定组分类中的平局设置为第一个平局组。

{phang2}
{cmd:ties(}{opt n:earest}{cmd:)} 指定组分类中的平局根据最近的观察结果分配，如果这仍然导致平局，则为缺失。{cmd:ties(nearest)}仅在 {cmd:discrim knn} 之后可用。

{phang}
{opt title(text)}
自定义分类表的标题。

{phang}
{opt probabilities}
指定分类表显示被分类到每个组的平均后验概率。{opt probabilities} 意味着 {opt norowtotals} 和 {opt nopercents}。

{phang}
{opt nopercents}
指定分类表中省略百分比。

{phang}
{opt nototals}
指定在分类表中省略行和列的总计。

{phang}
{opt norowtotals}
指定在分类表中省略行总计。

{phang}
{opt nocoltotals}
指定在分类表中省略列总计。


{marker options_estat_errorrate}{...}
{title:estat errorrate 的选项}

{dlgtab:Main}

{phang}
{opt class}，
默认，指定显示基于分类的错误率估计表。{opt class} 的替代选项是 {opt looclass}。

{phang}
{opt looclass}
指定显示留一交叉分类错误率估计表。

{phang}
{opt count}，
默认，指定错误率估计基于错误分类计数。{opt count} 的替代选项是 {opt pp()}。

{phang}
{opt pp}[{cmd:(}{it:ppopts}{cmd:)}]
指定错误率估计基于后验概率。
{cmd:pp} 等同于 {cmd:pp(stratified unstratified)}。{cmd:stratified} 表示显示分层估计。{cmd:unstratified} 表示显示非分层估计。可以指定一个或两个。

{dlgtab:Options}

{phang}
{opt priors(priors)}
指定组成员资格的先验概率。如果未指定 {opt priors()}，则使用 {cmd:e(grouppriors)}。如果与 {cmd:priors()} 一起指定了 {opt nopriors}，则采用先验概率进行错误率估计的计算，但不显示。允许以下 {it:priors}：

{phang2}
{cmd:priors(}{opt eq:ual}{cmd:)} 指定相等的先验概率。

{phang2}
{cmd:priors(}{opt prop:ortional}{cmd:)} 指定组大小成比例的先验概率。

{phang2}
{cmd:priors(}{it:matname}{cmd:)} 指定一个包含组先验概率的行或列向量。

{phang2}
{cmd:priors(}{it:matrix_exp}{cmd:)} 指定一个提供组先验概率行或列向量的矩阵表达式。

{phang}
{opt nopriors}
抑制显示先验概率。此选项不会改变依赖于在 {opt priors()} 中指定的先验概率或在 {cmd:e(grouppriors)} 中找到的计算。

{phang}
{opt ties(ties)}
指定将如何处理组分类中的平局。如果未指定 {opt ties()}，则由 {cmd:e(ties)} 决定如何处理平局。允许以下 {it:ties}：

{phang2}
{cmd:ties(}{opt m:issing}{cmd:)} 指定组分类中的平局产生缺失值。

{phang2}
{cmd:ties(}{opt r:andom}{cmd:)} 指定组分类中的平局随机打破。

{phang2}
{cmd:ties(}{opt f:irst}{cmd:)} 指定组分类中的平局设置为第一个平局组。

{phang2}
{cmd:ties(}{opt n:earest}{cmd:)} 指定组分类中的平局根据最近的观察结果分配，或如果这仍然导致存在平局则为缺失。{cmd:ties(nearest)} 仅在 {cmd:discrim knn} 之后可用。

{phang}
{opt title(text)}
自定义错误率估计表的标题。

{phang}
{opt nototal}
抑制包括包含总体样本错误率估计的总计列。


{marker options_estat_grsummarize}{...}
{title:estat grsummarize 的选项}

{dlgtab:Main}

{phang}
{cmd:n}[{cmd:(}{it:{help %fmt}}{cmd:)}]
指定显示组大小。
可选的参数提供显示格式。
默认选项为 {cmd:n} 和 {cmd:mean}。

{phang}
{cmd:mean}[{cmd:(}{it:{help %fmt}}{cmd:)}]
指定显示均值。
可选的参数提供显示格式。
默认选项为 {cmd:n} 和 {cmd:mean}。

{phang}
{cmd:median}[{cmd:(}{it:{help %fmt}}{cmd:)}]
指定显示中位数。
可选的参数提供显示格式。

{phang}
{cmd:sd}[{cmd:(}{it:{help %fmt}}{cmd:)}]
指定显示标准差。
可选的参数提供显示格式。

{phang}
{cmd:cv}[{cmd:(}{it:{help %fmt}}{cmd:)}]
指定显示变异系数。
可选的参数提供显示格式。

{phang}
{cmd:semean}[{cmd:(}{it:{help %fmt}}{cmd:)}]
指定显示均值的标准误。
可选的参数提供显示格式。

{phang}
{cmd:min}[{cmd:(}{it:{help %fmt}}{cmd:)}]
指定显示最小值。
可选的参数提供显示格式。

{phang}
{cmd:max}[{cmd:(}{it:{help %fmt}}{cmd:)}]
指定显示最大值。
可选的参数提供显示格式。

{dlgtab:Options}

{phang}
{opt nototal}
抑制显示包含总体样本统计的总计列。

{phang}
{opt transpose}
指定按行显示组。默认情况下，组按列显示。如果您的变量数量超过组数量，您可能更喜欢 {opt transpose} 生成的输出。


{marker options_estat_list}{...}
{title:estat list 的选项}

{dlgtab:Main}

{phang}
{opt misclassified}
仅列出错误分类和未分类的观察结果。

{phang}
{opt classification(clopts)}
控制组变量和分类的显示。默认情况下，计算并显示标准分类及其组变量 {cmd:e(groupvar)}，如果存在，则使用组变量中的标签。{it:clopts} 可以是以下之一或多个：

{phang2}
    {opt noclass}
    抑制显示标准分类。如果观察结果用于估计，则分类称为重置分类。

{phang2}
    {opt looclass}
    指定计算并显示留一交叉分类。默认情况下，留一交叉分类不计算。 {opt looclass} 不允许在 {cmd:discrim logistic} 之后使用。

{phang2}
    {opt notrue}
    抑制显示组变量。默认情况下，显示 {cmd:e(groupvar)}。 {cmd:notrue} 意味着 {cmd:nostar}。

{phang2}
    {opt nostar}
    抑制显示指示错误分类观察的星号。默认情况下，当分类与组变量不一致时，会显示星号。若同时指定了 {cmd:notrue}，则 {cmd:nostar} 为默认。

{phang2}
    {opt nolabel} 指定不显示组变量的值标签（如果存在），或不用于概率列名称的标签。

{phang2}
    {opth format(%fmt)}
    指定组和分类变量的格式。如果使用了值标签，则允许使用字符串格式。

{phang}
{opt probabilities(propts)}
控制组后验概率的显示。{it:propts} 可以是以下之一或多个：

{phang2}
    {opt nopr}
    抑制显示标准后验概率。默认情况下，显示后验概率。

{phang2}
    {opt loopr}
    指定显示留一交叉后验概率。
    {opt loopr} 不允许在 {cmd:discrim logistic} 之后使用。

{phang2}
    {opth format(%fmt)}
    指定显示概率的格式。默认为 {cmd:format(%7.4f)}。

{phang}
{cmd:varlist}[{cmd:(}{it:varopts}{cmd:)}]
指定显示 {cmd:e(varlist)} 中找到的判别变量，并指定变量的显示选项。

{phang2}
    {opt none}
    指定不显示判别变量。这是默认值。

{phang2}
    {opt first}
    指定在分类和概率之前显示变量。

{phang2}
    {opt last}
    指定在分类和概率之后显示变量。

{phang2}
    {opth format(%fmt)}
    指定输入变量的格式。默认使用变量的格式。

{phang}
[{opt no}]{opt obs}
指示是否显示观察号。默认显示观察号，除非指定了 {cmd:id()}。

{phang}
{cmd:id(}{varname} [{opth format(%fmt)}]{cmd:)}
    指定要显示的识别变量，和该变量的格式（可选）。默认使用 {it:varname} 的格式。

{dlgtab:Options}

{phang}
{cmd:weight}[{cmd:(}{it:weightopts}{cmd:)}]
指定显示权重的选项。默认情况下，如果存在 {cmd:e(wexp)}，则显示权重。

{phang2}
    {opt none}
    指定不显示权重。如果未与 {cmd:discrim} 一起使用，则这是默认值。

{phang2}
    {opth format(%fmt)}
    指定权重的显示格式。如果权重 < 1,000，则默认为 {cmd:%3.0f}；如果 1,000 < 权重 < 100,000，则默认为 {cmd:%5.0f}；否则使用 {cmd:%8.0g}。

{phang}
{opt priors(priors)}
指定组成员资格的先验概率。如果未指定 {opt priors()}，则使用 {cmd:e(grouppriors)}。 
允许以下 {it:priors}：

{phang2}
{cmd:priors(}{opt eq:ual}{cmd:)} 指定相等的先验概率。

{phang2}
{cmd:priors(}{opt prop:ortional}{cmd:)} 指定组大小成比例的先验概率。

{phang2}
{cmd:priors(}{it:matname}{cmd:)} 指定一个包含组先验概率的行或列向量。

{phang2}
{cmd:priors(}{it:matrix_exp}{cmd:)} 指定一个提供组先验概率的行或列向量的矩阵表达式。

{phang}
{opt ties(ties)}
指定将如何处理组分类中的平局。如果未指定 {opt ties()}，则由 {cmd:e(ties)} 决定如何处理平局。允许以下 {it:ties}：

{phang2}
{cmd:ties(}{opt m:issing}{cmd:)} 指定组分类中的平局产生缺失值。

{phang2}
{cmd:ties(}{opt r:andom}{cmd:)} 指定组分类中的平局随机打破。

{phang2}
{cmd:ties(}{opt f:irst}{cmd:)} 指定组分类中的平局设置为第一个平局组。

{phang2}
{cmd:ties(}{opt n:earest}{cmd:)} 指定组分类中的平局根据最近的观察结果分配，或者如果这仍然导致平局，则为缺失。{cmd:ties(nearest)} 仅在 {cmd:discrim knn} 之后可用。

{phang}
{opt separator(#)}
指定每 {it:#} 观察结果绘制一条水平分隔线。默认值为 {cmd:separator(5)}。


{marker options_estat_summarize}{...}
{title:estat summarize 的选项}

{phang}
{opt labels}、{opt noheader} 和 {opt noweights} 与通用 {cmd:estat summarize} 类似；参见 {helpb estat summarize:[R] estat summarize}。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse rootstock}{p_end}

{pstd}拟合一个二次判别分析 (QDA) 模型（后估计命令同样适用于其他判别命令）{p_end}
{phang2}{cmd:. discrim qda y1 y2 y3 y4, group(rootstock)}{p_end}

{pstd}生成一个预测分类变量{p_end}
{phang2}{cmd:. predict classrstock, classification}{p_end}

{pstd}列出错误分类观察的分类和概率{p_end}
{phang2}{cmd:. estat list, misclassified}{p_end}

{pstd}显示带有计数和平均后验概率的分类表{p_end}
{phang2}{cmd:. estat classtable, probabilities}{p_end}

{pstd}显示基于计数的错误率估计表{p_end}
{phang2}{cmd:. estat errorrate}{p_end}

{pstd}呈现组均值和样本大小（转置行和列，因为组数量超过变量数量）{p_end}
{phang2}{cmd:. estat grsummarize, transpose}{p_end}

{pstd}按组查看均值、最小值、最大值和样本大小；省略总体样本列{p_end}
{phang2}{cmd:. estat grsummarize, mean n min max nototal}{p_end}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:estat classtable} 将以下内容存储在 {cmd:r()} 中：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:r(counts)}}组计数{p_end}
{synopt:{cmd:r(percents)}}每组的百分比（除非监测到 {opt nopercents}）{p_end}
{synopt:{cmd:r(avgpostprob)}}平均后验概率分类到每组中（仅适用于 {opt probabilities}）{p_end}

{pstd}
{cmd:estat errorrate} 将以下内容存储在 {cmd:r()} 中：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:r(grouppriors)}}计算中使用的组先验概率的行向量{p_end}
{synopt:{cmd:r(erate_count)}}基于错误计数估计的错误率矩阵（仅 {cmd:count}）{p_end}
{synopt:{cmd:r(erate_strat)}}基于后验概率估计的分层错误率矩阵（仅 {cmd:pp}）{p_end}
{synopt:{cmd:r(erate_unstrat)}}基于后验概率估计的非分层错误率矩阵（仅 {cmd:pp}）{p_end}

{pstd}
{cmd:estat grsummarize} 将以下内容存储在 {cmd:r()} 中：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:r(count)}}组计数{p_end}
{synopt:{cmd:r(mean)}}均值（仅 {cmd:mean}）{p_end}
{synopt:{cmd:r(median)}}中位数（仅 {cmd:median}）{p_end}
{synopt:{cmd:r(sd)}}标准差（仅 {cmd:sd}）{p_end}
{synopt:{cmd:r(cv)}}变异系数（仅 {cmd:cv}）{p_end}
{synopt:{cmd:r(semean)}}均值的标准误（仅 {cmd:semean}）{p_end}
{synopt:{cmd:r(min)}}最小值（仅 {cmd:min}）{p_end}
{synopt:{cmd:r(max)}}最大值（仅 {cmd:max}）{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <discrim_estat.sthlp>}