
{help syntax_me_margins_stats:English Version}
{hline}
{* *! version 1.0.0  06jan2015}{...}
{synoptset 17}{...}
{synopthdr :统计量}
{synoptline}
{synopt :{opt mu}}均值响应；默认值{p_end}
{synopt :{opt eta}}拟合线性预测值{p_end}
{synopt :{opt xb}}仅限于模型固定部分的线性预测{p_end}
{synopt :{opt stdp}}与 {cmd:margins} 不允许一起使用{p_end}
{synopt :{opt den:sity}}与 {cmd:margins} 不允许一起使用{p_end}
{synopt :{opt dist:ribution}}与 {cmd:margins} 不允许一起使用{p_end}
{synopt :{opt pea:rson}}与 {cmd:margins} 不允许一起使用{p_end}
{synopt :{opt dev:iance}}与 {cmd:margins} 不允许一起使用{p_end}
{synopt :{opt ans:combe}}与 {cmd:margins} 不允许一起使用{p_end}
{synopt :{opt reffects}}与 {cmd:margins} 不允许一起使用{p_end}
{synopt :{opt scores}}与 {cmd:margins} 不允许一起使用{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
选项 {cmd:conditional(ebmeans)} 和 {cmd:conditional(ebmodes)} 不允许与 {cmd:margins} 一起使用。
{p_end}
{p 4 6 2}
如果未指定 {cmd:conditional(fixedonly)}，则假定适用的选项为 {opt marginal}。
{p_end}