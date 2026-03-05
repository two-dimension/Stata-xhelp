
{help mds_tables:English Version}
{hline}
{* *! version 1.0.9  09dec2014}{...}
{marker method}{...}
{synoptset 15}{...}
{synopthdr:方法}
{synoptline}
{synopt:{opt c:lassical}}经典MDS；如果未指定{cmd:loss()}或{cmd:transform()}，则为默认值{p_end}
{synopt:{opt m:odern}}现代MDS；如果指定了{cmd:loss()}或{cmd:transform()}，则为默认值；但当指定了{cmd:loss(stress)}和{cmd:transform(monotonic)}时除外{p_end}
{synopt:{opt n:onmetric}}非度量（现代）MDS；当指定了{cmd:loss(stress)}和{cmd:transform(monotonic)}时为默认值{p_end}
{synoptline}

{marker loss}{...}
{synoptset 15}{...}
{p2coldent:{it:loss}}描述{p_end}
{synoptline}
{synopt:{opt stre:ss}}应力准则，按距离标准化；默认值{p_end}
{synopt:{opt nstr:ess}}应力准则，按差异标准化{p_end}
{synopt:{opt sstr:ess}}平方应力准则，按距离标准化{p_end}
{synopt:{opt nsst:ress}}平方应力准则，按差异标准化{p_end}
{synopt:{opt stra:in}}应变准则（与{cmd:transform(identity)}等效于经典MDS）{p_end}
{synopt:{opt sam:mon }}萨蒙映射{p_end}
{synoptline}

{marker tfunction}{...}
{synoptset 15}{...}
{p2coldent:{it:tfunction}}描述{p_end}
{synoptline}
{synopt:{opt i:dentity}}无变换；差异 = 不相似度；默认值{p_end}
{synopt:{opt p:ower}}幂α：差异 = 不相似度^α{p_end}
{synopt:{opt m:onotonic}}弱单调递增函数（非度量缩放）；仅与{cmd:loss(stress)}一起使用{p_end}
{synoptline}

{marker norm}{...}
{synoptset 26}{...}
{p2coldent:{it:norm}}描述{p_end}
{synoptline}
{synopt:{opt p:rincipal}}主导方向；位置=0；默认值{p_end}
{synopt:{opt c:lassical}}朝向经典解的普克鲁斯旋转{p_end}
{synopt:{opt t:arget(matname)}[{cmd:, }{opt copy}]}朝向{it:matname}的普克鲁斯旋转；如果指定了{cmd:copy}则忽略命名冲突{p_end}
{synoptline}

{marker initopt}{...}
{synoptset 26}{...}
{p2coldent:{it:initopt}}描述{p_end}
{synoptline}
{synopt:{opt c:lassical}}从经典解开始；默认值{p_end}
{synopt:{opt r:andom}[{cmd:(}{it:#}{cmd:)}]}从随机配置开始，设置种子为{it:#}{p_end}
{synopt:{opt f:rom(matname)}[{cmd:, }{opt copy}]}从{it:matname}开始；如果指定了{cmd:copy}则忽略命名冲突{p_end}
{synoptline}