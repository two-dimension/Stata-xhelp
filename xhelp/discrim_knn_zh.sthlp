{smcl}
{* *! version 1.1.18  05sep2018}{...}
{viewerdialog discrim "dialog discrim, message(-knn-) name(discrim_knn)"}{...}
{vieweralsosee "[MV] discrim knn" "mansection MV discrimknn"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MV] discrim knn postestimation" "help discrim knn postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MV] discrim" "help discrim_zh"}{...}
{viewerjumpto "Syntax" "discrim knn##syntax"}{...}
{viewerjumpto "Menu" "discrim knn##menu"}{...}
{viewerjumpto "Description" "discrim knn##description"}{...}
{viewerjumpto "Links to PDF documentation" "discrim_knn_zh##linkspdf"}{...}
{viewerjumpto "Options" "discrim knn##options"}{...}
{viewerjumpto "Examples" "discrim knn##examples"}{...}
{viewerjumpto "Stored results" "discrim knn##results"}
{help discrim_knn:English Version}
{hline}{...}
{p2colset 1 21 23 2}{...}
{p2col:{bf:[MV] discrim knn} {hline 2}}k近邻判别分析
{p_end}
{p2col:}({mansection MV discrimknn:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 20 2}
{cmd:discrim} {cmd:knn} {varlist} {ifin}
        [{it:{help discrim knn##weight:权重}}]{cmd:,}
	{opth g:roup(varlist:groupvar)}
        {opt k(#)}
	[{it:选项}]

{synoptset 20 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:模型}
{p2coldent :* {opth g:roup(varlist:groupvar)}}指定分组的变量
         {p_end}
{p2coldent :* {opt k(#)}}最近邻的数量{p_end}
{synopt:{opth pri:ors(discrim_knn##priors:先验概率)}}组的先验概率{p_end}
{synopt:{opth tie:s(discrim_knn##ties:平局)}}分类时如何处理平局{p_end}

{syntab:度量}
{synopt:{cmdab:mea:sure(}{help measure_option_zh:{it:度量}}{cmd:)}}相似度或不相似度的度量；默认为 {cmd:measure(L2)}{p_end}
{synopt:{cmd:s2d(}{cmdab:st:andard)}}将相似度转换为不相似度：
		d(ij)=sqrt{c -(}s(ii)+s(jj)-2s(ij){c )-}, 默认值{p_end}
{synopt:{cmd:s2d(}{cmdab:one:minus)}}将相似度转换为不相似度：
	d(ij)=1-s(ij){p_end}
{synopt:{opt mah:alanobis}}在计算不相似度之前对连续数据进行 Mahalanobis 变换{p_end}

{syntab:报告}
{synopt:{opt not:able}}抑制重置分类表的显示{p_end}
{synopt:{opt loo:table}}显示逐个留出的分类表{p_end}
{synoptline}
{p2colreset}{...}

{synoptset 20}{...}
{marker priors}{...}
{synopthdr:先验概率}
{synoptline}
{synopt:{opt eq:ual}}相等的先验概率；默认值{p_end}
{synopt:{opt prop:ortional}}按组大小成比例的先验概率{p_end}
{synopt:{it:matname}}包含组先验概率的行或列向量{p_end}
{synopt:{it:matrix_exp}}提供组先验概率的行或列向量的矩阵表达式{p_end}
{synoptline}

{marker ties}{...}
{synopthdr:平局}
{synoptline}
{synopt:{opt m:issing}}分组分类中的平局产生缺失值；
        默认值{p_end}
{synopt:{opt r:andom}}分组分类中的平局随机打破{p_end}
{synopt:{opt f:irst}}分组分类中的平局设置为第一个平局小组{p_end}
{synopt:{opt n:earest}}分组分类中的平局基于最近的观测分配，若仍然平局则为缺失{p_end}
{synoptline}
{p2colreset}{...}

{p 4 6 2}
*{opt group()} 和 {opt k()} 是必需的。{p_end}
{p 4 6 2}
{opt statsby} 和 {cmd:xi} 是允许的；请参见 {help prefix_zh}。
{p_end}
{marker weight}{...}
{p 4 6 2}
{opt fweight} 是允许的；请参见 {help weight_zh}。
{p_end}
{p 4 6 2}
有关估计后可用特征，请参见 {manhelp discrim_knn_postestimation MV:discrim knn postestimation}。
{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 多元分析 > 判别分析 >}
        {bf:K近邻 (KNN)}


{marker description}{...}
{title:描述}

{pstd}
{cmd:discrim knn} 执行 {it:k}近邻判别分析。提供多种相似度和不相似度的度量。

{pstd}
{it:k}近邻必须保留训练数据，并在每次执行分类或预测时在数据中搜索 {it:k} 个最近的观测值。因此，对于大型数据集，{it:k}近邻的执行速度较慢，并且占用大量内存。

{pstd}
有关其他判别命令，请参见 {manhelp discrim MV}。{p_end}


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection MV discrimknnQuickstart:快速入门}

        {mansection MV discrimknnRemarksandexamples:备注和示例}

        {mansection MV discrimknnMethodsandformulas:方法与公式}

{pstd}
上述部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:模型}

{phang}
{opth group:(varlist:groupvar)}
是必需的，指定分组变量的名称。 {it:groupvar} 必须是一个数字变量。

{phang}{opt k(#)}
是必需的，指定用于计算最近邻的数量。如果出现平局，将选择下一个较大的 {cmd:k()} 值。假设选择 {cmd:k(3)}。对于给定的观测值，必须向外扩展距离 {it:d} 以找到三个最近邻，但如果有五个数据点都在距离 {it:d} 内，那么计算将基于所有五个最近邻。

包含 {help discrim_priors_zh} 的帮助

{phang2}
{cmd:ties(}{opt n:earest}{cmd:)} 指定分组分类中的平局根据最近的观测进行分配，如果这仍然导致平局则为缺失。

{dlgtab:度量}

{marker measure()}{...}
{phang}
{opt measure(measure)}
指定相似度或不相似度的度量。默认为 {cmd:measure(L2)}；支持所有在
{help measure_option_zh:{bf:[MV]} {it:度量选项}} 中的度量，除了 {cmd:measure(Gower)}。

{phang}{cmd:s2d(standard}|{cmd:oneminus)}
指定如何将相似度转换为不相似度。

{pmore}
可用的 {cmd:s2d()} 选项，{cmd:standard} 和 {cmd:oneminus} 定义如下

{p2colset 13 25 27 2}{...}
{p2col:{cmd:standard}}d(ij) = sqrt{c -(}s(ii)+s(jj)-2s(ij){c )-} = sqrt[2{1-s(ij)}]{p_end}{p2col:{cmd:oneminus}}d(ij) = 1-s(ij){p_end}
{p2colreset}{...}

{pmore}{cmd:s2d(standard)} 是默认值。

{phang}
{opt mahalanobis}
指定在计算不相似度之前对连续数据进行 Mahalanobis 变换。数据通过组内协方差矩阵的 Cholesky 分解进行变换，然后在变换后的数据上执行所选的不相似度度量。如果选择了 {cmd:L2}（欧几里得）不相似度，这将是 Mahalanobis 距离。如果组内协方差矩阵的秩不足，将返回错误。

{dlgtab:报告}

{phang}
{opt notable}
抑制重置分类表的计算和显示。

{phang}
{opt lootable}
显示逐个留出的分类表。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse rootstock}{p_end}

{pstd}使用三个最近邻对 {it:k}近邻 (KNN) 判别分析模型进行拟合，并对六个根砧组使用相等的先验概率，显示分类矩阵随机打破平局{p_end}
{phang2}{cmd:. discrim knn y1 y2 y3 y4, group(rootstock) k(3) ties(random)}
{p_end}

{pstd}拟合相同模型，但对前四个根砧使用 0.2 的先验概率，对最后两个根砧使用 0.1 的先验概率{p_end}
{phang2}
{cmd:. discrim knn y*, group(rootstock) k(3) ties(random) priors(.2,.2,.2,.2,.1,.1)}
{p_end}

{pstd}拟合与第一个类似的 KNN 模型，但使用 Mahalanobis 距离来计算最近邻{p_end}
{phang2}{cmd:. discrim knn y1 y2 y3 y4, group(rootstock) k(3) ties(random)}
{cmd: mahalanobis measure(Euclidean)}{p_end}

{pstd}回放结果，并在重置分类表之外显示逐个留出的分类表{p_end}
{phang2}{cmd:. discrim, lootable}{p_end}

{pstd}回放结果，切换为按比例的群体先验概率，并只显示逐个留出的分类表{p_end}
{phang2}{cmd:. discrim, priors(proportional) notable lootable}{p_end}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:discrim knn} 将以下内容存储在 {cmd:e()} 中：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:e(N)}}观测值的数量{p_end}
{synopt:{cmd:e(N_groups)}}组的数量{p_end}
{synopt:{cmd:e(k_nn)}}最近邻的数量{p_end}
{synopt:{cmd:e(k)}}判别变量的数量{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:e(cmd)}}{cmd:discrim}{p_end}
{synopt:{cmd:e(subcmd)}}{cmd:knn}{p_end}
{synopt:{cmd:e(cmdline)}}输入的命令{p_end}
{synopt:{cmd:e(groupvar)}}分组变量的名称{p_end}
{synopt:{cmd:e(grouplabels)}}组的标签{p_end}
{synopt:{cmd:e(measure)}}相似度或不相似度的度量{p_end}
{synopt:{cmd:e(measure_type)}}{cmd:dissimilarity} 或 {cmd:similarity}{p_end}
{synopt:{cmd:e(measure_binary)}}{cmd:binary}，如果指定了二元度量{p_end}
{synopt:{cmd:e(s2d)}}{cmd:standard} 或 {cmd:oneminus}，如果指定了 {cmd:s2d()}{p_end}
{synopt:{cmd:e(varlist)}}判别变量{p_end}
{synopt:{cmd:e(wtype)}}权重类型{p_end}
{synopt:{cmd:e(wexp)}}权重表达式{p_end}
{synopt:{cmd:e(title)}}估计输出中的标题{p_end}
{synopt:{cmd:e(ties)}}平局处理方式{p_end}
{synopt:{cmd:e(mahalanobis)}}{cmd:mahalanobis}，如果执行了 Mahalanobis 变换{p_end}
{synopt:{cmd:e(properties)}}{cmd:nob noV}{p_end}
{synopt:{cmd:e(estat_cmd)}}用于实现 {cmd:estat} 的程序{p_end}
{synopt:{cmd:e(predict)}}用于实现 {cmd:predict} 的程序{p_end}
{synopt:{cmd:e(marginsnotok)}}被 {cmd:margins} 禁止的预测{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 矩阵}{p_end}
{synopt:{cmd:e(groupcounts)}}每组的观测值数量{p_end}
{synopt:{cmd:e(grouppriors)}}每组的先验概率{p_end}
{synopt:{cmd:e(groupvalues)}}每组的数值{p_end}
{synopt:{cmd:e(SSCP_W)}}组内 SSCP 矩阵{p_end}
{synopt:{cmd:e(W_eigvals)}}{cmd:e(SSCP_W}{cmd:)} 的特征值{p_end}
{synopt:{cmd:e(W_eigvecs)}}{cmd:e(SSCP_W}{cmd:)} 的特征向量{p_end}
{synopt:{cmd:e(S)}}组内协方差矩阵{p_end}
{synopt:{cmd:e(Sinv)}}{cmd:e(S)} 的逆{p_end}
{synopt:{cmd:e(sqrtSinv)}}{cmd:e(Sinv)} 的 Cholesky（平方根）{p_end}
{synopt:{cmd:e(community)}}用于预测的邻居社区{p_end}

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 函数}{p_end}
{synopt:{cmd:e(sample)}}标记估计样本{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <discrim_knn.sthlp>}