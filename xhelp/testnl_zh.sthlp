{smcl}
{* *! version 1.2.8  19oct2017}{...}
{viewerdialog testnl "dialog testnl"}{...}
{vieweralsosee "[R] testnl" "mansection R testnl"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] contrast" "help contrast_zh"}{...}
{vieweralsosee "[R] lincom" "help lincom_zh"}{...}
{vieweralsosee "[R] lrtest" "help lrtest_zh"}{...}
{vieweralsosee "[R] nlcom" "help nlcom_zh"}{...}
{vieweralsosee "[R] test" "help test_zh"}{...}
{viewerjumpto "Syntax" "testnl_zh##syntax"}{...}
{viewerjumpto "Menu" "testnl_zh##menu"}{...}
{viewerjumpto "Description" "testnl_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "testnl_zh##linkspdf"}{...}
{viewerjumpto "Options" "testnl_zh##options"}{...}
{viewerjumpto "Remarks" "testnl_zh##remarks"}{...}
{viewerjumpto "Examples" "testnl_zh##examples"}{...}
{viewerjumpto "Stored results" "testnl_zh##results"}
{help testnl:English Version}
{hline}{...}
{p2colset 1 15 17 2}{...}
{p2col:{bf:[R] testnl} {hline 2}}估计后测试非线性假设{p_end}
{p2col:}({mansection R testnl:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 33 2}
{cmd:testnl} {it:{help testnl##exp:exp}} {cmd:=} {it:{help testnl##exp:exp}}
       [{cmd:=} {it:{help testnl##exp:exp}} ...] [{cmd:,} {it:options}]

{p 8 33 2}
{cmd:testnl} {cmd:(}{it:{help testnl##exp:exp}} {cmd:=} {it:{help testnl##exp:exp}}
     [{cmd:=} {it:{help testnl##exp:exp}}...]{cmd:)}
     [{cmd:(}{it:{help testnl##exp:exp}} {cmd:=} {it:{help testnl##exp:exp}}
     [{cmd:=} {it:{help testnl##exp:exp}} ...]{cmd:)} {it:...}]
[{cmd:,} {it:options}] 
  
{synoptset 15}{...}
{synopthdr}
{synoptline}
{synopt:{opt m:test}[{opt (opt)}]}分别测试每个条件 {p_end}
{synopt:{opt iter:ate(#)}}使用最大迭代次数 {it:#} 来寻找最佳步长 {p_end}

{synopt :{opt df(#)}}使用 F 分布以及 {it:#} 自由度作为测试统计量的参考分布 {p_end}
{synopt:{opt nosvy:adjust}}进行 Wald 测试为 W/k ~ F(k,d);
    用于同时指定 {cmd:df()} 选项的 {opt svy} 估计命令 {p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
{opt df(#)} 和 {cmd:nosvyadjust}不显示在对话框中。
{p_end}

{pstd}
第二种语法意味着如果指定了多个表达式，每个表达式必须用括号括起来。

{marker exp}{...}
{pstd}
{it:exp} 是一个可能的非线性表达式，它包含{p_end}
	    {cmd:_b[}{it:coef}{cmd:]}
	    {cmd:_b[}{it:eqno}{cmd::}{it:coef}{cmd:]}
	    {cmd:[}{it:eqno}{cmd:]}{it:coef}
            {cmd:[}{it:eqno}{cmd:]_b[}{it:coef}{cmd:]}

{marker eqno}{...}
{pstd}{it:eqno}是{p_end}
	    {cmd:#}{it:#}
	    {it:name}

{pstd}
{it:coef}标识模型中的一个系数。
{it:coef}通常是一个变量名称、一个水平指示符、一个交互指示符或包含连续变量的交互。
水平指示符标识因子变量的一个水平，交互指示符标识交互的一个组合水平；详见 {help fvvarlist_zh}。
{it:coef}可以包含时间序列运算符；详见 {help tsvarlist_zh}。

{pstd}
区分 {cmd:[]}, 这表示需要输入的，而 [] 表示可选参数。


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 后估计}


{marker description}{...}
{title:描述}

{pstd}
{opt testnl} 测试关于最近拟合模型的估计参数的（线性或非线性）假设。

{pstd}
{opt testnl} 产生平滑的非线性（或线性）假设的 Wald型检验，关于最近拟合模型的估计参数。p 值基于德尔塔方法，这是在大样本中适用的一个近似。

{pstd}
{cmd:testnl} 可以与 {cmd:svy} 估计结果一起使用，详见 {manhelp svy_postestimation SVY:svy 后估计}。

{pstd}
格式
{cmd:(}{it:{help testnl##exp:exp1}}{cmd:=}{it:exp2}{cmd:=}{it:exp3}... {cmd:)}
用于同时等式假设，仅是表达一个列表 {cmd:(}{it:exp1}{cmd:=}{it:exp2}{cmd:)}
{cmd:(}{it:exp1}{cmd:=}{it:exp3}{cmd:)}, 等等。

{pstd}
{opt testnl} 也可以用于测试线性假设。{cmd:test} 如果只想测试线性假设则会更快；详见 {manhelp test R}。
{opt testnl} 是同时测试线性和非线性假设的唯一选项。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection R testnlQuickstart:快速入门}

        {mansection R testnlRemarksandexamples:备注和示例}

        {mansection R testnlMethodsandformulas:方法和公式}

{pstd}
以上部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{opt mtest}[{opt (opt)}]
   指定为每个条件分别进行检验。{it:opt} 指定多个检测的 p 值调整方法。有效的 {it:opt} 值有

{pin3}{opt b:onferroni}{space 4}霍尔夫法{p_end}
{pin3}{opt h:olm}{space      10}霍尔姆法{p_end}
{pin3}{opt s:idak}{space      9}Sidak 法{p_end}
{pin3}{opt noadj:ust}{space   6}不进行调整{p_end}
   
{pmore}
   在没有参数的情况下指定 {opt mtest} 等同于
   {cmd:mtest(noadjust)}。

{phang}
{opt iterate(#)} 指定用于查找最佳步长的最大迭代次数，用于计算测试表达式的数值导数。默认情况下，最大迭代次数是100，但通常只需几次迭代便能收敛。您很少需要使用此选项。

{pstd}
以下选项与 {opt testnl} 可用，但不在对话框中显示：

{phang}
{opt df(#)} 指定使用 F 分布和 {it:#} 自由度作为测试统计量的参考分布。使用调查数据时，{it:#} 是设计自由度，除非指定了 {cmd:nosvyadjust}。

{phang}
{cmd:nosvyadjust}
   用于同时指定 {cmd:df()} 选项时与 {cmd:svy} 估计命令配合使用；详见 {manhelp svy_estimation SVY:svy 估计}。它指定进行 Wald 测试，而不进行默认的设计自由度调整。即，测试是进行 W/k ~ F(k,d) 而不是 (d-k+1)W/(kd) ~ F(k,d-k+1)，其中 {bind:k = 测试的维度} 和 d = 在 {cmd:df()} 选项中指定的设计自由度。


{marker remarks}{...}
{title:备注}

{pstd}
与似然比检验相比，不同的 -- 数学上等价的 -- 假设表述可能导致非线性 Wald 测试的不同结果（缺乏“不变性”）。例如，这两个假设

	H0: b1 = b2

	H0: exp(b1) = exp(b2)

{pstd}
是数学上等价的表达，但并不产生相同的检验统计量和 p 值。在极端情况下，在某一表述下，可能会拒绝 H0，而在相应的表述下则不会拒绝 H0。

{pstd}
似然比检验确实满足表示不变性。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. sysuse auto}{p_end}
{phang2}{cmd:. generate weightsq = weight^2}{p_end}
{phang2}{cmd:. regress price mpg trunk length weight weightsq foreign}{p_end}

{pstd}测试一个非线性约束{p_end}
{phang2}{cmd:. testnl _b[mpg] = 1/_b[weight]}{p_end}

{pstd}测试多个非线性约束{p_end}
{phang2}{cmd:. testnl (_b[mpg] = 1/_b[weight]) (_b[trunk] = 1/_b[length])}

{pstd}分别测试多个非线性约束，并使用霍尔姆法调整 p 值{p_end}
{phang2}{cmd:. testnl (_b[mpg] = 1/_b[weight]) (_b[trunk] = 1/_b[length]), mtest(holm)}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:testnl} 将以下结果存储在 {cmd:r()} 中：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:r(df)}}自由度{p_end}
{synopt:{cmd:r(df_r)}}残差自由度{p_end}
{synopt:{cmd:r(chi2)}}卡方{p_end}
{synopt:{cmd:r(p)}}Wald 检验的 p 值{p_end}
{synopt:{cmd:r(F)}}F 统计量{p_end}

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 宏}{p_end}
{synopt:{cmd:r(mtmethod)}}在 {cmd:mtest()} 中指定的方法{p_end}

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 矩阵}{p_end}
{synopt:{cmd:r(G)}}R(b) 关于 b 的导数；参见
    {mansection R testnlMethodsandformulas:{it:方法和公式}} 在
    {bf:[R] testnl}{p_end}
{synopt:{cmd:r(R)}}R(b)-q；参见
    {mansection R testnlMethodsandformulas:{it:方法和公式}} 在
    {bf:[R] testnl}{p_end}
{synopt:{cmd:r(mtest)}}多重测试结果{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <testnl.sthlp>}