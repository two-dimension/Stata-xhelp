{smcl}
{* *! version 1.1.3  20sep2014}{...}
{vieweralsosee "[P] matrix" "help matrix_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[P] matrix define" "help matrix_define_zh"}{...}
{vieweralsosee "[FN] Matrix functions" "help matrix_functions_zh"}{...}
{viewerjumpto "描述" "matrix_operators_zh##description"}{...}
{viewerjumpto "示例" "matrix_operators_zh##examples"}
{help matrix_operators:English Version}
{hline}{...}
{title:标题}

    矩阵运算符


{marker description}{...}
{title:描述}

{pstd}
矩阵运算符在此列出。有关背景信息和更多矩阵帮助链接，请参见 {manhelp matrix P}。

{pstd}
让 {it:B} 和 {it:C} 表示矩阵名称或矩阵表达式。让 {it:z} 表示数字或标量表达式。

{pstd}
矩阵单目运算符是

	{cmd:-}{it:B}      取反
	{it:B}{cmd:'}      转置

{pstd}
矩阵双目运算符是

{p 8 18 2}{it:B} {cmd:\} {it:C} {space 1} 在 {it:B} 的下方添加 {it:C} 的行（行连接）{p_end}
{p 8 18 2}{it:B} {cmd:,} {it:C} {space 1} 在 {it:B} 的右侧添加 {it:C} 的列（列连接）{p_end}
{p 8 18 2}{it:B} {cmd:+} {it:C} {space 1} 加法{p_end}
{p 8 18 2}{it:B} {cmd:-} {it:C} {space 1} 减法{p_end}
{p 8 18 2}{it:B} {cmd:*} {it:C} {space 1} 乘法（包括与标量相乘）{p_end}
{p 8 18 2}{it:B} {cmd:/} {it:z} {space 1} 除以标量{p_end}
{p 8 18 2}{it:B} {cmd:#} {it:C} {space 1} 克罗内克积

{pstd}
可以使用括号来控制运算顺序。矩阵运算符的默认优先级顺序（从最高到最低）是

            运算符               符号
	    {hline 29}
	    括号                  {cmd:()}
	    转置                  {cmd:'}
	    取反                  {cmd:-}
	    克罗内克积            {cmd:#}
	    除以标量             {cmd:/}
	    乘法                  {cmd:*}
	    减法                  {cmd:-}
	    加法                  {cmd:+}
	    列连接                {cmd:,}
	    行连接                {cmd:\}
	    {hline 29}


{marker examples}{...}
{title:示例}

{phang}{cmd:. matrix A = (1,2\3,4)}{p_end}
{phang}{cmd:. matrix B = (5,7\9,2)}{p_end}
{phang}{cmd:. matrix C = A+B}{p_end}
{phang}{cmd:. matrix list C}

{phang}{cmd:. matrix B = A-B}{p_end}
{phang}{cmd:. matrix list B}

{phang}{cmd:. matrix X = (1,1\2,5\8,0\4,5)}{p_end}
{phang}{cmd:. matrix C = 3*X*A'*B}{p_end}
{phang}{cmd:. matrix list C}

{phang}{cmd:. matrix D = (X'*X - A'*A)/4}{p_end}
{phang}{cmd:. matrix rownames D = dog cat}{p_end}
{phang}{cmd:. matrix colnames D = bark meow}{p_end}
{phang}{cmd:. matrix list D}{p_end}

{phang}{cmd:. matrix rownames A = aa bb}{p_end}
{phang}{cmd:. matrix colnames A = alpha beta}{p_end}
{phang}{cmd:. matrix list A}

{phang}{cmd:. matrix D=A#D}{p_end}
{phang}{cmd:. matrix list D}

{phang}{cmd:. matrix G=A,B\D}{p_end}
{phang}{cmd:. matrix list G}

{phang}{cmd:. matrix Z = (B - A)'*(B + A'*-B)/4}{p_end}
{phang}{cmd:. matrix list Z}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <matrix_operators.sthlp>}