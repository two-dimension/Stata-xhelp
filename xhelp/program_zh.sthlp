{smcl}
{* *! version 1.2.13  05sep2018}{...}
{vieweralsosee "[P] program" "mansection P program"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[P] byable" "help byable"}{...}
{vieweralsosee "[D] clear" "help clear_zh"}{...}
{vieweralsosee "[P] discard" "help discard_zh"}{...}
{vieweralsosee "[R] query" "help query_zh"}{...}
{vieweralsosee "[P] sortpreserve" "help sortpreserve_zh"}{...}
{vieweralsosee "[P] trace" "help trace_zh"}{...}
{viewerjumpto "Syntax" "program_zh##syntax"}{...}
{viewerjumpto "Description" "program_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "program_zh##linkspdf"}{...}
{viewerjumpto "Options" "program_zh##options"}{...}
{viewerjumpto "Useful commands for programmers" "program_zh##useful"}
{help program:English Version}
{hline}{...}
{p2colset 1 16 18 2}{...}
{p2col:{bf:[P] program} {hline 2}}定义和操作程序{p_end}
{p2col:}({mansection P program:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

    定义程序

{p 8 16 2}{cmdab:pr:ogram} [{cmdab:de:fine}] {it:pgmname} [{cmd:,}
	[ {cmd:nclass} | {cmd:rclass} | {cmd:eclass} | {cmd:sclass} ]
	{cmdab:by:able:(}{cmdab:r:ecall}[{cmd:,} {cmdab:noh:eader}] |
	{cmdab:o:necall}{cmd:)}
	{opt prop:erties(namelist)}
	{cmdab:sort:preserve} {cmd:plugin}]


    列出存储在内存中的程序名称

	{cmdab:pr:ogram} {cmdab:di:r}


    从内存中消除程序

{p 8 16 2}{cmdab:pr:ogram} {cmd:drop} {c -(} {it:pgmname} [{it:pgmname} [...]] |
	{cmd:_all} | {cmd:_allado} {c )-}


    列出程序内容
{p 8 16 2}{cmdab:pr:ogram} {cmdab:l:ist} [ {it:pgmname} [{it:pgmname} [...]] |
	{cmd:_all}]


{marker description}{...}
{title:描述}

{pstd}
{cmd:program define} 定义和操作程序。 如果 {it:pgmname} 是以下任意单词，则需要使用 {cmd:define}： {cmd:define}、 {cmd:dir}、 {cmd:drop}、 {cmd:list} 或 {cmd:plugin}。

{pstd}
{cmd:program dir} 列出存储在内存中的所有程序名称。

{pstd}
{cmd:program list} 列出指定程序的内容。 {cmd:program list _all} 列出存储在内存中的所有程序的内容。

{pstd}
{cmd:program drop} 从内存中消除指定的程序。 {cmd:program drop _all} 从内存中消除所有程序。 {cmd:program drop _allado} 从内存中消除所有从 ado 文件加载的程序。有关 ado 文件的解释，请参见 {findalias frado}。

{pstd}
请参见 {findalias frprograms} 获取程序的描述。

{pstd}有关调试程序的信息，请参见 {manhelp trace P}。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection P programRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{cmd:nclass} 表示正在定义的程序不返回 {hi:r()}、 {hi:e()} 或 {hi:s()} 中的结果，这是默认设置。

{phang}
{cmd:rclass} 表示正在定义的程序返回 {hi:r()} 中的结果。 通过 {cmd:return} 命令可以完成此操作；请参见 {manhelp return P}。 如果程序没有明确声明为 {cmd:rclass}，则可能无法更改或替换 {hi:r()} 中的结果。

{phang}
{cmd:eclass} 表示正在定义的程序返回 {hi:e()} 中的结果或修改已经存在的 {hi:e()} 中的结果。 通过 {cmd:ereturn} 命令可以实现此功能；请参见 {manhelp return P} 和 {manhelp ereturn P}。 如果程序没有明确声明为 {cmd:eclass}，则可能无法直接替换或更改 {hi:e()} 中的结果。

{phang}
{cmd:sclass} 表示正在定义的程序返回 {hi:s()} 中的结果。 通过 {cmd:sreturn} 命令可以实现此功能；请参见 {manhelp return P}。 如果程序没有明确声明为 {cmd:sclass}，则可能无法直接更改或替换 {hi:s()} 中的结果，但它仍然可以通过使用 {cmd:sreturn clear} 清除 {hi:s()}。

{phang}
{cmd:byable(recall}[{cmd:,} {cmd:noheader}] | {cmd:onecall)} 指定程序允许 Stata 的 {cmd:by} {it:varlist}{cmd::} 前缀。 有两种书写可致的程序风格： {cmd:byable(recall)} 和 {cmd:byable(onecall)}。 如何编写可致的程序请参见 {manhelp byable P}。

{phang}
{opt properties(namelist)} 表示 {it:pgmname} 具有指定的属性。 {it:namelist} 可以包含最多 80 个字符，包括分隔空格。 请参见 
{manhelp program_properties P:程序属性}。

{phang}
{cmd:sortpreserve} 表示程序更改数据的排序顺序，并且在程序结束时 Stata 应恢复原始顺序；请参见 {manhelp sortpreserve P}。

{phang}
{cmd:plugin} 指定动态加载一个插件（一个专门编译的 C 程序），并且插件定义新的命令；请参见 {manhelp plugin P}。


{marker useful}{...}
{title:对程序员有用的命令}

{synoptset 37 tabbed}{...}
{syntab:基础}
{synopt:{findalias frprograms}}{p_end}
{synopt:{findalias frmacros}}{p_end}
{synopt:{findalias fradoprog}}{p_end}
{synopt:{manhelp comments P}} 向程序添加注释{p_end}
{synopt:{manhelp fvexpand P}} 扩展因子变量列表{p_end}
{synopt:{manhelp macro P}} 宏定义和操作{p_end}
{synopt:{manhelp program P}} 定义和操作程序{p_end}
{synopt:{manhelp return P}} 返回存储结果{p_end}

{syntab:程序控制}
{synopt:{findalias frversion}}{p_end}
{synopt:{manhelp capture P}} 捕获返回代码{p_end}
{synopt:{manhelp continue P}} 退出循环{p_end}
{synopt:{manhelp error P}} 显示通用错误消息并退出{p_end}
{synopt:{manhelp foreach P}} 遍历项目{p_end}
{synopt:{manhelp forvalues P}} 遍历连续值{p_end}
{synopt:{manhelp ifcmd P:if}} if 编程命令{p_end}
{synopt:{manhelp version P}} 版本控制{p_end}
{synopt:{manhelp while P}} 循环{p_end}

{syntab:解析和程序参数}
{synopt:{findalias frarguments}}{p_end}
{synopt:{manhelp confirm P}} 参数验证{p_end}
{synopt:{manhelp gettoken P}} 低级解析{p_end}
{synopt:{manhelp levelsof P}} 变量的不同级别{p_end}
{synopt:{manhelp nlist P:numlist}} 解析数字列表{p_end}
{synopt:{manhelp syntax P}} 解析 Stata 语法{p_end}
{synopt:{manhelp tokenize P}} 将字符串分割为标记{p_end}

{syntab:控制台输出}
{synopt:{manhelp dialog_programming P:对话框编程}} 对话框编程{p_end}
{synopt:{manhelp display P}} 显示字符串和标量表达式的值{p_end}
{synopt:{manhelp smcl P}} Stata 标记和控制语言{p_end}
{synopt:{manhelp tabdisp P}} 显示表格{p_end}

{syntab:常用编程命令}
{synopt:{manhelp byable P}} 使程序可致{p_end}
{synopt:{manhelp #delimit P}} 更改分隔符{p_end}
{synopt:{manhelp exit P}} 从程序或 do 文件退出{p_end}
{synopt:{manhelp fvrevar R}} 因子变量操作编程命令{p_end}
{synopt:{manhelp mark P}} 标记观测值以纳入{p_end}
{synopt:{manhelp matrix P}} 矩阵命令简介{p_end}
{synopt:{manhelp more P}} 暂停直到按下键{p_end}
{synopt:{manhelp nopreserve_option P:nopreserve 选项}} nopreserve 选项{p_end}
{synopt:{manhelp preserve P}} 保存和恢复数据{p_end}
{synopt:{manhelp quietly P}} 安静或响亮地执行命令{p_end}
{synopt:{manhelp scalar P}} 标量变量{p_end}
{synopt:{manhelp smcl P}} Stata 标记和控制语言{p_end}
{synopt:{manlink P sortpreserve}} 在程序中排序{p_end}
{synopt:{manhelp timer P}} 通过记录和报告所用时间来计时代码段{p_end}
{synopt:{manhelp tsrevar TS}} 时间序列操作编程命令{p_end}

{syntab:调试}
{synopt:{manhelp pause P}} 程序调试命令{p_end}
{synopt:{manhelp timer P}} 通过记录和报告所用时间来计时代码段{p_end}
{synopt:{manhelp trace P}} 调试 Stata 程序{p_end}

{syntab:高级编程命令}
{synopt:{manhelp Automation P}} 自动化{p_end}
{synopt:{manhelp break P}} 抑制 Break 键{p_end}
{synopt:{manhelp char P}} 特征{p_end}
{synopt:{manhelp class M-2}} 面向对象编程（类）{p_end}
{synopt:{manhelp class P}} 类编程{p_end}
{synopt:{manhelp class_exit P:class exit}} 退出类成员程序并返回结果{p_end}
{synopt:{manhelp classutil P:classutil}} 类编程工具{p_end}
{synopt:{manhelp estat_programming P:estat 编程}} 控制社区贡献命令后的 estat{p_end}
{synopt:{manhelp _estimates P}} 管理估计结果{p_end}
{synopt:{manhelp file P}} 读写 ASCII 文本和二进制文件{p_end}
{synopt:{manhelp findfile P}} 在路径中查找文件{p_end}
{synopt:{manhelp include P}} 从文件中包含命令{p_end}
{synopt:{manhelp macro P}} 宏定义和操作{p_end}
{synopt:{manhelp macro_lists P:宏列表}} 操作列表{p_end}
{synopt:{manhelp ml R}} 最大似然估计{p_end}
{synopt:{manhelp mf_moptimize M-5:moptimize()}} 模型优化{p_end}
{synopt:{manhelp mf_optimize M-5:optimize()}} 函数优化{p_end}
{synopt:{manhelp plugin P}} 加载插件{p_end}
{synopt:{manhelp postfile P}} 在 Stata 数据集发布结果{p_end}
{synopt:{manhelp _predict P}} 在估计编程命令后获取预测、残差等{p_end}
{synopt:{manhelp program_properties P:程序属性}} 用户定义程序的属性{p_end}
{synopt:{manhelp putmata D}} 将 Stata 变量放入 Mata 及反之{p_end}
{synopt:{manhelp _return P}} 保存存储结果{p_end}
{synopt:{manhelp _rmcoll P}} 删除共线变量{p_end}
{synopt:{manhelp _robust P}} 稳健方差估计{p_end}
{synopt:{manhelp serset P}} 创建和操作 sersets{p_end}
{synopt:{manhelp snapshot D}} 保存和恢复数据快照{p_end}
{synopt:{manhelp unab P}} 展开变量列表{p_end}
{synopt:{manhelp unabcmd P}} 展开命令名称{p_end}
{synopt:{manhelp varabbrev P}} 控制变量缩写{p_end}
{synopt:{manhelp viewsource P}} 查看源代码{p_end}

{syntab:特殊兴趣编程命令}
{synopt:{manhelp bstat R}} 报告自助法结果{p_end}
{synopt:{manhelp cluster_subroutines MV:cluster programming subroutines}} 添加
聚类分析例程{p_end}
{synopt:{manhelp cluster_programming_utilities MV:cluster programming utilities}} 聚类分析编程工具{p_end}
{synopt:{manhelp fvrevar R}} 因子变量操作编程命令{p_end}
{synopt:{manhelp matrix_dissimilarity P:matrix dissimilarity}} 计算相似度或不相似度度量{p_end}
{synopt:{manhelp mi_select MI:mi select}} 程序员的 mi extract 替代方案{p_end}
{synopt:{manhelp st_is ST}} 生存分析子程序供程序员使用{p_end}
{synopt:{manhelp svymarkout SVY}} 根据调查特征标记观测值以排除{p_end}
{synopt:{manhelp mi_technical MI:technical}} 程序员的详细信息{p_end}
{synopt:{manhelp tsrevar TS}} 时间序列操作编程命令{p_end}

{syntab:文件格式}
{synopt:{manhelp dta P:文件格式 .dta}} .dta 文件格式的描述{p_end}

{syntab:Mata}
{synopt:{manhelp mata M:Mata 参考手册}}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <program.sthlp>}