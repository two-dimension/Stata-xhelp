{smcl}
{* *! version 1.1.7  15may2018}{...}
{vieweralsosee "[M-5] polyeval()" "mansection M-5 polyeval()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] 数学" "help m4_mathematical_zh"}{...}
{viewerjumpto "语法" "mf_polyeval_zh##syntax"}{...}
{viewerjumpto "描述" "mf_polyeval_zh##description"}{...}
{viewerjumpto "PDF文档链接" "mf_polyeval_zh##linkspdf"}{...}
{viewerjumpto "备注" "mf_polyeval_zh##remarks"}{...}
{viewerjumpto "可容性" "mf_polyeval_zh##conformability"}{...}
{viewerjumpto "诊断" "mf_polyeval_zh##diagnostics"}{...}
{viewerjumpto "源代码" "mf_polyeval_zh##source"}
{help mf_polyeval:English Version}
{hline}{...}
{p2colset 1 21 23 2}{...}
{p2col:{bf:[M-5] polyeval()} {hline 2}}操作和评估多项式
{p_end}
{p2col:}({mansection M-5 polyeval():查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{it:数值向量}{bind:   }
{cmd:polyeval(}{it:数值行向量 c}{cmd:,}
{it:数值向量 x}{cmd:)}

{p 8 12 2}
{it:数值行向量}
{cmd:polysolve(}{it:数值向量 y}{cmd:,}
{it:数值向量 x}{cmd:)}

{p 8 12 2}
{it:数值行向量}
{cmd:polytrim(}{it:数值向量 c}{cmd:)}


{p 8 12 2}
{it:数值行向量}
{cmd:polyderiv(}{it:数值行向量 c}{cmd:,}
{it:实数标量 i}{cmd:)}

{p 8 12 2}
{it:数值行向量}
{cmd:polyinteg(}{it:数值行向量 c}{cmd:,}
{it:实数标量 i}{cmd:)}


{p 8 12 2}
{it:数值行向量}
{cmd:polyadd(}{it:数值行向量 c1}{cmd:,}
{it:数值行向量 c2}{cmd:)}

{p 8 12 2}
{it:数值行向量}
{cmd:polymult(}{it:数值行向量 c1}{cmd:,}
{it:数值行向量 c2}{cmd:)}

{p 8 34 2}
{it:无}{bind:             }
{cmd:polydiv(}{it:数值行向量 c1}{cmd:,}
{it:数值行向量 c2}{cmd:,}{break}
{it:cq}{cmd:,}
{it:cr}{cmd:)}


{p 8 34 2}
{it:复数行向量}
{cmd:polyroots(}{it:数值行向量 c}{cmd:)}


{p 4 4 2}
在上述内容中，行向量 {it:c} 包含了一个 {cmd:cols(}{it:c}{cmd:)}-1 次多项式的系数。 例如， 

			{it:c} = (4, 2, 1)

{p 4 4 2}
表示多项式

			4 + 2{it:x} + {it:x}^2


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:polyeval(}{it:c}{cmd:,} {it:x}{cmd:)}
在每个 {it:x} 的值上评估多项式 {it:c}，返回与 {it:x} 兼容的 p 向量。
例如， 
{cmd:polyeval((4,2,1), (3\5))} 返回
(4+2*3+3^2 \ 4+2*5+5^2) = (19 \ 39)。

{p 4 4 2}
{cmd:polysolve(}{it:y}{cmd:,} {it:x}{cmd:)}
返回与 {it:y} =
{cmd:polyeval(}{it:c}{cmd:,} {it:x}{cmd:)} 互为适配的最低度多项式 {it:c}。 解决方法通过拉格朗日插值公式得出。

{p 4 4 2}
{cmd:polytrim(}{it:c}{cmd:)}
返回去掉尾随零的多项式 {it:c}。例如， 
{cmd:polytrim((1,2,3,0))} 返回 (1,2,3)。  
{cmd:polytrim((0,0,0,0))} 返回 (0)。
因此，如果 {it:n} = {cmd:cols(polytrim(}{it:c}{cmd:))}, 则 {it:c} 记录的是一个 ({it:n}-1) 次多项式。

{p 4 4 2}
{cmd:polyderiv(}{it:c}{cmd:,} {it:i}{cmd:)}
返回多项式 {it:c} 的 {it:i} 次导数。 例如，
{cmd:polyderiv((4,2,1), 1)} 返回 (2,2)（4+2{it:x}+{it:x}^2 的导数为 2+2{it:x}）。
多项式 {it:c} 在 {it:x} 处的一阶导数值为
{cmd:polyeval(polyderiv(}{it:c}{cmd:,1),} {it:x}{cmd:)}。

{p 4 4 2}
{cmd:polyinteg(}{it:c}{cmd:,} {it:i}{cmd:)}
返回多项式 {it:c} 的 {it:i} 次积分。 例如，
{cmd:polyinteg((4,2,1), 1)} 返回 (0,4,1,.3333)
（4+2{it:x}+{it:x}^2 的积分为 
0+4{it:x}+{it:x}^2+.3333{it:x}^3）。
多项式 {it:c} 在 {it:x} 处的积分值为
{cmd:polyeval(polyinteg(}{it:c}{cmd:,1),} {it:x}{cmd:)}。

{p 4 4 2}
{cmd:polyadd(}{it:c1}{cmd:,} {it:c2}{cmd:)}
返回多项式 {it:c1} 和 {it:c2} 的和。  
例如， 
{cmd:polyadd((2,1), (3,5,1))} 等于 (5,6,1)
（2+{it:x} 和 3+5{it:x}+{it:x}^2 的和为 
5+6{it:x}+{it:x}^2）。

{p 4 4 2}
{cmd:polymult(}{it:c1}{cmd:,} {it:c2}{cmd:)}
返回多项式 {it:c1} 和 {it:c2} 的乘积。
例如， 
{cmd:polymult((2,1), (3,5,1))} 等于 (6,13,7,1) 
（2+{it:x} 和 3+5{it:x}+{it:x}^2 的乘积为 
6+13{it:x}+7{it:x}^2+{it:x}^3）。

{p 4 4 2}
{cmd:polydiv(}{it:c1}{cmd:,} {it:c2}{cmd:,} {it:cq}{cmd:,} {it:cr}{cmd:)} 
计算多项式 {it:c1}/{it:c2}，将商多项式存储在
{it:cq} 中，并将余数多项式存储在 {it:cr} 中。  
例如， 
{cmd:polydiv((3,5,1), (2,1),} {it:cq}{cmd:,} {it:cr}{cmd:)}
返回
{it:cq}=(3,1) 和 {it:cr}=(-3)；也就是说，

		3+5{it:x}+{it:x}^2
		--------   =  3+{it:x} 余数为 -3
		   2+{it:x}

{p 4 4 2}
或者

		3+5{it:x}+{it:x}^2   =  (3+{it:x})(2+{it:x}) - 3

{p 4 4 2}
{cmd:polyroots(}{it:c}{cmd:)} 查找多项式 {it:c} 的根，并 
以复数行向量的形式返回（即使 {it:c} 为实数）。例如， {cmd:polyroots((3,5,1))} 返回 (-4.303+0i, -.697+0i) （3+5{it:x}+{it:x}^2 的根为 -4.303 和 -.697）。

{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection M-5 polyeval()备注和示例:备注和示例}

{pstd}
上述部分不包括在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
给定在 {it:x} 上定义的实数或复数系数 {it:c}，它们定义了一个 {it:n}-1 次多项式，{cmd:polyroots(}{it:c}{cmd:)} 返回 {it:n}-1 个根，使得

		0 = {it:c}_1 + {it:c}_2 * {it:x}^1 + {it:c}_3 * {it:x}^2 + ... + {it:c}_{it:n} * {it:x}^({it:n}-1)

{p 4 4 2}
{cmd:polyroots(}{it:c}{cmd:)} 通过计算伴随矩阵的特征值来获取根。 由 {it:c} 定义的多项式的 ({it:n}-1) x ({it:n}-1) 伴随矩阵为

                 {c TLC}                                                   {c TRC}
                 {c |} -{it:c}_[{it:n}-1]*{it:s}   -{it:c}_[{it:n}-2]*{it:s}  .  .  .  -{it:c}_[2]*{it:s}   -{it:c}_[1]*{it:s} {c |}
                 {c |}     1           0      .  .  .     0         0    {c |}
                 {c |}     0           1      .  .  .     0         0    {c |}
                 {c |}     .           .      .           .         .    {c |}
           {it:C}  =  {c |}     .           .         .        .         .    {c |}
                 {c |}     .           .            .     .         .    {c |}
                 {c |}     0           0      .  .  .     1         0    {c |}
                 {c |}     0           0      .  .  .     0         1    {c |}
                 {c BLC}                                                   {c BRC}


{p 4 4 2}
其中

	{it:s}  =  1/{it:c}_[{it:n}]

{p 4 4 2}
如果 {it:c} 是实数则 

	{it:s}  =  C(Re({it:c}_[{it:n}])/(Re({it:c}_[{it:n}])^2+Im({it:c}_[{it:n}])^2),
					-Im({it:c}_[{it:n}])/(Re({it:c}_[{it:n}])^2+Im({it:c}_[{it:n}])^2))

{p 4 4 2}
否则。

{p 4 4 2}
在所有非对称特征值问题中，返回的根为复数
并按从大到小排序，参见 
{bf:{help mf_eigensystem_zh:[M-5] eigensystem()}}。


{marker conformability}{...}
{title:可容性}

    {cmd:polyeval(}{it:c}{cmd:,} {it:x}{cmd:)}:
		{it:c}:  1 {it:x n}, {it:n}>0
		{it:x}:  {it:r x 1}  或  1 {it:x c}
	   {it:result}:  {it:r x 1}  或  1 {it:x c}

    {cmd:polysolve(}{it:y}{cmd:,} {it:x}{cmd:)}:
		{it:y}:  {it:n x} 1  或  1 {it:x n}, {it:n}>=1
		{it:x}:  {it:n x} 1  或  1 {it:x n}
	   {it:result}:  1 {it:x k}, 1 <= {it:k} <= {it:n}

    {cmd:polytrim(}{it:c}{cmd:)}:
		{it:c}:  1 {it:x n}
	   {it:result}:  1 {it:x k}, 1<={it:k}<={it:n}

    {cmd:polyderiv(}{it:c}{cmd:,} {it:i}{cmd:)}:
		{it:c}:  1 {it:x n}, {it:n}>0
		{it:i}:  1 {it:x} 1, {it:i} 可能为负
	   {it:result}:  1 {it:x} max(1, {it:n}-{it:i})

    {cmd:polyinteg(}{it:c}{cmd:,} {it:i}{cmd:)}:
		{it:c}:  1 {it:x n}, {it:n}>0
		{it:i}:  1 {it:x} 1, {it:i} 可能为负
	   {it:result}:  1 {it:x} max(1, {it:n}+{it:i})

    {cmd:polyadd(}{it:c1}{cmd:,} {it:c2}{cmd:)}:
	       {it:c1}:  1 {it:x n1}, {it:n1}>0
	       {it:c2}:  1 {it:x n2}, {it:n2}>0
	   {it:result}:  1 {it:x} max({it:n1}, {it:n2})

    {cmd:polymult(}{it:c1}{cmd:,} {it:c2}{cmd:)}:
	       {it:c1}:  1 {it:x n1}, {it:n1}>0
	       {it:c2}:  1 {it:x n2}, {it:n2}>0
	   {it:result}:  1 {it:x} {it:n1}+{it:n2}-1
		
    {cmd:polydiv(}{it:c1}{cmd:,} {it:c2}{cmd:,} {it:cq}{cmd:,} {it:cr}{cmd:)}:
	{it:输入}:
	       {it:c1}:  1 {it:x n1}, {it:n1}>0
	       {it:c2}:  1 {it:x n2}, {it:n2}>0
	{it:输出}:
	       {it:cq}:  1 {it:x k1}, 1 <= {it:k1} <= max({it:n1}-{it:n2}+1, 1)
	       {it:cr}:  1 {it:x k2}, 1 <= {it:k2} <= max({it:n1}-{it:n2}, 1)

    {cmd:polyroots(}{it:c}{cmd:)}:
		{it:c}:  1 {it:x n}, {it:n}>0
	   {it:result}:  1 {it:x k}-1, {it:k} = {cmd:cols(polytrim(}{it:c}{cmd:))}


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
如果多项式系数行向量为空，则所有函数会中止并报错，但它们不一定会给出指示问题的错误消息。多项式系数行向量可以包含缺失值。

{p 4 4 2}
{cmd:polyderiv(}{it:c}{cmd:,} {it:i}{cmd:)} 当 {it:i}=0 时返回 {it:c}。 
当 {it:i}<0 时返回 
{cmd:polyinteg(}{it:c}{cmd:,} -{it:i}{cmd:)}。 
当 {it:i} 缺失时返回 (0)（可以将缺失视为正无穷）。

{p 4 4 2}
{cmd:polyinteg(}{it:c}{cmd:,} {it:i}{cmd:)} 当 {it:i}=0 时返回 {it:c}。 
当 {it:i}<0 时返回 
{cmd:polyderiv(}{it:c}{cmd:,} -{it:i}{cmd:)}。 
当 {it:i} 缺失时会中止并报错
（可以将缺失视为正无穷）。

{p 4 4 2}
当 {it:c} 的任何元素等于缺失值时， {cmd:polyroots(}{it:c}{cmd:)} 会返回一个缺失值的向量。


{marker source}{...}
{title:源代码}

{p 4 4 2}
{view polyeval.mata, adopath asis:polyeval.mata},
{view polysolve.mata, adopath asis:polysolve.mata},
{view polytrim.mata, adopath asis:polytrim.mata},
{view polyderiv.mata, adopath asis:polyderiv.mata},
{view polyinteg.mata, adopath asis:polyinteg.mata},
{view polyadd.mata, adopath asis:polyadd.mata},
{view polymult.mata, adopath asis:polymult.mata},
{view polydiv.mata, adopath asis:polydiv.mata},
{view polyroots.mata, adopath asis:polyroots.mata}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_polyeval.sthlp>}