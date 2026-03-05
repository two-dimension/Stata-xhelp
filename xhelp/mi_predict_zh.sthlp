{smcl}
{* *! version 1.0.9  15may2018}{...}
{viewerdialog mi "dialog mi"}{...}
{vieweralsosee "[MI] mi predict" "mansection MI mipredict"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MI] mi estimate" "help mi_estimate_zh"}{...}
{vieweralsosee "[MI] mi estimate postestimation" "help mi estimate postestimation"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MI] Glossary" "help mi glossary"}{...}
{vieweralsosee "[MI] Intro" "help mi_zh"}{...}
{vieweralsosee "[MI] Intro substantive" "help mi intro substantive"}{...}
{viewerjumpto "Syntax" "mi_predict_zh##syntax"}{...}
{viewerjumpto "Menu" "mi_predict_zh##menu"}{...}
{viewerjumpto "Description" "mi_predict_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mi_predict_zh##linkspdf"}{...}
{viewerjumpto "Options" "mi_predict_zh##options"}{...}
{viewerjumpto "Examples" "mi_predict_zh##examples"}{...}
{viewerjumpto "References" "mi_predict_zh##references"}
{help mi_predict:English Version}
{hline}{...}
{p2colset 1 20 22 2}{...}
{p2col:{bf:[MI] mi predict} {hline 2}}获取多重插补预测{p_end}
{p2col:}({mansection MI mipredict:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{pstd}
获取多重插补线性预测

{p 8 16 2}
{cmd:mi} {cmd:predict} {dtype} {newvar} [{it:{help if_zh}}]
    {cmd:using} {it:miestfile}
   [{cmd:,} {it:{help mi predict##predict_options:预测选项}}
            {it:{help mi predict##mioptions:选项}}]


{pstd}
获取多重插补非线性预测

{p 8 16 2}
{cmd:mi} {cmd:predictnl} {dtype} {newvar} =
     {it:{help mi predict##pnl_exp:pnl_exp}}
     [{it:{help if_zh}}] {cmd:using} {it:miestfile}
     [{cmd:,} {it:{help mi predict##pnl_options:pnl_options}}
              {it:{help mi predict##mioptions:选项}}]

{phang}
{it:miestfile}{cmd:.ster} 包含之前由 {cmd:mi} {cmd:estimate, saving(}{it:miestfile}{cmd:)} 保存的估计结果；详见
{manhelp mi_estimate MI:mi estimate}。

{marker pnl_exp}{...}
{phang}
{it:pnl_exp} 是任何有效的 Stata 表达式，也可以包含对两个独特于 {cmd:predictnl} 的特殊函数的调用：{cmd:predict()} 和 {cmd:xb()}；详见 {manhelp predictnl R} 获取详细信息。

{marker predict_options}{...}
{synoptset 29 tabbed}{...}
{synopthdr:预测选项}
{synoptline}
{syntab:预测选项}
{synopt :{opt xb}}计算线性预测；默认值{p_end}
{synopt :{opt stdp}}计算预测的标准误差{p_end}
{synopt :{opt nooff:set}}忽略任何 {opt offset()} 或 {opt exposure()} 变量{p_end}
{synopt :{opt eq:uation}{cmd:(}{it:eqno}{cmd:)}}在多方程命令后指定方程{p_end}
{synoptline}

{marker pnl_options}{...}
{synoptset 29 tabbed}{...}
{synopthdr:pnl_options}
{synoptline}
{syntab:预测选项}
{synopt :{opth se(newvar)}}创建包含标准误差的 {it:newvar}{p_end}
{synopt :{opth var:iance(newvar)}}创建包含方差的 {it:newvar}{p_end}
{synopt :{opth w:ald(newvar)}}创建包含 Wald 测试统计量的 {it:newvar}{p_end}
{synopt :{opth p(newvar)}}创建包含 Wald 测试显著性水平（p值）的 {it:newvar}{p_end}
{synopt :{opth ci:(newvarlist:newvars)}}创建包含下限和上限置信区间的 {it:newvars}{p_end}
{synopt :{opt l:evel(#)}}设置置信水平；默认是 {cmd:level(95)}{p_end}
{synopt :{opth bvar:iance(newvar)}}创建包含插补间方差的 {it:newvar}{p_end}
{synopt :{opth wvar:iance(newvar)}}创建包含内插补方差的 {it:newvar}{p_end}
{synopt :{opth df(newvar)}}创建包含 MI 自由度的 {it:newvar}{p_end}
{synopt: {opt nosmall}}不对自由度进行小样本修正{p_end}
{synopt :{opth rvi(newvar)}}创建包含相对方差增加的 {it:newvar}{p_end}
{synopt :{opth fmi(newvar)}}创建包含缺失信息分数的 {it:newvar}{p_end}
{synopt :{opth re(newvar)}}创建包含相对效率的 {it:newvar}{p_end}

{syntab :高级}
{synopt :{opt iter:ate(#)}}寻找最佳步骤大小以计算完成数据的数值导数的最大迭代次数；默认是 100{p_end}
{synopt :{opt force}}计算完成数据的标准误差等，甚至在可能不适用时{p_end}
{synoptline}

{marker mioptions}{...}
{synoptset 29 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:MI 选项}
{synopt:{opt ni:mputations(#)}}指定用于计算的插补数量；默认是使用所有现有的插补{p_end}
{synopt:{opth i:mputations(numlist)}}指定用于计算的插补{p_end}
{synopt:{opth est:imations(numlist)}}指定用于计算的估计结果{p_end}
{synopt:{opth esample(varname)}}限制预测到由二元变量 {it:varname} 识别的估计子样本{p_end}
{synopt:{opt storecomp:leted}}将完成数据预测存储在插补数据中；仅在 flong 和 flongsep 样式中可用{p_end}

{syntab:报告}
{synopt:{opt replay}}重放来自每个单独估计在 {it:miestfile}{cmd:.ster} 中的命令特定结果{p_end}
{synopt:{opt cmdleg:end}}显示命令图例{p_end}

{synopt: {opt noup:date}}不执行 {cmd:mi update}；详见 
{manhelp mi_noupdate_option MI:noupdate option}{p_end}
{synopt:{opt noerrn:otes}}抑制与 {it:miestfile}{cmd:.ster} 中失败估计结果相关的错误通知{p_end}
{synopt:{opt showimp:utations}}显示保存在 {it:miestfile}{cmd:.ster} 中的插补{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
{opt noupdate}, {opt noerrnotes}, 和 {opt showimputations} 不会出现在对话框中。{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 多重插补}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:mi predict using} {it:miestfile} 用于在 {cmd:mi estimate,}
{opt saving(miestfile)}{cmd::} 之后使用 ... 来获取多重插补（MI）线性预测或其标准误差。

{p 4 4 2}
{cmd:mi predictnl using} {it:miestfile} 用于在 {cmd:mi estimate,}
{opt saving(miestfile)}{cmd::} 之后使用 ... 来获取 MI （可能的）非线性预测、它们的标准误差和其他统计量，包括特定于 MI 的统计量。

{p 4 4 2}
MI 预测、它们的标准误差和其他统计量是通过逐观察应用 Rubin 的组合规则来获得的，针对每个插补计算的完成数据预测 
({help mi predict##WRW2011:White, Royston, 和 Wood 2011）。结果存储在原始数据中（{it:m}=0）。详见 {manhelp predict R} 和 
{manhelp predictnl R} 获取关于完成数据预测计算的详细信息。

{p 4 4 2}
{cmd:mi predict} 和 {cmd:mi predictnl} 可能会改变数据的排序顺序。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection MI mipredictRemarksandexamples:备注和示例}

        {mansection MI mipredictMethodsandformulas:方法和公式}

{pstd}
上述部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:预测选项}

{phang}
{cmd:xb}, {cmd:stdp}, {cmd:noffset}, {opt equation(eqno)}；详见 
{manhelp predict R}。

{phang}
{opt se(newvar)}, {opt variance(newvar)}, {opt wald(newvar)}, {opt p(newvar)},
{opt ci(newvars)}, {opt level(#)}；详见 {manhelp predictnl R}。这些选项将指定的 MI 统计储存在变量 {it:newvar} 中的原始数据中（{it:m}=0）。 
{cmd:level()} 与 {cmd:ci()} 结合时是相关的。如果指定了 {cmd:storecompleted}，那么 {it:newvar} 将包含在插补数据中保存的相应完成数据估计（{it:m}>0）。否则，
{it:newvar} 在插补数据中缺失。

{phang}
{opth bvariance(newvar)} 添加存储类型为 {it:type} 的 {it:newvar}，对于预测样本中的每一个 {cmd:i}， {it:newvar}{cmd:[i]} 包含 {it:pnl_exp}{cmd:[i]} 的估计间插补方差。
{cmd:storecompleted} 对 {cmd:bvariance()} 没有影响。

{phang}
{opth wvariance(newvar)} 添加存储类型为 {it:type} 的 {it:newvar}，对于预测样本中的每一个 {cmd:i}，{it:newvar}{cmd:[i]} 包含 {it:pnl_exp}{cmd:[i]} 的估计内插补方差。
{cmd:storecompleted} 对 {cmd:wvariance()} 没有影响。

{phang}
{opth df(newvar)} 添加存储类型为 {it:type} 的 {it:newvar}，对于预测样本中的每一个 {cmd:i}，{it:newvar}{cmd:[i]} 包含 {it:pnl_exp}{cmd:[i]} 的估计 MI 自由度。如果指定了 {cmd:storecompleted}，那么插补数据中的 {it:newvar} 将包含由 {cmd:mi estimate} 保存的完整数据自由度。在没有完整数据自由度的情况下，或者如果使用了 {cmd:nosmall}，那么即使指定了 {cmd:storecompleted}， {it:newvar} 在插补数据中也是缺失的。

{phang}
{cmd:nosmall} 指定不对自由度进行小样本修正。默认情况下，使用 
{help mi predict##BR1999:Barnard 和 Rubin (1999)} 的小样本修正。该选项对由 {cmd:p()}、{cmd:ci()}、{cmd:df()}、{cmd:fmi()} 和 {cmd:re()} 存储的结果有影响。

{phang}
{opth rvi(newvar)} 添加存储类型为 {it:type} 的 {it:newvar}，对于预测样本中的每一个 {cmd:i}， {it:newvar}{cmd:[i]} 包含 {it:pnl_exp}{cmd:[i]} 的估计相对方差增加。
{cmd:storecompleted} 对 {cmd:rvi()} 没有影响。

{phang}
{opth fmi(newvar)} 添加存储类型为 {it:type} 的 {it:newvar}，对于预测样本中的每一个 {cmd:i}， {it:newvar}{cmd:[i]} 包含 {it:pnl_exp}{cmd:[i]} 的估计缺失信息分数。
{cmd:storecompleted} 对 {cmd:fmi()} 没有影响。

{phang}
{opth re(newvar)} 添加存储类型为 {it:type} 的 {it:newvar}，对于预测样本中的每一个 {cmd:i}， {it:newvar}{cmd:[i]} 包含 {it:pnl_exp}{cmd:[i]} 的估计相对效率。
{cmd:storecompleted} 对 {cmd:re()} 没有影响。

{dlgtab:MI 选项}

{phang}
{opt nimputations(#)} 指定使用前 {it:#} 个插补； {it:#} 必须是 2 <= {it:#} <= M。默认是使用所有插补，M。
只能指定 {cmd:nimputations()}、{cmd:imputations()} 或 {cmd:estimations()} 之一。

{phang}
{opth imputations(numlist)} 指定使用哪些插补。默认是使用全部插补。 {it:numlist} 必须包含至少两个对应于保存在 {it:miestfile}{cmd:.ster} 中的插补的数字。你可以使用 {cmd:showimputations} 选项来显示当前保存在 {it:miestfile}{cmd:.ster} 中的插补。
只能指定 {cmd:nimputations()}、{cmd:imputations()} 或 {cmd:estimations()} 之一。

{phang}
{opth estimations(numlist)} 的作用与 {opt imputations(numlist)} 相同，但这次插补的编号不同。假设 
{it:miestfile}{cmd:.ster} 是由 {cmd:mi estimate} 创建的，并且 {cmd:mi estimate} 被要求限制在插补 1、3、5 和 9。使用 
{cmd:imputations()}，插补仍然编号为 1、3、5 和 9。使用 {cmd:estimations()}，它们编号为 1、2、3 和 4。通常，使用 {cmd:mi estimate} 时不会指定插补的子集，因此通常情况下， {cmd:imputations()} 和 {cmd:estimations()} 选项是相同的。指定的 {it:numlist} 必须包含至少两个数字。只能指定 {cmd:nimputations()}、{cmd:imputations()} 或 {cmd:estimations()} 之一。

{phang}
{opt esample(varname)} 将预测限制在由二元变量 {it:varname} 识别的估计样本。默认情况下，为原始数据中的所有观察值获取预测。变量 {it:varname} 不能作为插补或被动注册，也不能在不同的插补中变化。

{phang}
{opt storecompleted} 将完成数据预测存储在每个插补中新增创建的变量中。默认情况下，插补数据中在新增创建的变量中包含缺失值。仅当数据为 flong 或 flongsep 时，才可以指定 {cmd:storecompleted} 选项；详见 
{manhelp mi_convert MI:mi convert} 以转换为这两种样式之一。

{dlgtab:报告}

{phang}
{cmd:replay} 从 {it:miestfile}{cmd:.ster} 重放估计结果，之前已由 {cmd:mi estimate,} {opt saving(miestfile)} 保存。

{phang}
{cmd:cmdlegend} 请求显示用于生成保存在 {it:miestfile}{cmd:.ster} 中的估计结果的估计命令对应的命令行。

{dlgtab:高级}

{phang}
{opt iterate(#)}, {cmd:force}；详见 {manhelp predictnl R}。

{pstd}
以下选项可以与 {cmd:mi predict} 和 
{cmd:mi predictnl} 一起使用，但不会在对话框中显示：

{phang}
{cmd:noupdate} 在某些情况下抑制此命令可能执行的自动 {cmd:mi update}；详见 
{manhelp noupdate_option MI:noupdate option}。这个选项很少使用。

{phang}
{cmd:noerrnotes} 抑制关于失败估计结果的通知。当 {it:miestfile}{cmd:.ster} 包含由 {cmd:mi estimate,} {opt saving(miestfile)} 保存的参数估计结果，而这些估计是由于与 {cmd:mi estimate} 联合使用的估计命令未能估计参数而失败时，这些通知会出现。

{phang}
{cmd:showimputations} 显示与保存在 {it:miestfile}{cmd:.ster} 中的估计结果对应的插补编号。


{marker examples}
{title:示例：获取 MI 线性预测及其他统计}

{pstd}
设置
{p_end}
{phang2}{cmd:. webuse mhouses1993s30}{p_end}
{phang2}{cmd:. mi estimate, saving(miest): regress price tax sqft age nfeatures ne custom corner}{p_end}

{pstd}
计算线性预测
{p_end}
{phang2}
{cmd:. mi predict xb_mi using miest}
{p_end}
{phang2}
{cmd:. mi xeq 0: summarize price xb_mi}
{p_end}

{pstd}
计算线性预测的标准误差
{p_end}
{phang2}
{cmd:. mi predict stdp_mi using miest, stdp}
{p_end}

{pstd}
仅对定制住宅计算线性预测
{p_end}
{phang2}
{cmd:. mi predict xb_custom_mi if custom using miest}
{p_end}

{pstd}
计算线性预测的 95% 置信区间和缺失信息的分数
{p_end}
{phang2}
{cmd:. mi predictnl xb1_mi = predict(xb) using miest, ci(cil_mi ciu_mi) fmi(fmi)} 
{p_end}
{phang2}
{cmd:. mi xeq 0: summarize fmi}
{p_end}

{pstd}
完成后，删除包含以前估计的文件
{p_end}
{phang2}
{cmd:. erase miest.ster}
{p_end}


{title:示例：获取估计样本的 MI 线性预测}

{pstd}
设置
{p_end}
{phang2}{cmd:. webuse mhouses1993s30, clear}{p_end}

{pstd}
转换为 flong 样式
{p_end}
{phang2}{cmd:. mi convert flong}{p_end}

{pstd}
将估计样本存储在变量 {cmd:touse}
{p_end}
{phang2}{cmd:. mi estimate, saving(miest) esample(touse): regress price tax sqft age nfeatures ne custom corner}{p_end}

{pstd}
计算估计样本的线性预测
{p_end}
{phang2}
{cmd:. mi predict xb_mi using miest, esample(touse)}
{p_end}

{pstd}
此外，将完成数据线性预测存储在插补数据中
{p_end}
{phang2}
{cmd:. mi predict xb_mi_all using miest, esample(touse) storecompleted}
{p_end}
{phang2}
{cmd:. mi xeq: summarize xb_mi_all}
{p_end}

{pstd}
完成后，删除包含以前估计的文件
{p_end}
{phang2}
{cmd:. erase miest.ster}
{p_end}


{title:示例：获取概率的 MI 估计}

{pstd}
设置
{p_end}
{phang2}{cmd:. webuse mheart1s20, clear}{p_end}
{phang2}{cmd:. mi estimate, saving(miest): logit attack smokes age bmi hsgrad female}{p_end}

{pstd}
通过 MI 线性预测的逆对数几率变换计算正面结果的概率
{p_end}
{phang2}
{cmd:. mi predict xb_mi using miest}
{p_end}
{phang2}
{cmd:. mi xeq: generate phat = invlogit(xb_mi)}
{p_end}

{pstd}
通过将组合规则直接应用于正面结果的完成数据估计来计算正面结果的概率（使用较少）
{p_end}
{phang2}
{cmd:. mi predictnl phat_mi = predict(pr) using miest}
{p_end}
{phang2}
{cmd:. mi xeq 0: summarize phat phat_mi}
{p_end}

{pstd}
完成后，删除包含以前估计的文件
{p_end}
{phang2}
{cmd:. erase miest.ster}
{p_end}


{title:示例：获取其他 MI 预测}

{pstd}
设置
{p_end}
{phang2}{cmd:. webuse mdrugtrs25, clear}{p_end}
{phang2}{cmd:. mi stset studytime, failure(died)}{p_end}
{phang2}{cmd:. mi estimate, sav(miest): streg drug age, dist(weibull)}{p_end}

{pstd}
通过在对数尺度上应用组合规则计算中位生存时间，然后将结果转换回原始尺度{p_end}
{phang2}
{cmd:. mi predictnl p50_lntime_mi = ln(predict(median time)) using miest}
{p_end}
{phang2}
{cmd:. mi xeq: generate p50_time_mi = exp(p50_lntime_mi)}
{p_end}
{phang2}
{cmd:. mi xeq 0: summarize p50_time_mi}
{p_end}

{pstd}
同样地,{p_end}
{phang2}
{cmd:. mi predictnl p50_lntime1_mi = predict(median lntime) using miest}
{p_end}
{phang2}
{cmd:. mi xeq: generate p50_time1_mi = exp(p50_lntime1_mi)}
{p_end}
{phang2}
{cmd:. mi xeq 0: summarize p50_time_mi p50_time1_mi}
{p_end}

{pstd}
完成后，删除包含以前估计的文件
{p_end}
{phang2}
{cmd:. erase miest.ster}
{p_end}


{title:示例：在多方程命令后获取 MI 预测}

{pstd}
设置
{p_end}
{phang2}{cmd:. webuse mheart1s20, clear}{p_end}
{phang2}{cmd:. mi estimate, saving(miest): mlogit attack smokes age bmi hsgrad female}{p_end}

{pstd}
计算 {cmd:attack} 的两个方程的线性预测（基类别的线性预测为零，即类别 {cmd:0}）
{p_end}
{phang2}
{cmd:. mi predict xb_0_mi using miest}
{p_end}
{phang2}
{cmd:. mi predict xb_1_mi using miest, equation(#2)}
{p_end}
{phang2}
{cmd:. mi xeq 0: summarize xb_0_mi xb_1_mi}
{p_end}

{pstd}
计算预测的非线性函数。例如，使用赔率的定义计算心脏病发作的观察特定赔率，即两种概率的比率
{p_end}
{phang2}
{cmd:. mi predictnl odds_mi = predict(equation(1))/predict(equation(0)) using miest, se(odds_stdp)}
{p_end}

{pstd}
完成后，删除包含以前估计的文件
{p_end}
{phang2}
{cmd:. erase miest.ster}
{p_end}


{marker references}{...}
{title:参考文献}

{marker BR1999}{...}
{phang}
Barnard, J. 和 D. B. Rubin. 1999. 具有多重插补的小样本自由度. {it:生物统计学} 86: 948-955。

{marker WRW2011}{...}
{phang}
White, I. R., P. Royston 和 A. M. Wood. 2011. 多重插补使用链式方程：实践中的问题和指导。
{it:医学统计} 30: 377-399。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mi_predict.sthlp>}