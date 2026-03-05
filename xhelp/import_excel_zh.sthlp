{smcl}
{* *! version 1.2.3  20apr2019}{...}
{viewerdialog "import excel" "dialog import_excel_dlg"}{...}
{viewerdialog "export excel" "dialog export_excel"}{...}
{vieweralsosee "[D] import excel" "mansection D importexcel"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] Datetime" "help datetime_zh"}{...}
{vieweralsosee "[M-5] _docx*()" "help mf_docx"}{...}
{vieweralsosee "[D] export" "help export_zh"}{...}
{vieweralsosee "[D] import" "help import_zh"}{...}
{vieweralsosee "[RPT] putexcel" "help putexcel_zh"}{...}
{vieweralsosee "[M-5] xl()" "help mf_xl_zh"}{...}
{viewerjumpto "Syntax" "import_excel_zh##syntax"}{...}
{viewerjumpto "Menu" "import_excel_zh##menu"}{...}
{viewerjumpto "Description" "import_excel_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "import_excel_zh##linkspdf"}{...}
{viewerjumpto "Options for import excel" "import_excel_zh##importoptions"}{...}
{viewerjumpto "Options for export excel" "import_excel_zh##exportoptions"}{...}
{viewerjumpto "Remarks/Examples" "import_excel_zh##remarks"}{...}
{viewerjumpto "Video example" "import_excel_zh##video"}{...}
{viewerjumpto "Technical notes" "import_excel_zh##technote1"}{...}
{viewerjumpto "Stored results" "import_excel_zh##results"}
{help import_excel:English Version}
{hline}{...}
{p2colset 1 21 18 2}{...}
{p2col:{bf:[D] import excel} {hline 2}}导入和导出Excel文件{p_end}
{p2col:}({mansection D importexcel:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}

{marker syntax}{...}
{title:语法}

{phang}
加载一个Excel文件

{p 8 32 2}
{cmd:import} {cmdab:exc:el} [{cmd:using}] {it:{help filename_zh}}
   [{cmd:,} {it:{help import_excel##import_excel_options:import_excel_options}}]

{phang}
从一个Excel文件加载变量子集

{p 8 32 2}
{cmd:import} {cmdab:exc:el} {it:{help import_excel##extvarlist:extvarlist}}
    {cmd:using} {it:{help filename_zh}}
  [{cmd:,} {it:{help import_excel##import_excel_options:import_excel_options}}]

{phang}
描述一个Excel文件的内容

{p 8 32 2}
{cmd:import} {cmdab:exc:el} [{cmd:using}] {it:{help filename_zh}},
     {cmdab:desc:ribe}

{phang}
将内存中的数据保存到一个Excel文件

{p 8 32 2}
{cmd:export} {cmdab:exc:el} [{cmd:using}] {it:{help filename_zh}} {ifin}
   [{cmd:,} {it:{help import_excel##export_excel_options:export_excel_options}}]

{phang}
将内存中的变量子集保存到一个Excel文件

{p 8 32 2}
{cmd:export} {cmdab:exc:el} [{varlist}] {cmd:using} {it:{help filename_zh}} {ifin}
    [{cmd:,}
      {it:{help import_excel##export_excel_options:export_excel_options}}]

{synoptset 37}{...}
{marker import_excel_options}{...}
{synopthdr :import_excel_options}
{synoptline}
{synopt :{opt sh:eet("sheetname")}}指定要加载的Excel工作表{p_end}
{synopt :{opt cellra:nge([start][:end])}}指定要加载的Excel单元格范围{p_end}
{synopt :{opt first:row}}将Excel数据的第一行视为变量名{p_end}
{synopt :{cmd:case(}{cmdab:pre:serve}|{cmdab:l:ower}|{cmdab:u:pper}{cmd:)}}保留大小写（默认值）或读取变量名为小写或大写，当使用{opt firstrow}{p_end}
{synopt :{opt all:string}[{cmd:("}{it:{help format_zh:format}}{cmd:")}]}将所有Excel数据导入为字符串；可选地，指定数字显示格式{p_end}
{synopt :{opt clear}}替换内存中的数据{p_end}

{synopt :{opt locale("locale")}}指定工作簿使用的地区设置；对Microsoft Windows没有影响{p_end}
{synoptline}
{p 4 6 2}{cmd:allstring("}{it:format}{cmd:")}和{opt locale()}不会显示在对话框中。{p_end}
{p2colreset}{...}

{synoptset 37 tabbed}{...}
{marker export_excel_options}{...}
{synopthdr :export_excel_options}
{synoptline}
{syntab :主}
{synopt :{cmdab:sh:eet("}{it:sheetname}{cmd:"}[{cmd:, modify}|{cmd:replace}]{cmd:)}保存到指定的Excel工作表{p_end}
{synopt :{opt cell(start)}}指定开始（左上角）单元格在Excel中的保存位置{p_end}
{synopt :{cmdab:first:row(}{cmdab:var:iables}|{cmdab:varl:abels}{cmd:)}}将变量名或变量标签保存到第一行{p_end}
{synopt :{cmdab:nol:abel}}导出值而不是值标签{p_end}
{synopt :{cmd:keepcellfmt}}在写入数据时，保留现有工作表的单元格样式和格式{p_end}
{synopt :{opt replace}}覆盖Excel文件{p_end}

{syntab :高级}
{synopt :{cmdab:date:string("}{it:{help datetime_display_formats_zh:datetime_format}}{cmd:")}}将日期作为字符串保存，格式为{it:datetime_format}{p_end}
{synopt :{cmd:miss:ing("}{it:repval}{cmd:")}}将缺失值保存为{it:repval}{p_end}

{synopt :{opt locale("locale")}}指定工作簿使用的地区设置；对Microsoft Windows没有影响{p_end}
{synoptline}
{p 4 6 2}{opt locale()}不会显示在对话框中。{p_end}
{p2colreset}{...}

{marker extvarlist}{...}
{p 4 4 2}
{it:extvarlist}指定导入列的变量名。  
{it:extvarlist}可以是以下任何之一：

            {it:varname}
            {it:varname}{cmd:=}{it:columnname}

{marker extvarlist_examples}{...}
{p 8 8 2}
示例：  {cmd:import excel make mpg weight price using auto.xlsx, clear}
{p_end}
{p 12 12 2}
        从Excel文件{cmd:auto.xlsx}导入列A、B、C和D。

{p 8 8 2}
示例：  {cmd:import excel make=A mpg=B price=D using auto.xlsx, clear}
{p_end}
{p 12 12 2}
        从Excel文件{cmd:auto.xlsx}导入列A、B和D。 
        列C及D之后的任何列被跳过。

{marker menu}{...}
{title:菜单}

    {title:导入Excel}

{phang2}
{bf:文件 > 导入 > Excel电子表格 (*.xls;*.xlsx)}

    {title:导出Excel}

{phang2}
{bf:文件 > 导出 > 数据到Excel电子表格 (*.xls;*.xlsx)}

{marker description}{...}
{title:描述}

{pstd}
{cmd:import excel} 将一个Excel文件（也称为工作簿）加载到Stata中。
{cmd:import excel} {it:filename}{cmd:, describe} 列出Excel文件中可用的工作表和范围。 {cmd:export excel} 将内存中的数据保存到一个Excel文件。 可以通过 {cmd:import excel}、{cmd:export excel} 和 {cmd:import excel, describe} 导入、导出和描述Excel 1997/2003 （{cmd:.xls}）文件和Excel 2007/2010 （{cmd:.xlsx}）文件。

{pstd}
{cmd:import excel} 和 {cmd:export excel} 在Windows、Mac和Linux上都受到支持。

{pstd}
{cmd:import excel} 和 {cmd:export excel} 根据文件扩展名 {cmd:.xls} 或 {cmd:.xlsx} 确定读取或写入哪个Excel格式。

{pstd}
为了提高性能，{cmd:import excel} 对Excel 2007/2010 （{cmd:.xlsx}）文件施加了40 MB的大小限制。 请注意，导入大型{cmd:.xlsx}文件可能会严重影响计算机的性能。

{pstd}
{cmd:import excel auto} 首先查找 {cmd:auto.xls}，如果在当前目录中找不到 {cmd:auto.xls}，则查找{cmd:auto.xlsx}。

{pstd}
如果未指定文件扩展名，则 {cmd:export excel} 的默认文件扩展名为 {cmd:.xls}。 

{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection D importexcelQuickstart:快速入门}

        {mansection D importexcelRemarksandexamples:备注和示例}

{pstd}
上述部分不包括在此帮助文件中。

{marker importoptions}{...}
{title:导入Excel的选项}

{phang}
{cmd:sheet("}{it:sheetname}{cmd:")} 导入工作簿中名为 {it:sheetname} 的工作表。 默认情况下导入第一个工作表。

{phang}
{opt "cellrange([start][:end])"} 指定要加载的工作表内的单元格范围。 {it:start} 和 {it:end} 使用标准Excel单元格符号指定，例如 {cmd:A1}、{cmd:BC2000} 和 {cmd:C23}。

{phang}
{cmd:firstrow} 指定Excel工作表中的第一行数据由变量名组成。 该选项无法与 {it:extvarlist} 一起使用。 如果指定 {cmd:cellrange()}，{cmd:firstrow} 将使用单元格范围中的第一行作为变量名。 {cmd:import excel} 将第一行中的名称转换为有效的Stata变量名。 第一行中的原始名称将未修改地存储为变量标签。

{phang}
{cmd:case(}{cmd:preserve}|{cmd:lower}|{cmd:upper)} 指定使用 {opt firstrow} 选项时读取的变量名称的大小写。 默认值为 {cmd:case(preserve)}，表示保留变量名称的大小写。 只有名称中的ASCII字母会被更改为小写或大写。 超出ASCII范围的Unicode字符不变。

{phang}
{cmd:allstring}[{cmd:("}{it:format}{cmd:")}] 强制 {cmd:import excel} 将所有Excel数据导入为字符串数据。 可以使用可选参数 {it:format} 指定用于将数字数据转换为字符串的数字显示格式。 请参见 {help format_zh:[D] format}。

{phang}
{cmd:clear} 在从Excel工作簿加载数据之前清除内存中的数据。

{pstd}
以下选项可用于 {cmd:import excel} 但不会显示在对话框中：

{phang}
{opt locale("locale")} 指定工作簿使用的地区设置。 在处理扩展ASCII字符集时可能需要此选项。 此选项对Microsoft Windows没有影响。 默认地区设置为UTF-8。

{marker exportoptions}{...}
{title:导出Excel的选项}

{dlgtab:主}

{phang}
{cmd:sheet("}{it:sheetname}{cmd:"}[{cmd:, modify}|{cmd:replace}]{cmd:)} 保存到名为 {it:sheetname} 的工作表。 如果工作簿中没有名为 {it:sheetname} 的工作表，则会创建一个新工作表，名称为 {it:sheetname}。 如果未指定此选项，则使用工作簿的第一个工作表。 如果工作簿中确实存在 {it:sheetname}，则可以选择 {cmd:modify} 或 {cmd:replace} 工作表。

{phang2}
{cmd:modify} 将数据导出到工作表中，而不更改导出的范围之外的单元格。 此选项无法与 {cmd:replace} 一起指定，也不能在覆盖Excel工作簿时指定。

{phang2}
{cmd:replace} 在将数据导出到工作表之前清除该工作表。 {cmd:replace} 不能与 {cmd:modify} 一起指定，也不能在覆盖Excel工作簿时指定。

{phang}
{opt cell(start)} 指定Excel工作表中保存的位置的开始（左上角）单元格。 默认情况下，{cmd:export excel} 从工作表的第一行和第一列开始保存。

{phang}
{cmd:firstrow(}{cmd:variables}|{cmd:varlabels)} 指定在Excel工作表的第一行中保存变量名或变量标签。 如果某个变量没有变量标签，则使用变量名。

{phang}
{opt nolabel} 导出基本数字值而不是值标签。

{phang}
{opt keepcellfmt} 指定在写入数据时，{cmd:export excel} 应保留现有工作表的单元格样式和格式。 默认情况下，{cmd:export excel} 不保留单元格的样式或格式。

{phang}
{opt replace} 覆盖现有Excel工作簿。 {opt replace} 不能在修改或替换给定工作表时指定：
{cmd:export excel} ...{cmd:, sheet("", modify)} 或
{cmd:export excel} ...{cmd:sheet("", replace)}。

{dlgtab:高级}

{phang}
{cmd:datestring("}{it:datetime_format}{cmd:")} 将所有日期时间变量导出为字符串，格式为 {it:datetime_format}。 请参见 {help datetime_display_formats_zh:[D] Datetime display formats}。

{phang}
{cmd:missing("}{it:repval}{cmd:")} 将缺失值导出为 {it:repval}。 {it:repval} 可以是字符串或数字。 未指定此选项时，{cmd:export excel} 将缺失值导出为空单元格。

{pstd}
以下选项可用于 {cmd:export excel} 但不会显示在对话框中：

{phang}
{opt locale("locale")} 指定工作簿使用的地区设置。 在处理扩展ASCII字符集时可能需要此选项。 默认地区设置为UTF-8。

{marker remarks}{...}
{title:备注/示例}

{pstd}
为了演示 {cmd:import excel} 和 {cmd:export excel} 的使用，我们将首先加载 {cmd:auto.dta} 并导出为名为 {cmd:auto.xls} 的Excel文件：

        {cmd}. webuse auto
        {res}{txt}(1978汽车数据)

        {cmd}. export excel auto, firstrow(variables){txt}
        {res}{txt}文件 auto.xls 已保存

{pstd}现在我们可以从刚创建的 {cmd:auto.xls} 文件中导入数据，告诉Stata清除内存中当前的数据并将Excel文件中的第一行工作表视为变量名称：

        {com}. import excel auto.xls, firstrow clear
        {res}
        {com}. describe

        {txt}包含数据
          obs:{res}            74                          
        {txt} vars:{res}            12                          
        {txt} size:{res}         3,922                          
        {txt}{hline}
                      storage  display     value
        variable name   type   format      label      variable label
        {hline}
        {res}{bind:make           }{txt}{bind: str17  }{bind:{txt}%17s       }{space 1}{bind:         }{bind:  }{res}{res}make
        {bind:price          }{txt}{bind: int    }{bind:{txt}%10.0g     }{space 1}{bind:         }{bind:  }{res}{res}price
        {bind:mpg            }{txt}{bind: byte   }{bind:{txt}%10.0g     }{space 1}{bind:         }{bind:  }{res}{res}mpg
        {bind:rep78          }{txt}{bind: byte   }{bind:{txt}%10.0g     }{space 1}{bind:         }{bind:  }{res}{res}rep78
        {bind:headroom       }{txt}{bind: double }{bind:{txt}%10.0g     }{space 1}{bind:         }{bind:  }{res}{res}headroom
        {bind:trunk          }{txt}{bind: byte   }{bind:{txt}%10.0g     }{space 1}{bind:         }{bind:  }{res}{res}trunk
        {bind:weight         }{txt}{bind: int    }{bind:{txt}%10.0g     }{space 1}{bind:         }{bind:  }{res}{res}weight
        {bind:length         }{txt}{bind: int    }{bind:{txt}%10.0g     }{space 1}{bind:         }{bind:  }{res}{res}length
        {bind:turn           }{txt}{bind: byte   }{bind:{txt}%10.0g     }{space 1}{bind:         }{bind:  }{res}{res}turn
        {bind:displacement   }{txt}{bind: int    }{bind:{txt}%10.0g     }{space 1}{bind:         }{bind:  }{res}{res}displacemen
        {bind:gear_ratio     }{txt}{bind: double }{bind:{txt}%10.0g     }{space 1}{bind:         }{bind:  }{res}{res}gear_ratio
        {bind:foreign        }{txt}{bind: str8   }{bind:{txt}%9s        }{space 1}{bind:         }{bind:  }{res}{res}foreign
        {txt}{hline}
        排序依据：
        {res}     注意：数据集自上次保存以来已发生更改。{txt}

{pstd}我们还可以从Excel文件中导入单元格的子范围：

        {com}. import excel auto.xls, cellrange(:D70) firstrow clear
        {res}
        {com}. describe

        {txt}包含数据
          obs:{res}            69                          
        {txt} vars:{res}             4                          
        {txt} size:{res}         1,449                          
        {txt}{hline}
                      storage  display     value
        variable name   type   format      label      variable label
        {hline}
        {res}{bind:make           }{txt}{bind: str17  }{bind:{txt}%17s       }{space 1}{bind:         }{bind:  }{res}{res}make
        {bind:price          }{txt}{bind: int    }{bind:{txt}%10.0g     }{space 1}{bind:         }{bind:  }{res}{res}price
        {bind:mpg            }{txt}{bind: byte   }{bind:{txt}%10.0g     }{space 1}{bind:         }{bind:  }{res}{res}mpg
        {bind:rep78          }{txt}{bind: byte   }{bind:{txt}%10.0g     {space 1}{bind:         }{bind:  }{res}{res}rep78
        {txt}{hline}
        排序依据：
        {res}     注意：数据集自上次保存以来已发生更改。{txt}

{pstd}无论是 {cmd:.xls} 还是 {cmd:.xlsx} 文件，{cmd:import excel} 和 {cmd:export excel} 都得到支持。如果在{cmd:export excel}中未指定文件扩展名，则默认为 {cmd:.xls}，因为这种格式更为常见，且与能从Excel文件读取的更多应用程序兼容。 要将内存中的数据保存为 {cmd:.xlsx} 文件，需指定扩展名：

        {com}. webuse auto, clear
        {txt}(1978汽车数据)

        {com}. export excel auto.xlsx{txt}
        {res}{txt}文件 auto.xlsx 已保存

{pstd}如果希望导出变量的子集并覆盖现有的 {cmd:auto.xls} Excel 文件，请指定变量列表和 {cmd:replace} 选项：

        {com}. export excel make mpg weight using auto, replace{txt}
        {res}{txt}文件 auto.xls 已保存

{marker video}{...}
{title:视频示例}

{phang}
{browse "http://www.youtube.com/watch?v=N5ZFgzN2_7c":将Excel数据导入Stata}

{marker technote1}{...}
{title:技术说明：Excel数据大小限制}

{pstd}
对于 {cmd:.xls} 类型的Excel工作簿，工作表的大小限制为65,536行和256列。 字符串大小限制为255个字符。

{pstd}
对于 {cmd:.xlsx} 类型的Excel工作簿，工作表的大小限制为1,048,576行和16,384列。 字符串大小限制为32,767个字符。

{marker technote2}{...}
{title:技术说明：日期和时间}

{pstd}
Excel有两种不同的日期系统，"1900日期系统"和"1904日期系统"。 Excel将日期和时间存储为一个整数，表示自开始日期以来的天数，加上24小时一天的一个小数部分。

{pstd}
在1900日期系统中，开始日期为00Jan1900；在1904日期系统中，开始日期为01Jan1904。在1900日期系统中，除了00Jan1900，还有另一个人为日期29feb1900。 
{cmd: import excel} 将29feb1900翻译为28feb1900，并将00Jan1900翻译为31dec1899。

{pstd}
请参见 {it:{help datetime##s11:使用来自其他软件的日期和时间}} 在 {help datetime_zh:[D] Datetime} 中了解Stata日期时间与Excel日期时间之间的关系。

{marker technote3}{...}
{title:技术说明：混合数据类型}

{pstd}
因为Excel的数据类型是基于单元格的，{cmd:import excel} 可能会遇到具有混合数据类型的单元格列。 在这种情况下，使用以下规则来确定导入列在Stata中的变量类型。

{p 8 8 2}如果该列包含至少一个非数字文本的单元格，则整列将导入为字符串变量。
	
{p 8 8 2}如果所有数字列中至少有一个单元格格式为日期或时间，则整列将导入为Stata日期或日期时间变量。 如果Excel中的所有日期单元格都是仅日期，则{cmd:import excel}将该列导入为Stata日期；否则，将使用日期时间。 

{marker results}{...}
{title:存储结果}

{pstd}
{cmd:import excel} {it:filename}{cmd:, describe} 在 {cmd:r()} 中存储以下信息：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:r(N_worksheet)}}Excel工作簿中的工作表数量{p_end}

{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:r(worksheet_}{it:#}{cmd:)}}Excel工作簿中工作表 {it:#} 的名称{p_end}
{synopt:{cmd:r(range_}{it:#}{cmd:)}}Excel工作簿中工作表 {it:#} 的可用单元格范围{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <import_excel.sthlp>}