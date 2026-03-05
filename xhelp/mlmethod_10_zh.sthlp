
{smcl}
{* *! version 1.0.4  18jan2010}{...}
{cmd:help mlmethod_10}{right:{help prdocumented_zh:之前已记录}}
{hline}
{help mlmethod_10:English Version}
{hline}

{title:标题}

{p2colset 4 14 16 2}{...}
{p2col :{hi:[R] ml} {hline 2}}用于 ml 方法 lf、d0、d1 和 d2 的用户编写评估程序{p_end}
{p2colreset}{...}

{p 12 12 8}
{it}[{bf:ml} 语法自第 11 版起已改变。
本帮助文件记录了 {cmd:ml} 的旧语法，因此可能对您没有兴趣。
您无需将旧 do 文件中对 {cmd:ml} 的调用转换为现代语法，因为 Stata 仍然能理解旧语法和新语法。
本帮助文件旨在帮助希望调试或理解旧代码的用户。
点击 {help ml_zh:此处} 获取现代 {cmd:ml} 命令的帮助文件。]{rm}

{title:描述}

{pstd}
{cmd:ml} 命令要求编写一个程序来评估对数似然函数。该程序称为用户编写的评估器。{cmd:ml} 支持的命令 {cmd:mleval}、{cmd:mlsum}、{cmd:mlvecsum}、{cmd:mlmatsum} 和 {cmd:mlmatbysum} 对编写 d0、d1 和 d2 评估程序非常有帮助；请参见 {help mleval_10_zh}。

{title:方法 lf 评估器}

{p 8 14 2}{cmd:program} {it:progname}{p_end}
{p 12 18 2}{cmd:version {ccl stata_version}}{p_end}
{p 12 18 2}{cmd:args lnf theta1 theta2} {it:...}{p_end}
{p 12 18 2}// 如果需要创建任何中间结果：{p_end}
{p 12 18 2}{cmd:tempvar tmp1 tmp2} {it:...}{p_end}
{p 12 18 2}{cmd:quietly gen double `tmp1' =} {it:...}{p_end}
	    {it:...}
{p 12 18 2}{cmd:quietly replace `lnf' =} {it:...}{p_end}
	{cmd:end}

    其中

{p 8 24 2}{cmd:`lnf'} {space 5} 用于填充观察值的 ln l_j 的变量{p_end}
{p 8 24 2}{cmd:`theta1'} {space 2} 包含第一个方程的评估的变量 theta_1j = x_1j * b_1{p_end}
{p 8 24 2}{cmd:`theta2'} {space 2} 包含第二个方程的评估的变量 theta_2j = x_2j * b_2{p_end}
	...

{title:方法 d0 评估器}

{p 8 14 2}{cmd:program} {it:progname}{p_end}
{p 12 16 2}{cmd:version {ccl stata_version}}{p_end}
{p 12 16 2}{cmd:args todo b lnf}{p_end}
{p 12 16 2}{cmd:tempvar theta1 theta2} {it:...}{p_end}
{p 12 16 2}{cmd:mleval `theta1' = `b', eq(1)}{p_end}
{p 12 16 2}{cmd:mleval `theta2' = `b', eq(2)}    // 如果存在 theta2{p_end}
	    {it:...}
{p 12 16 2}// 如果需要创建任何中间结果：{p_end}
{p 12 16 2}{cmd:tempvar tmp1 tmp2} {it:...}{p_end}
{p 12 16 2}{cmd:gen double `tmp1' =} {it:...}{p_end}
	    {it:...}
{p 12 16 2}{cmd:mlsum `lnf' =} {it:...}{p_end}
	{cmd:end}

    其中

{p 8 22 2}{cmd:`todo'} {space 2} 始终包含 0（可以忽略）{p_end}
{p 8 22 2}{cmd:`b'} {space 5} 完整的参数行向量 b=(b_1,b_2,...,b_E){p_end}
{p 8 22 2}{cmd:`lnf'} {space 3} 标量，用于填充总体 lnL{p_end}

{title:方法 d1 评估器}

{p 8 14 2}{cmd:program} {it:progname}{p_end}
{p 12 18 2}{cmd:version {ccl stata_version}}{p_end}
{p 12 18 2}{cmd:args todo b lnf g} [{cmd:negH g1} [{cmd:g2} {it:...}]]{p_end}
{p 12 18 2}{cmd:tempvar theta1 theta2} {it:...}{p_end}
{p 12 18 2}{cmd:mleval `theta1' = `b', eq(1)}{p_end}
{p 12 18 2}{cmd:mleval `theta2' = `b', eq(2)}    // 如果存在 theta2{p_end}
	    {it:...}
{p 12 18 2}// 如果需要创建任何中间结果：{p_end}
{p 12 18 2}{cmd:tempvar tmp1 tmp2} {it:...}{p_end}
{p 12 18 2}{cmd:gen double `tmp1' =} {it:...}{p_end}
	    {it:...}
{p 12 18 2}{cmd:mlsum `lnf' =} {it:...}{p_end}
{p 12 18 2}{cmd:if (`todo'==0 | `lnf'==.) exit}{p_end}
{p 12 18 2}{cmd:tempname d1 d2} {it:...}{p_end}
{p 12 18 2}{cmd:mlvecsum `lnf' `d1' =} dlnl_j/dtheta_1j 的公式{cmd:, eq(1)}{p_end}
{p 12 18 2}{cmd:mlvecsum `lnf' `d2' =} dlnl_j/dtheta_2j 的公式{cmd:, eq(2)}{p_end}
	    {it:...}
{p 12 18 2}{cmd:matrix `g' = (`d1',`d2',} {it:...} {cmd:)}{p_end}
	{cmd:end}

    其中

{p 8 23 2}{cmd:`todo'} {space 3} 包含 0 或 1；  0 ==> {cmd:`lnf'} 填充； 1 ==> {cmd:`lnf'} 和 {cmd:`g'} 填充{p_end}
{p 8 23 2}{cmd:`b'} {space 6} 完整的参数行向量 b=(b_1,b_2,...,b_E){p_end}
{p 8 23 2}{cmd:`lnf'} {space 4} 标量，用于填充总体 lnL{p_end}
{p 8 23 2}{cmd:`g'} {space 6} 行向量，用于填充总体 g = dlnL/db{p_end}
{p 8 23 2}{cmd:`negH'} {space 3} 要忽略的参数{p_end}
{p 8 23 2}{cmd:`g1'} {space 5} 变量，可选择填充 dlnl_j/db_1{p_end}
{p 8 23 2}{cmd:`g2'} {space 5} 变量，可选择填充 dlnl_j/db_2{p_end}
	...

{title:方法 d2 评估器}

{p 8 14 2}{cmd:program} {it:progname}{p_end}
{p 12 18 2}{cmd:version {ccl stata_version}}{p_end}
{p 12 18 2}{cmd:args todo b lnf g negH} [{cmd:g1} [{cmd:g2} {it:...}]]{p_end}
{p 12 18 2}{cmd:tempvar theta1 theta2} {it:...}{p_end}
{p 12 18 2}{cmd:mleval `theta1' = `b', eq(1)}{p_end}
{p 12 18 2}{cmd:mleval `theta2' = `b', eq(2)}    // 如果存在 theta2{p_end}
	    {it:...}
{p 12 18 2}// 如果需要创建任何中间结果：{p_end}
{p 12 18 2}{cmd:tempvar tmp1 tmp2} {it:...}{p_end}
{p 12 18 2}{cmd:gen double `tmp1' =} {it:...}{p_end}
	    {it:...}
{p 12 18 2}{cmd:mlsum `lnf' =} {it:...}{p_end}
{p 12 18 2}{cmd:if (`todo'==0 | `lnf'==.) exit}{p_end}
{p 12 18 2}{cmd:tempname d1 d2} {it:...}{p_end}
{p 12 18 2}{cmd:mlvecsum `lnf' `d1' =} dlnl_j/dtheta_1j 的公式{cmd:, eq(1)}{p_end}
{p 12 18 2}{cmd:mlvecsum `lnf' `d2' =} dlnl_j/dtheta_2j 的公式{cmd:, eq(2)}{p_end}
	    {it:...}
{p 12 18 2}{cmd:matrix `g' = (`d1',`d2',} {it:...} {cmd:)}{p_end}
{p 12 18 2}{cmd:if (`todo'==1 | `lnf'==.) exit}{p_end}
{p 12 18 2}{cmd:tempname d11 d12 d22} {it:...}{p_end}
{p 12 18 2}{cmd:mlmatsum `lnf' `d11' =} -d^2lnl_j/dtheta_1j^2 的公式{cmd:, eq(1)}{p_end}
{p 12 18 2}{cmd:mlmatsum `lnf' `d12' =} -d^2lnl_j/(dtheta_1j dtheta_2j) 的公式{cmd:, eq(1,2)}{p_end}
{p 12 18 2}{cmd:mlmatsum `lnf' `d22' =} -d^2lnl_j/dtheta_2j^2 的公式{cmd:, eq(2)}{p_end}
	    {it:...}
{p 12 18 2}{cmd:matrix `negH' = (`d11',`d12',} {it:...} {cmd:\ `d12'',`d22',}
{it:...} {cmd:)}{p_end}
	{cmd:end}

    其中

{p 8 22 2}{cmd:`todo'} {space 2} 包含 0、1 或 2；  0 ==> {cmd:`lnf'} 填充；{p_end}
{p 22 22 2}1 ==> {cmd:`lnf'} 和 {cmd:`g'} 填充；{p_end}
{p 22 22 2}2 ==> {cmd:`lnf'}、{cmd:`g'}、{cmd:`negH'} 填充{p_end}
{p 8 22 2}{cmd:`b'} {space 5} 完整参数行向量 b=(b_1,b_2,...,b_E){p_end}
{p 8 22 2}{cmd:`lnf'} {space 3} 标量，用于填充总体 lnL{p_end}
{p 8 22 2}{cmd:`g'} {space 5} 行向量，用于填充总体 g = dlnL/db{p_end}
{p 8 22 2}{cmd:`negH'} {space 2} 矩阵，用于填充总体负 Hessian -H = -d^2lnL/dbdb'{p_end}
{p 8 22 2}{cmd:`g1'} {space 4} 变量，可选择填充 dlnl_j/db_1{p_end}
{p 8 22 2}{cmd:`g2'} {space 4} 变量，可选择填充 dlnl_j/db_2{p_end}
	...

{title:供所有评估器使用的全局宏}

{p 8 23 2}{cmd:$ML_y1}{space 5} 第一个因变量的名称{p_end}
{p 8 23 2}{cmd:$ML_y2}{space 5} 第二个因变量的名称（如果有）{p_end}
	...
{p 8 23 2}{cmd:$ML_samp}{space 3} 变量如果观察需使用则为 1；否则为 0{p_end}
{p 8 23 2}{cmd:$ML_w}{space 6} 与观察相关的权重变量；如果未指定权重则为 1{p_end}

{pstd}
方法 lf 评估器可以忽略 {cmd:$ML_samp}，但限制计算在 {cmd:$ML_samp==1} 子样本将加速执行。
方法 lf 评估器必须忽略 {cmd:$ML_w}；权重的应用由方法本身处理。

{pstd}
方法 d0、d1 和 d2 可以忽略 {cmd:$ML_samp}，只要未指定 {cmd:ml model} 的 {cmd:nopreserve} 选项。
如果指定了 {cmd:nopreserve}，方法 d0、d1 和 d2 的运行将更加快速。
仅当方法 d0、d1 和 d2 使用 {cmd:mlsum}、{cmd:mlvecsum} 和 {cmd:mlmatsum} 生成最终结果时，可以忽略 {cmd:$ML_w}；请参见 {help mleval_10_zh}。

{title:另见}

{psee}
手册：  {bf:[R] ml}

{psee}
在线：  {manhelp ml R}、{help mleval_10_zh}；{manhelp macro P}、{manhelp matrix P}、{manhelp program P}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mlmethod_10.sthlp>}