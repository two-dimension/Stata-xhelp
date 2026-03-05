{smcl}
{* *! version 1.4.7  25sep2018}{...}
{vieweralsosee "[M-5] normal()" "mansection M-5 normal()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-5] mvnormal()" "help mf_mvnormal_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] Statistical" "help m4_statistical_zh"}{...}
{viewerjumpto "Syntax" "mf_normal_zh##syntax"}{...}
{viewerjumpto "Description" "mf_normal_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mf_normal_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "mf_normal_zh##remarks"}{...}
{viewerjumpto "Conformability" "mf_normal_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf_normal_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf_normal_zh##source"}
{help mf_normal:English Version}
{hline}{...}
{p2colset 1 19 21 2}{...}
{p2col:{bf:[M-5] normal()} {hline 2}}累积分布、反累积分布及密度
{p_end}
{p2col:}({mansection M-5 normal():查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

	高斯正态分布：

		{it:d} =   {cmd:normalden(}{it:z}{cmd:)}
		{it:d} =   {cmd:normalden(}{it:x}{cmd:,} {it:sd}{cmd:)}
		{it:d} =   {cmd:normalden(}{it:x}{cmd:,} {it:mean}, {it:sd}{cmd:)}
		{it:p} =      {cmd:normal(}{it:z}{cmd:)}
		{it:z} =   {cmd:invnormal(}{it:p}{cmd:)}
	    {it:ln(d)} = {cmd:lnnormalden(}{it:z}{cmd:)}
	    {it:ln(d)} = {cmd:lnnormalden(}{it:x}{cmd:,} {it:sd}{cmd:)}
	    {it:ln(d)} = {cmd:lnnormalden(}{it:x}{cmd:,} {it:mean}, {it:sd}{cmd:)}
	    {it:ln(p)} =    {cmd:lnnormal(}{it:z}{cmd:)}

	双变量正态分布：

		{it:p} = {cmd:binormal(}{it:z1}{cmd:,} {it:z2}{cmd:,} {it:rho}{cmd:)}

	多变量正态分布：
		
	    {it:ln(d)} = {cmd:lnmvnormalden(}{it:M}{cmd:,} {it:V}{cmd:,} {it:X}{cmd:)}

	贝塔分布：

		{it:d} =      {cmd:betaden(}{it:a}{cmd:,} {it:b}{cmd:,} {it:x}{cmd:)}
		{it:p} =        {cmd:ibeta(}{it:a}{cmd:,} {it:b}{cmd:,} {it:x}{cmd:)}
		{it:q} =    {cmd:ibetatail(}{it:a}{cmd:,} {it:b}{cmd:,} {it:x}{cmd:)}
		{it:x} =     {cmd:invibeta(}{it:a}{cmd:,} {it:b}{cmd:,} {it:p}{cmd:)}
		{it:x} = {cmd:invibetatail(}{it:a}{cmd:,} {it:b}{cmd:,} {it:q}{cmd:)}

	伯努利分布：

	       {it:pk} =       {cmd:binomialp(}{it:n}{cmd:,} {it:k}{cmd:,} {it:pi}{cmd:)}
	        {it:p} =        {cmd:binomial(}{it:n}{cmd:,} {it:k}{cmd:,} {it:pi}{cmd:)}
	        {it:q} =    {cmd:binomialtail(}{it:n}{cmd:,} {it:k}{cmd:,} {it:pi}{cmd:)}
	       {it:pi} =     {cmd:invbinomial(}{it:n}{cmd:,} {it:k}{cmd:,} {it:p}{cmd:)}
	       {it:pi} = {cmd:invbinomialtail(}{it:n}{cmd:,} {it:k}{cmd:,} {it:q}{cmd:)}
	
	Cauchy分布：

		{it:d} =     {cmd:cauchyden(}{it:a}{cmd:,} {it:b}{cmd:,} {it:x}{cmd:)}
		{it:p} =        {cmd:cauchy(}{it:a}{cmd:,} {it:b}{cmd:,} {it:x}{cmd:)}
		{it:q} =    {cmd:cauchytail(}{it:a}{cmd:,} {it:b}{cmd:,} {it:x}{cmd:)}
		{it:x} =     {cmd:invcauchy(}{it:a}{cmd:,} {it:b}{cmd:,} {it:p}{cmd:)}
		{it:x} = {cmd:invcauchytail(}{it:a}{cmd:,} {it:b}{cmd:,} {it:q}{cmd:)}
	    {it:ln(d)} =   {cmd:lncauchyden(}{it:a}{cmd:,} {it:b}{cmd:,} {it:x}{cmd:)}

	卡方分布：

		{it:d} =     {cmd:chi2den(}{it:df}{cmd:,} {it:x}{cmd:)}
		{it:p} =        {cmd:chi2(}{it:df}{cmd:,} {it:x}{cmd:)}
		{it:q} =    {cmd:chi2tail(}{it:df}{cmd:,} {it:x}{cmd:)}
		{it:x} =     {cmd:invchi2(}{it:df}{cmd:,} {it:p}{cmd:)}
		{it:x} = {cmd:invchi2tail(}{it:df}{cmd:,} {it:q}{cmd:)}

	Dunnett的多重范围：

		{it:p} =    {cmd:dunnettprob(}{it:k}{cmd:,} {it:df}{cmd:,} {it:x}{cmd:)}
		{it:x} = {cmd:invdunnettprob(}{it:k}{cmd:,} {it:df}{cmd:,} {it:p}{cmd:)}

        指数分布：

		{it:d} =     {cmd:exponentialden(}{it:b}{cmd:,} {it:x}{cmd:)}
		{it:p} =        {cmd:exponential(}{it:b}{cmd:,} {it:x}{cmd:)}
		{it:q} =    {cmd:exponentialtail(}{it:b}{cmd:,} {it:x}{cmd:)}
		{it:x} =     {cmd:invexponential(}{it:b}{cmd:,} {it:p}{cmd:)}
		{it:x} = {cmd:invexponentialtail(}{it:b}{cmd:,} {it:q}{cmd:)}

	F分布：

		{it:d} =     {cmd:Fden(}{it:df1}{cmd:,} {it:df2}{cmd:,} {it:f}{cmd:)}
		{it:p} =        {cmd:F(}{it:df1}{cmd:,} {it:df2}{cmd:,} {it:f}{cmd:)}
		{it:q} =    {cmd:Ftail(}{it:df1}{cmd:,} {it:df2}{cmd:,} {it:f}{cmd:)}
	        {it:f} =     {cmd:invF(}{it:df1}{cmd:,} {it:df2}{cmd:,} {it:p}{cmd:)}
	        {it:f} = {cmd:invFtail(}{it:df1}{cmd:,} {it:df2}{cmd:,} {it:q}{cmd:)}

	伽玛分布及逆伽玛分布：

		{it:d} =      {cmd:gammaden(}{it:a}{cmd:,} {it:b}{cmd:,} {it:g}{cmd:,} {it:x}{cmd:)}
		{it:p} =        {cmd:gammap(}{it:a}{cmd:,} {it:x}{cmd:)}
		{it:q} =    {cmd:gammaptail(}{it:a}{cmd:,} {it:x}{cmd:)}
		{it:x} =     {cmd:invgammap(}{it:a}{cmd:,} {it:p}{cmd:)}
		{it:x} = {cmd:invgammaptail(}{it:a}{cmd:,} {it:q}{cmd:)}
	    {it:dg/da} =     {cmd:dgammapda(}{it:a}{cmd:,} {it:x}{cmd:)}
	    {it:dg/dx} =     {cmd:dgammapdx(}{it:a}{cmd:,} {it:x}{cmd:)}
	  {it:d2g/da2} =   {cmd:dgammapdada(}{it:a}{cmd:,} {it:x}{cmd:)}
	 {it:d2g/dadx} =   {cmd:dgammapdadx(}{it:a}{cmd:,} {it:x}{cmd:)}
	  {it:d2g/dx2} =   {cmd:dgammapdxdx(}{it:a}{cmd:,} {it:x}{cmd:)}
            {it:ln(d)} =   {cmd:lnigammaden(}{it:a}{cmd:,} {it:b}{cmd:,} {it:x}{cmd:)}

	超几何分布：

	       {it:pk} = {cmd:hypergeometricp(}{it:N}{cmd:,} {it:K}{cmd:,} {it:n}{cmd:,} {it:k}{cmd:)}
	        {it:p} =  {cmd:hypergeometric(}{it:N}{cmd:,} {it:K}{cmd:,} {it:n}{cmd:,} {it:k}{cmd:)}

	逆高斯分布：

		{it:d} =     {cmd:igaussianden(}{it:m}{cmd:,} {it:a}{cmd:,} {it:x}{cmd:)}
		{it:p} =        {cmd:igaussian(}{it:m}{cmd:,} {it:a}{cmd:,} {it:x}{cmd:)}
		{it:q} =    {cmd:igaussiantail(}{it:m}{cmd:,} {it:a}{cmd:,} {it:x}{cmd:)}
		{it:x} =     {cmd:invigaussian(}{it:m}{cmd:,} {it:a}{cmd:,} {it:p}{cmd:)}
		{it:x} = {cmd:invigaussiantail(}{it:m}{cmd:,} {it:a}{cmd:,} {it:q}{cmd:)}
	    {it:ln(d)} =   {cmd:lnigaussianden(}{it:m}{cmd:,} {it:a}{cmd:,} {it:x}{cmd:)}
	
	Laplace分布：

                {it:d} =     {cmd:laplaceden(}{it:m}{cmd:,} {it:b}{cmd:,} {it:x}{cmd:)}
                {it:p} =        {cmd:laplace(}{it:m}{cmd:,} {it:b}{cmd:,} {it:x}{cmd:)}
                {it:q} =    {cmd:laplacetail(}{it:m}{cmd:,} {it:b}{cmd:,} {it:x}{cmd:)}
                {it:x} =     {cmd:invlaplace(}{it:m}{cmd:,} {it:b}{cmd:,} {it:p}{cmd:)}
                {it:x} = {cmd:invlaplacetail(}{it:m}{cmd:,} {it:b}{cmd:,} {it:q}{cmd:)}
	    {it:ln(d)} =   {cmd:lnlaplaceden(}{it:m}{cmd:,} {it:b}{cmd:,} {it:x}{cmd:)}

        Logistic分布：

	        {it:d} =     {cmd:logisticden(}{it:x}{cmd:)}
	        {it:d} =     {cmd:logisticden(}{it:s}{cmd:,} {it:x}{cmd:)}
	        {it:d} =     {cmd:logisticden(}{it:m}{cmd:,} {it:s}{cmd:,} {it:x}{cmd:)}
	        {it:p} =        {cmd:logistic(}{it:x}{cmd:)}
	        {it:p} =        {cmd:logistic(}{it:s}{cmd:,} {it:x}{cmd:)}
	        {it:p} =        {cmd:logistic(}{it:m}{cmd:,} {it:s}{cmd:,} {it:x}{cmd:)}
	        {it:q} =    {cmd:logistictail(}{it:x}{cmd:)}
	        {it:q} =    {cmd:logistictail(}{it:s}{cmd:,} {it:x}{cmd:)}
	        {it:q} =    {cmd:logistictail(}{it:m}{cmd:,} {it:s}{cmd:,} {it:x}{cmd:)}
	        {it:x} =     {cmd:invlogistic(}{it:p}{cmd:)}
	        {it:x} =     {cmd:invlogistic(}{it:s}{cmd:,} {it:p}{cmd:)}
	        {it:x} =     {cmd:invlogistic(}{it:m}{cmd:,} {it:s}{cmd:,} {it:p}{cmd:)}
	        {it:x} = {cmd:invlogistictail(}{it:q}{cmd:)}
	        {it:x} = {cmd:invlogistictail(}{it:s}{cmd:,} {it:q}{cmd:)}
	        {it:x} = {cmd:invlogistictail(}{it:m}{cmd:,} {it:s}{cmd:,} {it:q}{cmd:)}

	负二项分布：

	       {it:pk} =       {cmd:nbinomialp(}{it:n}{cmd:,} {it:k}{cmd:,} {it:pi}{cmd:)}
	        {it:p} =        {cmd:nbinomial(}{it:n}{cmd:,} {it:k}{cmd:,} {it:pi}{cmd:)}
	        {it:q} =    {cmd:nbinomialtail(}{it:n}{cmd:,} {it:k}{cmd:,} {it:pi}{cmd:)}
	       {it:pi} =     {cmd:invnbinomial(}{it:n}{cmd:,} {it:k}{cmd:,} {it:p}{cmd:)}
	       {it:pi} = {cmd:invnbinomialtail(}{it:n}{cmd:,} {it:k}{cmd:,} {it:q}{cmd:)}

	非中心贝塔分布：

		{it:d} =  {cmd:nbetaden(}{it:a}{cmd:,} {it:b}{cmd:,} {it:np}{cmd:,} {it:x}{cmd:)}
		{it:p} =    {cmd:nibeta(}{it:a}{cmd:,} {it:b}{cmd:,} {it:np}{cmd:,} {it:x}{cmd:)}
		{it:x} = {cmd:invnibeta(}{it:a}{cmd:,} {it:b}{cmd:,} {it:np}{cmd:,} {it:p}{cmd:)}

	非中心卡方分布：

		{it:d} =     {cmd:nchi2den(}{it:df}{cmd:,} {it:np}{cmd:,} {it:x}{cmd:)}
		{it:p} =        {cmd:nchi2(}{it:df}{cmd:,} {it:np}{cmd:,} {it:x}{cmd:)}
		{it:q} =    {cmd:nchi2tail(}{it:df}{cmd:,} {it:np}{cmd:,} {it:x}{cmd:)}
		{it:x} =     {cmd:invnchi2(}{it:df}{cmd:,} {it:np}{cmd:,} {it:p}{cmd:)}
		{it:x} = {cmd:invnchi2tail(}{it:df}{cmd:,} {it:np}{cmd:,} {it:q}{cmd:)}
	       {it:np} =      {cmd:npnchi2(}{it:df}{cmd:,} {it:x}{cmd:,} {it:p}{cmd:)}

	非中心F分布：

		{it:d} =     {cmd:nFden(}{it:df1}{cmd:,} {it:df2}{cmd:,} {it:np}{cmd:,} {it:f}{cmd:)}
		{it:p} =        {cmd:nF(}{it:df1}{cmd:,} {it:df2}{cmd:,} {it:np}{cmd:,} {it:f}{cmd:)}
		{it:q} =    {cmd:nFtail(}{it:df1}{cmd:,} {it:df2}{cmd:,} {it:np}{cmd:,} {it:f}{cmd:)}
                {it:f} =     {cmd:invnF(}{it:df1}{cmd:,} {it:df2}{cmd:,} {it:np}{cmd:,} {it:p}{cmd:)}
		{it:f} = {cmd:invnFtail(}{it:df1}{cmd:,} {it:df2}{cmd:,} {it:np}{cmd:,} {it:q}{cmd:)}
	       {it:np} =      {cmd:npnF(}{it:df1}{cmd:,} {it:df2}{cmd:,} {it:f}{cmd:,} {it:p}{cmd:)}

	非中心Student's t分布：

                {it:d} =     {cmd:ntden(}{it:df}{cmd:,} {it:np}{cmd:,} {it:t}{cmd:)}
                {it:p} =        {cmd:nt(}{it:df}{cmd:,} {it:np}{cmd:,} {it:t}{cmd:)}
                {it:q} =    {cmd:nttail(}{it:df}{cmd:,} {it:np}{cmd:,} {it:t}{cmd:)}
                {it:t} =     {cmd:invnt(}{it:df}{cmd:,} {it:np}{cmd:,} {it:p}{cmd:)}
                {it:t} = {cmd:invnttail(}{it:df}{cmd:,} {it:np}{cmd:,} {it:q}{cmd:)}
               {it:np} =      {cmd:npnt(}{it:df}{cmd:,} {it:t}{cmd:,} {it:p}{cmd:)}

	泊松分布：

	       {it:pk} =       {cmd:poissonp(}{it:mean}{cmd:,} {it:k}{cmd:)}
		{it:p} =        {cmd:poisson(}{it:mean}{cmd:,} {it:k}{cmd:)}
		{it:q} =    {cmd:poissontail(}{it:mean}{cmd:,} {it:k}{cmd:)}
		{it:m} =     {cmd:invpoisson(}{it:k}{cmd:,} {it:p}{cmd:)}
		{it:m} = {cmd:invpoissontail(}{it:k}{cmd:,} {it:q}{cmd:)}

	Student's t分布：

		{it:d} =     {cmd:tden(}{it:df}{cmd:,} {it:t}{cmd:)}
		{it:p} =        {cmd:t(}{it:df}{cmd:,} {it:t}{cmd:)}
		{it:q} =    {cmd:ttail(}{it:df}{cmd:,} {it:t}{cmd:)}
		{it:t} =     {cmd:invt(}{it:df}{cmd:,} {it:p}{cmd:)}
		{it:t} = {cmd:invttail(}{it:df}{cmd:,} {it:q}{cmd:)}

	Tukey的Student化范围：
	
		{it:p} =    {cmd:tukeyprob(}{it:k}{cmd:,} {it:df}{cmd:,} {it:x}{cmd:)}
		{it:x} = {cmd:invtukeyprob(}{it:k}{cmd:,} {it:df}{cmd:,} {it:p}{cmd:)}

        威布尔分布：

		{it:d} = {cmd:weibullden(}{it:a}{cmd:,} {it:b}{cmd:,} {it:x}{cmd:)}
		{it:d} = {cmd:weibullden(}{it:a}{cmd:,} {it:b}{cmd:,} {it:g}{cmd:,} {it:x}{cmd:)}
		{it:p} = {cmd:weibull(}{it:a}{cmd:,} {it:b}{cmd:,} {it:x}{cmd:)}
		{it:p} = {cmd:weibull(}{it:a}{cmd:,} {it:b}{cmd:,} {it:g}{cmd:,} {it:x}{cmd:)}
		{it:q} = {cmd:weibulltail(}{it:a}{cmd:,} {it:b}{cmd:,} {it:x}{cmd:)}
		{it:q} = {cmd:weibulltail(}{it:a}{cmd:,} {it:b}{cmd:,} {it:g}{cmd:,} {it:x}{cmd:)}
		{it:x} = {cmd:invweibull(}{it:a}{cmd:,} {it:b}{cmd:,} {it:p}{cmd:)}
		{it:x} = {cmd:invweibull(}{it:a}{cmd:,} {it:b}{cmd:,} {it:g}{cmd:,} {it:p}{cmd:)}
		{it:x} = {cmd:invweibulltail(}{it:a}{cmd:,} {it:b}{cmd:,} {it:q}{cmd:)}
		{it:x} = {cmd:invweibulltail(}{it:a}{cmd:,} {it:b}{cmd:,} {it:g}{cmd:,} {it:q}{cmd:)}

        威布尔（比例风险）：

		{it:d} = {cmd:weibullphden(}{it:a}{cmd:,} {it:b}{cmd:,} {it:x}{cmd:)}
		{it:d} = {cmd:weibullphden(}{it:a}{cmd:,} {it:b}{cmd:,} {it:g}{cmd:,} {it:x}{cmd:)}
		{it:p} = {cmd:weibullph(}{it:a}{cmd:,} {it:b}{cmd:,} {it:x}{cmd:)}
		{it:p} = {cmd:weibullph(}{it:a}{cmd:,} {it:b}{cmd:,} {it:g}{cmd:,} {it:x}{cmd:)}
		{it:q} = {cmd:weibullphtail(}{it:a}{cmd:,} {it:b}{cmd:,} {it:x}{cmd:)}
		{it:q} = {cmd:weibullphtail(}{it:a}{cmd:,} {it:b}{cmd:,} {it:g}{cmd:,} {it:x}{cmd:)}
		{it:x} = {cmd:invweibullph(}{it:a}{cmd:,} {it:b}{cmd:,} {it:p}{cmd:)}
		{it:x} = {cmd:invweibullph(}{it:a}{cmd:,} {it:b}{cmd:,} {it:g}{cmd:,} {it:p}{cmd:)}
		{it:x} = {cmd:invweibullphtail(}{it:a}{cmd:,} {it:b}{cmd:,} {it:q}{cmd:)}
		{it:x} = {cmd:invweibullphtail(}{it:a}{cmd:,} {it:b}{cmd:,} {it:g}{cmd:,} {it:q}{cmd:)}


	威沙特分布及逆威沙特分布：

	    {it:ln(d)} =  {cmd:lnwishartden(}{it:df}{cmd:,} {it:V}{cmd:,} {it:X}{cmd:)}
	    {it:ln(d)} = {cmd:lniwishartden(}{it:df}{cmd:,} {it:V}{cmd:,} {it:X}{cmd:)}

{p 4 8 2}
其中

{p 8 12 2}
    1.  所有函数返回实数，所有参数为实数或实数矩阵。

{p 8 12 2}
    2.  左侧注释用于帮助解释返回值的含义：

		{it:d} = 密度值
	       {it:pk} = 离散结果K的概率 = Pr(K = k) 
		{it:p} = 左累积 
		  = Pr(-∞ < {it:statistic} {ul:<} {it:x}) (连续)
		  = Pr(0 {ul:<} K {ul:<} k) (离散)
		{it:q} = 右累积 
		  = 1 - {it:p}  (连续)
		  = Pr(K {ul:>} k) = 1 - p + pk (离散) 
	       {it:np} = 非中心性参数
	    {it:ln(p)} = 对数累积
	    {it:ln(d)} = 对数密度

{p 8 12 2}
    3. 超几何分布：

		{it:N} = 总体中的物体数量
		{it:K} = 在总体中具有感兴趣特征的物体数量，{it:K} < {it:N}
		{it:n} = 样本大小，{it:n} < {it:N}
		{it:k} = 样本中具有感兴趣特征的物体数量， 
			 max(0,{it:n}-{it:N}+{it:K}) {ul:<} {it:k} {ul:<} min({it:K},{it:n})

{p 8 12 2}
    4. 负二项分布：{it:n} > 0 并且可能是非整数。	

{p 8 12 2}
    5. 多变量正态分布、威沙特分布和逆威沙特分布： 

		{it:M} = 平均向量
		{it:V} = 协方差或比例矩阵
		{it:X} = 随机向量或矩阵


{marker description}{...}
{title:描述}

{p 4 4 2}
    上述函数返回密度值、累积值、反累积值、逆累积值，以及在一种情况下，所指概率密度函数的导数。这些函数反映Stata中同名的函数，并且实际上就是Stata函数。  

{p 4 4 2}
    参见 {helpb probfun:[FN] 统计函数} 了解详细信息。
    在上面的语法图中，某些参数被重命名以期有助于理解，但函数参数与底层Stata函数一一对应。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection M-5 normal()备注及示例:备注与示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
备注按照以下标题列出：

	{help mf_normal##remarks1:R-可兼容性}
	{help mf_normal##remarks2:关于 invbinomial() 和 invbinomialtail() 的说明}
	{help mf_normal##remarks3:关于 ibeta() 的说明}
	{help mf_normal##remarks4:关于 gammap() 的说明}


{marker remarks1}{...}
{title:R-可兼容性}

{p 4 4 2}
上述函数通常与标量参数一起使用，并返回一个标量结果：

	: {cmd:x = chi2(10, 12)}
	: {cmd:x}
	  {res:.7149434997}

{p 4 4 2}
然而，参数可以是向量或矩阵。例如， 

	: {cmd:x = chi2((10,11,12), 12)}
	: {cmd:x}
        {res}       {txt}          1             2             3
            {c TLC}{hline 43}{c TRC}
          1 {c |}  {res}.7149434997   .6363567795   .5543203586{txt}  {c |}
            {c BLC}{hline 43}{c BRC}{txt}

	: {cmd:x = chi2(10, (12,12.5,13))}
	: {cmd:x}
        {res}       {txt}          1             2             3
            {c TLC}{hline 43}{c TRC}
          1 {c |}  {res}.7149434997   .7470146767   .7763281832{txt}  {c |}
            {c BLC}{hline 43}{c BRC}{txt}

	: {cmd:x = chi2((10,11,12), (12,12.5,13))}
	: {cmd:x}
        {res}       {txt}          1             2             3
            {c TLC}{hline 43}{c TRC}
          1 {c |}  {res}.7149434997   .6727441644   .6309593164{txt}  {c |}
            {c BLC}{hline 43}{c BRC}{txt}

{p 4 4 2}
在最后一个示例中，数字对应于 {cmd:chi2(10,12)},
{cmd:chi2(11,12.5)} 和 {cmd:chi2(12,13)}。

{p 4 4 2}
要求参数是{help m6_glossary##r-conformability:r-可兼容的}（参见
{bf:{help m6_glossary_zh:[M-6] 词汇表}}），因此， 

	: {cmd:x = chi2((10\11\12), (12,12.5,13))}
	: {cmd:x}
        {res}       {txt}          1             2             3
            {c TLC}{hline 43}{c TRC}
          1 {c |}  {res}.7149434997   .7470146767   .7763281832{txt}  {c |}
          2 {c |}  {res}.6363567795   .6727441644   .7066745906{txt}  {c |}
          3 {c |}  {res}.5543203586    .593595966   .6309593164{txt}  {c |}
            {c BLC}{hline 43}{c BRC}{txt}

{p 4 4 2}
这对应于

        {res}       {txt}          1             2             3
            {c TLC}{hline 43}{c TRC}
          1 {c |}  {cmd}chi2(10,12)   chi2(10,12.5)  chi2(10,13){txt} {c |}
          2 {c |}  {cmd}chi2(11,12)   chi2(11,12.5)  chi2(11,13){txt} {c |}
          3 {c |}  {cmd}chi2(12,12)   chi2(12,12.5)  chi2(12,13){txt} {c |}
            {c BLC}{hline 43}{c BRC}{txt}


{marker remarks2}{...}
{title:关于 invbinomial() 和 invbinomialtail() 的说明}

{p 4 4 2}
{cmd:invbinomial(}{it:n}{cmd:,} {it:k}{cmd:,} {it:p}{cmd:)} 和
{cmd:invbinomialtail(}{it:n}{cmd:,} {it:k}{cmd:,} {it:q}{cmd:)} 对于计算 {it:pi} 的置信区间非常有用，{it:pi} 是成功的概率。
{cmd:invbinomial()} 返回概率 {it:pi}，使得在 {it:n} 次试验中观察到 {it:k} 或更少成功的概率为 {it:p}。
{cmd:invbinomialtail()} 返回概率 {it:pi}，使得在 {it:n} 次试验中观察到 {it:k} 或更多成功的概率为 {it:q}。


{marker remarks3}{...}
{title:关于 ibeta() 的说明}

{p 4 4 2}
{cmd:ibeta(}{it:a}{cmd:,} {it:b}{cmd:,} {it:x}{cmd:)}
被称为累积贝塔分布，它被称为不完全贝塔函数 {it:I_x}({it:a}, {it:b})。


{marker remarks4}{...}
{title:关于 gammap() 的说明}

{p 4 4 2}
{cmd:gammap(}{it:a}{cmd:,} {it:x}{cmd:)}
被称为累积伽玛分布，它被称为不完全伽玛函数 {it:P}({it:a}, {it:x})。


{marker conformability}{...}
{title:可兼容性}

{p 4 4 2}
所有函数要求参数是 r-可兼容的；参见 
{it:{help mf_normal##remarks1:R-可兼容性}}
以上。返回的是包含逐元素计算结果的 {cmd:max(}参数行数{cmd:)} 行和 {cmd:max(}参数列数{cmd:)} 列的矩阵。


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
    当参数超出范围时，所有函数返回缺失值。


{marker source}{...}
{title:源代码}

{p 4 4 2}
函数为内置函数。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_normal.sthlp>}