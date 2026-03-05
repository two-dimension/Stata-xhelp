
{help f_nullmat:English Version}
{hline}
{* *! version 1.1.2  21mar2018}{...}
    {cmd:nullmat(}{it:matname}{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述：}与行连接 ({cmd:,}) 和列连接 ({cmd:\}) 运算符一起使用{p_end}
	
{p2col:}考虑以下代码片段，它试图创建向量 (1,2,3,4)：

                           {cmd}forvalues i = 1/4 {
		                   mat v = (v, `i')
                           }{txt}

{p2col:}上述程序将无法工作，因为在循环的第一次执行中，{cmd:v} 尚不存在，因此形成 {cmd:(v, `i')} 是没有意义的。 {cmd:nullmat()} 放宽了这一限制：

                           {cmd}forvalues i = 1/4 {
		                   mat v = (nullmat(v), `i')
                           }{txt}

{p2col:}函数 {cmd:nullmat()} 告诉 Stata，如果 {cmd:v} 不存在，则行连接的泛化应予以应用。将空与 {cmd:`i'} 连接的结果是 {cmd:(`i')}。因此，在循环的第一次执行中，{cmd:v} = (1) 被形成。在第二次执行时，{cmd:v} 确实存在，因此 {cmd:v} = (1,2) 被形成，依此类推。{p_end}

{p2col:}{cmd:nullmat()} 仅可与 {cmd:,} 和 {cmd:\} 运算符一起使用。{p_end}
{p2col: 领域：}矩阵名称，包括存在和不存在的{p_end}
{p2col: 范围：}包括空矩阵在内的矩阵，如果 {it:matname} 不存在{p_end}
{p2colreset}{...}