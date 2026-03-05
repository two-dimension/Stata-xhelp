
{help rotate_criteria_table:English Version}
{hline}
{* *! version 1.0.5  07apr2011}{...}
{marker rotation_methods}{...}
{p2coldent:{it:rotation_methods}}描述{p_end}
{synoptline}
{p2coldent:* {opt v:arimax}}varimax（仅限{cmd:orthogonal}）；默认值{p_end}
{synopt:{opt vgpf}}通过 GPF 算法的 varimax（仅限{cmd:orthogonal}）{p_end}
{synopt:{opt quartima:x}}quartimax（仅限{cmd:orthogonal}）{p_end}
{synopt:{opt equa:max}}equamax（仅限{cmd:orthogonal}）{p_end}
{synopt:{opt parsi:max}}parsimax（仅限{cmd:orthogonal}）{p_end}
{synopt:{opt entr:opy}}最小熵（仅限{cmd:orthogonal}）{p_end}
{synopt:{opt tandem1}}Comrey's tandem 1 原则（仅限{cmd:orthogonal}）{p_end}
{synopt:{opt tandem2}}Comrey's tandem 2 原则（仅限{cmd:orthogonal}）{p_end}

{p2coldent:* {cmdab:p:romax}[{cmd:(}{it:#}{cmd:)}]}promax 阶数 {it:#}（意味着
	{cmd:oblique}）；默认值为 {cmd:promax(3)}{p_end}

{synopt:{cmdab:oblimi:n}[{cmd:(}{it:#}{cmd:)}]}oblimin，gamma={it:#}；
	默认值为 {cmd:oblimin(0)}{p_end}
{synopt:{opt cf(#)}}Crawford-Ferguson 家族，kappa={it:#},
	0<={it:#}<=1{p_end}
{synopt:{opt ben:tler}}Bentler 的不变模式简化{p_end}
{synopt:{opt oblima:x}}oblimax{p_end}
{synopt:{opt quartimi:n}}quartimin{p_end}
{synopt:{opt tar:get(Tg)}}朝向矩阵 {it:Tg} 旋转{p_end}
{synopt:{opt partial(Tg W)}}朝向矩阵 {it:Tg} 旋转，权重由矩阵 {it:W} 决定{p_end}
{synoptline}
{p 4 6 2}
* {opt varimax} 和 {opt promax} 忽略所有 {it:optimize_options}。
{p_end}