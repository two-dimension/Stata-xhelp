
{help irt_model_opts:English Version}
{hline}
{* *! version 1.0.1  07jan2019}{...}
{marker group_option}{...}
{phang}
{opth group(varname)} 指定模型对 {it:varname} 的不同值分别进行拟合；详见 {manhelp irt_group IRT:irt, group()}。

{dlgtab:模型}

{marker cns_option}{...}
{phang}
{opt cns(spec)} 将项目参数限制为固定值或将两个或多个参数约束为相等；详见 {manhelp irt_constraints IRT:irt constraints}。

{phang}
{opt listwise} 通过逐位删除处理缺失值，这意味着如果该观察的任何项目缺失，则整个观察将被排除在估计样本之外。
默认情况下，所有非缺失的项目都包含在似然计算中；仅缺失的项目被排除。
{p_end}