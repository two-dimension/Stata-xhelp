{smcl}
{* *! version 1.0.1  25sep2017}{...}
{vieweralsosee "[R] zip" "help zip_zh"}{...}
{vieweralsosee "[R] zinb" "help zinb_zh"}{...}
{vieweralsosee "[R] zioprobit" "help zioprobit_zh"}
{help j_vuong:English Version}
{hline}{...}
{title:Vuong检验不适合用于检验零膨胀}

{pstd}
{help j_vuong##G1994:Greene (1994)} 提出了将Vuong检验用于非嵌套模型 ({help j_vuong##V1989:Vuong 1989}) 来检验零膨胀。 尽管早期有许多引用，{help j_vuong##W2015:Wilson (2015)} 的近期研究表明，Vuong检验不适合用于检验零膨胀。嵌套发生在零膨胀的概率为0时，这在边界上，因此违反了Vuong检验对非嵌套模型的规则条件。因此，检验统计量的分布不是标准正态分布。实际分布未知，因此无法用于推断。

{pstd}
您可以考虑使用信息准则在标准模型和零膨胀模型之间进行选择；参见 {mansection R zipRemarksandexamplesex2:example 2} 在 {bf:[R] zip} 中。

{title:参考文献}

{marker G1994}{...}
{phang}
Greene, W. H.  1994.
在Poisson和负二项回归模型中考虑过度零和样本选择。 工作论文 EC-94-10，经济学系，纽约大学斯特恩商学院。
{browse "https://ideas.repec.org/p/ste/nystbu/94-10.html"}.

{marker V1989}{...}
{phang}
Vuong, Q. H.  1989.
用于模型选择和非嵌套假设的似然比检验。
{it:Econometrica} 57: 307-333。

{marker W2015}{...}
{phang}
Wilson, P.  2015.
对非嵌套模型使用Vuong检验来检验零膨胀的误用。
{it:Economics Letters} 127: 51-53。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <j_vuong.sthlp>}