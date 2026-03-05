{smcl}
{* *! version 1.1.12  08may2019}{...}
{vieweralsosee "[P] matrix" "mansection P matrix"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[P] ereturn" "help ereturn_zh"}{...}
{vieweralsosee "[P] matrix define" "help matrix define"}{...}
{vieweralsosee "[R] ml" "help ml_zh"}
{help matrix:English Version}
{hline}{...}
{p2colset 1 15 17 2}{...}
{p2col:{bf:[P] matrix} {hline 2}}矩阵命令摘要{p_end}
{p2col:}({mansection P matrix:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{title:描述}

{pstd}
以下标题下提供了相关评论。

	 主题{col 57}另见帮助
    {hline 72}
     1.  手动输入矩阵{col 57}{helpb matrix define}
     
     2.  矩阵表达式
	   矩阵运算符{col 57}{help matrix operators}
	   矩阵函数{col 57}{help matrix functions}
	   
     3.  矩阵下标{col 57}{help matrix subscripting}

     4.  子矩阵提取{col 57}{help matrix extraction}

     5.  子矩阵替换{col 57}{help matrix substitution}

     6.  数据 <{hline 3}> 矩阵转换{col 57}{help mkmat_zh}

     7.  获取系统矩阵的副本{col 57}{helpb get():matrix get}

     8.  矩阵分解
	   对称矩阵的特征值和特征向量{col 57}{helpb matrix symeigen}
	   非对称矩阵的特征值{col 57}{helpb matrix eigenvalues}
	   奇异值分解{col 57}{helpb matrix svd}

     9.  设置行和列名称{col 57}{helpb matrix rownames}

    10.  有关矩阵的宏函数{col 57}{help matmacfunc_zh}

    11.  累积交叉乘积矩阵{col 57}{helpb matrix accum}
    
    12.  从系数向量生成分数{col 57}{helpb matrix score}
    
    13.  （不）相似性度量{col 57}{helpb matrix dissimilarity}

    14.  约束处理{col 57}{help makecns_zh}

    15.  矩阵连接
           按行名称连接矩阵{col 57}{helpb matrix rowjoinbyname}
           按列名称连接矩阵{col 57}{helpb matrix coljoinbyname}

    16.  矩阵工具{col 57}{help matrix utility}
    {hline 72}


{pstd}
在语法图中，大写字母 {it:A}, {it:B}, ..., {it:Z} 代表矩阵名称。完整细节见 {manlink P matrix}。

{pstd}
除了 {cmd:matrix} 命令外，Stata 还有完整的矩阵编程语言 Mata，提供更高级的矩阵函数，支持复杂矩阵，快速执行速度，并能直接访问 Stata 的数据、宏、矩阵和返回结果。Mata 可以作为矩阵计算器交互使用，但更适合用于编程；见 {help mata_zh:[M-0] 介绍}。


{title:1.  手动输入矩阵}{...}
{right:(见 {manhelp matrix_define P:matrix define})  }

{p 8 19 2}{cmdab:mat:rix} {cmdab:in:put} {it:A} {cmd:= (}{it:#}[{cmd:,}{it:#...}]
		[{cmd:\} {it:#}[{cmd:,}{it:#...}] [{cmd:\} [{it:...}]]]{cmd:)}

    示例:
{phang2}{cmd:. matrix input mymat = (1,2\3,4)}{p_end}
{phang2}{cmd:. matrix input myvec = (1.7, 2.93, -5, 3)}{p_end}
{phang2}{cmd:. matrix input mycol = (1.7\ 2.93\ -5\ 3)}

{pstd}
如果省略 {cmd:input} 子命令，上述命令也会工作：

{phang2}{cmd:. matrix X = (1+1, 2*3/4 \ 5/2, 3)}{p_end}

{pstd}
可以理解，但

{phang2}{cmd:. matrix input X = (1+1, 2*3/4 \ 5/2, 3)}{p_end}

{pstd}
将产生错误。

{pstd}
然而，{cmd:matrix input} 有两个其他优点。首先，它允许输入大型矩阵。
（表达式解析器有限，因为它必须“编译”表达式，如果太长会产生错误。）
其次，{cmd:matrix input} 允许省略逗号。


{title:2.  矩阵表达式}{right:(见 {manlink P matrix define};  }
{right:{help matrix operators}   }
{right:和 {help matrix functions})  }

{pstd}
在 Stata 中允许复杂的矩阵表达式。

{p 8 14 2}{cmdab:mat:rix} {it:A} {cmd:=} {it:matrix_expression}

    示例:
{phang2}{cmd:. matrix D {space 2} = B}{p_end}
{phang2}{cmd:. matrix beta = invsym(X'*X)*X'*y}{p_end}
{phang2}{cmd:. matrix C {space 2} = (C+C')/2}{p_end}
{phang2}{cmd:. matrix sub{space 2}= x[1..., 2..5]/2}{p_end}
{phang2}{cmd:. matrix L = cholesky(0.1*I(rowsof(X)) + 0.9*X)}

{pstd}
可用的矩阵运算符和函数的详细信息见 {manlink P matrix define}；见 {help matrix operators} 和 {help matrix functions}。


{title:3.  矩阵下标}{right:(见 {manlink P matrix define};  }
{right:{help matrix subscripting})  }

{p 8 14 2}
{cmdab:mat:rix} {it:A} {cmd:=} {it:...} {it:B}{cmd:[}{it:r}{cmd:,}{it:c}{cmd:]} {it:...}

{pstd}
其中 {it:r} 和 {it:c} 是数字或字符串标量表达式。

    示例:
{phang2}{cmd:. matrix A = A/A[1,1]}{p_end}
{phang2}{cmd:. matrix B = A["weight","displ"]}{p_end}
{phang2}{cmd:. matrix D = G[1,"eq1:l1.gnp"]}

{pstd}
在任何表达式上下文（例如 {cmd:generate} 和 {cmd:replace}）中都可以使用数字表达式的下标。按行/列名称进行下标仅可用于矩阵上下文。（这不是限制；见
{mansection P matrixdefineRemarksandexamplesMatrixfunctionsreturningscalars:{bf:rownumb()}} 和
{mansection P matrixdefineRemarksandexamplesMatrixfunctionsreturningscalars:{bf:colnumb()}}
在 {bf:[P] matrix define} 和 {help matrix functions} 中返回标量的矩阵函数；它们可以在任何表达式上下文中使用。）


{title:4.  子矩阵提取}{right:(见 {mansection P matrixdefineRemarksandexamplesSubscriptingandelement-by-elementdefinition:{bf:[P] matrix define}};  }
{right:{help matrix extraction})  }

{p 8 14 2}{cmdab:mat:rix} {it:A} {cmd:=} {it:...} {it:B}{cmd:[}{it:r0}{cmd:..}{it:r1}{cmd:,}
				{it:c0}{cmd:..}{it:c1}{cmd:]} {it:...}

{pstd}
其中 {it:r0}, {it:r1}, {it:c0} 和 {it:c1} 是数字或字符串标量表达式。

    示例:
{phang2}{cmd:. matrix A = B[2..4, 3..6]}{p_end}
{phang2}{cmd:. matrix A = B[2..., 2...]}{p_end}
{phang2}{cmd:. matrix A = B[1, "price".."mpg"]}{p_end}
{phang2}{cmd:. matrix A = B["eq1:", "eq1:"]}


{title:5.  子矩阵替换}{right:(见 {mansection P matrixdefineRemarksandexamplesSubscriptingandelement-by-elementdefinition:{bf:[P] matrix define}};  }
{right:{help matrix substitution})  }

{p 8 14 2}{cmdab:mat:rix} {it:A}{cmd:[}{it:r}{cmd:,}{it:c}{cmd:]} {cmd:=} {it:...}

{pstd}
其中 {it:r} 和 {it:c} 是数字标量表达式。

{pstd}
如果等号右侧的矩阵表达式计算为标量或 1 x 1 矩阵，则替换 {it:A} 的指定元素。如果矩阵表达式计算为矩阵，则结果矩阵将放置在 {it:A} 中，其左上角位于 ({it:r},{it:c})。

    示例:
{phang2}{cmd:. matrix A[2,2] = B}{p_end}
{phang2}{cmd:. matrix A[rownumb(A,"price"), colnumb(A,"mpg")] = sqrt(2)}


{title:6.  数据 <{hline 3}> 矩阵转换}{right:(见 {manhelp mkmat P:matrix mkmat})  }

{pstd}
变量可以被转换为矩阵，矩阵也可以被转换为变量。详细信息见 {manhelp mkmat P:matrix mkmat}。


{title:7.  获取系统矩阵的副本}{right:(见 {manhelp get() P:matrix get})  }

{pstd}
在执行生成矩阵的命令后，获取矩阵的通常方法是以标准方式引用返回的矩阵。例如，所有估计命令都返回

{p 8 20 2}{hi:e(b)} {space 6} 系数向量{p_end}
{p 8 20 2}{hi:e(V)} {space 6} 估计值的方差-协方差矩阵 (VCE)

{pstd}
而且这些矩阵可以直接引用。

    示例:
{phang2}{cmd:. matrix list e(b)}{p_end}
{phang2}{cmd:. matrix myV = e(V)}

{pstd}
其他矩阵由各种命令返回。它们的获取方式相同。{cmd:get()} 函数也可以在某些命令后获取矩阵；见 {manhelp get() P:matrix get}。


{title:8.  矩阵分解}{right:(见 {manhelp matrix_symeigen P:matrix symeigen},     }
{right:{manhelp matrix_eigenvalues P:matrix eigenvalues},  }
{right:和 {manhelp matrix_svd P:matrix svd})          }

{pstd}
获取对称矩阵的特征值和特征向量详细信息见 {manhelp matrix_symeigen P:matrix symeigen}。
获取方阵的实部和虚部特征值详细信息见 {manhelp matrix_eigenvalues P:matrix eigenvalues}。
矩阵的奇异值分解详细信息见 {manhelp matrix_svd P:matrix svd}。如果您需要 Cholesky 分解或矩阵扫描函数，则见 
{mansection P matrixdefineRemarksandexamplescholesky():{bf:cholesky()}} 和 
{mansection P matrixdefineRemarksandexamplessweep():{bf:sweep()}}
在 {bf:[P] matrix define} 中返回矩阵的矩阵函数； 也见 {help matrix functions}。


{title:9.  设置行和列名称}{right:(见 {manhelp matrix_rownames P:matrix rownames})  }

{pstd}
矩阵的行和列名称在 Stata 中具有特殊含义 -- 它们指示帮助创建矩阵的变量、方程和时间序列运算符的名称。Stata 会在进行矩阵操作时自动保留这些名称，并使用这些名称生成适当标记的命令输出。

{pstd}
在大多数情况下，您无需担心手动设置矩阵的行和列名称。有关如何手动设置矩阵行和列名称的详细信息，请参见 {manhelp matrix_rownames P:matrix rownames}。


{title:10.  有关矩阵的宏函数}{...}
{right:(见 {mansection P matrixdefineRemarksandexamplesMacrofunctions:{bf:[P] matrix define}};  }
{right:{help matmacfunc_zh})  }

{pstd}
以下宏函数可以与 {cmd:local} 和 {cmd:global} 一起使用：

	{cmd:: rowfullnames} {it:A}
	{cmd:: colfullnames} {it:A}

	{cmd:: rownames} {it:A}
	{cmd:: colnames} {it:A}

	{cmd:: roweq} {it:A}
	{cmd:: coleq} {it:A}

    示例:
{phang2}{cmd:. local names : rownames mymat}{p_end}
{phang2}{cmd:. local names : rowfullnames mymat}{p_end}
{phang2}{cmd:. local names : colfullnames e(b)}


{title:11.  累积交叉乘积矩阵}{...}
{right:(见 {manhelp matrix_accum P:matrix accum})  }

{pstd}
大多数统计计算涉及矩阵运算，例如 X'X 或 X'WX。在这些情况下，X 可能有非常多的行，通常列数较少到中等。W 通常采用受限形式（对角线、块对角线，或已知某种功能形式而不需要存储）。通过存储矩阵然后直接执行矩阵乘法计算 X'X 或 X'WX 是低效且浪费的。Stata 具有矩阵交叉乘积分配命令，可以高效计算这些结果。见 {manhelp matrix_accum P:matrix accum}。


{title:12.  从系数向量生成分数}{...}
{right:(见 {manhelp matrix_score P:matrix score})  }

{pstd}
评分是指根据系数向量形成数据中变量的线性组合。这可以通过 {cmd:matrix score} 命令轻松实现；见 {manhelp matrix_score P:matrix score}。


{title:13.  （不）相似性度量}{...}
{right:(见 {manhelp matrix_dissimilarity P:matrix dissimilarity})  }

{pstd}
许多连续或二元数据的相似性、不相似性和距离度量可用；见 {manhelpi measure_option MV}。
{cmd:matrix dissimilarity} 允许您计算观察值或变量之间的（不）相似性；见 {manhelp matrix_dissimilarity P:matrix dissimilarity}。


{title:14.  约束处理}{...}
{right:(见 {manhelp makecns P})  }

{pstd}
允许约束估计的估计命令使用 {help constraint_zh} 命令定义约束。程序编写者可以使用 {manhelp makecns P} 中的命令集成这些相同的功能。


{title:15.  矩阵连接}{right:(见 {manhelp matrix_rowjoinbyname P:matrix rowjoinbyname})  }

{pstd}
有时您需要在匹配列名称的同时连接行，或在匹配行名称的同时连接列。命令 {cmd:matrix rowjoinbyname} 和 {cmd:matrix coljoinbyname} 允许这样做。


{title:16.  矩阵工具}{right:(见 {manhelp matrix_utility P:matrix utility})  }

{pstd}
有用于矩阵的工具：

{p 8 27 2}{cmd:matrix dir} {space 6} 列出当前定义的矩阵{p_end}
{p 8 27 2}{cmd:matrix list} {space 5} 显示矩阵的内容{p_end}
{p 8 27 2}{cmd:matrix rename} {space 3} 重命名矩阵{p_end}
{p 8 27 2}{cmd:matrix drop} {space 5} 删除矩阵

{pstd}
有关详细信息，请参见 {manhelp matrix_utility P:matrix utility}。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <matrix.sthlp>}