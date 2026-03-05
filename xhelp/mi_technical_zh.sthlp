{smcl}
{* *! version 1.2.4  11may2018}{...}
{vieweralsosee "[MI] Technical" "mansection MI Technical"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MI] Intro" "help mi_zh"}{...}
{viewerjumpto "Description" "mi_technical_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mi_technical_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "mi_technical_zh##remarks"}
{help mi_technical:English Version}
{hline}{...}
{p2colset 1 19 21 2}{...}
{p2col:{bf:[MI] Technical} {hline 2}}程序员的详细信息{p_end}
{p2col:}({mansection MI Technical:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:描述}

{p 4 4 2}
为希望扩展 {cmd:mi} 的程序员提供的技术信息如下。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection MI TechnicalRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在本帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
备注分为以下几个部分：

        {help mi_technical##notation:符号}
	{help mi_technical##styles:样式定义}
	    {help mi_technical##style_all:全部样式}
	    {help mi_technical##style_wide:宽样式}
	    {help mi_technical##style_mlong:边际长样式}
	    {help mi_technical##style_flong:完整长样式}
	    {help mi_technical##style_flongsep:完整分离样式}
	    {help mi_technical##style_flongsep_sub:完整分离子样式}
	{help mi_technical##newcmd:向mi添加新命令}
	{help mi_technical##outline:新命令的大纲}
	{help mi_technical##utility:工具例程}
	    {help mi_technical##assert_set:u_mi_assert_set}
	    {help mi_technical##certify:u_mi_certify_data}
	    {help mi_technical##no_sys_vars:u_mi_no_sys_vars 和 u_mi_no_wide_vars}
	    {help mi_technical##zap_chars:u_mi_zap_chars}

	    {help mi_technical##xeq:u_mi_xeq_on_tmp_flongsep}
	    {help mi_technical##tmp:u_mi_get_flongsep_tmpname}
	    {help mi_technical##erase:mata: u_mi_flongsep_erase()}

	    {help mi_technical##sortback:u_mi_sortback}
	    {help mi_technical##use:u_mi_save 和 u_mi_use}
	    {help mi_technical##swap:mata: u_mi_wide_swapvars()}

	    {help mi_technical##fixchars:u_mi_fixchars}
	    {help mi_technical##cpchars:mata: u_mi_cpchars_get() 和 mata: u_mi_cpchars_put()}
	    {help mi_technical##instvar:mata: u_mi_get_mata_instanced_var()}

	    {help mi_technical##ptrace:mata: u_mi_ptrace_*()}

	{help mi_technical##xxxset:如何撰写其他与mi配合使用的设定命令}


{marker notation}{...}
{title:符号}

{col 9}{it:M} = {it:#} 次填补 

{col 9}{it:m} = 填补次数
{col 9}          0.  原始数据，包含缺失值
{col 9}          1.  第一个填补数据集 
{col 9}           .  
{col 9}           .  
{col 9}          {it:M}.  最后一个填补数据集

{col 9}{it:N} = {it:m}=0 时的观察数量


{marker styles}{...}
{title:样式定义}

{p 4 4 2}
样式描述了 {cmd:mi} 数据的存储方式。
存在四种样式：
{help mi_technical##style_wide:宽样式},
{help mi_technical##style_mlong:边际长样式},
{help mi_technical##style_flong:完整长样式} 和 
{help mi_technical##style_flongsep:完整分离样式}。


{marker style_all}{...}
    {title:所有样式}

{col 9}特征:
{col 13}{cmd:_dta[_mi_marker]}{...}
{col 35}"{cmd:_mi_ds_1}"

{p 8 8 2}
描述:
{cmd:_dta[_mi_marker]} 设置了所有样式，包括 {cmd:flongsep_sub}。
以下定义仅适用于 
{cmd:"`_dta[_mi_marker]'"} = 
{cmd:"_mi_ds_1"}。



{marker style_wide}{...}
    {title:宽样式}

{col 9}特征:
{col 13}{cmd:_dta[_mi_style]}{...}
{col 35}"{cmd:wide}"
{col 13}{cmd:_dta[_mi_M]}{...}
{col 35}{it:M}
{col 13}{cmd:_dta[_mi_ivars]}{...}
{col 35}填补变量; 变量列表
{col 13}{cmd:_dta[_mi_pvars]}{...}
{col 35}被动变量; 变量列表
{col 13}{cmd:_dta[_mi_rvars]}{...}
{col 35}常规变量; 变量列表
{col 13}{cmd:_dta[_mi_update]}{...}
{col 35}最后更新时间; {cmd:%tc}_value/1000

{col 9}变量:
{col 13}{cmd:_mi_miss}{...}
{col 35}是否不完整; 0 或 1
{col 13}{cmd:_}{it:#}{cmd:_}{it:varname}{...}
{col 35}{it:varname} 对于 {it:m}={it:#}，为每个
{col 37}{cmd:`_dta[_mi_ivars]'} 和 {cmd:`_dta[_mi_pvars]'}

{p 8 8 2}
描述:
    {it:m}=0, {it:m}=1, ..., {it:m}={it:M} 存储
    在一个数据集中，其中 {it:_N} = {it:N} 观察数。每个填补和
    被动变量都有 {it:M} 个相关附加变量。
    如果变量 {cmd:bp} 包含 {it:m}=0 的值，则
    {it:m}=1 的值包含在变量 {cmd:_1_bp} 中，
    {it:m}=2 的值包含在 {cmd:_2_bp} 中，依此类推。
    {cmd:wide} 表示 {it:wide}。


{marker style_mlong}{...}
    {title:边际长样式}

{col 9}特征:
{col 13}{cmd:_dta[_mi_style]}{...}
{col 35}"{cmd:mlong}"
{col 13}{cmd:_dta[_mi_M]}{...}
{col 35}{it:M}
{col 13}{cmd:_dta[_mi_N]}{...}
{col 35}{it:N}
{col 13}{cmd:_dta[_mi_n]}{...}
{col 35}{it:#} 边际中的观察数 
{col 13}{cmd:_dta[_mi_ivars]}{...}
{col 35}填补变量; 变量列表
{col 13}{cmd:_dta[_mi_pvars]}{...}
{col 35}被动变量; 变量列表
{col 13}{cmd:_dta[_mi_rvars]}{...}
{col 35}常规变量; 变量列表
{col 13}{cmd:_dta[_mi_update]}{...}
{col 35}最后更新时间; {cmd:%tc}_value/1000

{col 9}变量:
{col 13}{cmd:_mi_m}{...}
{col 35}{it:m};  0, 1, ..., {it:M}
{col 13}{cmd:_mi_id}{...}
{col 35}ID; 1, ..., {it:N}
{col 13}{cmd:_mi_miss}{...}
{col 35}是否不完整; 0 或 1 如果 {cmd:_mi_m}=0, 否则 {cmd:.}

{p 8 8 2}
描述:
    {it:m=0}, {it:m=1}, ..., {it:m}={it:M} 存储
    在一个数据集中，其中 {it:_N} = {bind:{it:N} + {it:M}*{it:n}}
    观察数，
    其中 {it:n} 是 {it:m}=0 中不完整观察的数量。
    {cmd:mlong} 代表 {it:marginal long}。


{marker style_flong}{...}
    {title:完整长样式}

{col 9}特征:
{col 13}{cmd:_dta[_mi_style]}{...}
{col 35}"{cmd:flong}"
{col 13}{cmd:_dta[_mi_M]}{...}
{col 35}{it:M}
{col 13}{cmd:_dta[_mi_N]}{...}
{col 35}{it:N}
{col 13}{cmd:_dta[_mi_ivars]}{...}
{col 35}填补变量; 变量列表
{col 13}{cmd:_dta[_mi_pvars]}{...}
{col 35}被动变量; 变量列表
{col 13}{cmd:_dta[_mi_rvars]}{...}
{col 35}常规变量; 变量列表
{col 13}{cmd:_dta[_mi_update]}{...}
{col 35}最后更新时间; {cmd:%tc}_value/1000

{col 9}变量:
{col 13}{cmd:_mi_m}{...}
{col 35}{it:m};  0, 1, ..., {it:M}
{col 13}{cmd:_mi_id}{...}
{col 35}ID; 1, ..., {it:N}
{col 13}{cmd:_mi_miss}{...}
{col 35}是否不完整; 0 或 1 如果 {cmd:_mi_m}=0, 否则 {cmd:.}

{p 9 9 2}
描述:
    {it:m}=0, {it:m}=1, ..., {it:m}={it:M} 存储
    在一个数据集中，其中 {it:_N} = {bind:{it:N} + {it:M}*{it:N}}
    观察数，其中
    {it:N} 是 {it:m}=0 中的观察数量。
    {cmd:flong} 代表 {it:full long}。


{marker style_flongsep}{...}
    {title:完整分离样式}

{col 9}特征:
{col 13}{cmd:_dta[_mi_style]}{...}
{col 35}"{cmd:flongsep}"
{col 13}{cmd:_dta[_mi_name]}{...}
{col 35}{it:name}
{col 13}{cmd:_dta[_mi_M]}{...}
{col 35}{it:M}
{col 13}{cmd:_dta[_mi_N]}{...}
{col 35}{it:N}
{col 13}{cmd:_dta[_mi_ivars]}{...}
{col 35}填补变量; 变量列表
{col 13}{cmd:_dta[_mi_pvars]}{...}
{col 35}被动变量; 变量列表
{col 13}{cmd:_dta[_mi_rvars]}{...}
{col 35}常规变量; 变量列表
{col 13}{cmd:_dta[_mi_update]}{...}
{col 35}最后更新时间; {cmd:%tc}_value/1000

{col 9}变量:
{col 13}{cmd:_mi_id}{...}
{col 35}ID; 1, ..., {it:N}
{col 13}{cmd:_mi_miss}{...}
{col 35}是否不完整; 0 或 1


{p 8 8 2}
描述:
    {it:m}=0, {it:m}=1, ..., {it:m}={it:M} 各自为不同的
    {cmd:.dta} 数据集。如果 {it:m}=0 数据存储在
    {cmd:pat.dta} 中，则 {it:m}=1 数据存储在 {cmd:_1_pat.dta} 中，
    {it:m}=2 存储在 {cmd:_2_pat.dta} 中，依此类推。

{p 8 8 2}
    以上定义仅适用于 {it:m}=0，该数据集名为 
    {cmd:`_dta[_mi_name]'.dta}。
    直接参见 {it:{help mi_technical##style_flongsep_sub:flongsep_sub}} 
    以了解 {it:m}>0 的情况。
    {cmd:flongsep} 代表 {it:full long and separate}。


{marker style_flongsep_sub}{...}
    {title:完整分离子样式}

{col 9}特征:
{col 13}{cmd:_dta[_mi_style]}{...}
{col 35}"{cmd:flongsep_sub}"
{col 13}{cmd:_dta[_mi_name]}{...}
{col 35}{it:name}
{col 13}{cmd:_dta[_mi_m]}{...}
{col 35}{it:m};  0, 1, ..., {it:M}

{col 9}变量:
{col 13}{cmd:_mi_id}{...}
{col 35}ID; 1, ..., {it:N}

{p 8 8 2}
描述:  以上描述适用于数据集
{cmd:_`_dta[_mi_m]'_`_dta[_mi_name]'.dta}。 有 {it:M} 
个这样的数据集记录 {it:m}=1, ..., {it:M} 被 
{cmd:flongsep} 样式直接使用。


{marker newcmd}{...}
{title:向mi添加新命令}

{p 4 4 2}
新命令以 ado 文件的形式编写。  
将新命令命名为 {cmd:mi_cmd_}{it:newcmd} 并存储在 
{cmd:mi_cmd_}{it:newcmd}{cmd:.ado} 中。 当用户输入 
{cmd:mi} {it:newcmd} 时，{cmd:mi_cmd_}{it:newcmd}{cmd:.ado} 将被执行。

{pstd}
有关如何编写用于 {cmd:mi estimate} 前缀的估计命令的详细信息，请参见 [P] {bf:程序属性} 
的 {mansection P programpropertiesRemarksandexamplesWritingprogramsforusewithmi:{it:Writing programs for use with mi}}。


{marker outline}{...}
{title:新命令的大纲}

	{cmd:program} {cmd:mi_cmd_}{it:newcmd}{cmd:, rclass}{right:(1)    }
		{cmd:version {ccl stata_version}}

		{cmd:u_mi_assert_set}{right:(2)    }

		{cmd:syntax} ... {cmd:[,} ... {cmd:noUPdate} ...{cmd:]}{right:(3)    }

		...

		{cmd:u_mi_certify_data, acceptable}{right:(4)    }

		...

		{cmd:if ("`update'"=="") {c -(}}
			{cmd:u_mi_certify_data, proper}{right:(5)    }
		{cmd:{c )-}}

		...
	{cmd:end}

{p 4 4 2}
注意事项：

{p 8 12 2}
1.  命令可以是 {cmd:rclass}; 这不是强制的。
    如果你愿意，也可以用 {cmd:eclass}。

{p 8 12 2}
2.  {cmd:u_mi_assert_set} 验证数据是否为 {cmd:mi} 数据；
    见 {it:{help mi_technical##assert_set:u_mi_assert_set}}。

{p 8 12 2}
3.  如果你打算让你的命令在执行其预期任务之前使用 {cmd:mi} {cmd:update} 来更新 
    数据，需包含 {cmd:noupdate} 选项； 
    参见 {bf:{help mi_noupdate_option_zh:[MI] noupdate option}}。  
    某些命令则在执行任务后，运行 {cmd:mi} {cmd:update} 来进行清理。此类使用不要求 
    必须提供 {cmd:noupdate} 选项。

{p 8 12 2}
4.  {cmd:u_mi_certify_data} 是执行 {cmd:mi} {cmd:update} 的内部例程。更新分为两个部分，称为
    可接受和合适。所有命令应验证数据是可接受的；见 {it:{help mi_technical##certify:u_mi_certify_data}}。

{p 8 12 2}
5.  {cmd:u_mi_certify_data,} {cmd:proper} 执行 {cmd:mi} {cmd:update} 的第二步； 
    它验证可接受的数据是合适的。你是否验证合适性取决于你，但如果验证，则你应该 
    包含 {cmd:noupdate} 选项以跳过检查.


{marker utility}{...}
{title:工具例程}

{p 4 4 2}
你绝对需要知道的唯一信息是已经揭示的内容。
然而，使用下面描述的工具例程
将简化你的编程任务并使你的代码在最终用户看起来更专业。

{p 4 4 2}
在阅读以下内容时，请记住你可以通过使用 
{bf:{help viewsource_zh:viewsource}} 来查看例程的源代码。
如果你想查看 {cmd:u_mi_assert_set} 的源代码，你可以输入 {cmd:viewsource} {cmd:u_mi_assert_set.ado}。
如果你这样做，你有时会看到
例程允许的一些未在下面记录的选项。忽略那些选项；它们可能不会出现在 
未来的版本中。

{p 4 4 2}
通过使用 {cmd:viewsource}，你还可以查看工具命令的使用示例，方法是查看我们编写的 
{cmd:mi} 命令的源代码。每个 {cmd:mi} 命令都出现在文件 {cmd:mi_cmd_}{it:command}{cmd:.ado} 中。同时记住 
其他 {cmd:mi} 命令使有用的工具例程。例如，如果你的新命令创建被动变量，
使用 {cmd:mi} {cmd:register} 来注册它们。始终通过 {cmd:mi} 调用现有的 
{cmd:mi} 命令；确保代码为 
{cmd:mi} {cmd:passive} 而不是 {cmd:mi_cmd_passive}。


{marker assert_set}{...}
    {title:u_mi_assert_set}

{p 8 12 2}
{cmd:u_mi_assert_set}
[{it:desired_style}]

{p 4 4 2}
此工具验证数据是否为 {cmd:mi} 并可选地为期望 
样式；如果不符合，则会发出适当的错误信息并停止 
执行。 
可选参数 
{it:desired_style} 可以是 {cmd:wide}, {cmd:mlong}, {cmd:flong}, 或 
{cmd:flongsep}，但很少指定。当未指定时，允许任何样式。


{marker certify}{...}
{title:u_mi_certify_data}

{p 8 40 2}
{cmd:u_mi_certify_data}
[{cmd:,}
{cmd:acceptable}
{cmd:proper}
{cmdab:noup:date}
{cmd:sortok}
]

{p 4 4 2}
此命令执行 {cmd:mi} {cmd:update}。 {cmd:mi} {cmd:update} 
等同于 {cmd:u_mi_certify_data,} {cmd:acceptable} {cmd:proper}
{cmd:sortok}.  

{p 4 4 2}
指定 {cmd:acceptable} 和 {cmd:proper} 中的一个或两个。 
如果指定了 {cmd:noupdate} 选项，则指定了 {cmd:proper}。
{cmd:sortok} 选项指定 {cmd:u_mi_certify_data} 不必花费额外时间来保持和恢复
数据的原始排序。

{p 4 4 2}
更新分为两个部分。
在第一部分，称为可接受的，即 {it:m}=0， 
{cmd:_dta[_mi_*]} 特征得到认证。
你的程序将使用记录在这些特征中的信息，而在信任这些信息之前，数据必须被认证为
可接受的。
在运行 {cmd:u_mi_certify_data,} {cmd:acceptable} 之前，不要信任任何 {cmd:_dta[_mi_*]} 特征。

{p 4 4 2}
{cmd:u_mi_certify_data,} {cmd:proper} 验证已知为可接受的数据是合适的。 
在实践中，这意味着除了信任 {cmd:m}=0， 你还可以信任 {cmd:m}>0。

{p 4 4 2}
运行 
{cmd:u_mi_certify_data,} {cmd:acceptable}
实际上可能导致数据被认证为合适， 
尽管你不能依赖于此。 
当你运行 
{cmd:u_mi_certify_data,} {cmd:acceptable}
并且在 {it:m}=0 中观察到某些问题时，它们会在所有 {it:m} 中得到解决，从而可能导致 
其他问题被检测到，并且当整个过程结束时，数据是合适的。


{marker no_sys_vars}
{title:u_mi_no_sys_vars 和 u_mi_no_wide_vars}

{p 8 12 2}
{cmd:u_mi_no_sys_vars}{bind: }
{cmd:"}{it:variable_list}{cmd:"}
[{cmd:"}{it:word}{cmd:"}]

{p 8 12 2}
{cmd:u_mi_no_wide_vars}
{cmd:"}{it:variable_list}{cmd:"}
[{cmd:"}{it:word}{cmd:"}]

{p 4 4 2}
这些例程用于解析用户输入。

{p 4 4 2}
{cmd:u_mi_no_sys_vars}
验证指定的变量名列表不包含 
任何 {cmd:mi} 系统变量，例如 {cmd:_mi_m}, {cmd:_mi_id}, 
{cmd:_mi_miss} 等。

{p 4 4 2}
{cmd:u_mi_no_wide_vars}
验证指定的变量名列表不包含任何宽样式的 {it:m}>0 变量，形式为 {cmd:_}{it:#}{it:_varname}。
{cmd:u_mi_no_wide_vars} 可与任何样式的数据一起调用，但如果样式不是宽的，则不执行任何操作。

{p 4 4 2}
如果发现问题，两种函数都会发出适当的错误信息。
如果指定了 {it:word}，错误信息将是 
"{it:word} 可能不包括 ...".  否则，错误信息为 
"可能不指定 ..."。


{marker zap_chars}{...}
{title:u_mi_zap_chars}

{p 8 12 2}
{cmd:u_mi_zap_chars}

{p 4 4 2}
{cmd:u_mi_zap_chars}
删除内存中数据的所有 {cmd:_dta[_mi_*]} 特征。


{marker xeq}{...}
{title:u_mi_xeq_on_tmp_flongsep}

{p 8 12 2}
{cmd:u_mi_xeq_on_tmp_flongsep}
[{cmd:,} 
{cmd:nopreserve}]{cmd::}  {it:command}

{p 4 4 2}
{cmd:u_mi_xeq_on_tmp_flongsep}
在内存中的数据上执行 
{it:command}，这些数据转换为样式 flongsep，然后再将 flongsep 结果转换为原始样式。
如果数据已经是 flongsep，则会创建一个临时副本，最终再恢复到原始数据。
无论哪种情况，
{it:command} 都会在数据的临时副本上运行。 
如果发生错误，则会恢复用户的原始数据；也就是说，除非指定 {cmd:nopreserve}。
如果 {it:command} 没有错误地完成，则 
内存中的 flongsep 数据将转换回原始样式，而原始数据将被丢弃。

{p 4 4 2}
编写只能处理 flongsep 数据的命令并不罕见，然而，这些似乎对用户而言可以与所有样式一起使用。
这是因为例程使用 
{cmd:u_mi_xeq_on_tmp_flongsep}。
它们开始时允许任何样式，但例程的核心是 
假设为 flongsep。
{cmd:mi} {cmd:stjoin} 就是通过这种方式实现的。
{cmd:mi} {cmd:stjoin} 有两个部分：
{cmd:mi_cmd_stjoin.ado} 和 
{cmd:mi_sub_stjoin_flongsep.ado}。
{cmd:mi_cmd_stjoin.ado} 以 

	{cmd:u_mi_xeq_on_tmp_flongsep:  mi_sub_stjoin_flongsep `if', `options'}

{p 4 4 2}
{cmd:mi_sub_stjoin_flongsep} 完成所有工作，而 
{cmd:u_mi_xeq_on_tmp_flongsep} 处理转换为 flongsep 和
再恢复的问题。
{cmd:mi_sub_stjoin_flongsep} 子例程必须出现在其自己的 ado 文件中，因为 
{cmd:u_mi_xeq_on_tmp_flongsep} 本身实现为 ado 文件。
否则 {cmd:u_mi_xeq_on_tmp_flongsep} 将无法找到子例程。


{marker tmp}{...}
{title:u_mi_get_flongsep_tmpname}

{p 8 12 2}
{cmd:u_mi_get_flongsep_tmpname}
{it:macname} {cmd::} {it:basename}

{p 4 4 2}
{cmd:u_mi_get_flongsep_tmpname}
根据 {it:basename} 创建一个临时 flongsep 名称，并将其存储在局部宏 {it:macname} 中。
为了你的信息， {cmd:u_mi_xeq_on_tmp_flongsep} 从此例程获得它使用的临时名称。

{p 4 4 2}
{cmd:u_mi_get_flongsep_tmpname}
很少直接使用，因为 
{cmd:u_mi_xeq_on_tmp_flongsep}
很好地工作以暂时转换为 flongsep 模式，并且 
{cmd:u_mi_xeq_on_tmp_flongsep}
的功能比仅获取一个要临时存储数据的名称多得多。
然而，有些情况下确实需要更加参与转换以便获得临时名称。 
例如，查看源代码 {cmd:mi_cmd_append.ado} 和 
{cmd:mi_cmd_merge.ado}。  这两个例程面临的问题是它们需要将两个输入数据集转换为 flongsep，
然后从中创建一个第三个数据集，而只有这个数据集需要转换回原始样式。
因此，这两个命令自行处理转换，使用 
{cmd:u_mi_get_flongsep_tmpname}
和 {helpb mi convert}。

{p 4 4 2}
例如，它们以类似于以下形式开始 

	{cmd:u_mi_get_flongsep_tmpname master : __mimaster}

{p 4 4 2}
这会创建适合于与 
{cmd:mi} {cmd:convert} 使用的临时名称，并将其存储在 
{cmd:`master'} 中。 建议名称为 {cmd:__mimaster}，但如果
该名称已被使用，则
{cmd:u_mi_get_flongsep_tmpname}
将从中生成 
{cmd:__mimaster1}、 
{cmd:__mimaster2} 等等。 我们建议你指定一个以 {cmd:__mi} 开头的 
{it:basename}，也就是说，两个下划线后跟 
{cmd:mi}。

{p 4 4 2}
接下来你必须意识到，消除临时文件的责任在于你。
你可以通过编写如下代码来完成这一点 

	...
	{cmd}local origstyle "`_dta[_mi_style]'"
	if ("`origstyle'"=="flongsep") {c -(}
		local origstyle "`origstyle' `_dta[_mi_name]'"
	{c )-}
	u_mi_get_flongsep_tmpname master : __mimaster
	capture {c -(}
		quietly mi convert flongsep `master'
		...
		...
		quietly mi convert `origstyle', clear replace
	{c )-}
	nobreak {
		local rc = _rc
		mata: u_mi_flongsep_erase("`master'", 0, 0)
		if (`rc') {c -(}
			exit `rc'
		{c )-}
	{c )-}{txt}

{p 4 4 2}
另一个值得注意的地方是我们使用 {cmd:mi} {cmd:convert}
{cmd:`master'} 将我们的数据转换为 flongsep，并用名称 
{cmd:`master'}。  你可能会问，如果我们的数据已经是 flongsep，会发生什么？ {cmd:mi} {cmd:convert} 的一个不错的特点是，当
在已经是 flongsep 的数据上运行时，它执行 
{bf:{help mi_copy_zh:mi copy}}。


{marker erase}{...}
{title:mata: u_mi_flongsep_erase()}

{p 8 12 2}
{cmd:mata: u_mi_flongsep_erase("}{it:name}{cmd:",}
{it:from} [{cmd:,}
{it:output}]{cmd:)}

{p 12 12 2}
其中

{p 16 20 2}
{it:name}{bind:         }{it:string}; flongsep 名称
{p_end}
{p 16 20 2}
{it:from}{bind:         }{it:#}; 开始删除的位置
{p_end}
{p 16 20 2}
{it:output}{bind:       }0|1; 是否产生输出

{p 4 4 2}
{cmd:mata: u_mi_flongsep_erase()}
是 
{bf:{help mi_erase_zh:mi erase}} 的内部版本； 
使用哪个更方便就用哪个。

{p 4 4 2}
输入 {it:from} 通常指定为 0，然后 
{cmd:mata: u_mi_flongsep_erase()}
将删除 {it:name}{cmd:.dta}, {cmd:_1_}{it:name}{cmd:.dta},
{cmd:_2_}{it:name}{cmd:.dta} 等。
{it:from} 也可以指定为大于零的数字，然后删除的是 
{it:_<from>_}{it:name}{cmd:.dta},
{it:_<from+1>_}{it:name}{cmd:.dta},
{it:_<from+2>_}{it:name}{cmd:.dta}, ....


{p 4 4 2}
如果 {it:output} 为 0，则不产生输出；否则，将列出被删除的文件。 
如果未指定 {it:output}，则将列出文件。

{p 4 4 2}
有关此例程的源代码，请参见 {view u_mi.mata, adopath asis:viewsource u_mi.mata}。


{marker sortback}{...}
{title:u_mi_sortback}

{p 8 12 2}
{cmd:u_mi_sortback} {it:varlist}

{p 4 4 2}
{cmd:u_mi_sortback} 从 {it:varlist} 中删除被删除的变量并按剩余变量对数据进行排序。 
该例程用于处理 
{cmd:program} {it:name}{cmd:,}
{cmd:sortpreserve} 不足的排序保留问题，如
在保持排序顺序和恢复排序顺序之间可能对数据进行大量编辑的情况下。
使用 {cmd:u_mi_sortback} 之前，首先记录数据的顺序：

	{cmd}local sortedby : sortedby
	tempvar recnum
	gen long `recnum' = _n
	quietly compress `recnum'{txt}

{p 4 4 2}
稍后，当你想恢复排序顺序时，你可以编码 

	{cmd:u_mi_sortback `sortedby' `recnum'}


{marker use}{...}
{title:u_mi_save 和 u_mi_use}

{p 8 12 2}
{cmd:u_mi_save}
{bind:   }{it:macname}
{cmd::}
{it:filename}
[{cmd:,} {it:save_options}]

{p 8 12 2}
{cmd:u_mi_use}{bind: }
{cmd:`"`}{it:macname}{cmd:'"'}
{it:filename}
[{cmd:,} {cmd:clear} {cmdab:nol:abel}]

{p 12 12 8}
{it:save_options} 如 {bf:{help save_zh:[D] save}} 中描述。
{cmd:clear} 和 {cmd:nolabel} 如在 
{bf:{help use_zh:[D] use}} 中描述。
在这两个命令中，如果 {it:filename} 包含任何特殊字符或空格，则必须用引号指定。

{p 4 4 2}
有时需要将数据保存到临时文件中，并随后重新加载。
在这种情况下，当数据重新加载时，你希望恢复原始的 {cmd:c(filename)}, {cmd:c(filedate)}, 和 {cmd:c(changed)}。
{cmd:u_mi_save} 将这些信息保存在 {it:macname} 中。
{cmd:u_mi_use} 从保存的信息中恢复信息。 注意在 {cmd:u_mi_use} 中对 {cmd:`}{it:macname}{cmd:'} 使用复合引号；这不是可选的。


{marker swap}{...}
{title:mata: u_mi_wide_swapvars()}

{p 8 12 2}
{cmd:mata: u_mi_wide_swapvars(}{it:m}{cmd:,} {it: tmpvarname}{cmd:)}

{p 12 12 2}
其中

{p 16 20 2}
{it:m}{bind:            }{it:#}; 1 <= {it:#} <= {it:M}
{p_end}
{p 16 20 2}
{it:tmpvarname}{bind:   }{it:string}; 来自 {cmd:tempvar} 的名称
{p_end}

{p 4 4 2}
此工具仅适用于宽数据。
对于 {cmd:_dta[_mi_ivars]} 和
{cmd:_dta[_mi_pvars]} 中包含的每个变量名， 
{cmd:mata: u_mi_wide_swapvars()} 
将 {it:varname} 的内容与 {cmd:_}{it:m}{cmd:_}{it:varname} 进行交换。
参数 
{it:tmpvarname} 必须是一个从 
{cmd:tempvar} 获取的临时变量名，并且该变量必须不存在。 
{cmd:mata:} {cmd:u_mi_wide_swapvars()} 将在交换过程中使用此变量。
有关 {cmd:tempvar} 的更多信息，请参见 {bf:{help macro_zh:[P] macro}}。

{p 4 4 2}
此函数是其自身的逆，前提是 
{cmd:_dta[_mi_ivars]}
和
{cmd:_dta[_mi_pvars]}
没有改变。

{p 4 4 2}
有关此例程的源代码，请参见 {view u_mi.mata, adopath asis:viewsource u_mi.mata}。


{marker fixchars}{...}
{title:u_mi_fixchars}

{p 8 12 2}
{cmd:u_mi_fixchars}
[{cmd:,}
{cmd:acceptable}
{cmd:proper}]

{p 4 4 2}
{cmd:u_mi_fixchars} 
使 {it:m}=1, {it:m}=2,
..., {it:m}={it:M} 中的数据和变量特征与 {it:m}=0 中相同。选项指定 
已知关于数据的真相，即数据是已知的可接受或已知的合适。如果未指定任何一个选项，则表示
你不知道数据是否至少是可接受的。
这没关系。
{cmd:u_mi_fixchars} 能够处理所需的任何认证。
指定选项会使 {cmd:u_mi_fixchars} 运行得更快。

{p 4 4 2}
这种特征的稳定化并不是关于 {cmd:mi} 的 
特征；那是由 {cmd:u_mi_certify_data} 处理的。其他 
Stata 命令设置并使用特征，而 {cmd:u_mi_fixchars} 
确保所有 {it:m} 中的这些特征相同。


{marker cpchars}{...}
{title:mata: u_mi_cpchars_get() 和 mata: u_mi_cpchars_put()}

{p 8 12 2}
{cmd:mata: u_mi_cpchars_get(}{it:matavar}{cmd:)}

{p 8 12 2}
{cmd:mata: u_mi_cpchars_put(}{it:matavar}{cmd:,} {c -(}{cmd:0}|{cmd:1}|{cmd:2}{c )-}{cmd:)}

{p 12 12 2}
其中 {it:matavar} 是一个 Mata 
{help m6_glossary##transmorphic:transmorphic} 变量。
使用这些函数时，从 
{bf:{help mi_technical##instvar:u_mi_get_mata_instanced_var()}} 中获取 {it:matavar}。

{p 4 4 2}
这些例程将一个数据集中的特征替换为另一个数据集中的特征。
它们用于实现 
{cmd:u_mi_fixchars}。

{p 4 4 2}
{cmd:mata: u_mi_cpchars_get(}{it:matavar}{cmd:)} 
将内存中数据的特征存储在 {it:matavar} 中。
内存中的数据保持不变。

{p 4 4 2}
{cmd:mata: u_mi_cpchars_put(}{it:matavar}{cmd:,} {it:#}{cmd:)}
用之前记录在 {it:matavar} 中的特征替换内存中数据的特征。第二个参数
指定 {cmd:_dta[_mi_*]} 特征的处理方式：

	{cmd:0}      在目标数据中删除它们
	{cmd:1}      从源复制它们，就像任何其他特征一样
	{cmd:2}      保持它们从目标数据中不变。


{marker instvar}{...}
{title:mata: u_mi_get_mata_instanced_var()}

{p 8 12 2}
{cmd:mata: u_mi_get_mata_instanced_var("}{it:macname}{cmd:",}
{cmd:"}{it:basename}{cmd:"}
[{cmd:,} {it:i_value}]{cmd:)}

{p 12 12 2}
其中

{p 16 20 2}
{it:macname}{bind:      }局部宏的名称
{p_end}
{p 16 20 2}
{it:basename}{bind:     }实例变量的建议名称
{p_end}
{p 16 20 2}
{it:i_value}{bind:      }实例变量的初始值
{p_end}

{p 4 4 2}
{cmd:mata: u_mi_get_mata_instanced_var()} 
创建一个新的 Mata 全局变量，用 {it:i_value} 
或作为 0 {it:x} 0 实数进行初始化，并将其名称放入局部宏 
{it:macname} 中。
典型用法如下：

	{cmd}local var
	capture noisily {c -(}
		mata: u_mi_get_mata_instanced_var("var", "myvar"){txt}
		...
		... {it:use} {cmd:`var'} {it:you can use it as you wish} ...
		...{cmd}
	{c )-}
	nobreak {c -(}
		local rc = _rc
		capture mata: mata drop `var'
		if (`rc') {c -(}
			exit `rc'
		{c )-}
	{c )-}{txt}
		

{marker ptrace}{...}
{title:mata: u_mi_ptrace_*()}

{p 8 12 2}
{it:h} {cmd:=} 
{cmd:u_mi_ptrace_open("}{it:filename}{cmd:",}
{c -(}{cmd:"r"}|{cmd:"w"}{c )-}
[{cmd:,} 
{c -(}{cmd:0}|{cmd:1}{c )-}]{cmd:)}

{p 8 12 2}
{cmd:u_mi_ptrace_write_stripes(}{it:h}{cmd:,}
{it:id}{cmd:,} 
{it:ynames}{cmd:,}
{it:xnames}{cmd:)}

{p 8 12 2}
{cmd:u_mi_ptrace_write_iter(}{it:h}{cmd:,}
{it:m}{cmd:,}
{it:iter}{cmd:,}
{it:B}{cmd:,}
{it:V}{cmd:)}

{p 8 12 2}
{cmd:u_mi_ptrace_close(}{it:h}{cmd:)}

{p 8 12 2}
{cmd:u_mi_ptrace_safeclose(}{it:h}{cmd:)}

{p 16 16 2}
以上是 Mata 函数，其中{break}
{it:h}，如果声明，则应声明为变形的{break}
{it:id} 是字符串标量{break}
{it:ynames} 和 {it:xnames} 是字符串标量{break}
{it:m} 和 {it:iter} 是实数标量{break}
{it:B} 和 {it:V} 是实数矩阵； {it:V} 必须是对称的

{p 4 4 2}
这些例程写入参数追踪文件；参见 
{bf:{help mi_ptrace_zh:[MI] mi ptrace}}。
过程为 1) 打开文件； 2) 写入条纹；
3) 重复写入迭代信息； 4) 关闭文件。

{p 8 12 2}
1.  打开文件：
    {it:filename} 可以指定为带或不带文件后缀。
    将第二个参数指定为 {cmd:"w"}。 第三个参数应为 
    {cmd:1} 如果文件在存在时可以被替换，否则为 {cmd:0}。

{p 8 12 2}
2.  写入条纹：
    将 {it:id} 指定为例程的名称或 {cmd:""}；
    {cmd:mi} {cmd:ptrace} {cmd:describe} 将在字符串不是 
    {cmd:""} 时显示该字符串作为文件的创造者。
    {it:ynames} 和 {it:xnames} 是两个字符串标量，包含
    空格分隔的名称或可能是 {it:op}{cmd:.}{it:names}。

{p 8 12 2}
3.  重复写入迭代信息：
    写入的是 
    {it:m}，填补编号； {it:iter}，迭代编号； 
    {it:B}，系数矩阵；和 {it:V}，方差矩阵。
    {it:B} 必须是 {it:ny} {it:x} {it:nx}，而 {it:V} 必须是 {it:ny} {it:x}
    {it:ny} 和对称，其中 
    {it:nx} = {cmd:length(tokens(}{it:xnames}{cmd:))} 且 
    {it:ny} = {cmd:length(tokens(}{it:ynames}{cmd:))}。

{p 8 12 2}
4.  关闭文件： 在 Mata 中，使用 {cmd:u_mi_ptrace_close(}{it:h}{cmd:)}。
    强烈建议在第一步之前，从 Stata 内部（而不是 Mata）获取 {it:h}，方法是 
    {cmd:mata:} {cmd:u_mi_get_mata_instanced_var("h", "}{it:myvar}{cmd:")}.
    如果你遵循这一建议，请在 ado 文件的清理代码中包含 
    {cmd:mata:} {cmd:u_mi_ptrace_safeclose(`h')}
    以确保在用户按下 {hi:Break} 或其他情况导致你的
    例程在关闭文件之前退出时能够关闭已打开的文件。 一个正确编写的程序
    将有两个关闭操作，一个在 Mata 中，另一个在 ado 文件中，尽管 
    你可以省略在 Mata 中的关闭。
    有关 {it:{help mi_technical##instvar:u_mi_get_mata_instanced_var()}} 的直接信息请参见。

{p 4 4 2}
{cmd:u_mi_ptrace_*()} 中还包含用于读取 
参数追踪文件的例程。 你通常不需要这些例程，因为 
用户将使用 Stata 命令 {cmd:mi} {cmd:ptrace} {cmd:use} 
来加载你已编写的文件。 但如果你感兴趣，请输入 
{view u_mi_ptrace.mata, adopath asis:viewsource u_mi_ptrace.mata}。


{marker xxxset}{...}
{title:如何编写其他设定命令以与mi配合使用}

{p 4 4 2}
本节涉及如何编写其他设定命令，如 
{bf:{help stset_zh:[ST] stset}} 或 {bf:{help xtset_zh:[XT] xtset}} —— 与 
{cmd:mi} 没有任何关系的设定命令—— 使得它们能够与 {cmd:mi} 配合良好。

{p 4 4 2}
设定命令的定义是任何在数据中创建特征的命令， 
并可能在数据中创建变量，
其他命令会随后访问这些特征。 使得此类设定命令与 {cmd:mi} 配合良好主要是 {cmd:mi} 的
责任，但你需要做一点工作来协助 {cmd:mi}。
然而，在处理这些之前，请编写并调试你的设定命令而忽略 {cmd:mi}。  
完成后，再回过头来增加几行代码。  我们假设你的设定命令名为 {cmd:mynewset}，
并且你的原始代码看起来像这样：

	{cmd:program mynewset}
		...
		{cmd:syntax} ... {cmd:[,} ...{cmd:]}
		...
	{cmd:end}

{p 4 4 2}
我们的目标是使得 {cmd:mynewset} 在 {cmd:mi} 数据上不运行，
同时使得 {cmd:mi} 可以调用它（用户输入 
{cmd:mi} {cmd:mynewset}）。 当用户输入 {cmd:mi} {cmd:mynewset} 时，
{cmd:mi} 将 1) 为 {cmd:mynewset} 提供一个干净的 {it:m}=0 数据集，以便其可以
运行，并且 2) 将 {cmd:mynewset} 在 {it:m}=0 上所做的任何操作复制到 {it:m}=1、
{it:m}=2、..., {it:m}={it:M} 上。

{p 4 4 2} 
为实现这一目标，请修改你的代码，如下所示：

	{cmd:program mynewset}
		...
		{cmd:syntax} ... {cmd:[,} ... {cmd:MI]}{right:(1)    }
		{cmd:if ("`mi'"=="") {c -(}}{right:(2)    }
			{cmd:u_mi_not_mi_set "mynewset"}
			{cmd:local checkvars "*"}{right:(3)    }
		{cmd:{c )-}}
		{cmd:else {c -(}}
			{cmd:local checkvars "u_mi_check_setvars settime"}{right:(3)    }
		{cmd:{c )-}}
		...
		{cmd:`checkvars' `varlist'}{right:(4)    }
		...
	{cmd:end}


{p 4 4 2} 
也就是说，

{p 8 12 2}
  1.  将 {cmd:mi} 选项添加到你已有的任何选项中。

{p 8 12 2}
  2.  如果未指定 {cmd:mi} 选项，则执行 {cmd:u_mi_not_mi_set}， 
      并将你的设定命令的名称传递给它。  
      如果数据不是 {cmd:mi}，则 {cmd:u_mi_not_mi_set} 将不执行任何操作。
      如果数据是 {cmd:mi}，则 {cmd:u_mi_not_mi_set} 将
      发出错误，提示用户运行 
      {cmd:mi} {cmd:mynewset}。 
      
{p 8 12 2}
  3.  如果未指定 {cmd:mi} 选项，设置新局部宏 {cmd:checkvars} 为 {cmd:*}，
      否则设置为 {cmd:u_mi_check_setvars}。我们应该提到 
      当 {cmd:mi} {cmd:mynewset} 调用 {cmd:mynewset} 时， 
      {cmd:mi} 选项将会被指定。

{p 8 12 2}
  4.  在 {cmd:mynewset} 使用的任何输入变量上运行 {cmd:`checkvars'}，这些输入变量不能在 
      {it:m} 中变化。 
      {cmd:mi} 对其他变量或 {cmd:mynewset} 可能创建的新变量不在乎；它只关心
      不应在 {it:m} 中变化的现有变量。

{p 12 12 2}
      让我们理解
      "{cmd:`checkvars'} {it:varlist}" 的作用。如果未指定 {cmd:mi} 选项，
      该行展开为 "{cmd:*} {it:varlist}"，这只是注释，什么都不做。如果指定了 {cmd:mi} 选项，
      该行展开为 "{cmd:u_mi_check_setvars} {cmd:settime}
      {it:varlist}"。 我们调用 {cmd:mi} 例程
      {cmd:u_mi_check_setvars}，告知它我们正在调用设定时间，并传递 {it:varlist}。  {cmd:u_mi_check_setvars}
      将验证 {it:varlist} 不包含 {cmd:mi} 系统变量或在 {it:m} 中变化的变量。 在 {cmd:mynewset} 中，
      如果方便的话，可以多次调用 {cmd:`checkvars'}。

{p 4 4 2}
你已完成对 {cmd:mynewset} 的更改。
最后你需要写一个简短的程序来读取 

	{cmd:program mi_cmd_mynewset}
		{cmd:version {ccl stata_version}}
		{cmd:mi_cmd_genericset `"mynewset `0'"' "_mynewset_x _mynewset_y"}
	{cmd:end}{txt}

{p 4 4 2}
在上面的代码中，我们假设 {cmd:mynewset} 可能会向数据添加一两个变量，命名为 
{cmd:_mynewset_x} 和 {cmd:_mynewset_y}。 
在第二个参数中列出 {cmd:mynewset} 可能创建的所有变量。
如果 {cmd:mynewset} 从不创建新变量，则该程序应读取

	{cmd:program mi_cmd_mynewset}
		{cmd:version {ccl stata_version}}
		{cmd:mi_cmd_genericset `"mynewset `0'"'}
	{cmd:end}{txt}

{p 4 4 2}
你完成了。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mi_technical.sthlp>}