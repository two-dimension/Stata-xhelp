{smcl}
{* *! version 2.5.5  29apr2019}{...}
{* 手册中未包含完整列表}{...}
{vieweralsosee "[M-5] 简介" "mansection M-5 Intro"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] 简介" "help m4_intro_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-0] 简介" "help mata_zh"}{...}
{viewerjumpto "A" "m5_intro_zh##A"}{...}
{viewerjumpto "B" "m5_intro_zh##B"}{...}
{viewerjumpto "C" "m5_intro_zh##C"}{...}
{viewerjumpto "D" "m5_intro_zh##D"}{...}
{viewerjumpto "E" "m5_intro_zh##E"}{...}
{viewerjumpto "F" "m5_intro_zh##F"}{...}
{viewerjumpto "G" "m5_intro_zh##G"}{...}
{viewerjumpto "H" "m5_intro_zh##H"}{...}
{viewerjumpto "I" "m5_intro_zh##I"}{...}
{viewerjumpto "J" "m5_intro_zh##J"}{...}
{viewerjumpto "K" "m5_intro_zh##K"}{...}
{viewerjumpto "L" "m5_intro_zh##L"}{...}
{viewerjumpto "M" "m5_intro_zh##M"}{...}
{viewerjumpto "N" "m5_intro_zh##N"}{...}
{viewerjumpto "O" "m5_intro_zh##O"}{...}
{viewerjumpto "P" "m5_intro_zh##P"}{...}
{viewerjumpto "Q" "m5_intro_zh##Q"}{...}
{viewerjumpto "R" "m5_intro_zh##R"}{...}
{viewerjumpto "S" "m5_intro_zh##S"}{...}
{viewerjumpto "T" "m5_intro_zh##T"}{...}
{viewerjumpto "U" "m5_intro_zh##U"}{...}
{viewerjumpto "V" "m5_intro_zh##V"}{...}
{viewerjumpto "W" "m5_intro_zh##W"}{...}
{viewerjumpto "X" "m5_intro_zh##X"}{...}
{viewerjumpto "Y" "m5_intro_zh##Y"}
{help m5_intro:English Version}
{hline}{...}
{p2colset 1 16 18 2}{...}
{p2col:{bf:[M-5] 简介} {hline 2}}Mata 函数的字母索引
{p_end}
{p2col:}({mansection M-5 Intro:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{title:内容}

{pstd}
有关所有 Mata 函数的主题索引可在
{bf:{help m4_intro_zh:[M-4] 简介}} 中找到。所有 Mata 函数在 {it:Mata 参考手册} 中按字母顺序记录。

{pstd}
以下是字母顺序列表：

{col 5}{hline}
{p2colset 5 32 34 2}
{marker A}{...}
{p2col:{bf:{help mf_abbrev_zh:abbrev()}}}字符串缩写{p_end}
{p2col:{bf:{help mf_abs_zh:abs()}}}绝对值（若为复数则为长度）{p_end}
{p2col:{bf:{help mf_sin_zh:acos()}}}反余弦{p_end}
{p2col:{bf:{help mf_sin_zh:acosh()}}}反双曲余弦{p_end}
{p2col 4 32 34 2:*{bf:{help mf_st_lchar_zh:ado_fromlchar()}}}将长特征存储到本地宏中{p_end}
{p2col 4 32 34 2:*{bf:{help mf_st_lchar_zh:ado_intolchar()}}}将本地宏的内容存储到长特征中{p_end}
{p2col:{bf:{help mf_adosubdir_zh:adosubdir()}}}用于文件的 ado 子目录{p_end}
{p2col:{bf:{help mf_all_zh:all()}}}{cmd:sum(!}{it:L}{cmd:)==0} 用于快速逐元素比较{p_end}
{p2col:{bf:{help mf_all_zh:allof()}}}{cmd:all(}{it:P}{cmd::==}{it:s}{cmd:)} 用于快速逐元素比较{p_end}
{p2col:{bf:{help mf_all_zh:any()}}}{cmd:sum(}{it:L}{cmd:)!=0} 用于快速逐元素比较{p_end}
{p2col:{bf:{help mf_all_zh:anyof()}}}{cmd:any(}{it:P}{cmd::==}{it:s}{cmd:)} 用于快速逐元素比较{p_end}
{p2col 4 32 34 2:*{bf:{help mf_arfimaacf_zh:arfimaacf()}}}ARFIMA 或 ARMA 过程的自协方差函数{p_end}
{p2col 4 32 34 2:*{bf:{help mf_arfimapsdensity_zh:arfimapsdensity()}}}ARFIMA 或 ARMA 过程的参数谱密度{p_end}
{p2col:{bf:{help mf_sin_zh:arg()}}}{cmd:atan2(Re(), Im())}{p_end}
{p2col:{bf:{help mf_args_zh:args()}}}传递给函数的参数数量{p_end}
{p2col:{bf:{help mf_asarray_zh:asarray()}}}存储或检索数组中的元素{p_end}
{p2col:{bf:{help mf_asarray_zh:asarray_*()}}}实用程序例程{p_end}
{p2col:{bf:{help mf_ascii_zh:ascii()}}}字符串中字符的 ASCII 和扩展 ASCII 代码的行向量{p_end}
{p2col:{bf:{help mf_associativearray_zh:AssociativeArray()}}}基于类的接口用于访问 {help mf_asarray_zh:asarray()} 提供的关联数组{p_end}
{p2col:{bf:{help mf_sin_zh:asin()}}}反正弦{p_end}
{p2col:{bf:{help mf_sin_zh:asinh()}}}反双曲正弦{p_end}
{p2col:{bf:{help mf_assert_zh:assert()}}}如果不为真则中止执行{p_end}
{p2col:{bf:{help mf_assert_zh:asserteq()}}}如果不相等则中止执行{p_end}
{p2col:{bf:{help mf_sin_zh:atan()}}}反正切{p_end}
{p2col:{bf:{help mf_sin_zh:atan2()}}}双参数反正切{p_end}
{p2col:{bf:{help mf_sin_zh:atanh()}}}反双曲正切{p_end}

{col 5}{hline}

{marker B}{...}
{p2col:{bf:{help mf_normal_zh:betaden()}}}Beta 密度{p_end}
{p2col:{bf:{help mf_normal_zh:binomial()}}}累积二项分布（k或更少成功）{p_end}
{p2col:{bf:{help mf_normal_zh:binomialp()}}}二项概率质量函数{p_end}
{p2col:{bf:{help mf_normal_zh:binomialtail()}}}反累积二项分布（k或更多成功）{p_end}
{p2col:{bf:{help mf_normal_zh:binormal()}}}累积双变量正态分布{p_end}
{p2col:{bf:{help mf_blockdiag_zh:blockdiag()}}}根据参数 {...} 生成块对角矩阵{p_end}
{p2col:{bf:{help mf_date_zh:bofd()}}}将 {cmd:%td} 日期时间转换为 {cmd:%tb} 工作日日期{p_end}
{p2col:{bf:{help mf_setbreakintr_zh:breakkey()}}}是否按下了中断键{p_end}
{p2col:{bf:{help mf_setbreakintr_zh:breakkeyreset()}}}重置中断键{p_end}
{p2col:{bf:{help mf_bufio_zh:bufbfmtisnum()}}}缓冲区中，二进制格式是否为数字{p_end}
{p2col:{bf:{help mf_bufio_zh:bufbfmtlen()}}}缓冲区中，二进制格式的长度{p_end}
{p2col:{bf:{help mf_bufio_zh:bufbyteorder()}}}更改缓冲区中，二进制 I/O 的字节顺序{p_end}
{p2col:{bf:{help mf_bufio_zh:bufget()}}}在缓冲区中复制{p_end}
{p2col:{bf:{help mf_bufio_zh:bufio()}}}在缓冲区中初始化{p_end}
{p2col:{bf:{help mf_bufio_zh:bufmissingvalue()}}}在缓冲区中更改缺失值编码{p_end}
{p2col:{bf:{help mf_bufio_zh:bufput()}}}在缓冲区中复制{p_end}
{p2col:{bf:{help mf_byteorder_zh:byteorder()}}}计算机使用的字节顺序{p_end}

{col 5}{hline}

{marker C}{...}
{p2col:{bf:{help mf_c_zh:C()}}}参数的复数值{p_end}
{p2col:{bf:{help mf_c_lc_zh:c()}}}c 类值{p_end}
{p2col:{bf:{help mf_callersversion_zh:callersversion()}}}调用方设置的版本{p_end}
{p2col:{bf:{help mf_cat_zh:cat()}}}包含 ASCII 文件行的字符串列向量{p_end}
{p2col:{bf:{help mf_normal_zh:cauchy()}}}累积 Cauchy 分布{p_end}
{p2col:{bf:{help mf_normal_zh:cauchyden()}}}Cauchy 密度{p_end}
{p2col:{bf:{help mf_normal_zh:cauchytail()}}}1 减去累积 Cauchy 分布{p_end}
{p2col:{bf:{help mf_date_zh:Cdhms()}}}{cmd:%tC} 从 {cmd:%td} 值、小时、分钟、秒获取的值{p_end}
{p2col:{bf:{help mf_trunc_zh:ceil()}}}向上舍入到整数{p_end}
{p2col:{bf:{help mf_ascii_zh:char()}}}从行向量 ASCII 代码中生成字符串{p_end}
{p2col:{bf:{help mf_chdir_zh:chdir()}}}更改当前工作目录{p_end}
{p2col:{bf:{help mf_normal_zh:chi2()}}}累积卡方分布{p_end}
{p2col:{bf:{help mf_normal_zh:chi2den()}}}卡方密度{p_end}
{p2col:{bf:{help mf_normal_zh:chi2tail()}}}1 减去累积卡方分布{p_end}
{p2col:{bf:{help mf_date_zh:Chms()}}}{cmd:%tC} 从小时、分钟、秒获取的值{p_end}
{p2col:{bf:{help mf_cholesky_zh:cholesky()}}}Cholesky 平方根分解 {it:A}={it:GG}{bf:'}{p_end}
{p2col:{bf:{help mf_cholinv_zh:cholinv()}}}对称（厄米）正定矩阵的逆 {p_end}
{p2col:{bf:{help mf_cholsolve_zh:cholsolve()}}}线性系统的解，具有对称（厄米）正定的系数矩阵{p_end}
{p2col:{bf:{help mf_eltype_zh:classname()}}}Mata 类标量的类名{p_end}
{p2col:{bf:{help mf_date_zh:Clock()}}}{cmd:%tC} 从字符串获取的值{p_end}
{p2col:{bf:{help mf_date_zh:clock()}}}{cmd:%tc} 从字符串获取的值{p_end}
{p2col:{bf:{help mf_logit_zh:cloglog()}}}互补对数对数{p_end}
{p2col:{bf:{help mf_date_zh:Cmdyhms()}}}{cmd:%tC} 从月份、天、年份、小时、分钟、和秒中获得的值{p_end}
{p2col:{bf:{help mf_date_zh:Cofc()}}}{cmd:%tC} 从 {cmd:%tc} 值获取的值{p_end}
{p2col:{bf:{help mf_date_zh:cofC()}}}{cmd:%tc} 从 {cmd:%tC} 值获取的值{p_end}
{p2col:{bf:{help mf_date_zh:Cofd()}}}{cmd:%tC} 从 {cmd:%td} 值获取的值{p_end}
{p2col:{bf:{help mf_date_zh:cofd()}}}{cmd:%tc} 从 {cmd:%td} 值获取的值{p_end}
{p2col:{bf:{help mf_sort_zh:_collate()}}}根据置换向量对矩阵进行排序{p_end}
{p2col:{bf:{help mf_minmax_zh:colmax()}}}列最大值的行向量 {p_end}
{p2col:{bf:{help mf_minmax_zh:colmaxabs()}}}{cmd:colmax(abs())}{p_end}
{p2col:{bf:{help mf_minmax_zh:colmin()}}}列最小值的行向量{p_end}
{p2col:{bf:{help mf_minmax_zh:colminmax()}}}列最小和最大值的矩阵{p_end}
{p2col:{bf:{help mf_missing_zh:colmissing()}}}列缺失值计数的行向量{p_end}
{p2col:{bf:{help mf_missing_zh:colnonmissing()}}}列非缺失值计数的行向量{p_end}
{p2col:{bf:{help mf_rows_zh:cols()}}}列数{p_end}
{p2col:{bf:{help mf__equilrc_zh:colscalefactors()}}}用于平衡的列缩放因子的行向量{p_end}
{p2col:{bf:{help mf_rowshape_zh:colshape()}}}将矩阵重塑为指定列数{p_end}
{p2col:{bf:{help mf_sum_zh:colsum()}}}列和的行向量{p_end}
{p2col:{bf:{help mf_comb_zh:comb()}}}组合函数 {it:n} 选择 {it:k}{p_end}
{p2col:{bf:{help mf_cond_zh:cond()}}}矩阵条件数 {...}{p_end}
{p2col:{bf:{help mf_conj_zh:conj()}}}复共轭{p_end}
{p2col:{bf:{help mf_conj_zh:_conj()}}}用 {cmd:conj(}{it:A}{cmd:)} 替换 {it:A}{p_end}
{p2col:{bf:{help mf_fft_zh:convolve()}}}信号和响应函数的卷积{p_end}
{p2col:{bf:{help mf_fft_zh:Corr()}}}信号处理中的相关性{p_end}
{p2col:{bf:{help mf_corr_zh:corr()}}}从方差矩阵生成相关矩阵{p_end}
{p2col:{bf:{help mf_mean_zh:correlation()}}}从数据矩阵生成相关矩阵{p_end}
{p2col:{bf:{help mf_sin_zh:cos()}}}余弦{p_end}
{p2col:{bf:{help mf_sin_zh:cosh()}}}双曲余弦{p_end}
{p2col:{bf:{help mf_findexternal_zh:crexternal()}}}创建外部全局{p_end}
{p2col:{bf:{help mf_cross_zh:cross()}}}{it:X}'{it:X}, {it:X}'{it:Z}, 等等{p_end}
{p2col:{bf:{help mf_crossdev_zh:crossdev()}}}({it:X}:-{it:x})'({it:X}:-{it:x}), ({it:X}:-{it:x})'({it:Z}:-{it:z}), 等等{p_end}
{p2col:{bf:{help mf_cvpermute_zh:cvpermute()}}}列向量的排列{p_end}
{p2col:{bf:{help mf_cvpermute_zh:cvpermutesetup()}}}执行设置以计算列向量的排列{p_end}

{col 5}{hline}

{marker D}{...}
{p2col:{bf:{help mf_date_zh:date()}}}{cmd:%td} 从字符串获取的值{p_end}
{p2col:{bf:{help mf_date_zh:day()}}}从 {cmd:%td} 值中获取的月份中的日{p_end}
{p2col:{bf:{help mf_fft_zh:deconvolve()}}}解卷积模糊信号{p_end}
{p2col:{bf:{help mf_deriv_zh:deriv()}}}数值导数{p_end}
{p2col:{bf:{help mf_deriv_zh:_deriv()}}}计算导数{p_end}
{p2col:{bf:{help mf_deriv_zh:deriv_init()}}}开始导数计算{p_end}
{p2col:{bf:{help mf_deriv_zh:deriv_init_*()}}}设置详细信息{p_end}
{p2col:{bf:{help mf_deriv_zh:deriv_query()}}}报告导数{p_end}
{p2col:{bf:{help mf_deriv_zh:deriv_result_*()}}}访问结果{p_end}
{p2col:{bf:{help mf_designmatrix_zh:designmatrix()}}}从零和一的行列向量生成设计矩阵{p_end}
{p2col:{bf:{help mf_det_zh:det()}}}矩阵的行列式{p_end}
{p2col:{bf:{help mf_det_zh:dettriangular()}}}三角矩阵的行列式{p_end}
{p2col:{bf:{help mf_normal_zh:dgammapda()}}}累积伽马分布的导数，{cmd:gammap(}{it:a},{it:x}{cmd:)},
	关于 {it:a}{p_end}
{p2col:{bf:{help mf_normal_zh:dgammapdada()}}}累积伽马分布的第二导数， 
	{cmd:gammap(}{it:a},{it:x}{cmd:)}, 关于 {it:a}{p_end}
{p2col:{bf:{help mf_normal_zh:dgammapdadx()}}}累积伽马分布的第二导数， 
	{cmd:gammap(}{it:a},{it:x}{cmd:)}, 关于 {it:a} 和 {it:x}{p_end}
{p2col:{bf:{help mf_normal_zh:dgammapdx()}}}累积伽马分布的导数， {cmd:gammap(}{it:a},{it:x}{cmd:)},
	关于 {it:x}{p_end}
{p2col:{bf:{help mf_normal_zh:dgammapdxdx()}}}累积伽马分布的第二导数， 
	{cmd:gammap(}{it:a},{it:x}{cmd:)}, 关于 {it:x}{p_end}
{p2col:{bf:{help mf_date_zh:dhms()}}}{cmd:%tc} 从 {cmd:%td} 值、小时、分钟、秒获取的值{p_end}
{p2col:{bf:{help mf_diag_zh:diag()}}}创建对角矩阵{p_end}
{p2col:{bf:{help mf__diag_zh:_diag()}}}替换矩阵的对角线{p_end}
{p2col:{bf:{help mf_diag0cnt_zh:diag0cnt()}}}主对角线上的零计数{p_end}
{p2col:{bf:{help mf_diagonal_zh:diagonal()}}}包含矩阵对角线的列向量{p_end}
{p2col:{bf:{help mf_factorial_zh:digamma()}}}导数 {cmd:lngamma()}{p_end}
{p2col:{bf:{help mf_dir_zh:dir()}}}字符串列向量，包含与模式匹配的目录中的文件{p_end}
{p2col:{bf:{help mf_direxists_zh:direxists()}}}目录是否存在{p_end}
{p2col:{bf:{help mf_direxternal_zh:direxternal()}}}包含与模式匹配的外部全局名称的列向量{p_end}
{p2col:{bf:{help mf_display_zh:display()}}}显示带有 SMCL 的文本 {p_end}
{p2col:{bf:{help mf_displayas_zh:displayas()}}}设置输出显示的方式{p_end}
{p2col:{bf:{help mf_displayflush_zh:displayflush()}}}刷新终端输出缓冲区{p_end}
{p2col:{bf:{help mf_dmatrix_zh:Dmatrix()}}}重复矩阵{p_end}
{p2col:{bf:{help mf__docx_zh:_docx*()}}}生成 Office Open XML 文件{p_end}
{p2col:{bf:{help mf_date_zh:dofb()}}}将 {cmd:%tb} 工作日日期转换为 {cmd:%td} 日期时间{p_end}
{p2col:{bf:{help mf_date_zh:dofc()}}}{cmd:%td} 从 {cmd:%tc} 值获取的值{p_end}
{p2col:{bf:{help mf_date_zh:dofC()}}}{cmd:%td} 从 {cmd:%tC} 值获取的值{p_end}
{p2col:{bf:{help mf_date_zh:dofh()}}}{cmd:%td} 从 {cmd:%th} 值获取的值{p_end}
{p2col:{bf:{help mf_date_zh:dofm()}}}{cmd:%td} 从 {cmd:%tm} 值获取的值{p_end}
{p2col:{bf:{help mf_date_zh:dofq()}}}{cmd:%td} 从 {cmd:%tq} 值获取的值{p_end}
{p2col:{bf:{help mf_date_zh:dofw()}}}{cmd:%td} 从 {cmd:%tw} 值获取的值{p_end}
{p2col:{bf:{help mf_date_zh:dofy()}}}{cmd:%td} 从 {cmd:%ty} 值获取的值{p_end}
{p2col:{bf:{help mf_date_zh:dow()}}}从 {cmd:%td} 值中获取的星期几{p_end}
{p2col:{bf:{help mf_date_zh:doy()}}}从 {cmd:%td} 值获取的年度中的天数{p_end}
{p2col:{bf:{help mf_dsign_zh:dsign()}}}FORTRAN 风格的 DSIGN 函数{p_end}
{p2col:{bf:{help mf_normal_zh:dunnettprob()}}}Dunnett 多重范围分布{p_end}

{col 5}{hline}

{marker E}{...}
{p2col:{bf:{help mf_e_zh:e()}}}单位向量 {...}{p_end}
{p2col:{bf:{help mf_editmissing_zh:editmissing()}}}替换矩阵中的缺失值{p_end}
{p2col:{bf:{help mf_edittoint_zh:edittoint()}}}近似整数的矩阵四舍五入为整数{p_end}
{p2col:{bf:{help mf_edittoint_zh:edittointtol()}}}近似整数的矩阵四舍五入为整数，使用绝对公差{p_end}
{p2col:{bf:{help mf_edittozero_zh:edittozero()}}}近似零的矩阵四舍五入为零{p_end}
{p2col:{bf:{help mf_edittozero_zh:edittozerotol()}}}近似零的矩阵四舍五入为零，使用绝对公差{p_end}
{p2col:{bf:{help mf_editvalue_zh:editvalue()}}}将 {it:from} 值替换为 {it:to} 值的矩阵{p_end}
{p2col:{bf:{help mf_eigensystem_zh:eigensystem()}}}特征向量和特征值{p_end}
{p2col:{bf:{help mf_eigensystemselect_zh:_eigensystemselect_la()}}}与 {manhelp mf_lapack M-5:lapack()} 接口；不推荐直接使用{p_end}
{p2col:{bf:{help mf_eigensystemselect_zh:eigensystemselectf()}}}通过社区贡献的函数选择的右特征向量和特征值{p_end}
{p2col:{bf:{help mf_eigensystemselect_zh:_eigensystemselectf_la()}}}与 {manhelp mf_lapack M-5:lapack()} 接口；不推荐直接使用{p_end}
{p2col:{bf:{help mf_eigensystemselect_zh:eigensystemselecti()}}}通过索引选择的右特征向量和特征值{p_end}
{p2col:{bf:{help mf_eigensystemselect_zh:_eigensystemselecti_la()}}}与 {manhelp mf_lapack M-5:lapack()} 接口；不推荐直接使用{p_end}
{p2col:{bf:{help mf_eigensystemselect_zh:eigensystemselectr()}}}通过范围选择的右特征向量和特征值{p_end}
{p2col:{bf:{help mf_eigensystemselect_zh:_eigensystemselectr_la()}}}与 {manhelp mf_lapack M-5:lapack()} 接口；不推荐直接使用{p_end}
{p2col:{bf:{help mf_eigensystem_zh:eigenvalues()}}}特征值{p_end}
{p2col:{bf:{help mf_eltype_zh:eltype()}}}对象的元素类型{p_end}
{p2col:{bf:{help mf_epsilon_zh:epsilon()}}}单位舍入误差{p_end}
{p2col:{bf:{help mf__equilrc_zh:_equilc()}}}执行列平衡{p_end}
{p2col:{bf:{help mf__equilrc_zh:_equilr()}}}执行行平衡{p_end}
{p2col:{bf:{help mf__equilrc_zh:_equilrc()}}}执行行和列平衡{p_end}
{p2col:{bf:{help mf_error_zh:error()}}}发布标准 Stata 错误消息{p_end}
{p2col:{bf:{help mf_error_zh:_error()}}}发布带有追踪日志的错误消息{p_end}
{p2col:{bf:{help mf_errprintf_zh:errprintf()}}}显示错误消息{p_end}
{p2col:{bf:{help mf_exit_zh:exit()}}}终止执行{p_end}
{p2col:{bf:{help mf_exp_zh:exp()}}}逐元素幂运算{p_end}
{p2col:{bf:{help mf_expm1:expm1()}}}逐元素幂运算减去 1{p_end}
{p2col:{bf:{help mf_normal_zh:exponential()}}}累积指数{p_end}
{p2col:{bf:{help mf_normal_zh:exponentialden()}}}指数密度{p_end}
{p2col:{bf:{help mf_normal_zh:exponentialtail()}}}反累积指数{p_end}

{col 5}{hline}

{marker F}{...}
{p2col:{bf:{help mf_normal_zh:F()}}}累积 F 分布{p_end}
{p2col:{bf:{help mf_factorial_zh:factorial()}}}逐元素阶乘{p_end}
{p2col 4 32 34 2:*{bf:{help mf__factorsym_zh:_factorsym()}}}对称非负定矩阵分解{p_end}
{p2col:{bf:{help mf_favorspeed_zh:favorspeed()}}}是否应优先考虑速度或空间{p_end}
{p2col:{bf:{help mf_bufio_zh:fbufget()}}}在缓冲的二进制 I/O 中从缓冲区读取和复制{p_end}
{p2col:{bf:{help mf_bufio_zh:fbufput()}}}在缓冲的二进制 I/O 中复制到缓冲区并写入{p_end}
{p2col:{bf:{help mf_fopen_zh:fclose()}}}关闭文件{p_end}
{p2col:{bf:{help mf_normal_zh:Fden()}}} F 密度{p_end}
{p2col:{bf:{help mf_ferrortext_zh:ferrortext()}}}文件错误代码的错误文本{p_end}
{p2col:{bf:{help mf_fft_zh:fft()}}}快速傅里叶变换{p_end}
{p2col:{bf:{help mf_fopen_zh:fget()}}}包含 ASCII 文件行的实标量{p_end}
{p2col:{bf:{help mf_fopen_zh:fgetmatrix()}}}读取矩阵{p_end}
{p2col:{bf:{help mf_fopen_zh:fgetnl()}}}与 {cmd:fget()} 相同，但包括换行符{p_end}
{p2col:{bf:{help mf_fileexists_zh:fileexists()}}}文件是否存在{p_end}
{p2col:{bf:{help mf__fillmissing_zh:_fillmissing()}}}将矩阵更改为包含缺失值{p_end}
{p2col:{bf:{help mf_findexternal_zh:findexternal()}}}查找外部全局{p_end}
{p2col:{bf:{help mf_findfile_zh:findfile()}}}字符串标量，包含所寻文件的路径和文件名{p_end}
{p2col:{bf:{help mf_floatround_zh:floatround()}}}矩阵四舍五入到浮点精度{p_end}
{p2col:{bf:{help mf_trunc_zh:floor()}}}矩阵向下舍入到整数{p_end}
{p2col:{bf:{help mf_lapack_zh:_flopin()}}}将矩阵顺序从行主变换为列主{p_end}
{p2col:{bf:{help mf_lapack_zh:_flopout()}}}将矩阵顺序从列主变换为行主{p_end}
{p2col:{bf:{help mf_fmtwidth_zh:fmtwidth()}}} {cmd:%}{it:fmt} 的宽度{p_end}
{p2col:{bf:{help mf_fopen_zh:fopen()}}}打开文件{p_end}
{p2col:{bf:{help mf_fopen_zh:fput()}}}将行写入 ASCII 文件{p_end}
{p2col:{bf:{help mf_fopen_zh:fputmatrix()}}}写入矩阵{p_end}
{p2col:{bf:{help mf_fopen_zh:fread()}}}读取 {it:k} 字节的二进制文件{p_end}
{p2col:{bf:{help mf_ferrortext_zh:freturncode()}}}文件错误代码的返回代码{p_end}
{p2col:{bf:{help mf_inbase_zh:frombase()}}}从一个指定基础转换的实矩阵{p_end}
{p2col:{bf:{help mf_fopen_zh:fseek()}}}在文件中查找位置{p_end}
{p2col:{bf:{help mf_fopen_zh:fstatus()}}}最后一个 I/O 命令的状态{p_end}
{p2col:{bf:{help mf_normal_zh:Ftail()}}}1 减去累积 F 分布{p_end}
{p2col:{bf:{help mf_fopen_zh:ftell()}}}报告文件中的位置{p_end}
{p2col:{bf:{help mf_fft_zh:ftfreqs()}}}与变换元素相关的傅里叶频率{p_end}
{p2col:{bf:{help mf_fft_zh:ftpad()}}}将向量填充到 2 的幂长度以进行快速傅里叶变换{p_end}
{p2col:{bf:{help mf_fft_zh:ftperiodogram()}}}包含快速傅里叶变换的单边周期图的实向量{p_end}
{p2col:{bf:{help mf_fft_zh:ftretime()}}}包含与卷积匹配的信号重新定时的数值向量{p_end}
{p2col:{bf:{help mf_fopen_zh:ftruncate()}}}在当前位置截断文件{p_end}
{p2col:{bf:{help mf_fft_zh:ftunwrap()}}}从频率包裹顺序转换{p_end}
{p2col:{bf:{help mf_fft_zh:ftwrap()}}}包含傅里叶变换频率包裹顺序的数值向量{p_end}
{p2col:{bf:{help mf_fullsvd_zh:fullsdiag()}}}从特征值列向量生成的对角矩阵{p_end}
{p2col:{bf:{help mf_fullsvd_zh:fullsvd()}}}执行奇异值分解 {it:A} = {it:USV}{bf:'}{p_end}
{p2col:{bf:{help mf_fopen_zh:fwrite()}}}将 {it:k} 字节写入文件{p_end}

{col 5}{hline}

{marker G}{...}
{p2col:{bf:{help mf_factorial_zh:gamma()}}}伽马函数{p_end}
{p2col:{bf:{help mf_normal_zh:gammaden()}}}伽马密度{p_end}
{p2col:{bf:{help mf_normal_zh:gammap()}}}累积伽马分布；也称为不完全伽马函数{p_end}
{p2col:{bf:{help mf_normal_zh:gammaptail()}}}1 减去累积伽马分布{p_end}
{p2col 4 32 34 2:*{bf:{help mf__gauss_hermite_nodes_zh:_gauss_hermite_nodes()}}}高斯-赫尔米特求积{p_end}
{p2col:{bf:{help mf_geigensystem_zh:_geigen_la()}}}与 {manhelp mf_lapack M-5:lapack()} 接口；不推荐直接使用{p_end}
{p2col:{bf:{help mf_geigensystem_zh:_geigenselectf_la()}}}与 {manhelp mf_lapack M-5:lapack()} 接口；不推荐直接使用{p_end}
{p2col:{bf:{help mf_geigensystem_zh:_geigenselecti_la()}}}与 {manhelp mf_lapack M-5:lapack()} 接口；不推荐直接使用{p_end}
{p2col:{bf:{help mf_geigensystem_zh:_geigenselectr_la()}}}与 {manhelp mf_lapack M-5:lapack()} 接口；不推荐直接使用{p_end}
{p2col:{bf:{help mf_geigensystem_zh:geigensystem()}}}广义特征向量和特征值{p_end}
{p2col:{bf:{help mf_geigensystem_zh:_geigensystem_la()}}}与 {manhelp mf_lapack M-5:lapack()} 接口；不推荐直接使用{p_end}
{p2col:{bf:{help mf_geigensystem_zh:geigensystemselectf()}}}通过社区贡献的函数选择的右广义特征向量和特征值{p_end}
{p2col:{bf:{help mf_geigensystem_zh:geigensystemselecti()}}}通过索引选择的右广义特征向量和特征值{p_end}
{p2col:{bf:{help mf_geigensystem_zh:geigensystemselectr()}}}通过范围选择的右广义特征向量和特征值{p_end}
{p2col:{bf:{help mf_halton_zh:ghalton()}}}包含广义 - Halton 序列的实矩阵{p_end}
{p2col:{bf:{help mf_ghessenbergd_zh:ghessenbergd()}}}广义 Hessenberg 分解{p_end}
{p2col:{bf:{help mf_ghk_zh:ghk()}}}通过 GHK 模拟器获得的多元正态概率{p_end}
{p2col:{bf:{help mf_ghk_zh:ghk_init()}}}初始化 GHK 模拟器{p_end}
{p2col:{bf:{help mf_ghk_zh:ghk_init_*()}}}设置 GHK 模拟器的初始化详细信息{p_end}
{p2col:{bf:{help mf_ghk_zh:ghk_query_npts()}}}返回模拟点的数量{p_end}
{p2col:{bf:{help mf_ghkfast_zh:ghkfast()}}}更快，但难度较高的 {cmd:ghk()} 版本{p_end}
{p2col:{bf:{help mf_ghkfast_zh:ghkfast_init()}}}初始化快速 GHK 模拟器{p_end}
{p2col:{bf:{help mf_ghkfast_zh:ghkfast_init_*()}}}设置快速 GHK 模拟器的初始化详细信息{p_end}
{p2col:{bf:{help mf_ghk_zh:ghkfast_i()}}}第 i 个观测值的概率和导数{p_end}
{p2col:{bf:{help mf_ghk_zh:ghkfast_query_*()}}}返回快速 GHK 模拟器设置{p_end}
{p2col:{bf:{help mf_gschurd_zh:gschurd()}}}广义 Schur 分解和广义特征值{p_end}
{p2col:{bf:{help mf_gschurd_zh:_gschurd()}}}广义 Schur 分解{p_end}
{p2col:{bf:{help mf_gschurd_zh:gschurdgroupby()}}}计算广义 Schur 分解和广义特征值，并根据指定条件分组结果{p_end}
{p2col:{bf:{help mf_gschurd_zh:_gschurdgroupby()}}}计算广义 Schur 分解并根据指定条件分组结果{p_end}

{col 5}{hline}

{marker H}{...}
{p2col:{bf:{help mf_date_zh:halfyear()}}}从 {cmd:%td} 值中获取的半年{p_end}
{p2col:{bf:{help mf_date_zh:halfyearly()}}}{cmd:%th} 从字符串获取的值{p_end}
{p2col:{bf:{help mf_halton_zh:halton()}}}包含 Halton 或 Hammersley 集的列向量{p_end}
{p2col:{bf:{help mf_hash1_zh:hash1()}}}Jenkins 的单次哈希{p_end}
{p2col:{bf:{help mf_missing_zh:hasmissing()}}}矩阵是否具有缺失值{p_end}
{p2col:{bf:{help mf_hessenbergd_zh:hessenbergd()}}}Hessenberg 分解{p_end}
{p2col:{bf:{help mf_date_zh:hh()}}}从 {cmd:%tc} 值中获取的小时{p_end}
{p2col:{bf:{help mf_date_zh:hhC()}}}从 {cmd:%tC} 值中获取的小时{p_end}
{p2col:{bf:{help mf_hilbert_zh:Hilbert()}}}Hilbert 矩阵{p_end}
{p2col:{bf:{help mf_date_zh:hms()}}}{cmd:%tc} 从小时、分钟、秒获取的值{p_end}
{p2col:{bf:{help mf_date_zh:hofd()}}}{cmd:%th} 从 {cmd:%td} 值中获取的值{p_end}
{p2col:{bf:{help mf_date_zh:hours()}}}从毫秒中获取的小时数{p_end}
{p2col:{bf:{help mf_qrd_zh:hqrd()}}}执行 QR 分解；存储 {it:H}、{it:tau} 和 {it:R1}{p_end}
{p2col:{bf:{help mf_qrd_zh:hqrdmultq()}}}{it:QX} 或 {it:Q}{bf:'}{it:X} 使用来自 QR 分解的 {it:H} 和 {it:tau}{p_end}
{p2col:{bf:{help mf_qrd_zh:hqrdmultq1t()}}}{it:Q1}{bf:'}{it:X} 使用来自 QR 分解的 {it:H} 和 {it:tau}{p_end}
{p2col:{bf:{help mf_qrd_zh:hqrdp()}}}执行带有选择的 QR 分解；存储 {it:H}、{it:tau} 和 {it:R1}{p_end}
{p2col:{bf:{help mf_qrd_zh:hqrdq()}}}{it:Q} 使用来自 QR 分解的 {it:H} 和 {it:tau}{p_end}
{p2col:{bf:{help mf_qrd_zh:hqrdq1()}}}{it:Q1} 使用来自 QR 分解的 {it:H} 和 {it:tau}{p_end}
{p2col:{bf:{help mf_qrd_zh:hqrdr()}}}{it:R} 使用来自 QR 分解的 {it:H}{p_end}
{p2col:{bf:{help mf_qrd_zh:hqrdr1()}}}{it:R1} 使用来自 QR 分解的 {it:H}{p_end}
{p2col:{bf:{help mf_normal_zh:hypergeometric()}}}超几何分布函数（累积）{p_end}
{p2col:{bf:{help mf_normal_zh:hypergeometricp()}}}超几何概率质量函数{p_end}

{col 5}{hline}

{marker I}{...}
{p2col:{bf:{help mf_i_zh:I()}}}常数矩阵 {...}{p_end}
{p2col:{bf:{help mf_normal_zh:ibeta()}}}累积 beta 分布；也称为不完全 beta 函数{p_end}
{p2col:{bf:{help mf_normal_zh:ibetatail()}}}1 减去累积 beta 分布{p_end}
{p2col:{bf:{help mf_normal_zh:igaussian()}}}反高斯分布的累积{p_end}
{p2col:{bf:{help mf_normal_zh:igaussianden()}}}反高斯分布的密度{p_end}
{p2col:{bf:{help mf_normal_zh:igaussiantail()}}}反高斯分布的累积分布函数的上尾{p_end}
{p2col:{bf:{help mf_re_zh:Im()}}}虚部{p_end}
{p2col:{bf:{help mf_inbase_zh:inbase()}}}字符串矩阵，包含将实矩阵转换为指定基的内容{p_end}
{p2col:{bf:{help mf_indexnot_zh:indexnot()}}}实矩阵，包含字符串1 中第一个字符不在字符串2 中的位置{p_end}
{p2col:{bf:{help mf_normal_zh:invbinomial()}}}反累积二项分布{p_end}
{p2col:{bf:{help mf_normal_zh:invbinomialtail()}}}反累积反二项分布 {p_end}
{p2col:{bf:{help mf_normal_zh:invcauchy()}}}反累积 Cauchy{p_end}
{p2col:{bf:{help mf_normal_zh:invcauchytail()}}}反累积 Cauchy 的上尾{p_end}
{p2col:{bf:{help mf_normal_zh:invchi2()}}}反累积卡方{p_end}
{p2col:{bf:{help mf_normal_zh:invchi2tail()}}}反累积卡方的上尾{p_end}
{p2col:{bf:{help mf_logit_zh:invcloglog()}}}反互补对数对数{p_end}
{p2col:{bf:{help mf_normal_zh:invdunnettprob()}}}反 Dunnett 多重范围分布{p_end}
{p2col:{bf:{help mf_normal_zh:invexponential()}}}反累积指数{p_end}
{p2col:{bf:{help mf_normal_zh:invexponentialtail()}}}反累积指数的上尾{p_end}
{p2col:{bf:{help mf_normal_zh:invF()}}}反累积 F{p_end}
{p2col:{bf:{help mf_fft_zh:invfft()}}}反快速傅里叶变换{p_end}
{p2col:{bf:{help mf_normal_zh:invFtail()}}}反累积 F 的上尾{p_end}
{p2col:{bf:{help mf_normal_zh:invgammap()}}}反累积伽马{p_end}
{p2col:{bf:{help mf_normal_zh:invgammaptail()}}}反累积伽马的上尾{p_end}
{p2col:{bf:{help mf_hilbert_zh:invHilbert()}}}逆 Hilbert 矩阵{p_end}
{p2col:{bf:{help mf_normal_zh:invibeta()}}}反累积非中心 beta{p_end}
{p2col:{bf:{help mf_normal_zh:invibetatail()}}}反上尾累积非中心 beta{p_end}
{p2col:{bf:{help mf_normal_zh:invigaussian()}}}反累积反高斯分布{p_end}
{p2col:{bf:{help mf_normal_zh:invigaussiantail()}}}反上尾累积反高斯分布{p_end}
{p2col:{bf:{help mf_normal_zh:invlaplace()}}}反累积拉普拉斯{p_end}
{p2col:{bf:{help mf_normal_zh:invlaplacetail()}}}反累积拉普拉斯的上尾{p_end}
{p2col:{bf:{help mf_normal_zh:invlogistic()}}}反累积逻辑{p_end}
{p2col:{bf:{help mf_normal_zh:invlogistictail()}}}反累积逻辑的上尾{p_end}
{p2col:{bf:{help mf_logit_zh:invlogit()}}}赔率比的自然对数{p_end}
{p2col:{bf:{help mf_normal_zh:invnbinomial()}}}反负二项分布函数{p_end}
{p2col:{bf:{help mf_normal_zh:invnbinomialtail()}}}反累积负二项分布的上尾{p_end}
{p2col:{bf:{help mf_normal_zh:invnchi2()}}}反累积非中心卡方{p_end}
{p2col:{bf:{help mf_normal_zh:invnchi2tail()}}}反上尾累积非中心卡方{p_end}
{p2col:{bf:{help mf_normal_zh:invnF()}}}反累积非中心 F{p_end}
{p2col:{bf:{help mf_normal_zh:invnFtail()}}}反上尾累积非中心 F{p_end}
{p2col:{bf:{help mf_normal_zh:invnibeta()}}}反累积非中心 beta{p_end}
{p2col:{bf:{help mf_normal_zh:invnormal()}}}反累积正态{p_end}
{p2col:{bf:{help mf_normal_zh:invnt()}}}反累积非中心 Student 的 t{p_end}
{p2col:{bf:{help mf_normal_zh:invnttail()}}}反上尾累积非中心 Student 的 t{p_end}
{p2col:{bf:{help mf_invorder_zh:invorder()}}}置换向量的逆{p_end}
{p2col:{bf:{help mf_normal_zh:invpoisson()}}}反累积泊松分布函数{p_end}
{p2col:{bf:{help mf_normal_zh:invpoissontail()}}}反累积泊松分布的上尾{p_end}
{p2col:{bf:{help mf_isascii_zh:isascii()}}}字符串标量是否仅包含 ASCII 码{p_end}
{p2col:{bf:{help mf_isreal_zh:iscomplex()}}}对象是否为复数矩阵{p_end}
{p2col:{bf:{help mf_isdiagonal_zh:isdiagonal()}}}矩阵是否为对角线矩阵{p_end}
{p2col:{bf:{help mf_isfleeting_zh:isfleeting()}}}参数是否为临时{p_end}
{p2col:{bf:{help mf_isreal_zh:ispointer()}}}对象是否为指针矩阵{p_end}
{p2col:{bf:{help mf_isreal_zh:isreal()}}}对象是否为实数矩阵{p_end}
{p2col:{bf:{help mf_isrealvalues_zh:isrealvalues()}}}矩阵是否仅包含实值{p_end}
{p2col:{bf:{help mf_issamefile_zh:issamefile()}}}是否两个文件路径指向同一文件{p_end}
{p2col:{bf:{help mf_isreal_zh:isstring()}}}对象是否为字符串矩阵{p_end}
{p2col:{bf:{help mf_issymmetric_zh:issymmetric()}}}矩阵是否为对称矩阵（厄米）{p_end}
{p2col:{bf:{help mf_issymmetric_zh:issymmetriconly()}}}对象是否为机械对称{p_end}
{p2col:{bf:{help mf_isview_zh:isview()}}}对象是否为视图矩阵{p_end}

{col 5}{hline}

{marker J}{...}
{p2col:{bf:{help mf_j_zh:J()}}}常数矩阵 {...}{p_end}
{p2col:{bf:{help mf_sort_zh:jumble()}}}随机化矩阵行的顺序{p_end}

{col 5}{hline}

{marker K}{...}
{p2col:{bf:{help mf_kmatrix_zh:Kmatrix()}}}置换矩阵{p_end}

{col 5}{hline}

{marker L}{...}
{p2col:{bf:{help mf_lapack_zh:LA_*()}}}LAPACK 函数{p_end}
{p2col:{bf:{help mf_normal_zh:laplace()}}}累积拉普拉斯分布{p_end}
{p2col:{bf:{help mf_normal_zh:laplaceden()}}}拉普拉斯密度{p_end}
{p2col:{bf:{help mf_normal_zh:laplacetail()}}}1 减去累积拉普拉斯分布{p_end}
{p2col:{bf:{help mf_eigensystem_zh:lefteigensystem()}}}左特征向量和特征值 {p_end}
{p2col:{bf:{help mf_eigensystemselect_zh:lefteigensystemselectf()}}}左特征向量和特征值通过社区贡献的函数选择{p_end}
{p2col:{bf:{help mf_eigensystemselect_zh:lefteigensystemselecti()}}}左特征向量和特征值通过索引选择{p_end}
{p2col:{bf:{help mf_eigensystemselect_zh:lefteigensystemselectr()}}}左特征向量和特征值通过范围选择 {p_end}
{p2col:{bf:{help mf_geigensystem_zh:leftgeigensystem()}}}左广义特征向量和特征值{p_end}
{p2col:{bf:{help mf_geigensystem_zh:leftgeigensystemselectf()}}}左广义特征向量和特征值通过社区贡献的函数选择{p_end}
{p2col:{bf:{help mf_geigensystem_zh:leftgeigensystemselecti()}}}左广义特征向量和特征值通过索引选择{p_end}
{p2col:{bf:{help mf_geigensystem_zh:leftgeigensystemselectr()}}}左广义特征向量和特征值通过范围选择{p_end}
{p2col:{bf:{help mf_rows_zh:length()}}}矩阵中的元素数量{p_end}
{p2col:{bf:{help mf_linearprogram_zh:LinearProgram()}}}线性规划{p_end}
{p2col:{bf:{help mf_liststruct_zh:liststruct()}}}列出结构的内容{p_end}
{p2col:{bf:{help mf_lmatrix_zh:Lmatrix()}}}消除矩阵{p_end}
{p2col:{bf:{help mf_exp_zh:ln()}}}自然对数{p_end}
{p2col:{bf:{help mf_exp_zh:ln1m()}}}自然对数 (1-{it:x}){p_end}
{p2col:{bf:{help mf_exp_zh:ln1p()}}}自然对数 (1+{it:x}){p_end}
{p2col:{bf:{help mf_normal_zh:lncauchyden()}}}自然对数的 Cauchy 密度{p_end}
{p2col:{bf:{help mf_factorial_zh:lnfactorial()}}}阶乘的自然对数{p_end}
{p2col:{bf:{help mf_factorial_zh:lngamma()}}}伽马函数的自然对数{p_end}
{p2col:{bf:{help mf_normal_zh:lnigammaden()}}}反伽马分布密度的自然对数{p_end}
{p2col:{bf:{help mf_normal_zh:lnigaussianden()}}}反高斯密度的自然对数{p_end}
{p2col:{bf:{help mf_normal_zh:lnwishartden()}}}威沙特密度的自然对数{p_end}
{p2col:{bf:{help mf_normal_zh:lnmvnormalden()}}}多元正态密度的自然对数{p_end}
{p2col:{bf:{help mf_normal_zh:lnnormal()}}}累积正态分布的自然对数{p_end}
{p2col:{bf:{help mf_normal_zh:lnnormalden()}}}正态密度的自然对数{p_end}
{p2col:{bf:{help mf_normal_zh:lnwishartden()}}}威沙特密度的自然对数{p_end}
{p2col:{bf:{help mf_exp_zh:log()}}}自然对数{p_end}
{p2col:{bf:{help mf_exp_zh:log10()}}}以 10 为底的对数{p_end}
{p2col:{bf:{help mf_exp_zh:log1m()}}}自然对数 (1-{it:x}){p_end}
{p2col:{bf:{help mf_exp_zh:log1p()}}}自然对数 (1+{it:x}){p_end}
{p2col:{bf:{help mf_normal_zh:logistic()}}}累积逻辑{p_end}
{p2col:{bf:{help mf_normal_zh:logisticden()}}}逻辑密度{p_end}
{p2col:{bf:{help mf_normal_zh:logistictail()}}}反累积逻辑{p_end}
{p2col:{bf:{help mf_logit_zh:logit()}}}赔率比的自然对数{p_end}
{p2col:{bf:{help mf_lowertriangle_zh:lowertriangle()}}}从输入矩阵生成的下三角矩阵{p_end}
{p2col 4 32 34 2:*{bf:{help mf__lsfitqr_zh:_lsfitqr()}}}使用 QR 分解的最小二乘回归{p_end}
{p2col:{bf:{help mf_lud_zh:lud()}}}LU 分解 {it:A} = {it:PLU}{p_end}
{p2col:{bf:{help mf_luinv_zh:luinv()}}}使用 LU 分解的实或复矩阵的逆{p_end}
{p2col:{bf:{help mf_lusolve_zh:lusolve()}}}使用 LU 分解的实或复系数矩阵的线性系统的解{p_end}

{col 5}{hline}

{marker M}{...}
{p2col:{bf:{help mf_makesymmetric_zh:makesymmetric()}}}方阵的对称（厄米）版本{p_end}
{p2col:{bf:{help mf_matexpsym_zh:matexpsym()}}}对称矩阵的矩阵指数{p_end}
{p2col:{bf:{help mf_matexpsym_zh:matlogsym()}}}对称矩阵的矩阵对数{p_end}
{p2col:{bf:{help mf_matpowersym_zh:matpowersym()}}}对称矩阵的矩阵幂{p_end}
{p2col:{bf:{help mf_minmax_zh:max()}}}总体最大值{p_end}
{p2col:{bf:{help mf_mindouble_zh:maxdouble()}}}最大正的非缺失值{p_end}
{p2col:{bf:{help mf_minindex_zh:maxindex()}}}k 最大值的索引{p_end}
{p2col:{bf:{help mf_date_zh:mdy()}}}{cmd:%td} 从月份、天和年份获取的值{p_end}
{p2col:{bf:{help mf_date_zh:mdyhms()}}}{cmd:%tc} 从月份、天、年份、小时、分钟和秒获取的值{p_end}
{p2col:{bf:{help mf_mean_zh:mean()}}}列均值的行向量{p_end}
{p2col:{bf:{help mf_mean_zh:meanvariance()}}}列均值和方差的矩阵{p_end}
{p2col:{bf:{help mf_minmax_zh:min()}}}总体最小值{p_end}
{p2col:{bf:{help mf_mindouble_zh:mindouble()}}}最大负的非缺失值{p_end}
{p2col:{bf:{help mf_minindex_zh:minindex()}}}k 最小值的索引{p_end}
{p2col:{bf:{help mf_minmax_zh:minmax()}}}总体最小和最大值{p_end}
{p2col:{bf:{help mf_date_zh:minutes()}}}毫秒数的分钟{p_end}
{p2col:{bf:{help mf_missing_zh:missing()}}}缺失值计数{p_end}
{p2col:{bf:{help mf_missingof_zh:missingof()}}}适当的缺失值{p_end}
{p2col:{bf:{help mf_chdir_zh:mkdir()}}}创建新目录{p_end}
{p2col:{bf:{help mf_date_zh:mm()}}}从 {cmd:%tc} 值中获得的分钟{p_end}
{p2col:{bf:{help mf_date_zh:mmC()}}}从 {cmd:%tc} 值中获得的分钟{p_end}
{p2col:{bf:{help mf_mod_zh:mod()}}}模{p_end}
{p2col:{bf:{help mf_date_zh:mofd()}}}{cmd:%tm} 从 {cmd:%td} 值获得的值{p_end}
{p2col:{bf:{help mf_date_zh:month()}}}从 {cmd:%td} 值中获取的月份{p_end}
{p2col:{bf:{help mf_date_zh:monthly()}}}{cmd:%tm} 从字符串获取的值{p_end}
{p2col:{bf:{help mf_moptimize_zh:moptimize()}}}执行优化{p_end}
{p2col:{bf:{help mf_moptimize_zh:moptimize_ado_cleanup()}}}为 Stata 程序执行清理{p_end}
{p2col:{bf:{help mf_moptimize_zh:moptimize_evaluate()}}}在初始值处评估函数{p_end}
{p2col:{bf:{help mf_moptimize_zh:moptimize_init()}}}开始设置优化问题{p_end}
{p2col:{bf:{help mf_moptimize_zh:moptimize_init_*()}}}设置优化问题{p_end}
{p2col  4 32 34 2:*{bf:{help mf_moptimize_init_mlopts_zh:moptimize_init_mlopts()}}}{cmd:ml} 选项解析器
用于 {cmd:moptimize()}{p_end}
{p2col:{bf:{help mf_moptimize_zh:moptimize_query()}}}显示优化设置{p_end}
{p2col:{bf:{help mf_moptimize_zh:moptimize_result_*()}}}访问 {cmd:moptimize()} 结果{p_end}
{p2col:{bf:{help mf_moptimize_zh:moptimize_util_*()}}}编写评估器和处理结果的实用功能{p_end}
{p2col:{bf:{help mf_more_zh:more()}}}创建 --more-- 条件{p_end}
{p2col:{bf:{help mf_reldif_zh:mreldif()}}}矩阵之间的最大相对差{p_end}
{p2col:{bf:{help mf_reldif_zh:mreldifre()}}}{cmd:mreldif(Re(}{it:X}{cmd:)},{it:X}{cmd:)}, 真实距离{p_end}
{p2col:{bf:{help mf_reldif_zh:mreldifsym()}}}{cmd:mreldif(}{it:X}',{it:X}{cmd:)}, 对称距离{p_end}
{p2col:{bf:{help mf_date_zh:msofhours()}}}从小时数中获得的毫秒数{p_end}
{p2col:{bf:{help mf_date_zh:msofminutes()}}}从分钟数中获得的毫秒数{p_end}
{p2col:{bf:{help mf_date_zh:msofseconds()}}}从秒数中获得的毫秒数{p_end}
{p2col:{bf:{help mf_mvnormal_zh:mvnormal()}}}多元正态概率
{p2col:{bf:{help mf_mvnormal_zh:mvnormalcv()}}}多元正态概率
{p2col:{bf:{help mf_mvnormal_zh:mvnormalqp()}}}{cmd:mvnormal()}使用指定的
对称点{p_end}
{p2col:{bf:{help mf_mvnormal_zh:mvnormalcvqp()}}}{cmd:mvnormalcv()} 使用指定的
对称点{p_end}
{p2col:{bf:{help mf_mvnormal_zh:mvnormalderiv()}}}导数
{cmd:mvnormal()}{p_end}
{p2col:{bf:{help mf_mvnormal_zh:mvnormalcvderiv()}}}导数
{cmd:mvnormalcv()}{p_end}
{p2col:{bf:{help mf_mvnormal_zh:mvnormaldervqp()}}}{cmd:mvnormalderiv()} 使用指定的对称点{p_end}
{p2col:{bf:{help mf_mvnormal_zh:mvnormalcvderivqp()}}}{cmd:mvnormalcvderiv()} 使用指定的对称点{p_end}
{col 5}{hline}

{marker N}{...}
{p2col:{bf:{help mf_findexternal_zh:nameexternal()}}}外部全局的名称{p_end}
{p2col:{bf:{help mf_normal_zh:nbetaden()}}}非中心 beta 密度{p_end}
{p2col:{bf:{help mf_normal_zh:nbinomial()}}}累积负二项分布函数{p_end}
{p2col:{bf:{help mf_normal_zh:nbinomialp()}}}负二项概率质量函数{p_end}
{p2col:{bf:{help mf_normal_zh:nbinomialtail()}}}反累积负二项分布{p_end}
{p2col:{bf:{help mf_normal_zh:nchi2()}}}累积非中心卡方分布{p_end}
{p2col:{bf:{help mf_normal_zh:nchi2den()}}}非中心卡方密度{p_end}
{p2col:{bf:{help mf_normal_zh:nchi2tail()}}}1 减去累积非中心卡方分布{p_end}
{p2col:{bf:{help mf__negate_zh:_negate()}}}取实矩阵的负值{p_end}
{p2col:{bf:{help mf_normal_zh:nF()}}}累积非中心 F 分布{p_end}
{p2col:{bf:{help mf_normal_zh:nFden()}}}非中心 F 密度{p_end}
{p2col:{bf:{help mf_normal_zh:nFtail()}}}1 减去累积非中心 F 分布{p_end}
{p2col:{bf:{help mf_normal_zh:nibeta()}}}累积非中心 beta 分布{p_end}
{p2col:{bf:{help mf_missing_zh:nonmissing()}}}非缺失值计数{p_end}
{p2col:{bf:{help mf_norm_zh:norm()}}}矩阵和向量的范数 {...}{p_end}
{p2col:{bf:{help mf_normal_zh:normal()}}}累积正态分布{p_end}
{p2col:{bf:{help mf_normal_zh:normalden()}}}正态密度{p_end}
{p2col:{bf:{help mf_normal_zh:npnchi2()}}}非中心卡方的非中心参数{p_end}
{p2col:{bf:{help mf_normal_zh:npnF()}}}非中心 F 的非中心参数{p_end}
{p2col:{bf:{help mf_normal_zh:npnt()}}}非中心 t 的非中心参数{p_end}
{p2col:{bf:{help mf_normal_zh:nt()}}}累积非中心 Student 的 t 分布{p_end}
{p2col:{bf:{help mf_normal_zh:ntden()}}}非中心 Student 的 t 密度{p_end}
{p2col:{bf:{help mf_normal_zh:nttail()}}}反累积非中心 Student 的 t 分布{p_end}

{col 5}{hline}

{marker O}{...}
{p2col:{bf:{help mf_optimize_zh:optimize()}}}执行优化{p_end}
{p2col:{bf:{help mf_optimize_zh:optimize_evaluate()}}}评估用户的 {cmd:optimize()} 函数{p_end}
{p2col:{bf:{help mf_optimize_zh:optimize_init()}}}开始设置优化问题{p_end}
{p2col:{bf:{help mf_optimize_zh:optimize_init_{it:*}()}}}设置优化问题{p_end}
{p2col:{bf:{help mf_optimize_zh:optimize_query()}}}显示优化设置和结果{p_end}
{p2col:{bf:{help mf_optimize_zh:optimize_result_{it:*}()}}}访问 {cmd:optimize()} 的结果{p_end}
{p2col:{bf:{help mf_sort_zh:order()}}}排列行的置换向量{p_end}
{p2col:{bf:{help mf_eltype_zh:orgtype()}}}对象的组织类型{p_end}

{col 5}{hline}

{marker P}{...}
{p2col:{bf:{help mf_panelsetup_zh:panelsetup()}}}用于面板数据处理的信息矩阵{p_end}
{p2col:{bf:{help mf_panelsetup_zh:panelstats()}}}面板的汇总统计{p_end}
{p2col:{bf:{help mf_panelsetup_zh:panelsubmatrix()}}}面板 {it:i} 的矩阵{p_end}
{p2col:{bf:{help mf_panelsetup_zh:panelsubview()}}}面板 {it:i} 的视图矩阵{p_end}
{p2col 4 32 34 2:*{bf:{help mf_panelsum_zh:panelsum()}}}计算面板内的总和{p_end}
{p2col:{bf:{help mf_pathjoin_zh:pathasciisuffix()}}}文件是否为 ASCII{p_end}
{p2col:{bf:{help mf_pathjoin_zh:pathbasename()}}}路径基名{p_end}
{p2col:{bf:{help mf_pathjoin_zh:pathgetparent()}}}获取父路径{p_end}
{p2col:{bf:{help mf_pathjoin_zh:pathisabs()}}}路径是否为绝对路径{p_end}
{p2col:{bf:{help mf_pathjoin_zh:pathisurl()}}}路径是否为 URL{p_end}
{p2col:{bf:{help mf_pathjoin_zh:pathjoin()}}}连接的路径{p_end}
{p2col:{bf:{help mf_pathjoin_zh:pathlist()}}}包含 ado 路径目录元素的行向量{p_end}
{p2col:{bf:{help mf_pathjoin_zh:pathresolve()}}}解析相对路径{p_end}
{p2col:{bf:{help mf_pathjoin_zh:pathrmsuffix()}}}删除文件后缀的路径{p_end}
{p2col:{bf:{help mf_pathjoin_zh:pathsearchlist()}}}包含 Stata 搜索文件的路径元素的行向量{p_end}
{p2col:{bf:{help mf_pathjoin_zh:pathsplit()}}}拆分路径{p_end}
{p2col:{bf:{help mf_pathjoin_zh:pathstatasuffix()}}}文件是否属于官方 Stata 目录{p_end}
{p2col:{bf:{help mf_pathjoin_zh:pathsubsysdir()}}}包含实际目录的行向量，以替换命名系统目录，如 "BASE"{p_end}
{p2col:{bf:{help mf_pathjoin_zh:pathsuffix()}}}文件后缀{p_end}
{p2col:{bf:{help mf_pdf_zh:Pdf*()}}}创建 PDF 文件{p_end}
{p2col:{bf:{help mf__equilrc_zh:_perhapsequilc()}}}如果需要则执行列平衡{p_end}
{p2col:{bf:{help mf__equilrc_zh:_perhapsequilr()}}}如果需要则执行行平衡{p_end}
{p2col:{bf:{help mf__equilrc_zh:_perhapsequilrc()}}}如果需要则执行行和列平衡{p_end}
{p2col:{bf:{help mf_sin_zh:pi()}}} {it:pi} 的值{p_end}
{p2col:{bf:{help mf_pinv_zh:pinv()}}}摩尔-彭罗斯伪逆{p_end}
{p2col:{bf:{help mf_normal_zh:poisson()}}}累积泊松分布函数{p_end}
{p2col:{bf:{help mf_normal_zh:poissonp()}}}泊松概率质量函数{p_end}
{p2col:{bf:{help mf_normal_zh:poissontail()}}}反累积泊松分布{p_end}
{p2col:{bf:{help mf_polyeval_zh:polyadd()}}}通过相加两个多项式获得的多项式{p_end}
{p2col:{bf:{help mf_polyeval_zh:polyderiv()}}}通过多项式的导数获得的多项式{p_end}
{p2col:{bf:{help mf_polyeval_zh:polydiv()}}}通过除以两个多项式获得的多项式{p_end}
{p2col:{bf:{help mf_polyeval_zh:polyeval()}}}包含在点向量上评估的多项式的行向量{p_end}
{p2col:{bf:{help mf_polyeval_zh:polyinteg()}}}通过多项式的积分获得的多项式{p_end}
{p2col:{bf:{help mf_polyeval_zh:polymult()}}}通过相乘两个多项式获得的多项式{p_end}
{p2col:{bf:{help mf_polyeval_zh:polyroots()}}}多项式的根{p_end}
{p2col:{bf:{help mf_polyeval_zh:polysolve()}}}最小度多项式，适合 {cmd:polyeval(}{it:c},{it:x}{cmd:)}{p_end}
{p2col:{bf:{help mf_polyeval_zh:polytrim()}}}去掉尾随零的多项式{p_end}
{p2col:{bf:{help mf_printf_zh:printf()}}}在终端显示输出{p_end}
{p2col:{bf:{help mf_chdir_zh:pwd()}}}当前工作目录{p_end}

{col 5}{hline}

{marker Q}{...}
{p2col:{bf:{help mf_date_zh:qofd()}}}{cmd:%tq} 从 {cmd:%td} 值中获取的值{p_end}
{p2col:{bf:{help mf_qrd_zh:qrd()}}}执行 QR 分解 {it:A} = {it:QR}{p_end}
{p2col:{bf:{help mf_qrd_zh:qrdp()}}}执行带有选择的 QR 分解 {it:A} = {it:QRP}{bf:'}{p_end}
{p2col:{bf:{help mf_qrinv_zh:qrinv()}}}通过 QR 分解生成的实或复矩阵的广义逆{p_end}
{p2col:{bf:{help mf_qrsolve_zh:qrsolve()}}}线性系统的广义解，具有实或复系数，使用 QR 分解{p_end}
{p2col:{bf:{help mf_sum_zh:quadcolsum()}}}四重精度 {bf:{help mf_sum_zh:colsum()}}{

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <m5_intro.sthlp>}