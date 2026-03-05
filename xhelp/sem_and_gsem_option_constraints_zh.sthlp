{smcl}
{* *! version 2.0.4  19oct2017}{...}
{viewerdialog "SEM Builder" "stata sembuilder"}{...}
{vieweralsosee "[SEM] sem 和 gsem 选项 constraints()" "mansection SEM semandgsemoptionconstraints()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[SEM] sem" "help sem_command_zh"}{...}
{vieweralsosee "[SEM] gsem" "help gsem_command_zh"}{...}
{vieweralsosee "[SEM] sem 和 gsem 路径符号" "help sem and gsem path notation"}{...}
{vieweralsosee "[SEM] sem 模型描述选项" "help sem_model_options_zh"}{...}
{vieweralsosee "[SEM] gsem 模型描述选项" "help gsem_model_options_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] constraint" "help constraint_zh"}{...}
{viewerjumpto "语法" "sem_and_gsem_option_constraints_zh##syntax"}{...}
{viewerjumpto "描述" "sem_and_gsem_option_constraints_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "sem_and_gsem_option_constraints_zh##linkspdf"}{...}
{viewerjumpto "备注" "sem_and_gsem_option_constraints_zh##remarks"}{...}
{viewerjumpto "示例" "sem_and_gsem_option_constraints_zh##examples"}
{help sem_and_gsem_option_constraints:English Version}
{hline}{...}
{p2colset 1 44 46 2}{...}
{p2col:{bf:[SEM] sem 和 gsem 选项 constraints()} {hline 2}}指定约束{p_end}
{p2col:}({mansection SEM semandgsemoptionconstraints():查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{cmd:sem} ... [{cmd:,} ... {cmd:constraints(}{it:#} [{it:#} ...]{cmd:)} ...] 

{p 8 12 2}
{cmd:gsem} ... [{cmd:,} ... {cmd:constraints(}{it:#} [{it:#} ...]{cmd:)} ...] 

{pstd}
其中 {it:#} 是约束编号。约束由 {cmd:constraint} 命令定义；参见 {help constraint_zh:[R] constraint}。

{marker description}{...}
{title:描述}

{pstd}
约束是指对模型的估计参数施加的约束。这些约束通常有三种形式：

{phang2}
1.  约束某个参数，例如路径系数或方差，等于一个固定值，例如 1。

{phang2}
2.  约束两个或多个参数相等。

{phang2}
3.  约束两个或多个参数由线性方程相关联。

{pstd}
通常使用 {cmd:sem} 和 {cmd:gsem} 的路径符号指定约束更为简便；
参见 {helpb sem_and_gsem_path_notation##item11:[SEM] sem 和 gsem 路径符号}。

{pstd}
{cmd:sem} 和 {cmd:gsem} 的 {cmd:constraints()} 选项提供了另一种指定约束的方法。

{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection SEM semandgsemoptionconstraints()Remarksandexamples:备注和示例}

{pstd}
上述章节未包含在此帮助文件中。

{marker remarks}{...}
{title:备注}

{pstd}
备注在以下标题下呈现：

        {help sem and gsem option constraints##sem_constraints:与 sem 一起使用}
        {help sem and gsem option constraints##gsem_constraints:与 gsem 一起使用}

{pstd}
另请参见 {help constraint_zh:[R] constraint}。

{marker sem_constraints}{...}
{title:与 sem 一起使用}

{pstd}
只有一种情况，{cmd:constraints()} 与 {cmd:sem} 一起使用可能更为简便，而不是在路径符号中指定约束。您希望指定两个或多个参数相关联，然后决定要固定它们相关联的值。

{pstd}
例如，如果您想要指定参数相等，您可以输入 

{phang2}{cmd:. sem ... (y1 <- x@}{it:c1}{cmd:) (y2 <- x@}{it:c1}{cmd:)     (y3 <- x@}{it:c1}{cmd:)      ...}{p_end}

{pstd}
使用路径符号，您也可以指定更一般的关系，例如 

{phang2}{cmd:. sem ... (y1 <- x@}{it:c1}{cmd:) (y2 <- x@(2*}{it:c1}{cmd:)) (y3 <- x@(3*}{it:c1}{cmd:+1)) ...}{p_end}

{pstd}
假设您现在决定要把 {it:c1} 固定为 1。使用路径符号，您可以修改之前输入的内容： 

{phang2}{cmd:. sem ... (y1 <- x@1) (y2 <- x@2)     (y3 <- x@4)      ...}{p_end}

{pstd}
或者，您可以这样做：

{phang2}{cmd:. constraint 1 _b[y2:x] = 2*_b[y1:x]}{p_end}

{phang2}{cmd:. constraint 2 _b[y3:x] = 3*_b[y1:x] + 1}{p_end}

{phang2}{cmd:. sem ..., ... constraints(1 2)}{p_end}

{phang2}{cmd:. constraint 3 _b[y1:x] = 1}{p_end}

{phang2}{cmd:. sem .., ... constraints(1 2 3)}{p_end}


{marker gsem_constraints}{...}
{title:与 gsem 一起使用}

{pstd}
伽马回归如果您将尺度参数的对数约束为 0，可以产生指数回归估计。与特定广义线性家族相关的参数，例如标量参数、切点等，不能使用路径中的 {cmd:@} 符号约束。您必须使用 Stata 的约束。

{pstd}
假设我们希望拟合模型 {cmd:y <- x1} 并进行指数回归。我们承认我们不记得 {cmd:gsem} 存储标量参数的名称，因此首先我们输入

{phang2}{cmd:. gsem (y <- x1, gamma), noestimate}

{pstd}
从输出中，我们迅速发现尺度参数的对数存储为 {cmd:_b[y_logs:_cons]}。有了这个信息，要获得受约束的结果，我们输入

{phang2}{cmd:. constraint 1 _b[/y:logs] = 0}{p_end}
{phang2}{cmd:. gsem (y <- x1, gamma), constraints(1)}


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse sem_2fmm}{p_end}

{pstd}二因子测量模型{p_end}
{phang2}{cmd:. sem (Affective -> a1 a2 a3 a4 a5) (Cognitive -> c1 c2 c3 c4 c5)}{p_end}

{pstd}使用 {cmd:@} 符号约束参数{p_end}
{phang2}{cmd:. sem (Affective -> a1 a2@c1 a3@c1 a4 a5)}{break}
	{cmd: (Cognitive -> c1 c2@c2 c3@c2 c4 c5)}{p_end}

{pstd}使用 {cmd:constraints()} 选项指定相同模型{p_end}
{phang2}{cmd:. constraint 1 _b[a2:Affective] = _b[a3:Affective]}{p_end}

{phang2}{cmd:. constraint 2 _b[c2:Cognitive] = _b[c3:Cognitive]}{p_end}

{phang2}{cmd:. sem (Affective -> a1 a2 a3 a4 a5)}{break}
	{cmd: (Cognitive -> c1 c2 c3 c4 c5), constraints(1 2)}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <sem_and_gsem_option_constraints.sthlp>}