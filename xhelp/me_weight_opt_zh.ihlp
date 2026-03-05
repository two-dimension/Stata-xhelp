
{help me_weight_opt:English Version}
{hline}
{* *! version 1.1.3  18feb2015}{...}
{phang}
{opth fweight(varname)} 在多级模型的更高层次中指定频率权重，而在第一层级（观测层级）中指定频率权重的方法与常规相同，例如，{cmd:[fw=}{it:fwtvar1}{cmd:]}.  {it:varname} 可以是任何有效的 Stata 变量名，并且您可以在多级模型的第二级及更高层级指定 {cmd:fweight()}。例如，在双层模型中

{p 12 16 4}{cmd:. me}... {it:fixed_portion} {cmd:[fw = wt1]}
{cmd:|| school:} ... {cmd:, fweight(wt2)} ...{p_end}

{pmore}
变量 {cmd:wt1} 将包含第一层级（观测层级）的频率权重，而 {cmd:wt2} 将包含第二层级（学校层级）的频率权重。

{phang}
{opth iweight(varname)} 在多级模型的更高层次中指定重要性权重，而在第一层级（观测层级）中指定重要性权重的方法与常规相同，例如，{cmd:[iw=}{it:iwtvar1}{cmd:]}.  {it:varname} 可以是任何有效的 Stata 变量名，并且您可以在多级模型的第二级及更高层级指定 {cmd:iweight()}。例如，在双层模型中

{p 12 16 4}{cmd:. me}... {it:fixed_portion} {cmd:[iw = wt1]}
{cmd:|| school:} ... {cmd:, iweight(wt2)} ...{p_end}

{pmore}
变量 {cmd:wt1} 将包含第一层级（观测层级）的重要性权重，而 {cmd:wt2} 将包含第二层级（学校层级）的重要性权重。

{phang}
{opth pweight(varname)} 在多级模型的更高层次中指定抽样权重，而在第一层级（观测层级）中指定抽样权重的方法与常规相同，例如，{cmd:[pw=}{it:pwtvar1}{cmd:]}.  {it:varname} 可以是任何有效的 Stata 变量名，并且您可以在多级模型的第二级及更高层级指定 {cmd:pweight()}。例如，在双层模型中

{p 12 16 4}{cmd:. me}... {it:fixed_portion} {cmd:[pw = wt1]}
{cmd:|| school:} ... {cmd:, pweight(wt2)} ...{p_end}

{pmore}
变量 {cmd:wt1} 将包含第一层级（观测层级）的抽样权重，而 {cmd:wt2} 将包含第二层级（学校层级）的抽样权重。 
{p_end}