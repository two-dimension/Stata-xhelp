{smcl}
{* *! version 2.1.3  19oct2017}{...}
{viewerdialog "SEM Builder" "stata sembuilder"}{...}
{vieweralsosee "[SEM] sem 和 gsem 选项 covstructure()" "mansection SEM semandgsemoptioncovstructure()"}{...}
{findalias assemcu}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[SEM] sem" "help sem_command_zh"}{...}
{vieweralsosee "[SEM] gsem" "help gsem_command_zh"}{...}
{vieweralsosee "[SEM] sem 和 gsem 路径符号" "help sem_and_gsem_path_notation_zh"}{...}
{viewerjumpto "语法" "sem_and_gsem_option_covstructure_zh##syntax"}{...}
{viewerjumpto "描述" "sem_and_gsem_option_covstructure_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "sem_and_gsem_option_covstructure_zh##linkspdf"}{...}
{viewerjumpto "选项" "sem_and_gsem_option_covstructure_zh##option"}{...}
{viewerjumpto "备注" "sem_and_gsem_option_covstructure_zh##remarks"}{...}
{viewerjumpto "示例" "sem_and_gsem_option_covstructure_zh##examples"}
{help sem_and_gsem_option_covstructure:English Version}
{hline}{...}
{p2colset 1 46 48 2}{...}
{p2col:{bf:[SEM] sem 和 gsem 选项 covstructure()} {hline 2}}指定协方差限制{p_end}
{p2col:}({mansection SEM semandgsemoptioncovstructure():查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{cmd:sem} ... [{cmd:,} ... {cmdab:covstr:ucture(}{it:{help sem and gsem option covstructure##variables:variables}}{cmd:,}
                    {it:{help sem and gsem option covstructure##structure:structure}}{cmd:)} ...]

{p 8 12 2}
{cmd:gsem} ... [{cmd:,} ... {cmdab:covstr:ucture(}{it:{help sem and gsem option covstructure##variables:variables}}{cmd:,} {it:{help sem and gsem option covstructure##structure:structure}}{cmd:)} ...]

{marker variables}{...}
{phang}
其中 {it:variables} 是以下之一

{p 8 12 2}
1.  模型中的一组（子集）外生变量 ({cmd:sem}) 或
    潜在外生变量 ({cmd:gsem})，例如：{p_end}

{p 12 14 2}       
{cmd:. sem ..., ... covstruct(x1 x2,} {it:structure}{cmd:)}{p_end}
                            
{p 12 14 2}       
{cmd:. sem ..., ... covstruct(L1 L2,} {it:structure}{cmd:)}{p_end}
                            
{p 12 14 2}       
{cmd:. gsem ..., ... covstruct(L1 L2,} {it:structure}{cmd:)}{p_end}
                            
{p 8 12 2}
2.  {opt _OEx}，表示模型中的所有观察的外生变量
      （仅适用于 {cmd:sem}）{p_end}
        
{p 8 12 2}
3.  {opt _LEx}，表示模型中的所有潜在外生变量
    （包含任何多层次的潜在外生变量，在 {cmd:gsem} 的情况下）{p_end}

{p 8 12 2}
4.  {opt _Ex}，表示模型中的所有外生变量
    （仅适用于 {cmd:sem}）{p_end}

{phang}
或 {it:variables} 是以下之一
                                
{p 8 12 2}
1.  模型中的一组（子集）误差变量，例如：{p_end}
        
{p 12 14 2}       
{cmd:. sem ..., ... covstruct(e.y1 e.y2 e.Aspect,}
{it:structure}{cmd:)}{p_end}

{p 8 12 2}
2.  {opt e._OEn}，表示与模型中的观察内生变量相关的所有误差变量{p_end}

{p 8 12 2}
3.  {opt e._LEn}，表示与模型中的潜在内生变量相关的所有误差变量{p_end}

{p 8 12 2}
4.  {opt e._En}，表示模型中的所有误差变量{p_end}

{marker structure}{...}
{phang}
其中 {it:structure} 是

{p2colset 8 30 32 2}{...}
{p2col:{it:structure}}描述{p_end}
{p2line}
{p2col :{opt diag:onal}}所有方差不受限制{p_end}
{p2col: }所有协方差固定为 {cmd:0}{p_end}

{p2col :{opt un:structured}}所有方差不受限制 {p_end}
{p2col: }所有协方差不受限制{p_end}

{p2col :{opt id:entity}}所有方差相等{p_end}
{p2col: }所有协方差固定为 {cmd:0}{p_end}

{p2col :{opt ex:changeable}}所有方差相等{p_end}
{p2col: }所有协方差相等{p_end}

{p2col :{opt zero}}所有方差固定为 {cmd:0}{p_end}
{p2col: }所有协方差固定为 {cmd:0}{p_end}

{p2col :* {opth pat:tern(matname)}}协方差（方差）不受限制如果
matname[i,j] {ul:>} {cmd:.} {p_end}
{p2col: }协方差（方差）相等如果 matname[i,j] = matname[k,l]{p_end}

{p2col :+ {opth fix:ed(matname)}}协方差（方差）不受限制如果
matname[i,j] {ul:>} {cmd:.} {p_end}
{p2col: }协方差（方差）固定为 matname[i,j] 否则{p_end}
{p2line}
{p2colreset}{...}
{p 6 10 2}(*) 仅使用 {it:matname} 的下三角元素。
{it:matname} 中出现非整数值时，所有值将被解释为该值的 {helpb floor()}。
{it:matname} 的行列条纹被忽略。

{p 6 10 2}(+) 仅使用 {it:matname} 的下三角元素。
{it:matname} 的行列条纹被忽略。


{marker description}{...}
{title:描述}

{pstd}
选项 {opt covstructure()} 提供了一种方便的方式来限制模型的协方差。

{pstd}
另外，您可以使用标准的路径符号对协方差施加限制，例如

{phang2}{cmd:. sem ..., ... cov(}{it:name1}{cmd:*}{it:name2}{cmd:@}{it:c1} 
{it:name3}{cmd:*}{it:name4}{cmd:@}{it:c1}{cmd:) ...}{p_end}

{phang2}{cmd:. gsem ..., ... cov(}{it:name1}{cmd:*}{it:name2}{cmd:@}{it:c1} 
{it:name3}{cmd:*}{it:name4}{cmd:@}{it:c1}{cmd:) ...}{p_end}

{pstd}
参见 {helpb sem_and gsem path_notation:[SEM] sem 和 gsem 路径符号}。

{pstd}
如果您使用 {cmd:sem}，还请参阅
{help sem_path_notation_extensions_zh:[SEM] sem 路径符号扩展}
有关在指定 {cmd:group()} 选项时 {cmd:covstructure()} 语法如何修改的文档。

{pstd}
如果您使用 {cmd:gsem}，还请参阅
{help gsem_path_notation_extensions_zh:[SEM] gsem 路径符号扩展}
有关在指定 {cmd:group()} 选项或 {cmd:lclass()} 选项时 {cmd:covstructure()} 语法如何修改的文档。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection SEM semandgsemoptioncovstructure()备注和示例:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker option}{...}
{title:选项}

{phang}
{cmd:covstruct(}{it:variables}{cmd:,} {it:structure}{cmd:)} 用于修改模型中外生变量之间的协方差结构或修改模型中误差变量之间的协方差结构。

{p 8 8 2}
您可以多次指定 {opt covstruct()} 选项。

{p 8 8 2}
外生变量的默认协方差结构为 
{cmd:covstruct(_Ex, unstructured)} 对于 {cmd:sem}。  
对于 {cmd:gsem}，没有简单的方法来编写默认值。

{p 8 8 2}
误差变量的默认协方差结构为 
{cmd:covstruct(e._En, diagonal)} 对于 {cmd:sem} 和 {cmd:gsem}。 


{marker remarks}{...}
{title:备注}
     
{pstd}
参见 {findalias semcu}。

{pstd}
标准的线性结构方程建模允许外生变量（包括潜在和观察的）之间和误差变量之间的协方差。
外生变量和误差变量之间的协方差不被允许（假定为0）。

{pstd}
有些作者称标准 SEM 中外生变量的协方差为矩阵
{cmd:Phi}，将误差变量的协方差称为矩阵
{cmd:Psi}。


{marker examples}{...}
{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse sem_mimic1}{p_end}

{pstd}MIMIC 模型{p_end}
{phang2}{cmd:. sem (SubjSES -> s_income s_occpres s_socstat)}{break}
	{cmd: (SubjSES <- income occpres)}{p_end}

{pstd}让 {cmd:s_income} 和 {cmd:s_occpres} 的误差方差为不受限制{p_end}
{phang2}{cmd:. sem (SubjSES -> s_income s_occpres s_socstat)}{break}
	{cmd: (SubjSES <- income occpres),}{break}
	{cmd: covstructure(e.s_income e.s_occpres, unstructured)}{p_end}

{pstd}将观察内生变量的误差方差设为相等{p_end}
{phang2}{cmd:. sem (SubjSES -> s_income s_occpres s_socstat)}{break}
	{cmd: (SubjSES <- income occpres),}{break}
	{cmd: covstructure(e.s_income e.s_occpres e.s_socstat, identity)}{p_end}

{pstd}与上述相同，但使用关键词 _OEn{p_end}
{phang2}{cmd:. sem (SubjSES -> s_income s_occpres s_socstat)}{break}
	{cmd: (SubjSES <- income occpres),}{break}
	{cmd: covstructure(e._OEn, identity)}{p_end}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse gsem_cfa}{p_end}

{pstd}两因子测量模型{p_end}
{phang2}{cmd:. gsem (MathAb -> q1-q8, logit) (MathAtt -> att1-att5, ologit)}{p_end}

{pstd}将 {cmd:MathAb} 和 {cmd:MathAtt} 之间的协方差限制为 {cmd:0}，但 
自由估计方差{p_end}
{phang2}{cmd:. gsem (MathAb -> q1-q8, logit) (MathAtt -> att1-att5, ologit),}{break}
	{cmd: covstructure(MathAb MathAtt, diagonal)}{p_end}

{pstd}与上述相同，但使用关键词 {p_end}
{phang2}{cmd:. gsem (MathAb -> q1-q8, logit) (MathAtt -> att1-att5, ologit),}{break}
        {cmd: covstructure(_LEx, diagonal)}{p_end}

    {hline}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <sem_and_gsem_option_covstructure.sthlp>}