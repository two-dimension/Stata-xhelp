{smcl}
{* *! version 1.5.5  15may2018}{...}
{vieweralsosee "[M-5] runiform()" "mansection M-5 runiform()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] Standard" "help m4_standard_zh"}{...}
{vieweralsosee "[M-4] Statistical" "help m4_statistical_zh"}{...}
{viewerjumpto "语法" "mf_runiform_zh##syntax"}{...}
{viewerjumpto "描述" "mf_runiform_zh##description"}{...}
{viewerjumpto "PDF文档链接" "mf_runiform_zh##linkspdf"}{...}
{viewerjumpto "备注" "mf_runiform_zh##remarks"}{...}
{viewerjumpto "相容性" "mf_runiform_zh##conformability"}{...}
{viewerjumpto "诊断" "mf_runiform_zh##diagnostics"}{...}
{viewerjumpto "源代码" "mf_runiform_zh##source"}{...}
{viewerjumpto "参考文献" "mf_runiform_zh##reference"}
{help mf_runiform:English Version}
{hline}{...}
{p2colset 1 21 23 2}{...}
{p2col:{bf:[M-5] runiform()} {hline 2}}均匀和非均匀伪随机变数
{p_end}
{p2col:}({mansection M-5 runiform():查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 31 2}
{it:实数 矩阵}{bind:  }
{cmd:runiform(}{it:实数 标量 r}{cmd:,} {it:实数 标量 c}{cmd:)}

{p 8 31 2}
{it:实数 矩阵}{bind:  }
{cmd:runiform(}{it:实数 标量 r}{cmd:,} {it:实数 标量 c}{cmd:,}
               {it:实数 矩阵 a}{cmd:,} {it:实数 矩阵 b}{cmd:)}



{p 8 34 2}
{it:实数 矩阵}{bind:  }
{cmd:runiformint(}{it:实数 标量 r}{cmd:,} {it:实数 标量 c}{cmd:,}
               {it:实数 矩阵 a}{cmd:,} {it:实数 矩阵 b}{cmd:)}



{p 8 12 2}
{it:字符串 标量}
{cmd:rseed()}

{p 8 12 2}
{it:无}{bind:         }
{cmd:rseed(}{it:实数 标量 newseed}{cmd:)}



{p 8 12 2}
{it:字符串 标量}
{cmd:rngstate()}

{p 8 12 2}
{it:无}{bind:         }
{cmd:rngstate(}{it:字符串 标量 newstate}{cmd:)}



{p 8 28 2}
{it:实数 矩阵}{bind:  }
{cmd:rbeta(}{it:实数 标量 r}{cmd:,} {it:实数 标量 c}{cmd:,}{break}
{it:实数 矩阵 a}{cmd:,} {it:实数 矩阵 b}{cmd:)}



{p 8 32 2}
{it:实数 矩阵}{bind:  }
{cmd:rbinomial(}{it:实数 标量 r}{cmd:,} {it:实数 标量 c}{cmd:,}{break}
{it:实数 矩阵 n}{cmd:,} {it:实数 矩阵 p}{cmd:)}



{p 8 30 2}
{it:实数 矩阵}{bind:  }
{cmd:rcauchy(}{it:实数 标量 r}{cmd:,} {it:实数 标量 c}{cmd:,}{break}
{it:实数 矩阵 a}{cmd:,} {it:实数 矩阵 b}{cmd:)}



{p 8 29 2}
{it:实数 矩阵}{bind:  }
{cmd:rchi2(}{it:实数 标量 r}{cmd:,} {it:实数 标量 c}{cmd:,}
{it:实数 矩阵 df}{cmd:)}



{p 8 32 2}
{it:实数 矩阵}{bind:  }
{cmd:rdiscrete(}{it:实数 标量 r}{cmd:,} {it:实数 标量 c}{cmd:,}
{it:实数 列向量 p}{cmd:)}



{p 8 29 2}
{it:实数 矩阵}{bind:  }
{cmd:rexponential(}{it:实数 标量 r}{cmd:,} {it:实数 标量 c}{cmd:,}
{it:实数 矩阵 b}{cmd:)}



{p 8 29 2}
{it:实数 矩阵}{bind:  }
{cmd:rgamma(}{it:实数 标量 r}{cmd:,} {it:实数 标量 c}{cmd:,}
{it:实数 矩阵 a}{cmd:,} {it:实数 矩阵 b}{cmd:)}



{p 8 38 2}
{it:实数 矩阵}{bind:  }
{cmd:rhypergeometric(}{it:实数 标量 r}{cmd:,} {it:实数 标量 c}{cmd:,}{break}
{it:实数 矩阵 N}{cmd:,} {it:实数 矩阵 K}{cmd:,}{break}
{it:实数 矩阵 n}{cmd:)}



{p 8 33 2}
{it:实数 矩阵}{bind:  }
{cmd:rigaussian(}{it:实数 标量 r}{cmd:,} {it:实数 标量 c}{cmd:,}
{it:实数 矩阵 m}{cmd:,} {it:实数 矩阵 a}{cmd:)}



{p 8 30 2}
{it:实数 矩阵}{bind:  }
{cmd:rlaplace(}{it:实数 标量 r}{cmd:,} {it:实数 标量 c}{cmd:,}{break}
{it:实数 矩阵 m}{cmd:,} {it:实数 矩阵 b}{cmd:)}



{p 8 32 2}
{it:实数 矩阵}{bind:  }
{cmd:rlogistic(}{it:实数 标量 r}{cmd:,} {it:实数 标量 c}{cmd:)}

{p 8 32 2}
{it:实数 矩阵}{bind:  }
{cmd:rlogistic(}{it:实数 标量 r}{cmd:,} {it:实数 标量 c}{cmd:,}
{it:实数 矩阵 s}{cmd:)}

{p 8 32 2}
{it:实数 矩阵}{bind:  }
{cmd:rlogistic(}{it:实数 标量 r}{cmd:,} {it:实数 标量 c}{cmd:,}
{it:实数 矩阵 m}{cmd:,} {it:实数 矩阵 s}{cmd:)}



{p 8 33 2}
{it:实数 矩阵}{bind:  }
{cmd:rnbinomial(}{it:实数 标量 r}{cmd:,} {it:实数 标量 c}{cmd:,}{break}
{it:实数 矩阵 n}{cmd:,} {it:实数 矩阵 p}{cmd:)}



{p 8 30 2}
{it:实数 矩阵}{bind:  }
{cmd:rnormal(}{it:实数 标量 r}{cmd:,} {it:实数 标量 c}{cmd:,}{break}
{it:实数 矩阵 m}{cmd:,} {it:实数 矩阵 s}{cmd:)}



{p 8 31 2}
{it:实数 矩阵}{bind:  }
{cmd:rpoisson(}{it:实数 标量 r}{cmd:,} {it:实数 标量 c}{cmd:,}{break}
{it:实数 矩阵 m}{cmd:)}



{p 8 31 2}
{it:实数 矩阵}{bind:  }
{cmd:rt(}{it:实数 标量 r}{cmd:,} {it:实数 标量 c}{cmd:,} 
{it:实数 矩阵 df}{cmd:)}



{p 8 31 2}
{it:实数 矩阵}{bind:  }
{cmd:rweibull(}{it:实数 标量 r}{cmd:,} {it:实数 标量 c}{cmd:,} 
{it:实数 矩阵 a}{cmd:,} {it:实数 矩阵 b}{cmd:)}

{p 8 31 2}
{it:实数 矩阵}{bind:  }
{cmd:rweibull(}{it:实数 标量 r}{cmd:,} {it:实数 标量 c}{cmd:,} 
{it:实数 矩阵 a}{cmd:,} {it:实数 矩阵 b}{cmd:,}
{it:实数 矩阵 g}{cmd:)}



{p 8 33 2}
{it:实数 矩阵}{bind:  }
{cmd:rweibullph(}{it:实数 标量 r}{cmd:,} {it:实数 标量 c}{cmd:,} 
{it:实数 矩阵 a}{cmd:,} {it:实数 矩阵 b}{cmd:)}

{p 8 33 2}
{it:实数 矩阵}{bind:  }
{cmd:rweibullph(}{it:实数 标量 r}{cmd:,} {it:实数 标量 c}{cmd:,} 
{it:实数 矩阵 a}{cmd:,} {it:实数 矩阵 b}{cmd:,}
{it:实数 矩阵 g}{cmd:)}



{marker description}{...}
{title:描述}

{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection M-5 runiform()Remarkandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker runiform}{...}
{p 4 4 2}
{cmd:runiform(}{it:r}{cmd:,} {it:c}{cmd:)} 返回一个 {it:r x c} 实数矩阵
包含在 (0,1) 范围内均匀分布的随机变量。
{cmd:runiform()} 与 Stata 的 {helpb runiform()} 函数相同。
{p_end}

{p 4 4 2}
{cmd:runiform(}{it:r}{cmd:,} {it:c}{cmd:,} {it:a}{cmd:,} {it:b}{cmd:)}
返回一个 i{it:r x} j{it:c} 实数矩阵
包含在 ({it:a},{it:b}) 范围内均匀分布的随机变量。
矩阵 {it:a} 和 {it:b} 必须是
{help m6 glossary##r-conformability:r-相容性}, 其中
i = {cmd:max(rows(}{it:a}{cmd:),rows(}{it:b}{cmd:))} 并且
j = {cmd:max(cols(}{it:a}{cmd:),cols(}{it:b}{cmd:))}。

{p 4 4 2}
{cmd:runiformint(}{it:r}{cmd:,} {it:c}{cmd:,} {it:a}{cmd:,} {it:b}{cmd:)}
返回一个 i{it:r x} j{it:c} 实数矩阵，包含在 [{it:a},{it:b}] 范围内均匀分布的随机整数变数。
矩阵 {it:a} 和 {it:b} 必须是
{help m6 glossary##r-conformability:r-相容性}, 其中
i = {cmd:max(rows(}{it:a}{cmd:),rows(}{it:b}{cmd:))} 并且
j = {cmd:max(cols(}{it:a}{cmd:),cols(}{it:b}{cmd:))}。

{marker seed}{...}
{p 4 4 2}
{cmd:rseed()} 返回当前随机变量种子，以加密字符串形式表示。

{p 4 4 2}
{cmd:rseed(}{it:newseed}{cmd:)} 设定种子：可以指定一个整数。
{cmd:rseed(}{it:newseed}{cmd:)} 与 Stata 的 {cmd:set}
{cmd:seed} 命令具有相同效果；见 {bf:{help set_seed_zh:[R] 设置种子}}。

{pstd}
{cmd:rngstate()} 返回随机数生成器的当前状态。
{cmd:rngstate()} 返回的内容与 Stata 的 {cmd:c(rngstate)} 相同；见
{helpb set seed:[R] 设置种子} 和 {help creturn_zh:[P] creturn}。

{pstd}
{cmd:rngstate(}{it:newstate}{cmd:)} 使用先前从 {cmd:rngstate()} 获得的字符串设定随机数生成器的状态。
{cmd:rngstate(}{it:newstate}{cmd:)} 与 Stata 的 {cmd:set} 
{cmd:rngstate} {it:newstate} 具有相同效果；见 {helpb set seed:[R] 设置种子}。

{marker rbeta}{...}
{p 4 4 2}
{cmd:rbeta(}{it:r}{cmd:,} {it:c}{cmd:,} {it:a}{cmd:,} {it:b}{cmd:)} 
返回一个 i{it:r x} j{it:c} 实数矩阵 
包含 beta 随机变量。实数矩阵 
{it:a} 和 {it:b} 包含 beta 形状参数。矩阵 {it:a} 
和 {it:b} 必须是 {help m6_glossary##r-conformability:r-相容性}，其中 
i = {cmd:max(rows(}{it:a}{cmd:),rows(}{it:b}{cmd:))} 并且
j = {cmd:max(cols(}{it:a}{cmd:),cols(}{it:b}{cmd:))}.{p_end}

{marker rbinomial}{...}
{p 4 4 2}
{cmd:rbinomial(}{it:r}{cmd:,} {it:c}{cmd:,} {it:n}{cmd:,} {it:p}{cmd:)} 
返回一个 i{it:r x} j{it:c} 实数矩阵
包含 binomial 随机变量。实数矩阵 
{it:n} 和 {it:p} 分别包含试验次数和概率参数。
矩阵 {it:n} 和 {it:p} 必须是
{help m6_glossary##r-conformability:r-相容性}，
其中 i = {cmd:max(rows(}{it:n}{cmd:),rows(}{it:p}{cmd:))} 并且
j = {cmd:max(cols(}{it:n}{cmd:),cols(}{it:p}{cmd:))}.{p_end}

{marker rcauchy}{...}
{p 4 4 2}
{cmd:rcauchy(}{it:r}{cmd:,} {it:c}{cmd:,} {it:a}{cmd:,} {it:b}{cmd:)} 返回
一个 i{it:r x} j{it:c} 实数矩阵，包含 Cauchy 随机变量。 
实数矩阵 {it:a} 和 {it:b} 分别包含 Cauchy 的位置和尺度参数。这两个矩阵必须是
{help m6_glossary##r-conformability:r-相容性}，其中 i = 
{cmd:max(rows(}{it:a}{cmd:),rows(}{it:b}{cmd:))} 并且 j =
{cmd:max(cols(}{it:a}{cmd:),cols(}{it:b}{cmd:))}.{p_end}

{marker rchi2}{...}
{p 4 4 2}
{cmd:rchi2(}{it:r}{cmd:,} {it:c}{cmd:,} {it:df}{cmd:)} 
返回一个 i{it:r x} j{it:c} 实数矩阵，包含 chi-squared
随机变量。实数矩阵 {it:df} 包含学位自由参数， 
其中 i = {cmd:rows(}{it:df}{cmd:)} 并且 j = {cmd:cols(}{it:df}{cmd:)}.{p_end}

{marker rdiscrete}{...}
{p 4 4 2}
{cmd:rdiscrete(}{it:r}{cmd:,} {it:c}{cmd:,} {it:p}{cmd:)}
返回一个 {it:r x c} 实数矩阵，包含从由长为 {it:k} 的向量 {it:p} 中指定的离散分布的随机变量。离散变数的范围是 1,
2, ..., {it:k}，其中 2 <= {it:k} <= 10000。使用 {help mf_runiform##W1977:Walker (1977)} 的别名方法从离散分布中抽样。

{marker rexponential}{...}
{p 4 4 2}
{cmd:rexponential(}{it:r}{cmd:,} {it:c}{cmd:,} {it:b}{cmd:)} 返回一个
i{it:r x} j{it:c} 实数矩阵，包含指数随机变量。
实数矩阵 {it:b} 包含尺度参数，其中 
i = {cmd:rows(}{it:b}{cmd:)} 并且 j = {cmd:cols(}{it:b}{cmd:)}。

{marker rgamma}{...}
{p 4 4 2}
{cmd:rgamma(}{it:r}{cmd:,} {it:c}{cmd:,} {it:a}{cmd:,} {it:b}{cmd:)} 
返回一个 i{it:r x} j{it:c} 实数矩阵，包含 gamma
随机变量。实数矩阵 {it:a} 和 {it:b} 
分别包含 gamma 的形状和尺度参数。
矩阵 {it:a} 和 {it:b} 必须是
{help m6_glossary##r-conformability:r-相容性}，
其中 i = {cmd:max(rows(}{it:a}{cmd:),rows(}{it:b}{cmd:))} 并且
j = {cmd:max(cols(}{it:a}{cmd:),cols(}{it:b}{cmd:))}.{p_end}

{marker rhypergeometric}{...}
{p 4 4 2}
{cmd:rhypergeometric(}{it:r}{cmd:,} {it:c}{cmd:,} {it:N}{cmd:,} 
{it:K}{cmd:,} {it:n}{cmd:)} 返回一个 i{it:r x} j{it:c} 实数矩阵，包含 
超几何随机变量。整数矩阵 {it:N} 包含总体大小，整数矩阵 {it:K} 
包含每个总体中具有感兴趣属性的元素数量，整数矩阵 {it:n} 包含样本 
大小。矩阵 {it:N}、{it:K} 和 {it:n} 必须是 
{help m6_glossary##r-conformability:r-相容性}，其中 
i = {cmd:max(rows(}{it:N}{cmd:),rows(}{it:K}{cmd:),rows(}{it:n}{cmd:))} 
并且
j = {cmd:max(cols(}{it:N}{cmd:),cols(}{it:K}{cmd:),cols(}{it:n}{cmd:))}。
{p_end}

{marker rigaussian}{...}
{p 4 4 2}
{cmd:rigaussian(}{it:r}{cmd:,} {it:c}{cmd:,} {it:m}{cmd:,} {it:a}{cmd:)} 
返回一个 i{it:r x} j{it:c} 实数矩阵， 
包含反高斯随机变量。实数矩阵 
{it:m} 和 {it:a} 分别包含均值和形状参数。这
两个矩阵必须是 
{help m6_glossary##r-conformability:r-相容性}，其中 i =
{cmd:max(rows(}{it:m}{cmd:),rows(}{it:a}{cmd:))} 并且 j =
{cmd:max(cols(}{it:m}{cmd:),cols(}{it:a}{cmd:))}.{p_end}

{marker rlaplace}{...}
{p 4 4 2}
{cmd:rlaplace(}{it:r}{cmd:,} {it:c}{cmd:,} {it:m}{cmd:,} {it:b}{cmd:)} 返回
一个 i{it:r x} j{it:c} 实数矩阵，包含拉普拉斯随机变量。实数矩阵 {it:m} 和 {it:b} 
分别包含均值和尺度参数。这两个矩阵必须是
{help m6_glossary##r-conformability:r-相容性}，其中 i =
{cmd:max(rows(}{it:m}{cmd:),rows(}{it:b}{cmd:))} 并且 j =
{cmd:max(cols(}{it:m}{cmd:),cols(}{it:b}{cmd:))}.{p_end}

{marker rlogistic}{...}
{p 4 4 2}
{cmd:rlogistic(}{it:r}{cmd:,} {it:c}{cmd:)} 返回一个
{it:r x c} 实数矩阵，包含均值为零且标准差为 pi/sqrt(3) 的逻辑随机变量。

{p 4 4 2}
{cmd:rlogistic(}{it:r}{cmd:,} {it:c}{cmd:,} {it:s}{cmd:)}
返回一个 i{it:r x c} 实数矩阵，包含均值为零的逻辑随机变量。  
实数矩阵 {it:s} 包含尺度参数，
其中 i = {cmd:rows(}{it:s}{cmd:)} 和 j = {cmd:cols(}{it:s}{cmd:)}。

{p 4 4 2}
{cmd:rlogistic(}{it:r}{cmd:,} {it:c}{cmd:,} {it:m}{cmd:,} {it:s}{cmd:)}
返回一个 i{it:r x} j{it:c} 实数矩阵，包含逻辑随机变量。
实数矩阵 {it:m} 和 {it:s} 分别包含均值和尺度
参数。这两个矩阵必须是 
{help m6 glossary##r-conformability:r-相容性}，
其中 i = {cmd:max(rows(}{it:m}{cmd:),rows(}{it:s}{cmd:))} 并且
j = {cmd:max(cols(}{it:m}{cmd:),cols(}{it:s}{cmd:))}。

{marker rnbinomial}{...}
{p 4 4 2}
{cmd:rnbinomial(}{it:r}{cmd:,} {it:c}{cmd:,} {it:n}{cmd:,} {it:p}{cmd:)}
返回一个 i{it:r x} j{it:c} 实数矩阵，包含负二项随机变量。  
当矩阵 {it:n} 的元素为整数时， {cmd:rnbinomial()} 返回在第 {it:n} 次成功之前的失败次数，其中单次抽样的成功概率包含在实数矩阵 {it:p} 中。
矩阵 {it:n} 的元素也可以是非整数，但必须为正数。
矩阵 {it:n} 和 {it:p} 必须是
{help m6_glossary##r-conformability:r-相容性}，
其中 i = {cmd:max(rows(}{it:n}{cmd:),rows(}{it:p}{cmd:))} 并且
j = {cmd:max(cols(}{it:n}{cmd:),cols(}{it:p}{cmd:))}.{p_end}

{marker rnormal}{...}
{p 4 4 2}
{cmd:rnormal(}{it:r}{cmd:,} {it:c}{cmd:,} {it:m}{cmd:,} {it:s}{cmd:)} 
返回一个 i{it:r x} j{it:c} 实数矩阵，包含正态（高斯）随机变量。  
实数矩阵 {it:m} 和 {it:s} 分别包含均值和标准差参数。
这两个矩阵必须是
{help m6_glossary##r-conformability:r-相容性}，
其中 i = {cmd:max(rows(}{it:m}{cmd:),rows(}{it:s}{cmd:))} 并且
j = {cmd:max(cols(}{it:m}{cmd:),cols(}{it:s}{cmd:))}.{p_end}

{marker rpoisson}{...}
{p 4 4 2}
{cmd:rpoisson(}{it:r}{cmd:,} {it:c}{cmd:,} {it:m}{cmd:)} 返回一个 
i{it:r x} j{it:c} 实数矩阵，包含泊松随机变量。  
实数矩阵 {it:m} 包含泊松均值参数，
其中 i = {cmd:rows(}{it:m}{cmd:)} 和 j = {cmd:cols(}{it:m}{cmd:)}。
{p_end}

{marker rt}{...}
{p 4 4 2}
{cmd:rt(}{it:r}{cmd:,} {it:c}{cmd:,} {it:df}{cmd:)} 返回一个 
i{it:r x} j{it:c} 实数矩阵，包含学生的 t 随机变量。  
实数矩阵 {it:df} 包含 
学位自由参数，其中 i = {cmd:rows(}{it:df}{cmd:)} 并且
j = {cmd:cols(}{it:df}{cmd:)}.{p_end}

{marker rweibull}{...}
{p 4 4 2}
{cmd:rweibull(}{it:r}{cmd:,} {it:c}{cmd:,} {it:a}{cmd:,} {it:b}{cmd:)}
返回一个 i{it:r x} j{it:c} 实数矩阵，包含威布尔随机变量。
实数矩阵 {it:a} 和 {it:b} 分别包含形状和尺度
参数。这两个矩阵必须是 
{help m6 glossary##r-conformability:r-相容性}，
其中 i = {cmd:max(rows(}{it:a}{cmd:),rows(}{it:b}{cmd:))} 并且
j = {cmd:max(cols(}{it:a}{cmd:),cols(}{it:b}{cmd:)}。

{p 4 4 2}
{cmd:rweibull(}{it:r}{cmd:,} {it:c}{cmd:,} {it:a}{cmd:,} {it:b}{cmd:,}
{it:g}{cmd:)}
返回一个 i{it:r x} j{it:c} 实数矩阵，包含威布尔随机变量。
实数矩阵 {it:a}、{it:b} 和 {it:g} 分别包含形状、尺度和位置参数。这 
三个矩阵必须是 
{help m6 glossary##r-conformability:r-相容性}，其中
i = {cmd:max(rows(}{it:a}{cmd:),rows(}{it:b}{cmd:),rows(}{it:g}{cmd:))} 并且
j = {cmd:max(cols(}{it:a}{cmd:),cols(}{it:b}{cmd:),cols(}{it:g}{cmd:))}。

{marker rweibullph}{...}
{p 4 4 2}
{cmd:rweibullph(}{it:r}{cmd:,} {it:c}{cmd:,} {it:a}{cmd:,} {it:b}{cmd:)}
返回一个 i{it:r x} j{it:c} 实数矩阵，包含威布尔（比例风险）随机变量。 
实数矩阵 {it:a} 和 {it:b} 分别包含形状和尺度参数。这两个矩阵必须是 
{help m6 glossary##r-conformability:r-相容性}，其中 i = {cmd:max(rows(}{it:a}{cmd:),rows(}{it:b}{cmd:))} 并且
j = {cmd:max(cols(}{it:a}{cmd:),cols(}{it:b}{cmd:))}。

{p 4 4 2}
{cmd:rweibullph(}{it:r}{cmd:,} {it:c}{cmd:,} {it:a}{cmd:,} {it:b}{cmd:,}
{it:g}{cmd:)}
返回一个 i{it:r x} j{it:c} 实数矩阵，包含威布尔（比例风险）随机变量。  
实数矩阵 {it:a}、{it:b} 和 {it:g} 分别包含形状、尺度和位置参数。这  
三个矩阵必须是 
{help m6 glossary##r-conformability:r-相容性}，其中
i = {cmd:max(rows(}{it:a}{cmd:),rows(}{it:b}{cmd:),rows(}{it:g}{cmd:))} 并且
j = {cmd:max(cols(}{it:a}{cmd:),cols(}{it:b}{cmd:),cols(}{it:g}{cmd:))}。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
这里描述的函数生成随机变量。每个生成器的参数限制与 Stata 的
{help random-number functions} 文档中记录的相同，除了 {cmd:rdiscrete()}，它
没有 Stata 等效项。

{p 4 4 2}
在下面的示例中，我们生成并汇总 1,000 个随机正态
偏差，均值为 3，标准差为 1。

	: {cmd:rseed(13579)}
	: {cmd:x = rnormal(1000, 1, 3, 1)}
	: {cmd:meanvariance(x)}
	{res}      {txt}           1
            {c TLC}{hline 15}{c TRC}
	  1 {c |}  {res} 2.99162691{txt}  {c |}
	  2 {c |}  {res}1.056033182{txt}  {c |}
	    {c BLC}{hline 15}{c BRC}{txt}

{p 4 4 2}
下一个示例使用 1 {it:x} 3 向量的 gamma 形状参数生成一个 1000 {it:x} 3 矩阵的 gamma 随机变量，{cmd:X}。

	: {cmd:a = (0.5, 1.5, 2.5)}
	: {cmd:rseed(13579)}
	: {cmd:X = rgamma(1000, 1, a, 1)}
	: {cmd:mean(X)}
	{res}       {txt}          1             2             3
            {c TLC}{hline 43}{c TRC}
	  1 {c |}  {res}.5022154504   1.502187839   2.417570905{txt}  {c |}
            {c BLC}{hline 43}{c BRC}{txt}

	: {cmd:diagonal(variance(X))'}
        {res}    {txt}    1             2             3
            {c TLC}{hline 43}{c TRC}
	  1 {c |}  {res}.5082196561   1.434504411   2.512575559{txt}  {c |}
            {c BLC}{hline 43}{c BRC}{txt}

{p 4 4 2}
{cmd:X} 的第一列包含形状参数为 0.5 的 gamma 变量，
第二列包含形状参数为 1.5 的 gamma 变量，而第三列包含形状参数为 2.5 的 gamma 变量。

{p 4 4 2}
下面我们生成一个 4 {it:x} 3 的 beta 变量矩阵，演示使用两个 r-相容性参数矩阵 {cmd:a} 和 {cmd:b}。

	: {cmd:a = (0.5, 1.5, 2.5)}
	: {cmd:b = (0.5, 0.75, 1.0 \ 1.25, 1.5, 1.75)}
	: {cmd:rseed(13579)}
	: {cmd:rbeta(2, 1, a, b)}
	{res}      {txt}           1             2             3
            {c TLC}{hline 43}{c TRC}
	  1 {c |}  {res}.8389820448   .9707672865   .2122592494{txt}  {c |}
	  2 {c |}  {res}.5997013245   .6617211509   .8775212495{txt}  {c |}
	  3 {c |}  {res}.9552933701   .1133821372   .8006242906{txt}  {c |}
	  4 {c |}  {res}.2279075363   .4298247049   .6683477165{txt}  {c |}
            {c BLC}{hline 43}{c BRC}{txt}

{p 4 4 2}
用于生成这些 beta
随机变量的 4 {it:x} 3 形状参数矩阵如下所示：

	: {cmd:J(2, 1, J(rows(b), 1, a))}
	{res}   {txt}      1     2     3
            {c TLC}{hline 19}{c TRC}
	  1 {c |}   {res}.5   1.5   2.5{txt}  {c |}
	  2 {c |}   {res}.5   1.5   2.5{txt}  {c |}
	  3 {c |}   {res}.5   1.5   2.5{txt}  {c |}
	  4 {c |}   {res}.5   1.5   2.5{txt}  {c |}
            {c BLC}{hline 19}{c BRC}

	: {cmd:J(2, 1, b)}
	{res}    {txt}      1      2      3
            {c TLC}{hline 22}{c TRC}
	  1 {c |}    {res}.5    .75      1{txt}  {c |}
	  2 {c |}  {res}1.25    1.5   1.75{txt}  {c |}
	  3 {c |}    {res}.5    .75      1{txt}  {c |}
	  4 {c |}  {res}1.25    1.5   1.75{txt}  {c |}
            {c BLC}{hline 22}{c BRC}

{pstd}
此示例演示如何从其序列中的特定点重新启动随机数生成器。我们首先设定种子并抽取一些均匀分布的变量。

        : {cmd:rseed(12345)}
        : {cmd:x = runiform(1,3)}
        : {cmd:x}
                         1             2             3
            {c TLC}{hline 43}{c TRC}
          1 {c |}  {res}.3576297229    .400442617    .689383317{txt}  {c |}
            {c BLC}{hline 43}{c BRC}

{pstd}
我们保存当前的随机数生成器状态，以便稍后可以返回到序列中的此点。

        : {cmd:rngstate = rngstate()}

{pstd}
保存状态后，我们从序列中抽取更多数字。

        : {cmd:x = runiform(1,3)}
        : {cmd:x}
                         1             2             3
            {c TLC}{hline 43}{c TRC}
          1 {c |}  {res}.5597355706    .574451294   .2076905269{txt}  {c |}
            {c BLC}{hline 43}{c BRC}

{pstd}
现在我们将随机数生成器的状态恢复到之前的状态，从序列中获得相同的数字。

        : {cmd:rngstate(rngstate)}
        : {cmd:x = runiform(1,3)}
        : {cmd:x}
                         1             2             3
            {c TLC}{hline 43}{c TRC}
          1 {c |}  .5597355706    .574451294   .2076905269  {c |}
            {c BLC}{hline 43}{c BRC}


{marker conformability}{...}
{title:相容性}

    {cmd:runiform(}{it:r}{cmd:,} {it:c}{cmd:)}:
		{it:r}:  1 {it:x} 1
		{it:c}:  1 {it:x} 1
	   {it:result}:  {it:r x c}

    {cmd:runiform(}{it:r}{cmd:,} {it:c}{cmd:,} {it:a}{cmd:,} {it:b}{cmd:)}:
		{it:r}:  1 {it:x} 1
		{it:c}:  1 {it:x} 1
		{it:a}:  1 {it:x} 1 或 i {it:x} 1 或 1 {it:x} j 或 i {it:x} j
		{it:b}:  1 {it:x} 1 或 i {it:x} 1 或 1 {it:x} j 或 i {it:x} j
	   {it:result}:  {it:r x c} 或 i{it:r} {it:x} {it:c} 或 {it:r} {it:x} j{it:c} 或 i{it:r} {it:x} j{it:c}

    {cmd:runiformint(}{it:r}{cmd:,} {it:c}{cmd:,} {it:a}{cmd:,} {it:b}{cmd:)}:
		{it:r}:  1 {it:x} 1
		{it:c}:  1 {it:x} 1
		{it:a}:  1 {it:x} 1 或 i {it:x} 1 或 1 {it:x} j 或 i {it:x} j
		{it:b}:  1 {it:x} 1 或 i {it:x} 1 或 1 {it:x} j 或 i {it:x} j
	   {it:result}:  {it:r x c} 或 i{it:r} {it:x} {it:c} 或 {it:r} {it:x} j{it:c} 或 i{it:r} {it:x} j{it:c}

    {cmd:rseed()}:
	   {it:result}:  1 {it:x} 1

    {cmd:rseed(}{it:newseed}{cmd:)}:
	  {it:newseed}:  1 {it:x} 1
	   {it:result}:  {it:无}

    {cmd:rngstate()}:
	   {it:result}:  1 {it:x} 1

    {cmd:rngstate(}{it:newstate}{cmd:)}:
	  {it:newseed}:  1 {it:x} 1
	   {it:result}:  {it:无}

    {cmd:rbeta(}{it:r}{cmd:,} {it:c}{cmd:,} {it:a}{cmd:,} {it:b}{cmd:)}:
		{it:r}:  1 {it:x} 1
		{it:c}:  1 {it:x} 1
		{it:a}:  1 {it:x} 1 或 i {it:x} 1 或 1 {it:x} j 或 i {it:x} j
		{it:b}:  1 {it:x} 1 或 i {it:x} 1 或 1 {it:x} j 或 i {it:x} j
	   {it:result}:  {it:r x c} 或 i{it:r} {it:x} {it:c} 或 {it:r} {it:x} j{it:c} 或 i{it:r} {it:x} j{it:c}

    {cmd:rbinomial(}{it:r}{cmd:,} {it:c}{cmd:,} {it:n}{cmd:,} {it:p}{cmd:)}:
		{it:r}:  1 {it:x} 1
		{it:c}:  1 {it:x} 1
		{it:n}:  1 {it:x} 1 或 i {it:x} 1 或 1 {it:x} j 或 i {it:x} j 
		{it:p}:  1 {it:x} 1 或 i {it:x} 1 或 1 {it:x} j 或 i {it:x} j 
	   {it:result}:  {it:r x c} 或 i{it:r} {it:x} {it:c} 或 {it:r} {it:x} j{it:c} 或 i{it:r} {it:x} j{it:c}

    {cmd:rcauchy(}{it:r}{cmd:,} {it:c}{cmd:,} {it:a}{cmd:,} {it:b}{cmd:)}:
		{it:r}:  1 {it:x} 1
		{it:c}:  1 {it:x} 1
		{it:a}:  1 {it:x} 1 或 i {it:x} 1 或 1 {it:x} j 或 i {it:x} j
		{it:b}:  1 {it:x} 1 或 i {it:x} 1 或 1 {it:x} j 或 i {it:x} j
	   {it:result}:  {it:r x c} 或 i{it:r} {it:x} {it:c} 或 {it:r} {it:x} j{it:c} 或 i{it:r} {it:x} j{it:c}

    {cmd:rchi2(}{it:r}{cmd:,} {it:c}{cmd:,} {it:df}{cmd:)}:
		{it:r}:  1 {it:x} 1
		{it:c}:  1 {it:x} 1
	       {it:df}:  i {it:x} j
	   {it:result}:  i{it:r x} j{it:c}

    {cmd:rdiscrete(}{it:r}{cmd:, }{it:c}{cmd:, }{it:p}{cmd:)}:
		{it:r}:  1 {it:x} 1
		{it:c}:  1 {it:x} 1
		{it:p}:  {it:k x} 1 
	   {it:result}:  {it:r x c}

    {cmd:rexponential(}{it:r}{cmd:,} {it:c}{cmd:,} {it:b}{cmd:)}:
		{it:r}:  1 {it:x} 1
		{it:c}:  1 {it:x} 1
		{it:b}:  1 {it:x} 1 或 i {it:x} 1 或 1 {it:x} j 或 i {it:x} j
	   {it:result}:  {it:r x c} 或 i{it:r} {it:x} {it:c} 或 {it:r} {it:x} j{it:c} 或 i{it:r} {it:x} j{it:c}

    {cmd:rgamma(}{it:r}{cmd:,} {it:c}{cmd:,} {it:a}{cmd:,} {it:b}{cmd:)}:
		{it:r}:  1 {it:x} 1
		{it:c}:  1 {it:x} 1
		{it:a}:  1 {it:x} 1 或 i {it:x} 1 或 1 {it:x} j 或 i {it:x} j
		{it:b}:  1 {it:x} 1 或 i {it:x} 1 或 1 {it:x} j 或 i {it:x} j
	   {it:result}:  {it:r x c} 或 i{it:r} {it:x} {it:c} 或 {it:r} {it:x} j{it:c} 或 i{it:r} {it:x} j{it:c}

    {cmd:rhypergeometric(}{it:r}{cmd:,} {it:c}{cmd:,} {it:N}{cmd:,} {it:K}{cmd:,} {it:n}{cmd:)}:
		{it:r}:  1 {it:x} 1
		{it:c}:  1 {it:x} 1
		{it:N}:  1 {it:x} 1 
		{it:K}:  1 {it:x} 1 或 i {it:x} 1 或 1 {it:x} j 或 i {it:x} j 
		{it:n}:  1 {it:x} 1 或 i {it:x} 1 或 1 {it:x} j 或 i {it:x} j 
	   {it:result}:  {it:r x c} 或 i{it:r} {it:x} {it:c} 或 {it:r} {it:x} j{it:c} 或 i{it:r} {it:x} j{it:c}

    {cmd:rigaussian(}{it:r}{cmd:,} {it:c}{cmd:,} {it:m}{cmd:,} {it:a}{cmd:)}:
		{it:r}:  1 {it:x} 1
		{it:c}:  1 {it:x} 1
		{it:m}:  1 {it:x} 1 或 i {it:x} 1 或 1 {it:x} j 或 i {it:x} j
		{it:a}:  1 {it:x} 1 或 i {it:x} 1 或 1 {it:x} j 或 i {it:x} j
	   {it:result}:  {it:r x c} 或 i{it:r} {it:x} {it:c} 或 {it:r} {it:x} j{it:c} 或 i{it:r} {it:x} j{it:c}

    {cmd:rlaplace(}{it:r}{cmd:,} {it:c}{cmd:,} {it:m}{cmd:,} {it:b}{cmd:)}:
		{it:r}:  1 {it:x} 1
		{it:c}:  1 {it:x} 1
		{it:m}:  1 {it:x} 1 或 i {it:x} 1 或 1 {it:x} j 或 i {it:x} j
		{it:b}:  1 {it:x} 1 或 i {it:x} 1 或 1 {it:x} j 或 i {it:x} j
	   {it:result}:  {it:r x c} 或 i{it:r} {it:x} {it:c} 或 {it:r} {it:x} j{it:c} 或 i{it:r} {it:x} j{it:c}

    {cmd:rlogistic(}{it:r}{cmd:,} {it:c}{cmd:)}:
		{it:r}:  1 {it:x} 1
		{it:c}:  1 {it:x} 1
	   {it:result}:  {it:r x c}

    {cmd:rlogistic(}{it:r}{cmd:,} {it:c}{cmd:,} {it:s}{cmd:)}:
		{it:r}:  1 {it:x} 1
		{it:c}:  1 {it:x} 1
		{it:s}:  1 {it:x} 1 或 i {it:x} 1 或 1 {it:x} j 或 i {it:x} j
	   {it:result}:  {it:r x c} 或 i{it:r} {it:x} {it:c} 或 {it:r} {it:x} j{it:c} 或 i{it:r} {it:x} j{it:c}

    {cmd:rlogistic(}{it:r}{cmd:,} {it:c}{cmd:,} {it:m}{cmd:,} {it:s}{cmd:)}:
		{it:r}:  1 {it:x} 1
		{it:c}:  1 {it:x} 1
		{it:m}:  1 {it:x} 1 或 i {it:x} 1 或 1 {it:x} j 或 i {it:x} j
		{it:s}:  1 {it:x} 1 或 i {it:x} 1 或 1 {it:x} j 或 i {it:x} j
	   {it:result}:  {it:r x c} 或 i{it:r} {it:x} {it:c} 或 {it:r} {it:x} j{it:c} 或 i{it:r} {it:x} j{it:c}

    {cmd:rnbinomial(}{it:r}{cmd:,} {it:c}{cmd:,} {it:n}{cmd:,} {it:p}{cmd:)}:
		{it:r}:  1 {it:x} 1
		{it:c}:  1 {it:x} 1
		{it:n}:  1 {it:x} 1 或 i {it:x} 1 或 1 {it:x} j 或 i {it:x} j 
		{it:p}:  1 {it:x} 1 或 i {it:x} 1 或 1 {it:x} j 或 i {it:x} j 
	   {it:result}:  {it:r x c} 或 i{it:r} {it:x} {it:c} 或 {it:r} {it:x} j{it:c} 或 i{it:r} {it:x} j{it:c}

    {cmd:rnormal(}{it:r}{cmd:,} {it:c}{cmd:,} {it:m}{cmd:,} {it:s}{cmd:)}:
		{it:r}:  1 {it:x} 1
		{it:c}:  1 {it:x} 1
		{it:m}:  1 {it:x} 1 或 i {it:x} 1 或 1 {it:x} j 或 i {it:x} j 
		{it:s}:  1 {it:x} 1 或 i {it:x} 1 或 1 {it:x} j 或 i {it:x} j 
	   {it:result}:  {it:r x c} 或 i{it:r} {it:x} {it:c} 或 {it:r} {it:x} j{it:c} 或 i{it:r} {it:x} j{it:c}

    {cmd:rpoisson(}{it:r}{cmd:,} {it:c}{cmd:,} {it:m}{cmd:)}:
		{it:r}:  1 {it:x} 1
		{it:c}:  1 {it:x} 1
		{it:m}:  i {it:x} j
	   {it:result}:  i{it:r x} j{it:c}

    {cmd:rt(}{it:r}{cmd:,} {it:c}{cmd:,} {it:df}{cmd:)}:
		{it:r}:  1 {it:x} 1
		{it:c}:  1 {it:x} 1
	       {it:df}:  1 {it:x} 1 或 i {it:x} 1 或 1 {it:x} j 或 i {it:x} j
	   {it:result}:  {it:r x c} 或 i{it:r} {it:x} {it:c} 或 {it:r} {it:x} j{it:c} 或 i{it:r} {it:x} j{it:c}

    {cmd:rweibull(}{it:r}{cmd:,} {it:c}{cmd:,} {it:a}{cmd:,} {it:b}{cmd:)}:
		{it:r}:  1 {it:x} 1
		{it:c}:  1 {it:x} 1
		{it:a}:  1 {it:x} 1 或 i {it:x} 1 或 1 {it:x} j 或 i {it:x} j
		{it:b}:  1 {it:x} 1 或 i {it:x} 1 或 1 {it:x} j 或 i {it:x} j
	   {it:result}:  {it:r x c} 或 i{it:r} {it:x} {it:c} 或 {it:r} {it:x} j{it:c} 或 i{it:r} {it:x} j{it:c}

    {cmd:rweibull(}{it:r}{cmd:,} {it:c}{cmd:,} {it:a}{cmd:,} {it:b}{cmd:,} {cmd:g}{cmd:)}:
		{it:r}:  1 {it:x} 1
		{it:c}:  1 {it:x} 1
		{it:a}:  1 {it:x} 1 或 i {it:x} 1 或 1 {it:x} j 或 i {it:x} j
		{it:b}:  1 {it:x} 1 或 i {it:x} 1 或 1 {it:x} j 或 i {it:x} j
		{it:g}:  1 {it:x} 1 或 i {it:x} 1 或 1 {it:x} j 或 i {it:x} j
	   {it:result}:  {it:r x c} 或 i{it:r} {it:x} {it:c} 或 {it:r} {it:x} j{it:c} 或 i{it:r} {it:x} j{it:c}

    {cmd:rweibullph(}{it:r}{cmd:,} {it:c}{cmd:,} {it:a}{cmd:,} {it:b}{cmd:)}:
		{it:r}:  1 {it:x} 1
		{it:c}:  1 {it:x} 1
		{it:a}:  1 {it:x} 1 或 i {it:x} 1 或 1 {it:x} j 或 i {it:x} j
		{it:b}:  1 {it:x} 1 或 i {it:x} 1 或 1 {it:x} j 或 i {it:x} j
	   {it:result}:  {it:r x c} 或 i{it:r} {it:x} {it:c} 或 {it:r} {it:x} j{it:c} 或 i{it:r} {it:x} j{it:c}

    {cmd:rweibullph(}{it:r}{cmd:,} {it:c}{cmd:,} {it:a}{cmd:,} {it:b}{cmd:,} {cmd:g}{cmd:)}:
		{it:r}:  1 {it:x} 1
		{it:c}:  1 {it:x} 1
		{it:a}:  1 {it:x} 1 或 i {it:x} 1 或 1 {it:x} j 或 i {it:x} j
		{it:b}:  1 {it:x} 1 或 i {it:x} 1 或 1 {it:x} j 或 i {it:x} j
		{it:g}:  1 {it:x} 1 或 i {it:x} 1 或 1 {it:x} j 或 i {it:x} j
	   {it:result}:  {it:r x c} 或 i{it:r} {it:x} {it:c} 或 {it:r} {it:x} j{it:c} 或 i{it:r} {it:x} j{it:c}


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
如果 {it:r<0} 或 {it:c<0}，所有随机变量生成器都会中止并出现错误。

{p 4 4 2}
如果指定了字符串种子并且格式不正确，{cmd:rseed(}{it:seed}{cmd:)} 会中止并出现错误。

{pstd}
如果指定的 {it:newstate} 格式不正确，{cmd:rngstate(}{it:newstate}{cmd:)} 会中止并出现错误，这几乎肯定是因为 
{it:newstate} 之前不是通过 {cmd:rngstate()} 获得的。

{p 4 4 2} 
{cmd:runiform(}{it:r}{cmd:,} {it:c}{cmd:,} {it:a}{cmd:,} {it:b}{cmd:)}, 
{cmd:runiformint(}{it:r}{cmd:,} {it:c}{cmd:,} {it:a}{cmd:,} {it:b}{cmd:)}, 
{cmd:rnormal(}{it:r}{cmd:,} {it:c}{cmd:,} {it:m}{cmd:,} {it:s}{cmd:)}, 
{cmd:rbeta(}{it:r}{cmd:,} {it:c}{cmd:,} {it:a}{cmd:,} {it:b}{cmd:)}, 
{cmd:rbinomial(}{it:r}{cmd:,} {it:c}{cmd:,} {it:n}{cmd:,} {it:p}{cmd:)}, 
{cmd:rcauchy(}{it:r}{cmd:,} {it:c}{cmd:,} {it:a}{cmd:,} {it:b}{cmd:)},
{cmd:rgamma(}{it:r}{cmd:,} {it:c}{cmd:,} {it:a}{cmd:,} {it:b}{cmd:)}, 
{cmd:rhypergeometric(}{it:r}{cmd:,} {it:c}{cmd:,} {it:N}{cmd:,} {it:K}{cmd:,}
{it:n}{cmd:)},
{cmd:rigaussian(}{it:r}{cmd:,} {it:c}{cmd:,} {it:m}{cmd:,} {it:a}{cmd:)},
{cmd:rlaplace(}{it:r}{cmd:,} {it:c}{cmd:,} {it:m}{cmd:,} {it:b}{cmd:)},
{cmd:rlogistic(}{it:r}{cmd:,} {it:c}{cmd:,} {it:m}{cmd:,} {it:s}{cmd:)}, 
{cmd:rnbinomial(}{it:r}{cmd:,} {it:c}{cmd:,} {it:n}{cmd:,} {it:p}{cmd:)},
{cmd:rweibull(}{it:r}{cmd:,} {it:c}{cmd:,} {it:a}{cmd:,} {it:b}{cmd:)},
{cmd:rweibull(}{it:r}{cmd:,} {it:c}{cmd:,} {it:a}{cmd:,} {it:b}{cmd:,} {cmd:g}{cmd:)},
{cmd:rweibullph(}{it:r}{cmd:,} {it:c}{cmd:,} {it:a}{cmd:,} {it:b}{cmd:)},
以及
{cmd:rweibullph(}{it:r}{cmd:,} {it:c}{cmd:,} {it:a}{cmd:,} {it:b}{cmd:,} {cmd:g}{cmd:)}
如果参数矩阵不匹配，则会中止并出现错误。
有关矩阵相容性的规则，请参见 {it:{help m6_glossary##r-conformability:r-相容性}} 
在 {help m6_glossary_zh:[M-6] 术语表} 中。

{p 4 4 2} 
如果 {it:p} 中的概率不在 [0,1] 范围内或不相加为 1，{cmd:rdiscrete()} 会中止并出现错误。


{marker source}{...}
{title:源代码}

{p 4 4 2}
函数是内置的.


{marker reference}{...}
{title:参考文献}

{marker W1977}{...}
{phang}
Walker, A. J.  1977.  一种生成具有一般分布的离散随机变量的有效方法。
{it:ACM Transactions on Mathematical Software} 3: 253-256.
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_runiform.sthlp>}