{smcl}
{* *! version 1.0.1  11oct2017}{...}
{vieweralsosee undocumented "help undocumented"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[SVY] svy" "help svy_zh"}{...}
{vieweralsosee "[SVY] svyset" "help svyset_zh"}{...}
{viewerjumpto "语法" "svycal_zh##syntax"}{...}
{viewerjumpto "描述" "svycal_zh##description"}{...}
{viewerjumpto "选项" "svycal_zh##options"}{...}
{viewerjumpto "示例" "svycal_zh##examples"}{...}
{viewerjumpto "参考资料" "svycal_zh##references"}
{help svycal:English Version}
{hline}{...}
{title:标题}

{p 4 22 2}
{hi:[SVY] svycal} {hline 2} 校准调整采样权重


{marker syntax}{...}
{title:语法}

{pstd}
线性回归调整的采样权重

{p 8 15 2}
{cmd:svycal} {cmd:regress}
	{varlist} {weight} {ifin}
	{cmd:,}
		{opth gen:erate(newvar)} 
		{opth tot:als(svycal##spec:spec)}
		[{opt nocons:tant}
			{opt ll(#)}
			{opt ul(#)}
			{opt iter:ate(#)}
			{opt tol:erance(#)}
			{opt force}]


{pstd}
比例调整采样权重

{p 8 15 2}
{cmd:svycal} {cmd:rake}
	{varlist} {weight} {ifin}
	{cmd:,}
		{opth gen:erate(newvar)} 
		{opth tot:als(svycal##spec:spec)}
		[{opt nocons:tant}]


{pstd}
{varlist} 可以包含因子变量；请参见 {help fvvarlist_zh}。
{p_end}
{pstd}
允许使用 {opt pweight} 和 {opt iweight}；请参见 {help weights}。
{p_end}


{marker description}{...}
{title:描述}

{pstd}
{cmd:svycal} 生成用于调查数据分析的校准调整权重。

{pstd}
{cmd:svycal} {cmd:regress} 生成根据加性（线性）距离度量调整的采样权重。

{pstd}
{cmd:svycal} {cmd:rake} 生成根据乘法距离度量调整的采样权重。


{marker options}{...}
{title:选项}

{phang}
{opth generate(newvar)} 指定用以存放调整后采样权重的新变量的名称。 {opt generate()} 是必须的。

{marker spec}{...}
{phang}
{opt totals(spec)} 指定与 {varlist} 中变量对应的人口总数。 {it:spec} 可能是

{p 12 20 2}{it:matname} [{cmd:,} {cmd:skip} {cmd:copy}]{p_end}

{p 12 20 2}{c -(} [{it:eqname}{cmd::}]{it:name} {cmd:=} {it:#} |
	{cmd:/}{it:eqname} {cmd:=} {it:#} {c )-} [{it:...}]{p_end}

{p 12 20 2}{it:#} [{it:#} {it:...}]{cmd:,} {cmd:copy}{p_end}

{pmore}
也就是说，{it:spec} 可以是一个矩阵名称，
例如，{bf:totals(poptotals)};
一个包含其人口总数的 {it:varlist} 中变量名称的列表，
例如，{bf:totals(_cons=1300 dogs=850 cats=450)};
或一个值的列表，
例如，{bf:totals(850 450 1300)}。

{phang2}
{opt skip} 指定在指定的初始化向量中找到的任何参数，若在模型中未找到，则忽略。 默认操作是发出错误消息。

{phang2}
{opt copy} 指定将值列表或初始化向量按位置而非按名称复制到初始值向量中。

{phang}
{opt noconstant} 防止 {cmd:svycal} 在校准计算中包含截距。

{phang}
{opt ll(#)} 指定权重比例的下限。

{phang}
{opt ul(#)} 指定权重比例的上限。

{phang}
{opt iterate(#)} 指定最大迭代次数。
当迭代次数等于 {cmd:iterate()} 时，校准调整停止并给出说明。
默认值为 {cmd:iterate(1000)}。

{phang}
{opt tolerance(#)} 指定校准方程中的拉格朗日乘数的容差。
当拉格朗日乘数从一个迭代到下一个的相对变化小于或等于 {cmd:tolerance()} 时，达到收敛。
默认值为 {cmd:tolerance(1e-7)}。

{phang}
{opt force} 防止 {cmd:svycal} 在校准调整未能收敛时出现错误退出。


{marker examples}{...}
{title:示例}

{phang}
后分层调整：在矩阵中的人口总数
{p_end}

{phang2}
{cmd:. webuse poststrata}
{p_end}
{phang2}
{cmd:. matrix poptotals = 1300, 850, 450}
{p_end}
{phang2}
{cmd:. matrix colnames poptotals = _cons 1.type 2.type}
{p_end}
{phang2}
{cmd:. svycal regress i.type [pw=weight], generate(adj_weight) totals(poptotals)}
{p_end}

{phang}
后分层调整：使用键值对的人口总数
{p_end}

{phang2}
{cmd:. webuse poststrata}
{p_end}
{phang2}
{cmd:. svycal regress i.type [pw=weight], generate(adj_weight) totals(_cons=1300 1.type=850 2.type=450)}
{p_end}

{phang}
后分层调整：使用值列表的人口总数
{p_end}

{phang2}
{cmd:. webuse poststrata}
{p_end}
{phang2}
{cmd:. svycal regress i.type [pw=weight], generate(adj_weight) totals(850 450 1300, copy)}
{p_end}


{marker references}{...}
{title:参考资料}

{marker D1992}{...}
{phang}
Deville, J.-C., 和 C.-E. Sarndal.  1992.  调查抽样中的校准估计量。
{it:美国统计协会杂志} 87: 376-382.
{p_end}

{marker D1993}{...}
{phang}
Deville, J.-C., C.-E. Sarndal, 和 O. Sautory.  1993.  调查抽样中的广义拉桩程序。
{it:美国统计协会杂志} 88: 1013-1020.
{p_end}

{marker V2002}{...}
{phang}
Valliant, R.  2002.  一般回归估计量的方差估计。  {it:调查} {it:方法学} 28: 103-114.
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <svycal.sthlp>}