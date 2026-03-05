
{help irt_max_opts:English Version}
{hline}
{* *! version 1.0.2  12dec2018}{...}
{marker maximize_options}{...}
{phang}
{it:maximize_options}：
{opt dif:ficult}，
{opth tech:nique(maximize##algorithm_spec:algorithm_spec)}，
{opt iter:ate(#)}，
[{cmd:no}]{opt log}，
{opt tr:ace}，
{opt grad:ient}，
{opt showstep}，
{opt hess:ian}，
{opt showtol:erance}，
{opt tol:erance(#)}，
{opt ltol:erance(#)}，
{opt nrtol:erance(#)}，
{opt nonrtol:erance}，以及
{opt from(init_specs)}；
详见 {help maximize_zh:[R] Maximize}。
需要特别提及的 {cmd:irt} 参数如下所列。

{pmore}
{opt from()} 接受一个正确标记的初始值向量或带有值的系数名称列表。不允许使用值列表。
{p_end}