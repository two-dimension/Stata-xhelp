{smcl}
{* *! version 1.0.4  10aug2012}{...}
{vieweralsosee undocumented "help undocumented"}{...}
{viewerjumpto "Syntax" "postrtoe_zh##syntax"}{...}
{viewerjumpto "Description" "postrtoe_zh##description"}{...}
{viewerjumpto "Options" "postrtoe_zh##options"}{...}
{viewerjumpto "Remarks" "postrtoe_zh##remarks"}{...}
{viewerjumpto "Examples" "postrtoe_zh##examples"}
{help postrtoe:English Version}
{hline}{...}
{title:标题}

{p 4 18 2}
{hi:[P] postrtoe} {hline 2} 将结果存储在 r() 中作为 e()


{marker syntax}{...}
{title:语法}

{p 8 13 2}{cmd:postrtoe} [{it:前缀}] [{cmd:,} 选项] 

{synoptset 23 tabbed}{...}
{synopthdr}
{synoptline}
{p2coldent :{cmd:{ul:mac}ro(}{it:名字列表}|{cmd:_all)}}仅发布在 {it:名字列表} 中指定的宏或所有宏{p_end}
{p2coldent :{cmd:{ul:mat}rix(}{it:名字列表}|{cmd:_all)}}仅发布在 {it:名字列表} 中指定的矩阵或所有矩阵{p_end}
{p2coldent :{cmd:{ul:sca}lar(}{it:名字列表}|{cmd:_all)}}仅发布在 {it:名字列表} 中指定的标量或所有标量{p_end}
{p2coldent :{opt nocle:ar}}不清除当前 {cmd:e()} 存储的结果{p_end}
{p2coldent :{opt ren:ame}}使用指定 {it:b} 矩阵中的名称作为 {cmd:b} 和 {cmd:V} 估计矩阵的标签{p_end}
{p2coldent :{opt res:ize}}用它们的 {cmd:r()} 等效项替换 {cmd:e(b)}, {cmd:e(V)} 和 {cmd:e(Cns)}，即使 {cmd:e()} 和 {cmd:r()} 结果不兼容{p_end}
{synoptline}


{marker description}{...}
{title:描述}

{pstd}
{cmd:postrtoe} 清空 {cmd:e()} 的内容并将结果从 {cmd:r()} 复制到 {cmd:e()}。

{pstd}
您可以用 {it:前缀} 前缀存储的结果；{it:前缀} 的最大长度为 10 个字符。


{marker options}{...}
{title:选项}

{phang}
{cmd:macro(}{it:名字列表}|{cmd:_all)} 指定要发布到 {cmd:e()} 中的宏；例如，{cmd: macro(cmdline)} 将 {cmd:r(cmdline)} 移到 {cmd:e(cmdline)} 中。默认情况下，所有可用的宏均被移动。

{phang}
{cmd:matrix(}{it:名字列表}|{cmd:_all)} 指定要发布到 {cmd:e()} 中的矩阵；例如，{cmd: matrix(C)} 将 {cmd:r(C)} 移到 {cmd:e(C)} 中。默认情况下，所有可用的矩阵均被移动。

{phang}
{cmd:scalar(}{it:名字列表}|{cmd:_all)} 指定要发布到 {cmd:e()} 中的标量；例如，{cmd: scalar(width)} 将 {cmd:r(width)} 移到 {cmd:e(width)} 中。默认情况下，所有可用的标量均被移动。

{phang}
注意：{cmd:macro()}、{cmd:matrix()} 和 {cmd:scalar()} 是互斥的；如果您指定了 {cmd:scalar(N)}，则仅 {cmd:r(N)} 将被移动到 {cmd:e(N)} 中。 如果您想同时移动所有宏和矩阵以及 {cmd:r(N)}，您必须键入 {cmd:scalar(N)} {cmd:matrix(_all)} {cmd: macro(_all)}。

{phang}
{opt noclear} 告诉 Stata 不要清除 {cmd:e()}。 {cmd:r()} 中的条目将替换 {cmd:e()} 中同名的条目；否则，{cmd:r()} 中的条目将附加到 {cmd:e()} 列表中。

{phang}
{opt rename} 仅在指定了 {cmd:noclear} 并且未指定 {it:前缀} 的情况下有效。如果这是情况，{cmd:rename} 告诉 Stata 使用从指定的 {it:b} 矩阵中获得的名称作为 {cmd:b} 和 {cmd:V} 估计矩阵的标签。这些标签随后将在 {helpb ereturn display} 生成的输出中使用。

{phang}
{opt resize} 用当前存在的 {cmd:r()} 等效项替换当前的 {cmd:e(b)}、{cmd:e(V)} 和 {cmd:e(Cns)} 结果，即使 {cmd:e()} 和 {cmd:r()} 的结果不兼容。然而，新结果集必须彼此兼容。例如，如果 {cmd:e(b)} 和 {cmd:e(V)} 同时存在，您不能指定 {cmd:postrtoe, noclear mat(b) resize}；您必须键入 {cmd:mat(b V)}。 {cmd:resize} 不允许与 {help regress_zh} 或 {help anova_zh} 返回的 {cmd:e()} 列表一起使用。


{marker remarks}{...}
{title:备注}

{pstd}
由于 {cmd:postrtoe} 将 {cmd:r()} 结果转换为 {cmd:e()}，因此该命令将在适当时向宏列表中添加 {cmd:e(properties)}。


{marker examples}{...}
{title:示例}

{pstd}清除由 {cmd:regress} 返回的 {cmd:e()} 并将由 {cmd:count} 返回的 {cmd:r(N)} 移入 {cmd:e(N)}{p_end}

{phang2}{cmd:. regress price mpg}{p_end}
{phang2}{cmd:. count if foreign==1}{p_end}
{phang2}{cmd:. postrtoe}{p_end}

{pstd}清除由 {cmd:regress} 返回的 {cmd:e()} 并将由 {cmd:count} 返回的 {cmd:r(N)} 移入 {cmd:e(cnt_N)}{p_end}

{phang2}{cmd:. regress price mpg}{p_end}
{phang2}{cmd:. count if foreign==1}{p_end}
{phang2}{cmd:. postrtoe cnt_}{p_end}

{pstd}用由 {cmd:count} 返回的 {cmd:r(N)} 的内容替换由 {cmd:regress} 返回的 {cmd:e(N)}{p_end}

{phang2}{cmd:. regress price mpg}{p_end}
{phang2}{cmd:. count if foreign==1}{p_end}
{phang2}{cmd:. postrtoe, noclear} {space 2}{p_end}

{pstd}将由 {cmd:count} 返回的 {cmd:r(N)} 转换为 {cmd:e(rep3_N)} 并将 {cmd:e(rep3_N)} 添加到由 {cmd:regress} 返回的 {cmd:e()} 列表中{p_end}

{phang2}{cmd:. regress price mpg}{p_end}
{phang2}{cmd:. count if rep78==3}{p_end}
{phang2}{cmd:. postrtoe rep3_, noclear}{p_end}

{pstd}用由 {cmd:margins} 返回的 {cmd:b} 和 {cmd:V} 矩阵替换由 {cmd:poisson} 返回的 {cmd:b} 和 {cmd:V} 矩阵{p_end}

{phang2}{cmd:. poisson mpg i.rep78 weight price}{p_end}
{phang2}{cmd:. margins rep78}{p_end}
{phang2}{cmd:. postrtoe, mat(b V) noclear resize}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <postrtoe.sthlp>}