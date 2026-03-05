{smcl}
{* *! version 1.3.4  23oct2017}{...}
{vieweralsosee "[R] ml" "mansection R ml"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "mleval" "help mleval_zh"}{...}
{vieweralsosee "[M-5] moptimize()" "help mf_moptimize_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[P] macro" "help macro_zh"}{...}
{vieweralsosee "[P] matrix" "help matrix_zh"}{...}
{vieweralsosee "[P] program" "help program_zh"}{...}
{viewerjumpto "Description" "mlmethod_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mlmethod_zh##linkspdf"}{...}
{viewerjumpto "Method lf evaluators" "mlmethod_zh##method_lf"}{...}
{viewerjumpto "Method d0 evaluators" "mlmethod_zh##method_d0"}{...}
{viewerjumpto "Method d1 evaluators" "mlmethod_zh##method_d1"}{...}
{viewerjumpto "Method d2 evaluators" "mlmethod_zh##method_d2"}{...}
{viewerjumpto "Method lf0 evaluators" "mlmethod_zh##method_lf0"}{...}
{viewerjumpto "Method lf1 evaluators" "mlmethod_zh##method_lf1"}{...}
{viewerjumpto "Method lf2 evaluators" "mlmethod_zh##method_lf2"}{...}
{viewerjumpto "Method gf0 evaluators" "mlmethod_zh##method_gf0"}{...}
{viewerjumpto "Global macros for use by all evaluators" "mlmethod_zh##globals"}
{help mlmethod:English Version}
{hline}{...}
{p2colset 1 11 13 2}{...}
{p2col:{bf:[R] ml} {hline 2}}用户编写的评估程序，用于 ml 方法 lf, d0, d1, d2, lf0, lf1, lf2 和 gf0{p_end}
{p2col:}({mansection R ml:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:描述}

{pstd}
{help ml_zh} 命令需要一个 Mata 函数或 Stata 程序，该程序用于评估对数似然函数。这个函数或程序被通称为用户编写的评估器。
用 Mata 编写的评估函数在 {helpb mf_moptimize##syn_alleval:[M-5] moptimize()} 中有文档说明。用 Stata 编写的评估程序在此处有文档说明。

{pstd}
{cmd:ml} 支持命令 {cmd:mleval}、{cmd:mlsum}、{cmd:mlvecsum}、{cmd:mlmatsum} 和 {cmd:mlmatbysum} 可帮助编写 d0、d1、d2、lf0、lf1、lf2 和 gf0 评估程序；请参见 {help mleval_zh}。

{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection R mlRemarksandexamples:备注和示例}

        {mansection R mlMethodsandformulas:方法和公式}

{pstd}
以上部分不包括在本帮助文件中。

{marker method_lf}{...}
{title:方法 lf 评估器}

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

{p 8 24 2}{cmd:`lnfj'} {space 4} 变量，填充观测值的 ln l_j{p_end}
{p 8 24 2}{cmd:`theta1'} {space 2} 包含评估第一个方程 theta_1j = x_1j * b_1 的变量{p_end}
{p 8 24 2}{cmd:`theta2'} {space 2} 包含评估第二个方程 theta_2j = x_2j * b_2 的变量{p_end}
	...

{marker method_d0}{...}
{title:方法 d0 评估器}

{p 8 14 2}{cmd:program} {it:progname}{p_end}
{p 12 16 2}{cmd:version {ccl stata_version}}{p_end}
{p 12 16 2}{cmd:args todo b lnf}{p_end}
{p 12 16 2}{cmd:tempvar theta1 theta2} {it:...}{p_end}
{p 12 16 2}{cmd:mleval `theta1' = `b', eq(1)}{p_end}
{p 12 16 2}{cmd:mleval `theta2' = `b', eq(2)}    // 如果有 theta2{p_end}
	    {it:...}
{p 12 16 2}// 如果需要创建任何中间结果： {p_end}
{p 12 16 2}{cmd:tempvar tmp1 tmp2} {it:...}{p_end}
{p 12 16 2}{cmd:gen double `tmp1' =} {it:...}{p_end}
	    {it:...}
{p 12 16 2}{cmd:mlsum `lnf' =} {it:...}{p_end}
	{cmd:end}

    其中

{p 8 22 2}{cmd:`todo'} {space 2} 始终包含 0（可以忽略）{p_end}
{p 8 22 2}{cmd:`b'} {space 5} 完整的参数行向量 b=(b_1,b_2,...,b_E){p_end}
{p 8 22 2}{cmd:`lnf'} {space 3} 标量，填充总的 lnL{p_end}


{marker method_d1}{...}
{title:方法 d1 评估器}

{p 8 14 2}{cmd:program} {it:progname}{p_end}
{p 12 18 2}{cmd:version {ccl stata_version}}{p_end}
{p 12 18 2}{cmd:args todo b lnf g}{p_end}
{p 12 18 2}{cmd:tempvar theta1 theta2} {it:...}{p_end}
{p 12 18 2}{cmd:mleval `theta1' = `b', eq(1)}{p_end}
{p 12 18 2}{cmd:mleval `theta2' = `b', eq(2)}    // 如果有 theta2{p_end}
	    {it:...}
{p 12 18 2}// 如果需要创建任何中间结果：{p_end}
{p 12 18 2}{cmd:tempvar tmp1 tmp2} {it:...}{p_end}
{p 12 18 2}{cmd:gen double `tmp1' =} {it:...}{p_end}
	    {it:...}
{p 12 18 2}{cmd:mlsum `lnf' =} {it:...}{p_end}
{p 12 18 2}{cmd:if (`todo'==0 | `lnf'>=.) exit}{p_end}
{p 12 18 2}{cmd:tempname d1 d2} {it:...}{p_end}
{p 12 18 2}{cmd:mlvecsum `lnf' `d1' =} dlnl_j/dtheta_1j 的公式{cmd:, eq(1)}{p_end}
{p 12 18 2}{cmd:mlvecsum `lnf' `d2' =} dlnl_j/dtheta_2j 的公式{cmd:, eq(2)}{p_end}
	    {it:...}
{p 12 18 2}{cmd:matrix `g' = (`d1',`d2',} {it:...} {cmd:)}{p_end}
	{cmd:end}

    其中

{p 8 23 2}{cmd:`todo'} {space 3} 包含 0 或 1；{p_end}
{p 22 22 2}0 ==> {cmd:`lnf'} 要填入；{p_end}
{p 22 22 2}1 ==> {cmd:`lnf'} 和 {cmd:`g'} 要填入{p_end}
{p 8 23 2}{cmd:`b'} {space 6} 完整的参数行向量 b=(b_1,b_2,...,b_E){p_end}
{p 8 23 2}{cmd:`lnf'} {space 4} 标量，填充总的 lnL{p_end}
{p 8 23 2}{cmd:`g'} {space 6} 行向量，填充总的 g =
dlnL/db{p_end}


{marker method_d2}{...}
{title:方法 d2 评估器}

{p 8 14 2}{cmd:program} {it:progname}{p_end}
{p 12 18 2}{cmd:version {ccl stata_version}}{p_end}
{p 12 18 2}{cmd:args todo b lnf g H}{p_end}
{p 12 18 2}{cmd:tempvar theta1 theta2} {it:...}{p_end}
{p 12 18 2}{cmd:mleval `theta1' = `b', eq(1)}{p_end}
{p 12 18 2}{cmd:mleval `theta2' = `b', eq(2)}    // 如果有 theta2{p_end}
	    {it:...}
{p 12 18 2}// 如果需要创建任何中间结果：{p_end}
{p 12 18 2}{cmd:tempvar tmp1 tmp2} {it:...}{p_end}
{p 12 18 2}{cmd:gen double `tmp1' =} {it:...}{p_end}
{p 12 18 2}{cmd:mlsum `lnf' =} {it:...}{p_end}
{p 12 18 2}{cmd:if (`todo'==0 | `lnf'>=.) exit}{p_end}
{p 12 18 2}{cmd:tempname d1 d2} {it:...}{p_end}
{p 12 18 2}{cmd:mlvecsum `lnf' `d1' =} dlnl_j/dtheta_1j 的公式{cmd:, eq(1)}{p_end}
{p 12 18 2}{cmd:mlvecsum `lnf' `d2' =} dlnl_j/dtheta_2j 的公式{cmd:, eq(2)}{p_end}
	    {it:...}
{p 12 18 2}{cmd:matrix `g' = (`d1',`d2',} {it:...} {cmd:)}{p_end}
{p 12 18 2}{cmd:if (`todo'==1 | `lnf'>=.) exit}{p_end}
{p 12 18 2}{cmd:tempname d11 d12 d22} {it:...}{p_end}
{p 12 18 2}{cmd:mlmatsum `lnf' `d11' =} d^2lnl_j/dtheta_1j^2 的公式{cmd:, eq(1)}{p_end}
{p 12 18 2}{cmd:mlmatsum `lnf' `d12' =} d^2lnl_j/(dtheta_1j dtheta_2j) 的公式{cmd:, eq(1,2)}{p_end}
{p 12 18 2}{cmd:mlmatsum `lnf' `d22' =} d^2lnl_j/dtheta_2j^2 的公式{cmd:, eq(2)}{p_end}
	    {it:...}
{p 12 18 2}{cmd:matrix `H' = (`d11',`d12',} {it:...} {cmd:\ `d12'',`d22',}
{it:...} {cmd:)}{p_end}
	{cmd:end}

    其中

{p 8 22 2}{cmd:`todo'} {space 2} 包含 0、1 或 2；{p_end}
{p 22 22 2}0 ==> {cmd:`lnf'} 要填入；{p_end}
{p 22 22 2}1 ==> {cmd:`lnf'} 和 {cmd:`g'} 要填入；{p_end}
{p 22 22 2}2 ==> {cmd:`lnf'}、{cmd:`g'} 和 {cmd:`H'} 要填入{p_end}
{p 8 22 2}{cmd:`b'} {space 5} 完整的参数行向量 b=(b_1,b_2,...,b_E){p_end}
{p 8 22 2}{cmd:`lnf'} {space 3} 标量，填充总的 lnL{p_end}
{p 8 22 2}{cmd:`g'} {space 5} 行向量，填充总的 g =
dlnL/db{p_end}
{p 8 22 2}{cmd:`H'} {space 5} 矩阵，填充总的 Hessian H = d^2lnL/dbdb'{p_end}


{marker method_lf0}{...}
{title:方法 lf0 评估器}

{p 8 14 2}{cmd:program} {it:progname}{p_end}
{p 12 16 2}{cmd:version {ccl stata_version}}{p_end}
{p 12 16 2}{cmd:args todo b lnfj}{p_end}
{p 12 16 2}{cmd:tempvar theta1 theta2} {it:...}{p_end}
{p 12 16 2}{cmd:mleval `theta1' = `b', eq(1)}{p_end}
{p 12 16 2}{cmd:mleval `theta2' = `b', eq(2)}    // 如果有 theta2{p_end}
	    {it:...}
{p 12 16 2}// 如果需要创建任何中间结果： {p_end}
{p 12 16 2}{cmd:tempvar tmp1 tmp2} {it:...}{p_end}
{p 12 16 2}{cmd:gen double `tmp1' =} {it:...}{p_end}
	    {it:...}
{p 12 16 2}{cmd:quietly replace `lnfj' =} {it:...}{p_end}
	{cmd:end}

    其中

{p 8 22 2}{cmd:`todo'} {space 2} 始终包含 0（可以忽略）{p_end}
{p 8 22 2}{cmd:`b'} {space 5} 完整的参数行向量 b=(b_1,b_2,...,b_E){p_end}
{p 8 22 2}{cmd:`lnfj'} {space 2} 变量，填充观测值的 ln l_j{p_end}


{marker method_lf1}{...}
{title:方法 lf1 评估器}

{p 8 14 2}{cmd:program} {it:progname}{p_end}
{p 12 18 2}{cmd:version {ccl stata_version}}{p_end}
{p 12 18 2}{cmd:args todo b lnfj} {cmd:g1} {cmd:g2} {it:...}{p_end}
{p 12 18 2}{cmd:tempvar theta1 theta2} {it:...}{p_end}
{p 12 18 2}{cmd:mleval `theta1' = `b', eq(1)}{p_end}
{p 12 18 2}{cmd:mleval `theta2' = `b', eq(2)}    // 如果有 theta2{p_end}
	    {it:...}
{p 12 18 2}// 如果需要创建任何中间结果：{p_end}
{p 12 18 2}{cmd:tempvar tmp1 tmp2} {it:...}{p_end}
{p 12 18 2}{cmd:gen double `tmp1' =} {it:...}{p_end}
	    {it:...}
{p 12 18 2}{cmd:quietly replace `lnfj' =} {it:...}{p_end}
{p 12 18 2}{cmd:if (`todo'==0) exit}{p_end}
{p 12 18 2}{cmd:quietly replace `g1' =} dlnl_j/dtheta_1j 的公式{p_end}
{p 12 18 2}{cmd:quietly replace `g2' =} dlnl_j/dtheta_2j 的公式{p_end}
	    {it:...}
	{cmd:end}

    其中

{p 8 23 2}{cmd:`todo'} {space 3} 包含 0 或 1；{p_end}
{p 22 22 2}0 ==> {cmd:`lnfj'} 要填入；{p_end}
{p 22 22 2}1 ==> {cmd:`lnfj'}、{cmd:`g1'}、{cmd:`g2'}、{it:...} 要填入{p_end}
{p 8 23 2}{cmd:`b'} {space 6} 完整的参数行向量 b=(b_1,b_2,...,b_E){p_end}
{p 8 23 2}{cmd:`lnfj'} {space 3} 变量，填充观测值的 ln l_j{p_end}
{p 8 23 2}{cmd:`g1'} {space 5} 变量，填充 dlnl_j/dtheta_1j 的值{p_end}
{p 8 23 2}{cmd:`g2'} {space 5} 变量，填充 dlnl_j/dtheta_2j 的值{p_end}
	...


{marker method_lf2}{...}
{title:方法 lf2 评估器}

{p 8 14 2}{cmd:program} {it:progname}{p_end}
{p 12 18 2}{cmd:version {ccl stata_version}}{p_end}
{p 12 18 2}{cmd:args todo b lnfj g1 g2} {it:...} {cmd:H}{p_end}
{p 12 18 2}{cmd:tempvar theta1 theta2} {it:...}{p_end}
{p 12 18 2}{cmd:mleval `theta1' = `b', eq(1)}{p_end}
{p 12 18 2}{cmd:mleval `theta2' = `b', eq(2)}    // 如果有 theta2{p_end}
	    {it:...}
{p 12 18 2}// 如果需要创建任何中间结果：{p_end}
{p 12 18 2}{cmd:tempvar tmp1 tmp2} {it:...}{p_end}
{p 12 18 2}{cmd:gen double `tmp1' =} {it:...}{p_end}
	    {it:...}
{p 12 18 2}{cmd:quietly replace `lnfj' =} {it:...}{p_end}
{p 12 18 2}{cmd:if (`todo'==0) exit}{p_end}
{p 12 18 2}{cmd:quietly replace `g1' =} dlnl_j/dtheta_1j 的公式{p_end}
{p 12 18 2}{cmd:quietly replace `g2' =} dlnl_j/dtheta_2j 的公式{p_end}
	    {it:...}
{p 12 18 2}{cmd:if (`todo'==1) exit}{p_end}
{p 12 18 2}{cmd:tempname d11 d12 d22 lnf} {it:...}{p_end}
{p 12 18 2}{cmd:mlmatsum `lnf' `d11' =} d^2lnl_j/dtheta_1j^2 的公式{cmd:, eq(1)}{p_end}
{p 12 18 2}{cmd:mlmatsum `lnf' `d12' =} d^2lnl_j/(dtheta_1j dtheta_2j) 的公式{cmd:, eq(1,2)}{p_end}
{p 12 18 2}{cmd:mlmatsum `lnf' `d22' =} d^2lnl_j/dtheta_2j^2 的公式{cmd:, eq(2)}{p_end}
	    {it:...}
{p 12 18 2}{cmd:matrix `H' = (`d11',`d12',} {it:...} {cmd:\ `d12'',`d22',}
{it:...} {cmd:)}{p_end}
	{cmd:end}

    其中

{p 8 22 2}{cmd:`todo'} {space 2} 包含 0、1 或 2；{p_end}
{p 22 22 2}0 ==> {cmd:`lnfj'} 要填入；{p_end}
{p 22 22 2}1 ==> {cmd:`lnfj'}、{cmd:`g1'}、{cmd:`g2'}、{it:...} 要填入；{p_end}
{p 22 22 2}2 ==> {cmd:`lnfj'}、{cmd:`g1'}、{cmd:`g2'}、{it:...} 和 {cmd:`H'} 要填入；{p_end}
{p 8 22 2}{cmd:`b'} {space 5} 完整的参数行向量 b=(b_1,b_2,...,b_E){p_end}
{p 8 22 2}{cmd:`lnfj'} {space 2} 变量，填充观测值的 ln l_j{p_end}
{p 8 22 2}{cmd:`g1'} {space 4} 变量，填充 dlnl_j/dtheta_1j 的值{p_end}
{p 8 22 2}{cmd:`g2'} {space 4} 变量，填充 dlnl_j/dtheta_2j 的值{p_end}
	...
{p 8 22 2}{cmd:`H'} {space 5} 矩阵，填充总的 
Hessian H = d^2lnL/dbdb'{p_end}


{marker method_gf0}{...}
{title:方法 gf0 评估器}

{p 8 14 2}{cmd:program} {it:progname}{p_end}
{p 12 16 2}{cmd:version {ccl stata_version}}{p_end}
{p 12 16 2}{cmd:args todo b lnfj}{p_end}
{p 12 16 2}{cmd:tempvar theta1 theta2} {it:...}{p_end}
{p 12 16 2}{cmd:mleval `theta1' = `b', eq(1)}{p_end}
{p 12 16 2}{cmd:mleval `theta2' = `b', eq(2)}    // 如果有 theta2{p_end}
	    {it:...}
{p 12 16 2}// 如果需要创建任何中间结果： {p_end}
{p 12 16 2}{cmd:tempvar tmp1 tmp2} {it:...}{p_end}
{p 12 16 2}{cmd:gen double `tmp1' =} {it:...}{p_end}
	    {it:...}
{p 12 16 2}{cmd:quietly replace `lnfj' =} {it:...}{p_end}
	{cmd:end}

    其中

{p 8 22 2}{cmd:`todo'} {space 2} 始终包含 0（可以忽略）{p_end}
{p 8 22 2}{cmd:`b'} {space 5} 完整的参数行向量 b=(b_1,b_2,...,b_E){p_end}
{p 8 22 2}{cmd:`lnfj'} {space 2} 变量，填充对数似然值 ln l_j{p_end}


{marker globals}{...}
{title:所有评估器使用的全局宏}

{p 8 23 2}{cmd:$ML_y1}{space 5} 第一个因变量的名称{p_end}
{p 8 23 2}{cmd:$ML_y2}{space 5} 第二个因变量的名称（如果有）{p_end}
	...
{p 8 23 2}{cmd:$ML_samp}{space 3} 变量，包含 1 表示观察值被使用； 0 表示不使用{p_end}
{p 8 23 2}{cmd:$ML_w}{space 6} 变量，包含与观察值相关的权重，或者如果未指定权重则为 1{p_end}

{pstd}
方法 lf 评估器可以忽略 {cmd:$ML_samp}，但将计算限制在 {cmd:$ML_samp==1} 子样本内将加速执行。方法
lf 评估器必须忽略 {cmd:$ML_w}；权重的应用由方法本身处理。

{pstd}
方法 d0、d1、d2、lf0、lf1、lf2 和 gf0 的评估器可以忽略
{cmd:$ML_samp}，只要
{cmd:ml model} 的 {cmd:nopreserve} 选项未被指定。如果指定 {cmd:nopreserve}，则这些方法会更快运行。
这些评估器只能在使用 {cmd:mlsum}、{cmd:mlvecsum} 和 {cmd:mlmatsum} 来生成最终结果时才能忽略 {cmd:$ML_w}；请参见 {help mleval_zh}。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mlmethod.sthlp>}