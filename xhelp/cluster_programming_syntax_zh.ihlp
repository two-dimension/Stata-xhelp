
{help cluster_programming_syntax:English Version}
{hline}
{* *! version 1.0.7  09dec2014}{...}
{pstd}
获取聚类分析的各种属性

{p 8 23 2}{cmd:cluster} {cmd:query} [{it:clname}]


{pstd}
设置聚类分析的各种属性

{p 8 23 2}{cmd:cluster} {cmd:set} [{it:clname}] [{cmd:,} 
{help cluster programming##set_options:{it:set_options}}]


{pstd}
从聚类分析中删除属性

{p 8 23 2}{cmd:cluster} {cmdab:del:ete} {it:clname} [{cmd:,} 
{help cluster programming##delete_options:{it:delete_options}}]


{pstd}
检查相似性和不相似性度量名称

{p 8 23 2}{cmd:cluster} {cmdab:parsedist:ance} {help measure_option_zh:{it:measure}}


{pstd}
计算相似性和不相似性度量

{p 8 23 2}{cmd:cluster} {cmd:measures} {varlist}
	{ifin} {cmd:,}
	{cmdab:comp:are:(}{it:{help numlist_zh}}{cmd:)}
	{cmdab:gen:erate:(}{it:{help newvarlist_zh:newvarlist}}{cmd:)}
	[{help cluster programming##measures_options:{it:measures_options}}]


{marker set_options}{...}
{synoptset 24}{...}
{synopthdr:set_options}
{synoptline}
{synopt:{opt add:name}}将 {it:clname} 添加到聚类分析主列表中{p_end}
{synopt:{opt t:ype(type)}}为 {it:clname} 设置聚类类型{p_end}
{synopt:{opt m:ethod(method)}}为聚类分析设置聚类方法的名称{p_end}
{synopt:{opth s:imilarity(measure_option:measure)}}为聚类分析设置使用的相似性度量的名称{p_end}
{synopt:{opth d:issimilarity(measure_option:measure)}}为聚类分析设置使用的不相似性度量的名称{p_end}
{synopt:{cmdab:v:ar(}{it:tag {help varname_zh}}{cmd:)}}设置指向 {it:varname} 的 {it:tag}{p_end}
{synopt:{opt c:har(tag charname)}}设置指向 {it:charname} 的 {it:tag}{p_end}
{synopt:{opt o:ther(tag text)}}设置附加内容 {it:text} 的 {it:tag}{p_end}
{synopt:{opt n:ote(text)}}为 {it:clname} 添加备注{p_end}
{synoptline}
{p2colreset}{...}

{marker delete_options}{...}
{synoptset 24}{...}
{synopthdr:delete_options}
{synoptline}
{synopt:{opt zap}}删除 {it:clname} 的所有可能设置{p_end}
{synopt:{opt del:name}}将 {it:clname} 从当前聚类分析的主列表中移除{p_end}
{synopt:{opt t:ype}}删除 {it:clname} 的聚类类型条目{p_end}
{synopt:{opt m:ethod}}删除 {it:clname} 的聚类方法条目{p_end}
{synopt:{opt s:imilarity}}删除 {it:clname} 的相似性条目{p_end}
{synopt:{opt d:issimilarity}}删除 {it:clname} 的不相似性条目{p_end}
{synopt:{opth n:otes(numlist)}}删除 {it:clname} 指定编号的备注{p_end}
{synopt:{opt alln:otes}}将 {it:clname} 的所有备注移除{p_end}
{synopt:{opt v:ar(tag)}}将 {it:tag} 从 {it:clname} 移除{p_end}
{synopt:{opt allv:ars}}将指向 {it:clname} 的所有变量条目移除{p_end}
{synopt:{opt varz:ap(tag)}}与 {cmd:var()} 相同，但还会删除引用的变量{p_end}
{synopt:{opt allvarz:ap}}与 {cmd:allvars} 相同，但还会删除这些变量{p_end}
{synopt:{opt c:har(tag)}}将指向 Stata 特征的 {it:tag} 从 {it:clname} 移除{p_end}
{synopt:{opt allc:hars}}将指向 {it:clname} 的所有 Stata 特征条目移除{p_end}
{synopt:{opt charz:ap(tag)}}与 {cmd:char()} 相同，但还会删除特征{p_end}
{synopt:{opt allcharz:ap}}与 {cmd:allchars} 相同，但还会删除特征{p_end}
{synopt:{opt o:ther(tag)}}将 {it:tag} 及其相关文本从 {it:clname} 删除{p_end}
{synopt:{opt allo:thers}}从 {it:clname} 删除所有通过 {cmd:other()} 设置的条目{p_end}
{synoptline}
{p2colreset}{...}

{marker measures_options}{...}
{synoptset 24 tabbed}{...}
{synopthdr:measures_options}
{synoptline}
{p2coldent :* {opth comp:are(numlist)}}使用 {it:numlist} 作为比较观察值{p_end}
{p2coldent :* {opth gen:erate(newvarlist)}}创建 {it:newvarlist} 变量{p_end}
{synopt: {it:{help measure_option_zh:measure}}}(不)相似性度量；默认是 {cmd:L2}{p_end}
{synopt: {opt propv:ars}}将 {cmd:if} 和 {cmd:in} 隐含的观察值解释为二元观察值的比例{p_end}
{synopt: {opt propc:ompares}}将比较观察值解释为二元观察值的比例{p_end}
{synoptline}
{p 4 6 2}* {opt compare(numlist)} 和 {opt generate(newvarlist)} 是必需的。{p_end}
{p2colreset}{...}