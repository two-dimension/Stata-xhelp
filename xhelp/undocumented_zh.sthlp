{smcl}
{* *! version 1.10.7  13jun2019}{...}
{vieweralsosee "prdocumented" "help prdocumented_zh"}{...}
{vieweralsosee "updates" "help updates"}{...}
{vieweralsosee "whatsnew" "help whatsnew_zh"}{...}
{viewerjumpto "描述" "undocumented_zh##description"}{...}
{viewerjumpto "未记录命令链接" "undocumented_zh##undocumented"}
{help undocumented:English Version}
{hline}{...}
{title:标题}

{pstd}
{hi:未记录命令}


{marker description}{...}
{title:描述}

{pstd}
一个 {it:未记录命令} 是一个非常有限兴趣的命令，通常只对 Stata 程序员感兴趣，并且由 StataCorp 在开发 Stata 时使用。

{pstd}
未记录命令在系统帮助中有文档，但其文档不会出现在 PDF 手册中。未记录命令有文档这一点显示了 Stata 软件的“开放性”。

{pstd}
未记录命令的语法或行为可能会在 Stata 的后续版本中改变，尽管这种情况很少见，因此使用时需谨慎。

{pstd}
请参见 {help whatsnew_zh} 获取已对 Stata 进行的添加和修复的列表。请查看 {helpb updates}，或者
{update "从 http://www.stata.com":点击这里}，以获取 Stata 的最新添加。请参见 {help prdocumented_zh:先前记录的命令} 获取关于不再是 Stata 官方部分的命令的信息。


{marker undocumented}{...}
{title:未记录命令链接}

{pstd}
以下表格提供了未记录命令的链接。这些链接按它们如果被记录将会属于的手册进行了分组。


{p2colset 5 36 38 2}{...}
{p2col:基础 ([R])}描述{p_end}
{p2line}
{p2col:{manhelp dtaverify R}}验证 .dta 文件构造{p_end}
{p2col:{manhelp dtaversion R}}报告 .dta 文件的格式和版本{p_end}
{p2col:{manhelp margins_generate R:margins, generate()}}在当前数据集中创建边际响应变量{p_end}
{p2col:{manhelp margins_plot R:margins, plot()}}一步完成边际和边际绘图{p_end}
{p2col:{manhelp margins_saving R:margins, saving()}}将边际结果保存到数据集中{p_end}
{p2col:{manhelp marginsplot_using R:marginsplot using}}从数据集中绘制边际结果{p_end}
{p2col:{manhelp mat_capp R}}按名称而非位置操作矩阵{p_end}
{p2col:{manhelp minbound R}}在范围内最小化标量函数{p_end}
{p2col:{manhelp qby R}}{help quietly_zh} 和 {help by_zh} 的组合{p_end}
{p2col:{manhelp set_ctrlh R:set ctrlh}}设置 Unix (控制台) 中命令行编辑的 Ctrl+H 行为{p_end}
{p2col:{manhelp set_insertmode R:set insertmode}}设置 Unix (控制台) 中命令行编辑的行为{p_end}
{p2line}

{p2col:选择模型 ([CM])}描述{p_end}
{p2line}
{p2col:{manhelp _cm CM}}验证数据是 {help cmset_zh}{p_end}
{p2line}

{p2col:数据管理 ([D])}描述{p_end}
{p2line}
{p2col:{manhelp bitowt D}}将二进制频率记录转换为频率加权数据{p_end}
{p2col:{manhelp _frames D}}用于操作数据框的实用工具{p_end}
{p2col:{manhelp import_shp D:import shp}}导入和导出 shapefile{p_end}
{p2col:{manhelp obs_advice D:obs advice}}关于 2+ 十亿观察的建议{p_end}
{p2col:{manhelp _mkcross D}}交叉变量（自动短值标签）{p_end}
{p2col:{manhelp _rename D}}重命名变量{p_end}
{p2col:{manhelp sysdescribe D}}描述已发布的数据集{p_end}
{p2col:{manhelp unicode_advice D:unicode advice}}关于使用 Unicode 的建议{p_end}
{p2col:{manhelp webdescribe D}}通过网络描述数据{p_end}
{p2line}

{p2col:函数 ([FN])}描述{p_end}
{p2line}
{p2col:{manhelp lndirichletden() FN}}Dirichlet 密度的自然对数{p_end}
{p2col:{manhelp lngeometricp() FN}}几何密度的自然对数{p_end}
{p2col:{manhelp lnparetoden() FN}}Pareto 密度的自然对数{p_end}
{p2col:{manhelp rgeometric() FN}}几何随机变量{p_end}
{p2col:{manhelp rpareto() FN}}Pareto 随机变量{p_end}
{p2line}

{p2col:图形 ([G])}描述{p_end}
{p2line}
{p2col:{manhelp _check4gropts G-2}}检查非法 {help graph_zh} 选项{p_end}
{p2col:{manhelp di_g G-2}}在 {help graph_zh} 命令中显示调试消息{p_end}
{p2col:{manhelp _get_gropts G-2}}解析图形选项{p_end}
{p2col:{manhelp gs_fileinfo G-2}}获取 {cmd:.gph} 文件的信息{p_end}
{p2col:{manhelp gs_filetype G-2}}确定 {cmd:.gph} 文件的类型{p_end}
{p2col:{manhelp gs_graphinfo G-2}}获取有关内存图的有用信息{p_end}
{p2col:{manhelp gs_stat G-2}}验证图形的 (不) 存在性{p_end}
{p2col:{manhelp _matplot G-2}}绘制矩阵的散点图{p_end}
{p2col:{manhelp _natscale G-2}}获取美观的标签或刻度值{p_end}
{p2col:{manhelp _tsnatscale G-2}}获得时间序列的美观标签或刻度值{p_end}
{p2col:{manhelp twoway__function_gen G-2}}为 {helpb twoway function} 解析和生成变量{p_end}
{p2col:{manhelp twoway__histogram_gen G-2}}为 {helpb twoway histogram} 生成变量{p_end}
{p2col:{manhelp twoway__kdensity_gen G-2}}为 {helpb twoway kdensity} 解析和生成变量{p_end}
{p2col:{manhelp twoway_mata G-2:twoway mata}}从 {help mata_zh} 矩阵生成 {cmd:twoway} 图形{p_end}
{p2col:{manhelp twoway_sunflower G-2:twoway sunflower}}图形密度分布的向日葵图{p_end}
{p2col:{manhelpi labelstyle G-4}}{it:{help markerlabelstyle_zh}}的正式定义{p_end}
{p2col:{manhelpi sunflowerstyle G-4}}用于 {helpb twoway sunflower} 的扩展 {help pstyle_zh}{p_end}
{p2line}

{p2col:纵向数据/}{p_end}
{p2col 7 34 36 2:面板数据 ([XT])}描述{p_end}
{p2line}
{p2col:{manhelp _xt XT}}验证数据是 {help xtset_zh}{p_end}
{p2col:{manhelp _xtstrbal XT}}验证数据是强平衡的{p_end}
{p2line}

{p2col:Mata ([M])}描述{p_end}
{p2line}
{p2col:{manhelp m2_doppelganger M-2:doppelganger}}库中内置函数的双重{p_end}
{p2col:{manhelp matalabel M-3}}在 {help Mata} 中创建包含值标签的列向量{p_end}
{p2col:{manhelp mf_arfimaacf M-5:arfimaacf()}}自协方差函数{p_end}
{p2col:{manhelp mf_arfimapsdensity M-5:arfimapsdensity()}}参数谱密度函数{p_end}
{p2col:{manhelp mf__factorsym M-5:_factorsym()}}对称非负定矩阵的因子{p_end}
{p2col:{manhelp mf__gauss_hermite_nodes M-5:_gauss_hermite_nodes()}}高斯-厄米特正交{p_end}
{p2col:{manhelp mf___lnmvnormalden M-5:__lnmvnormalden()}}多元样本的对数多元正态密度{p_end}
{p2col:{manhelp mf__lsfitqr M-5:_lsfitqr()}}使用 QR 分解的最小二乘回归{p_end}
{p2col:{manhelp mf_moptimize_init_mlopts M-5:moptimize_init_mlopts()}}{cmd:ml} 选项解析器{p_end}
{p2col:{manhelp mf_panelsum M-5:panelsum()}}面板总和{p_end}
{p2col:{manhelp mf__parse_colon M-5:_parse_colon()}}解析前缀命令{p_end}
{p2col:{manhelp mf_rdirichlet M-5:rdirichlet()}}Dirichlet 随机变量{p_end}
{p2col:{manhelp mf_regex M-5:regexm()}}正则表达式匹配{p_end}
{p2col:{manhelp mf_ustrregex M-5:ustrregexm()}}Unicode 正则表达式匹配{p_end}
{p2col:{manhelp mf_robust M-5:robust()}}鲁棒方差估计{p_end}
{p2col:{manhelp mf_spmatbanded M-5:SPMATbanded()}}带状矩阵运算符{p_end}
{p2col:{manhelp mf_st_fopen M-5:st_fopen()}}以 Stata 方式打开文件{p_end}
{p2col:{manhelp mf_st_freadsignature M-5:st_freadsignature()}}读取/写入标准 Stata 文件签名{p_end}
{p2col:{manhelp mf_st_lchar M-5:st_lchar()}}获取/设置“长”特征{p_end}
{p2col:{manhelp mf_st_matrix__joinbyname M-5:st_matrix__joinbyname()}}在匹配列名的同时连接 Stata 矩阵的行{p_end}
{p2col:{manhelp mf_st_matrix_list M-5:st_matrix_list()}}列出 Stata 矩阵{p_end}
{p2col:{manhelp mf_st_ms_display M-5:st_ms_display()}}系数表输出为字符串{p_end}
{p2col:{manhelp mf_st_ms_unab M-5:st_ms_unab()}}取消矩阵条带元素的缩写{p_end}
{p2colreset}{...}

{p2col:多元}{p_end}
{p2col 7 34 36 2:统计 ([MV])}描述{p_end}
{p2line}
{p2col:{manhelp parse_dissim MV}}解析相似性和差异性度量{p_end}
{p2line}

{p2col:编程 ([P])}描述{p_end}
{p2line}
{p2col:{manhelp anova_terms P}}获取 {help anova_zh} 或 {help manova_zh} 的术语{p_end}
{p2col:{manhelp anovadef P}}获取 {help anova_zh} 或 {help manova_zh} 的术语定义{p_end}
{p2col:{manhelp _assert_mreldif P}}断言两个矩阵相同{p_end}
{p2col:{manhelp _cassert P:_cassert}}验证两个字符串相等{p_end}
{p2col:{manhelp _b_pclass P}}构建 {cmd:e(b_pclass)} 的实用工具{p_end}
{p2col:{manhelp _check_lrmodel P}}检查选项 {cmd:lrmodel} 的实用工具{p_end}
{p2col:{manhelp _check_omit P}}检查共线性行为的实用工具{p_end}
{p2col:{manhelp checkdlgfiles P}}检查对话框文件的链接错误{p_end}
{p2col:{manhelp checkhlpfiles P}}检查帮助文件的链接错误{p_end}
{p2col:{manhelp _cmdxel P}}解析带表达式列表的命令{p_end}
{p2col:{manhelp _coef_table P}}显示估计结果{p_end}
{p2col:{manhelp _coef_table_header P}}系数表的自动头部{p_end}
{p2col:{manhelp _confirm_date P}}确认日期字符串以有效格式给出{p_end}
{p2col:{manhelp copysource P}}将源代码复制到当前目录{p_end}
{p2col:{manhelp _crcar1 P}}从残差计算 AR(1) rho{p_end}
{p2col:{manhelp cscript P}}开始一个认证脚本{p_end}
{p2col:{manhelp cscript_log P}}开始或结束一个认证脚本日志{p_end}
{p2col:{manhelp dialog_undocumented P}}未记录的对话框功能{p_end}
{p2col:{manhelp _diparm P}}显示附加参数{p_end}
{p2col:{manhelp dirstats P}}报告字母子目录中的文件数量{p_end}
{p2col:{manhelp set_dockingguides P:set dockingguides}}为可停靠窗口启用停靠指南（仅限 Windows）{p_end}
{p2col:{manhelp dta_equal P}}断言数据集相等{p_end}
{p2col:{manhelp _eqlist P}}通用类用于管理方程规范{p_end}
{p2col:{manhelp expr_query P}}获取表达式使用的变量{p_end}
{p2col:{manhelp find_hlp_file P}}查找帮助文件{p_end}
{p2col:{manhelp _fv_check_depvar P}}检查因变量列表中的因子变量{p_end}
{p2col:{manhelp _getcovcorr P}}解析相关和协方差矩阵选项{p_end}
{p2col:{manhelp _getfilename P}}处理路径-文件名规范{p_end}
{p2col:{manhelp _get_diopts P}}解析估计命令的标准显示选项{p_end}
{p2col:{manhelp _get_diparmopts P}}处理附加参数的多次变换{p_end}
{p2col:{manhelp _get_eformopts P}}解析 {cmd:eform()} 的多种形式{p_end}
{p2col:{manhelp _get_eqspec P}}从系数向量识别方程元素{p_end}
{p2col:{manhelp _get_offopt P}}获取偏移信息{p_end}
{p2col:{manhelp inten P}}数字基数转换{p_end}
{p2col:{manhelp keyfiles P}}{cmd:.key} 文件的解释，供 {help search_zh} 使用{p_end}
{p2col:{manhelp _labels2names P}}为每个变量级别生成 Stata 名称{p_end}
{p2col:{manhelp lrecomp P}}显示相对错误的对数{p_end}
{p2col:{manhelp _make_constraints P}}从 {cmd:constraints()} 规范中制作约束矩阵{p_end}
{p2col:{manhelp _massert P:_massert}}验证两个矩阵相等{p_end}
{p2col:{manhelp _matrix_table P}}以表格形式显示矩阵{p_end}
{p2col:{manhelp _mgarch_p_names P}}为 {cmd:mgarch} 后估计解析新变量列表{p_end}
{p2col:{manhelp mkassert P}}生成 Stata 对象的 {help assert_zh} {p_end}
{p2col:{manhelp _mkvec P}}处理 {cmd:from()} 选项以便在 {help ml_zh:ml model} 之前使用{p_end}
{p2col:{manhelp ml_hold P:ml hold}}递归调用 {help ml_zh} {p_end}
{p2col:{manhelp mlopts P}}解析 {help ml_zh} 选项{p_end}
{p2col:{manhelp moptobj P}}可召回的 ML 评估器{p_end}
{p2col:{manhelp _ms_at_parse P}}解析 {opt at()} 规范以用于后估计命令{p_end}
{p2col:{manhelp _ms_balance P}}通过平衡因子变量协变量来调整 {cmd:e(b)}{p_end}
{p2col:{manhelp _ms_build_info P}}将额外因子变量信息构建到列条带中{p_end}
{p2col:{manhelp _ms_display P}}显示矩阵条带元素{p_end}
{p2col:{manhelp _ms_dydx_parse P}}解析 {opt dydx()} 的规范以用于后估计命令{p_end}
{p2col:{manhelp _ms_element_info P}}矩阵条带元素信息{p_end}
{p2col:{manhelp _ms_empty_info P}}关于标记为空单元的元素的矩阵条带信息{p_end}
{p2col:{manhelp _ms_eq_display P}}显示矩阵条带方程{p_end}
{p2col:{manhelp _ms_eq_info P}}矩阵条带方程信息{p_end}
{p2col:{manhelp _ms_lf_info P}}矩阵条带线性形式信息{p_end}
{p2col:{manhelp _ms_extract_varlist P}}从 {cmd:e(b)} 匹配变量{p_end}
{p2col:{manhelp _ms_findomitted P}}找到并标记被省略的矩阵元素{p_end}
{p2col:{manhelp _ms_modify P}}修改列条带{p_end}
{p2col:{manhelp _ms_omit_info P}}关于矩阵条带共线性的信息{p_end}
{p2col:{manhelp _ms_op_info P}}矩阵条带操作符信息{p_end}
{p2col:{manhelp _ms_parse_parts P}}解析单个矩阵条带元素{p_end}
{p2col:{manhelp _ms_put_omit P}}将 {cmd:o.} 操作符添加到矩阵条带元素{p_end}
{p2col:{manhelp _ms_split P}}矩阵条带分割工具{p_end}
{p2col:{manhelp _ms_unab P}}取消矩阵条带元素的缩写{p_end}
{p2col:{manhelp _mtest P}}进行多重（同时）测试调整{p_end}
{p2col:{manhelp _nobs P}}计算观察数量{p_end}
{p2col:{manhelp notes_ P}}用于 {help notes_zh} 的命令{p_end}
{p2col:{manhelp _on_colon_parse P}}基于冒号解析{p_end}
{p2col:{manhelp opts_exclusive P}}相互排斥选项的错误消息{p_end}
{p2col:{manhelp _parse P}}解析复杂的语法（例如，{help graph_zh}）{p_end}
{p2col:{manhelp _pb_exp_list P}}通用类用于管理括号束缚的表达式列表{p_end}
{p2col:{manhelp postrtoe P}}将结果从 {cmd:r()} 移到 {cmd:e()} {p_end}
{p2col:{manhelp _pred_se P}}向 {help predict_zh} 添加单方程扩展{p_end}
{p2col:{manhelp _prefix P}}{it:prefix} 命令工具的概述{p_end}
{p2col:{manhelp profiler P}}分析 Stata 程序{p_end}
{p2col:{manhelp projmanager P}}打开 Stata 项目管理器{p_end}
{p2col:{manhelp _qsort_index P}}对单词列表进行排序{p_end}
{p2col:{manhelp rcof P}}验证返回码{p_end}
{p2col:{manhelp _recast P}}更改变量的存储类型{p_end}
{p2col:{manhelp _restore_labels P}}将值标签恢复到变量{p_end}
{p2col:{manhelp _rmcoll2list P}}检查两个变量列表的并集中的共线性{p_end}
{p2col:{manhelp _rmcollright P}}从右方移除共线性变量{p_end}
{p2col:{manhelp _sassert P:_sassert}}验证两个标量相等{p_end}
{p2col:{manhelp _score_spec P}}解析生成得分变量的语法{p_end}
{p2col:{manhelp set_buildfvinfo P:set buildfvinfo}}将额外的因子变量信息构建到参数估计中{p_end}
{p2col:{manhelp sortseed P:set sortseed}}设置用于打破排序中联系的种子{p_end}
{p2col:{manhelp storedresults P}}操作和验证 {cmd:r()} 和 {cmd:e()} 结果{p_end}
{p2col:{manhelp _strip_labels P}}从变量中移除值标签{p_end}
{p2col:{manhelp _stubstar2names P}}解析新变量列表{p_end}
{p2col:{manhelp _tab P}}生成简单表格{p_end}
{p2col:{manhelp _unab P}}取消来自矩阵条带元素的变量列表缩写{p_end}
{p2col:{manhelp varclassify P}}将单个变量分类为分类变量或非分类变量{p_end}
{p2col:{manhelp _vassert P:_vassert}}验证两个变量相等{p_end}
{p2col:{manhelp _vce_parse P}}解析 {cmd:vce()} 选项{p_end}
{p2col:{manhelp _vce_parserun P}}解析选项 {cmd:vce(bootstrap)} 和 {cmd:vce(jackknife)}{p_end}
{p2col:{manhelp version_missing P:version, missing}}将版本设置为使用缺失值的现代处理{p_end}
{p2line}

{p2col:结构方程}{p_end}
{p2col 7 34 36 2:建模 ([SEM])}描述{p_end}
{p2line}
{p2col:{manhelp gsem_fvstandard SEM:gsem fvstandard}}跟踪因子变量的级别{p_end}
{p2col:{manhelp webgetsem SEM}}打开 SEM 示例路径图{p_end}
{p2line}

{p2col:生存 ([ST])}描述{p_end}
{p2line}
{p2col:{manhelp st_forceshared ST:stcox, forceshared}}强制估计共享脆弱性生存模型{p_end}
{p2col:{manhelp st_forceshared ST:streg, forceshared}}强制估计共享脆弱性生存模型{p_end}
{p2line}

{p2col:调查 ([SVY])}描述{p_end}
{p2line}
{p2col:{manhelp brrstat SVY}}报告来自平衡重复抽样的结果{p_end}
{p2col:{manhelp is_svy SVY}}确定最后一次估计是否为 {help svy_zh} 类{p_end}
{p2col:{manhelp jkstat SVY}}报告游刃结果{p_end}
{p2col:{manhelp _svy_mkdeff SVY}}计算调查设计效应{p_end}
{p2col:{manhelp _svy_mkmeff SVY}}计算调查模型规格错误效应{p_end}
{p2col:{manhelp svy_parsing SVY}}检查与 {cmd:svy} 前缀配合使用的社区贡献命令的选项{p_end}
{p2col:{manhelp _svy_setup SVY}}检索 {help svy_zh} 设置并调整权重{p_end}
{p2col:{manhelp svycal SVY}}校准调整的抽样权重{p_end}
{p2col:{manhelp svygen SVY}}生成调整的抽样权重{p_end}
{p2line}

{p2col:时间序列 ([TS])}描述{p_end}
{p2line}
{p2col:{manhelp _sep_varsylags TS}}返回 varlist 的滞后结构{p_end}
{p2col:{manhelp _ts TS}}验证数据是 {help tsset_zh}{p_end}
{p2line}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <undocumented.sthlp>}