{smcl}
{* *! version 1.1.5  15may2018}{...}
{vieweralsosee "[M-3] mata describe" "mansection M-3 matadescribe"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-5] sizeof()" "help mf_sizeof_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-3] Intro" "help m3_intro_zh"}{...}
{viewerjumpto "语法" "mata_describe_zh##syntax"}{...}
{viewerjumpto "描述" "mata_describe_zh##description"}{...}
{viewerjumpto "PDF文档链接" "mata_describe_zh##linkspdf"}{...}
{viewerjumpto "选项" "mata_describe_zh##option"}{...}
{viewerjumpto "备注" "mata_describe_zh##remarks"}{...}
{viewerjumpto "诊断" "mata_describe_zh##diagnostics"}
{help mata_describe:English Version}
{hline}{...}
{p2colset 1 24 26 2}{...}
{p2col:{bf:[M-3] mata describe} {hline 2}}描述Mata内存的内容
{p_end}
{p2col:}({mansection M-3 matadescribe:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 16 2}
: {cmd:mata} {cmdab:d:escribe} 
[{it:namelist}] 
[{cmd:,} 
{cmd:all} 
]

{p 8 16 2}
: {cmd:mata} {cmdab:d:escribe} 
{cmd:using} {it:libname}


{p 4 4 2}
其中 {it:namelist} 的定义见 
{bf:{help m3_namelists_zh:[M-3] 名称列表}}。
如果未指定 {it:namelist}，则默认为"{cmd:*} {cmd:*()}"。

{p 4 4 2}
此命令用于Mata模式下，在Mata的冒号提示符后使用。
要从Stata的点提示符使用此命令，输入

		. {cmd:mata: mata describe} ...


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:mata} {cmd:describe} 
列出内存中矩阵和函数的名称，包括每个消耗的内存量。

{p 4 4 2}
{cmd:mata} {cmd:describe} {cmd:using} {it:libname}
描述指定的 {cmd:.mlib} 库的内容； 
请参见 {bf:{help mata_mlib_zh:[M-3] mata mlib}}。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection M-3 matadescribeRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker option}{...}
{title:选项}

{p 4 8 2}
{cmd:all} 指定如果内存中已经加载了自动加载的库函数，则包括在输出中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
{cmd:mata describe} 通常在没有参数的情况下发出，然后
描述内存中的所有内容：

	: {cmd:mata describe}

	      {txt}# 字节   类型                      名称和范围
	{hline 69}
	{res}           50   {txt}实数矩阵                   {res}foo{txt}()
	{res}        1,600   {txt}实数矩阵                   {res}X{txt}[10,20]
	{res}            8   {txt}实数标量                   {res}x
	{txt}{hline 69}

{p 4 4 2}
{cmd:mata describe using} {it:libname} 列出存储在
{help mata_mlib_zh:.mlib} 库中的函数：

	: {cmd:mata describe using lmatabase}

	      {txt}# 字节   类型                      名称和范围
	{hline 69}
        {res}          508   {txt}自动结构定义标量       {res}AsArray_char({txt})
        {res}          188   {txt}自动结构定义标量       {res}AsArray_dup{txt}()
        {res}          312   {txt}自动结构定义标量       {res}AsArray_top{txt}()
	{res}          984   {txt}自动数值向量             {res}Corr{txt}()
        {res}          864   {txt}自动数值向量             {res}Corrslowly{txt}()
        {res}          400   {txt}自动实数矩阵              {res}Dmatrix{txt}()
	{res}          340   {txt}自动实数矩阵              {res}Hilbert{txt}()
	{it:(省略输出)}
	{res}          672   {txt}自动可变列向量        {res}vech{txt}()
	{res}          184   {txt}自动实数标量              {res}whether_ssd{txt}()
	{txt}{hline 69}


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
报告的内存使用不包括开销，通常为64字节，但可能更少（最近使用的标量为零）。

{p 4 4 2}
针对指针矩阵报告的内存使用反映了存储矩阵本身所需的内存，不包括兄弟节点消耗的内存。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mata_describe.sthlp>}