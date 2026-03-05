{smcl}
{* *! version 1.2.5  05sep2018}{...}
{viewerdialog mi "dialog mi"}{...}
{vieweralsosee "[MI] Intro" "mansection MI Intro"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MI] Glossary" "help mi_glossary_zh"}{...}
{vieweralsosee "[MI] Intro substantive" "help mi_intro_substantive_zh"}{...}
{vieweralsosee "[MI] Styles" "help mi_styles_zh"}{...}
{vieweralsosee "[MI] Workflow" "help mi_workflow_zh"}{...}
{viewerjumpto "Description" "mi_zh##description"}{...}
{viewerjumpto "Remarks" "mi_zh##remarks"}{...}
{viewerjumpto "Acknowledgments" "mi_zh##ack"}
{help mi:English Version}
{hline}{...}
{p2colset 1 15 17 2}{...}
{p2col:{bf:[MI] Intro} {hline 2}}关于 mi 的介绍{p_end}
{p2col:}({mansection MI Intro:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{p 8 9 9}
{it:[建议： 阅读}
{bf:{help mi_intro_substantive_zh:[MI] Intro substantive}}
{it:第一。）}


{marker description}{...}
{title:描述}

    {c TLC}{hline 61}{c TRC}
    {c |} {cmd:mi} 命令集处理多重插补{col 67}{c |}
    {c |} 数据，简称为 {cmd:mi} 数据。为了尽快熟悉 {cmd:mi}{col 67}{c |}
    {c |} ，请执行以下操作：{col 67}{c |}
    {c |}{col 67}{c |}
    {c |}    1. 查看{it:{help mi##example:简单示例}}，在下面的{bf:{help mi##remarks:备注}}中.{col 67}{c |}
    {c |}{col 67}{c |}
    {c |}    2. 如果您有需要插补的数据，请查看{col 67}{c |}
    {c |}        {bf:{help mi_set_zh:[MI] mi set}}{col 67}{c |}
    {c |}        {bf:{help mi_impute_zh:[MI] mi impute}}{col 67}{c |}
    {c |}{col 67}{c |}
    {c |}    3. 如果您已有插补过的数据，请查看{col 67}{c |}
    {c |}        {bf:{help mi_import_zh:[MI] mi import}}{col 67}{c |}
    {c |}{col 67}{c |}
    {c |}    4. 要拟合您的模型，请查看{col 67}{c |}
    {c |}        {bf:{help mi_estimate_zh:[MI] mi estimate}}{col 67}{c |}
    {c BLC}{hline 61}{c BRC}


{p 4 4 2}
从原始数据创建 {cmd:mi} 数据

{col 7}{...}
{...}
{...}
{col 7}{...}
{hline 70}
{...}
{...}
{...}
{...}
{col 7}{bf:{help mi_set_zh:mi set}}{...}
{col 30}声明数据为 {cmd:mi} 数据
{...}
{...}
{col 7}{bf:{help mi_set_zh:mi register}}{...}
{col 30}注册插补的、被动的或常规的变量
{...}
{...}
{col 7}{bf:{help mi_set_zh:mi unregister}}{...}
{col 30}注销之前注册的变量
{...}
{...}
{col 7}{bf:{help mi_set_zh:mi unset}}{...}
{col 30}将数据恢复为未设定状态（很少使用）
{...}
{...}
{col 7}{...}
{hline 70}
{p 6 6 2}
请查看{it:{help mi##summary:总结}}以获取 {cmd:mi} 数据和这些命令的摘要。
查看{bf:{help mi_glossary_zh:[MI] 词汇表}}以获取术语的定义。


{p 4 4 2}
导入已经对缺失值进行插补的数据
（不要 {cmd:mi} {cmd:set} 数据）

{col 7}{...}
{hline 70}
{col 7}{bf:{help mi_import_zh:mi import}}{...}
{col 30}导入 {cmd:mi} 数据
{...}
{...}
{col 7}{bf:{help mi_export_zh:mi export}}{...}
{col 30}将 {cmd:mi} 数据导出到非 Stata 应用程序
{...}
{...}
{col 7}{...}
{hline 70}
{p 6 6 2}


{p 4 4 2}
一旦数据被 {cmd:mi set} 或 {cmd:mi import}

{col 7}{...}
{hline 70}
{col 7}{bf:{help mi_describe_zh:mi query}}{...}
{col 30}查询是否已 {cmd:mi set}
{...}
{...}
{col 7}{bf:{help mi_describe_zh:mi describe}}{...}
{col 30}描述 {cmd:mi} 数据
{...}
{...}
{col 7}{bf:{help mi_varying_zh:mi varying}}{...}
{col 30}识别在 {it:m} 上变化的变量
{...}
{...}
{col 7}{bf:{help mi_misstable_zh:mi misstable}}{...}
{col 30}列出缺失值
{...}
{...}
{col 7}{bf:{help mi_passive_zh:mi passive}}{...}
{col 30}创建被动变量并注册它
{col 7}{...}
{hline 70}


{p 4 4 2}
对 {cmd:mi} 数据执行估计

{col 7}{...}
{hline 70}
{col 7}{bf:{help mi_impute_zh:mi impute}}{...}
{col 30}插补缺失值
{...}
{...}
{col 7}{bf:{help mi_estimate_zh:mi estimate}}{...}
{col 30}进行并合并对 {it:m}>0 的估计
{...}
{...}
{col 7}{bf:{help mi_ptrace_zh:mi ptrace}}{...}
{col 30}检查 MCMC 的稳定性
{...}
{...}
{col 7}{bf:{help mi_test_zh:mi test}}{...}
{col 30}对回归系数进行测试
{...}
{...}
{col 7}{bf:{help mi_test_zh:mi testtransform}}{...}
{col 30}对变换后的回归系数进行测试
{...}
{...}
{col 7}{bf:{help mi_predict_zh:mi predict}}{...}
{col 30}获得线性预测
{...}
{...}
{col 7}{bf:{help mi_predict_zh:mi predictnl}}{...}
{col 30}获得非线性预测
{...}
{...}
{col 7}{...}
{hline 70}


{p 4 4 2}
对未在设置 {cmd:mi} 时设定的任何 {cmd:mi} 数据执行 {cmd:stset}、{cmd:svyset}、{cmd:tsset} 或 {cmd:xtset}

{col 7}{...}
{hline 70}
{col 7}{bf:{help mi_xxxset_zh:mi fvset}}{...}
{col 30}{cmd:fvset}   对于 {cmd:mi} 数据
{...}
{col 7}{bf:{help mi_xxxset_zh:mi svyset}}{...}
{col 30}{cmd:svyset}  对于 {cmd:mi} 数据
{...}
{...}
{col 7}{bf:{help mi_xxxset_zh:mi xtset}}{...}
{col 30}{cmd:xtset}   对于 {cmd:mi} 数据
{...}
{...}
{col 7}{bf:{help mi_xxxset_zh:mi tsset}}{...}
{col 30}{cmd:tsset}   对于 {cmd:mi} 数据
{...}
{...}
{col 7}{bf:{help mi_xxxset_zh:mi stset}}{...}
{col 30}{cmd:stset}   对于 {cmd:mi} 数据
{...}
{...}
{col 7}{bf:{help mi_xxxset_zh:mi streset}}{...}
{col 30}{cmd:streset} 对于 {cmd:mi} 数据
{...}
{...}
{col 7}{bf:{help mi_xxxset_zh:mi st}}{...}
{col 30}{cmd:st}      对于 {cmd:mi} 数据
{...}
{...}
{col 7}{...}
{hline 70}


{p 4 4 2}
对 {cmd:mi} 数据执行数据管理

{col 7}{...}
{hline 70}
{col 7}{bf:{help mi_rename_zh:mi rename}}{...}
{col 30}重命名变量
{...}
{...}
{col 7}{bf:{help mi_append_zh:mi append}}{...}
{col 30}{cmd:append}  对于 {cmd:mi} 数据
{...}
{...}
{col 7}{bf:{help mi_merge_zh:mi merge}}{...}
{col 30}{cmd:merge}   对于 {cmd:mi} 数据
{...}
{...}
{col 7}{bf:{help mi_expand_zh:mi expand}}{...}
{col 30}{cmd:expand}  对于 {cmd:mi} 数据
{...}
{...}
{col 7}{bf:{help mi_reshape_zh:mi reshape}}{...}
{col 30}{cmd:reshape} 对于 {cmd:mi} 数据
{...}
{...}
{col 7}{bf:{help mi_stsplit_zh:mi stsplit}}{...}
{col 30}{cmd:stsplit} 对于 {cmd:mi} 数据
{...}
{...}
{col 7}{bf:{help mi_stsplit_zh:mi stjoin}}{...}
{col 30}{cmd:stjoin}  对于 {cmd:mi} 数据
{...}
{...}
{col 7}{bf:{help mi_add_zh:mi add}}{...}
{col 30}将一个 {cmd:mi} 数据集中的插补添加到另一个数据集
{...}
{...}
{col 7}{...}
{hline 70}


{p 4 4 2}
对没有 {cmd:mi} 前缀命令的数据进行管理

{col 7}{...}
{hline 70}
{col 7}{bf:{help mi_extract_zh:mi extract 0}}{...}
{col 30}提取 {it:m}=0 数据
{col 7}{help mi_replace0_zh:...}{...}
{col 30}按照常规方式执行数据管理
{col 7}{bf:{help mi_replace0_zh:mi replace0}}{...}
{col 30}在 {cmd:mi} 数据中替换 {it:m}=0 数据
{col 7}{...}
{hline 70}


{p 4 4 2}
对 {it:m}=0、{it:m}=1 等进行相同的数据管理或报告命令

{col 7}{...}
{hline 70}
{col 7}{bf:{help mi_xeq_zh:mi xeq:}} ...{...}
{col 30}在 {it:m}=0、{it:m}=1、{it:m}=2、...、{it:m}={it:M} 上执行命令
{...}
{col 7}{bf:{help mi_xeq_zh:mi xeq #:}} ...{...}
{col 30}在 {it:m}=# 上执行命令
{...}
{col 7}{bf:{help mi_xeq_zh:mi xeq # # ...:}} ...{...}
{col 30}在 {it:m} 指定值上执行命令
{col 7}{...}
{hline 70}


{p 4 4 2}
有用的工具命令

{col 7}{...}
{hline 70}
{col 7}{bf:{help mi_convert_zh:mi convert}}{...}
{col 30}将 {cmd:mi} 数据从一种样式转换为另一种
{...}

{...}
{col 7}{bf:{help mi_extract_zh:mi extract #}}{...}
{col 30}从 {cmd:mi} 数据提取 {it:m}={it:#}
{...}
{...}
{col 7}{bf:{help mi_select_zh:mi select #}}{...}
{col 30}程序员的命令，与 {cmd:mi} {cmd:extract} 类似

{...}
{...}
{col 7}{bf:{help mi_copy_zh:mi copy}}{...}
{col 30}复制 {cmd:mi} 数据
{...}
{...}
{col 7}{bf:{help mi_erase_zh:mi erase}}{...}
{col 30}删除包含 {cmd:mi} 数据的文件
{...}
{...}

{col 7}{bf:{help mi_update_zh:mi update}}{...}
{col 30}验证/使 {cmd:mi} 数据一致
{...}
{...}
{col 7}{bf:{help mi_reset_zh:mi reset}}{...}
{col 30}重置插补或被动变量
{col 7}{...}
{hline 70}


{p 4 4 2}
对扩展 {cmd:mi} 感兴趣的程序员

{col 7}{...}
{hline 70}
{col 7}{bf:{help mi_technical_zh:[MI] 技术}}{...}
{col 30}针对程序员的详细信息
{col 7}{hline 70}


{marker sum_styles}{...}
{p 4 4 2}
{it:样式总结}

{p 6 6 2}
{cmd:mi} 数据有四种样式或格式存储：flongsep、flong、mlong 和 wide。

{p 8 12 2}
1.  Flongsep:  {it:m}=0、{it:m=1}、...、{it:m}={it:M} 是每个单独的
    {cmd:.dta} 数据集。如果 {it:m}=0 数据存储于
    {cmd:pat.dta}，则 {it:m}=1 数据存储于 {cmd:_1_pat.dta}，
    {it:m}=2 存储于 {cmd:_2_pat.dta}，依此类推。
    Flongsep 是指 {it:完全长且独立}。

{p 8 12 2}
2.  Flong:  {it:m}=0、{it:m}=1、...、{it:m}={it:M} 存储在一个数据集中，
    观察数为 {it:_N} = {bind:{it:N} + {it:M}*{it:N}}，
    其中 {it:N} 是 {it:m}=0 的观察数。
    Flong 是指 {it:完全长}。

{p 8 12 2}
3.  Mlong:  {it:m=0}、{it:m=1}、...、{it:m}={it:M} 存储在一个数据集中，
    观察数为 {it:_N} = {bind:{it:N} + {it:M}*{it:n}}，
    其中 {it:n} 是 {it:m}=0 中不完整观察的数量。
    Mlong 是指 {it:边际长}。

{p 8 12 2}
4.  Wide:  {it:m=0}、{it:m=1}、...、{it:m}={it:M} 存储在一个数据集中，
    观察数为 {it:_N} = {it:N}。每个插补和
    被动变量都有 {it:M} 个附加变量与之关联。
    如果变量 {cmd:bp} 包含 {it:m}=0 的值，则
    {it:m}=1 的值包含在变量 {cmd:_1_bp} 中，
    {it:m}=2 的值包含在变量 {cmd:_2_bp} 中，依此类推。
    Wide 是指 {it:宽}。

{p 6 6 2}
请参阅 
{it:{help mi_glossary##def_style:样式}} 在 
{bf:{help mi_glossary_zh:[MI] 词汇表}}中
并请参阅 
{bf:{help mi_styles_zh:[MI] Styles}} 获取示例。
请参阅 {bf:{help mi_technical_zh:[MI] 技术}} 获取程序员的详细信息。  


{marker summary}{...}
{p 4 4 2}
{it:总结}

{p 8 12 2}
1.  {cmd:mi} 数据可以存储在四种格式之一 --
    flongsep、flong、mlong 和 wide -- 统称为样式。
    描述已在上面的
    {it:{help mi##sum_styles:样式总结}} 中提供。

{p 8 12 2}
2.  {cmd:mi} 数据包含 {it:M} 个编号为 {it:m}=1、2、...、{it:M} 的插补
    ，并包含 {it:m}=0，即包含缺失值的原始数据。

{p 8 12 2}
3.  {cmd:mi} 数据中的每个变量都注册为插补的、被动的或常规的，或者是未注册的。
{p_end}
{p 12 16 2}
a.
    未注册的变量大多被视为常规变量。  
{p_end}
{p 12 16 2}
b.  常规
    变量通常不包含缺失值，或者如果包含，则在 {it:m}>0 中不进行插补。
{p_end}
{p 12 16 2}
c.  插补变量在 {it:m}=0 中包含缺失值，并且这些值在 {it:m}>0 中被插补或将被插补。
{p_end}
{p 12 16 2}
d.  被动变量是插补的、常规的或其他被动变量的代数组合。

{p 8 12 2}
4.  如果在 {it:m}=0 中，插补变量包含大于 {cmd:.} 的值 -- 它包含 {cmd:.a}、{cmd:.b}、...、 
    {cmd:.z} -- 则该值被视为硬缺失，并且在 {it:m}>0 中继续缺失。

{p 6 6 2}
请参阅 {bf:{help mi_glossary_zh:[MI] 词汇表}} 以获取更全面的术语描述 
在本手册中使用的术语。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
备注按以下标题呈现：

	{help mi##example:简单示例}
	{help mi##order:建议的阅读顺序}


{marker example}{...}
{title:{it:一个简单的例子}}

{pstd}
我们有六个基本命令：

	. {cmd:webuse mheart5}{right:(1)    }

	. {cmd:mi set mlong}{right:(2)    }

	. {cmd:mi register imputed age bmi}{right:(3)    }

	. {cmd:set seed 29390}{right:(4)    }

	. {cmd:mi impute mvn age bmi = attack smokes hsgrad female, add(10)}{right:(5)    }

	. {cmd:mi estimate: logistic attack smokes age bmi hsgrad female}{right:(6)    }

{pstd}
故事是我们想要拟合  

	. {cmd:logistic attack smokes age bmi hsgrad female}

{pstd} 
但 {cmd:age} 和 {cmd:bmi} 变量包含缺失值。通过输入命令 {cmd:logistic} 拟合模型将忽略我们数据中的部分信息。多重插补 (MI) 试图恢复这些信息。
该方法对每个缺失值插补 {it:M} 个值。
之后，对这 {it:M} 个插补的数据集分别进行统计，然后合并结果。目标是获得更好的参数估计及其标准误差。

{pstd}
在上面的解决方案中， 

{p 8 12 2}
1.  我们加载数据。

{p 8 12 2}
2.  我们将数据设为 {cmd:mi}。

{p 8 12 2}
3.  我们告知 {cmd:mi} 要插补的变量，即这些变量包含缺失值。

{p 8 12 2}
4.  我们在命令5中插补值；为了使结果可重复，我们在命令4中设置随机数种子。此步骤是可选的。

{p 8 12 2}
5.  我们为命令3中注册的每个缺失值创建 {it:M}=10 个插补。

{p 8 12 2}
6.  我们在每个 10 个插补数据集上分别拟合所需模型，并合并结果。 

{pstd}
在整个 {cmd:mi} 文档中，我们将使用这些数据的变体。


{marker order}{...}
{title:{it:建议的阅读顺序}}

{p 4 4 2}
本手册的建议阅读顺序为

	{bf:{help mi_intro_substantive_zh:[MI] Intro substantive}}
	{bf:[MI] Intro} 
	{bf:{help mi_glossary_zh:[MI] 词汇表}}
	{bf:{help mi_workflow_zh:[MI] 流程}}

	{bf:{help mi_set_zh:[MI] mi set}}
	{bf:{help mi_import_zh:[MI] mi import}}
	{bf:{help mi_describe_zh:[MI] mi describe}}
	{bf:{help mi_misstable_zh:[MI] mi misstable}}

	{bf:{help mi_impute_zh:[MI] mi impute}} 
	{bf:{help mi_estimate_zh:[MI] mi estimate}}

	{bf:{help mi_styles_zh:[MI] Styles}}
	{bf:{help mi_convert_zh:[MI] mi convert}}
	{bf:{help mi_update_zh:[MI] mi update}}

	{bf:{help mi_rename_zh:[MI] mi rename}}
	{bf:{help mi_copy_zh:[MI] mi copy}}
	{bf:{help mi_erase_zh:[MI] mi erase}}
	{bf:{help mi_xxxset_zh:[MI] mi XXXset}}

	{bf:{help mi_extract_zh:[MI] mi extract}}
	{bf:{help mi_replace0_zh:[MI] mi replace0}}

	{bf:{help mi_append_zh:[MI] mi append}}
	{bf:{help mi_add_zh:[MI] mi add}}
	{bf:{help mi_merge_zh:[MI] mi merge}}
	{bf:{help mi_reshape_zh:[MI] mi reshape}}
	{bf:{help mi_stsplit_zh:[MI] mi stsplit}}
	{bf:{help mi_varying_zh:[MI] mi varying}}

{p 4 4 2}
感兴趣的程序员请查看 
{bf:{help mi_technical_zh:[MI] 技术}}。


{marker ack}{...}
{title:致谢}

{p 4 4 2}
感谢来自杜克大学的 Jerry (Jerome) Reiter、MRC 临床试验单位的 Patrick Royston 和 MRC 生物统计单位的 Ian White 对 {cmd:mi} 开发过程中的意见和支持。我们还要感谢 
伦敦卫生与热带医学学院的 James Carpenter 和布里斯托大学的 Jonathan Sterne 提供的建议。

{p 4 4 2}
在 Stata 中进行多重插补的先前和仍在进行的工作影响了 {cmd:mi} 的设计。
对于他们过去和现在的贡献，我们再次感谢
Patrick Royston 和 Ian White 对 {cmd:ice} 的支持；
John Carlin 和 John Galati，均来自墨尔本大学的墨尔本儿童研究所，以及
Patrick Royston 和 Ian White（再一次）
针对 {cmd:mim} 的贡献；
John Galati 针对 {cmd:inorm} 的贡献；
以及来自智利中央银行的 Rodrigo Alfaro 针对 {cmd:mira} 的支持。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mi.sthlp>}