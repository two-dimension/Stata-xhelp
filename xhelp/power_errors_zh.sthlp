{smcl}
{* *! version 1.1.1  27feb2019}{...}
{vieweralsosee "[PSS-2] power" "help power_zh"}{...}
{vieweralsosee "[PSS-3] ciwidth" "help ciwidth_zh"}{...}
{vieweralsosee "[PSS-5] Glossary" "help pss_glossary_zh"}{...}
{viewerjumpto "错误代码" "power_errors_zh##errors"}
{help power_errors:English Version}
{hline}{...}
{title:为什么功率表或置信区间宽度表有缺失条目？}

{pstd}
您为一组多个值执行了 {manhelp power PSS-2:power} 或
{manhelp ciwidth PSS-3:ciwidth} 命令，得到的表格中包含缺失条目。表格中的缺失条目表明某些指定参数值的组合计算失败。对于 {cmd:power}，这种情况通常发生在您为 {help pss_glossary##def_nullval:null parameter} 和 {help pss_glossary##def_altval:alternative parameter} 指定了重叠的值；请参见 {help power_errors##power:{it:Missing table entries for the power command}}。对于 {cmd:ciwidth}，例如，当您指定的样本大小大于总体大小时，就会发生这种情况；请参见 {help power_errors##ciwidth:{it:Missing table entries for the ciwidth command}}。

{marker power}{...}
{title:功率命令的缺失表格条目}

{pstd}
假设您输入了以下内容：

{pstd}
{cmd: . power onemean (0 1) (1 2)}
{p_end}

    执行迭代中...

    针对单一样本均值检验估计样本大小
    t 检验
    Ho: m = m0  对比  Ha: m != m0

      +---------------------------------------------------------+
      |   alpha   power       N   delta      m0      ma      sd |
      |---------------------------------------------------------|
      |     .05      .8      10       1       0       1       1 |
      |     .05      .8       5       2       0       2       1 |
      |     .05      .8       .       0       1       1       1 |
      |     .05      .8      10       1       1       2       1 |
      +---------------------------------------------------------+
      警告：部分计算失败；分别执行每个计算以查看具体错误

{pstd}
第三行的样本大小 {cmd:N} 的值缺失。为了调查导致该计算失败的原因，我们可以通过输入以下命令来查看错误矩阵：

{pstd}
{cmd:. matrix list r(error_codes)}

    r(error_codes)[1,4]
        c1  c2  c3  c4
    r1   0   0  14   0

{pstd}
矩阵的第三列包含错误代码 14。我们可以在下面 {help power_errors##errors:table} 的错误描述中找到该错误的对应描述。错误代码 14 对应于 "差异无效" 的错误情况，这可能在多种情况下出现，但通常意味着指定的参考值和比较值相同。

{pstd}
为了确定此错误发生的具体情况，我们使用来自第三行的参数值重新运行 {cmd:power} 命令。

{pstd}
{cmd: . power onemean 1 1}
{p_end}
{pstd}
{red:零假设均值和替代均值相等；这是不允许的}{p_end}
{pstd}{search r(198):r(198);}{p_end}

{pstd}
指定的零均值和替代均值相同，这是 {cmd:power onemean} 命令所不允许的。

{marker ciwidth}{...}
{title:ciwidth命令的缺失表格条目}

{pstd}
假设您输入了以下内容：

{pstd}
{cmd: . ciwidth onemean, n(100(20)200) probwidth(0.8) fpc(180)}
{p_end}

    针对单均值置信区间的估计宽度
    学生 t 双侧置信区间

      +--------------------------------------------------+
      |   level       N Pr_width   width      sd     fpc |
      |--------------------------------------------------|
      |      95     100       .8   .2796       1     180 |
      |      95     120       .8   .2196       1     180 |
      |      95     140       .8   .1652       1     180 |
      |      95     160       .8   .1088       1     180 |
      |      95     180       .8       .       1     180 |
      |      95     200       .8       .       1     180 |
      +--------------------------------------------------+
      警告：部分计算失败；分别执行每个计算以查看具体错误

{pstd}
第五和第六行的置信区间宽度 {cmd:width} 的值缺失。为了调查导致这些计算失败的原因，我们可以通过输入以下命令查看错误矩阵：

{pstd}
{cmd:. matrix list r(error_codes)}

	r(error_codes)[1,6]
    	     c1  c2  c3  c4  c5  c6
	r1   0   0   0   0  16  16

{pstd}
矩阵的第五和第六列包含错误代码 16。我们可以在 {help power_errors##errors:table} 中找到该错误的对应描述，该表包含由 {cmd:power} 和 {cmd:ciwidth} 命令产生的错误。错误代码 16 对应于 "有限总体校正无效" 的错误情况。样本大小应小于总体大小。在这种情况下，样本大小等于或大于总体大小。

{pstd}
为了确定此错误发生的具体情况，我们使用第六行的参数值重新运行 {cmd:ciwidth} 命令。

{pstd}
{cmd: . ciwidth onemean, n(200) probwidth(0.8) fpc(180)}
{p_end}
{pstd}
{red: {bf:fpc()}: 配置不正确；}{p_end}
{p 8 12 2}
{red: {bf:fpc()} 必须包含 [0,1) 范围内表示抽样率的值或}{p_end}
{p 8 12 2}
{red: 大于样本大小的值以表示总体大小。}{p_end}
{p 8 12 2}
{red: {bf:fpc()} 不能同时包含抽样率和总体大小的混合值。}{p_end}
{pstd}{search r(198):r(198);}{p_end}

{marker errors}{...}
{title:错误代码和错误描述}

{p2colset 9 20 22 2}{...}
{synopt:错误}{p_end}
{synopt:代码}错误文本{p_end}
{p2line}
{synopt :0}(未遇到错误){p_end}

{synopt :10-39}输入错误{p_end}
{synopt :11}样本大小无效{p_end}
{synopt :12}相关性无效{p_end}
{synopt :13}均值无效{p_end}
{synopt :14}差异无效{p_end}
{synopt :15}比例无效{p_end}
{synopt :16}有限总体校正无效{p_end}
{synopt :17}比例无效{p_end}
{synopt :18}方差或标准差无效{p_end}
{synopt :19}比例和无效{p_end}
{synopt :20}协方差矩阵不是正定的{p_end}
{synopt :21}零对比等于 C*mu{p_end}
{synopt :22}delta 太小{p_end}
{synopt :23}优势比无效{p_end}
{synopt :24}风险比无效{p_end}
{synopt :25}对数风险比无效{p_end}
{synopt :26}相关性过于极端{p_end}
{synopt :27}功率过小{p_end}
{synopt :28}风险无效{p_end}
{synopt :29}系数无效{p_end}
{synopt :30}趋势无效{p_end}
{synopt :31}误差项的标准差无效{p_end}
{synopt :32}R平方无效{p_end}
{synopt :33}组内相关性无效{p_end}
{synopt :34}簇大小的变异系数无效{p_end}

{synopt :40-69}计算错误{p_end}
{synopt :41}计算的样本大小无效{p_end}
{synopt :42}计算的比例无效{p_end}
{synopt :43}计算的差异无效{p_end}
{synopt :44}计算的相关性无效{p_end}
{synopt :45}计算的重复测量 Geisser-Greenhouse 校正无效{p_end}
{synopt :46}计算的样本大小小于 2{p_end}
{synopt :47}计算的簇数量不是正数{p_end}
{synopt :50}迭代搜索的初始值无效{p_end}
{synopt :51}样本大小初始值超过总体大小{p_end}
{synopt :55}此计算的操作无效{p_end}
{synopt :60}功率计算失败（针对 {cmd:power}），或
	    精度计算失败（针对 {cmd:ciwidth}），或置信区间宽度计算失败（针对 {cmd:ciwidth}）{p_end}
{synopt :61}计算的样本大小未达到目标功率（针对 {cmd:power}），或目标精度（针对 {cmd:ciwidth}），或目标置信区间宽度的概率（针对 {cmd:ciwidth}）{p_end}
{synopt :62}给定的簇数量或样本大小无法达到请求的功率{p_end}

{synopt :70-99}迭代解错误{p_end}
{synopt :74}初始值为缺失值{p_end}
{synopt :76}达到最大迭代次数{p_end}
{synopt :77}评估功率函数（针对 {cmd:power}）、精度函数（针对 {cmd:ciwidth}）或置信区间宽度函数（针对 {cmd:ciwidth}）时遇到缺失值{p_end}
{synopt :89}功率函数（针对 {cmd:power}）、精度函数（针对 {cmd:ciwidth}）或置信区间宽度函数（针对 {cmd:ciwidth}）在初值下无法评估{p_end}
{synopt :90}在初始值下无法计算导数{p_end}
{synopt :91}搜索找到功率函数（针对 {cmd:power}）、精度函数（针对 {cmd:ciwidth}）或置信区间宽度的局部最小值（针对 {cmd:ciwidth}）{p_end}
{synopt :92}无法计算导数{p_end}
{synopt :97}功率函数（针对 {cmd:power}）、精度函数（针对 {cmd:ciwidth}）或置信区间宽度函数（针对 {cmd:ciwidth}）发生致命错误{p_end}
{p2line}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <power_errors.sthlp>}