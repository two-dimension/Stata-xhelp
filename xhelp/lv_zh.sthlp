{smcl}
{* *! version 1.1.8  14may2018}{...}
{viewerdialog lv "dialog lv"}{...}
{vieweralsosee "[R] lv" "mansection R lv"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] 诊断图" "help diagnostic plots"}{...}
{vieweralsosee "[R] stem" "help stem_zh"}{...}
{vieweralsosee "[R] summary" "help summarize_zh"}{...}
{viewerjumpto "语法" "lv_zh##syntax"}{...}
{viewerjumpto "菜单" "lv_zh##menu"}{...}
{viewerjumpto "描述" "lv_zh##description"}{...}
{viewerjumpto "链接到 PDF 文档" "lv_zh##linkspdf"}{...}
{viewerjumpto "选项" "lv_zh##options"}{...}
{viewerjumpto "示例" "lv_zh##examples"}{...}
{viewerjumpto "存储的结果" "lv_zh##results"}{...}
{viewerjumpto "参考文献" "lv_zh##references"}
{help lv:English Version}
{hline}{...}
{p2colset 1 11 13 2}{...}
{p2col:{bf:[R] lv} {hline 2}}字母值显示{p_end}
{p2col:}({mansection R lv:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{cmd:lv} [{varlist}] {ifin} [{cmd:,} {opt g:enerate} {opt t:ail(#)}]

{phang}
{opt by} 是允许的；参见 {manhelp by D}。


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 摘要、表格和检验 >}
    {bf:分布图和检验 > 字母值显示}


{marker description}{...}
{title:描述}

{pstd}
{cmd:lv} 显示每个在 {varlist} 中指定的变量的字母值显示
({help lv##T1977:图基 1977，44-49};
 {help lv##H1983:霍格林 1983})。如果没有指定变量，则显示数据中每个数字变量的字母值显示。


{marker linkspdf}{...}
{title:链接到 PDF 文档}

        {mansection R lvQuickstart:快速入门}

        {mansection R lvRemarksandexamples:备注和示例}

        {mansection R lvMethodsandformulas:方法和公式}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主要}

{phang}
{opt generate} 向数据中添加四个新变量：{opt _mid}，包含中间摘要；{opt _spread}，包含差异；{opt _psigma}，包含伪标准差；以及 {opt _z2}，包含对应于特定字母值的标准正态分布的平方值。如果变量 {opt _mid}、{opt _spread}、{opt _psigma} 和 {opt _z2} 已经存在，则其内容将被替换。最多仅使用每个变量的前 11 个观察值；其余观察值包含缺失。如果 {varlist} 指定了多个变量，则新创建的变量仅包含最后一个指定变量的结果。{opt generate} 选项不能与 {cmd:by} 前缀一起使用。

{phang}
{opt tail(#)} 指示应显示字母值的尾部密度的反函数：2 对应于中位数（意味着每个尾部各占一半），4 对应于四分位数（大致为 25 和 75 百分位），8 对应于八分位，依此类推。{it:#} 可以指定为 4、8、16、32、64、128、256、512 或 1,024，默认值为 {it:#}，其对应的深度略大于 1。 如果计算结果超过 1,024，则默认值取为 1,024。给定智能默认值，这个选项很少被指定。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. sysuse auto}

{pstd}为 {cmd:mpg} 显示字母值{p_end}
{phang2}{cmd:. lv mpg}

{pstd}为 {cmd:mpg} 显示字母值，并生成四个新变量{p_end}
{phang2}{cmd:. lv mpg, generate}

{pstd}偏度诊断{p_end}
{phang2}{cmd:. scatter _mid _z2}

{pstd}拉长诊断{p_end}
{phang2}{cmd:. scatter _psigma _z2}


{marker results}{...}
{title:存储的结果}

{pstd}
{cmd:lv} 在 {cmd:r()} 中存储以下内容：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:r(N)}}观察值数量{p_end}
{synopt:{cmd:r(min)}}最小值{p_end}
{synopt:{cmd:r(max)}}最大值{p_end}
{synopt:{cmd:r(median)}}中位数{p_end}
{synopt:{cmd:r(l_F)}}下四分位数{p_end}
{synopt:{cmd:r(u_F)}}上四分位数{p_end}
{synopt:{cmd:r(l_E)}}下八分位数{p_end}
{synopt:{cmd:r(u_E)}}上八分位数{p_end}
{synopt:{cmd:r(l_D)}}下十六分位数{p_end}
{synopt:{cmd:r(u_D)}}上十六分位数{p_end}
{synopt:{cmd:r(l_C)}}下三十二分位数{p_end}
{synopt:{cmd:r(u_C)}}上三十二分位数{p_end}
{synopt:{cmd:r(l_B)}}下六十四分位数{p_end}
{synopt:{cmd:r(u_B)}}上六十四分位数{p_end}
{synopt:{cmd:r(l_A)}}下百二十八分位数{p_end}
{synopt:{cmd:r(u_A)}}上百二十八分位数{p_end}
{synopt:{cmd:r(l_Z)}}下二百五十六分位数{p_end}
{synopt:{cmd:r(u_Z)}}上二百五十六分位数{p_end}
{synopt:{cmd:r(l_Y)}}下五百一十二分位数{p_end}
{synopt:{cmd:r(u_Y)}}上五百一十二分位数{p_end}
{synopt:{cmd:r(l_X)}}下一千二十四分位数{p_end}
{synopt:{cmd:r(u_X)}}上一千二十四分位数{p_end}

{pstd}
下/上 8、16、...、1024 分位数仅在数据足够的情况下定义。
{p2colreset}{...}


{marker references}{...}
{title:参考文献}

{marker H1983}{...}
{phang}
霍格林，D. C. 1983。
字母值：一组选择的有序统计。在
{it:理解稳健和探索性数据分析}，
编者：D. C. 霍格林、F. 莫斯特勒和 J. W. 图基，33-57。
纽约：Wiley。

{marker T1977}{...}
{phang}
图基，J. W. 1977。
{it:探索性数据分析}。
马萨诸塞州雷丁： Addison-Wesley。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <lv.sthlp>}