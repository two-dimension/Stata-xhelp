{smcl}
{* *! version 1.0.12  20sep2018}{...}
{viewerdialog tebalance "dialog tebalance"}{...}
{vieweralsosee "[TE] tebalance box" "mansection TE tebalancebox"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TE] tebalance" "help tebalance_zh"}{...}
{vieweralsosee "[TE] teffects nnmatch" "help teffects nnmatch"}{...}
{vieweralsosee "[TE] teffects overlap" "help teffects overlap"}{...}
{vieweralsosee "[TE] teffects psmatch" "help teffects psmatch"}{...}
{viewerjumpto "语法" "tebalance box##syntax"}{...}
{viewerjumpto "菜单" "tebalance box##menu"}{...}
{viewerjumpto "描述" "tebalance box##description"}{...}
{viewerjumpto "PDF文档链接" "tebalance_box_zh##linkspdf"}{...}
{viewerjumpto "选项" "tebalance box##options"}{...}
{viewerjumpto "示例" "tebalance box##example"}
{help tebalance_box:English Version}
{hline}{...}
{p2colset 1 23 25 2}{...}
{p2col:{bf:[TE] tebalance box} {hline 2}}协变量平衡盒图{p_end}
{p2col:}({mansection TE tebalancebox:查看完整PDF手册条目}){p_end}


{marker syntax}{...}
{title:语法}

{pstd}
倾向得分的盒图

{p 8 12 2}
{cmd:tebalance} {cmd:box} [{cmd:,} {it:选项}]


{pstd}
协变量的盒图

{p 8 12 2}
{cmd:tebalance} {cmd:box} {it:变量名} [{cmd:,} {it:选项}]


{synoptset 25 tabbed}{...}
{marker omodel}{...}
{synopthdr}
{synoptline}
{syntab:主选项}
{synopt :{it:{help graph box##boxlook_options:boxlook_options}}}{cmd:graph box} 选项控制盒子的外观{p_end}
{synopt :{it:{help graph box##legending_options:legending_options}}}{cmd:graph box} 选项控制变量标签的显示{p_end}
{synopt :{it:{help graph box##axis_options:axis_options}}}{cmd:graph box} 选项控制数值y轴的标签{p_end}
{synopt :{it:{help graph box##title_and_other_options:title_and_other_options}}}{cmd:graph box} 选项控制标题、附加文本、宽高比等{p_end}
{synopt :{it:{help by_option_zh}}} {cmd:by()} 内的子选项用于控制原始样本和匹配样本的图表{p_end}
{synoptline}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 治疗效果 > 平衡 > 图表}


{marker description}{...}
{title:描述}

{pstd}
{cmd:tebalance box} 生成盒图，用于检查在运行 {helpb teffects nnmatch} 和 
{helpb teffects psmatch} 后匹配样本的平衡情况。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection TE tebalanceboxQuickstart:快速入门}

        {mansection TE tebalanceboxRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主选项}

{phang}
{it:boxlook_options} 是在 {it:{help graph box##boxlook_options:boxlook_options}} 中文档化的任何选项 
在 {manhelp graph_box G-2:graph box} 中。

{phang}
{it:legending_options} 是在 {it:{help graph box##legending_options:legending_options}} 中文档化的任何选项 
在 {manhelp graph_box G-2:graph box} 中。

{phang}
{it:axis_options} 是在 {it:{help graph box##axis_options:axis_options}} 中文档化的任何选项 
在 {manhelp graph_box G-2:graph box} 中。

{phang}
{it:title_and_other_options} 是除 {cmd:by()} 外的任何选项，文档化在 
{it:{help graph box##title_and_other_options:title_and_other_options}} 中
在 {manhelp graph_box G-2:graph box} 中。 {cmd:tebalance box} 使用 {cmd:by()} 来
区分原始样本和匹配样本，一些 {it:twoway_options} 将被重复为 {cmd:graph} 的子选项，可能更好地指定为
{cmd:byopts()}。

{phang}
{it:by_options} 是文档中 {it:byopts} 的任何选项 
在 {manhelpi by_options G-3} 中。 {cmd:byopts()} 通常影响整个图表，
一些 {it:by_options} 可能更好地指定为 {it:twoway_options}; 见 
{manhelpi twoway_options G-3}。


{marker example}{...}
{title:示例}

{pstd}
设置
{p_end}
{phang2}{cmd:. webuse cattaneo2}

{pstd}
估计母亲吸烟行为 ({cmd:mbsmoke}) 对其子女出生体重 ({cmd:bweight}) 的影响，控制婚姻状态 ({cmd:mmarried})、母亲年龄 ({cmd:mage})、母亲在胎儿第一学期是否进行产前医生就诊 ({cmd:prenatal1}) 以及该婴儿是否是母亲的第一个孩子 ({cmd:fbaby}){p_end}
{phang2}{cmd:. teffects psmatch (bweight) (mbsmoke mmarried mage prenatal1 fbaby), generate(matchv)}

{pstd}
现在我们来看盒图{p_end}
{phang2}{cmd:. tebalance box mage}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <tebalance_box.sthlp>}