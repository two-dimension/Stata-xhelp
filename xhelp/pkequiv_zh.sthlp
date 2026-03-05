{smcl}
{* *! version 1.1.9  11may2019}{...}
{viewerdialog pkequiv "dialog pkequiv"}{...}
{vieweralsosee "[R] pkequiv" "mansection R pkequiv"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] pk" "help pk_zh"}{...}
{viewerjumpto "语法" "pkequiv_zh##syntax"}{...}
{viewerjumpto "菜单" "pkequiv_zh##menu"}{...}
{viewerjumpto "描述" "pkequiv_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "pkequiv_zh##linkspdf"}{...}
{viewerjumpto "选项" "pkequiv_zh##options"}{...}
{viewerjumpto "备注" "pkequiv_zh##remarks"}{...}
{viewerjumpto "示例" "pkequiv_zh##examples"}{...}
{viewerjumpto "存储结果" "pkequiv_zh##results"}{...}
{viewerjumpto "参考文献" "pkequiv_zh##reference"}
{help pkequiv:English Version}
{hline}{...}
{p2colset 1 16 18 2}{...}
{p2col:{bf:[R] pkequiv} {hline 2}}执行生物等效性测试{p_end}
{p2col:}({mansection R pkequiv:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 16 2}
{cmd:pkequiv} {it:outcome treatment period sequence id} {ifin} [{cmd:,}
{it:options}]

{synoptset 19 tabbed}{...}
{synopthdr}
{synoptline}
{syntab :选项}
{synopt :{opth com:pare(strings:string)}}比较指定的治疗变量的两个值{p_end}
{synopt :{opt li:mit(#)}}等效限制（在 0.01 和 0.99 之间）；默认为 0.2{p_end}
{synopt :{opt le:vel(#)}}设置置信水平；默认为 {cmd:level(90)}{p_end}
{synopt :{opt fie:ller}}通过 Fieller 定理计算 CI{p_end}
{synopt :{opt sym:metric}}计算对称 CI{p_end}
{synopt :{opt ander:son}}Anderson 和 Hauck 的生物等效性假设检验{p_end}
{synopt :{opt tost}}用于生物等效性的两个单边假设检验{p_end}
{synopt :{opt nob:oot}}不估计 CI 在置信限内的概率{p_end}
{synoptline}
{p2colreset}{...}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 流行病学及相关 > 其他 > 生物等效性测试}


{marker description}{...}
{title:描述}

{pstd}
{cmd:pkequiv} 执行两个治疗的生物等效性测试。默认情况下，{cmd:pkequiv} 计算一个围绕两个治疗均值差异的标准置信区间 (CI)。{cmd:pkequiv} 还会计算围绕 0 的对称 CI 和基于 Fieller 定理的区间。此外，{cmd:pkequiv} 可以执行生物等效性的区间假设检验。

{pstd}
{cmd:pkequiv} 是 pk 命令之一。在阅读此条目之前，请先阅读 {help pk_zh}。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection R pkequivQuickstart:快速入门}

        {mansection R pkequivRemarksandexamples:备注与示例}

        {mansection R pkequivMethodsandformulas:方法与公式}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:选项}

{phang}
{opth compare:(strings:string)} 指定要测试的两个治疗的等效性。有时可能有多个治疗，但只能在任意两个治疗之间确定等效性。

{phang}
{opt limit(#)} 指定等效限制。默认为 0.2。等效限制只能对称改变；例如，不可以在同一测试中设定 0.15 的下限和 0.2 的上限。

{phang}
{opt level(#)} 指定置信水平，作为百分比，用于 CI。默认为 {cmd:level(90)}。此设置不受 {cmd:set level} 命令的控制。

{phang}
{opt fieller} 指定计算基于 Fieller 定理的 CI。

{phang}
{opt symmetric} 指定计算对称 CI。

{phang}
{opt anderson} 指定计算 {help pkequiv##AH1983:Anderson 和 Hauck (1983)} 的生物等效性假设检验。计算基于 Fieller 定理的 CI 或围绕 0 的对称 CI 时将忽略此选项。

{phang}
{opt tost} 指定计算两个单边假设检验的生物等效性。计算基于 Fieller 定理的 CI 或围绕 0 的对称 CI 时将忽略此选项。

{phang}
{opt noboot} 防止估计 CI 位于等效限制内的概率。如果未指定此选项，系统将通过对数据进行重采样来估计此概率。


{marker remarks}{...}
{title:备注}

{pstd}
{cmd:pkequiv} 旨在基于来自交叉实验的数据进行生物等效性测试。{cmd:pkequiv} 要求用户指定 {it:outcome}、{it:treatment}、{it:period}、{it:sequence} 和 {it:id} 变量。数据格式必须与 {help pkshape_zh} 生成的格式相同。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse pkdata3}{p_end}
{phang2}{cmd:. set seed 123}

{pstd}计算生物等效性测试{p_end}
{phang2}{cmd:. pkequiv outcome treat period seq id}{p_end}

{phang}计算 Schuirmann 的两个单边测试{p_end}
{phang2}{cmd:. pkequiv outcome treat period seq id, tost}

{phang}计算 Anderson 和 Hauck 测试{p_end}
{phang2}{cmd:. pkequiv outcome treat period seq id, anderson}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:pkequiv} 将以下内容存储在 {cmd:r()} 中：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 数量化变量}{p_end}
{synopt:{cmd:r(stddev)}}两个序列的周期差异的合并样本标准差{p_end}
{synopt:{cmd:r(uci)}}经典 CI 的上限{p_end}
{synopt:{cmd:r(lci)}}经典 CI 的下限{p_end}
{synopt:{cmd:r(delta)}}用于计算对称 CI 的 delta 值{p_end}
{synopt:{cmd:r(u3)}}Fieller 的 CI 的上限{p_end}
{synopt:{cmd:r(l3)}}Fieller 的 CI 的下限{p_end}
{p2colreset}{...}


{marker reference}{...}
{title:参考文献}

{marker AH1983}{...}
{phang}
Anderson, S. 和 W. W. Hauck. 1983. 一种新的临床试验生物等效性检验程序。
{it:通讯统计--理论与方法} 12: 2663-2692.
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <pkequiv.sthlp>}