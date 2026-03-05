{smcl}
{* *! version 1.2.4  15may2018}{...}
{viewerdialog mhodds "dialog mhodds"}{...}
{vieweralsosee "[R] Epitab" "mansection R Epitab"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] bitest" "help bitest_zh"}{...}
{vieweralsosee "[R] ci" "help ci_zh"}{...}
{vieweralsosee "[R] tabulate twoway" "help tabulate_twoway_zh"}{...}
{viewerjumpto "语法" "mhodds_zh##syntax"}{...}
{viewerjumpto "菜单" "mhodds_zh##menu"}{...}
{viewerjumpto "描述" "mhodds_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "mhodds_zh##linkspdf"}{...}
{viewerjumpto "选项" "mhodds_zh##options"}{...}
{viewerjumpto "示例" "mhodds_zh##examples"}{...}
{viewerjumpto "存储结果" "mhodds_zh##results"}{...}
{viewerjumpto "参考" "mhodds_zh##reference"}
{help mhodds:English Version}
{hline}{...}
{p2colset 1 15 17 2}{...}
{p2col:{bf:[R] Epitab} {hline 2}}流行病学家用的表格 (mhodds){p_end}
{p2col:}({mansection R Epitab:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 16 2}{cmd:mhodds} {it:var_case} {it:expvar} [{it:vars_adjust}]
{ifin}
[{it:{help mhodds##weight:权重}}]
[{cmd:,} {it:{help mhodds##mhodds_options:mhodds_options}}]

{synoptset 24 tabbed}{...}
{marker mhodds_options}{...}
{synopthdr :mhodds_options}
{synoptline}
{syntab:选项}
{synopt :{cmd:by(}{varlist} [{cmd:,} {opt mis:sing}]{cmd:)}}按 {it:varlist} 分层{p_end}
{synopt :{opth b:inomial(varname)}}样本量变量{p_end}
{synopt :{opt c:ompare(v_1, v_2)}}覆盖控制变量的类别{p_end}
{synopt :{opt l:evel(#)}}设置信心水平；默认值为 {cmd:level(95)}{p_end}
{synoptline}
{p2colreset}{...}
{marker weight}{...}
{p 4 6 2}{opt fweight} 允许使用；请参见 {help weight_zh}。


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 流行病学及相关 > 流行病学家用的表格 >}
      {bf:两个类别之间的失败几率比}


{marker description}{...}
{title:描述}

{pstd}
{cmd:mhodds} 用于病例对照和横断面数据。它估计 {it:expvar} 的两个类别之间的失败几率比，控制指定的混杂变量 {it:vars_adjust}，并检验此几率比是否等于1。当 {it:expvar} 的类别超过两个且未指定 {opt compare()} 选项时，{cmd:mhodds} 假设 {it:expvar} 为定量变量，并计算趋势的1自由度检验。它还计算 {it:expvar} 增加一个单位时的对数几率比的近似估计。这是针对最大似然估计的逐步牛顿-拉夫森近似，计算为得分统计量 {it:U} 与其方差 {it:V} 的比值（{help mhodds##CH1993:Clayton 和 Hills 1993, 103}）。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection R EpitabQuickstart:快速入门}

        {mansection R EpitabRemarksandexamples:备注和示例}

        {mansection R EpitabMethodsandformulas:方法和公式}

{pstd}
以上部分未包含在本帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:选项}

{phang}
{cmd:by(}{varlist} [{cmd:,} {opt missing}]{cmd:)} 指定按 {it:varlist} 分层。 {it:varlist} 中的缺失类别将被省略，除非在 {cmd:by()} 中指定了 {cmd:missing} 选项。层内统计结果显示，然后与曼特尔-哈恩茨尔权重结合。

{phang}
{opth binomial(varname)} 提供二项频率记录的样本量（病例加对照）。对于个体和简单频率记录，此选项不使用。

{phang}
{opt compare(v_1,v_2)} 指定要比较的 {it:expvar} 类别; {it:v_1} 定义分子，{it:v_2} 定义分母。当未指定 {opt compare()} 且只有两个类别时，比较第二个类别与第一个类别；当类别超过两个时，给出控制指定混杂变量的 {it:expvar} 单位增加的几率比的近似估计。

{phang}
{opt level(#)} 指定置信区间的置信水平，单位为百分比。默认值为 {cmd:level(95)} 或由 {helpb set level} 设置。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse bdesop}

{pstd}计算控制年龄的酒精影响的几率比{p_end}
{phang2}{cmd:. mhodds case alcohol agegrp [fw=freq]}

{pstd}与上面相同，但按烟草消费水平进行计算{p_end}
{phang2}{cmd:. mhodds case alcohol agegrp [fw=freq], by(tobacco)}

{pstd}计算控制年龄的烟草影响，按酒精消费水平进行{p_end}
{phang2}{cmd:. mhodds case tobacco agegrp [fw=freq], by(alcohol)}

{pstd}创建一个新的变量，其水平对应于酒精和烟草消费的所有组合{p_end}
{phang2}{cmd:. egen alctob = group(alcohol tobacco)}

{pstd}计算最高水平的酒精和烟草消费与最低水平的几率比{p_end}
{phang2}{cmd:. mhodds case alctob [fw=freq], compare(16,1)}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:mhodds} 在 {cmd:r()} 中存储以下内容：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:r(p)}}双侧p值{p_end}
{synopt:{cmd:r(or)}}几率比{p_end}
{synopt:{cmd:r(lb_or)}}{cmd:or}的置信区间下界{p_end}
{synopt:{cmd:r(ub_or)}}{cmd:or}的置信区间上界{p_end}
{synopt:{cmd:r(chi2_hom)}}同质性卡方检验{p_end}
{synopt:{cmd:r(df_hom)}}同质性卡方检验的自由度{p_end}
{synopt:{cmd:r(chi2)}}卡方{p_end}


{marker reference}{...}
{title:参考}

{marker CH1993}{...}
{phang}
Clayton, D. G., 和 M. Hills. 1993.
{browse "http://www.stata.com/bookstore/sme.html":{it:流行病学中的统计模型}}.
牛津：牛津大学出版社。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mhodds.sthlp>}