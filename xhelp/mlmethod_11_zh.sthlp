
{smcl}
{* *! version 1.2.4  10oct2017}{...}
{cmd:help mlmethod_11}{right:{help prdocumented_zh:以前已记录}}
{hline}
{help mlmethod_11:English Version}
{hline}

{p2colset 4 14 16 2}{...}
{p2col :{manlink R ml} {hline 2}}用于ml方法lf、d0、d1、d2、e1、e2、v0、v1和v2的用户编写评估程序{p_end}
{p2colreset}{...}

{p 12 12 8}
{it}[与{bf:ml}的评估器类型相关的名称已在版本11中更改。
此帮助文件记录了{cmd:ml}的旧语法，因此可能对您没有兴趣。您无需将旧do文件中的{cmd:ml}调用翻译为现代语法，因为Stata继续理解旧语法和新语法。此帮助文件是提供给希望调试或理解旧代码的人。
点击{help ml_zh:这里}查看现代{cmd:ml}命令的帮助文件。]{rm}

{title:描述}

{pstd}
{help ml_zh}命令需要一个评估对数似然函数的Mata函数或Stata程序。
这个函数或程序统称为用户编写的评估器。
在{helpb moptimize_11##syn_alleval:moptimize_11}中记录了用Mata编写的评估器函数。
这里记录了用Stata编写的评估程序。

{pstd}
{cmd:ml}支持命令{cmd:mleval}、{cmd:mlsum}、{cmd:mlvecsum}、{cmd:mlmatsum}和{cmd:mlmatbysum}对编写d0、d1、d2、e1、e2、v0、v1和v2评估程序非常有帮助；请参见{help mleval_11_zh}。

{title:方法lf评估器}

{p 8 14 2}{cmd:program} {it:progname}{p_end}
{p 12 18 2}{cmd:version {ccl stata_version}}{p_end}
{p 12 18 2}{cmd:args lnfj theta1 theta2} {it:...}{p_end}
{p 12 18 2}// 如果需要创建任何中间结果：{p_end}
{p 12 18 2}{cmd:tempvar tmp1 tmp2} {it:...}{p_end}
{p 12 18 2}{cmd:quietly gen double `tmp1' =} {it:...}{p_end}
	    {it:...}
{p 12 18 2}{cmd:quietly replace `lnfj' =} {it:...}{p_end}
	{cmd:end}

    其中

{p 8 24 2}{cmd:`lnfj'} {space 4} 要填充的变量，包含每个观察值的ln l_j值{p_end}
{p 8 24 2}{cmd:`theta1'} {space 2} 包含第一个方程theta_1j = x_1j * b_1的评估的变量{p_end}
{p 8 24 2}{cmd:`theta2'} {space 2} 包含第二个方程theta_2j = x_2j * b_2的评估的变量
	...

{title:方法d0评估器}

{p 8 14 2}{cmd:program} {it:progname}{p_end}
{p 12 16 2}{cmd:version {ccl stata_version}}{p_end}
{p 12 16 2}{cmd:args todo b lnf}{p_end}
{p 12 16 2}{cmd:tempvar theta1 theta2} {it:...}{p_end}
{p 12 16 2}{cmd:mleval `theta1' = `b', eq(1)}{p_end}
{p 12 16 2}{cmd:mleval `theta2' = `b', eq(2)}    // 如果存在theta2{p_end}
			    {it:...}
{p 12 16 2}// 如果需要创建任何中间结果： {p_end}
{p 12 16 2}{cmd:tempvar tmp1 tmp2} {it:...}{p_end}
{p 12 16 2}{cmd:gen double `tmp1' =} {it:...}{p_end}
	    {it:...}
{p 12 16 2}{cmd:mlsum `lnf' =} {it:...}{p_end}
	{cmd:end}

    其中

{p 8 22 2}{cmd:`todo'} {space 2} 始终包含0（可以忽略）{p_end}
{p 8 22 2}{cmd:`b'} {space 5} 完整参数行向量b=(b_1,b_2,...,b_E){p_end}
{p 8 22 2}{cmd:`lnf'} {space 3} 要填充的标量，包含总体lnL{p_end}


{title:方法d1评估器}

{p 8 14 2}{cmd:program} {it:progname}{p_end}
{p 12 18 2}{cmd:version {ccl stata_version}}{p_end}
{p 12 18 2}{cmd:args todo b lnf g}{p_end}
{p 12 18 2}{cmd:tempvar theta1 theta2} {it:...}{p_end}
{p 12 18 2}{cmd:mleval `theta1' = `b', eq(1)}{p_end}
{p 12 18 2}{cmd:mleval `theta2' = `b', eq(2)}    // 如果存在theta2{p_end}
			    {it:...}
{p 12 18 2}// 如果需要创建任何中间结果：{p_end}
{p 12 18 2}{cmd:tempvar tmp1 tmp2} {it:...}{p_end}
{p 12 18 2}{cmd:gen double `tmp1' =} {it:...}{p_end}
	    {it:...}
{p 12 18 2}{cmd:mlsum `lnf' =} {it:...}{p_end}
{p 12 18 2}{cmd:if (`todo'==0 | `lnf'>=.) exit}{p_end}
{p 12 18 2}{cmd:tempname d1 d2} {it:...}{p_end}
{p 12 18 2}{cmd:mlvecsum `lnf' `d1' =} dlnl_j/dtheta_1j的公式{cmd:, eq(1)}{p_end}
{p 12 18 2}{cmd:mlvecsum `lnf' `d2' =} dlnl_j/dtheta_2j的公式{cmd:, eq(2)}{p_end}
			    {it:...}
{p 12 18 2}{cmd:matrix `g' = (`d1',`d2',} {it:...} {cmd:)}{p_end}
	{cmd:end}

    其中

{p 8 23 2}{cmd:`todo'} {space 3} 包含0或1；{p_end}
{p 22 22 2}0 ==> {cmd:`lnf'}要填充；{p_end}
{p 22 22 2}1 ==> {cmd:`lnf'}和{cmd:`g'}要填充{p_end}
{p 8 23 2}{cmd:`b'} {space 6} 完整参数行向量b=(b_1,b_2,...,b_E){p_end}
{p 8 23 2}{cmd:`lnf'} {space 4} 要填充的标量，包含总体lnL{p_end}
{p 8 23 2}{cmd:`g'} {space 6} 要填充的行向量，总体g =
dlnL/db{p_end}


{title:方法d2评估器}

{p 8 14 2}{cmd:program} {it:progname}{p_end}
{p 12 18 2}{cmd:version {ccl stata_version}}{p_end}
{p 12 18 2}{cmd:args todo b lnf g H}{p_end}
{p 12 18 2}{cmd:tempvar theta1 theta2} {it:...}{p_end}
{p 12 18 2}{cmd:mleval `theta1' = `b', eq(1)}{p_end}
{p 12 18 2}{cmd:mleval `theta2' = `b', eq(2)}    // 如果存在theta2{p_end}
			    {it:...}
{p 12 18 2}// 如果需要创建任何中间结果：{p_end}
{p 12 18 2}{cmd:tempvar tmp1 tmp2} {it:...}{p_end}
{p 12 18 2}{cmd:gen double `tmp1' =} {it:...}{p_end}
	    {it:...}
{p 12 18 2}{cmd:mlsum `lnf' =} {it:...}{p_end}
{p 12 18 2}{cmd:if (`todo'==0 | `lnf'>=.) exit}{p_end}
{p 12 18 2}{cmd:tempname d1 d2} {it:...}{p_end}
{p 12 18 2}{cmd:mlvecsum `lnf' `d1' =} dlnl_j/dtheta_1j的公式{cmd:, eq(1)}{p_end}
{p 12 18 2}{cmd:mlvecsum `lnf' `d2' =} dlnl_j/dtheta_2j的公式{cmd:, eq(2)}{p_end}
			    {it:...}
{p 12 18 2}{cmd:matrix `g' = (`d1',`d2',} {it:...} {cmd:)}{p_end}
{p 12 18 2}{cmd:if (`todo'==1 | `lnf'>=.) exit}{p_end}
{p 12 18 2}{cmd:tempname d11 d12 d22} {it:...}{p_end}
{p 12 18 2}{cmd:mlmatsum `lnf' `d11' =} d^2lnl_j/dtheta_1j^2的公式{cmd:, eq(1)}{p_end}
{p 12 18 2}{cmd:mlmatsum `lnf' `d12' =} d^2lnl_j/(dtheta_1j dtheta_2j)的公式{cmd:, eq(1,2)}{p_end}
{p 12 18 2}{cmd:mlmatsum `lnf' `d22' =} d^2lnl_j/dtheta_2j^2的公式{cmd:, eq(2)}{p_end}
			    {it:...}
{p 12 18 2}{cmd:matrix `H' = (`d11',`d12',} {it:...} {cmd:\ `d12'',`d22',}
{it:...} {cmd:)}{p_end}
	{cmd:end}

    其中

{p 8 22 2}{cmd:`todo'} {space 2} 包含0、1或2；{p_end}
{p 22 22 2}0 ==> {cmd:`lnf'}要填充；{p_end}
{p 22 22 2}1 ==> {cmd:`lnf'}和{cmd:`g'}要填充；{p_end}
{p 22 22 2}2 ==> {cmd:`lnf'}、{cmd:`g'}和{cmd:`H'}要填充{p_end}
{p 8 22 2}{cmd:`b'} {space 5} 完整参数行向量b=(b_1,b_2,...,b_E){p_end}
{p 8 22 2}{cmd:`lnf'} {space 3} 要填充的标量，包含总体lnL{p_end}
{p 8 22 2}{cmd:`g'} {space 5} 要填充的行向量，总体g =
dlnL/db{p_end}
{p 8 22 2}{cmd:`H'} {space 5} 要填充的矩阵，总体Hessian H = d^2lnL/dbdb'{p_end}


{title:方法e1评估器}

{p 8 14 2}{cmd:program} {it:progname}{p_end}
{p 12 18 2}{cmd:version {ccl stata_version}}{p_end}
{p 12 18 2}{cmd:args todo b lnf g} {cmd:H g1} {cmd:g2} {it:...}{p_end}
{p 12 18 2}{cmd:tempvar theta1 theta2} {it:...}{p_end}
{p 12 18 2}{cmd:mleval `theta1' = `b', eq(1)}{p_end}
{p 12 18 2}{cmd:mleval `theta2' = `b', eq(2)}    // 如果存在theta2{p_end}
			    {it:...}
{p 12 18 2}// 如果需要创建任何中间结果：{p_end}
{p 12 18 2}{cmd:tempvar tmp1 tmp2} {it:...}{p_end}
{p 12 18 2}{cmd:gen double `tmp1' =} {it:...}{p_end}
	    {it:...}
{p 12 18 2}{cmd:mlsum `lnf' =} {it:...}{p_end}
{p 12 18 2}{cmd:if (`todo'==0 | `lnf'>=.) exit}{p_end}
{p 12 18 2}{cmd:quietly replace `g1' =} dlnl_j/dtheta_1j的公式{p_end}
{p 12 18 2}{cmd:quietly replace `g2' =} dlnl_j/dtheta_2j的公式{p_end}
			    {it:...}
	{cmd:end}

    其中

{p 8 23 2}{cmd:`todo'} {space 3} 包含0或1；{p_end}
{p 22 22 2}0 ==> {cmd:`lnf'}要填充；{p_end}
{p 22 22 2}1 ==> {cmd:`lnf'}、{cmd:`g1'}、{cmd:`g2'}, {it:...}要填充{p_end}
{p 8 23 2}{cmd:`b'} {space 6} 完整参数行向量b=(b_1,b_2,...,b_E){p_end}
{p 8 23 2}{cmd:`lnf'} {space 4} 要填充的标量，包含总体lnL{p_end}
{p 8 23 2}{cmd:`g'} {space 6} 要忽略的参数{p_end}
{p 8 23 2}{cmd:`H'} {space 6} 要忽略的参数{p_end}
{p 8 23 2}{cmd:`g1'} {space 5} 要填充的变量，包含dlnl_j/dtheta_1j{p_end}
{p 8 23 2}{cmd:`g2'} {space 5} 要填充的变量，包含dlnl_j/dtheta_2j{p_end}
	...

{title:方法e2评估器}

{p 8 14 2}{cmd:program} {it:progname}{p_end}
{p 12 18 2}{cmd:version {ccl stata_version}}{p_end}
{p 12 18 2}{cmd:args todo b lnf g H g1 g2} {it:...}{p_end}
{p 12 18 2}{cmd:tempvar theta1 theta2} {it:...}{p_end}
{p 12 18 2}{cmd:mleval `theta1' = `b', eq(1)}{p_end}
{p 12 18 2}{cmd:mleval `theta2' = `b', eq(2)}    // 如果存在theta2{p_end}
			    {it:...}
{p 12 18 2}// 如果需要创建任何中间结果：{p_end}
{p 12 18 2}{cmd:tempvar tmp1 tmp2} {it:...}{p_end}
{p 12 18 2}{cmd:gen double `tmp1' =} {it:...}{p_end}
	    {it:...}
{p 12 18 2}{cmd:mlsum `lnf' =} {it:...}{p_end}
{p 12 18 2}{cmd:if (`todo'==0 | `lnf'>=.) exit}{p_end}
{p 12 18 2}{cmd:quietly replace `g1' =} dlnl_j/dtheta_1j的公式{p_end}
{p 12 18 2}{cmd:quietly replace `g2' =} dlnl_j/dtheta_2j的公式{p_end}
			    {it:...}
{p 12 18 2}{cmd:if (`todo'==1) exit}{p_end}
{p 12 18 2}{cmd:tempname d11 d12 d22} {it:...}{p_end}
{p 12 18 2}{cmd:mlmatsum `lnf' `d11' =} d^2lnl_j/dtheta_1j^2的公式{cmd:, eq(1)}{p_end}
{p 12 18 2}{cmd:mlmatsum `lnf' `d12' =} d^2lnl_j/(dtheta_1j dtheta_2j)的公式{cmd:, eq(1,2)}{p_end}
{p 12 18 2}{cmd:mlmatsum `lnf' `d22' =} d^2lnl_j/dtheta_2j^2的公式{cmd:, eq(2)}{p_end}
			    {it:...}
{p 12 18 2}{cmd:matrix `H' = (`d11',`d12',} {it:...} {cmd:\ `d12'',`d22',}
{it:...} {cmd:)}{p_end}
	{cmd:end}

    其中

{p 8 22 2}{cmd:`todo'} {space 2} 包含0、1或2；{p_end}
{p 22 22 2}0 ==> {cmd:`lnf'}要填充；{p_end}
{p 22 22 2}1 ==> {cmd:`lnf'}、{cmd:`g1'}、{cmd:`g2'}, {it:...}要填充；{p_end}
{p 22 22 2}2 ==> {cmd:`lnf'}、{cmd:`g1'}、{cmd:`g2'}, {it:...}和{cmd:`H'}要填充；{p_end}
{p 8 22 2}{cmd:`b'} {space 5} 完整参数行向量b=(b_1,b_2,...,b_E){p_end}
{p 8 22 2}{cmd:`lnf'} {space 3} 要填充的标量，包含总体lnL{p_end}
{p 8 23 2}{cmd:`g'} {space 5} 要忽略的参数{p_end}
{p 8 22 2}{cmd:`H'} {space 5} 要填充的矩阵，总体Hessian H = d^2lnL/dbdb'{p_end}
{p 8 22 2}{cmd:`g1'} {space 4} 要填充的变量，包含dlnl_j/dtheta_1j{p_end}
{p 8 22 2}{cmd:`g2'} {space 4} 要填充的变量，包含dlnl_j/dtheta_2j{p_end}
	...

{title:方法v0评估器}

{p 8 14 2}{cmd:program} {it:progname}{p_end}
{p 12 16 2}{cmd:version {ccl stata_version}}{p_end}
{p 12 16 2}{cmd:args todo b lnfj}{p_end}
{p 12 16 2}{cmd:tempvar theta1 theta2} {it:...}{p_end}
{p 12 16 2}{cmd:mleval `theta1' = `b', eq(1)}{p_end}
{p 12 16 2}{cmd:mleval `theta2' = `b', eq(2)}    // 如果存在theta2{p_end}
	    {it:...}
{p 12 16 2}// 如果需要创建任何中间结果： {p_end}
{p 12 16 2}{cmd:tempvar tmp1 tmp2} {it:...}{p_end}
{p 12 16 2}{cmd:gen double `tmp1' =} {it:...}{p_end}
	    {it:...}
{p 12 16 2}{cmd:quietly replace `lnfj' =} {it:...}{p_end}
	{cmd:end}

    其中

{p 8 22 2}{cmd:`todo'} {space 2} 始终包含0（可以忽略）{p_end}
{p 8 22 2}{cmd:`b'} {space 5} 完整参数行向量b=(b_1,b_2,...,b_E){p_end}
{p 8 22 2}{cmd:`lnfj'} {space 2} 要填充的变量，包含对数似然的值ln l_j{p_end}


{title:方法v1评估器}

{p 8 14 2}{cmd:program} {it:progname}{p_end}
{p 12 18 2}{cmd:version {ccl stata_version}}{p_end}
{p 12 18 2}{cmd:args todo b lnfj g H g1 g2} {it:...}{p_end}
{p 12 18 2}{cmd:tempvar theta1 theta2} {it:...}{p_end}
{p 12 18 2}{cmd:mleval `theta1' = `b', eq(1)}{p_end}
{p 12 18 2}{cmd:mleval `theta2' = `b', eq(2)}    // 如果存在theta2{p_end}
	    {it:...}
{p 12 18 2}// 如果需要创建任何中间结果：{p_end}
{p 12 18 2}{cmd:tempvar lnf tmp1 tmp2} {it:...}{p_end}
{p 12 18 2}{cmd:gen double `tmp1' =} {it:...}{p_end}
	    {it:...}
{p 12 18 2}{cmd:quietly replace `lnfj' =} {it:...}{p_end}
{p 12 18 2}{cmd:mlsum `lnf' = `lnfj'}{p_end}
{p 12 18 2}{cmd:if (`todo'==0 | `lnf'>=.) exit}{p_end}
{p 12 18 2}{cmd:quietly replace `g1' =} dlnl_j/db_1的公式{p_end}
{p 12 18 2}{cmd:quietly replace `g2' =} dlnl_j/db_2的公式{p_end}
	{cmd:end}

    其中

{p 8 23 2}{cmd:`todo'} {space 3} 包含0或1；{p_end}
{p 22 22 2}0 ==> {cmd:`lnfj'}要填充；{p_end}
{p 22 22 2}1 ==> {cmd:`lnfj'}、{cmd:`g1'}、{cmd:`g2'}, ... 要填充{p_end}
{p 8 23 2}{cmd:`b'} {space 6} 完整参数行向量b=(b_1,b_2,...,b_E){p_end}
{p 8 22 2}{cmd:`lnfj'} {space 3} 要填充的变量，包含对数似然的值ln l_j{p_end}
{p 8 23 2}{cmd:`g'} {space 6} 要忽略的参数{p_end}
{p 8 23 2}{cmd:`H'} {space 6} 要忽略的参数{p_end}
{p 8 23 2}{cmd:`g1'} {space 5} 要填充的变量，包含dlnl_j/db_1{p_end}
{p 8 23 2}{cmd:`g2'} {space 5} 要填充的变量，包含dlnl_j/db_2{p_end}
	...


{title:方法v2评估器}

{p 8 14 2}{cmd:program} {it:progname}{p_end}
{p 12 18 2}{cmd:version {ccl stata_version}}{p_end}
{p 12 18 2}{cmd:args todo b lnfj g H} {cmd:g1} {cmd:g2} {it:...}{p_end}
{p 12 18 2}{cmd:tempvar theta1 theta2} {it:...}{p_end}
{p 12 18 2}{cmd:mleval `theta1' = `b', eq(1)}{p_end}
{p 12 18 2}{cmd:mleval `theta2' = `b', eq(2)}    // 如果存在theta2{p_end}
	    {it:...}
{p 12 18 2}// 如果需要创建任何中间结果：{p_end}
{p 12 18 2}{cmd:tempvar lnf tmp1 tmp2} {it:...}{p_end}
{p 12 18 2}{cmd:gen double `tmp1' =} {it:...}{p_end}
	    {it:...}
{p 12 18 2}{cmd:quietly replace `lnfj' =} {it:...}{p_end}
{p 12 18 2}{cmd:mlsum `lnf' = `lnfj'}{p_end}
{p 12 18 2}{cmd:if (`todo'==0 | `lnf'>=.) exit}{p_end}
{p 12 18 2}{cmd:tempname d1 d2} {it:...}{p_end}
{p 12 18 2}{cmd:quietly replace `g1' =} dlnl_j/db_1的公式{p_end}
{p 12 18 2}{cmd:quietly replace `g2' =} dlnl_j/db_2的公式{p_end}
	    {it:...}
{p 12 18 2}{cmd:if (`todo'==1) exit}{p_end}
{p 12 18 2}{cmd:tempname d11 d12 d22} {it:...}{p_end}
{p 12 18 2}{cmd:mlmatsum `lnf' `d11' =} d^2lnl_j/dtheta_1j^2的公式{cmd:, eq(1)}{p_end}
{p 12 18 2}{cmd:mlmatsum `lnf' `d12' =} d^2lnl_j/(dtheta_1j dtheta_2j)的公式{cmd:, eq(1,2)}{p_end}
{p 12 18 2}{cmd:mlmatsum `lnf' `d22' =} d^2lnl_j/dtheta_2j^2的公式{cmd:, eq(2)}{p_end}
			    {it:...}
{p 12 18 2}{cmd:matrix `H' = (`d11',`d12',} {it:...} {cmd:\ `d12'',`d22',}
{it:...} {cmd:)}{p_end}
	{cmd:end}

    其中

{p 8 22 2}{cmd:`todo'} {space 2} 包含0、1或2；{p_end}
{p 22 22 2}0 ==> {cmd:`lnfj'}要填充；{p_end}
{p 22 22 2}1 ==> {cmd:`lnfj'}和{cmd:`g'}要填充；{p_end}
{p 22 22 2}2 ==> {cmd:`lnfj'}、{cmd:`g'}和{cmd:`H'}要填充{p_end}
{p 8 22 2}{cmd:`b'} {space 5} 完整参数行向量b=(b_1,b_2,...,b_E){p_end}
{p 8 22 2}{cmd:`lnfj'} {space 2} 要填充的变量，包含对数似然的值ln l_j{p_end}
{p 8 22 2}{cmd:`g'} {space 5} 要填充的行向量，总体g =
dlnL/db{p_end}
{p 8 22 2}{cmd:`H'} {space 5} 要填充的矩阵，总体Hessian H = d^2lnL/dbdb'{p_end}
{p 8 22 2}{cmd:`g1'} {space 4} 要填充的变量，包含dlnl_j/db_1{p_end}
{p 8 22 2}{cmd:`g2'} {space 4} 要填充的变量，包含dlnl_j/db_2{p_end}
	...

{title:所有评估器均可使用的全局宏}

{p 8 23 2}{cmd:$ML_y1}{space 5} 第一个因变量的名称{p_end}
{p 8 23 2}{cmd:$ML_y2}{space 5} 如果有，第二个因变量的名称{p_end}
	...
{p 8 23 2}{cmd:$ML_samp}{space 3} 包含1的变量（如果观察值要使用）；否则为0{p_end}
{p 8 23 2}{cmd:$ML_w}{space 6} 与观察值相关的权重变量；如果未指定权重则为1{p_end}

{pstd}
方法lf评估器可以忽略{cmd:$ML_samp}，但将计算限制在{cmd:$ML_samp==1}子样本将加快执行。方法lf评估器必须忽略{cmd:$ML_w}；权重的应用由方法本身处理。

{pstd}
方法d0、d1、d2、e1、e2、v0、v1和v2评估器可以忽略{cmd:$ML_samp}，只要{cmd:ml model}的{cmd:nopreserve}选项未被指定。 如果指定了{cmd:nopreserve}，这些方法将运行得更快。
这些评估器只有在使用{cmd:mlsum}、{cmd:mlvecsum}和{cmd:mlmatsum}生成最终结果时才可以忽略{cmd:$ML_w}；请参见{help mleval_zh}。

{title:另见}

{psee}
手册:  {manlink R ml}

{psee}
{space 2}帮助:  {help ml_11_zh},
{help mleval_11_zh},
{help moptimize_11_zh};
{manhelp macro P},
{manhelp matrix P},
{manhelp program P}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mlmethod_11.sthlp>}