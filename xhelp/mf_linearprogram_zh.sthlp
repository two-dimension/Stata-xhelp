{smcl}
{* *! version 1.0.0  21may2019}{...}
{vieweralsosee "[M-5] LinearProgram()" "mansection M-5 LinearProgram()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-2] class" "help m2_class_zh"}{...}
{vieweralsosee "[M-5] moptimize()" "help mf_moptimize_zh"}{...}
{vieweralsosee "[M-5] optimize()" "help mf_optimize_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] frontier" "help frontier_zh"}{...}
{vieweralsosee "[LASSO] Lasso intro" "help lasso intro"}{...}
{vieweralsosee "[R] qreg" "help qreg_zh"}{...}
{vieweralsosee "[R] regress " "help regress_zh"}{...}
{viewerjumpto "语法" "mf_linearprogram_zh##syntax"}{...}
{viewerjumpto "描述" "mf_linearprogram_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "mf_linearprogram_zh##linkspdf"}{...}
{viewerjumpto "相容性" "mf_linearprogram_zh##conformability"}{...}
{viewerjumpto "诊断" "mf_linearprogram_zh##diagnostics"}
{help mf_linearprogram:English Version}
{hline}{...}
{p2colset 1 26 28 2}{...}
{p2col:{bf:[M-5] LinearProgram()} {hline 2}}线性规划{p_end}
{p2col:}({mansection M-5 LinearProgram():查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{pstd}
语法分为以下几个步骤：

        {help mf_linearprogram##syn_step1:步骤 1：初始化}
        {help mf_linearprogram##syn_step2:步骤 2：定义线性规划问题}
        {help mf_linearprogram##syn_step3:步骤 3：执行优化}
        {help mf_linearprogram##syn_step4:步骤 4：显示或获取结果}
        {help mf_linearprogram##syn_stepall:在所有步骤中使用的工具函数}
        {help mf_linearprogram##syn_q:q 的定义}
        {help mf_linearprogram##syn_linprprob:定义线性规划问题的函数}
            {help mf_linearprogram##setCoefficients:q.setCoefficients() 和 q.getCoefficients()}
            {help mf_linearprogram##setMaxOrMin:q.setMaxOrMin() 和 q.getMaxOrMin()}
            {help mf_linearprogram##setEquality:q.setEquality() 和 q.getEquality()}
            {help mf_linearprogram##setInequality:q.setInequality() 和 q.getInequality()}
            {help mf_linearprogram##setBounds:q.setBounds() 和 q.getBounds()}
            {help mf_linearprogram##setMaxiter:q.setMaxiter() 和 q.getMaxiter()}
            {help mf_linearprogram##setTol:q.setTol() 和 q.getTol()}
            {help mf_linearprogram##setTrace:q.setTrace() 和 q.getTrace()}
        {help mf_linearprogram##syn_performopt:执行优化}
            {help mf_linearprogram##optimize:q.optimize()}
        {help mf_linearprogram##syn_obtainres:获取结果的函数}
            {help mf_linearprogram##parameters:q.parameters()}
            {help mf_linearprogram##value:q.value()}
            {help mf_linearprogram##iterations:q.iterations()}
            {help mf_linearprogram##converged:q.converged()}
            {help mf_linearprogram##errorcode:q.errorcode(), q.errortext(), 和 q.returncode()}
        {help mf_linearprogram##syn_utilfcn:工具函数}
            {help mf_linearprogram##query:q.query()}


{marker syn_step1}{...}
    {title:步骤 1：初始化}

{p 8 25 1}
{it:{help mf_linearprogram##syn_q:q}} {cmd:= LinearProgram()}


{marker syn_step2}{...}
    {title:步骤 2：定义线性规划问题}

      {it:void}{bind:             }{...}
{it:{help mf_linearprogram##syn_q:q}}{help mf_linearprogram##setCoefficients:{bf:.setCoefficients(}{it:real rowvector coef}{bf:)}}

      {it:void}{bind:             }{...}
{it:{help mf_linearprogram##syn_q:q}}{help mf_linearprogram##setMaxOrMin:{bf:.setMaxOrMin(}{it:string scalar maxormin}{bf:)}}

      {it:void}{bind:             }{...}
{it:{help mf_linearprogram##syn_q:q}}{help mf_linearprogram##setEquality:{bf:.setEquality(}{it:real matrix ecmat}{bf:,} {it:real colvector rhs}{bf:)}}

      {it:void}{bind:             }{...}
{it:{help mf_linearprogram##syn_q:q}}{help mf_linearprogram##setInequality:{bf:.setInequality(}{it:real matrix iemat}{bf:,} {it:real colvector rhs}{bf:)}}

      {it:void}{bind:             }{...}
{it:{help mf_linearprogram##syn_q:q}}{help mf_linearprogram##setBounds:{bf:.setBounds(}{it:real rowvector lowerbd}{bf:,} {it:real rowvector upperbd}{bf:)}}

      {it:void}{bind:             }{...}
{it:{help mf_linearprogram##syn_q:q}}{help mf_linearprogram##setMaxiter:{bf:.setMaxiter(}{it:real scalar maxiter}{bf:)}}

      {it:void}{bind:             }{...}
{it:{help mf_linearprogram##syn_q:q}}{help mf_linearprogram##setTol:{bf:.setTol(}{it:real scalar tol}{bf:)}}

      {it:void}{bind:             }{...}
{it:{help mf_linearprogram##syn_q:q}}{help mf_linearprogram##setTrace:{bf:.setTrace(}{it:string scalar trace}{bf:)}}

      {it:real rowvector}{bind:   }{...}
{it:{help mf_linearprogram##syn_q:q}}{help mf_linearprogram##setCoefficients:{bf:.getCoefficients()}}

      {it:string scalar}{bind:    }{...}
{it:{help mf_linearprogram##syn_q:q}}{help mf_linearprogram##setMaxOrMin:{bf:.getMaxOrMin()}}

      {it:real matrix}{bind:      }{...}
{it:{help mf_linearprogram##syn_q:q}}{help mf_linearprogram##setEquality:{bf:.getEquality()}}

      {it:real matrix}{bind:      }{...}
{it:{help mf_linearprogram##syn_q:q}}{help mf_linearprogram##setInequality:{bf:.getInequality()}}

      {it:real matrix}{bind:      }{...}
{it:{help mf_linearprogram##syn_q:q}}{help mf_linearprogram##setBounds:{bf:.getBounds()}}

      {it:real scalar}{bind:      }{...}
{it:{help mf_linearprogram##syn_q:q}}{help mf_linearprogram##setMaxiter:{bf:.getMaxiter()}}

      {it:real scalar}{bind:      }{...}
{it:{help mf_linearprogram##syn_q:q}}{help mf_linearprogram##setTol:{bf:.getTol()}}

      {it:string scalar}{bind:    }{...}
{it:{help mf_linearprogram##syn_q:q}}{help mf_linearprogram##setTrace:{bf:.getTrace()}}


{marker syn_step3}{...}
    {title:步骤 3：执行优化}

      {it:real scalar}{bind:      }{...}
{it:{help mf_linearprogram##syn_q:q}}{help mf_linearprogram##optimize:{bf:.optimize()}}


{marker syn_step4}{...}
    {title:步骤 4：显示或获取结果}

      {it:real rowvector}{bind:   }{...}
{it:{help mf_linearprogram##syn_q:q}}{help mf_linearprogram##parameters:{bf:.parameters()}}

      {it:real scalar}{bind:      }{...}
{it:{help mf_linearprogram##syn_q:q}}{help mf_linearprogram##value:{bf:.value()}}

      {it:real scalar}{bind:      }{...}
{it:{help mf_linearprogram##syn_q:q}}{help mf_linearprogram##iterations:{bf:.iterations()}}

      {it:real scalar}{bind:      }{...}
{it:{help mf_linearprogram##syn_q:q}}{help mf_linearprogram##converged:{bf:.converged()}}

      {it:real scalar}{bind:      }{...}
{it:{help mf_linearprogram##syn_q:q}}{help mf_linearprogram##errorcode:{bf:.errorcode()}}

      {it:string scalar}{bind:    }{...}
{it:{help mf_linearprogram##syn_q:q}}{help mf_linearprogram##errorcode:{bf:.errortext()}}

      {it:real scalar}{bind:      }{...}
{it:{help mf_linearprogram##syn_q:q}}{help mf_linearprogram##errorcode:{bf:.returncode()}}


{marker syn_stepall}{...}
    {title:在所有步骤中使用的工具函数}

      {it:void}{bind:             }{...}
{it:{help mf_linearprogram##syn_q:q}}{help mf_linearprogram##query:{bf:.query()}}


{marker syn_q}{...}
    {title:q 的定义}

{pstd}
类型为 {cmd:LinearProgram} 的变量称为 {cmd:LinearProgram()} 类的一个 {help m6_glossary##instance:实例}。 {it:q} 是 {cmd:LinearProgram()} 的一个实例，一个实例的向量，或一个实例的矩阵。如果你在交互模式下工作，可以通过输入

           {cmd}q = LinearProgram(){txt}

{pstd}
对于 {it:n} 个 {cmd:LinearProgram()} 实例的行向量，可以输入

           {cmd:q = LinearProgram(}{it:n}{cmd:)}

{pstd}
对于 {it:m} x {it:n} 的 {cmd:LinearProgram()} 实例矩阵，可以输入

           {cmd:q = LinearProgram(}{it:m}{cmd:,} {it:n}{cmd:)}

{pstd}
在一个函数中，你可以将一个 {cmd:LinearProgram()} 类的实例 {it:q} 声明为 {cmd:scalar}。

           {cmd}void myfunc()
           {
               class LinearProgram scalar   q
               q = LinearProgram()    
               ...
           }{txt}

{pstd}
在一个函数内部，你可以通过输入将 {it:q} 声明为一个 {it:n} 个实例的行向量

           {cmd}void myfunc()
           {
               class LinearProgram rowvector   q
               q = LinearProgram({txt}{it:n}{cmd})
               ...
           }{txt}

{pstd}
对于一个 {it:m} x {it:n} 的实例矩阵，可以输入

           {cmd}void myfunc()
           {
               class LinearProgram matrix   q
               q = LinearProgram({txt}{it:m}{cmd:,} {it:n}{cmd})
               ...
           }{txt}


{marker syn_linprprob}{...}
    {title:定义线性规划问题的函数}

{pstd}
至少你需要告诉 {cmd:LinearProgram()} 类有关你想优化的线性目标函数的系数。可选的，你可以指定是否要最小化或最大化目标函数、任何等式约束、任何不等式约束、下界和上界。你还可以指定允许的最大迭代次数、收敛容忍度，以及是否打印计算详细信息。

{pstd}
每对函数包括一个 {it:q}{cmd:.set} 函数来指定设置和一个 {it:q}{cmd:.get} 函数来返回当前设置。

{marker setCoefficients}{...}
{pstd}
{bf:q.setCoefficients() 和 q.getCoefficients()}

{pmore}
{it:q}{cmd:.setCoefficients(}{it:coef}{cmd:)} 设置线性目标函数的系数。必须在优化之前设置系数。

{pmore}
{it:q}{cmd:.getCoefficients()} 返回线性目标函数的系数（如果未指定，则返回空向量）。

{marker setMaxOrMin}{...}
{pstd}
{bf:q.setMaxOrMin() 和 q.getMaxOrMin()}

{pmore}
{it:q}{cmd:.setMaxOrMin(}{it:maxormin}{cmd:)} 设置是否进行最大化或最小化。 
{it:maxormin} 可以是 {cmd:"max"} 或 {cmd:"min"}。 默认值为最大化 ({cmd:"max"}).

{pmore}
{it:q}{cmd:.getMaxOrMin()} 返回 {cmd:"max"} 或 {cmd:"min"}，根据当前设置。

{marker setEquality}{...}
{pstd}
{bf:q.setEquality() 和 q.getEquality()}

{pstd}
线性规划问题的等式约束的形式为 {bf:A}_{EC} {bf:x} = {bf:b}_{EC}，其中 {bf:A}_{EC} 是等式约束（EC）矩阵，{bf:b}_{EC} 是右侧（RHS）向量。

{pmore}
{it:q}{cmd:.setEquality(}{it:ecmat}{cmd:,} {it:rhs}{cmd:)} 设置 EC 矩阵和 RHS 向量。

{pmore}
{it:q}{cmd:.getEquality()} 返回一个矩阵，其中包含 EC 矩阵和 RHS 向量。RHS 向量是返回矩阵的最后一列。如果未指定等式约束，则返回一个空矩阵。

{marker setInequality}{...}
{pstd}
{bf:q.setInequality() 和 q.getInequality()}

{pstd}
线性规划问题的不等式约束的形式为 {bf:A}_{IE} {bf:x} {ul:<} {bf:b}_{IE}，其中 {bf:A}_{IE} 是不等式约束（IE）矩阵，{bf:b}_{IE} 是 RHS 向量。

{pmore}
{it:q}{cmd:.setInequality(}{it:iemat}{cmd:,} {it:rhs}{cmd:)} 设置 IE 矩阵和 RHS 向量。

{pmore}
{it:q}{cmd:.getInequality()} 返回一个矩阵，其中包含 IE 矩阵和 RHS 向量。RHS 向量是返回矩阵的最后一列。如果未指定不等式约束，则返回一个空矩阵。

{marker setBounds}{...}
{pstd}
{bf:q.setBounds() 和 q.getBounds()}

{pstd}
参数可能有下界或上界。默认情况下，下界是负无穷，上界是正无穷。

{pmore}
{it:q}{cmd:.setBounds(}{it:lowerbd}{cmd:,} {it:upperbd}{cmd:)} 设置下界和上界。使用缺失值作为下界表示负无穷，使用缺失值作为上界表示正无穷。

{pmore}
{it:q}{cmd:.getBounds()} 返回一个包含下界和上界的两行矩阵。

{marker setMaxiter}{...}
{pstd}
{bf:q.setMaxiter() 和 q.getMaxiter()}

{pmore}
{it:q}{cmd:.setMaxiter(}{it:maxiter}{cmd:)} 指定最大迭代次数，必须是大于 0 的整数。 {it:maxiter} 的默认值为 {cmd:16000}。

{pmore}
{it:q}{cmd:.getMaxiter()} 返回当前的最大迭代次数。

{marker setTol}{...}
{pstd}
{bf:q.setTol() 和 q.getTol()}

{pmore}
{it:q}{cmd:.setTol(}{it:tol}{cmd:)} 指定收敛标准容忍度，必须大于 0。 {it:tol} 的默认值为 {cmd:1e-8}。

{pmore}
{it:q}{cmd:.getTol()} 返回当前指定的容忍度。

{marker setTrace}{...}
{pstd}
{bf:q.setTrace() 和 q.getTrace()}

{pmore}
{it:q}{cmd:.setTrace(}{it:trace}{cmd:)} 设置是否打印计算详细信息。 {it:trace} 
可以是 {cmd:"on"} 或 {cmd:"off"}。 默认值为 {cmd:"off"}。

{pmore}
{it:q}{cmd:.getTrace()} 返回当前跟踪状态。


{marker syn_performopt}{...}
    {title:执行优化}

{marker optimize}{...}
{pstd}
{bf:q.optimize()}

{pmore}
{it:q}{cmd:.optimize()} 启动优化过程，并返回目标函数在最优点的值。


{marker syn_obtainres}{...}
    {title:获取结果的函数}

{pstd}
在执行优化后，以下函数提供包括参数、最优值、迭代次数、是否收敛、错误信息和返回代码在内的结果。

{marker parameters}{...}
{pstd}
{bf:q.parameters()}

{pmore}
{it:q}{cmd:.parameters()} 返回优化目标函数的参数向量；在执行优化之前返回一个空向量。

{marker value}{...}
{pstd}
{bf:q.value()}

{pmore}
{it:q}{cmd:.value()} 返回目标函数在最优点的值；在执行优化之前返回缺失值。

{marker iterations}{...}
{pstd}
{bf:q.iterations()}

{pmore}
{it:q}{cmd:.iterations()} 返回迭代次数。

{marker converged}{...}
{pstd}
{bf:q.converged()}

{pmore}
{it:q}{cmd:.converged()} 返回 {cmd:1} 如果优化收敛，返回 {cmd:0} 如果没有。

{marker errorcode}{...}
{pstd}
{bf:q.errorcode(), q.errortext(), 和 q.returncode()}

{pmore}
{it:q}{cmd:.errorcode()} 返回计算过程中生成的错误代码；如果没有发现错误，则返回 {cmd:0}。

{pmore}
{it:q}{cmd:.errortext()} 返回与计算过程中生成的错误代码相对应的错误信息；如果没有发现错误，则返回空字符串。

{pmore}
{it:q}{cmd:.returncode()} 返回与计算过程中生成的错误代码相对应的 Stata 返回代码。

{marker errcodes}{...}
{pstd}
错误代码和相应的 Stata 返回代码如下：

{p2colset 9 25 27 2}{...}
{p2col:错误{space 2}返回}{p_end}
{p2col:代码{space 3}代码}错误文本{p_end}
{p2line}
{synopt:1{space 6}430}问题不可行{p_end}

{synopt:2{space 6}430}问题无界{p_end}

{synopt:3{space 6}430}已达到最大迭代次数{p_end}

{synopt:4{space 6}3499}系数、约束和界的维度不相符{p_end}

{synopt:5{space 6}111}参数的维度为 0{p_end}
{p2line}
{p2colreset}{...}


{marker syn_utilfcn}{...}
    {title:工具函数}

{pstd}
你可以获得一个报告，包含当前存储在类 {cmd:LinearProgram()} 实例中的所有设置和结果。

{marker query}{...}
{pstd}
{bf:q.query()}

{pmore}
{it:q}{cmd:.query()} 在没有返回值的情况下显示存储在该类中的信息。


{marker description}{...}
{title:描述}

{pstd}
{cmd:LinearProgram()} 类找出参数向量，该参数向量最小化或最大化线性目标函数，同时满足某些限制。这些限制可以是线性等式约束、线性不等式约束、下界或上界。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection M-5 LinearProgram()Remarksandexamples:备注和示例}

{pstd}
以上部分未包含在此帮助文件中。


{marker conformability}{...}
{title:相容性}

    {cmd:LinearProgram()}:
       {it:输入}:
                            {it:void}
      {it:输出}:
                   {it:结果}:  1 x 1

    {cmd:LinearProgram(}{it:n}{cmd:)}:
       {it:输入}:
                        {it:n}:  1 x 1
      {it:输出}:
                   {it:结果}:  1 x {it:n}

    {cmd:LinearProgram(}{it:m}{cmd:,} {it:n}{cmd:)}:
       {it:输入}:
                        {it:m}:  1 x 1
                        {it:n}:  1 x 1
      {it:输出}:
                   {it:结果}:  {it:m} x {it:n}

    {cmd:setCoefficients(}{it:coef}{cmd:)}:
       {it:输入}:
                     {it:coef}:  1 x {it:N}
      {it:输出}:
                   {it:结果}:  {it:void}

    {cmd:getCoefficients()}:
       {it:输入}:
                            {it:void}
      {it:输出}:
                   {it:结果}:  1 x {it:N}

    {cmd:setMaxOrMin(}{it:maxormin}{cmd:)}:
       {it:输入}:
                   {it:object}:  1 x 1
      {it:输出}:
                   {it:结果}:  {it:void}

    {cmd:getMaxOrMin()}:
       {it:输入}:
                            {it:void}
      {it:输出}:
                   {it:结果}:  1 x 1

    {cmd:setEquality(}{it:ecmat}{cmd:,} {it:rhs}{cmd:)}:
       {it:输入}:
                    {it:ecmat}:  {it:M0} x {it:N}
                      {it:rhs}:  {it:M0} x 1
      {it:输出}:
                   {it:结果}:  {it:void}

     {cmd:getEquality()}:
       {it:输入}:
                            {it:void}
      {it:输出}:
                   {it:结果}:  ({it:M0} + 1) x {it:N}

    {cmd:setInequality(}{it:iemat}{cmd:,} {it:rhs}{cmd:)}:
       {it:输入}:
                    {it:iemat}:  {it:M1} x {it:N}
                      {it:rhs}:  {it:M1} x 1
      {it:输出}:
                   {it:结果}:  {it:void}

     {cmd:getInequality()}:
       {it:输入}:
                            {it:void}
      {it:输出}:
                   {it:结果}:  ({it:M1} + 1) x {it:N}

    {cmd:setBounds(}{it:lowerbd}{cmd:,} {it:upperbd}{cmd:)}:
       {it:输入}:
                  {it:lowerbd}:  1 x {it:N}
                  {it:upperbd}:  1 x {it:N}
      {it:输出}:
                   {it:结果}:  {it:void}

     {cmd:getBounds()}:
       {it:输入}:
                            {it:void}
      {it:输出}:
                   {it:结果}:  2 x {it:N}

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

    {cmd:setTol(}{it:tol}{cmd:)}:
       {it:输入}:
                      {it:tol}:  1 x 1
      {it:输出}:
                   {it:结果}:  {it:void}

     {cmd:getTol()}:
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

     {cmd:optimize()}:
       {it:输入}:
                            {it:void}
      {it:输出}:
                   {it:结果}:  1 x 1

     {cmd:parameters()}:
       {it:输入}:
                            {it:void}
      {it:输出}:
                   {it:结果}:  1 x {it:N}

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
{cmd:LinearProgram()}, {it:q}{cmd:.set}{it:*}{cmd:()}, 
{it:q}{cmd:.get}{it:*}{cmd:()},
{it:q}{cmd:.parameters()}, {it:q}{cmd:.value()}, 
{it:q}{cmd:.iterations()}, {it:q}{cmd:.converged()}, 
{it:q}{cmd:.errorcode()}, {it:q}{cmd:.errortext()}, 
{it:q}{cmd:.returncode()}, 和 {it:q}{cmd:.query()} 
函数在使用不正确时会中止并显示错误信息。

{pstd}
{it:q}{cmd:.optimize()} 在使用不正确时会中止并显示错误信息。如果 {it:q}{cmd:.optimize()} 遇到数值困难，它会返回一个缺失值并显示一个警告信息，包含关于所遇到问题的一些细节。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_linearprogram.sthlp>}