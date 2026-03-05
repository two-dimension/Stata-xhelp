{smcl}
{* *! version 1.0.9  14may2018}{...}
{viewerdialog "SEM Builder" "stata sembuilder"}{...}
{vieweralsosee "[SEM] sem option method()" "mansection SEM semoptionmethod()"}{...}
{findalias assemmlmv}{...}
{vieweralsosee "[SEM] Intro 4" "mansection SEM Intro4"}{...}
{vieweralsosee "[SEM] Intro 8" "mansection SEM Intro8"}{...}
{vieweralsosee "[SEM] Intro 9" "mansection SEM Intro9"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[SEM] sem" "help sem_command_zh"}{...}
{viewerjumpto "语法" "sem_option_method_zh##syntax"}{...}
{viewerjumpto "描述" "sem_option_method_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "sem_option_method_zh##linkspdf"}{...}
{viewerjumpto "选项" "sem_option_method_zh##options"}{...}
{viewerjumpto "备注" "sem_option_method_zh##remarks"}{...}
{viewerjumpto "示例" "sem_option_method_zh##examples"}
{help sem_option_method:English Version}
{hline}{...}
{p2colset 1 30 32 2}{...}
{p2col:{bf:[SEM] sem option method()} {hline 2}}指定方法和 VCE 的计算{p_end}
{p2col:}({mansection SEM semoptionmethod():查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{cmd:sem} ... [{cmd:,} ... {opt method(method)} {opt vce(vcetype)} ...] 

{marker method}{...}
{synoptset 30}{...}
{synopthdr:方法}
{p2line}
{p2col :{opt ml}}最大似然估计；默认值{p_end}
{p2col :{opt mlmv}}{opt ml} 与缺失值{p_end}
{p2col :{opt adf}}渐近分布自由{p_end}
{p2line}

{marker vcetype}{...}
{synoptset 30}{...}
{synopthdr:vcetype}
{p2line}
{p2col :{opt oim}}观察信息矩阵；默认值{p_end}
{p2col :{opt eim}}期望信息矩阵{p_end}
{p2col :{opt opg}}梯度的外积{p_end}
{p2col :{opt sbentler}}Satorra-Bentler 估计量{p_end}
{p2col :{opt r:obust}}Huber/White/三明治估计量{p_end}
{synopt :{cmdab:cl:uster} {it:clustvar}}广义的 Huber/White/三明治估计量{p_end}
{synopt :{cmdab:boot:strap} [{cmd:,} {it:{help bootstrap_zh:bootstrap_options}}]}自助估计{p_end}
{synopt :{cmdab:jack:knife} [{cmd:,} {it:{help jackknife_zh:jackknife_options}}]}杰克刀估计{p_end}
{p2line}
{p 4 6 2}
{cmd:pweight}s 和 {cmd:iweight}s 不能与 {cmd:sbentler} 一起使用。
{p_end}

{phang}
以下 {opt method()} 和 {opt vce()} 的组合是允许的：

           {c |} {cmd:oim}   {cmd:eim}   {cmd:opg}  {cmd:sbentler}  {cmd:robust}  {cmd:cluster}  {cmd:bootstrap}  {cmd:jackknife}
      {hline 5}{c +}{hline 65}
      {cmd:ml}   {c |}   x     x     x      x        x       x         x         x
      {cmd:mlmv} {c |}   x     x     x               x       x         x         x
      {cmd:adf}  {c |}   x     x                                       x         x
      {hline 5}{c BT}{hline 65}


{marker description}{...}
{title:描述}

{pstd}
{cmd:sem} 选项 {opt method()} 指定用于获得估计参数的方法。

{pstd}
{cmd:sem} 选项 {opt vce()} 指定用于获取估计的方差-协方差矩阵（VCE）的方法，该矩阵包括报告的标准误差。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection SEM semoptionmethod()备注和示例:备注和示例}

{pstd}
以上部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{opth method:(sem_option_method##method:方法)} 指定用于获得参数估计的方法。默认值为 {cmd:method(ml)}。

{phang}
{opth vce:(sem_option_method##vcetype:vcetype)} 指定用于获取 VCE 的技术。默认值为 {cmd:vce(oim)}。

  
{marker remarks}{...}
{title:备注}

{pstd}
有关最大似然和渐近分布自由估计方法的更多信息，请参见 {manlink SEM Intro 4}。  

{pstd}
{manlink SEM Intro 8} 概述了稳健标准误和集群稳健标准误，而 {manlink SEM Intro 9} 讨论了所有其他标准误的估计方法。  

{pstd}
请注意，当指定 {cmd:vce(sbentler)} 时，会报告 Satorra-Bentler 标准化卡方检验以及相应的稳健标准误。 Satorra-Bentler 标准化卡方检验调整了模型与饱和模型的检验，以便对非正态数据稳健。 请参见 {manlink SEM 示例 1}，Satorra-Bentler 标准化卡方检验。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse cfa_missing}{p_end}

{pstd}使用最大似然估计拟合 CFA 模型{p_end}
{phang2}{cmd:. sem (test1 test2 test3 test4 <- X), method(ml)}{p_end}

{pstd}计算稳健标准误{p_end}
{phang2}{cmd:. sem (test1 test2 test3 test4 <- X), method(ml) vce(robust)}{p_end}

{pstd}报告 Satorra-Bentler 标准化卡方检验和标准误{p_end}
{phang2}{cmd:. sem (test1 test2 test3 test4 <- X), method(ml) vce(sbentler)}

{pstd}使用 FIML 拟合模型：将缺失值视为随机缺失{p_end}
{phang2}{cmd:. sem (test1 test2 test3 test4 <- X), method(mlmv)}{p_end}

{pstd}使用渐近分布自由方法拟合模型{p_end}
{phang2}{cmd:. sem (test1 test2 test3 test4 <- X), method(adf)}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <sem_option_method.sthlp>}