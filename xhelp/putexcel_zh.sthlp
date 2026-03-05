{smcl}
{* *! version 3.1.2  30may2019}{...}
{viewerdialog "putexcel" "dialog putexcel"}{...}
{vieweralsosee "[RPT] putexcel" "mansection RPT putexcel"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[RPT] putexcel advanced" "help putexcel advanced"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] import excel" "help import excel"}{...}
{vieweralsosee "[RPT] putdocx intro" "help putdocx intro"}{...}
{vieweralsosee "[RPT] putpdf intro" "help putpdf intro"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-5] _docx*()" "help mf__docx_zh"}{...}
{vieweralsosee "[M-5] Pdf*()" "help mf pdf"}{...}
{vieweralsosee "[M-5] xl()" "help mf_xl_zh"}{...}
{viewerjumpto "Syntax" "putexcel_zh##syntax"}{...}
{viewerjumpto "Menu" "putexcel_zh##menu"}{...}
{viewerjumpto "Description" "putexcel_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "putexcel_zh##linkspdf"}{...}
{viewerjumpto "Options" "putexcel_zh##options"}{...}
{viewerjumpto "Examples" "putexcel_zh##examples"}{...}
{viewerjumpto "Technical note" "putexcel_zh##technote1"}{...}
{viewerjumpto "Appendix" "putexcel_zh##appendix"}
{help putexcel:English Version}
{hline}{...}
{p2colset 1 19 21 2}{...}
{p2col:{bf:[RPT] putexcel} {hline 2}}导出结果到 Excel 文件{p_end}
{p2col:}({mansection RPT putexcel:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{phang}
设置要导出的工作簿

{p 8 32 2}
{cmd:putexcel} {cmd:set} {it:{help filename_zh}}
[{cmd:,} {help putexcel##setopts:{it:set_options}}]


{phang}
将表达式写入 Excel

{p 8 32 2}
{cmd:putexcel} {help putexcel##ulcell:{it:ul_cell}}
    {cmd:=} {help putexcel##expr:{it:exp}}
[{cmd:,} {help putexcel##expopts:{it:expression_options}}
{help putexcel##fmtopts:{it:format_options}}]


{phang}
将 Stata 矩阵导出到 Excel

{p 8 32 2}
{cmd:putexcel} {help putexcel##ulcell:{it:ul_cell}}
    {cmd:=} {help putexcel##matrix:{bf:{ul:ma}trix(}{it:matname}{bf:)}}
[{cmd:,} {help putexcel##matopts:{it:matrix_options}}
{help putexcel##fmtopts:{it:format_options}}]


{phang}
将 Stata 图形、路径图或其他图像导出到 Excel

{p 8 32 2}
{cmd:putexcel} {help putexcel##ulcell:{it:ul_cell}}
    {cmd:=} {help putexcel##picture:{bf:image(}{it:filename}{bf:)}}


{phang}
将返回结果导出到 Excel

{p 8 32 2}
{cmd:putexcel} {help putexcel##ulcell:{it:ul_cell}}
    {cmd:=} {help putexcel##returnset:{it:returnset}}
[{cmd:,} {opt colw:ise} {opt overwr:itefmt}]


{phang}
将公式写入 Excel

{p 8 32 2}
{cmd:putexcel} {help putexcel##ulcell:{it:ul_cell}}
    {cmd:=} {help putexcel##formula:{bf:formula(}{it:formula}{bf:)}}
[{cmd:,} {opt overwr:itefmt}]


{phang}
格式化单元格

{p 8 32 2}
{cmd:putexcel} {help putexcel##cellrange:{it:cellrange}}{cmd:,}
{opt overwr:itefmt}
{help putexcel##fmtopts:{it:format_options}}


{phang}
将最后一次估计命令的系数表添加到 Excel 文件

{p 8 32 2}
{cmd:putexcel} {help putexcel##ulcell:{it:ul_cell}}
{cmd:=} {help putexcel##etable:{bf:etable}}[{cmd:(}{it:#}1 {it:#}2 ... {it:#}{it:n}{cmd:)}]


{phang}
关闭并保存 Excel 文件

{p 8 32 2}
{cmd:putexcel save}


{phang}
描述当前的导出设置

{p 8 32 2}
{cmd:putexcel} {cmd:describe}


{phang}
清除当前的导出设置

{p 8 32 2}
{cmd:putexcel} {cmd:clear}


{marker ulcell}{...}
{phang}
{it:ul_cell} 是有效的 Excel 左上单元格，使用标准
Excel 表示法指定，例如 {cmd:A1} 或 {cmd:D4}.  

{marker cellrange}{...}
{phang}
{it:cellrange} 是 {it:ul_cell} 或 {it:ul_cell}{cmd::}{it:lr_cell},
其中 {it:lr_cell} 是有效的 Excel 右下单元格，例如 {cmd:A1},
{cmd:A1:D1}, {cmd:A1:A4} 或 {cmd:A1:D4}.  


{marker setopts}{...}
{synoptset 42}{...}
{synopthdr:set_options}
{synoptline}
包含 help putexcel_setopts_list.ihlp
{synoptline}

{marker expopts}{...}
{synoptset 42 tabbed}{...}
{synopthdr:expression_options}
{synoptline}
{syntab:主要}
{synopt :{opt overwr:itefmt}}在导出新内容时覆盖现有单元格格式{p_end}
{synopt :{opt asdate}}将 Stata 日期（{cmd:%td}格式）{it:exp} 转换为
Excel 日期{p_end}
{synopt :{opt asdatetime}}将 Stata 日期时间（{cmd:%tc}格式）
{it:exp} 转换为 Excel 日期时间{p_end}
{synopt :{opt asdatenum}}将 Stata 日期
{it:exp} 转换为 Excel 日期数字，并保留单元格的格式{p_end}
{synopt :{opt asdatetimenum}}将 Stata 日期时间
{it:exp} 转换为 Excel 日期时间数字，并保留单元格的格式{p_end}
{synoptline}

{marker matopts}{...}
{synoptset 42 tabbed}{...}
{synopthdr:matrix_options}
{synoptline}
{syntab:主要}
{synopt :{opt overwr:itefmt}}在导出新内容时覆盖现有单元格格式{p_end}
{synopt :{opt names}}同时写入矩阵 {it:matname} 的行名和列名；
不能与 {cmd:rownames} 或 {cmd:colnames} 一起使用{p_end}
{synopt :{opt rownames}}同时写入矩阵 {it:matname} 的行名；
不能与 {cmd:names} 或 {cmd:colnames} 一起使用{p_end}
{synopt :{opt colnames}}同时写入矩阵 {it:matname} 的列名；
不能与 {cmd:names} 或 {cmd:rownames} 一起使用{p_end}
{synoptline}

{marker fmtopts}{...}
{synoptset 42 tabbed}{...}
{synopthdr:format_options}
{synoptline}
{syntab:数字}
{synopt :{opth nfor:mat(putexcel##nformat:excelnfmt)}}指定数字格式{p_end}

{syntab:对齐}
包含 help putexcel_alignopts_list.ihlp

{syntab:字体}
{synopt :{cmd:font(}{help putexcel##font:{it:fontname}} [{cmd:,} {help putexcel##font:{it:size}} [{cmd:,} {help putexcel##font:{it:color}}]]{cmd:)}}指定字体、字体大小和字体颜色{p_end}
包含 help putexcel_textopts_list.ihlp


{syntab:边框}
包含 help putexcel_bordopts_list.ihlp

{syntab:填充}
包含 help putexcel_fillopt_list.ihlp
{synoptline}


    {bf:输出类型}

包含 help putexcel_output_types.ihlp


{marker menu}{...}
{title:菜单}

{phang}
{bf:文件 > 导出 > 结果到 Excel 电子表格 (*.xls;*.xlsx)}


{marker description}{...}
{title:描述}

{pstd}
{cmd:putexcel} 将 Stata {help expressions:表达式},
{help matrix_zh:矩阵}, 图像和 {help return_zh:返回结果} 写入一个 Excel
文件。它还可用于格式化 Excel 工作表中的单元格。这允许运行 Stata 估计结果的导出和格式化自动化。支持 Excel 1997/2003 ({cmd:.xls}) 文件和 Excel 2007/2010 及更新版本
({cmd:.xlsx}) 文件。  

{pstd}
{cmd:putexcel} {cmd:set} 设置要创建、修改或替换的 Excel 文件
在后续的 {cmd:putexcel} 命令中。在使用任何其他 {cmd:putexcel} 命令之前，您必须设置目标文件。
{cmd:putexcel save} 关闭使用命令 {cmd:putexcel set} ...{cmd:, open} 打开的文件，并将内存中的文件保存到磁盘。
{cmd:putexcel clear} 清除由 {cmd:putexcel set} 设置的文件信息。
{cmd:putexcel describe} 显示由 {cmd:putexcel set} 设置的文件信息。

{pstd}
有关同时写入多种输出类型的高级语法，请参见 {manhelp putexcel_advanced RPT:putexcel advanced}。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection RPT putexcelQuickstart:快速开始}

        {mansection RPT putexcelRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:设置}

包含 help putexcel_set_opts.ihlp

{dlgtab:主要}

包含 help putexcel_expt_opts.ihlp

{dlgtab:数字}

包含 help putexcel_num_opt.ihlp

{dlgtab:对齐}

包含 help putexcel_align_opts.ihlp

{dlgtab:字体}

包含 help putexcel_text_opts.ihlp

{dlgtab:边框}

包含 help putexcel_bord_opts.ihlp

{dlgtab:填充}

包含 help putexcel_fill_opt.ihlp


{marker examples}{...}
{title:示例}

{pstd}
将 results.xlsx 的第一工作表声明为后续
{cmd:putexcel} 命令的目标{p_end}
{phang2}{cmd:. putexcel set results}

{pstd}
将文本 "Variable"、"Mean" 和 "Std. Dev." 写入单元格 A1、B1 和
C1{p_end}
{phang2}{cmd:. putexcel A1 = "Variable"}{p_end}
{phang2}{cmd:. putexcel B1 = "Mean"}{p_end}
{phang2}{cmd:. putexcel C1 = "Std. Dev."}

{pstd}
总结 {cmd:mpg} 变量{p_end}
{phang2}{cmd:. sysuse auto, clear}{p_end}
{phang2}{cmd:. summarize mpg}

{pstd}
获取均值和标准差的返回结果名称，{cmd:r(mean)} 和 {cmd:r(sd)}{p_end}
{phang2}{cmd:. return list}

{pstd}
将变量名称、均值和标准差写入单元格 A2、B2 和 C2；
为均值和标准差指定两位小数的格式{p_end}
{phang2}{cmd:. putexcel A2 = "mpg"}{p_end}
{phang2}{cmd: 	. putexcel B2 = `r(mean)', nformat(number_d2)}{p_end}
{phang2}{cmd:	. putexcel C2 = `r(sd)', nformat(number_d2)}{p_end}

{pstd}
对 {cmd:mpg} 进行权重和位移的回归{p_end}
{phang2}{cmd:. regress mpg weight displacement}

{pstd}
将文本 "Coef." 写入单元格 B5{p_end}
{phang2}{cmd:. putexcel B5 = "Coef."}

{pstd}
将转置的 {cmd:e(b)} 矩阵中包含的系数及其标签写入；
指定该矩阵从单元格 A6 的左上角写入{p_end}
{phang2}{cmd:. matrix b = e(b)'}{p_end}
{phang2}{cmd:. putexcel A6 = matrix(b), rownames


{marker technote1}{...}
{title:技术说明：Excel 数据大小限制及日期和时间}

{pstd}
您可以在 {helpb import_excel##technote1:help import excel} 中
阅读有关 Excel 数据大小限制和两种不同 Excel 日期
系统的信息。
{p_end}


{marker appendix}{...}
{title:附录}

{marker formats}{...}
{marker nformat}{...}
    {title:数字格式代码}

	 代码                              示例
	{hline 40}
	 {cmd:number}                            1000
	 {cmd:number_d2}                      1000.00
	 {cmd:number_sep}                     100,000
	 {cmd:number_sep_d2}               100,000.00
	 {cmd:number_sep_negbra}              (1,000)
	 {cmd:number_sep_negbrared}           {error}(1,000){txt}
	 {cmd:number_d2_sep_negbra}        (1,000.00)
	 {cmd:number_d2_sep_negbrared}     {error}(1,000.00){txt}
	 {cmd:currency_negbra}                ($4000)
	 {cmd:currency_negbrared}             {error}($4000){txt}
	 {cmd:currency_d2_negbra}          ($4000.00)
	 {cmd:currency_d2_negbrared}       {error}($4000.00){txt}
	 {cmd:account}                          5,000
	 {cmd:accountcur}      	           $    5,000
	 {cmd:account_d2}                    5,000.00
	 {cmd:account_d2_cur}              $ 5,000.00
	 {cmd:percent}                            75%
	 {cmd:percent_d2}                      75.00%
	 {cmd:scientific_d2}                 10.00E+1
	 {cmd:fraction_onedig}                 10 1/2
	 {cmd:fraction_twodig}               10 23/95
	 {cmd:date}                         3/18/2007
	 {cmd:date_d_mon_yy}                18-Mar-07
	 {cmd:date_d_mon}                      18-Mar
	 {cmd:date_mon_yy}                     Mar-07
	 {cmd:time_hmm_AM}                    8:30 AM
	 {cmd:time_HMMSS_AM}               8:30:00 AM
	 {cmd:time_HMM}                          8:30
	 {cmd:time_HMMSS}                     8:30:00
	 {cmd:time_MMSS}                        30:55
	 {cmd:time_H0MMSS}                   20:30:55
	 {cmd:time_MMSS0}                     30:55.0
	 {cmd:date_time}               3/18/2007 8:30
	 {cmd:text}                      this is text
	{hline 40}


{marker Colors}{...}
    {title:颜色}

         {it:color}
        {hline 52}
	 {cmd}aliceblue       ghostwhite            navajowhite
	 antiquewhite    gold                  navy
	 aqua            goldenrod             oldlace
	 aquamarine      gray                  olive
	 azure           green                 olivedrab
	 beige           greenyellow           orange
	 bisque          honeydew              orangered
	 black           hotpink               orchid
	 blanchedalmond  indianred             palegoldenrod
	 blue            indigo                palegreen
	 blueviolet      ivory                 paleturquoise
	 brown           khaki                 palevioletred
	 burlywood       lavender              papayawhip
	 cadetblue       lavenderblush         peachpuff
	 chartreuse      lawngreen             peru
	 chocolate       lemonchiffon          pink
	 coral           lightblue             plum
	 cornflowerblue  lightcoral            powderblue
	 cornsilk        lightcyan             purple
	 crimson         lightgoldenrodyellow  red
	 cyan            lightgray             rosybrown
	 darkblue        lightgreen            royalblue
	 darkcyan        lightpink             saddlebrown
	 darkgoldenrod   lightsalmon           salmon
	 darkgray        lightseagreen         sandybrown
	 darkgreen       lightskyblue          seagreen
	 darkkhaki       lightslategray        seashell
	 darkmagenta     lightsteelblue        sienna
	 darkolivegreen  lightyellow           silver
	 darkorange      lime                  skyblue
	 darkorchid      limegreen             slateblue
	 darkred         linen                 slategray
	 darksalmon      magenta               snow
	 darkseagreen    maroon                springgreen
	 darkslateblue   mediumaquamarine      steelblue
	 darkslategray   mediumblue            tan
	 darkturquoise   mediumorchid          teal
	 darkviolet      mediumpurple          thistle
	 deeppink        mediumseagreen        tomato
	 deepskyblue     mediumslateblue       turquoise
	 dimgray         mediumspringgreen     violet
	 dodgerblue      mediumturquoise       wheat
	 firebrick       mediumvioletred       white
	 floralwhite     midnightblue          whitesmoke
	 forestgreen     mintcream             yellow
	 fuchsia         mistyrose             yellowgreen
	 gainsboro       moccasin{txt}
        {hline 52}


{marker style}{...}
    {title:边框样式}

         {it:style}
	{hline 25}
	 {cmd:none}
	 {cmd:thin}
	 {cmd:medium}
	 {cmd:dashed}
	 {cmd:dotted}
	 {cmd:thick}
	 {cmd:double}
	 {cmd:hair}
	 {cmd:medium_dashed}
	 {cmd:dash_dot}
	 {cmd:medium_dash_dot}
	 {cmd:dash_dot_dot}
	 {cmd:medium_dash_dot_dot}
	 {cmd:slant_dash_dot}
	{hline 25}


{marker pattern}{...}
    {title:背景图案}

         {it:pattern} 
	{hline 25}
	 {cmd:none}
	 {cmd:solid}
	 {cmd:gray50}
	 {cmd:gray75}
	 {cmd:gray25}
	 {cmd:horstripe}
	 {cmd:verstripe}
	 {cmd:diagstripe}
	 {cmd:revdiagstripe}
	 {cmd:diagcrosshatch}
	 {cmd:thinhorstripe}
	 {cmd:thinverstripe}
	 {cmd:thindiagstripe}
	 {cmd:thinrevdiagstripe}
	 {cmd:thinhorcrosshatch}
	 {cmd:thindiagcrosshatch}
	 {cmd:thickdiagcrosshatch}
	 {cmd:gray12p5}
	 {cmd:gray6p25}
	{hline 25}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <putexcel.sthlp>}