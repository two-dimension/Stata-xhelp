{smcl}
{* *! version 1.1.11  19oct2017}{...}
{vieweralsosee "[MV] measure_option" "mansection MV measure_option"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MV] cluster" "help cluster_zh"}{...}
{vieweralsosee "[MV] clustermat" "help clustermat_zh"}{...}
{vieweralsosee "[P] matrix dissimilarity" "help matrix_dissimilarity_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MV] parse_dissim" "help parse_dissim_zh"}{...}
{viewerjumpto "Syntax" "measure_option_zh##syntax"}{...}
{viewerjumpto "Description" "measure_option_zh##description"}{...}
{viewerjumpto "Options" "measure_option_zh##options"}{...}
{viewerjumpto "References" "measure_option_zh##references"}
{help measure_option:English Version}
{hline}{...}
{p2colset 1 24 26 2}{...}
{p2col:{bf:[MV]} {it:measure_option} {hline 2}}相似性和不相似性度量的选项{p_end}
{p2col:}({mansection MV measure_option:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

	{it:command} ...{cmd:,} ... {opt mea:sure(measure)} ...

    或

	{it:command} ...{cmd:,} ... {it:measure} ...


包含 help measure_option_optstab


{marker description}{...}
{title:描述}

{pstd}
一些命令有选项，可以让您指定相似性或不相似性度量，语法中称为 {it:measure}；请参见 {manhelp cluster MV}, {manhelp mds MV}, {manhelp discrim_knn MV:discrim knn} 和 {manhelp matrix_dissimilarity MV:matrix dissimilarity}。这些选项在此文档中有详细说明。大多数分析命令（例如，{cmd:cluster} 和 {cmd:mds}）会根据需要将相似性度量转换为不相似性度量。


{marker options}{...}
{title:选项}

{pstd}
度量分为连续数据和二进制数据的度量。
{it:measure} 对大小写不敏感。详细定义请参阅
{it:{help measure_option##continuous:连续数据的相似性和不相似性度量}}、
{it:{help measure_option##binary:二进制数据的相似性度量}}和
{it:{help measure_option##mixed:混合数据的不相似性度量}}。

{pstd}
相似性或不相似性度量通常用于确定观测值之间的相似性或不相似性。然而，有时变量之间的相似性或不相似性也是关注点。


{marker continuous}{...}
    {title:连续数据的相似性和不相似性度量}

{pstd}
以下是 Stata 中可用于连续数据的相似性和不相似性度量。在以下公式中，p 代表变量的数量，N 是观测值的数量，x_iv 表示观测 i 在变量 v 上的值。有关变量之间相似性和不相似性度量的公式，请参见 
{mansection MV measure_optionOptionsSimilarityanddissimilaritymeasuresforcontinuousdata:{bf:[MV]} {it:measure_option}}（此处未提供相关内容）。


{phang}
{opt L2} (别名 {opt Euclidean} 和 {cmd:L(2)}){break}
请求参数为 2 的 Minkowski 距离度量

{center:sqrt(sum((x_ia - x_ja)^2))}

{pmore}
{opt L2} 通常称为欧几里得距离，是 {cmd:discrim knn}、{cmd:mds}、{cmd:matrix dissimilarity} 和所有 {cmd:cluster} 子命令（{cmd:centroidlinkage}、{cmd:medianlinkage} 和 {cmd:wardslinkage} 除外）的默认不相似性度量；请参见 {manhelp discrim_knn MV:discrim knn}、{manhelp mds MV}、{manhelp matrix_dissimilarity MV:matrix dissimilarity} 和 {manhelp cluster MV}。

{phang}
{opt L2squared} (别名 {opt Lpower(2)}){break}
请求参数为 2 的 Minkowski 距离度量的平方

{center:sum((x_ia - x_ja)^2)}

{pmore}
{opt L2squared} 通常称为平方欧几里得距离，是 {cmd:centroidlinkage}、{cmd:medianlinkage} 和 {cmd:wardslinkage} 子命令的默认不相似性度量；见 {manhelp cluster MV}。

{phang}
{opt L1} (别名 {opt absolute}、{opt cityblock}、{opt manhattan} 和 {cmd:L(1)}){break}
请求参数为 1 的 Minkowski 距离度量

{center:sum(|x_ia - x_ja|)}

{pmore}
其通常称为绝对值距离。

{phang}
{opt Linfinity} (别名 {opt maximum}){break}
请求参数为无穷大的 Minkowski 距离度量

{center:max(|x_ia - x_ja|)}

{pmore}
其通常称为最大值距离。

{phang}
{opt L(#)}{break}
请求参数为 {it:#} 的 Minkowski 距离度量：

{center:(sum(|x_ia - x_ja|^{it:#})^(1/{it:#})     {it:#} >= 1}

{pmore}
我们不建议使用过大的 {it:#} 值。由于差值的绝对值将提升到 {it:#} 的值，可能会导致数值溢出或下溢，具体取决于数据的性质。
使用较大的 {it:#} 值时，{opt L()} 选项的结果将与 {opt Linfinity} 选项相似。建议使用比 {it:#} 的大值更稳定的 {opt Linfinity} 选项。

{pmore}
见 {help measure_option##A1973:Anderberg (1973)} 以获取关于 Minkowski 度量及其特殊情况的讨论。

{phang}
{opt Lpower(#)}{break}
请求参数为 {it:#}，提升到 {it:#} 次方的 Minkowski 距离度量：

{center:sum(|x_ia - x_ja|^{it:#})     {it:#} >= 1}

{pmore}
与 {opt L(#)} 一样，我们不建议使用过大的 {it:#} 值；见上述讨论。

{phang}
{opt Canberra}{break}
请求以下距离度量

{center:sum(|x_ia - x_ja|/(|x_ia|+|x_ja|))}

{pmore}
其值范围从 0 到 p，即变量的数量。
{help measure_option##G1999:Gordon (1999)} 解释说 Canberra 距离对接近零的微小变化非常敏感。

{phang}
{opt correlation}{break}
请求相关系数相似度量

{center:sum((x_ia-xbar_i.)(x_ja-xbar_j.))}
{center:{hline 46}}
{center:sqrt(sum(x_ia-xbar_i.)^2 * sum(x_jb-xbar_j.)^2)}

{pmore}
其中 xbar_i. = sum(x_ia)/p。

{pmore}
相关相似度量的值范围在 -1 和 1 之间。使用此度量时，两个向量的相对方向非常重要。
相关相似度量与角度分离相似度量（下面描述）相关。相关相似度量给出两个向量从均值测量的角度的余弦；见 {help measure_option##G1999:Gordon (1999)}。

{phang}
{opt angular} (别名 {opt angle}){break}
请求角度分离相似度量

{center:sum(x_ia * x_ja)/sqrt(sum(x_ia^2) * sum(x_jb^2))}

{pmore}
这是两个向量从零出发的角度之间的余弦，值在 -1 到 1 之间；
见 {help measure_option##G1999:Gordon (1999)}。


{marker binary}{...}
    {title:二进制数据的相似度量}

{pstd}
二进制数据的相似度量基于观测 i 和 j 的交叉统计中的四个值（比较观测值时）或变量 u 和 v（比较变量时）。

{pstd}
对于比较观测 i 和 j，交叉统计为

{center:       {c |} obs. j}
{center:       {c |}  1  0 }
{center:{hline 7}{c +}{hline 7}}
{center:obs. 1 {c |}  a  b }
{center: i   0 {c |}  c  d }

{pstd}
a 是观测 i 和 j 都为 1 的变量的数量，d 是观测 i 和 j 都为 0 的变量的数量。观测 i 为 1 而观测 j 为 0 的变量数量为 b，观测 i 为 0 而观测 j 为 1 的变量数量为 c。

{pstd}
请参见 {hi:[MV]} {it:measure_option} 以查看 
{mansection MV measure_optionOptionscompare_uv:相似表} 以用于变量之间的比较。

{pstd}
Stata 将非零值视为 1，当期望二进制值时。指定一种二进制相似度量将强制这种行为，除非其他选项覆盖它（例如，{opt allbinary} 选项在 {manhelp matrix_dissimilarity MV:matrix dissimilarity} 中）。请参见 {hi:[MV]} {it:measure_option} 以讨论适用于平均值的二进制相似度量。

{pstd}
以下是可用的二进制相似系数。除非另有说明，相似度量的范围是 0 到 1。

{phang}
{opt matching}{break}
请求简单匹配
({help measure_option##Z1938:Zubin 1938},
 {help measure_option##SM1958:Sokal and Michener 1958}) 二进制相似系数

{center:(a+d)/(a+b+c+d)}

{pmore}
这是两个观测值或变量之间匹配的比例。

{phang}
{opt Jaccard}{break}
请求 Jaccard
({help measure_option##J1901:1901},
 {help measure_option##J1908:1908}) 二进制相似系数

{center:a/(a+b+c)}

{pmore}
这是在至少一个向量为 1 时的匹配比例。如果两个向量全为零，则此度量未定义。然则，Stata 将答案声明为 1，意味着完全一致。这是大多数应用的合理选择，它将导致全零向量与另一个全零向量相似度为 1。在所有其他情况下，全零向量对另一个向量的 Jaccard 相似度为 0。

{pmore}
Jaccard 系数最早是由 {help measure_option##G1884:Gilbert (1884)} 提出的。

{phang}
{opt Russell}{break}
请求 {help measure_option##RR1940:Russell and Rao (1940)} 二进制相似系数

{center:a/(a+b+c+d)}

{phang}
{opt Hamann}{break}
请求 {help measure_option##H1961:Hamann (1961)} 二进制相似系数

{center:((a+d)-(b+c))/(a+b+c+d)}

{pmore}
这是同意数减去不同意数再除以总和。Hamann 系数的范围是 -1（完全不同意）到 1（完全同意）。Hamann 系数等于简单匹配系数的两倍减去 1。

{phang}
{opt Dice}{break}
请求 Dice 二进制相似系数

{center:2a/(2a+b+c)}

{pmore}
由 {help measure_option##C1932:Czekanowski (1932)},
{help measure_option##D1945:Dice (1945)} 和
{help measure_option##S1948:S{c o/}rensen (1948)} 提出。
Dice 系数类似于 Jaccard 相似系数，但对同意赋予两倍权重。与 Jaccard 系数一样，Stata 当两个向量全为零时声明其为 1，从而避免公式未定义的情况。

{phang}
{opt antiDice}{break}
请求二进制相似系数

{center:a/(a+2(b+c))}

{pmore}
这归功于 {help measure_option##A1973:Anderberg (1973)}，但最早由 {help measure_option##SS1963:Sokal and Sneath (1963, 129)} 提出。我们没有称此为 Anderberg 系数，因为有另一个系数更广为人知；见 {helpb measure_option##Anderberg:Anderberg} 选项。
{opt antiDice} 这个名称是我们创造的。该系数与 Dice 系数的视角相反，对不同意赋予双倍权重。和 Jaccard、Dice 系数一样，当两个向量全为零时，anti-Dice 系数也声明为 1。

{phang}
{opt Sneath}{break}
请求 {help measure_option##SS1962:Sneath and Sokal (1962)} 二进制相似系数

{center:2(a+d)/{c -(}2(a+d)+(b+c){c )-}}

{pmore}
这类似于简单匹配系数，但对匹配赋予双倍权重。还可以将 Sneath 和 Sokal 系数与 Dice 系数进行比较，后者唯一不同在于是否包括 d。

{phang}
{opt Rogers}{break}
请求 {help measure_option##RT1960:Rogers and Tanimoto (1960)} 二进制相似系数

{center:(a+d)/{c -(}(a+d)+2(b+c){c )-}}

{pmore}
这与 Sneath 和 Sokal 系数相反，对不同意赋予双倍权重。还可以将 Rogers 和 Tanimoto 系数与 anti-Dice 系数进行比较，后者的不同之处仅在于是否包括 d。

{phang}
{opt Ochiai}{break}
请求 {help measure_option##O1957:Ochiai (1957)} 二进制相似系数

{center:a/sqrt((a+b)(a+c))}

{pmore}
当一个或两个被比较的向量均为零时，Ochiai 系数的公式未定义。如果两个向量全为零，Stata 声明其值为 1；如果只有一个向量全为零，测量值被声明为 0。

{pmore}
Ochiai 系数最早由 {help measure_option##DK1932:Driver and Kroeber (1932)} 提出。

{phang}
{opt Yule}{break}
请求 Yule（二进制相似系数；见 {help measure_option##Y1900:Yule [1900]} 和 
{help measure_option##YK1950:Yule 和 Kendall [1950]} 的文献）

{center:(ad-bc)/(ad+bc)}

{pmore}
其值范围是从 -1 到 1。Yule 系数的公式在每个向量为全零或全为一的情况下未定义。当 b+c = 0 时，Stata 声明测量值为 1，意味着完全一致；当 a+d = 0 时，Stata 声明测量值为 -1，意味着完全不一致。否则，如果 ad-bc = 0，Stata 声明测量值为 0。这些规则在使用 Yule 公式之前应用，避免了公式产生未定义结果的情况。

{marker Anderberg}
{phang}
{opt Anderberg}{break}
请求 Anderberg 二进制相似系数

{center:(a/(a+b) + a/(a+c) + d/(c+d) + d/(b+d))/4}

{pmore}
当一个或两个向量的值均为零或均为一时，Anderberg 系数未定义。此难点通过首先应用规则来克服，即当两个向量全为一（或两个向量全为零）时，相似度量值被声明为 1。否则，当任何边际总和（a+b、a+c、c+d、b+d）为零时，相似度量值被声明为 0。

{pmore}
尽管该相似系数通常被称为 Anderberg 系数，但它最早出现在 
{help measure_option##SS1963:Sokal and Sneath (1963, 130)} 中。

{phang}
{opt Kulczynski}{break}
请求 {help measure_option##K1927:Kulczyński (1927)} 二进制相似系数

{center:(a/(a+b) + a/(a+c))/2}

{pmore}
当一个或两个向量均为零时，此度量的公式未定义。如果两个向量全为零，Stata 声明相似度量为 1。如果只有一个向量全为零，相似度量值被声明为 0。

{phang}
{opt Pearson}{break}
请求 Pearson 的 ({help measure_option##P1900:1900}) phi 二进制相似系数

{center:(ad-bc)/sqrt((a+b)(a+c)(d+b)(d+c))}

{pmore}
其值范围为 -1 到 1。当一个或两个向量均为零或均为一时，系数的公式未定义。当 b+c = 0 时，Stata 声明测量值为 1，意味着完全一致；当 a+d = 0 时，Stata 声明测量值为 -1，意味着完全不一致。否则，如果 ad-bc = 0，Stata 声明测量值为 0。这些规则在使用 Pearson phi 系数公式之前应用，避免了公式产生未定义结果的情况。

{phang}
{opt Gower2}{break}
请求二进制相似系数

{center:ad/sqrt((a+b)(a+c)(d+b)(d+c))}

{pmore}
该系数由 {help measure_option##G1985:Gower (1985)} 提出，但最早在 {help measure_option##SS1963:Sokal and Sneath (1963, 130)} 中出现。Stata 使用名称 {opt Gower2} 以避免与更知名的 Gower 系数混淆，该系数用于混合二进制和连续数据。

{pmore}
此相似度量公式在两个向量均为零或均为一时未定义。解决方法是首先应用规则，如果两个向量均为一（或两个向量均为零），则相似度量值声明为 1。否则，当 ad = 0 时，相似度量值声明为 0。
 
 
{marker mixed}{...}
    {title:混合数据的不相似度量}

{pstd}
此处提供一种适用于二进制和连续数据混合的一种度量。二进制变量仅包含零、一个和缺失值；其他变量均为连续型。以下公式用于观测值之间的不相似性；有关变量之间不相似性度量的公式，请参见 
{mansection MV measure_optionOptionsDissimilaritymeasuresformixeddata:{bf:[MV]} {it:measure_option}}（此处未提供相关内容）。

{phang}
{opt Gower}{break}
请求用于二进制和连续变量混合的 {help measure_option##G1971:Gower (1971)} 不相似系数

{center:sum(delta_ijv*d_ijv)/sum(delta_ijv)}

{pmore}
其中 delta_ijv 是一个二进制指示符，当观测 i 和 j 在变量 v 上均非缺失时等于 1，否则为 0。使用 {cmd:cluster} 或 {cmd:mds} 时，会排除缺失值观测；因此如果某一观测被包含，delta_ijv = 1，并且 sum(delta_ijv) 表示变量的数量。然而，使用 {cmd:matrix dissimilarity} 和 {cmd:Gower} 选项时，不排除缺失值观测。请参见 {manhelp cluster MV}、{manhelp mds MV} 和
{manhelp matrix_dissimilarity MV:matrix dissimilarity}。

{pmore}
对于二进制变量 v，

{center:d_ijv = 0 if x_iv=x_jv}
{center:      = 1    otherwise}

{pmore}
这与 {cmd:matching} 度量相同。

{pmore}
对于连续变量 v，

{center:d_ijv = |x_iv - x_jv|/(max_k(x_kv)-min_k(x_kv))}

{pmore}
如果 (max_k(x_kv)-min_k(x_kv)) 为零，即变量的范围为零，则 d_ijv 被设置为 0。这是 {cmd:L1} 度量除以变量的范围。

{pmore}
Gower 度量将二进制变量视为仅包含 0、1 或缺失值的变量。所有其他变量视为连续型。

{pmore}
在 {manhelp matrix_dissimilarity MV:matrix dissimilarity} 中，缺失观测仅在计算 {cmd:Gower} 不相似性时包含，但当 delta_ijv 或 delta_iuv 的所有值均为零时，该不相似度量的公式未定义。此时不相似度量被设置为缺失值。


	{title:技术说明}

{pmore}
通常情况下，以下命令

{pmore2}
{cmd:. matrix dissimilarity gm = x1 x2 y1, Gower}{break}
{cmd:. clustermat waverage gm, add}{break}

{pmore}
以及

{pmore2}
{cmd:. cluster waverage x1 x2 y1, measure(Gower)}

{pmore}
将会产生相同的结果，{cmd:mdsmat} 和 {cmd:mds} 的情况也是如此。然而，如果任何变量包含缺失值，则情况就不一样了。 {cmd:cluster} 和 {cmd:mds} 排除所有那些在任何感兴趣的变量上有缺失值的观测，而使用 {cmd:matrix} {cmd:dissimilarity} 和 {cmd:Gower} 选项则不会。有关更多信息，请参见 {manhelp cluster MV}、{manhelp mds MV} 和 {manhelp matrix_dissimilarity MV:matrix dissimilarity} 。

{pmore}
注意：使用不带 {cmd:Gower} 选项的 {helpb matrix dissimilarity} 将排除所有在任何感兴趣的变量上有缺失值的观测。


{marker references}{...}
{title:参考文献}

{marker A1973}{...}
{phang}
Anderberg, M. R. 1973. {it:Cluster Analysis for Applications}
    New York: Academic Press.

{marker C1932}{...}
{phang}
Czekanowski, J. 1932. "Coefficient of racial likeness" und
  "durchschnittliche Differenz".
  {it:Anthropologischer Anzeiger} 9: 227-249.

{marker D1945}{...}
{phang}
Dice, L. R. 1945. Measures of the amount of ecologic associate between
   species. {it:Ecology} 26: 297-302.

{marker DK1932}{...}
{phang}
Driver, H. E., 和 A. L. Kroeber. 1932. Quantitative expression of cultural
  relationships. {it:University of California Publications in American}
  {it:Archaeology and Ethnology} 31: 211-256.

{marker G1884}{...}
{phang}
Gilbert, G. K. 1884. Finley's tornado predictions.
  {it:American Meteorological Journal} 1: 166-172.

{marker G1999}{...}
{phang}
Gordon, A. D. 1999. {it:Classification}. 2nd ed.
    Boca Raton, FL: Chapman & Hall/CRC.

{marker G1971}{...}
{phang}
Gower, J. C. 1971. A general coefficient of similarity and some of its
  properties. {it:Biometrics} 27: 857-871.

{marker G1985}{...}
{phang}
------. 1985. Measures of similarity, dissimilarity, and distance.
  In Vol. 5 of {it:Encyclopedia of Statistical Sciences}, ed.
  S. Kotz, N. L. Johnson, 和 C. B. Read, 397-405. New York: Wiley.

{marker H1961}{...}
{phang}
Hamann, U. 1961. Merkmalsbestand und Verwandtschaftsbeziehungen der Farinosae.
  Ein Beitrag zum System der Monokotyledonen.
  {it:Willdenowia} 2: 639-768.

{marker J1901}{...}
{phang}
Jaccard, P. 1901. Distribution de la flore alpine dans le Bassin des Dranses et
  dans quelques r{c e'}gions voisines.
  {it:Bulletin de la Soci{c e'}t{c e'} Vaudoise des Sciences Naturelles}
  37: 241-272.

{marker J1908}{...}
{phang}
------. 1908. Nouvelles recherches sur la distribution florale.
  {it:Bulletin de la Soci{c e'}t{c e'} Vaudoise des Sciences Naturelles}
  44: 223-270.

{marker K1927}{...}
{phang}
Kulczyński, S. 1927. Die Pflanzenassoziationen der Pieninen [In Polish,
   German summary]. {it:Bulletin International de l'Academie Polonaise des}
  {it:Sciences et des Lettres, Classe des Sciences Mathematiques et}
  {it: Naturelles, B (Sciences Naturelles)} Suppl. II: 57-203.

{marker O1957}{...}
{phang}
Ochiai, A. 1957. Zoogeographic studies on the soleoid fishes found in Japan
   and its neighbouring regions [in Japanese, English summary].
   {it:Bulletin of the Japanese Society of Scientific Fisheries}
   22: 526-530.

{marker P1900}{...}
{phang}
Pearson, K. 1900. Mathematical contributions to the theory of evolution -- VII.
  On the correlation of characters not quantitatively measurable.
  {it:Philosophical Transactions of the Royal Society of London, Series A}
  195: 1-47.

{marker RT1960}{...}
{phang}
Rogers, D. J., 和 T. T. Tanimoto. 1960. A computer program for classifying
  plants. {it:Science} 132: 1115-1118.

{marker RR1940}{...}
{phang}
Russell, P. F., 和 T. R. Rao. 1940. On habitat and association of species of
  anopheline larvae in south-eastern Madras. 
  {it:Journal of the Malaria Institute of India} 3: 153-178.

{marker SS1962}{...}
{phang}
Sneath, P. H. A., 和 R. R. Sokal. 1962. Numerical taxonomy.
  {it:Nature} 193: 855-860.

{marker SM1958}{...}
{phang}
Sokal, R. R., 和 C. D. Michener. 1958. 
  A statistical method for evaluating systematic relationships.
  {it:University of Kansas Science Bulletin} 28: 1409-1438.

{marker SS1963}{...}
{phang}
Sokal, R. R., 和 P. H. A. Sneath. 1963.
  {it:Principles of Numerical Taxonomy}. San Francisco: Freeman.

{marker S1948}{...}
{phang}
S{c o/}rensen, T. 1948. A method of establishing groups of equal amplitude in
  plant sociology based on similarity of species content and its application to
  analyses of the vegetation on Danish commons.
  {it:Royal Danish Academy of Sciences and Letters, Biological Series} 5: 1-34.

{marker Y1900}{...}
{phang}
Yule, G. U. 1900. On the association of attributes in statistics:
  With illustrations from the material of the Childhood Society, etc.
  {it:Philosophical Transactions of the Royal Society, Series A} 194:
  257-319.

{marker YK1950}{...}
{phang}
Yule, G. U. 和 M. G. Kendall. 1950.
{it:An Introduction to the Theory of Statistics}. 14th ed. New York: Hafner.

{marker Z1938}{...}
{phang}
Zubin, J. 1938. A technique for measuring like-mindedness.
  {it:Journal of Abnormal and Social Psychology} 33: 508-516.
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <measure_option.sthlp>}