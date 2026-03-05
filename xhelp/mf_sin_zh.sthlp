{smcl}
{* *! version 2.1.4  15may2018}{...}
{vieweralsosee "[M-5] sin()" "mansection M-5 sin()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] Scalar" "help m4_scalar_zh"}{...}
{viewerjumpto "语法" "mf_sin_zh##syntax"}{...}
{viewerjumpto "描述" "mf_sin_zh##description"}{...}
{viewerjumpto "相容性" "mf_sin_zh##conformability"}{...}
{viewerjumpto "诊断" "mf_sin_zh##diagnostics"}{...}
{viewerjumpto "源代码" "mf_sin_zh##source"}
{help mf_sin:English Version}
{hline}{...}
{p2colset 1 16 18 2}{...}
{p2col:{bf:[M-5] sin()} {hline 2}}三角和双曲函数
{p_end}
{p2col:}({mansection M-5 sin():查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
	{it:数字矩阵} {cmd:sin(}{it:数字矩阵 Z}{cmd:)}

{p 8 12 2}
	{it:数字矩阵} {cmd:cos(}{it:数字矩阵 Z}{cmd:)}

{p 8 12 2}
	{it:数字矩阵} {cmd:tan(}{it:数字矩阵 Z}{cmd:)} 


{p 8 12 2}
	{it:数字矩阵} {cmd:asin(}{it:数字矩阵 Z}{cmd:)}

{p 8 12 2}
	{it:数字矩阵} {cmd:acos(}{it:数字矩阵 Z}{cmd:)}

{p 8 12 2}
	{it:数字矩阵} {cmd:atan(}{it:数字矩阵 Z}{cmd:)}


{p 8 12 2}
	{it:实矩阵}{bind:    }{cmd:atan2(}{it:实矩阵 X}{cmd:,} {it:实矩阵 Y}{cmd:)}


{p 8 12 2}
	{it:实矩阵}{bind:    }{cmd:arg(}{it:复数矩阵 Z}{cmd:)} 


{p 8 12 2}
	{it:数字矩阵} {cmd:sinh(}{it:数字矩阵 Z}{cmd:)}

{p 8 12 2}
	{it:数字矩阵} {cmd:cosh(}{it:数字矩阵 Z}{cmd:)}

{p 8 12 2}
	{it:数字矩阵} {cmd:tanh(}{it:数字矩阵 Z}{cmd:)}


{p 8 12 2}
	{it:数字矩阵} {cmd:asinh(}{it:数字矩阵 Z}{cmd:)}

{p 8 12 2}
	{it:数字矩阵} {cmd:acosh(}{it:数字矩阵 Z}{cmd:)}

{p 8 12 2}
	{it:数字矩阵} {cmd:atanh(}{it:数字矩阵 Z}{cmd:)}


{p 8 12 2}
	{it:实标量}{bind:    }{cmd:pi()}


{marker description}{...}
{title:描述}

{p 4 4 2}
        {cmd:sin(}{it:Z}{cmd:)}, {cmd:cos(}{it:Z}{cmd:)}, 和
        {cmd:tan(}{it:Z}{cmd:)} 返回相应的三角函数。
	角度以弧度为单位计算。如果参数为实数则返回实数，如果参数为复数则返回复数。

{p 8 8 2}
	{cmd:sin(}{it:x}{cmd:)}, {it:x} 为实数，返回 {it:x} 的正弦值。 
        {cmd:sin()} 返回的值范围为 -1 到 1。

{p 8 8 2}
	{cmd:sin(}{it:z}{cmd:)}, {it:z} 为复数，返回 {it:z} 的复数正弦值，
        数学上定义为 
        {exp({it:i}*{it:z})-exp(-{it:i}*{it:z})}/2{it:i}。

{p 8 8 2}
	{cmd:cos(}{it:x}{cmd:)}, {it:x} 为实数，返回 {it:x} 的余弦值。 
        {cmd:cos()} 返回的值范围为 -1 到 1。

{p 8 8 2}
	{cmd:cos(}{it:z}{cmd:)}, {it:z} 为复数，返回 {it:z} 的复数余弦值，
        数学上定义为 
        {exp({it:i}*{it:z})+exp(-{it:i}*{it:z})}/2。

{p 8 8 2}
	{cmd:tan(}{it:x}{cmd:)}, {it:x} 为实数，返回 {it:x} 的正切值。 

{p 8 8 2}
	{cmd:tan(}{it:z}{cmd:)}, {it:z} 为复数，返回 {it:z} 的复数正切值，
        数学上定义为 sin({it:z})/cos({it:z})。

{p 4 4 2}
    {cmd:asin(}{it:Z}{cmd:)}, {cmd:acos(}{it:Z}{cmd:)}, 和
    {cmd:atan(}{it:Z}{cmd:)} 返回相应的反三角函数。返回的结果以弧度为单位。如果参数为实数则返回实数，如果参数为复数则返回复数。

{p 8 8 2}
        {cmd:asin(}{it:x}{cmd:)}, {it:x} 为实数，返回反正弦值，范围为 
        [-{it:pi}/2,{it:pi}/2]。  
        如果 {it:x} < -1 或 {it:x} > 1，则返回缺失值 ({cmd:.})。

{p 8 8 2}
        {cmd:asin(}{it:z}{cmd:)}, {it:z} 为复数，返回复数反正弦值，数学上定义为 
        -{it:i}*ln{{it:i}*{it:z} + sqrt(1-{it:z}*{it:z})}。
        Re(asin()) 选择在区间 [-{it:pi}/2,{it:pi}/2]。

{p 8 8 2}
        {cmd:acos(}{it:x}{cmd:)}, {it:x} 为实数，返回反余弦值，范围为 
        [0,{it:pi}]。 
        如果 {it:x} < -1 或 {it:x} > 1，则返回缺失值 ({cmd:.})。

{p 8 8 2}
        {cmd:acos(}{it:z}{cmd:)}, {it:z} 为复数，返回复数反余弦值，数学上定义为 
        -{it:i}*ln{{it:z} + sqrt({it:z}*{it:z}-1)}。
        Re(acos()) 选择在区间 [0,{it:pi}]。

{p 8 8 2}
        {cmd:atan(}{it:x}{cmd:)}, {it:x} 为实数，返回反正切值，范围为 
        (-{it:pi}/2,{it:pi}/2)。 

{p 8 8 2}
        {cmd:atan(}{it:z}{cmd:)}, {it:z} 为复数，返回复数反正切值，数学上定义为 
	ln{(1+{it:i}{it:z})/(1-{it:i}{it:z})}/(2{it:i})。
        Re(atan()) 选择在区间 [0,{it:pi}]。


{p 4 4 2}
    {cmd:atan2(}{it:X}{cmd:,} {it:Y}{cmd:)} 返回由
    ({it:X},{it:Y}) 确定的向量的角度的弧度值范围为 (-{it:pi},{it:pi}]，结果在第一和第二象限为 [0,{it:pi}]，在第四和第三象限为 [0,-{it:pi})。 {it:X} 和 {it:Y} 必须为实数。 {cmd:atan2(}{it:X}{cmd:,} {it:Y}{cmd:)} 等价于
    {cmd:arg(C(}{it:X}{cmd:,} {it:Y}{cmd:))}。

{p 4 4 2}
    {cmd:arg(}{it:Z}{cmd:)} 返回 {cmd:Im(}{it:Z}{cmd:)/}{cmd:Re(}{it:Z}{cmd:)} 的反正切值，结果在正确的象限内，范围为 (-{it:pi},{it:pi}]；第一和第二象限为 [0,{it:pi}]，第四和第三象限为 [0,-{it:pi})。 {cmd:arg(}{it:Z}{cmd:)} 等价于 {cmd:atan2(Re(}{it:Z}{cmd:), Im(}{it:Z}{cmd:))}。


{p 4 4 2}
    {cmd:sinh(}{it:Z}{cmd:)}, {cmd:cosh(}{it:Z}{cmd:)}, 和
    {cmd:tanh(}{it:Z}{cmd:)} 返回超正弦、超余弦和超正切，分别。若参数为实数，返回值为实数；若参数为复数，返回值为复数。

{p 8 8 2}
	{cmd:sinh(}{it:x}{cmd:)}, {it:x} 为实数，返回 {it:x} 的反超正弦值，数学上定义为 
        {exp({it:x})-exp(-{it:x})}/2。

{p 8 8 2}
	{cmd:sinh(}{it:z}{cmd:)}, {it:z} 为复数，返回 {it:z} 的复数超正弦值，数学上定义为 
        {exp({it:z})-exp(-{it:z})}/2。

{p 8 8 2}
	{cmd:cosh(}{it:x}{cmd:)}, {it:x} 为实数，返回 {it:x} 的反超余弦值，数学上定义为 
        {exp({it:x})+exp(-{it:x})}/2。

{p 8 8 2}
	{cmd:cosh(}{it:z}{cmd:)}, {it:z} 为复数，返回 {it:z} 的复数超余弦值，数学上定义为 
        {exp({it:z})+exp(-{it:z})}/2。

{p 8 8 2}
	{cmd:tanh(}{it:x}{cmd:)}, {it:x} 为实数，返回 {it:x} 的反超正切值，数学上定义为 
	sinh({it:x})/cosh({it:x})。

{p 8 8 2}
	{cmd:tanh(}{it:z}{cmd:)}, {it:z} 为复数，返回 {it:z} 的复数超正切值，数学上定义为 
	sinh({it:z})/cosh({it:z})。

{p 4 4 2}
    {cmd:asinh(}{it:Z}{cmd:)}, {cmd:acosh(}{it:Z}{cmd:)}, 和
    {cmd:atanh(}{it:Z}{cmd:)} 返回反超正弦、反超余弦和反超正切，分别。若参数为实数，返回值为实数；若参数为复数，返回值为复数。  

{p 8 8 2}
        {cmd:asinh(}{it:x}{cmd:)}, {it:x} 为实数，返回反超正弦值。

{p 8 8 2}
        {cmd:asinh(}{it:z}{cmd:)}, {it:z} 为复数，返回复数反超正弦值，数学上定义为 
	ln{{it:z}+sqrt({it:z}*{it:z}+1)}。
	Im(asinh()) 选择在区间 [-{it:pi}/2,{it:pi}/2]。

{p 8 8 2}
        {cmd:acosh(}{it:x}{cmd:)}, {it:x} 为实数，返回反超余弦值。如果 {it:x} < 1，则返回缺失值 ({cmd:.})。

{p 8 8 2}
        {cmd:acosh(}{it:z}{cmd:)}, {it:z} 为复数，返回复数反超余弦值，数学上定义为 
        ln{{it:z} + sqrt({it:z}*{it:z}-1)}。
	Im(acosh()) 选择在区间 [-{it:pi},{it:pi}]；
        Re(acosh()) 选择为非负。

{p 8 8 2}
        {cmd:atanh(}{it:x}{cmd:)}, {it:x} 为实数，返回反超正切值。如果 |{it:x}|>1，则返回缺失值 ({cmd:.})。

{p 8 8 2}
        {cmd:atanh(}{it:z}{cmd:)}, {it:z} 为复数，返回复数反超正切值，数学上定义为 
	ln{(1+{it:z})/(1-{it:z})}/2。
	Im(atanh()) 选择在区间 [-{it:pi}/2,{it:pi}/2]。

{p 4 4 2}
	{cmd:pi()} 返回 {it:pi} 的值。


{marker conformability}{...}
{title:相容性}

{p 4 4 2}
{cmd:atan2(}{it:X}{cmd:,} {it:Y}{cmd:)}:
{p_end}
                {it:X}:  {it:r1 x c1}
                {it:Y}:  {it:r2 x c2}, {it:X} 和 {it:Y} r-相容
           {it:result}:  max({it:r1},{it:r2}) {it:x} max({it:c1},{it:c2})

{p 4 4 2}
{cmd:pi()} 返回一个 1 {it:x} 1 的标量。

{p 4 4 2}
所有其他函数返回与输入相同维度的矩阵，包含逐元素计算的结果。


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
    当实数参数的结果为复数时，所有函数返回缺失值。 例如， {cmd:acos(2)} = ., 而
    {cmd:acos(2+0i)} = -1.317i。


{marker source}{...}
{title:源代码}

{p 4 4 2}
{view asin.mata, adopath asis:asin.mata},
{view acos.mata, adopath asis:acos.mata},
{view atan.mata, adopath asis:atan.mata},
{view tanh.mata, adopath asis:tanh.mata},
{view asinh.mata, adopath asis:asinh.mata},
{view acosh.mata, adopath asis:acosh.mata},
{view atanh.mata, adopath asis:atanh.mata},
{view pi.mata, adopath asis:pi.mata};
其他函数为内置函数。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_sin.sthlp>}