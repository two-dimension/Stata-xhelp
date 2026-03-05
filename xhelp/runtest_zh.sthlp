{smcl}
{* *! version 1.1.9  19oct2017}{...}
{viewerdialog runtest "dialog runtest"}{...}
{vieweralsosee "[R] runtest" "mansection R runtest"}{...}
{viewerjumpto "语法" "runtest_zh##syntax"}{...}
{viewerjumpto "菜单" "runtest_zh##menu"}{...}
{viewerjumpto "描述" "runtest_zh##description"}{...}
{viewerjumpto "PDF文档链接" "runtest_zh##linkspdf"}{...}
{viewerjumpto "选项" "runtest_zh##options"}{...}
{viewerjumpto "示例" "runtest_zh##examples"}{...}
{viewerjumpto "存储结果" "runtest_zh##results"}{...}
{viewerjumpto "参考文献" "runtest_zh##reference"}
{help runtest:English Version}
{hline}{...}
{p2colset 1 16 18 2}{...}
{p2col:{bf:[R] runtest} {hline 2}}随机顺序检验{p_end}
{p2col:}({mansection R runtest:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 17 2}
{cmd:runtest} {varname} [{it:{help in_zh}}] 
[{cmd:,} {it:options}] 

{synoptset 16}{...}
{synopthdr:选项}
{synoptline}
{synopt :{opt c:ontinuity}}连续性修正{p_end}
{synopt :{opt d:rop}}忽略等于阈值的值{p_end}
{synopt :{opt s:plit}}随机分裂等于阈值的值为高于或低于阈值；默认情况下计为低于{p_end}
{synopt :{opt m:ean}}使用均值作为阈值；默认情况下使用中位数{p_end}
{synopt :{opt t:hreshold(#)}}指定任意阈值；默认情况下为中位数{p_end}
{synoptline}
{p2colreset}{...}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 非参数分析 > 假设检验 >}
          {bf:随机顺序检验}


{marker description}{...}
{title:描述}

{pstd}
{cmd:runtest} 检验 {varname} 的观察值是否是串联独立的，即它们是否以随机顺序出现，通过计算阈值上方和下方的运行次数来实现。默认情况下，中位数被用作阈值。运行次数少表示正串列相关，运行次数多表示负串列相关。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection R runtestQuickstart:快速入门}

        {mansection R runtestRemarksandexamples:备注和示例}

        {mansection R runtestMethodsandformulas:方法和公式}

{pstd}
上述部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{opt continuity}指定一个可能在小样本中有帮助的连续性修正。然而，如果超过10个观察值处于阈值以上或以下，则 {help runtest##SE1943:Swed 和 Eisenhart (1943)} 中的表格提供更可靠的临界值。默认情况下，不使用连续性修正。

{phang}
{opt drop}指示 {cmd:runtest} 在计数运行和汇总观察时忽略任何等于阈值的 {varname} 值。默认情况下，{cmd:runtest} 计数值大于阈值时为上方，值小于或等于阈值时为下方。

{phang}
{opt split}指示 {cmd:runtest} 随机分裂等于阈值的 {varname} 值。换句话说，当 {it:varname} 等于阈值时，抛硬币。如果是正面，则该值被计为阈值之上。如果是反面，则该值被计为阈值之下。

{phang}
{opt mean}指示 {cmd:runtest} 以均值而非中位数来统计上下方的运行。

{phang}
{opt threshold(#)}指定用于计数运行的任意阈值。例如，如果 {varname} 已经被编码为0/1变量，则中位数通常不会是有意义的分隔值。


{marker examples}{...}
{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. sysuse auto}{p_end}
{phang2}{cmd:. regress mpg weight foreign}{p_end}
{phang2}{cmd:. predict resid, resid}{p_end}

{pstd}检验残差的串列相关性{p_end}
{phang2}{cmd:. runtest resid}{p_end}

{pstd}与上面相同，但使用0作为阈值{p_end}
{phang2}{cmd:. runtest resid, threshold(0)}{p_end}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse additive, clear}{p_end}
{phang2}{cmd:. sort miles}{p_end}

{pstd}检验 {cmd:additive} 的串列相关性并使用1作为阈值{p_end}
{phang2}{cmd:. runtest additive, threshold(1)}{p_end}
    {hline}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:runtest} 将以下内容存储在 {cmd:r()} 中：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:r(N)}}观察值数量{p_end}
{synopt:{cmd:r(N_below)}}低于阈值的数量{p_end}
{synopt:{cmd:r(N_above)}}高于阈值的数量{p_end}
{synopt:{cmd:r(mean)}}期望的运行次数{p_end}
{synopt:{cmd:r(p)}}z值的p值{p_end}
{synopt:{cmd:r(z)}}z统计量{p_end}
{synopt:{cmd:r(n_runs)}}运行次数{p_end}
{synopt:{cmd:r(Var)}}运行次数的方差{p_end}
{p2colreset}{...}


{marker reference}{...}
{title:参考文献}

{marker SE1943}{...}
{phang}
Swed, F. S., 和 C. Eisenhart. 1943. 在一系列备选项中测试分组随机性的表格。 {it:数学统计年鉴} 14: 66-87.
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <runtest.sthlp>}