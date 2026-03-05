{smcl}
{* *! version 1.1.10  19oct2017}{...}
{viewerdialog "kap (2 raters)" "dialog kap_uniq"}{...}
{viewerdialog kapwgt "dialog kapwgt"}{...}
{viewerdialog "kap (2+ raters)" "dialog kap_nonuniq"}{...}
{viewerdialog kappa "dialog kappa"}{...}
{vieweralsosee "[R] kappa" "mansection R kappa"}{...}
{viewerjumpto "Syntax" "kappa_zh##syntax"}{...}
{viewerjumpto "Menu" "kappa_zh##menu"}{...}
{viewerjumpto "Description" "kappa_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "kappa_zh##linkspdf"}{...}
{viewerjumpto "Options" "kappa_zh##options"}{...}
{viewerjumpto "Remarks" "kappa_zh##remarks"}{...}
{viewerjumpto "Examples" "kappa_zh##examples"}{...}
{viewerjumpto "Stored results" "kappa_zh##results"}
{help kappa:English Version}
{hline}{...}
{p2colset 1 14 16 2}{...}
{p2col:{bf:[R] kappa} {hline 2}}评估者间一致性{p_end}
{p2col:}({mansection R kappa:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{phang}
评估者间一致性，两个独立评估者

{p 8 12 2}
{cmd:kap} {it:{help varname_zh:varname1}} {it:{help varname_zh:varname2}} {ifin}
[{it:{help kappa##weight:权重}}]
[{cmd:,} {it:{help kappa##options_table:选项}}]


{phang}
用于加权不一致的权重

{p 8 15 2}
{cmd:kapwgt} {it:wgtid} [{cmd:1} {cmd:\} {it:#} {cmd:1} [{cmd:\} {it:#}
{it:#} {cmd:1} {it:...}]]


{phang}
评估者间一致性，非独立评估者，变量记录每个评估者的评分

{p 8 12 2}
{cmd:kap} {it:{help varname_zh:varname1}} {it:{help varname_zh:varname2}} {it:{help varname_zh:varname3}} [{it:...}] {ifin}
[{it:{help kappa##weight:权重}}]


{phang}
评估者间一致性，非独立评估者，变量记录评分频率

{p 8 14 2}
{cmd:kappa} {varlist} {ifin}


{synoptset 14 tabbed}{...}
{marker options_table}{...}
{synopthdr}
{synoptline}
{syntab :主选项}
{synopt :{opt t:ab}}显示评估表{p_end}
{synopt :{opt w:gt(wgtid)}}指定如何加权不一致；有关选择，可参见 
          {it:{help kappa##options:选项}}{p_end}
{synopt :{opt a:bsolute}}将评分类别视为绝对{p_end}
{synoptline}
{p2colreset}{...}
{marker weight}{...}
{p 4 6 2}
{opt fweight}是允许的；见 {help weight_zh}。


{marker menu}{...}
{title:菜单}

    {title:kap: 两个独立评估者}

{phang2}
{bf:统计 > 流行病学和相关 > 其他 >}
     {bf:评估者间一致性，两个独立评估者}

    {title:kapwgt}

{phang2}
{bf:统计 > 流行病学和相关 > 其他 >}
      {bf:为上述（kap）定义权重}

    {title:kap: 非独立评估者}

{phang2}
{bf:统计 > 流行病学和相关 > 其他 >}
      {bf:评估者间一致性，非独立评估者}

    {title:kappa}

{phang2}
{bf:统计 > 流行病学和相关 > 其他 >}
       {bf:评估者间一致性，具有频率的非独立评估者}


{marker description}{...}
{title:描述}

{pstd}
{cmd:kap} 和 {cmd:kappa} 计算评估者间一致性的卡帕统计量。 {cmd:kap} 为两个独立评估者或至少两个非独立评估者计算统计量。 {cmd:kappa} 仅计算非独立评估者的统计量，但它处理评分频率记录的情况。 {cmd:kapwgt} 定义 {cmd:kap} 在衡量不一致性的重要性时使用的权重。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection R kappaQuickstart:快速开始}

        {mansection R kappaRemarksandexamples:备注和示例}

        {mansection R kappaMethodsandformulas:方法和公式}

{pstd}
上述章节不包括在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主选项}

{phang}
{opt tab} 显示两个评估者的评估表。

{phang}
{opt wgt(wgtid)} 指定使用 {it:wgtid} 对不一致进行加权。
您可以使用 {cmd:kapwgt} 定义自己的权重；{opt wgt()} 然后指定用户定义的矩阵名称。例如，您可以定义

{phang3}
{cmd:. kapwgt mine 1 \ .8 1 \ 0 .8 1 \ 0 0 .8 1}

{pmore}
然后 

{phang3}
{cmd:. kap rata radb, wgt(mine)}

{pmore}
另外，还有两种预定义权重可用。

{pmore}
{cmd:wgt(w)} 指定权重为 1-|i-j|/(k-1)，
  其中 i 和 j 为两个评估者评分的行和列索引，k 为最大可能评分数量。

{pmore}
{cmd:wgt(w2)} 指定权重为 1 - {c -(}(i-j)/(k-1){c )-}^2。

{phang}
{cmd:absolute} 仅在同时指定了 {opt wgt()} 时相关。  {opt absolute} 选项修改 i、j 和 k 的定义以及在用户定义的加权矩阵中找到相应条目的方式。当不指定 {opt absolute} 时，i 和 j 指的是行和列索引，而不是评分本身。假设评分记录为 {c -(}0,1,1.5,2{c )-}。共有四个评分；k=4，并且在上述公式中 i 和 j 仍然是 1、2、3 和 4。索引 3，例如，对应评分=1.5。该系统方便，但对于某些数据可能导致问题。

{pmore}
当指定 {opt absolute} 时，所有评分必须为整数，并且必须从集合 {c -(}1,2,3,...{c )-} 编码。不需要使用所有值；未出现的整数值被简单地假定为未观察到的值。


{marker remarks}{...}
{title:备注}

{pstd}
您有关于个人患者的数据。 有两个评估者，可能的评分为 1、2、3 和 4，但没有一个评估者使用过评分 3。
在这里 {cmd:kap} 将确定评分来自集合 {c -(}1,2,4{c )-}，因为那是唯一观察到的值。 {cmd:kap} 将期望用户定义的加权矩阵为 3x3，如果不是， {cmd:kap} 将发出错误信息。在基于公式的权重中， {cmd:wgt(w)} 和 {cmd:wgt(w2)}，计算将基于 i,j = 1,2,3 对应于观察到的三种评分 
{c -(}1,2,4{c )-}。

{pstd}
指定 {cmd:absolute} 选项将明确评分是 1、2、3 和 4；恰好是评分==3 从未被分配。如果还指定了用户定义的加权矩阵， {cmd:kap} 将期望其为 4x4 或更大（更大是因为可以考虑评分为 1、2、3、4、5，...，恰好是评分 5、6、... 从未观察到，就像评分==3 未被观察到一样）。在基于公式的权重中，计算将基于 i,j = 1,2,4。

{pstd}
如果在数据中观察到了所有可能的评分，指定 {cmd:absolute} 则没有区别。


{marker examples}{...}
{title:示例：两个评估者}

{phang2}{cmd:. webuse rate2}{p_end}
{phang2}{cmd:. kap rada radb}{p_end}
{phang2}{cmd:. kap rada radb, tab}{p_end}
{phang2}{cmd:. kap rada radb, wgt(w)}{space 8}(加权卡帕，预定义权重 w){p_end}
{phang2}{cmd:. kap rada radb, wgt(w) absolute}{space 12}(一些评分未被观察)

{pstd}
假设两个评估者将患者分为四类。您希望使用以下加权矩阵：

{center:评估者 A {c |}  正常  良性  怀疑  癌症}
{center:{hline 8}{c +}{hline 33}}
{center: 正常 {c |}    1       .8       0        0  }
{center: 良性 {c |}   .8        1       0        0  }
{center:怀疑 {c |}    0        0       1       .8  }
{center: 癌症 {c |}    0        0      .8        1  }

    您输入

{phang2}{cmd:. kapwgt xm 1 \ .8 1 \ 0 0 1 \ 0 0 .8 1} {space 13} (定义矩阵){p_end}
{phang2}{cmd:. kapwgt xm} {space 27} (打印矩阵，检查是否正确){p_end}
{phang2}{cmd:. kap rada radb, wgt(xm)} {space 17} (计算加权卡帕)

{phang2}{cmd:. kap rada radb, wgt(xm) absolute} {space 9} (一些评分未被观察)


{title:示例：两个以上评估者，两个评分}

{phang2}{cmd:. webuse p612}{p_end}
{phang2}{cmd:. gen neg = raters - pos}{p_end}
{phang2}{cmd:. kappa pos neg}

{pstd}
{cmd:pos} 记录评估“正面”的评估者数量，{cmd:neg} 记录评估“负面”的评估者数量。

{pstd}
{cmd:pos} 记录评估“正面”的评估者数量，{cmd:neg} 记录评估“负面”的评估者数量。


{title:示例：两个以上评估者，两个以上评分，固定评估者数量}

{phang2}{cmd:. webuse p615, clear}{p_end}
{phang2}{cmd:. kappa cat1 cat2 cat3}

{pstd}
{cmd:cat1} 记录评估类别 1 的评估者数量； {cmd:cat2}, 记录评估类别 2 的评估者数量； {cmd:cat3}, 记录评估类别 3 的评估者数量。{cmd:cat1}, {cmd:cat2} 和 {cmd:cat3} 的总和在数据中的每个观测值都是恒定的。


{title:示例：两个以上评估者，两个以上评分，评估者数量不固定}

{phang2}{cmd:. webuse rvary}{p_end}
{phang2}{cmd:. kappa cat1 cat2 cat3}

{pstd}
这与固定评估者数量的情况相同，只是 {cmd:cat1} + {cmd:cat2} + {cmd:cat3} 在观察中不是恒定的。卡帕将被计算，但没有用于检验 kappa>0 的统计量，因此不会报告任何结果。


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:kap} 和 {cmd:kappa} 在 {cmd:r()} 中存储以下内容：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:r(N)}}受试者数量 ({cmd:kap} 仅适用){p_end}
{synopt:{cmd:r(prop_o)}}观察到的一致性比例 ({cmd:kap} 仅适用){p_end}
{synopt:{cmd:r(prop_e)}}期望一致性比例 ({cmd:kap} 仅适用){p_end}
{synopt:{cmd:r(kappa)}}卡帕{p_end}
{synopt:{cmd:r(z)}}z 统计量{p_end}
{synopt:{cmd:r(se)}}卡帕统计量的标准误{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <kappa.sthlp>}