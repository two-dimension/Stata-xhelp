{smcl}
{* *! version 1.1.3  10may2018}{...}
{viewerdialog mi "dialog mi"}{...}
{vieweralsosee "[MI] mi import flongsep" "mansection MI miimportflongsep"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MI] Intro" "help mi_zh"}{...}
{vieweralsosee "[MI] mi import" "help mi_import_zh"}{...}
{viewerjumpto "Syntax" "mi_import_flongsep_zh##syntax"}{...}
{viewerjumpto "Menu" "mi_import_flongsep_zh##menu"}{...}
{viewerjumpto "Description" "mi_import_flongsep_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mi_import_flongsep_zh##linkspdf"}{...}
{viewerjumpto "Options" "mi_import_flongsep_zh##options"}{...}
{viewerjumpto "Remarks" "mi_import_flongsep_zh##remarks"}
{help mi_import_flongsep:English Version}
{hline}{...}
{p2colset 1 28 30 2}{...}
{p2col:{bf:[MI] mi import flongsep} {hline 2}}导入类似flongsep的数据
    到mi{p_end}
{p2col:}({mansection MI miimportflongsep:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{cmd:mi import flongsep} {it:name}{cmd:,}
{it:required_options}
[{it:true_options}]

{p 4 4 2}
其中 {it:name} 是要创建的flongsep数据的名称。 

{synoptset 20}{...}
{synopthdr:required_options}
{synoptline}
{synopt:{cmd:using(}{it:filenamelist}{cmd:)}}输入文件名，对于 {it:m}=1,
   {it:m}=2, ...{p_end}
{synopt:{cmd:id(}{varlist}{cmd:)}}标识变量{p_end}
{synoptline}
{p 4 6 2}
注意: 在发行 {cmd:mi} {cmd:import} {cmd:flongsep} 之前，
{cmd:use} 输入文件对应于 {it:m}=0。

{synopthdr:true_options}
{synoptline}
{synopt:{cmdab:imp:uted(}{varlist}{cmd:)}}要注册的插补变量
{p_end}
{synopt:{cmdab:pas:sive(}{varlist}{cmd:)}}要注册的被动变量{p_end}
{synopt:{cmd:clear}}允许替换内存中未保存的数据{p_end}
{synoptline}
{p2colreset}{...}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 多重插补}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:mi} {cmd:import} {cmd:flongsep} 导入类似flongsep的数据，
即，数据中 {it:m}=0, {it:m}=1, ..., {it:m}={it:M} 每个
分别记录在单独的 {cmd:.dta} 数据集中。

{p 4 4 2}
{cmd:mi} {cmd:import} {cmd:flongsep} 
将数据转换为 {cmd:mi} flongsep，并且 
{cmd:mi} {cmd:set} 数据。

{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection MI miimportflongsepRemarksandexamples:备注和示例}

{pstd}
上述部分不包括在此帮助文件中。


{marker options}{...}
{title:选项}

{p 4 8 2}
{cmd:using(}{it:filenamelist}{cmd:)} 是必需的; 它指定包含 {it:m}=1, {it:m}=2, ...,
    {it:m}={it:M} 的 {cmd:.dta} 数据集的名称。 对应于 {it:m}=0 的数据集没有指定; 它
    在发出 {cmd:mi} {cmd:import} {cmd:flongsep}
    命令时必须在内存中。

{p 8 8 2}
    文件名可以指定为 

{p 12 12 2}
	{cmd:using(ds1 ds2 ds3 ds4 ds5)}

{p 8 8 2}
    这表示 {it:m}=1 在文件 {cmd:ds1.dta} 中， 
    {it:m}=2 在文件 {cmd:ds2.dta} 中，..., 
    和 {it:m}=5 在文件 {cmd:ds5.dta} 中。
    同样， {cmd:{c -(}}{it:#}{cmd:-}{it:#}{cmd:{c )-}} 也是可以理解的，因此
    上述内容也可以指定为

{p 12 12 2}
	{cmd:using(ds{c -(}1-5{c )-})}

{p 8 8 2}
    花括号中的数字范围可以出现在名称的任何地方，因此

{p 12 12 2}
	{cmd:using(ds{c -(}1-5{c )-}imp)}

{p 8 8 2}
    意味着 {cmd:ds1imp.dta}, {cmd:ds2imp.dta}, ..., {cmd:ds5imp.dta}
    包含 {it:m}=1, {it:m}=2, ..., {it:m}=5。

{p 8 8 2}
    另外，逗号分隔的列表可以出现在花括号内。
    文件名 {cmd:dsfirstm.dta}, {cmd:dssecondm.dta}, ..., {cmd:dsfifthm.dta}
    可以指定为

{p 12 12 2}
	{cmd:using(ds{c -(}first,second,third,fourth,fifth{c )-}m)}

{p 8 8 2}
    文件名可以指定有或没有 {cmd:.dta} 后缀，如果它们包含特殊字符，则可以用引号括起来。

{p 4 8 2}
{cmd:id(}{varlist}{cmd:)} 是必需的; 它指定唯一识别每个数据集中观察值的变量。
    编码必须在数据集中保持相同。

{p 4 8 2}
{cmd:imputed(}{varlist}{cmd:)} 和 {cmd:passive(}{it:varlist}{cmd:)} 
    实际上是可选的选项，虽然在未指定 {cmd:imputed()} 的情况下是非常不寻常的。

{p 8 8 2}
    {cmd:imputed(}{it:varlist}{cmd:)} 指定插补变量的名称。
    
{p 8 8 2}
    {cmd:passive(}{it:varlist}{cmd:)} 指定被动变量的名称。

{p 4 8 2}
{cmd:clear}
    指定即使内存中的数据自从保存到磁盘后发生了变化，也可以替换数据。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
将类似flongsep的数据转换为 {cmd:mi} flongsep 的过程如下：

{p 8 12 2}
    1.  {cmd:use} 对应于 {it:m}=0 的数据集。

{p 8 12 2}
    2.  发布 {cmd:mi} {cmd:import} {cmd:flongsep} {it:name} 命令，
        其中 {it:name} 是要创建的 {cmd:mi} flongsep 数据的名称。

{p 8 12 2}
    3.  执行在 
        {it:{help mi_import##warning:使用 mi import nhanes1, ice, flong 和 flongsep}}
        的 {bf:{help mi_import_zh:[MI] mi import}} 中概述的检查。

{p 8 12 2}
    4.  使用 {bf:{help mi_convert_zh:mi convert}} 将数据转换为
        更方便的样式，例如宽格式、mlong或flong。

{p 4 4 2}
例如，
您获得了未设置的数据集 {cmd:imorig.dta}, {cmd:im1.dta}, 和 
{cmd:im2.dta}。 您被告知这些数据集包含原始 
数据和两个插补，变量 {cmd:b} 是插补的，并且 
变量 {cmd:c} 是被动的，并且实际上等于 {cmd:a}+{cmd:b}。
以下是数据集：

	. {cmd:webuse imorig}
	. {cmd:list}
	. {cmd:use im1}
	. {cmd:list}
	. {cmd:use im2}
	. {cmd:list}

{p 4 4 2}
这些是与 {bf:{help mi_styles_zh:[MI] Styles}} 中讨论的相同数据
但以未设置的形式出现。

{p 4 4 2}
这些数据集整齐排序的事实并不重要。
要导入这些数据集，您键入

	. {cmd:use imorig}
	. {cmd:mi import flongsep mymi, using(im1 im2) id(subject)}
	                           {cmd:imputed(b) passive(c)}

{p 4 4 2}
我们现在将执行在 
{it:{help mi_import##warning:使用 mi import nhanes1, ice, flong 和 flongsep}}
的 {bf:{help mi_import_zh:[MI] mi import}} 中概述的检查，这是运行 
{cmd:mi} {cmd:describe} 
和 
{cmd:mi} {cmd:varying}
以验证变量是否正确注册：

	. {cmd:mi describe}
	. {cmd:mi varying}

{p 4 4 2}
{cmd:mi} {cmd:varying} 报告没有问题。
我们最终转换到我们首选的宽格式：

	. {cmd:mi convert wide, clear}
	. {cmd:list}

{p 4 4 2}
我们已完成转换为flongsep格式的数据，因此我们将 
删除文件：

	. {cmd:mi erase mymi}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mi_import_flongsep.sthlp>}