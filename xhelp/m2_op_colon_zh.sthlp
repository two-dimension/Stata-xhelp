{smcl}
{* *! version 1.1.4  15may2018}{...}
{vieweralsosee "[M-2] op_colon" "mansection M-2 op_colon"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-2] exp" "help m2_exp_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-2] Intro" "help m2_intro_zh"}{...}
{viewerjumpto "Syntax" "m2_op_colon_zh##syntax"}{...}
{viewerjumpto "Description" "m2_op_colon_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "m2_op_colon_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "m2_op_colon_zh##remarks"}{...}
{viewerjumpto "Conformability" "m2_op_colon_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "m2_op_colon_zh##diagnostics"}
{help m2_op_colon:English Version}
{hline}{...}
{p2colset 1 19 21 2}{...}
{p2col:{bf:[M-2] op_colon} {hline 2}}冒号运算符
{p_end}
{p2col:}({mansection M-2 op_colon:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

	{it:a} {cmd::+} {it:b}                  加法
	{it:a} {cmd::-} {it:b}                  减法
	{it:a} {cmd::*} {it:b}                  乘法
	{it:a} {cmd::/} {it:b}                  除法
	{it:a} {cmd::^} {it:b}                  幂

	{it:a} {cmd::==} {it:b}                 等于
	{it:a} {cmd::!=} {it:b}                 不等于
	{it:a} {cmd::>}  {it:b}                 大于
	{it:a} {cmd::>=} {it:b}                 大于或等于
	{it:a} {cmd::<}  {it:b}                 小于
	{it:a} {cmd::<=} {it:b}                 小于或等于

	{it:a} {cmd::&}  {it:b}                 与
	{it:a} {cmd::|}  {it:b}                 或


{marker description}{...}
{title:描述}

{p 4 4 2}
冒号运算符执行逐元素操作。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection M-2 op_colonRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
备注分为以下几类：

	{help m2_op_colon##remarks1:C-符合性:  逐元素}
	{help m2_op_colon##remarks2:冒号逻辑运算符的有用性}
	{help m2_op_colon##remarks3:使用括号}


{marker remarks1}{...}
{title:C-符合性:  逐元素}

{p 4 4 2}
冒号运算符对 {it:a} 和 {it:b} 的每对元素执行指明的操作。例如，

       {c TLC}{c -}    {c -}{c TRC}        {c TLC}{c -}    {c -}{c TRC}       {c TLC}{c -}        {c -}{c TRC}
       {c |} {it:c}  {it:d} {c |}        {c |} {it:j}  {it:k} {c |}       {c |} {it:c}*{it:j}  {it:d}*{it:k} {c |}
       {c |} {it:f}  {it:g} {c |}   :*   {c |} {it:l}  {it:m} {c |}   =   {c |} {it:f}*{it:l}  {it:g}*{it:m} {c |}
       {c |} {it:h}  {it:i} {c |}        {c |} {it:n}  {it:o} {c |}       {c |} {it:h}*{it:n}  {it:i}*{it:o} {c |}
       {c BLC}{c -}    {c -}{c BRC}        {c BLC}{c -}    {c -}{c BRC}       {c BLC}{c -}        {c -}{c BRC}

{p 4 4 2}
此外，冒号运算符的符合性定义较为宽松：

       {c TLC}{c -}    {c -}{c TRC}        {c TLC}{c -}    {c -}{c TRC}       {c TLC}{c -}        {c -}{c TRC}
       {c |}   {it:c}  {c |}        {c |} {it:j}  {it:k} {c |}       {c |} {it:c}*{it:j}  {it:c}*{it:k} {c |}
       {c |}   {it:f}  {c |}   :*   {c |} {it:l}  {it:m} {c |}   =   {c |} {it:f}*{it:l}  {it:f}*{it:m} {c |}
       {c |}   {it:g}  {c |}        {c |} {it:n}  {it:o} {c |}       {c |} {it:g}*{it:n}  {it:g}*{it:o} {c |}
       {c BLC}{c -}    {c -}{c BRC}        {c BLC}{c -}    {c -}{c BRC}       {c BLC}{c -}        {c -}{c BRC}


       {c TLC}{c -}    {c -}{c TRC}        {c TLC}{c -}    {c -}{c TRC}       {c TLC}{c -}    {c -}{c TRC}
       {c |} {it:c}  {it:d} {c |}        {c |}  {it:j}   {c |}       {c |} {it:c}*{it:j}  {it:d}*{it:j} {c |}
       {c |} {it:f}  {it:g} {c |}   :*   {c |}  {it:l}   {c |}   =   {c |} {it:f}*{it:l}  {it:g}*{it:l} {c |}
       {c |} {it:h}  {it:i} {c |}        {c |}  {it:n}   {c |}       {c |} {it:h}*{it:n}  {it:i}*{it:n} {c |}
       {c BLC}{c -}    {c -}{c BRC}        {c BLC}{c -}    {c -}{c BRC}       {c BLC}{c -}        {c -}{c BRC}


                       {c TLC}{c -}    {c -}{c TRC}       {c TLC}{c -}        {c -}{c TRC}
                       {c |} {it:j}  {it:k} {c |}       {c |} {it:c}*{it:j}  {it:d}*{it:k} {c |}
       [ {it:c}  {it:d} ]   :*   {c |} {it:l}  {it:m} {c |}   =   {c |} {it:c}*{it:l}  {it:d}*{it:m} {c |}
                       {c |} {it:n}  {it:o} {c |}       {c |} {it:c}*{it:n}  {it:d}*{it:o} {c |}
                       {c BLC}{c -}    {c -}{c BRC}       {c BLC}{c -}        {c -}{c BRC}

       {c TLC}{c -}    {c -}{c TRC}                       {c TLC}{c -}        {c -}{c TRC}
       {c |} {it:c}  {it:d} {c |}                       {c |} {it:c}*{it:l}  {it:d}*{it:m} {c |}
       {c |} {it:f}  {it:g} {c |}   :*   [ {it:l}  {it:m} ]   =   {c |} {it:f}*{it:l}  {it:g}*{it:m} {c |}
       {c |} {it:h}  {it:i} {c |}                       {c |} {it:h}*{it:l}  {it:i}*{it:m} {c |}
       {c BLC}{c -}    {c -}{c BRC}                       {c BLC}{c -}        {c -}{c BRC}


                       {c TLC}{c -}    {c -}{c TRC}       {c TLC}{c -}        {c -}{c TRC}
                       {c |} {it:j}  {it:k} {c |}       {c |} {it:c}*{it:j}  {it:c}*{it:k} {c |}
            {it:c}     :*   {c |} {it:l}  {it:m} {c |}   =   {c |} {it:c}*{it:l}  {it:c}*{it:m} {c |}
                       {c |} {it:n}  {it:o} {c |}       {c |} {it:c}*{it:n}  {it:c}*{it:o} {c |}
                       {c BLC}{c -}    {c -}{c BRC}       {c BLC}{c -}        {c -}{c BRC}


       {c TLC}{c -}    {c -}{c TRC}                       {c TLC}{c -}        {c -}{c TRC}
       {c |} {it:c}  {it:d} {c |}                       {c |} {it:c}*{it:j}  {it:d}*{it:j} {c |}
       {c |} {it:f}  {it:g} {c |}   :*      {it:j}       =   {c |} {it:f}*{it:j}  {it:g}*{it:j} {c |}
       {c |} {it:h}  {it:i} {c |}                       {c |} {it:h}*{it:j}  {it:i}*{it:j} {c |}
       {c BLC}{c -}    {c -}{c BRC}                       {c BLC}{c -}        {c -}{c BRC}

{p 4 4 2}
上述矩阵被称为 c-符合；{it:c} 代表冒号。
矩阵的行数和列数相同，或者它们之一是与矩阵具有相同行数或列数的向量，或者它们之一是标量。

{p 4 4 2}
c-符合性是放宽的，但并非所有情况都是允许的。以下将导致错误：

                       {c TLC}{c -}   {c -}{c TRC}
                       {c |}  {it:f}  {c |}
        ({it:c  d  e})  :*  {c |}  {it:g}  {c |}
                       {c |}  {it:h}  {c |}
                       {c BLC}{c -}   {c -}{c BRC}


{marker remarks2}{...}
{title:冒号逻辑运算符的有用性}

{p 4 4 2}
值得特别注意的是冒号逻辑运算符，因为它们可以生成模式向量和矩阵。考虑矩阵

	: {cmd:x = (5, 0 \ 0, 2 \ 3, 8)}
	: {cmd:x}
        {res}       {txt}1   2
            {c TLC}{hline 9}{c TRC}
          1 {c |}  {res}5   0{txt}  {c |}
          2 {c |}  {res}0   2{txt}  {c |}
          3 {c |}  {res}3   8{txt}  {c |}
            {c BLC}{hline 9}{c BRC}{txt}

{p 4 4 2}
{cmd:x} 中哪些元素包含 0？

	: {cmd:x:==0}
        {res}       {txt}1   2
            {c TLC}{hline 9}{c TRC}
          1 {c |}  {res}0   1{txt}  {c |}
          2 {c |}  {res}1   0{txt}  {c |}
          3 {c |}  {res}0   0{txt}  {c |}
            {c BLC}{hline 9}{c BRC}{txt}

{p 4 4 2}
{cmd:x} 中有多少个 0？

	: {cmd:sum(x:==0)}
	  2


{marker remarks3}{...}
{title:使用括号}

{p 4 4 2}
由于其放宽的符合性要求，冒号运算符并不是结合性的，即使底层运算符是。 例如，你会期望 ({it:a}+{it:b})+{it:c} == {it:a}+({it:b}+{it:c})，至少忽略数值四舍五入误差。 然而，({it:a}:+{it:b}):+{it:c} == {it:a}:+({it:b}:+{it:c}) 并不一定成立。考虑一下 

		{it:a}:  1 {it:x} 4
		{it:b}:  5 {it:x} 1
		{it:c}:  5 {it:x} 4

{p 4 4 2}
那么 
({it:a}:+{it:b}):+{it:c} 将产生错误，因为 
{it:a}:+{it:b} 不符合 c-条件。

{p 4 4 2}
然而， 
{it:a}:+({it:b}:+{it:c}) 并不会产生错误，实际上生成了一个 
5 {it:x} 4 矩阵，因为 {it:b}:+{it:c} 是 5 {it:x} 4，符合 {it:a} 的 c-条件。
	

{marker conformability}{...}
{title:符合性}

    {it:a} {cmd::}{it:op} {it:b}:
		{it:a}:  {it:r1 x c1}
		{it:b}:  {it:r2 x c2}, {it:a} 和 {it:b} c-符合
	   {it:result}:  max({it:r1},{it:r2}) {it:x} max({it:c1},{it:c2})


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
冒号运算符在与底层运算符返回缺失值和出现错误的相同条件下返回缺失值并终止。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <m2_op_colon.sthlp>}