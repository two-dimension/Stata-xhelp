{smcl}
{* *! version 1.0.0  19jun2019}{...}
{viewerdialog "meta" "dialog meta"}{...}
{vieweralsosee "[META] meta forestplot" "mansection META metaforestplot"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[META] meta data" "mansection META metadata"}{...}
{vieweralsosee "[META] meta summarize" "help meta summarize"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[META] meta" "help meta_zh"}{...}
{vieweralsosee "[META] Glossary" "help meta glossary"}{...}
{vieweralsosee "[META] Intro" "mansection META Intro"}{...}
{viewerjumpto "Syntax" "meta forestplot##syntax"}{...}
{viewerjumpto "Menu" "meta forestplot##menu"}{...}
{viewerjumpto "Description" "meta forestplot##description"}{...}
{viewerjumpto "Links to PDF documentation" "meta_forestplot_zh##linkspdf"}{...}
{viewerjumpto "Options" "meta_forestplot_zh##options"}{...}
{viewerjumpto "Examples" "meta_forestplot_zh##examples"}
{help meta_forestplot:English Version}
{hline}{...}
{p2colset 1 27 29 2}{...}
{p2col:{bf:[META] meta forestplot} {hline 2}}森林图{p_end}
{p2col:}({mansection META metaforestplot:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 16 2}
{cmd:meta} {cmdab:forest:plot} [{it:column_list}]
[{cmd:,} {help meta_forestplot##optstbl:{it:options}}]

{phang}
{it:column_list} 是通过 {help meta_forestplot##col:{it:col}} 提供的一系列列名。在 
{it:Meta-Analysis Control Panel} 中，可以在森林图窗格的 {bf:森林图} 选项卡上指定列。

{marker optstbl}{...}
{synoptset 28 tabbed}{...}
{synopthdr:options}
{synoptline}
{syntab:主要}
{synopt :{opt random}[{cmd:(}{help meta_summarize##remethod:{it:remethod}}{cmd:)}]}随机效应元分析{p_end}
{synopt :{opt common}[{cmd:(}{help meta_summarize##cefemethod:{it:cefemethod}}{cmd:)}]}共同效应元分析{p_end}
{synopt :{opt fixed}[{cmd:(}{help meta_summarize##cefemethod:{it:cefemethod}}{cmd:)}]}固定效应元分析{p_end}
{synopt :{help meta_summarize##reopts:{it:reopts}}}随机效应模型选项{p_end}
{synopt :{opth subgr:oup(varlist)}}对每个变量进行子组元分析 {it:varlist}{p_end}
{synopt :{opth cumul:ative(meta_summarize##cumulspec:cumulspec)}}累积元分析{p_end}

{syntab:选项}
{synopt :{opt l:evel(#)}}设置置信水平；默认为元分析声明的水平{p_end}
{synopt :{help meta_summarize##eform_option:{it:eform_option}}}报告指数化结果{p_end}
{synopt :{opt tdist:ribution}}报告 t 测试而不是 z 测试{p_end}
{synopt :[{cmd:no}]{opt metashow}}在输出中显示或抑制元设置{p_end}

{syntab:最大化}
{synopt :{help meta_forestplot##maxopts:{it:maximize_options}}}控制最大化过程；很少使用{p_end}

{syntab:森林图}
{synopt :{cmdab:col:umnopts(}{help meta_forestplot##col:{it:col}}{cmd:,} [{help meta_forestplot##colopts:{it:colopts}}]{cmd:)} }列选项；可重复使用{p_end}
{synopt :{opth cibind:(meta_forestplot##cibind:bind)}}更改 CIs 在列 {cmd:_esci} 和 {cmd:_ci} 中的绑定；默认为 {cmd:cibind(brackets)}{p_end}
{synopt :{opth sebind:(meta_forestplot##sebind:bind)}}更改列 {cmd:_esse} 的标准误差绑定；默认为 {cmd:sebind(parentheses)}{p_end}
{synopt :{opt nohrule}}抑制水平规则{p_end}
{synopt :{opth hrule:opts(meta_forestplot##hruleopts:hrule_options)}}更改水平规则的外观{p_end}
{synopt :{help meta_forestplot##textopts:{it:text_options}}}更改文本选项的外观，例如列标题、超标题等{p_end}
{synopt :{help meta_forestplot##plotopts:{it:plot_options}}}更改外观或抑制标记，限制 CIs 范围等{p_end}
{synopt :{help meta_forestplot##testopts:{it:test_options}}}抑制关于异质性统计和测试的信息{p_end}
{synopt :{it:twoway_options}}除 {cmd:by()} 以外的任何选项，详细说明请见 {help twoway_options_zh:[G-3] twoway options}{p_end}
{synoptline}

{marker col}{...}
{synopthdr:col}
{synoptline}
{syntab:默认列和顺序}
{synopt :{cmd:_id}}研究标签{p_end}
{synopt :{cmd:_data}}摘要数据； {cmd:_data1} 和 {cmd:_data2}（仅在 {cmd:meta esize} 之后）{p_end}
{synopt :{cmd:_plot}}森林图{p_end}
{synopt :{cmd:_esci}}效应大小及其置信区间{p_end}
{synopt :{cmd:_weight}}给每个研究的总权重百分比{p_end}

{syntab:摘要数据列和顺序}
{syntab:{space 1}连续结果}
{syntab:{space 2}治疗组}
{synopt :{cmd:_data1}}治疗组的摘要数据； {cmd:_n1}, {cmd:_mean1}, 和 {cmd:_sd1}{p_end}
{synopt :{cmd:_n1}}治疗组的样本量{p_end}
{synopt :{cmd:_mean1}}治疗组的平均值{p_end}
{synopt :{cmd:_sd1}}治疗组的标准差{p_end}

{syntab:{space 2}对照组}
{synopt :{cmd:_data2}}对照组的摘要数据； {cmd:_n2}, {cmd:_mean2},
和 {cmd:_sd2}{p_end}
{synopt :{cmd:_n2}}对照组的样本量{p_end}
{synopt :{cmd:_mean2}}对照组的平均值{p_end}
{synopt :{cmd:_sd2}}对照组的标准差{p_end}

{syntab:{space 1}二分结果}
{syntab:{space 2}治疗组}
{synopt :{cmd:_data1}}治疗组的摘要数据； {cmd:_a} 和 {cmd:_b}{p_end}
{synopt :{cmd:_a}}治疗组中的成功次数{p_end}
{synopt :{cmd:_b}}治疗组中的失败次数{p_end}

{syntab:{space 2}对照组}
{synopt :{cmd:_data2}}对照组的摘要数据； {cmd:_c} 和 {cmd:_d}{p_end}
{synopt :{cmd:_c}}对照组中的成功次数{p_end}
{synopt :{cmd:_d}}对照组中的失败次数{p_end}

{syntab:其他列}
{synopt :{cmd:_es}}效应大小{p_end}
{synopt :{cmd:_ci}}效应大小的置信区间{p_end}
{synopt :{cmd:_lb}}效应大小的下置信限{p_end}
{synopt :{cmd:_ub}}效应大小的上置信限{p_end}
{synopt :{cmd:_se}}效应大小的标准误差{p_end}
{synopt :{cmd:_esse}}效应大小及其标准误差{p_end}
{synopt :{cmd:_pvalue}}显著性测试的 p 值，采用 {cmd:subgroup()} 或 {cmd:cumulative()}{p_end}
{synopt :{cmd:_K}}具有 {cmd:subgroup()} 的研究数量{p_end}
{synopt :{cmd:_order}}用于与 {cmd:cumulative()} 的累积元分析的顺序变量{p_end}
{synoptline}
{p 4 6 2}
列 {cmd:_data}, {cmd:_data1}, {cmd:_data2} 和其他对应数据列在使用 
{helpb meta set} 声明后不可用。{p_end}
{p 4 6 2}
列 {cmd:_n1}, {cmd:_mean1}, {cmd:_sd1}, {cmd:_n2}, {cmd:_mean2}, 和 
{cmd:_sd2} 仅在使用 
{helpb meta esize} 对于连续结果声明后可用。{p_end}
{p 4 6 2}
列 {cmd:_a}, {cmd:_b}, {cmd:_c}, 和 {cmd:_d} 仅在使用 
{helpb meta esize} 对于二进制结果声明后可用。{p_end}
{p 4 6 2}
当选项 {cmd:cumulative()} 或 
{cmd:subgroup()} 与多个变量一起指定时，列 {cmd:_pvalue} 可用。{p_end}
{p 4 6 2}
当选项 {cmd:subgroup()} 与多个变量一起指定时，列 {cmd:_K} 可用。{p_end}

{synoptset 28}{...}
{marker colopts}{...}
{synopthdr:colopts}
{synoptline}
{synopt :{opth superti:tle(strings:string)}}超标题规范{p_end}
{synopt :{opth ti:tle(strings:string)}}标题规范{p_end}
{synopt :{opth format:(%fmt)}}列项目的数值格式{p_end}
{synopt :{opth mask:(meta_forestplot##mask:mask)}}列项目的字符串掩码{p_end}
{synopt :{opth plotr:egion(meta_forestplot##regionopts:region_options)}}绘图区域的属性{p_end}
{synopt :{help meta_forestplot##textboxopts:{it:textbox_options}}}文本框的外观{p_end}
{synoptline}

{marker textopts}{...}
{synopthdr:text_options}
{synoptline}
{synopt :{opth colti:tleopts(textbox_options)}}更改列标题和超标题的外观{p_end}
{synopt :{opth item:opts(textbox_options)}}更改研究行的外观{p_end}
{synopt :{opth overall:opts(textbox_options)}}更改整体行的外观{p_end}
{synopt :{opth group:opts(textbox_options)}}更改子组行的外观{p_end}
{synopt :{opth body:opts(textbox_options)}}更改研究、子组和整体行的外观{p_end}
{synopt :{opt nonotes}}抑制关于元分析模型、方法等的注释{p_end}
{synoptline}

{marker plotopts}{...}
{synopthdr:plot_options}
{synoptline}
{synopt :{opt crop(# #)}}限制 CI 线的范围{p_end}
{synopt :{opth ciop:ts(meta_forestplot##ciopts:ci_options)}}更改 CI 线的外观（大小、颜色等）{p_end}
{synopt :{opt nomark:ers}}抑制研究标记{p_end}
{synopt :{opth mark:eropts(meta_forestplot##markeropts:marker_options)}}更改研究标记的外观（大小、颜色等）{p_end}
{synopt :{opt nowmark:ers}}抑制研究标记的加权{p_end}
{synopt :{opt noomark:er}}抑制整体标记{p_end}
{synopt :{opth omark:eropts(meta_forestplot##omarkeropts:marker_options)}}更改整体标记的外观（大小、颜色等）{p_end}
{synopt :{opt nogmark:ers}}抑制子组标记{p_end}
{synopt :{opth gmark:eropts(meta_forestplot##gmarkeropts:marker_options)}}更改子组标记的外观（大小、颜色等）{p_end}
{synoptline}

{marker testopts}{...}
{synopthdr:test_options}
{synoptline}
{synopt :{opt noohet:stats}}抑制整体异质性统计{p_end}
{synopt :{opt noohom:test}}抑制整体同质性测试{p_end}
{synopt :{opt noosig:test}}抑制整体效应大小的显著性测试{p_end}
{synopt :{opt noghet:stats}}抑制子组异质性统计{p_end}
{synopt :{opt nogwhom:tests}}抑制子组内同质性测试{p_end}
{synopt :{opt nogbhom:tests}}抑制子组间同质性测试{p_end}
{synoptline}


INCLUDE help menu_meta


{marker description}{...}
{title:描述}

{pstd}
{cmd:meta forestplot} 以图形形式总结 {help meta_glossary##meta_data:{bf:元} 数据}。它报告单个效应大小和整体效应大小（ES）、它们的置信区间（CIs）、异质性统计等。
{cmd:meta forestplot} 可以执行随机效应（RE）、共同效应（CE）和固定效应（FE）元分析。它还可以执行子组、累积和敏感性元分析。有关元分析摘要的表格显示，请参见 {helpb meta summarize:[META] meta summarize}。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection META metaforestplotQuickstart:快速入门}

        {mansection META metaforestplotRemarksandexamples:备注和示例}

        {mansection META metaforestplotMethodsandformulas:方法和公式}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主要}

{phang}
{cmd:random}[{cmd:(}{help meta_summarize##remethod:{it:remethod}}{cmd:)}],
{cmd:common}[{cmd:(}{help meta_summarize##cefemethod:{it:cefemethod}}{cmd:)}],
{cmd:fixed}[{cmd:(}{help meta_summarize##cefemethod:{it:cefemethod}}{cmd:)}],
{opth subgroup(varlist)}, 和
{opth cumulative:(meta_summarize##cumulspec:cumulspec)}；
见 {help meta_summarize##options:{it:选项}}
在 {help meta_summarize_zh:[META] meta summarize} 中。

{phang}
{it:reopts} 是 {opt tau2(#)}, {opt i2(#)}, 和
{opth se:(meta_summarize##seadj:seadj)}。这些选项用于随机效应元分析。请参见 {help meta_summarize##options:{it:选项}}
在 {help meta_summarize_zh:[META] meta summarize} 中。

{dlgtab:选项}
 
{marker eform}{...}
{phang}
{opt level(#)}, {help meta_summarize##eform_option:{it:eform_option}},
{opt tdistribution}, 和 [{cmd:no}]{opt metashow}；见
{help meta_summarize##options:{it:选项}}
在 {help meta_summarize_zh:[META] meta summarize} 中。

{dlgtab:最大化}
 
{marker maxopts}{...}
{phang} 
{it:maximize_options}: {opt iterate(#)}, {opt tolerance(#)},
{opt nrtolerance(#)}, {opt nonrtolerance}, {opt from(#)},
及 {opt showtrace}；见
{help meta_summarize##options:{it:选项}}
在 {help meta_summarize_zh:[META] meta summarize} 中。

{dlgtab:森林图}
 
{phang}
{cmd:columnopts(}{help meta_forestplot##col:{it:col}}[{cmd:,} {it:colopts}]{cmd:)} 更改 {it:col} 所标识列的外观。此选项可以重复使用。

{pmore}
{it:colopts} 是以下选项：

{phang3}
{opth supertitle:(strings:string)} 指定列的超标题为 {it:string}。

{phang3}
{opth title:(strings:string)} 指定列的标题为 {it:string}。

{phang3}
{opth format(%fmt)} 指定列数值的格式。

{marker mask}{...}
{phang3}
{opt mask(mask)} 指定一个由格式组成的字符串用于列的统计数据。例如，针对列 {cmd:_weight} 的掩码可以指定为 {cmd:"%6.2f %%"}，该列标识权重百分比。

{marker regionopts}{...}
{phang3}
{opt plotregion(region_options)} 修改绘图区域的属性。可以更改边距、背景颜色、轮廓等；见 {manhelpi region_options G-3:region_options}。

{marker textboxopts}{...}
{phang3}
{it:textbox_options} 会影响列项目（研究和组）的呈现。这些选项会覆盖在全局选项 {cmd:bodyopts()}、{cmd:itemopts()} 和 {cmd:groupopts()} 中指定的内容。见 {manhelpi added_text_options G-3:added_text_options}。

{pmore3}
选项 {cmd:format()}、{cmd:mask()} 和 {it:textbox_options} 将被 {cmd:_plot} 忽略。

{marker cibind}{...}
{phang}
{opt cibind(bind)} 更改 CIs 在列 {cmd:_esci} 和 {cmd:_ci} 中的绑定。 {it:bind} 是 {cmd:brackets} 或 {cmdab:parent:heses} 之一。默认情况下，CIs 使用括号绑定 {cmd:cibind(brackets)}。此选项仅在图中出现 {cmd:_esci} 或 {cmd:_ci} 时相关。

{marker sebind}{...}
{phang}
{opt sebind(bind)} 更改列 {cmd:_esse} 的标准误差绑定。 {it:bind} 是 {cmdab:parent:heses} 或 {cmd:brackets} 之一。默认情况下，标准误差使用括号绑定 {cmd:cibind(parentheses)}。此选项仅在图中出现 {cmd:_esse} 时相关。

{phang}
{cmd:nohrule} 抑制水平规则。

{marker hruleopts}{...}
{phang}
{opt hruleopts(hrule_options)} 影响水平规则的外观。

{pmore}
{it:hrule_options} 是以下选项：

{phang3}
{opt lc:olor(colorstyle)} 指定规则的颜色；见 {manhelpi colorstyle G-4}。

{phang3}
{opt lw:idth(linewidthstyle)} 指定规则的宽度；见 {manhelpi linewidthstyle G-4}。

{phang3}
{opt la:lign(linealignmentstyle)} 指定规则的对齐方式；见 {manhelpi linealignmentstyle G-4}。

{phang3}
{opt lp:attern(linepatternstyle)} 指定规则的线型；见 {manhelpi linepatternstyle G-4}。

{phang3}
{opt lsty:le(linestyle)} 指定规则的整体样式；见 {manhelpi linestyle G-4}。

{phang3}
{opt m:argin(marginstyle)} 指定规则的边距；见 {manhelpi marginstyle G-4}。

{phang}
{it:text_options} 是以下选项：

{phang2}
{opt coltitleopts(textbox_options)} 影响列标题和超标题文本的外观。见 {manhelpi textbox_options G-3}。

{phang2}
{opt itemopts(textbox_options)} 影响研究行文本的外观；见 {manhelpi textbox_options G-3}。当指定选项 {cmd:subgroup()} 且包含多个变量时，此选项将被忽略或指定选项 {cmd:cumulative()} 时。

{phang2}
{opt overallopts(textbox_options)} 影响整体行文本的外观。见 {manhelpi textbox_options G-3}。

{phang2}
{opt groupopts(textbox_options)} （同义词 {cmd:subgroupopts()}）在指定选项 {cmd:subgroup()} 时影响子组行文本的外观。见 {manhelpi textbox_options G-3}。

{phang2}
{opt bodyopts(textbox_options)} 影响研究、子组和整体行文本的外观。见 {manhelp textbox_options G-3}。

{phang2}
{opt nonotes} 抑制图表上显示的有关指定元分析模型和方法及标准误差调整的注释。

{phang}
{it:plot_options} 是以下选项：

{phang2}
{opt crop(#1 #2)} 将 CI 线的范围限制在 {it:#1} 和 {it:#2} 之间。可以在任何两个值中指定缺失值，以指示相应的限制不应被裁剪。否则，超出指定值范围的线将被裁剪并饰以箭头。此选项在存在小样本且标准误差较大的情况下是有用的，这可能导致置信区间过宽，无法在图中完美展示。选项 {cmd:crop()} 可以用于处理这种情况。

{marker ciopts}{...}
{phang2}
{opt ciopts(ci_options)} 影响 CI 线的外观，并在裁剪 CIs（见选项 {cmd:crop()}）时影响箭头。

{pmore2}
{it:ci_options} 是 {manhelpi line_options G-3} 中记录的任何选项，以及 {help twoway_pcarrow_zh:[G-2] graph twoway pcarrow} 的下列选项：{cmdab:msty:le()}、{cmdab:msiz:e()}、{cmdab:mang:le()}、{cmdab:barb:size()}、{cmdab:mc:olor()}、{cmdab:mfc:olor()}、{cmdab:mlc:olor()}、{cmdab:mlw:idth()}、{cmdab:mlsty:le()} 和 {cmdab:col:or()}。

{phang2}
{cmd:nomarkers} 抑制研究标记。

{marker markeropts}{...}
{phang2}
{opt markeropts(marker_options)} 影响研究标记的外观。

{pmore2}
{it:marker_options}: {cmdab:m:symbol()}、{cmdab:mc:olor()}、{cmdab:mfc:olor()}、{cmdab:mlc:olor()}、{cmdab:mlw:idth()}、{cmdab:mla:lign()}、{cmdab:mlsty:le()} 和 {cmdab:msty:le()}；见 {manhelpi marker_options G-3}。

{phang2}
{opt nowmarkers} 抑制研究标记的加权。

{pmore2}
{opt nomarkers}、{opt markeropts()} 和 {opt nowmarkers} 在指定选项 {cmd:subgroup()} 且包含多个变量或指定选项 {cmd:cumulative()} 时将被忽略。

{phang2}
{opt noomarker} 抑制整体标记。

{marker omarkeropts}{...}
{phang2}
{opt omarkeropts(marker_options)} 影响整体标记的外观。

{pmore2}
{it:marker_options}: {cmdab:mc:olor()}、{cmdab:mfc:olor()}、{cmdab:mlc:olor()}、{cmdab:mlw:idth()}、{cmdab:mla:lign()}、{cmdab:mlsty:le()} 和 {cmdab:msty:le()}；见 {manhelpi marker_options G-3}。

{phang2}
{opt nogmarkers} 抑制子组标记。

{marker gmarkeropts}{...}
{phang2}
{opt gmarkeropts(marker_options)} 影响子组标记的外观。

{pmore2}
{it:marker_options}: {cmdab:mc:olor()}、{cmdab:mfc:olor()}、{cmdab:mlc:olor()}、{cmdab:mlw:idth()}、{cmdab:mla:lign()}、{cmdab:mlsty:le()} 和 {cmdab:msty:le()}；见 {manhelpi marker_options G-3}。

{pmore2}
{opt nogmarkers} 和 {opt gmarkeropts()} 在未指定选项 {cmd:subgroup()} 时将被忽略。

{phang}
{it:test_options} 如下定义。这些选项与累积元分析无相关性。

{phang2}
{opt noohetstats} 抑制在图表上以 {cmd:Overall} 行标题报告的整体异质性统计。

{phang2}
{opt noohomtest} 抑制标记为 {cmd:Test of θi=θj} 的整体同质性测试，该测试位于图表上的 {cmd:Overall} 行标题下。

{phang2}
{opt noosigtest} 抑制标记为 {cmd:Test of θ=0} 的整体效应大小显著性测试，位于图表上的 {cmd:Overall} 行标题下。此测试在子组分析中不报告，因此当指定选项 {cmd:subgroup()} 时，此选项是隐含的。

{phang2}
{opt noghetstats} 抑制在执行单一子组分析时报告的子组异质性统计，即当选项 {cmd:subgroup()} 与一个变量一同指定时。这些统计在特定组行标题下报告。

{phang2}
{opt nogwhomtests} 抑制子组内同质性测试。这些测试会调查各子组内研究的效应大小差异。这些测试在执行单一子组分析时报告，即当指定选项 {opt subgroup()} 与一个变量一同指定时。这些测试在特定组行标题下以 {cmd:Test of θi=θj} 的形式进行标记。

{phang2}
{opt nogbhomtests} 抑制在执行任何子组分析时报告的子组间同质性测试，即当指定选项 {cmd:subgroup()} 时。这些测试会调查子组总体效应大小之间的差异，并在图表中标记为 {cmd:Test of group differences}。

{phang}
{it:twoway_options} 是 {manhelpi twoway_options G-3:twoway_options} 中记录的任意选项，不包括 {cmd:by()}。这些选项包括为图表命名的选项（见 {manhelpi title_options G-3}）和将图表保存到磁盘的选项（见 {manhelpi saving_option G-3}）。

{marker examples}{...}
{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse bcgset}{p_end}

{pstd}构建森林图{p_end}
{phang2}{cmd:. meta forestplot}

{pstd}根据变量 {cmd:alloc} 构建子组 MA 森林图并请求风险比，而不是默认的对数风险比{p_end}
{phang2}{cmd:. meta forestplot, subgroup(alloc) eform}

{pstd}请求在指定顺序上显示特定列，并将 CIs 范围限制在下限为 -2{p_end}
{phang2}{cmd:. meta forestplot _id _esci _weight _plot, crop(-2 .)}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse streptoset}

{pstd}基于变量 {cmd:year} 的顺序构建 CMA 森林图，并请求赔率比而不是默认的对数赔率比{p_end}
{phang2}{cmd:. meta forestplot, cumulative(year) or}
{p_end}

    {hline}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <meta_forestplot.sthlp>}