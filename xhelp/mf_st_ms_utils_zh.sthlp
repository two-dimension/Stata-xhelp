{smcl}
{* *! version 1.2.0  30may2019}{...}
{vieweralsosee undocumented "help undocumented"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-5] st_matrix()" "help mf_st_matrix_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[P] matrix rownames" "help matrix_rownames_zh"}{...}
{vieweralsosee "[P] _ms_element_info" "help _ms_element_info_zh"}{...}
{vieweralsosee "[P] _ms_eq_info" "help _ms_eq_info_zh"}{...}
{viewerjumpto "Syntax" "mf_st_ms_utils_zh##syntax"}{...}
{viewerjumpto "Description" "mf_st_ms_utils_zh##description"}{...}
{viewerjumpto "Conformability" "mf_st_ms_utils_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf_st_ms_utils_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf_st_ms_utils_zh##source"}
{help mf_st_ms_utils:English Version}
{hline}{...}
{title:标题}

{phang}
{cmd:[M-5] st_ms_utils()} {hline 2} 矩阵条纹工具


{marker syntax}{...}
{title:语法}

{phang2}
{it:实数 列向量}
{cmd:st_matrixrowstripe_order(}{it:名称}{cmd:)}

{phang2}
{it:实数 列向量}
{cmd:st_matrixcolstripe_order(}{it:名称}{cmd:)}

{phang2}
{it:字符串 矩阵}{space 1}
{cmd:st_matrixrowstripe_split(}{it:名称}{cmd:,}
	{it:宽度}{cmd:,} {it:冒号}{cmd:)}

{phang2}
{it:字符串 矩阵}{space 1}
{cmd:st_matrixcolstripe_split(}{it:名称}{cmd:,}
	{it:宽度}{cmd:,} {it:冒号}{cmd:)}

{phang2}
{it:实数 矩阵}{space 3}
{cmd:st_matrixrowstripe_fvinfo(}{it:名称}{cmd:)}

{phang2}
{it:实数 矩阵}{space 3}
{cmd:st_matrixcolstripe_fvinfo(}{it:名称}{cmd:)}

{phang2}
{it:无}{space 10}
{cmd:st_matrixrowstripe_fvinfo(}{it:名称}{cmd:,} {it:信息}{cmd:)}

{phang2}
{it:无}{space 10}
{cmd:st_matrixcolstripe_fvinfo(}{it:名称}{cmd:,} {it:信息}{cmd:)}

{phang2}
{it:实数 列向量}
{cmd:st_matrixrownumb(}{it:名称}{cmd:,} {it:S}{cmd:)}

{phang2}
{it:实数 列向量}
{cmd:st_matrixcolnumb(}{it:名称}{cmd:,} {it:S}{cmd:)}

{phang2}
{it:实数 列向量}
{cmd:st_matrixroweqnumb(}{it:名称}{cmd:,} {it:S}{cmd:)}

{phang2}
{it:实数 列向量}
{cmd:st_matrixcoleqnumb(}{it:名称}{cmd:,} {it:S}{cmd:)}

{phang2}
{it:实数 标量}{space 3}
{cmd:st_matrixrownfreeparms(}{it:名称}{cmd:)}

{phang2}
{it:实数 标量}{space 3}
{cmd:st_matrixcolnfreeparms(}{it:名称}{cmd:)}

{phang2}
{it:实数 标量}{space 3}
{cmd:st_matrixrownlfs(}{it:名称}{cmd:)}

{phang2}
{it:实数 标量}{space 3}
{cmd:st_matrixcolnlfs(}{it:名称}{cmd:)}

{phang2}
{it:实数 列向量}
{cmd:st_matrixrowfreeparm(}{it:名称}{cmd:)}

{phang2}
{it:实数 列向量}
{cmd:st_matrixcolfreeparm(}{it:名称}{cmd:)}

{pstd}
其中

	  {it:名称}:  {it:字符串 标量}
	 {it:宽度}:  {it:实数 标量}
	 {it:冒号}:  {it:实数 标量}  (可选)
	  {it:信息}:  {it:实数 矩阵}
	     {it:S}:  {it:字符串 矩阵}


{marker description}{...}
{title:描述}

{pstd}
{cmd:st_matrixrowstripe_order(}{it:名称}{cmd:)}
返回一个排列向量，用于按行名称的字母顺序排列 Stata 矩阵 {it:名称} 的行。 对于因子变量，主效应和非因子变量的字母顺序优先，然后是所有两因素交互，接着是所有三因素交互，依此类推。 截距 {bf:_cons} 排在最后。
如果 {it:名称} 的行条带包含方程，则排列是在方程内部进行，方程顺序保持不变。

{pstd}
{cmd:st_matrixcolstripe_order(}{it:名称}{cmd:)}
返回一个排列向量，用于按列名称的字母顺序排列 Stata 矩阵 {it:名称} 的列。 对于因子变量，主效应和非因子变量的字母顺序优先，然后是所有两因素交互，接着是所有三因素交互，依此类推。 截距 {bf:_cons} 排在最后。
如果 {it:名称} 的列条带包含方程，则排列是在方程内部进行，方程顺序保持不变。

{pstd}
{cmd:st_matrixrowstripe_split(}{it:名称}{cmd:,} {it:宽度}{cmd:)}
返回一个字符串矩阵 {it:S}，其元素由 Stata 矩阵 {it:名称} 的行条带构成。 {it:S} 的第一列包含方程名称；其余列根据因子变量、交互和时间序列操作的标准拆分规则进行拆分。 {it:宽度} 指定 {it:S} 中每个元素允许包含的最大字符数。
{cmd:st_matrixrowstripe_split(}{it:名称}{cmd:,} {it:宽度}{cmd:,} {cmd:0}{cmd:)} 将在 {it:S} 的第一列中抑制方程名称后的冒号；默认情况下，非空方程名称后会加上冒号。

{pstd}
{cmd:st_matrixcolstripe_split(}{it:名称}{cmd:,} {it:宽度}{cmd:)}
返回一个字符串矩阵 {it:S}，其元素由 Stata 矩阵 {it:名称} 的列名称构成。 列根据因子变量、交互和时间序列操作的标准拆分规则进行拆分。 {it:宽度} 指定 {it:S} 中每个元素允许包含的最大字符数。
{cmd:st_matrixcolstripe_split(}{it:名称}{cmd:,} {it:宽度}{cmd:,} {cmd:0}{cmd:)} 将在 {it:S} 的第一列中抑制方程名称后的冒号；默认情况下，非空方程名称后会加上冒号。

{pstd}
{cmd:st_matrixrowstripe_fvinfo(}{it:名称}{cmd:)} 返回隐藏在 Stata 矩阵 {it:名称} 行条带中的因子变量信息。

{pstd}
{cmd:st_matrixcolstripe_fvinfo(}{it:名称}{cmd:)} 返回隐藏在 Stata 矩阵 {it:名称} 列条带中的因子变量信息。

{pstd}
{cmd:st_matrixrowstripe_fvinfo(}{it:名称}{cmd:,} {it:信息}{cmd:)} 设置 Stata 矩阵 {it:名称} 行条带的隐藏因子变量信息。

{pstd}
{cmd:st_matrixcolstripe_fvinfo(}{it:名称}{cmd:,} {it:信息}{cmd:)} 设置 Stata 矩阵 {it:名称} 列条带的隐藏因子变量信息。

{pstd}
{cmd:st_matrixrownumb(}{it:名称}{cmd:,} {it:S}{cmd:)} 返回 Stata 矩阵 {it:名称} 中与矩阵 {it:S} 中条带规范相关的行号。

{pstd}
{cmd:st_matrixcolnumb(}{it:名称}{cmd:,} {it:S}{cmd:)} 返回 Stata 矩阵 {it:名称} 中与矩阵 {it:S} 中条带规范相关的列号。

{pstd}
{cmd:st_matrixroweqnumb(}{it:名称}{cmd:,} {it:S}{cmd:)} 返回 Stata 矩阵 {it:名称} 中与行向量 {it:S} 中方程规范相关的行方程索引。

{pstd}
{cmd:st_matrixcoleqnumb(}{it:名称}{cmd:,} {it:S}{cmd:)} 返回 Stata 矩阵 {it:名称} 中与列向量 {it:S} 中方程规范相关的列方程索引。

{pstd}
{cmd:st_matrixrownfreeparms(}{it:名称}{cmd:)} 返回 Stata 矩阵 {it:名称} 中自由参数行的数量。

{pstd}
{cmd:st_matrixcolnfreeparms(}{it:名称}{cmd:)} 返回 Stata 矩阵 {it:名称} 中自由参数列的数量。

{pstd}
{cmd:st_matrixrownlfs(}{it:名称}{cmd:)} 返回 Stata 矩阵 {it:名称} 行中线性形式的数量。

{pstd}
{cmd:st_matrixcolnlfs(}{it:名称}{cmd:)} 返回 Stata 矩阵 {it:名称} 列中线性形式的数量。

{pstd}
{cmd:st_matrixrowfreeparm(}{it:名称}{cmd:)} 返回一个向量，表示 Stata 矩阵 {it:名称} 行中自由参数的位置。

{pstd}
{cmd:st_matrixcolfreeparm(}{it:名称}{cmd:)} 返回一个向量，表示 Stata 矩阵 {it:名称} 列中自由参数的位置。


{marker conformability}{...}
{title:兼容性}

    {cmd:st_matrixrowstripe_order(}{it:名称}{cmd:)}:
	     {it:名称}:  1 {it:x} 1
	   {it:结果}:  {it:n x} 1

    {cmd:st_matrixcolstripe_order(}{it:名称}{cmd:)}:
	     {it:名称}:  1 {it:x} 1
	   {it:结果}:  {it:n x} 1

    {cmd:st_matrixrowstripe_split(}{it:名称}{cmd:,} {it:宽度}{cmd:,} {it:冒号}{cmd:)}:
	     {it:名称}:  1 {it:x} 1
	    {it:宽度}:  1 {it:x} 1
	    {it:冒号}:  1 {it:x} 1  (可选)
	   {it:结果}:  {it:n x m}  (0 {it:x} 2 如果未找到)

    {cmd:st_matrixcolstripe_split(}{it:名称}{cmd:,} {it:宽度}{cmd:,} {it:冒号}{cmd:)}:
	     {it:名称}:  1 {it:x} 1
	    {it:宽度}:  1 {it:x} 1
	    {it:冒号}:  1 {it:x} 1  (可选)
	   {it:结果}:  {it:n x m}  (0 {it:x} 2 如果未找到)

    {cmd:st_matrixrowstripe_fvinfo(}{it:名称}{cmd:)}:
	     {it:名称}:  1 {it:x} 1
	   {it:结果}:  {it:n x} 2  (0 {it:x} 2 如果未找到)

    {cmd:st_matrixcolstripe_fvinfo(}{it:名称}{cmd:)}:
	     {it:名称}:  1 {it:x} 1
	   {it:结果}:  {it:n x} 2  (0 {it:x} 2 如果未找到)

    {cmd:st_matrixrowstripe_fvinfo(}{it:名称}{cmd:,} {it:信息}{cmd:)}:
	     {it:名称}:  1 {it:x} 1
	     {it:信息}:  {it:n x} 2
	   {it:结果}:  {it:无}

    {cmd:st_matrixcolstripe_fvinfo(}{it:名称}{cmd:,} {it:信息}{cmd:)}:
	     {it:名称}:  1 {it:x} 1
	     {it:信息}:  {it:n x} 2
	   {it:结果}:  {it:无}

    {cmd:st_matrixrownumb(}{it:名称}{cmd:,} {it:S}{cmd:)}:
	     {it:名称}:  1 {it:x} 1
	        {it:S}:  {it:n x} 2
	   {it:结果}:  {it:n x} 1

    {cmd:st_matrixcolnumb(}{it:名称}{cmd:,} {it:S}{cmd:)}:
	     {it:名称}:  1 {it:x} 1
	        {it:S}:  {it:n x} 2
	   {it:结果}:  {it:n x} 1

    {cmd:st_matrixroweqnumb(}{it:名称}{cmd:,} {it:S}{cmd:)}:
	     {it:名称}:  1 {it:x} 1
	        {it:S}:  {it:n x} 1
	   {it:结果}:  {it:n x} 1

    {cmd:st_matrixcoleqnumb(}{it:名称}{cmd:,} {it:S}{cmd:)}:
	     {it:名称}:  1 {it:x} 1
	        {it:S}:  {it:n x} 1
	   {it:结果}:  {it:n x} 1

    {cmd:st_matrixrownfreeparms(}{it:名称}{cmd:)}:
	     {it:名称}:  1 {it:x} 1
	   {it:结果}:  1 {it:x} 1

    {cmd:st_matrixcolnfreeparms(}{it:名称}{cmd:)}:
	     {it:名称}:  1 {it:x} 1
	   {it:结果}:  1 {it:x} 1

    {cmd:st_matrixrownlfs(}{it:名称}{cmd:)}:
	     {it:名称}:  1 {it:x} 1
	   {it:结果}:  1 {it:x} 1

    {cmd:st_matrixcolnlfs(}{it:名称}{cmd:)}:
	     {it:名称}:  1 {it:x} 1
	   {it:结果}:  1 {it:x} 1

    {cmd:st_matrixrowfreeparm(}{it:名称}{cmd:)}:
	     {it:名称}:  1 {it:x} 1
	   {it:结果}:  {it:n x} 1

    {cmd:st_matrixcolfreeparm(}{it:名称}{cmd:)}:
	     {it:名称}:  1 {it:x} 1
	   {it:结果}:  {it:n x} 1


{marker diagnostics}{...}
{title:诊断}

{pstd}
{cmd:st_matrixrowstripe_order(}{it:名称}{cmd:)} 和
{cmd:st_matrixcolstripe_order(}{it:名称}{cmd:)}
在参数 {it:名称} 格式错误时会终止并返回错误。
如果 Stata 矩阵 {it:名称} 不存在，则这些函数返回 {cmd:J(0,1,.)}。

{pstd}
{cmd:st_matrixrowstripe_split(}{it:名称}{cmd:,} {it:宽度}{cmd:,} {it:冒号}{cmd:)} 和
{cmd:st_matrixcolstripe_split(}{it:名称}{cmd:,} {it:宽度}{cmd:,} {it:冒号}{cmd:)}
在任何参数格式错误时终止并返回错误。这些函数
如果 Stata 矩阵 {it:名称} 不存在，则返回 {cmd:J(0,2,"")}。 如果 {it:宽度}<5 或缺失，则默认假定 {it:宽度} 为 12。 {it:冒号} 表示是否在方程名称中包含冒号；默认情况下，{it:冒号}={cmd:1}。

{pstd}
{cmd:st_matrixrowstripe_fvinfo(}{it:名称}{cmd:)} 和
{cmd:st_matrixcolstripe_fvinfo(}{it:名称}{cmd:)}
在 {it:名称} 格式错误时会终止并返回错误。 这些函数
如果 Stata 矩阵 {it:名称} 不存在，则返回 {cmd:J(0,2,.)}。

{pstd}
{cmd:st_matrixrowstripe_fvinfo(}{it:名称}{cmd:,} {it:信息}{cmd:)} 和
{cmd:st_matrixcolstripe_fvinfo(}{it:名称}{cmd:,} {it:信息}{cmd:)}
在任何参数格式错误时会终止并返回错误。 如果 {it:信息} 与相应条带的维度不兼容，则这些函数也会终止并返回错误。

{pstd}
{cmd:st_matrixrownumb(}{it:名称}{cmd:,} {it:S}{cmd:)} 和
{cmd:st_matrixcolnumb(}{it:名称}{cmd:,} {it:S}{cmd:)}
在任何参数格式错误时会终止并返回错误。

{pstd}
{cmd:st_matrixroweqnumb(}{it:名称}{cmd:,} {it:S}{cmd:)} 和
{cmd:st_matrixcoleqnumb(}{it:名称}{cmd:,} {it:S}{cmd:)}
在任何参数格式错误时会终止并返回错误。


{marker source}{...}
{title:源代码}

{pstd}
{view st_ms_order.mata, adopath asis:st_ms_order.mata}
{p_end}

{pstd}
所有其他函数都是内置的。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_st_ms_utils.sthlp>}