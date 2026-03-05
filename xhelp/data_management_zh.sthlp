{smcl}
{* *! version 1.0.21  19jun2019}{...}
{vieweralsosee "[D] 数据管理" "mansection D Datamanagement"}{...}
{viewerjumpto "描述" "data##description"}{...}
{viewerjumpto "参考" "data##reference"}
{help data_management:English Version}
{hline}{...}
{p2colset 1 24 26 2}{...}
{p2col:{bf:[D] 数据管理} {hline 2}}数据管理命令简介{p_end}
{p2col:}({mansection D Datamanagement:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:描述}

{pstd}
本手册称为 [D]，文档介绍了Stata的数据管理功能。有关数据管理的更多信息和示例，请参见 {help data##M2010:Mitchell (2010)}。

{pstd}
统计应用的数据管理不仅仅指传统的数据管理——排序、合并、追加等——还包括数据重组，因为你将使用的统计程序假设数据以特定的方式组织。例如，分析纵向数据的统计命令，如 {help xtreg_zh}，通常要求数据采用长格式而非宽格式，这意味着重复值不是作为额外的变量记录，而是作为额外的观察值记录。

{pstd}
以下是每个人应了解的基础知识：

{p2colset 9 35 37 2}{...}
{p2col :{help use_zh}}加载Stata数据集{p_end}
{p2col :{help save_zh}}保存Stata数据集{p_end}
{p2col :{help describe_zh}}描述内存或文件中的数据{p_end}
{p2col :{help codebook_zh}}描述数据内容{p_end}
{p2col :{help inspect_zh}}显示数据属性的简单汇总{p_end}
{p2col :{help count_zh}}计算满足特定条件的观察值{p_end}
{p2col :{helpb data types}}数据类型快速参考{p_end}
{p2col :{mansection D Missingvalues:{bf:缺失值}}}缺失值快速参考{p_end}
{p2col :{help datetime_zh}}日期和时间值及变量{p_end}
{p2col :{help list_zh}}列出变量值{p_end}
{p2col :{help edit_zh}}使用数据编辑器浏览或编辑数据{p_end}
{p2col :{help varmanage_zh}}管理变量标签、格式和其他属性{p_end}
{p2col :{help rename_zh}}重命名变量{p_end}
{p2col :{help format_zh}}设置变量的输出格式{p_end}
{p2col :{help label_zh}}操作标签{p_end}
{p2col :{helpb frames intro}}}框架简介{p_end}

{pstd}
要在内存中处理多个数据集，请查看

{p2col :{helpb frames intro}}}框架简介{p_end}
{p2col :{help frames_zh}}数据框架{p_end}
{p2col :{helpb frame change}}更改当前（工作）框的身份{p_end}
{p2col :{helpb frame copy}}复制框{p_end}
{p2col :{helpb frame create}}创建新框{p_end}
{p2col :{helpb frame drop}}从内存中删除框{p_end}
{p2col :{helpb frame prefix}}框架前缀命令{p_end}
{p2col :{helpb frame put}}将选定变量或观察值复制到新框{p_end}
{p2col :{helpb frame pwf}}显示当前（工作）框的名称{p_end}
{p2col :{helpb frame rename}}重命名现有框{p_end}
{p2col :{helpb frames dir}}显示内存中所有框的名称{p_end}
{p2col :{helpb frames reset}}从内存中删除所有框{p_end}
{p2col :{help frget_zh}}从链接框中复制变量{p_end}
{p2col :{help frlink_zh}}链接框{p_end}

{pstd}
你需要创建和删除变量，方法如下：

{p2col :{help generate_zh}}创建或更改变量内容{p_end}
{p2col :{help egen_zh}}生成的扩展{p_end}
{p2col :{help drop_zh}}删除变量或观察值{p_end}
{p2col :{help clear_zh}}清除内存{p_end}


{pstd}
有关输入或导入数据，请参见

{p2col :{help use_zh}}加载Stata数据集{p_end}
{p2col :{help sysuse_zh}}使用附带的数据集{p_end}
{p2col :{help webuse_zh}}使用Stata网站上的数据集{p_end}
{p2col :{help input_zh}}从键盘输入数据{p_end}
{p2col :{help import_zh}}导入数据到Stata的概述{p_end}
{p2col :{helpb import dbase}}导入和导出dBase文件{p_end}
{p2col :{helpb import delimited}}导入和导出分隔文本数据{p_end}
{p2col :{helpb import excel}}导入和导出Excel文件{p_end}
{p2col :{helpb import fred}}从联邦储备经济数据导入数据{p_end}
{p2col :{helpb import haver}}从Haver Analytics数据库导入数据{p_end}
{p2col :{helpb import sas}}导入SAS文件{p_end}
{p2col :{helpb import sasxport5}}以SAS XPORT版本5格式导入和导出数据{p_end}
{p2col :{helpb import sasxport8}}以SAS XPORT版本8格式导入和导出数据{p_end}
{p2col :{helpb import spss}}导入SPSS文件{p_end}
{p2col :{help infile2_zh:infile (fixed format)}}按照字典导入固定格式的文本数据{p_end}
{p2col :{help infile1_zh:infile (free format)}}导入无格式文本数据{p_end}
{p2col :{help infix_zh:infix (fixed format)}}导入固定格式的文本数据{p_end}
{p2col :{help odbc_zh}}加载、写入或查看ODBC源中的数据{p_end}
{p2col :{help hexdump_zh}}显示文件的十六进制报告{p_end}
{p2col :{help icd9_zh}}ICD-9-CM诊断代码{p_end}
{p2col :{help icd9p_zh}}ICD-9-CM治疗代码{p_end}
{p2col :{help icd10_zh}}ICD-10诊断代码{p_end}
{p2col :{help icd10cm_zh}}ICD-10-CM诊断代码{p_end}
{p2col :{help icd10pcs_zh}}ICD-10-PCS治疗代码{p_end}

{pstd}
有关导出数据，请参见

{p2col :{help save_zh}}保存Stata数据集{p_end}
{p2col :{help export_zh}}导出数据到Stata的概述{p_end}
{p2col :{help outfile_zh}}以文本格式导出数据集{p_end}
{p2col :{helpb export dbase}}导入和导出dBase文件{p_end}
{p2col :{helpb export delimited}}导入和导出分隔文本数据{p_end}
{p2col :{helpb export excel}}导入和导出Excel文件{p_end}
{p2col :{helpb export sasxport5}}以SAS XPORT版本5格式导入和导出数据{p_end}
{p2col :{helpb export sasxport8}}以SAS XPORT版本8格式导入和导出数据{p_end}
{p2col :{help odbc_zh}}加载、写入或查看ODBC源中的数据{p_end}


{pstd}
变量和观察值的排序（排序顺序）可能很重要；请参见

{p2col :{help order_zh}}重新排序数据集中的变量{p_end}
{p2col :{help sort_zh}}对数据进行排序{p_end}
{p2col :{help gsort_zh}}升序和降序排序{p_end}


{pstd}
要重组或组合数据，请参见

{p2col :{help append_zh}}追加数据集{p_end}
{p2col :{help merge_zh}}合并数据集{p_end}
{p2col :{help frlink_zh}}链接框架{p_end}
{p2col :{help frget_zh}}从链接框中复制变量{p_end}
{p2col :{help reshape_zh}}将数据从宽格式转换为长格式，反之亦然{p_end}
{p2col :{help collapse_zh}}生成数据集的摘要统计{p_end}
{p2col :{help contract_zh}}生成频率和百分比的数据集{p_end}
{p2col :{help fillin_zh}}矩形化数据集{p_end}
{p2col :{help expand_zh}}重复观察值{p_end}
{p2col :{help expandcl_zh}}重复聚类观察值{p_end}
{p2col :{help stack_zh}}堆叠数据{p_end}
{p2col :{help joinby_zh}}在组内形成所有对比组合{p_end}
{p2col :{help xpose_zh}}调换观察值和变量{p_end}
{p2col :{help cross_zh}}形成两个数据集的每个对比组合{p_end}


{pstd}
在上述列表中，我们尤其希望引起你对 {manlink D reshape} 的注意，这是一个初学者常常忽视的有用命令。


{pstd}
进行随机抽样，请参见

{p2col :{help sample_zh}}抽取随机样本{p_end}
{p2col :{help splitsample_zh}}将数据拆分为随机样本{p_end}
{p2col :{help drawnorm_zh}}从多元正态分布中抽取样本

{pstd}
有关文件操作，请参见

{p2col :{help type_zh}}显示文件内容{p_end}
{p2col :{help erase_zh}}删除磁盘文件{p_end}
{p2col :{help copy_zh}}从磁盘或URL复制文件{p_end}
{p2col :{help cd_zh}}更改目录{p_end}
{p2col :{help dir_zh}}显示文件名{p_end}
{p2col :{help mkdir_zh}}创建目录{p_end}
{p2col :{help rmdir_zh}}删除目录{p_end}
{p2col :{help cf_zh}}比较两个数据集{p_end}
{p2col :{help changeeol_zh}}转换文本文件的行尾字符{p_end}
{p2col :{help filefilter_zh}}转换文件中的ASCII或二进制模式{p_end}
{p2col :{help checksum_zh}}计算文件的校验和{p_end}
{p2col :{help zipfile_zh}}以zip压缩格式压缩和解压缩文件和目录{p_end}


{pstd}
有关处理Unicode字符串，请参见

{p2col :{help unicode_zh}}Unicode实用工具{p_end}
{p2col :{helpb unicode translate}}将文件转换为Unicode{p_end}
{p2col :{helpb unicode encoding}}Unicode编码实用工具{p_end}
{p2col :{helpb unicode locale}}Unicode区域设置实用工具{p_end}
{p2col :{helpb unicode collator}}特定语言的Unicode整理器{p_end}
{p2col :{helpb unicode convertfile}}在编码之间进行低级文件转换{p_end}


{pstd}
以上条目很重要。其余的在需要时也有用：

{p2col :{help datasignature_zh}}确定数据是否已更改{p_end}
{p2col :{help type_zh}}显示文件内容{p_end}
{p2col :{help notes_zh}}在数据中添加备注{p_end}
{p2col :{helpb label language}}多种语言的变量和数值标签{p_end}
{p2col :{help labelbook_zh}}标签实用工具{p_end}
{p2col :{help encode_zh}}将字符串编码为数字，反之亦然{p_end}
{p2col :{help recode_zh}}重新编码分类变量{p_end}
{p2col :{help ipolate_zh}}线性插值（外推）值{p_end}
{p2col :{help destring_zh}}将字符串变量转换为数值变量，反之亦然{p_end}
{p2col :{help mvencode_zh}}将缺失值更改为数值值，反之亦然{p_end}
{p2col :{help pctile_zh}}创建包含百分位的变量{p_end}
{p2col :{help range_zh}}生成数值范围{p_end}
{p2col :{help by_zh}}在数据的子集上重复Stata命令{p_end}
{p2col :{help statsby_zh}}收集特定命令跨越by列表的统计信息{p_end}
{p2col :{help dyngen_zh}}动态生成变量的新值{p_end}
{p2col :{help compress_zh}}压缩内存中的数据{p_end}
{p2col :{help recast_zh}}更改变量的存储类型{p_end}
{p2col :{helpb datetime display formats}}日期和时间的显示格式{p_end}
{p2col :{helpb datetime translation}}字符串到数值日期的转换函数{p_end}
{p2col :{help bcal_zh}}商业日历文件操作{p_end}
{p2col :{helpb datetime business calendars:datetime business}}商业日历{p_end}
{p2col 12 14 14 2:{helpb datetime business calendars:calendars}}{p_end}
{p2col :{helpb datetime business calendars creation:datetime business}}商业日历创建{p_end}
{p2col 12 14 14 2:{helpb datetime business calendars creation:calendars creation}}{p_end}
{p2col :{help assert_zh}}验证声明的真实性{p_end}
{p2col :{help assertnested_zh}}验证变量是否嵌套{p_end}
{p2col :{help clonevar_zh}}克隆现有变量{p_end}
{p2col :{help compare_zh}}比较两个变量{p_end}
{p2col :{help corr2data_zh}}创建具有指定相关结构的数据集{p_end}
{p2col :{help ds_zh}}紧凑地列出具有指定属性的变量{p_end}
{p2col :{help duplicates_zh}}报告、标记或删除重复观察值{p_end}
{p2col :{help insobs_zh}}添加或插入观察值{p_end}
{p2col :{help isid_zh}}检查唯一标识符{p_end}
{p2col :{help lookfor_zh}}在变量名和标签中搜索字符串{p_end}
{p2col :{help memory_zh}}内存管理{p_end}
{p2col :{help putmata_zh}}将Stata变量放入Mata并反之亦然{p_end}
{p2col :{help obs_zh}}增加数据集中观察值的数量{p_end}
{p2col :{helpb rename group}}重命名变量组{p_end}
{p2col :{help separate_zh}}创建单独的变量{p_end}
{p2col :{help shell_zh}}暂时调用操作系统{p_end}
{p2col :{help snapshot_zh}}保存和恢复数据快照{p_end}
{p2col :{help split_zh}}将字符串变量拆分为部分{p_end}
{p2col :{help vl_zh}}管理变量列表{p_end}
{p2col :{helpb vl create}}创建和修改用户定义的变量列表{p_end}
{p2col :{helpb vl drop}}从变量列表中删除变量列表或变量{p_end}
{p2col :{helpb vl list}}列出变量列表的内容{p_end}
{p2col :{helpb vl rebuild}}重建变量列表{p_end}
{p2col :{helpb vl set}}设置系统定义的变量列表{p_end}

{pstd}
在上面的内容中，有一些真正的瑰宝，如 {manlink D notes}、{manlink D compress}、{manlink D assert}，你会发现这些特别有用。


{marker reference}{...}
{title:参考}

{marker M2010}{...}
{phang}Mitchell, M. N. 2010. 
{browse "http://www.stata-press.com/books/dmus.html":{it:使用Stata进行数据管理：实用手册}.} College Station, TX: Stata Press.
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <data_management.sthlp>}