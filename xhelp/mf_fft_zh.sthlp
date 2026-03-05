{smcl}
{* *! version 1.1.6  15may2018}{...}
{vieweralsosee "[M-5] fft()" "mansection M-5 fft()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] Mathematical" "help m4_mathematical_zh"}{...}
{viewerjumpto "Syntax" "mf_fft_zh##syntax"}{...}
{viewerjumpto "Description" "mf_fft_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mf_fft_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "mf_fft_zh##remarks"}{...}
{viewerjumpto "Conformability" "mf_fft_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf_fft_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf_fft_zh##source"}
{help mf_fft:English Version}
{hline}{...}
{p2colset 1 16 18 2}{...}
{p2col:{bf:[M-5] fft()} {hline 2}}傅里叶变换
{p_end}
{p2col:}({mansection M-5 fft():查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{it:复数向量}
{cmd:fft(}{it:数值向量 h}{cmd:)}

{p 8 12 2}
{it:数值向量}
{cmd:invfft(}{it:数值向量 H}{cmd:)}


{p 8 12 2}
{it:void}{bind:         }
{cmd:_fft(}{it:复数向量 h}{cmd:)}

{p 8 12 2}
{it:void}{bind:         }
{cmd:_invfft(}{it:复数向量 H}{cmd:)}


{p 8 12 2}
{it:数值向量}
{cmd:convolve(}{it:数值向量 r}{cmd:,}
{it:数值向量 s}{cmd:)}

{p 8 12 2}
{it:数值向量}
{cmd:deconvolve(}{it:数值向量 r}{cmd:,}
{it:数值向量 sm}{cmd:)}


{p 8 12 2}
{it:数值向量}
{cmd:Corr(}{it:数值向量 g}{cmd:,}
{it:数值向量 h}{cmd:,}
{it:实数标量 k}{cmd:)}


{p 8 12 2}
{it:实数向量}{bind:   }
{cmd:ftperiodogram(}{it:数值向量 H}{cmd:)}


{p 8 12 2}
{it:数值向量}
{cmd:ftpad(}{it:数值向量 h}{cmd:)}

{p 8 12 2}
{it:数值向量}
{cmd:ftwrap(}{it:数值向量 r}{cmd:,}
{it:实数标量 n}{cmd:)}

{p 8 12 2}
{it:数值向量}
{cmd:ftunwrap(}{it:数值向量 H}{cmd:)}

{p 8 12 2}
{it:数值向量}
{cmd:ftretime(}{it:数值向量 r}{cmd:,}
{it:数值向量 s}{cmd:)}

{p 8 12 2}
{it:实数向量}{bind:   }
{cmd:ftfreqs(}{it:数值向量 H}{cmd:,}
{it:实数标量 delta}{cmd:)}


{marker description}{...}
{title:描述}

{p 4 4 2}
{it:H}={cmd:fft(}{it:h}{cmd:)}
和 
{it:h}={cmd:invfft(}{it:H}{cmd:)} 
计算傅里叶变换和逆傅里叶变换。
{it:H} 和 {it:h} 的长度必须是2的幂。

{p 4 4 2}
{cmd:_fft(}{it:h}{cmd:)}
和
{cmd:_invfft(}{it:H}{cmd:)} 实现相同的功能，但它们在原地执行计算，替换 {it:h} 和 {it:H} 的内容。

{p 4 4 2}
{cmd:convolve(}{it:r}{cmd:,} {it:s}{cmd:)} 
返回信号 {it:s} 与响应函数 {it:r} 的卷积。
{cmd:deconvolve(}{it:r}{cmd:,} {it:sm}{cmd:)}
用响应函数 {it:r} 对模糊信号 {it:sm} 进行反卷积，因此是 {cmd:convolve()} 的逆操作。

{p 4 4 2}
{cmd:Corr(}{it:g}{cmd:,} {it:h}{cmd:,} {it:k}{cmd:)}
返回一个包含 {it:g} 和 {it:h} 在高达 {it:k} 的滞后和超前的相关性后的 2{it:k}+1 个元素的向量。

{p 4 4 2}
{cmd:ftperiodogram(}{it:H}{cmd:)} 返回一个实数向量
包含 {it:H} 的单侧周期图。

{p 4 4 2}
{cmd:ftpad(}{it:h}{cmd:)} 返回用0填充到长度为2的幂的 {it:h}。

{p 4 4 2}
{cmd:ftwrap(}{it:r}{cmd:,} {it:n}{cmd:)} 
将对称存储的响应函数 {it:r} 转换为长度为 {it:n} 的环绕格式，
{it:n}>={cmd:rows(}{it:r}{cmd:)*cols(}{it:r}{cmd:)} 且
{cmd:rows(}{it:r}{cmd:)*cols(}{it:r}{cmd:)} 为奇数。

{p 4 4 2}
{cmd:ftunwrap(}{it:H}{cmd:)} 解开由 {cmd:fft()} 返回的频率环绕顺序。你可能会发现这在绘图或列出结果时有用，但否则是不必要的。

{p 4 4 2}
{cmd:ftretime(}{it:r}{cmd:,} {it:s}{cmd:)} 将信号 {it:s} 的时间调整到与 {cmd:convolve(}{it:r}{cmd:,} {it:s}{cmd:)} 的时间刻度相同。这在绘图数据和列出结果中很有用，但其他情况下并不需要。

{p 4 4 2}
{cmd:ftfreqs(}{it:H}{cmd:,} {it:delta}{cmd:)} 
返回一个与 {it:H} 兼容的频率向量； {it:delta} 是采样间隔，通常指定为 1。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection M-5 fft()Remarksandexamples:备注和示例}

{pstd}
上述部分不包括在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
备注按照以下主题呈现：

	{help mf_fft##remarks1:定义、符号和约定}
	{help mf_fft##remarks2:傅里叶变换}
	{help mf_fft##remarks3:卷积和反卷积}
	{help mf_fft##remarks4:相关性}
	{help mf_fft##remarks5:实用例程}
	{help mf_fft##remarks6:警告}


{marker remarks1}{...}
{title:定义、符号和约定}

{p 4 4 2}
信号 {it:h} 是包含实数或复数元素的行或列向量。
信号的长度定义为向量的元素个数。
有时需要将信号填充到给定长度。这是通过形成一个新向量，使其等于原始向量，并在末尾添加0实现的。

{p 4 4 2}
信号 {it:h} 的傅里叶变换，通常以大写字母 {it:H} 表示，其存储为频率环绕顺序。也就是说，如果 {it:H} 中有 {it:n} 个元素：

			{it:H}[1]            频率 0
			{it:H}[2]            频率 1 
			{it:H}[3]            频率 2
			.
			{it:H}[{it:n}/2]          频率 {it:n}/2-1
			{it:H}[{it:n}/2+1]        频率 {it:n}/2 (-{it:n}/2，混淆)
			{it:H}[{it:n}/2+2]        频率 -({it:n}/2-1)
			.
			{it:H}[{it:n}-1]          频率 -2
			{it:H}[{it:n}]            频率 -1

{p 4 4 2}
所有例程都期望并使用这种顺序，但请参见下面的 {helpb mf_fft##ftunwrap():ftunwrap()}。

{p 4 4 2}
响应函数 {it:r} 是一个包含 {it:m}=2{it:k}+1 个实数或复数元素的行或列向量。 {it:m} 被称为响应函数的持续时间。响应函数通常对称存储，尽管响应函数本身并不一定为对称。响应向量包含

		       {it:r}[1]             滞后 -{it:k} 的响应
		       {it:r}[2]             滞后 -{it:k}+1 的响应
		       .
		       {it:r}[{it:k}]             滞后 -1 的响应
		       {it:r}[{it:k}+1]           同期响应 
		       {it:r}[{it:k}+2]           超前 1 的响应
		       {it:r}[{it:k}+3]           超前 2 的响应
		       .
		       {it:r}[2{it:k}+1]          超前 {it:k} 的响应

{p 4 4 2}
响应函数总是具有奇数长度。响应向量从不填充。

{p 4 4 2}
你可能会发现以“环绕”顺序存储响应向量是方便的（类似于频率环绕顺序），尽管这里没有例程要求这样。在环绕顺序中：

		    wrap[1]             同期响应
		    wrap[2]             超前 1 的响应
		    wrap[3]             超前 2 的响应
		    .
		    wrap[{it:k}+1]           超前 {it:k} 的响应
		    wrap[{it:k}+2]           滞后 -{it:k} 的响应
		    wrap[{it:k}+3]           滞后 -{it:k}+1 的响应
		    .
		    wrap[2{it:k}+1]          滞后 -1 的响应

{p 4 4 2}
以环绕顺序存储的响应向量可以通过在 wrap[{it:k}+1] 和 wrap[{it:k}+2] 之间插入零而内部填充（与仅仅填充不同），以达到给定长度。


{marker remarks2}{...}
{title:傅里叶变换}

{p 4 4 2}
{cmd:fft(}{it:h}{cmd:)} 返回 {it:h} 的离散傅里叶变换。{it:h} 可以是实数或复数，但其长度必须是2的幂，所以通常会编码为 {cmd:fft(ftpad(}{it:h}{cmd:))}; 
请参见下面的 {helpb mf_fft##ftpad():ftpad()}。返回的结果与 {it:h} 是 p 兼容的。计算由 {cmd:_fft()} 执行。

{p 4 4 2}
{cmd:invfft(}{it:H}{cmd:)} 返回 {it:H} 的离散逆傅里叶变换。{it:H} 可以是实数或复数，但其长度必须是2的幂。返回的结果与 {it:H} 是 p 兼容的。计算由 {cmd:_invfft()} 执行。

{p 4 4 2}
{cmd:invfft(}{it:H}{cmd:)} 可以返回实数或复数。这应被视为一个特性，但如果你希望确保复数解释，可以编码为 {cmd:C(invfft(}{it:H}{cmd:))}。

{p 4 4 2}
{cmd:_fft(}{it:h}{cmd:)} 是执行原地快速傅里叶变换的内置过程。{it:h} 必须是复数，且其长度必须是2的幂。

{p 4 4 2}
{cmd:_invfft(}{it:H}{cmd:)} 是执行原地逆快速傅里叶变换的内置过程。{it:H} 必须是复数，且其长度必须是2的幂。


{marker remarks3}{...}
{title:卷积和反卷积}

{p 4 4 2}
{cmd:convolve(}{it:r}{cmd:,} {it:s}{cmd:)} 
返回信号 {it:s} 与响应函数 {it:r} 的卷积。计算通过对元素进行 {cmd:fft()}，然后相乘，并使用 {cmd:invfft()} 将结果反变换。
然而，信号 {it:s} 的长度不必是2的幂。{cmd:convolve()} 处理所有必要的填充，包括对 {it:s} 的填充，以防止结果被 {it:s} 的错误环绕污染。尽管人们认为卷积运算符是可交换的，{cmd:convolve()} 并不可交换，因为所需的响应和信号的零填充不同。

{p 4 4 2}
如果信号的长度为 {it:n} 而响应函数的长度为 2{it:k}+1，则返回的结果的长度为 {it:n}+2{it:k}。前 {it:k} 个元素是卷积信号，直到真正信号开始，而最后 {it:k} 个元素是卷积信号，直到真正信号结束。
见下面的 {helpb mf_fft##ftretime():ftretime()}。无论如何，您可能只对元素
{cmd:convolve()[|}{it:k}+1{cmd:\}{it:n}-{it:k}{cmd:|]} 感兴趣，与 {it:s} 同期的那部分。

{p 4 4 2}
如果 {it:s} 是行向量，则返回的向量是行向量；否则返回的是列向量。如果 {it:r} 和 {it:s} 都是实数，则结果保证为实数；否则，结果可能是复数或实数。

{p 4 4 2}
并不要求响应函数短于信号，尽管通常情况下这确实是这样。


{p 4 4 2}
{cmd:deconvolve(}{it:r}{cmd:,} {it:sm}{cmd:)}
用响应函数 {it:r} 对模糊信号 {it:sm} 进行反卷积，因此是 {cmd:convolve()} 的逆操作。特别地，

		{cmd:deconvolve(}{it:r}{cmd:, convolve(}{it:r}{cmd:,}{it:s}{cmd:))} = {it:s}        （保留舍入误差）

{p 4 4 2}
关于 {cmd:convolve()} 的所有内容同样适用于 {cmd:deconvolve()}。


{marker remarks4}{...}
{title:相关性}

{p 4 4 2}
这里我们指的是信号处理意义上的相关性，而不是统计意义。

{p 4 4 2}
{cmd:Corr(}{it:g}{cmd:,} {it:h}{cmd:,} {it:k}{cmd:)}
返回一个包含 {it:g} 和 {it:h} 在高达 {it:k} 的滞后和超前的相关性的 2{it:k}+1 个元素的向量。
例如，
{cmd:Corr(}{it:g}{cmd:,} {it:h}{cmd:,} {cmd:2)} 返回一个五元素向量，第一个元素是滞后 2 的相关性，第二个元素是滞后 1，第三个元素是同期相关性，第四个元素是超前 1，最后一个元素是超前 2。 {it:k} 必须大于或等于 1。返回的向量是行向量或列向量，具体取决于 {it:g} 是行向量还是列向量。 {it:g} 和 {it:h} 必须具有相同数量的元素，但不需要 p 兼容。

{p 4 4 2}
结果是通过填充零以避免污染，计算傅里叶变换，乘以 {it:G}*conj({it:H})，并重新排列反变换的结果获得的。然而，{it:g} 和 {it:h} 的元素个数不必是2的幂，因为程序内部填充。

{marker remarks5}{...}
{title:实用例程}

{marker ftpad()}{...}
{p 4 4 2}
{cmd:ftpad(}{it:h}{cmd:)} 返回 {it:h} 用0填充到长度为2的幂。例如，

	: {cmd:h = (1,2,3,4,5)}

	: {cmd:ftpad(h)}
        {res}       {txt}1   2   3   4   5   6   7   8
            {c TLC}{hline 33}{c TRC}
          1 {c |}  {res}1   2   3   4   5   0   0   0{txt}  {c |}
            {c BLC}{hline 33}{c BRC}

{p 4 4 2}
如果 {it:h} 是行向量，则返回行向量。如果 {it:h} 是列向量，则返回列向量。 

{p 4 4 2}
{cmd:ftwrap(}{it:r}{cmd:,} {it:n}{cmd:)} 
将对称存储的响应函数 {it:r} 转换为长度为 {it:n} 的环绕格式，
{it:n}>={cmd:rows(}{it:r}{cmd:)*cols(}{it:r}{cmd:)} 且
{cmd:rows(}{it:r}{cmd:)*cols(}{it:r}{cmd:)} 为奇数。一个对称存储的响应函数是奇数长度的向量，例如：

			(.1, .5, 1, .2, .4)

{p 4 4 2}
向量的中间元素表示滞后0的响应。中间之前的元素表示滞后，而中间之后的元素表示超前。这里 .1 是滞后 2 的响应，.5 是滞后 1，1 是同期响应，.2 是超前 1 的响应，.4 是超前 2 的响应。响应函数的环绕格式记录了0、1等时刻的响应，其首位置有一些零，然后记录响应函数的最负时间值，依此类推。

{p 4 4 2}
例如，

	: {cmd:r}
        {res}       {txt} 1    2    3    4    5
            {c TLC}{hline 26}{c TRC}
          1 {c |}  {res}.1   .5    1   .2   .4{txt}  {c |}
            {c BLC}{hline 26}{c BRC}

	: {cmd:ftwrap(r, 5)}
        {res}       {txt} 1    2    3    4    5
            {c TLC}{hline 26}{c TRC}
          1 {c |}  {res} 1   .2   .4   .1   .5{txt}  {c |}
            {c BLC}{hline 26}{c BRC}

	: {cmd:ftwrap(r, 6)}
        {res}       {txt} 1    2    3    4    5    6
            {c TLC}{hline 31}{c TRC}
          1 {c |}  {res} 1   .2   .4    0   .1   .5{txt}  {c |}
            {c BLC}{hline 31}{c BRC}

	: {cmd:ftwrap(r, 8)}
        {res}       {txt} 1    2    3    4    5    6    7    8
            {c TLC}{hline 41}{c TRC}
          1 {c |}  {res} 1   .2   .4    0    0    0   .1   .5{txt}  {c |}
            {c BLC}{hline 41}{c BRC}


{marker ftunwrap()}{...}	
{p 4 4 2}
{cmd:ftunwrap(}{it:H}{it:)} 解开 {$cmd:fft()} 返回的频率环绕顺序。你可能会发现这在绘图或列出结果时有用，但它是其他情况下不必要的。
频率解包顺序定义为

			unwrap[1]       频率 -({it:n}/2) + 1
			unwrap[2]       频率 -({it:n}/2) + 2
			.
			unwrap[{it:n}/2-1]   频率 -1
			unwrap[{it:n}/2]     频率 0
			unwrap[{it:n}/2+1]   频率 1
			.
			unwrap[{it:n}-1]     频率 {it:n}/2 - 1
			unwrap[{it:n}]       频率 {it:n}/2

{p 4 4 2}
这里我们假设 {it:n} 是偶数，这通常是正确的。
混淆（最高）频率被赋予正号。

{p 4 4 2}
另见下面的 {helpb mf_fft##ftperiodogram():ftperiodogram()}。


{marker ftretime()}{...}
{p 4 4 2}
{cmd:ftretime(}{it:r}{cmd:,} {it:s}{cmd:)} 
将信号 {it:s} 的时间调整到与 {cmd:convolve(}{it:r}{cmd:,} {it:s}{cmd:)} 获得相同的时间尺度。这在绘图和列出结果时很有用，但其他情况下并不需要。{cmd:ftretime()} 只使用 {it:r} 的长度，而不考虑其内容，来执行重定时。如果响应向量长度为 2{it:k}+1，则返回的向量包含 {it:k} 个零、{it:s} 和 {it:k} 个零。因此，{cmd:ftretime(}{it:r}{cmd:,} {it:s}{cmd:)} 的结果与 {cmd:convolve(}{it:r}{cmd:,} {it:s}{cmd:)} 是 p 兼容的。



{p 4 4 2}
{cmd:ftfreqs(}{it:H}{cmd:,} {it:delta}{cmd:)} 
返回一个与 {it:H} 兼容的向量，包含与 {it:H} 的元素相关联的频率。 {it:delta} 是采样间隔，通常指定为1。


{marker ftperiodogram()}{...}
{p 4 4 2}
{cmd:ftperiodogram(}{it:H}{cmd:)} 返回一个长度为 {it:n}/2 的实数向量，包含 {it:H} 的单侧周期图（长度为 {it:n}），计算公式为

			abs({it:H}({it:f}))^2 + abs({it:H}(-{it:f}))^2

{p 4 4 2}
不包括频率0。因此， {cmd:ftperiodogram(}{it:H}{cmd:)[1]} 
对应于频率 1 (-1)， 
{cmd:ftperiodogram(}{it:H}{cmd:)[2]} 对应于频率 2 (-2)，依此类推。  


{marker remarks6}{...}
{title:警告}

{p 4 4 2}
{cmd:invfft(}{it:H}{cmd:)} 将尽可能将结果转为实数。如果你希望确保结果存储为复数，请编码为 {cmd:C(invfft(}{it:H}{cmd:))}。

{p 4 4 2}
{cmd:convolve(}{it:r}{cmd:,} {it:s}{cmd:)} 与 
{cmd:convolve(}{it:s}{cmd:,} {it:r}{cmd:)} 不同。

{p 4 4 2}
{cmd:convolve(}{it:r}{cmd:,} {it:s}{cmd:)} 
将尽可能将结果转为实数。如果你希望确保结果存储为复数，请编码为 {cmd:C(convolve(}{it:r}{cmd:,} {it:s}{cmd:))}。

{p 4 4 2}
对于 
{cmd:convolve(}{it:r}{cmd:,} {it:s}{cmd:)}, 
响应函数 {it:r} 的长度必须为奇数。


{marker conformability}{...}
{title:兼容性}

    {cmd:fft(}{it:h}{cmd:)}:
		{it:h}:  1 {it:x n}  或  {it:n x} 1,  {it:n} 为2的幂
	   {it:result}:  1 {it:x n}  或  {it:n x} 1

    {cmd:invfft(}{it:H}{cmd:)}:
		{it:H}:  1 {it:x n}  或  {it:n x} 1,  {it:n} 为2的幂
	   {it:result}:  1 {it:x n}  或  {it:n x} 1

    {cmd:_fft(}{it:h}{cmd:)}:
		{it:h}:  1 {it:x n}  或  {it:n x} 1,  {it:n} 为2的幂
	   {it:result}:  {it:void}

    {cmd:_invfft(}{it:H}{cmd:)}:
		{it:H}:  1 {it:x n}  或  {it:n x} 1,  {it:n} 为2的幂
	   {it:result}:  {it:void}

{p 4 4 2}
{cmd:convolve(}{it:r}{cmd:,} {it:s}{cmd:)}:
{p_end}
		{it:r}:  1 {it:x} {it:n}      或      {it:n} {it:x} 1,  {it:n}>0, {it:n} 为奇数
		{it:s}:  1 {it:x} 2{it:k}+1   或   2{it:k}+1 {it:x} 1, 即 {it:s} 为奇数长度
	   {it:result}:  1 {it:x} 2{it:k}+{it:n}   或   2{it:k}+{it:n} {it:x} 1

    {cmd:deconvolve(}{it:r}{cmd:,} {it:sm}{cmd:)}
		{it:r}:  1 {it:x} {it:n}      或      {it:n} {it:x} 1,  {it:n}>0, {it:n} 为奇数
	       {it:sm}:  1 {it:x} 2{it:k}+{it:n}   或   2{it:k}+{it:n} {it:x} 1
	   {it:result}:  1 {it:x} 2{it:k}+1   或   2{it:k}+1 {it:x} 1

{p 4 4 2}
{cmd:Corr(}{it:g}{cmd:,} {it:h}{cmd:,} {it:k}{cmd:)}:
{p_end}
		{it:g}:  1 {it:x} {it:n}      或      {it:n} {it:x} 1,  {it:n}>0
		{it:h}:  1 {it:x} {it:n}      或      {it:n} {it:x} 1
		{it:k}:  1 {it:x} 1      或      1 {it:x} 1,  {it:k}>0
	   {it:result}:  1 {it:x} 2{it:k}+1   或   2{it:k}+1 {it:x} 1

    {cmd:ftperiodogram(}{it:H}{cmd:)}:
		{it:H}:  1 {it:x} {it:n}      或     {it:n} {it:x} 1,  {it:n} 为偶数
	   {it:result}:	 {it:n}/2 {it:x} 1    或     1 {it:x} {it:n}/2

    {cmd:ftpad(}{it:h}{cmd:)}:
		{it:h}:  1 {it:x n}      或      {it:n x} 1
	   {it:result}:  1 {it:x N}      或      {it:N x} 1, {it:N} = {it:n} 四舍五入到2的幂

    {cmd:ftwrap(}{it:r}{cmd:,} {it:n}{cmd:)}:
		{it:r}:  1 {it:x} {it:m}      或      {it:m} {it:x} 1,  {it:m}>0, {it:m} 为奇数
		{it:n}:  1 {it:x} 1      或      1 {it:x} 1,  {it:n} >= {it:m}
	   {it:result}:  1 {it:x} {it:n}      或      {it:n} {it:x} 1

    {cmd:ftunwrap(}{it:H}{it:)}:
		{it:H}:  1 {it:x} {it:n}      或     {it:n} {it:x} 1
	   {it:result}:	 1 {it:x} {it:n}      或     {it:n} {it:x} 1

    {cmd:ftretime(}{it:r}{cmd:,} {it:s}{cmd:)}:
		{it:r}:  1 {it:x} {it:n}      或      {it:n} {it:x} 1,  {it:n}>0, {it:n} 为奇数
		{it:s}:  1 {it:x} 2{it:k}+1   或   2{it:k}+1 {it:x} 1,  即 {it:s} 为奇数长度
	   {it:result}:  1 {it:x} 2{it:k}+{it:n}   或   2{it:k}+{it:n} {it:x} 1

    {cmd:ftfreqs(}{it:H}{cmd:,} {it:delta}{cmd:)}:
		{it:H}:  1 {it:x} {it:n}      或     {it:n} {it:x} 1,  {it:n} 为偶数
  	    {it:delta}:  1 {it:x} 1
	   {it:result}:	 1 {it:x} {it:n}      或     {it:n} {it:x} 1


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
如果不满足兼容性要求，所有函数将在错误时中止。这当然是始终正确的，但特别注意上面明确列出的要求
{it:{help mf_fft##conformability:兼容性}}。

{p 4 4 2}
{cmd:fft(}{it:h}{cmd:)}, 
{cmd:_fft(}{it:h}{cmd:)},
{cmd:invfft(}{it:H}{cmd:)},
{cmd:_invfft(}{it:H}{cmd:)},
{cmd:convolve(}{it:r}{cmd:,} {it:s}{cmd:)},
{cmd:deconvolve(}{it:r}{cmd:,} {it:sm}{cmd:)}, 
和
{cmd:Corr(}{it:g}{cmd:,} {it:h}{cmd:,} {it:k}{cmd:)}
如果任何参数包含缺失值，将返回缺失结果。

{p 4 4 2}
{cmd:ftwrap(}{it:r}{cmd:,} {it:n}{cmd:)}
如果 {it:n} 包含缺失值时，将中止，并返回错误。


{marker source}{...}
{title:源代码}

{p 4 4 2}
{view fft.mata, adopath asis:fft.mata},
{view invfft.mata, adopath asis:invfft.mata},
{view convolve.mata, adopath asis:convolve.mata},
{view deconvolve.mata, adopath asis:deconvolve.mata},
{view corruppercase.mata, adopath asis:corruppercase.mata},
{view ftperiodogram.mata, adopath asis:ftperiodogram.mata},
{view ftpad.mata, adopath asis:ftpad.mata},
{view ftwrap.mata, adopath asis:ftwrap.mata},
{view ftunwrap.mata, adopath asis:ftunwrap.mata},
{view ftretime.mata, adopath asis:ftretime.mata},
{view ftfreqs.mata, adopath asis:ftfreqs.mata}

{pstd}
{cmd:_fft()} 和 {cmd:_invfft()} 是内置的。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_fft.sthlp>}