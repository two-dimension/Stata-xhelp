{smcl}
{* *! version 1.1.12  15may2018}{...}
{viewerdialog symmetry "dialog symmetry"}{...}
{viewerdialog symmi "dialog symmi"}{...}
{vieweralsosee "[R] symmetry" "mansection R symmetry"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] Epitab" "help epitab_zh"}{...}
{viewerjumpto "Syntax" "symmetry_zh##syntax"}{...}
{viewerjumpto "Menu" "symmetry_zh##menu"}{...}
{viewerjumpto "Description" "symmetry_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "symmetry_zh##linkspdf"}{...}
{viewerjumpto "Options" "symmetry_zh##options"}{...}
{viewerjumpto "Examples" "symmetry_zh##examples"}{...}
{viewerjumpto "Stored results" "symmetry_zh##results"}{...}
{viewerjumpto "References" "symmetry_zh##references"}
{help symmetry:English Version}
{hline}{...}
{p2colset 1 17 19 2}{...}
{p2col:{bf:[R] symmetry} {hline 2}}对称性和边际齐次性检验
{p_end}
{p2col:}({mansection R symmetry:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{pstd}
对称性和边际齐次性检验

{p 8 17 2}
{cmd:symmetry} {it:casesvar} {it:controlvar}
{ifin} 
[{it:{help symmetry##weight:权重}}]
[{cmd:,} {it:选项}]


{pstd}
对称性和边际齐次性检验的即时形式

{p 8 17 2}
{cmd:symmi} {it:#}11 {it:#}12 [{it:...}]{cmd:\} {it:#}21 {it:#}22
	[{it:...}] [{cmd:\}{it:...}]
{ifin} [{cmd:,} {it:选项}]


{synoptset 11 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:主要}
{synopt:{opt not:able}}抑制列联表的输出
{p_end}
{synopt:{opt con:trib}}报告每个非对角单元对称性的贡献
{p_end}
{synopt:{opt ex:act}}执行表对称性的精确检验
{p_end}
{synopt:{opt mh}}进行两个边际齐次性检验
{p_end}
{synopt:{opt tr:end}}执行对（对数）相对风险（RR）的线性趋势检验
{p_end}
{synopt:{opt cc}}在计算线性趋势的检验时使用连续性校正
{p_end}
{synoptline}
{p2colreset}{...}
{marker weight}{...}
{p 4 6 2}
允许使用 {opt fweight} ; 见 {help weight_zh} .
{p_end}


{marker menu}{...}
{title:菜单}

    {title:对称性} 

{phang2}
{bf:统计 > 流行病学与相关 > 其他 >}
      {bf:对称性和边际齐次性检验}

    {title:symmi}

{phang2}
{bf:统计 > 流行病学与相关 > 其他 >}
      {bf:对称性和边际齐次性检验计算器}


{marker description}{...}
{title:描述}

{pstd}
{opt symmetry} 执行渐近对称性和边际齐次性检验，以及对 K x K 表进行的精确对称性检验，在这种情况下，病例和对照是一对一匹配的（非独立性）。该测试用于分析具有多个离散水平暴露（结果）变量的匹配对病例对照数据。在遗传学中，该测试被称为传递/不平衡检验（TDT），用于检验转移和未转移父母标记等位基因与受影响儿童之间的关联（{help symmetry##SME1993:Spieldman, McGinnis 和 Ewens 1993}）。
对于 2 x 2 表，渐近检验统计量简化为 McNemar 检验统计量，精确对称性检验则产生精确的 McNemar 检验；见 {manhelp Epitab R}。对于许多暴露变量，{opt symmetry} 可以选择性地进行对数相对风险的线性趋势检验。

{pstd}
{opt symmetry} 期望数据为宽格式；即，每个观测值在变量 {it:casesvar} 和 {it:controlvar} 中包含匹配的病例和对照值。变量可以是数字或字符串。

{pstd}
{opt symmi} 是 {opt symmetry} 的即时形式。{opt symmi} 命令使用命令行中指定的值；行由 '\ ' 分隔，选项与 {opt symmetry} 相同。
有关即时命令的一般介绍，请参见 {help immed_zh}。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection R symmetryQuickstart:快速开始}

        {mansection R symmetryRemarksandexamples:备注和示例}

        {mansection R symmetryMethodsandformulas:方法和公式}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主要}

{phang}
{opt notable} 抑制列联表的输出。
默认情况下，{opt symmetry} 在输出顶部显示 n x n 列联表。

{phang}
{opt contrib} 报告每个非对角单元对整体对称性卡方的贡献。

{phang}
{opt exact} 执行表对称性的精确检验。
该选项针对稀疏表格推荐。注意：对于大型表格，精确检验需要大量时间和内存。

{phang}
{opt mh} 执行两个不需要反转方差-协方差矩阵的边际齐次性检验。

{pmore}
默认情况下，{opt symmetry} 生成 Stuart-Maxwell 检验统计量，该统计量需要反转非对角方差-协方差矩阵 V。
当表格是稀疏的时，该矩阵可能没有满秩，然后命令用广义逆 V* 替代 V^(-1)。
{opt mh} 计算不需要反转方差-协方差矩阵的可选边际齐次性统计量。这些检验在某些情况下可能更受欢迎。有关这些检验统计量的详细信息，请参见
{mansection R symmetryMethodsandformulas:{it:方法和公式}} 和
{help symmetry##BC1995:Bickeb{c o:}ller 和 Clerget-Darpoux (1995)}。

{phang}
{opt trend} 执行 (对数) 相对风险 (RR) 的线性趋势检验。该选项仅允许用于数值暴露（结果）变量，其使用应限于有序或区间尺度的测量。

{phang}
{opt cc} 指定在计算线性趋势的检验时使用连续性校正。只有当暴露变量的水平是等间距时，才应指定此校正。


{marker examples}{...}
{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse iran}{p_end}

{pstd}测试对称性{p_end}
{phang2}{cmd:. symmetry before after}{p_end}

{pstd}对称性精确检验{p_end}
{phang2}{cmd:. symmetry before after, exact}

{pstd}显示单元对对称性的贡献{p_end}
{phang2}{cmd:. symmetry before after, contrib}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse bd163}{p_end}

{pstd}指定 {cmd:fweight} 因为观察值对应于超过一个匹配对{p_end}
{phang2}{cmd:. symmetry case control [fw=count]}{p_end}

{pstd}根据现有变量 {cmd:case} 创建新变量 {cmd:ca}{p_end}
{phang2}{cmd:. encode case, gen(ca)}{p_end}

{pstd}根据现有变量 {cmd:control} 创建新变量 {cmd:co}{p_end}
{phang2}{cmd:. encode control, gen(co)}{p_end}

{pstd}进行线性趋势检验并进行连续性校正{p_end}
{phang2}{cmd:. symmetry ca co [fw=count], trend cc }{p_end}

{pstd}与上述相同，但抑制列联表的输出{p_end}
{phang2}{cmd:. symmetry ca co [fw=count], trend cc notable}{p_end}

{pstd}对称性和边际齐次性检验的即时形式{p_end}
{phang2}{cmd:. symmi 47 56 38 \ 28 61 31 \ 26 47 10}

{pstd}与上述相同，但报告每个非对角单元对称的贡献{p_end}
{phang2}{cmd:. symmi 47 56 38 \ 28 61 31 \ 26 47 10, contrib}{p_end}
    {hline}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:symmetry} 将以下内容存储在 {cmd:r()} 中：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:r(N_pair)}}匹配对的数量{p_end}
{synopt:{cmd:r(chi2)}}渐近对称性卡方{p_end}
{synopt:{cmd:r(df)}}渐近对称性自由度{p_end}
{synopt:{cmd:r(p)}}渐近对称性 p 值{p_end}
{synopt:{cmd:r(chi2_sm)}}MH (Stuart-Maxwell) 卡方{p_end}
{synopt:{cmd:r(df_sm)}}MH (Stuart-Maxwell) 自由度{p_end}
{synopt:{cmd:r(p_sm)}}MH (Stuart-Maxwell) p 值{p_end}
{synopt:{cmd:r(chi2_b)}}MH (Bickenboller) 卡方{p_end}
{synopt:{cmd:r(df_b)}}MH (Bickenboller) 自由度{p_end}
{synopt:{cmd:r(p_b)}}MH (Bickenboller) p 值{p_end}
{synopt:{cmd:r(chi2_nd)}}MH (无对角线) 卡方{p_end}
{synopt:{cmd:r(df_nd)}}MH (无对角线) 自由度{p_end}
{synopt:{cmd:r(p_nd)}}MH (无对角线) p 值{p_end}
{synopt:{cmd:r(chi2_t)}}线性趋势的卡方{p_end}
{synopt:{cmd:r(p_trend)}}线性趋势的 p 值{p_end}
{synopt:{cmd:r(p_exact)}}精确对称性 p 值{p_end}
{p2colreset}{...}


{marker references}{...}
{title:参考文献}

{marker BC1995}{...}
{phang}
Bickeb{c o:}ller, H. 和 F. Clerget-Darpoux. 1995. 多等位基因标记的等位基因和基因型传递/不平衡检验的统计特性。 {it:遗传流行病学} 12: 865-870。

{marker SME1993}{...}
{phang}
Spieldman, R. S., R. E. McGinnis 和 W. J. Ewens. 1993.
链接不平衡的传递检验：胰岛素基因区域和胰岛素依赖性糖尿病（IDDM）。
{it:美国人类遗传学杂志} 52: 506-516。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <symmetry.sthlp>}