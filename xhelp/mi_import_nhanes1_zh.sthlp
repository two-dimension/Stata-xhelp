{smcl}
{* *! version 1.1.3  15may2018}{...}
{viewerdialog mi "dialog mi"}{...}
{vieweralsosee "[MI] mi import nhanes1" "mansection MI miimportnhanes1"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MI] Intro" "help mi_zh"}{...}
{vieweralsosee "[MI] mi import" "help mi_import_zh"}{...}
{viewerjumpto "Syntax" "mi_import_nhanes1_zh##syntax"}{...}
{viewerjumpto "Menu" "mi_import_nhanes1_zh##menu"}{...}
{viewerjumpto "Description" "mi_import_nhanes1_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mi_import_nhanes1_zh##linkspdf"}{...}
{viewerjumpto "Options" "mi_import_nhanes1_zh##options"}{...}
{viewerjumpto "Remarks" "mi_import_nhanes1_zh##remarks"}
{help mi_import_nhanes1:English Version}
{hline}{...}
{p2colset 1 27 29 2}{...}
{p2col:{bf:[MI] mi import nhanes1} {hline 2}}导入 NHANES 格式数据到 mi{p_end}
{p2col:}({mansection MI miimportnhanes1:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{cmd:mi import nhanes1} {it:name}{cmd:,}
{it:required_options}
[{it:true_options}
{it:odd_options}]

{p 4 4 2}
其中 {it:name} 是要创建的 flongsep 数据的名称。 

{synoptset 28}{...}
{synopthdr:必需选项}
{synoptline}
{synopt:{cmd:using(}{it:filenamelist}{cmd:)}}输入文件名对于 {it:m}=1,
    {it:m}=2, ...{p_end}
{synopt:{cmd:id(}{varlist}{cmd:)}}标识变量{p_end}
{synoptline}
{p 4 6 2}
注意：在发出 {cmd:mi} {cmd:import} {cmd:nhanes1} 之前，{cmd:use} 输入文件用于 {it:m}=0。

{synopthdr:真实选项}
{synoptline}
{synopt:{cmdab:upper:case}}前缀和后缀为大写{p_end}
{synopt:{cmd:clear}}可以替换内存中未保存的数据{p_end}
{synoptline}

{synopthdr:奇数选项}
{synoptline}
{synopt:{cmd:nacode(}{it:#}{cmd:)}}不可用代码；默认是 {cmd:0}{p_end}
{synopt:{cmd:obscode(}{it:#}{cmd:)}}观察到的代码；默认是 {cmd:1}{p_end}
{synopt:{cmd:impcode(}{it:#}{cmd:)}}填补的代码；默认是 {cmd:2}{p_end}

{synopt:{cmdab:imppre:fix("}{it:string}{cmd:" "}{it:string}{cmd:")}}变量前缀；默认是 {cmd:"" ""}{p_end}
{synopt:{cmdab:impsuf:fix("}{it:string}{cmd:" "}{it:string}{cmd:")}}变量后缀；默认是 {cmd:"if" "mi"}{p_end}
{synoptline}
{p 4 6 2}
注意：{it:odd_options} 仅当您需要导入类似 nhanes1 但不是完全 nhanes1 格式的数据时指定。


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 多重插补}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:mi} {cmd:import} {cmd:nhanes1} 导入由美国疾病控制和预防中心（CDC）国家健康统计中心（NCHS）制作的国家健康与营养调查（NHANES）使用的格式记录的数据； 
请参见 {browse "https://www.cdc.gov/nchs/data/nhanes/nhanes3/dna_secondary_data_analysis_guidelines.pdf"}.


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection MI miimportnhanes1Remarksandexamples:备注和示例}

{pstd}
以上部分不包括在此帮助文件中。


{marker options}{...}
{title:选项}

{p 4 8 2}
{cmd:using(}{it:filenamelist}{cmd:)} 
    是必需的；它指定包含 {it:m}=1, {it:m}=2, ...,
    {it:m}={it:M} 的 {cmd:.dta} 数据集名称。对应于 {it:m}=0 的数据集未指定；在发出 {cmd:mi} {cmd:import} {cmd:nhanes1} 命令时，应在内存中。

{p 8 8 2}
    文件名可以指定为

{p 12 12 2}
	{cmd:using(nh1 nh2 nh3 nh4 nh5)}

{p 8 8 2}
    这表示 {it:m}=1 在文件 {cmd:nh1.dta} 中， 
    {it:m}=2 在文件 {cmd:nh2.dta} 中，...， 
    {it:m}=5 在文件 {cmd:nh5.dta} 中。
    同样，{cmd:{c -(}}{it:#}{cmd:-}{it:#}{cmd:{c )-}} 被理解，因此文件也可以如下指定

{p 12 12 2}
	{cmd:using(nh{c -(}1-5{c )-})}

{p 8 8 2}
    花括号中的数字范围可以出现在名称的任何位置，因此 

{p 12 12 2}
	{cmd:using(nh{c -(}1-5{c )-}imp)}

{p 8 8 2}
    意味着 {cmd:nh1imp.dta}, {cmd:nh2imp.dta}, ..., {cmd:nh5imp.dta}
    包含 {it:m}=1, {it:m}=2, ..., {it:m}=5。

{p 8 8 2}
    或者，可以在花括号内使用逗号分隔的列表。
    文件名 {cmd:nhfirstm.dta}, {cmd:nhsecondm.dta}, ..., {cmd:nhfifthm.dta}
    可以指定为

{p 12 12 2}
	{cmd:using(nh{c -(}first,second,third,fourth,fifth{c )-}m)}

{p 8 8 2}
    文件名可以带或不带 {cmd:.dta} 后缀，并且如果包含特殊字符，则必须用引号括起来。

{p 4 8 2}
{cmd:id(}{varlist}{cmd:)} 是必需的
    通常指定为 {cmd:id(seqn)} 或 {cmd:id(SEQN)}，具体取决于您的变量名称是小写还是大写。
    {cmd:id()} 指定唯一标识每个数据集中观测值的变量。根据 nhanes1 标准，
    该变量应命名为 {cmd:seqn} 或 {cmd:SEQN}。

{p 4 8 2}
{cmd:uppercase} 是可选的；它指定 nhanes1 标准的变量后缀 {cmd:IF} 和 {cmd:MI} 
    为大写。默认为小写。（更准确地说，当超出 nhanes1 格式进行泛化时，{cmd:uppercase} 选项
    指定所有前缀和后缀为大写。）

{p 4 8 2}
{cmd:nacode(}{it:#}{cmd:)}, {cmd:obscode(}{it:#}{cmd:)}, 和
    {cmd:impcode(}{it:#}{cmd:)} 是可选的，并且在读取真正的 nhanes1 数据时不指定。
    默认值 {cmd:nacode(0)}, {cmd:obscode(1)}, 和 {cmd:impcode(2)}
    对应于 nhanes1 定义。
    这些选项允许更改不可用，观察到的和填补的代码。
     
{p 4 8 2}
{cmd:impprefix("}{it:string}{cmd:"} {cmd:"}{it:string}{cmd:")} 和 
{cmd:impsuffix("}{it:string}{cmd:"} {cmd:"}{it:string}{cmd:")}
    是可选的，并且在读取真正的 nhanes1 数据时不指定。
    默认值 {cmd:impprefix(""} {cmd:"")} 和
    {cmd:impsuffix("if"} {cmd:"mi")}
    对应于 nhanes1 定义。
    这些选项允许设置不同的前缀和后缀。

{p 4 8 2}
{cmd:clear} 指定即使自从保存到磁盘之后，内存中数据发生了变化，也可以替换内存中的数据。请记住，
    {cmd:mi} {cmd:import} {cmd:nhanes1} 从内存中的第一条 NHANES 数据开始，并以内存中的 {cmd:mi} 数据结束。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
备注在以下标题下呈现：

	{help mi_import_nhanes1##format:nhanes1格式的描述}
	{help mi_import_nhanes1##example:导入 nhanes1 数据}


{marker format}{...}
{title:nhanes1格式的描述}

{p 4 4 2}
nhanes1 其实并不是一个正式格式；它是由 NCHS 分发的特定数据集使用的格式。由于目前没有针对多重插补数据的正式或非正式标准，也许 NCHS 为 NHANES 使用的方法会流行起来，所以我们把它命名为 nhanes1。我们在名称末尾加上了1，以防格式被修改。

{p 4 4 2}
nhanes1 格式的数据由 {it:M}+1 个独立文件组成。第一个文件包含原始数据。其余的 {it:M} 个文件包含 {it:m}=1, {it:m}=2, ..., 
{it:m}={it:M} 的插补值。

{p 4 4 2}
第一个文件包含一个名为 {cmd:seqn} 的变量，包含一个序列号。该文件还包含组成非插补变量的其他变量。
然而，插补变量的名称后缀为 {cmd:IF}，表示插补标志，这些变量包含1、2和0。
1表示该观察值的变量值被观察到，2表示该值缺失，0表示不适用。可以将0视为缺失值。这是由于出于良好的原因未观察到该值，因此未进行插补。

{p 4 4 2}
其余的 {it:M} 个文件包含 {cmd:seqn} 和插补变量本身。在这些文件中，未观察到的值被填补。
这次，插补变量的名称后缀为 {cmd:MI}。

{p 4 4 2}
这是一个示例：

	. {cmd:webuse nhorig}
	. {cmd:list}

{p 4 4 2}
上面的内容是 {it:M}+1 个数据集中的第一个。
{cmd:seqn} 变量是序列号。
{cmd:a} 变量是常规变量；我们知道，因为它的名称不以 {cmd:IF} 结尾。{cmd:b} 和 {cmd:c} 变量是
插补变量，该数据集包含它们的插补标志。
两个变量在第一条观察中被观察到，而在第二条观察中未被观察到。

{p 4 4 2}
这是 {it:m}=1 的相应数据集：

	. {cmd:use nh1}
	. {cmd:list}

{p 4 4 2}
该数据集显示，在 {it:m}=1 时，{cmd:b} 等于 2 和 4.5，{cmd:c} 等于 3 和 8.5。

{p 4 4 2}
我们即将显示 {it:m}=2 的数据集。
然而，在查看之前，
我们知道1）它将有两个观察值；2）它将有 {cmd:seqn} 变量，值为 1 和 2；3）它将有两个名为 {cmd:bMI} 和 {cmd:cMI} 的变量；4）在对应 {cmd:seqn}=1 的观察中，{cmd:bMI} 将等于 2 和 {cmd:cMI} 将等于 3。
我们知道最后一点，因为在第一个数据集中，我们了解到 {cmd:b} 和 {cmd:c} 在 {cmd:seqn}=1 中被观察到。

        . {cmd:use nh2}
        . {cmd:list}


{marker example}{...}
{title:导入 nhanes1 数据}

{p 4 4 2}
导入 nhanes1 数据的过程如下：

{p 8 12 2}
1.  {bf:{help use_zh}} 对应于 {it:m}=0 的数据集。

{p 8 12 2}
2.  发出 {cmd:mi} {cmd:import} {cmd:nhanes1} {it:name} ..., 
    其中 {it:name} 是要创建的 {cmd:mi} flongsep 数据集的名称。

{p 8 12 2}
    3.  执行在 
        {it:{help mi_import##warning:使用 mi import nhanes1, ice, flong 和 flongsep}}
        中概述的检查。
	
{p 8 12 2}
    4.  使用 {bf:{help mi_convert_zh:mi convert}} 将数据转换为更方便的样式，例如宽格式、mlong 或 flong。

{p 4 4 2}
要导入上面部分描述的 {cmd:nhorig.dta}、{cmd:nh1.dta} 和 
{cmd:nh2.dta} 数据集，我们将指定 {cmd:mi} {cmd:import} {cmd:nhanes1} 的 {cmd:uppercase} 选项，因为
后缀为大写。
我们输入

	. {cmd:use nhorig}
	. {cmd:mi import nhanes1 mymi, using(nh1 nh2) id(seqn) uppercase}

{p 4 4 2}
没有任何错误消息意味着我们已成功将
nhanes1 格式的文件 {cmd:nhorig.dta}、{cmd:nh1.dta} 和 {cmd:nh2.dta}
转换为 {cmd:mi} flongsep 文件 {cmd:mymi.dta}、{cmd:_1_mymi.dta} 和 
{cmd:_2_mymi.dta}。

{p 4 4 2}
现在，我们将执行在 
{it:{help mi_import##warning:使用 mi import nhanes1, ice, flong 和 flongsep}}
的 {bf:{help mi_import_zh:[MI] mi import}} 中概述的检查，
即运行 {cmd:mi} {cmd:describe} 
和 
{cmd:mi} {cmd:varying} （见 {bf:{help mi_describe_zh:[MI] mi describe}} 和
{bf:{help mi_varying_zh:[MI] mi varying}})
以验证变量是否正确注册：

	. {cmd:mi describe}
	. {cmd:mi varying}

{p 4 4 2}
{cmd:mi varying} 没有报告任何问题。  

{p 4 4 2}
最后，我们转换为 flong 风格，尽管在实际情况下我们可能会选择 mlong 或宽格式。我们选择 flong，因为它更易于阅读：

	. {cmd:mi convert flong, clear}
	. {cmd:list, separator(2)}

{p 4 4 2}
flong 数据已在内存中。
我们已经完成了 flongsep 格式的数据，因此我们将删除这些文件：

	. {cmd:mi erase mymi}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mi_import_nhanes1.sthlp>}