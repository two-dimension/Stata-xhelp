{smcl}
{* *! version 1.0.0  21march019}{...}
{vieweralsosee "[M-5] Quadrature()" "mansection M-5 Quadrature()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-2] class" "help m2_class_zh"}{...}
{vieweralsosee "[M-5] deriv()" "help mf_deriv_zh"}{...}
{vieweralsosee "[M-5] moptimize()" "help mf_moptimize_zh"}{...}
{vieweralsosee "[M-5] optimize()" "help mf_optimize_zh"}{...}
{viewerjumpto "Syntax" "mf_quadrature_zh##syntax"}{...}
{viewerjumpto "Description" "mf_quadrature_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mf_quadrature_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "mf_quadrature_zh##remarks"}{...}
{viewerjumpto "Conformability" "mf_quadrature_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf_quadrature_zh##diagnostics"}
{help mf_quadrature:English Version}
{hline}{...}
{p2colset 1 23 25 2}{...}
{p2col:{bf:[M-5] Quadrature()} {hline 2}}数值积分
{p_end}
{p2col:}({mansection M-5 Quadrature():查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{pstd}
使用 {cmd:Quadrature()} 类，您可以在四个步骤内近似计算一个积分——使用 {cmd:Quadrature()} 创建类的实例，使用 {cmd:setEvaluator()} 指定评估函数，使用 {cmd:setLimits()} 设置积分的上下限，并使用 {cmd:integrate()} 执行计算。{help mf_quadrature##ex1:示例 1} 演示了此基本过程。

{pstd}
完整的语法允许您进一步定义积分问题，并获取额外的结果。语法根据以下标题呈现：

	{help mf_quadrature##syn_step1:步骤 1：初始化}
        {help mf_quadrature##syn_step2:步骤 2：定义积分问题}
        {help mf_quadrature##syn_step3:步骤 3：执行积分}
        {help mf_quadrature##syn_step4:步骤 4：显示或获取结果}
        {help mf_quadrature##syn_utilfunction_steps:在所有步骤中使用的实用函数}
        {help mf_quadrature##syn_defq:q 的定义}
        {help mf_quadrature##syn_functions_integration:定义积分问题的函数}
                {help mf_quadrature##setEval:q.setEvaluator() 和 q.getEvaluator()}
                {help mf_quadrature##setLimits:q.setLimits() 和 q.getLimits()}
                {help mf_quadrature##setTech:q.setTechnique() 和 q.getTechnique()}
                {help mf_quadrature##setMaxiter:q.setMaxiter() 和 q.getMaxiter()}
                {help mf_quadrature##setAbstol:q.setAbstol(), q.getAbstol(), q.setReltol(), 和 q.getReltol()}
                {help mf_quadrature##setArgument:q.setArgument(), q.getArgument(), 和 q.getNarguments()}
                {help mf_quadrature##setTrace:q.setTrace() 和 q.getTrace()}
        {help mf_quadrature##syn_integration:执行积分}
        {help mf_quadrature##syn_functions_results:获取结果的函数}
                {help mf_quadrature##value:q.value()}
                {help mf_quadrature##iterations:q.iterations()}
                {help mf_quadrature##converged:q.converged()}
                {help mf_quadrature##errorcode:q.errorcode(), q.errortext(), 和 q.returncode()}
        {help mf_quadrature##syn_utilfunction:实用函数}
                {help mf_quadrature##query:q.query()}


{marker syn_step1}{...}
    {title:步骤 1：初始化}

{p 8 25 1}
{it:{help mf_quadrature##syn_defq:q}} {cmd:= Quadrature()}


{marker syn_step2}{...}
    {title:步骤 2：定义积分问题}

      {it:void}{bind:                           }{...}
{it:{help mf_quadrature##syn_defq:q}}{help mf_quadrature##setEval:{bf:.setEvaluator(}{it:pointer(real function)}}
{col 55}{help mf_quadrature##setEval:{it:scalar fcn}{bf:)}}

      {it:void}{bind:                           }{...}
{it:{help mf_quadrature##syn_defq:q}}{help mf_quadrature##setLimits:{bf:.setLimits(}{it:real rowvector limits}{bf:)}}

      {it:void}{bind:                           }{...}
{it:{help mf_quadrature##syn_defq:q}}{help mf_quadrature##setTech:{bf:.setTechnique(}{it:string scalar technique}{bf:)}}

      {it:void}{bind:                           }{...}
{it:{help mf_quadrature##syn_defq:q}}{help mf_quadrature##setMaxiter:{bf:.setMaxiter(}{it:real scalar maxiter}{bf:)}}

      {it:void}{bind:                           }{...}
{it:{help mf_quadrature##syn_defq:q}}{help mf_quadrature##setAbstol:{bf:.setAbstol(}{it:real scalar abstol}{bf:)}}

      {it:void}{bind:                           }{...}
{it:{help mf_quadrature##syn_defq:q}}{helpb mf_quadrature##setAbstol:{bf:.setReltol(}{it:real scalar reltol}{bf:)}}

      {it:void}{bind:                           }{...}
{it:{help mf_quadrature##syn_defq:q}}{help mf_quadrature##setArgument:{bf:.setArgument(}{it:real scalar i}{bf:,} {it:arg}{bf:)}}

      {it:void}{bind:                           }{...}
{it:{help mf_quadrature##syn_defq:q}}{help mf_quadrature##setTrace:{bf:.setTrace(}{it:string scalar trace}{bf:)}}

      {it:pointer(real function) scalar}{bind:  }{...}
{it:{help mf_quadrature##syn_defq:q}}{help mf_quadrature##setEval:{bf:.getEvaluator()}}

      {it:real rowvector}{bind:                 }{...}
{it:{help mf_quadrature##syn_defq:q}}{help mf_quadrature##setLimits:{bf:.getLimits()}}

      {it:string scalar}{bind:                  }{...}
{it:{help mf_quadrature##syn_defq:q}}{help mf_quadrature##setTech:{bf:.getTechnique()}}

      {it:real scalar}{bind:                    }{...}
{it:{help mf_quadrature##syn_defq:q}}{help mf_quadrature##setMaxiter:{bf:.getMaxiter()}}

      {it:real scalar}{bind:                    }{...}
{it:{help mf_quadrature##syn_defq:q}}{help mf_quadrature##setAbstol:{bf:.getAbstol()}}

      {it:real scalar}{bind:                    }{...}
{it:{help mf_quadrature##syn_defq:q}}{help mf_quadrature##setAbstol:{bf:.getReltol()}}

      {it:pointer scalar}{bind:                 }{...}
{it:{help mf_quadrature##syn_defq:q}}{help mf_quadrature##setArgument:{bf:.getArgument(}{it:real scalar i}{bf:)}}

      {it:real scalar}{bind:                    }{...}
{it:{help mf_quadrature##syn_defq:q}}{help mf_quadrature##setArgument:{bf:.getNarguments()}}

      {it:string scalar}{bind:                  }{...}
{it:{help mf_quadrature##syn_defq:q}}{help mf_quadrature##setTrace:{bf:.getTrace()}}


{marker syn_step3}{...}
    {title:步骤 3：执行积分}

      {it:real scalar}{bind:                    }{...}
{it:{help mf_quadrature##syn_defq:q}}{help mf_quadrature##integrate:{bf:.integrate()}}


{marker syn_step4}{...}
    {title:步骤 4：显示或获取结果}

      {it:real scalar}{bind:                    }{...}
{it:{help mf_quadrature##syn_defq:q}}{help mf_quadrature##value:{bf:.value()}}

      {it:real scalar}{bind:                    }{...}
{it:{help mf_quadrature##syn_defq:q}}{help mf_quadrature##iterations:{bf:.iterations()}}

      {it:real scalar}{bind:                    }{...}
{it:{help mf_quadrature##syn_defq:q}}{help mf_quadrature##converged:{bf:.converged()}}

      {it:real scalar}{bind:                    }{...}
{it:{help mf_quadrature##syn_defq:q}}{help mf_quadrature##errorcode:{bf:.errorcode()}}

      {it:string scalar}{bind:                  }{...}
{it:{help mf_quadrature##syn_defq:q}}{help mf_quadrature##errorcode:{bf:.errortext()}}

      {it:real scalar}{bind:                    }{...}
{it:{help mf_quadrature##syn_defq:q}}{help mf_quadrature##errorcode:{bf:.returncode()}}


{marker syn_utilfunction_steps}{...}
    {title:在所有步骤中使用的实用函数}

      {it:void}{bind:                           }{...}
{it:{help mf_quadrature##syn_defq:q}}{help mf_quadrature##query:{bf:.query()}}


{marker syn_defq}
    {title:q 的定义}

{pstd}
类型为 {cmd:Quadrature} 的变量称为 {cmd:Quadrature()} 类的 {help m6_glossary##instance:实例}。 {it:q} 是 {cmd:Quadrature()} 的一个实例、实例的向量或实例的矩阵。 如果您在交互模式下工作，可以通过输入

            {cmd}q = Quadrature(){txt}

来创建一个 {cmd:Quadrature()} 的实例。

{pstd}
对于一个包含 {it:n} 个 {cmd:Quadrature()} 实例的行向量，输入

            {cmd:q = Quadrature(}{it:n}{cmd:)} 

{pstd}
对于一个 {it:m} x {it:n} 的 {cmd:Quadrature()} 实例矩阵，输入

            {cmd:q = Quadrature(}{it:m}{cmd:,} {it:n}{cmd:)} 

{pstd}
在一个函数中，您可以将 {cmd:Quadrature()} 类的一个实例 {it:q} 声明为一个 {cmd:scalar}。

            {cmd}void myfunc()
            {
                class Quadrature scalar   q
                q = Quadrature()    
                ...
            }{txt}

{pstd}
在函数内部，您可以通过输入

            {cmd}void myfunc()
            {
                class Quadrature rowvector   q
                q = Quadrature({txt}{it:n}{cmd:)}
                ...
            {cmd}}{txt}

来将 {it:q} 声明为 {it:n} 个实例的行向量。

{pstd}
对于一个 {it:m} x {it:n} 的实例矩阵，输入

            {cmd}void myfunc()
            {
                class Quadrature matrix   q
                q = Quadrature({txt}{it:m}{cmd:,} {it:n}{cmd:)}
                ...
            {cmd}}{txt}


{marker syn_functions_integration}{...}
    {title:定义积分问题的函数}

{pstd}
至少，您需要告诉 {cmd:Quadrature()} 类您希望积分的函数以及积分的上下限。您还可以指定用于计算积分的技术、允许的最大迭代次数、收敛标准、传递给评估器的参数，以及是否打印计算详细信息。

{pstd}
每对函数包括一个 {it:q}{cmd:.set} 函数，用于指定积分设置和一个 {it:q}{cmd:.get} 函数，用于返回当前设置。

{marker setEval}{...}
{pstd}
{bf:q.setEvaluator() 和 q.getEvaluator()}

{pmore}
{it:q}{cmd:.setEvaluator(}{it:fcn}{cmd:)} 设置指向评估函数的指针，该函数在任何计算之前必须被调用。此外，评估器具有特殊的格式。
即，它至少有一个 {it:real scalar} 参数（第一个参数对应于 x）并返回一个 {it:real scalar} 值，f(x)。

{pmore}
{it:q}{cmd:.getEvaluator(}{cmd:)} 返回指向评估器的指针（如果未指定则为 {it:NULL}）。

{marker setLimits}{...}
{pstd}
{bf:q.setLimits() 和 q.getLimits()}

{pmore}
{it:q}{cmd:.setLimits(}{it:limits}{cmd:)} 将积分上下限设置为一个二维行向量。上下限可以是有限的也可以是无限的。下限必须小于或等于上限。将缺失值用作下限表示 -∞，将缺失值用作上限表示 ∞。

{pmore}
{it:q}{cmd:.getLimits(}{cmd:)} 返回积分上下限（如果未指定则为空向量）。

{marker setTech}{...}
{pstd}
{bf:q.setTechnique() 和 q.getTechnique()}

{pmore}
{it:q}{cmd:.setTechnique(}{it:technique}{cmd:)} 指定用于计算积分的技术。

{pmore}
在 {cmd:setTechnique()} 中指定的 {it:technique} 可以是

              {it:technique}     描述
              {hline 60}
              {cmd:"gauss"}      自适应高斯-克龙罗德方法；默认值
              {cmd:"simpson"}    自适应辛普森方法
              {hline 60}

{pmore}
{it:q}{cmd:.getTechnique(}{cmd:)} 返回当前技术。

{marker setMaxiter}{...}
{pstd}
{bf:q.setMaxiter() 和 q.getMaxiter()}

{pmore}
{it:q}{cmd:.setMaxiter(}{it:maxiter}{cmd:)} 指定最大迭代次数，必须是大于 0 的整数。{it:maxiter} 的默认值为 {cmd:16000}。

{pmore}
{it:q}{cmd:.getMaxiter(}{cmd:)} 返回当前最大迭代次数。

{marker setAbstol}{...}
{pstd}
{bf:q.setAbstol(), q.getAbstol(), q.setReltol(), 和 q.getReltol()}

{pmore}
{it:q}{cmd:.setAbstol(}{it:abstol}{cmd:)} 和 {it:q}{cmd:.setReltol(}{it:reltol}{cmd:)} 指定具有绝对和相对容差的收敛标准，必须大于 0。
{it:abstol} 和 {it:reltol} 的默认值分别为 1e-10 和 1e-8。

{pmore}
绝对容差为计算解与精确解之间的绝对差值提供上限，而相对容差为计算解与精确解之间的相对差值提供上限。

{pmore}
{it:q}{cmd:.getAbstol(}{cmd:)} 和 {it:q}{cmd:.getReltol(}{cmd:)} 分别返回当前绝对和相对容差。

{marker setArgument}{...}
{pstd}
{bf:q.setArgument(), q.getArgument(), 和 q.getNarguments()}

{pmore}
{it:q}{cmd:.setArgument(}{it:i}{cmd:,} {it:arg}{cmd:)} 将 {it:arg} 指定为评估器的第 {it:i} 个额外参数，其中 {it:i} 是 1 到 9 之间的整数。此时 {it:arg} 可以是任何内容。如果 {it:i} 大于当前额外参数的数量，则额外参数的数量将增加到 {it:i}。

{pmore}
{it:q}{cmd:.getArgument(}{it:i}{cmd:)} 返回指向评估器的第 {it:i} 个额外参数的指针（如果未指定则为 {it:NULL}）。

{pmore}
{it:q}{cmd:.getNarguments(}{cmd:)} 返回当前的额外参数数量。

{marker setTrace}{...}
{pstd}
{bf:q.setTrace() 和 q.getTrace()}

{pmore}
{it:q}{cmd:.setTrace()} 设置是否打印计算详细信息。{it:trace} 在 {cmd:setTrace()} 中可以指定为 {cmd:"on"} 或 {cmd:"off"}。默认值为 {cmd:"off"}。

{pmore}
{it:q}{cmd:.getTrace(}{cmd:)} 返回当前的跟踪状态。


{marker syn_integration}{...}
    {title:执行积分}

{marker integrate}{...}
{pstd}
{bf:q.integrate()}

{pmore}
{it:q}{cmd:.integrate()} 计算数值积分，即从下限到上限对评估器积分的近似值。
{it:q}{cmd:.integrate()} 返回计算出的积分值。


{marker syn_functions_results}{...}
    {title:获取结果的函数}

{pstd}
在执行积分之后，以下函数提供结果，包括积分值、迭代次数、是否达到收敛、错误信息和返回代码。

{marker value}{...}
{pstd}
{bf:q.value()}

{pmore}
{it:q}{cmd:.value()} 返回计算出的积分值；如果尚未计算，则返回缺失值。

{marker iterations}{...}
{pstd}
{bf:q.iterations()}

{pmore}
{it:q}{cmd:.iterations()} 返回迭代次数；如果尚未计算，则返回 {cmd:0}。

{marker converged}{...}
{pstd}
{bf:q.converged()}

{pmore}
{it:q}{cmd:.converged()} 返回 {cmd:1} 如果已收敛，返回 {cmd:0} 如果未收敛。

{marker errorcode}{...}
{pstd}
{bf:q.errorcode(), q.errortext(), 和 q.returncode()}

{pmore}
{it:q}{cmd:.errorcode()} 返回计算过程中生成的错误代码；如果没有找到错误，则返回 {cmd:0}。

{pmore}
{it:q}{cmd:.errortext()} 返回与计算过程中生成的错误代码相对应的错误信息；如果没有找到错误，则返回空字符串。

{pmore}
{it:q}{cmd:.returncode()} 返回与计算过程中生成的错误代码相对应的 Stata 返回代码。

{marker errcodes}{...}
{pmore}
错误代码和对应的 Stata 返回代码如下：

{p2colset 9 25 27 2}{...}
{p2col:错误{space 2}返回}{p_end}
{p2col:代码{space 3}代码}错误文本{p_end}
{p2line}
{synopt:1{space 6}111}必须指定评估器函数以使用 {cmd:setEvaluator()} 计算数值积分{p_end}

{synopt:2{space 6}111}必须使用 {cmd:setLimits()} 指定上下积分限制为具有 2 列的行向量{p_end}

{synopt:3{space 6}111}您指定了额外参数 {it:n} 但没有指定额外参数 {it:i}。在您指定额外参数 {it:n} 时，您还必须指定所有小于 {it:n} 的额外参数。{p_end}

{synopt:4{space 6}111}随 Stata 分发的代码已更改，因此找不到所需的子例程{p_end}

{synopt:5{space 6}416}评估器函数在一个或多个积分点返回了缺失值{p_end}

{synopt:6{space 6}430}子区间无法进一步划分以实现所需的精度{p_end}

{synopt:7{space 6}430}已达到最大迭代次数{p_end}
{p2line}
{p2colreset}{...}

{pmore}
在此 {it:n} 将在消息中替换为实际数字，{it:i} 将在消息中替换为小于 {it:n} 的实际数字。


{marker syn_utilfunction}{...}
    {title:实用函数}

{pstd}
在积分问题的任何阶段，您都可以获取当前存储在 {cmd:Quadrature()} 实例中的所有设置和结果的报告。

{marker query}{...}
{pstd}
{bf:q.query()}

{pmore}
{it:q}{cmd:.query()} 无返回值地显示存储在类中的信息。


{marker description}{...}
{title:描述}

{pstd}
{cmd:Quadrature()} 类通过自适应积分近似 integral int_a^b f(x) dx，其中 f(x) 是一个实值函数，a 和 b 是下限和上限。


{marker linkspdf}{...}
{title:链接到 PDF 文档}

        {mansection M-5 Quadrature()备注和示例:备注和示例}

{pstd}
以上部分未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{pstd}
备注按以下标题呈现：

     {help mf_quadrature##remarks_intro:介绍}
     {help mf_quadrature##remarks_ex:一个基本示例}


{marker remarks_intro}{...}
{title:介绍}

{pstd}
{cmd:Quadrature()} 类是用于数值积分的 Mata 类。

{pstd}
{cmd:Quadrature()} 使用自适应积分来近似积分 int_a^b f(x) dx，其中 f(x) 是一个实值函数，a 和 b 是下限和上限。{cmd:Quadrature()} 通过评估程序近似函数的积分。  

{pstd}
有关 Mata 类编程的介绍，请参见 {helpb m2 class:[M-2] class}。


{marker remarks_ex}{...}
{title:一个基本示例}

{pstd}
要近似一个积分，首先使用 {cmd:Quadrature()} 获取该类的一个实例。至少，您还必须使用 {cmd:setEvaluator()} 指定评估函数，使用 {cmd:setLimits()} 指定积分的限制，并使用 {cmd:integrate()} 执行计算。 在下面的示例中，我们演示了 {cmd:Quadrature()} 类的基本和更高级的使用。


{marker ex1}{...}
    {title:示例 1：近似计算一个积分}

{pstd}
我们想要近似计算 ∫_0^{π} sin(x) dx，使用 {cmd:Quadrature()}。
我们首先将评估函数 {cmd:f()} 定义为内置 {cmd:sin()} 函数的外壳：

        {cmd}: real scalar f(real scalar x) {
        >         return(sin(x))
        > }{txt}

{pstd}
我们需要这个外壳，因为我们必须将评估函数的地址放入 {cmd:Quadrature()} 的实例中，而无法获取内置函数的地址。

{pstd}
定义了评估函数后，我们按照每次使用 {cmd:Quadrature()} 类所需的四个步骤进行操作。
首先，我们创建 {cmd:Quadrature()} 类的实例 {cmd:q}：

        {cmd}: q = Quadrature(){txt}

{pstd}
第二，我们使用 {cmd:setEvaluator()} 将指向评估函数 {cmd:f()} 的指针放入 {cmd:q} 中。

        {cmd}: q.setEvaluator(&f()){txt}

{pstd}
第三，我们使用 {cmd:setLimits()} 指定下限和上限。

        {cmd}: q.setLimits((0, pi())){txt}

{pstd}
第四，我们使用 {cmd:integrate()} 计算近似值。

        {cmd}: q.integrate()
          2{txt}

{pstd}
我们发现 ∫_0^{π} sin(x) dx = 2。


{marker conformability}{...}
{title:兼容性}

    {cmd:Quadrature()}:
       {it:输入}:
                            {it:void}
      {it:输出}:
                   {it:结果}:  1 x 1 

    {cmd:Quadrature(}{it:n}{cmd:)}:
       {it:输入}:
                        {it:n}:  1 x 1
      {it:输出}:
                   {it:结果}:  1 x {it:n}

    {cmd:Quadrature(}{it:m}{cmd:,} {it:n}{cmd:)}:
       {it:输入}:
                        {it:m}:  1 x 1
                        {it:n}:  1 x 1
      {it:输出}:
                   {it:结果}:  {it:m} x {it:n}

    {cmd:setEvaluator(}{it:fcn}{cmd:)}:
       {it:输入}:
                      {it:fcn}:  1 x 1
      {it:输出}:
                   {it:结果}:  {it:void}

    {cmd:getEvaluator()}:
       {it:输入}:
                            {it:void}
      {it:输出}:
                   {it:结果}:  1 x 1

    {cmd:setLimits(}{it:limits}{cmd:)}:
       {it:输入}:
                   {it:limits}:  1 x 2
      {it:输出}:
                   {it:结果}:  {it:void}

    {cmd:getLimits()}:
       {it:输入}:
                            {it:void}
      {it:输出}:
                   {it:结果}:  1 x 2

    {cmd:setTechnique(}{it:technique}{cmd:)}:
       {it:输入}:
                {it:technique}:  1 x 1
      {it:输出}:
                   {it:结果}:  {it:void} 

    {cmd:getTechnique()}:
       {it:输入}:
                            {it:void}
      {it:输出}:
                   {it:结果}:  1 x 1

    {cmd:setMaxiter(}{it:maxiter}{cmd:)}:
       {it:输入}:
                  {it:maxiter}:  1 x 1
      {it:输出}:
                   {it:结果}:  {it:void}

    {cmd:getMaxiter()}:
       {it:输入}:
                            {it:void}
      {it:输出}:
                   {it:结果}:  1 x 1

    {cmd:setAbstol(}{it:abstol}{cmd:)}:
       {it:输入}:
                   {it:abstol}:  1 x 1
      {it:输出}:
                   {it:结果}:  {it:void}

    {cmd:getAbstol()}:
       {it:输入}:
                            {it:void}
      {it:输出}:
                   {it:结果}:  1 x 1

    {cmd:setReltol(}{it:reltol}{cmd:)}:
       {it:输入}:
                   {it:reltol}:  1 x 1
      {it:输出}:
                   {it:结果}:  {it:void}

    {cmd:getReltol()}:
       {it:输入}:
                            {it:void}
      {it:输出}:
                   {it:结果}:  1 x 1

    {cmd:setArgument(}{it:i}{cmd:,} {it:arg}{cmd:)}:
       {it:输入}:
                        {it:i}:  1 x 1
                      {it:arg}:  {it:任何}
      {it:输出}:
                   {it:结果}:  {it:void}

    {cmd:getArgument(}{it:i}{cmd:)}:
       {it:输入}:
                        {it:i}:  1 x 1
      {it:输出}:
                   {it:结果}:  1 x 1

    {cmd:getNarguments()}:
       {it:输入}:
                            {it:void}
      {it:输出}:
                   {it:结果}:  1 x 1

    {cmd:setTrace(}{it:trace}{cmd:)}:
       {it:输入}:
                    {it:trace}:  1 x 1
      {it:输出}:
                   {it:结果}:  {it:void}

    {cmd:getTrace()}:
       {it:输入}:
                            {it:void}
      {it:输出}:
                   {it:结果}:  1 x 1

    {cmd:integrate()}:
       {it:输入}:
                            {it:void}
      {it:输出}:
                   {it:结果}:  1 x 1

    {cmd:value()}:
       {it:输入}:
                            {it:void}
      {it:输出}:
                   {it:结果}:  1 x 1

    {cmd:iterations()}:
       {it:输入}:
                            {it:void}
      {it:输出}:
                   {it:结果}:  1 x 1

    {cmd:converged()}:
       {it:输入}:
                            {it:void}
      {it:输出}:
                   {it:结果}:  1 x 1

    {cmd:errorcode()}:
       {it:输入}:
                            {it:void}
      {it:输出}:
                   {it:结果}:  1 x 1

    {cmd:errortext()}:
       {it:输入}:
                            {it:void}
      {it:输出}:
                   {it:结果}:  1 x 1

    {cmd:returncode()}:
       {it:输入}:
                            {it:void}
      {it:输出}:
                   {it:结果}:  1 x 1

    {cmd:query()}:
       {it:输入}:
                            {it:void}
      {it:输出}:
                            {it:void}


{marker diagnostics}{...}
{title:诊断}

{pstd}
使用不当时，以下函数将中止并报告错误：
{cmd:Quadrature()}、{cmd:set}{it:*}{cmd:()}、{cmd:get}{it:*}{cmd:()}、
{cmd:value()}、{cmd:iterations()}、{cmd:converged}、{cmd:errorcode()}、
{cmd:errortext()}、{cmd:returncode()} 和 {cmd:query()}。

{pstd}
如果使用不当，{cmd:integrate()} 也将中止并报告错误。如果
{cmd:integrate()} 遇到数值困难，它将返回缺失值，并显示包含遇到的问题的一些详细信息的警告信息。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_quadrature.sthlp>}