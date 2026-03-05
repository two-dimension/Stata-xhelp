{smcl}
{* *! version 1.1.11  09may2019}{...}
{vieweralsosee "[M-4] Stata" "mansection M-4 Stata"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] Intro" "help m4_intro_zh"}{...}
{viewerjumpto "Contents" "m4_stata_zh##contents"}{...}
{viewerjumpto "Description" "m4_stata_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "m4_stata_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "m4_stata_zh##remarks"}{...}
{viewerjumpto "Reference" "m4_stata_zh##reference"}
{help m4_stata:English Version}
{hline}{...}
{p2colset 1 16 18 2}{...}
{p2col:{bf:[M-4] Stata} {hline 2}}Stata接口函数
{p_end}
{p2col:}({mansection M-4 Stata:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker contents}{...}
{title:目录}

{col 5}   [M-5]
{col 5}手册条目{col 22}函数{col 40}目的
{col 5}{hline}

{col 5}   {c TLC}{hline 16}{c TRC}
{col 5}{hline 3}{c RT}{it: 数据访问 }{c LT}{hline}
{col 5}   {c BLC}{hline 16}{c BRC}

{col 5}{bf:{help mf_st_nvar_zh:st_nvar()}}{...}
{col 22}{cmd:st_nvar()}{...}
{col 40}变量数量
{col 22}{cmd:st_nobs()}{...}
{col 40}观察值数量

{col 5}{bf:{help mf_st_data_zh:st_data()}}{...}
{col 22}{cmd:st_data()}{...}
{col 40}将数字数据从 Stata 加载到矩阵中
{col 22}{cmd:st_sdata()}{...}
{col 40}将字符串数据从 Stata 加载到矩阵中

{col 5}{bf:{help mf_st_store_zh:st_store()}}{...}
{col 22}{cmd:st_store()}{...}
{col 40}在 Stata 数据集中存储数字数据
{col 22}{cmd:st_sstore()}{...}
{col 40}在 Stata 数据集中存储字符串数据

{col 5}{bf:{help mf_st_view_zh:st_view()}}{...}
{col 22}{cmd:st_view()}{...}
{col 40}创建对 Stata 数据集的视图
{col 22}{cmd:st_sview()}{...}
{col 40}相同；字符串变量

{col 5}{bf:{help mf_st_subview_zh:st_subview()}}{...}
{col 22}{cmd:st_subview()}{...}
{col 40}从视图中创建视图

{col 5}{bf:{help mf_st_viewvars_zh:st_viewvars()}}{...}
{col 22}{cmd:st_viewvars()}{...}
{col 40}识别变量和观察值 
{col 22}{cmd:st_viewobs()}{...}
{col 40}与视图对应

{col 5}   {c TLC}{hline 26}{c TRC}
{col 5}{hline 3}{c RT}{it: 变量名称与索引 }{c LT}{hline}
{col 5}   {c BLC}{hline 26}{c BRC}

{col 5}{bf:{help mf_st_varindex_zh:st_varindex()}}{...}
{col 22}{cmd:st_varindex()}{...}
{col 40}从变量名称获取变量索引

{col 5}{bf:{help mf_st_varname_zh:st_varname()}}{...}
{col 22}{cmd:st_varname()}{...}
{col 40}从变量索引获取变量名称

{col 5}   {c TLC}{hline 26}{c TRC}
{col 5}{hline 3}{c RT}{it: 变量特征 }{c LT}{hline}
{col 5}   {c BLC}{hline 26}{c BRC}

{col 5}{bf:{help mf_st_varrename_zh:st_varrename()}}{...}
{col 22}{cmd:st_varrename()}{...}
{col 40}重命名 Stata 变量

{col 5}{bf:{help mf_st_vartype_zh:st_vartype()}}{...}
{col 22}{cmd:st_vartype()}{...}
{col 40}Stata 变量的存储类型
{col 22}{cmd:st_isnumvar()}{...}
{col 40}变量是否为数值型
{col 22}{cmd:st_isstrvar()}{...}
{col 40}变量是否为字符串型

{col 5}{bf:{help mf_st_varformat_zh:st_varformat()}}{...}
{col 22}{cmd:st_varformat()}{...}
{col 40}获取/设置 Stata 变量的格式
{col 22}{cmd:st_varlabel()}{...}
{col 40}获取/设置变量标签
{col 22}{cmd:st_varvaluelabel()}{...}
{col 40}获取/设置值标签

{col 5}{bf:{help mf_st_vlexists_zh:st_vlexists()}}{...}
{col 22}{cmd:st_vlexists()}{...}
{col 40}值标签是否存在
{col 22}{cmd:st_vldrop()}{...}
{col 40}删除值 
{col 22}{cmd:st_vlmap()}{...}
{col 40}映射值 
{col 22}{cmd:st_vlsearch()}{...}
{col 40}映射文本 
{col 22}{cmd:st_vlload()}{...}
{col 40}加载值标签
{col 22}{cmd:st_vlmodify()}{...}
{col 40}创建或修改值标签

{col 5}   {c TLC}{hline 45}{c TRC}
{col 5}{hline 3}{c RT}{it: 临时变量与时间序列运算符 }{c LT}{hline}
{col 5}   {c BLC}{hline 45}{c BRC}

{col 5}{bf:{help mf_st_tempname_zh:st_tempname()}}{...}
{col 22}{cmd:st_tempname()}{...}
{col 40}临时变量名称
{col 22}{cmd:st_tempfilename()}{...}
{col 40}临时文件名

{col 5}{bf:{help mf_st_tsrevar_zh:st_tsrevar()}}{...}
{col 22}{cmd:st_tsrevar()}{...}
{col 40}创建时间序列运算符变量名
{col 22}{cmd:_st_tsrevar()}{...}
{col 40}相同

{col 5}   {c TLC}{hline 44}{c TRC}
{col 5}{hline 3}{c RT}{it: 添加与删除变量与观察值 }{c LT}{hline}
{col 5}   {c BLC}{hline 44}{c BRC}

{col 5}{bf:{help mf_st_addobs_zh:st_addobs()}}{...}
{col 22}{cmd:st_addobs()}{...}
{col 40}向 Stata 数据集添加观察值

{col 5}{bf:{help mf_st_addvar_zh:st_addvar()}}{...}
{col 22}{cmd:st_addvar()}{...}
{col 40}向 Stata 数据集添加变量

{col 5}{bf:{help mf_st_dropvar_zh:st_dropvar()}}{...}
{col 22}{cmd:st_dropvar()}{...}
{col 40}删除变量
{col 22}{cmd:st_dropobsin()}{...}
{col 40}删除指定观察值
{col 22}{cmd:st_dropobsif()}{...}
{col 40}删除选择的观察值
{col 22}{cmd:st_keepvar()}{...}
{col 40}保留变量
{col 22}{cmd:st_keepobsin()}{...}
{col 40}保留指定观察值
{col 22}{cmd:st_keepobsif()}{...}
{col 40}保留选择的观察值

{col 5}{bf:{help mf_st_updata_zh:st_updata()}}{...}
{col 22}{cmd:st_updata()}{...}
{col 40}查询/设置数据已更改标志

{col 5}   {c TLC}{hline 26}{c TRC}
{col 5}{hline 3}{c RT}{it: 执行 Stata 命令 }{c LT}{hline}
{col 5}   {c BLC}{hline 26}{c BRC}

{col 5}{bf:{help mf_stata_zh:stata()}}{...}
{col 22}{cmd:stata()}{...}
{col 40}执行 Stata 命令

{col 5}{bf:{help mf_st_macroexpand_zh:st_macroexpand()}}{...}
{col 22}{cmd:st_macroexpand()}{...}
{col 40}展开 Stata 宏

{col 5}   {c TLC}{hline 49}{c TRC}
{col 5}{hline 3}{c RT}{it: 获取 e(), r(), s(), 宏、矩阵等 }{c LT}{hline}
{col 5}   {c BLC}{hline 49}{c BRC}

{col 5}{bf:{help mf_st_global_zh:st_global()}}{...}
{col 22}{cmd:st_global()}{...}
{col 40}获取/设置 Stata 全局
{col 22}{cmd:st_global_hcat()}{...}
{col 40}获取隐藏/历史状态

{col 5}{bf:{help mf_st_local_zh:st_local()}}{...}
{col 22}{cmd:st_local()}{...}
{col 40}获取/设置本地 Stata 宏

{col 5}{bf:{help mf_st_numscalar_zh:st_numscalar()}}{...}
{col 22}{cmd:st_numscalar()}{...}
{col 48}获取/设置 Stata 数值标量
{col 22}{cmd:st_numscalar_hcat()}{...}
{col 48}获取隐藏/历史状态
{col 22}{cmd:st_strscalar()}{...}
{col 48}获取/设置 Stata 字符串标量

{col 5}{bf:{help mf_st_matrix_zh:st_matrix()}}{...}
{col 22}{cmd:st_matrix()}{...}
{col 48}获取/设置 Stata 矩阵
{col 22}{cmd:st_matrix_hcat()}{...}
{col 48}获取隐藏/历史状态
{col 22}{cmd:st_matrixrowstripe()}{...}
{col 48}获取/设置行标签
{col 22}{cmd:st_matrixcolstripe()}{...}
{col 48}获取/设置列标签
{col 22}{cmd:st_replacematrix()}{...}
{col 48}替换现有 Stata 矩阵

{* 不要添加到手册；这是一个未记录的帮助文件}{...}
{col 5}{bf:{help mf_st_lchar_zh:st_lchar()}}{...}
{col 22}{cmd:st_lchar()}{...}
{col 40}获取/设置“长”特征
{col 22}{cmd:ado_intolchar()}{...}
{col 40}从 ado 设置长特征
{col 22}{cmd:ado_fromlchar()}{...}
{col 40}从 ado 获取长特征

{col 5}{bf:{help mf_st_dir_zh:st_dir()}}{...}
{col 22}{cmd:st_dir()}{...}
{col 40}获取 Stata 对象列表

{col 5}{bf:{help mf_st_rclear_zh:st_rclear()}}{...}
{col 22}{cmd:st_rclear()}{...}
{col 40}清除 {cmd:r()}
{col 22}{cmd:st_eclear()}{...}
{col 40}清除 {cmd:e()}
{col 22}{cmd:st_sclear()}{...}
{col 40}清除 {cmd:s()}

{col 5}   {c TLC}{hline 24}{c TRC}
{col 5}{hline 3}{c RT}{it: 解析与验证} {c LT}{hline}
{col 5}   {c BLC}{hline 24}{c BRC}

{col 5}{bf:{help mf_st_isname_zh:st_isname()}}{...}
{col 22}{cmd:st_isname()}{...}
{col 40}是否有效的 Stata 名称
{col 22}{cmd:st_islmname()}{...}
{col 40}是否有效的本地宏名称

{col 5}{bf:{help mf_st_isfmt_zh:st_isfmt()}}{...}
{col 22}{cmd:st_isfmt()}{...}
{col 40}是否有效的 {cmd:%}{it:fmt}
{col 22}{cmd:st_isnumfmt()}{...}
{col 40}是否有效的数值 {cmd:%}{it:fmt}
{col 22}{cmd:st_isstrfmt()}{...}
{col 40}是否有效的字符串 {cmd:%}{it:fmt}

{col 5}{bf:{help mf_abbrev_zh:abbrev()}}{...}
{col 22}{cmd:abbrev()}{...}
{col 40}字符串缩写

{col 5}{bf:{help mf_strtoname_zh:strtoname()}}{...}
{col 22}{cmd:strtoname()}{...}
{col 40}将字符串转换为 Stata 名称

{col 5}   {c TLC}{hline 13}{c TRC}
{col 5}{hline 3}{c RT}{it: 数据框 }{c LT}{hline}
{col 5}   {c BLC}{hline 13}{c BRC}

{col 5}{bf:{help mf_st_frame_zh:st_frame*()}}{...}
{col 22}{cmd:st_framecurrent()}{...}
{col 40}返回或更改当前框架
{col 22}{cmd:st_framecreate()}{...}
{col 40}创建新框架
{col 22}{cmd:st_framedrop()}{...}
{col 40}删除（消除）现有框架
{col 22}{cmd:st_framedropabc()}{...}
{col 40}删除除了当前框架之外的所有框架
{col 22}{cmd:st_framerename()}{...}
{col 40}重命名框架
{col 22}{cmd:st_framecopy()}{...}
{col 40}将一个框架的内容复制到另一个框架
{col 22}{cmd:st_framereset()}{...}
{col 40}重置为空 {cmd:default} 框架
{col 22}{cmd:st_frameexists()}{...}
{col 40}框架名称是否已存在
{col 22}{cmd:st_framedir()}{...}
{col 40}获取现有框架名称的向量
{col 5}{hline}


{marker description}{...}
{title:描述}

{p 4 4 2}
上述函数与 Stata 进行接口。


{marker linkspdf}{...}
{title:链接到 PDF 文档}

        {mansection M-4 StataRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
以下手册条目与从 Stata 获取数据或将数据放入 Stata 相关：

{p2colset 9 30 32 2}{...}
	{bf:{help mf_st_data_zh:[M-5] st_data()}}      加载当前 Stata 数据集的副本
{p2col:{bf:{help mf_st_view_zh:[M-5] st_view()}}}创建一个矩阵以查看当前 Stata 数据集{p_end}
	{bf:{help mf_st_store_zh:[M-5] st_store()}}     修改当前 Stata 数据集中存储的值
	{bf:{help mf_st_nvar_zh:[M-5] st_nvar()}}      变量和观察值的数量

{p 4 4 2}
在某些情况下，您可能会需要将变量名称转换为变量索引，反之亦然：

	{bf:{help mf_st_varname_zh:[M-5] st_varname()}}   从变量索引获取变量名称
	{bf:{help mf_st_varindex_zh:[M-5] st_varindex()}}  从变量名称获取变量索引
	{bf:{help mf_st_tsrevar_zh:[M-5] st_tsrevar()}}   创建时间序列运算符变量

{p 4 4 2}
其他函数主要与获取和放置 Stata 的标量、矩阵和返回结果有关：

	{bf:{help mf_st_local_zh:[M-5] st_local()}}     从 Stata 获取字符串并将字符串放入 Stata
{p2col:{bf:{help mf_st_global_zh:[M-5] st_global()}}}从全局宏中获取字符串并放入字符串{p_end}
{p2col:{bf:{help mf_st_numscalar_zh:[M-5] st_numscalar()}}}从 Stata 标量获取值并放入值{p_end}
	{bf:{help mf_st_matrix_zh:[M-5] st_matrix()}}    获取和放置 Stata 矩阵

{p 4 4 2}
{cmd:stata()} 函数的文档见于

	{bf:{help mf_stata_zh:[M-5] stata()}}        执行 Stata 命令

{p 4 4 2}
允许您使 Stata 执行您在字符串中构建的命令。
{p2colreset}{...}


{marker reference}{...}
{title:参考}

{phang}
Gould, W. W. 2008.
{browse "http://www.stata-journal.com/sjpdf.html?articlenum=pr0040":Mata 事宜: 宏}.
{it:Stata Journal} 8: 401-412.
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <m4_stata.sthlp>}