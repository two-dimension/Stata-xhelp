{smcl}
{* *! version 1.0.4  11feb2011}{...}
{vieweralsosee undocumented "help undocumented"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] anova" "help anova_zh"}{...}
{vieweralsosee "[P] anovadef" "help anovadef_zh"}{...}
{vieweralsosee "[MV] manova" "help manova_zh"}{...}
{viewerjumpto "Syntax" "anova_terms_zh##syntax"}{...}
{viewerjumpto "Description" "anova_terms_zh##description"}{...}
{viewerjumpto "Examples" "anova_terms_zh##examples"}
{help anova_terms:English Version}
{hline}{...}
{title:标题}

{p 4 25 2}
{hi:[P] anova_terms} {hline 2} anova 和 manova 项
编程命令


{marker syntax}{...}
{title:语法}

	{cmd:anova_terms}


{marker description}{...}
{title:描述}

{pstd}
警告：此命令仅在处理使用 {help version_zh} 设置为小于 11 的 {help anova_zh} 或 {help manova_zh} 结果时对您有用。


{pstd}
{cmd:anova_terms} 返回 {hi:r(rhs)} 中右侧 (rhs) 变量和项的列表，返回 {hi:r(continuous)} 中的 rhs 变量是连续型的列表，以及在 {hi:r(opts)} 中包含 {cmd:noconstant} 和 {cmd:cont()} 选项（如果适用于当前 {cmd:anova} 或 {cmd:manova} 估计）。 ({cmd:cont()} 仅在 {hi:r(opts)} 中返回，如果 {cmd:anova} 或 {cmd:manova} 结果是使用 {cmd:version} 设置为小于 11 生成的。)

{pstd}
请参阅 {help anovadef_zh} 获取返回每个模型项更多详细信息的命令。


{marker examples}{...}
{title:示例}

{phang}
{cmd:. version 10: anova y a b a*b c d a*c b*c a*d b*d, cont(c d) noconstant}
{p_end}
    {cmd:. anova_terms}
    {cmd:. return list}

    {txt}宏:
		   r(rhs) : "{res}a b c d a*b a*c b*c a*d b*d{txt}"
		  r(opts) : "{res}noconstant cont(c d){txt}"
	    r(continuous) : "{res}c d{txt}"


    {cmd:. version 10: manova y1 y2 = a b c a*c b*c, cont(c)}
    {cmd:. anova_terms}
    {cmd:. return list}

    {txt}宏:
		   r(rhs) : "{res}a b c a*c b*c{txt}"
		  r(opts) : "{res}cont(c){txt}"
	    r(continuous) : "{res}c{txt}"

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <anova_terms.sthlp>}