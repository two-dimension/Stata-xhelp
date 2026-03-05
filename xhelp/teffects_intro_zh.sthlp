{smcl}
{* *! version 1.0.11  19oct2017}{...}
{viewerdialog teffects "dialog teffects"}{...}
{vieweralsosee "[TE] teffects intro" "mansection TE teffectsintro"}{...}
{vieweralsosee "[TE] teffects intro advanced " "mansection TE teffectsintroadvanced"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TE] teffects" "help teffects_zh"}{...}
{vieweralsosee "[TE] teffects multivalued" "help teffects_multivalued_zh"}{...}
{viewerjumpto "描述" "teffects intro##description"}{...}
{viewerjumpto "PDF文档链接" "teeffects_intro##linkspdf"}{...}
{viewerjumpto "备注" "teffects intro##remarks"}{...}
{viewerjumpto "视频示例" "teffects intro##video"}
{help teffects_intro:English Version}
{hline}{...}
{p2colset 1 24 26 2}{...}
{p2col:{bf:[TE] teffects intro} {hline 2}}观察数据的处理效应估计入门{p_end}
{p2col:}({mansection TE teeffectsintro:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:描述}

{pstd}
本条目提供了对处理效应估计量和 Stata 中 {cmd:teffects} 命令的非技术性介绍。高级用户可能想要查阅 
{bf:{mansection TE teffectsintroadvanced:[TE] teffects intro advanced}}
或者跳到各个命令的条目。

{pstd}
{cmd:teffects} 命令使用观察数据估计平均处理效应 (ATEs)、处理对象的平均处理效应 (ATETs) 和潜在结果均值 (POMs)。

{pstd}
处理效应可以使用回归调整 (RA)、逆概率加权 (IPW) 和“双重稳健”方法，其中包括逆概率加权回归调整 (IPWRA) 和增强逆概率权重 (AIPW)，以及采用倾向得分或最近邻匹配。

{pstd}
结果可以是连续的、二元的、计数的、分数的或非负的。处理可以是二元的或多值的。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection TE teffectsintroRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker remarks}{...}
{title:备注：快速了解估计量}

{pstd}
{cmd:teffects} 命令实施了六种处理效应估计量。我们通过展示将在我们的出生体重示例中应用它们的基本语法来介绍每种估计量。有关更多信息，请参阅每个命令的条目。


    {bf:回归调整}

{pstd}
{helpb teffects ra} 实施 RA 估计量。我们估计母亲的吸烟行为 ({cmd:mbsmoke}) 对其子女出生体重 ({cmd:bweight}) 的影响，同时控制婚姻状况 ({cmd:mmarried})、母亲年龄 ({cmd:mage})、母亲在婴儿第一孕期是否有产前医生就诊 ({cmd:prenatal1}) 以及这个婴儿是否是母亲的第一胎 ({cmd:fbaby})。我们使用线性回归（默认）来建模 {cmd:bweight}：

{phang2}{cmd:. webuse cattaneo2}{p_end}
{phang2}{cmd:. teffects ra (bweight mmarried mage prenatal1 fbaby) (mbsmoke)}


    {bf:逆概率加权}

{pstd}
{helpb teffects ipw} 实施 IPW 估计量。在这里，我们通过使用 probit 模型预测母亲的吸烟行为（作为婚姻状况、母亲年龄以及第一次孕期就医和第一胎状态的指示符的函数）来估计吸烟的影响：

{phang2}{cmd:. teffects ipw (bweight) (mbsmoke mmarried mage prenatal1 fbaby,}
         {cmd:probit)}


    {bf:逆概率加权回归调整}

{pstd}
{helpb teffects ipwra} 实施 IPWRA 估计量。我们将出生体重这一结果作为婚姻状况、母亲年龄和第一次孕期就医与第一胎状态的指示符的线性函数来建模。我们使用逻辑模型（默认）来预测母亲的吸烟行为，使用与解释变量相同的协变量：

{phang2}{cmd:. teffects ipwra (bweight mmarried mage prenatal1 fbaby)}
           {cmd:(mbsmoke mmarried mage prenatal1 fbaby)}


    {bf:增强逆概率加权}

{pstd}
{helpb teffects aipw} 实施 AIPW 估计量。在这里，我们使用与 IPWRA 估计量相同的结果和处理模型规范：

{phang2}{cmd:. teffects aipw (bweight mmarried mage prenatal1 fbaby)}
         {cmd:(mbsmoke mmarried mage prenatal1 fbaby)}


    {bf:最近邻匹配}

{pstd}
{helpb teffects nnmatch} 实施 NNM 估计量。在此示例中，我们基于婚姻状况、母亲年龄、父亲年龄，以及第一次孕期就医和第一胎状态的指示符来匹配处理组和未处理组。我们使用母亲和父亲年龄的马哈拉诺比斯距离来寻找匹配。我们对其他三个变量采用精确匹配，以确保处理组与具有相同婚姻状况和第一次孕期就医及第一胎状态指示符的未处理组相匹配。由于我们在两个连续协变量上进行匹配，因此我们要求 {cmd:teffects nnmatch} 包含一个基于这两个协变量的偏差修正项：

{phang2}{cmd:. teffects nnmatch (bweight mage fage) (mbsmoke),}
        {cmd:ematch(prenatal1 mmarried fbaby) biasadj(mage fage)}


    {bf:倾向得分匹配}

{pstd}
{helpb teffects psmatch} 实施 PSM 估计量。在这里，我们使用 probit 模型对倾向得分进行建模，将婚姻状况、母亲年龄、以及第一次孕期就医和第一胎状态的指示符作为协变量：

{phang2}{cmd:. teffects psmatch (bweight) (mbsmoke mmarried mage}
        {cmd:prenatal1 fbaby, probit)}


{marker video}{...}
{title:视频示例}

{phang2}{browse "http://www.youtube.com/watch?v=p578jxAPJT4&feature=c4-overview&list=UUVk4G4nEtBS4tLOyHqustDA":Stata 中处理效应介绍，第 1 部分}

{phang2}{browse "https://www.youtube.com/watch?v=v4l3F3BrtlQ":Stata 中处理效应介绍，第 2 部分}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <teffects_intro.sthlp>}