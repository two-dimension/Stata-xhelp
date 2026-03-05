{smcl}
{* *! version 1.0.19  15oct2018}{...}
{viewerdialog "import haver" "dialog import_haver_dlg"}{...}
{vieweralsosee "[D] import haver" "mansection D importhaver"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] import" "help import_zh"}{...}
{vieweralsosee "[D] import delimited" "help import delimited"}{...}
{vieweralsosee "[D] import fred" "help import fred"}{...}
{vieweralsosee "[D] odbc" "help odbc_zh"}{...}
{vieweralsosee "[TS] tsset" "help tsset_zh"}{...}
{viewerjumpto "Syntax" "import_haver_zh##syntax"}{...}
{viewerjumpto "Menu" "import_haver_zh##menu"}{...}
{viewerjumpto "Description" "import_haver_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "import_haver_zh##linkspdf"}{...}
{viewerjumpto "Options for import haver" "import_haver_zh##importoptions"}{...}
{viewerjumpto "Options for import haver, describe" "import_haver_zh##importdescribeoptions"}{...}
{viewerjumpto "Option for set haverdir" "import_haver_zh##sethaverdiroption"}{...}
{viewerjumpto "Remarks and examples" "import_haver_zh##remarks"}{...}
{viewerjumpto "Stored results" "import_haver_zh##results"}
{help import_haver:English Version}
{hline}{...}
{p2colset 1 21 18 2}{...}
{p2col:{bf:[D] import haver} {hline 2}}从 Haver Analytics 数据库导入数据{p_end}
{p2col:}({mansection D importhaver:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{phang}
加载 Haver 数据

{p 8 32 2}
{cmd:import} {cmdab:hav:er} {it:{help import_haver##seriesdblist:系列数据库列表}} [,
     {it:{help import_haver##import_haver_options:import_haver_options}}]


{phang}
使用内存中的数据集加载 Haver 数据

{p 8 32 2}
{cmd:import} {cmdab:hav:er}, {opt frommem:ory}
     [{it:{help import_haver##import_haver_options:import_haver_options}}]


{phang}
描述 Haver 数据库的内容

{p 8 32 2}
{cmd:import} {cmdab:hav:er} {it:{help import_haver##seriesdblist:系列数据库列表}},
     {cmdab:des:cribe} [{it:{help import_haver##import_haver_describe_options:import_haver_describe_options}}]


{phang}
指定 Haver 数据库存储的目录

{p 8 32 2}
{cmd:set haverdir "}{it:path}{cmd:"} [{cmd:,} {opt perm:anently}]


{synoptset 37}{...}
{marker import_haver_options}{...}
{synopthdr :import_haver_options}
{synoptline}
{synopt:{cmdab:fi:n:(}[{it:datestring}]{cmd:,} [{it:datestring}]{cmd:)}}在指定日期范围内加载数据 {p_end}
{synopt:{cmdab:fw:ithin:(}[{it:datestring}]{cmd:,} [{it:datestring}]{cmd:)}}同{opt fin()}但不包括范围的端点{p_end}
{synopt:{opth tv:ar(varname)}}创建时间变量 {it:varname}{p_end}
{synopt:{cmd:case(}{cmdab:l:ower}|{cmdab:u:pper}{cmd:)}}将变量名作为小写或大写读取{p_end}
{synopt:{opth hm:issing(missing:misval)}}将缺失值记录为 {it:misval}
{p_end}
{synopt:{cmdab:aggm:ethod(}{cmd:strict}|{cmd:relaxed}|{cmd:force)}}设置时间聚合计算如何处理缺失数据{p_end}

{synopt :{opt frommem:ory}}使用内存中的文件加载数据 {p_end}
{synopt:{opt clear}}在加载 Haver 数据库之前清除内存中的数据{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}{opt frommemory} 和 {opt clear} 不会出现在对话框中。{p_end}


{synoptset 37 tabbed}{...}
{marker import_haver_describe_options}{...}
{synopthdr :import_haver_describe_options}
{synoptline}
{p2coldent :* {opt des:cribe}}描述 {it:seriesdblist} 的内容{p_end}
{synopt :{opt det:ail}}列出每个系列的完整信息表{p_end}
{synopt:{cmdab:saving(}{it:{help filename_zh}}[{cmd:, verbose replace}]{cmd:)}}将系列信息保存到 {it:filename}{cmd:.dta}{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
* {opt describe} 是必需的。


{marker seriesdblist}{...}
{p 4 4 2}
{it:seriesdblist} 是以下一个或多个内容：

            {it:dbfile}
            {it:series}{cmd:@}{it:dbfile}
            {cmd:(}{it:series series} ....{cmd:)@}{it:dbfile}

{p 4 4 2}
其中 {it:dbfile} 是 Haver Analytics 数据库的名称，{it:series} 包含 Haver Analytics 系列。 {cmd:?} 和 {cmd:*} 是在 {it:series} 中允许的通配符。 {it:series} 和 {it:dbfile} 不区分大小写。

{marker seriesdblist_examples}{...}
{p 8 8 2}
示例:  {cmd:import haver gdp@usecon}
{p_end}
{p 12 12 2}
	从 USECON 数据库导入 GDP 系列。

{p 8 8 2}
示例:  {cmd:import haver gdp@usecon c1*@ifs}
{p_end}
{p 12 12 2}
	从 USECON 数据库导入 GDP 系列，并从 IFS 数据库导入任何以 c1 开头的系列。

{p 4 4 2}
注意: 如果您没有使用 {cmd:set haverdir} 命令，则必须指定数据库的路径。{p_end}

{p 8 8 2}
示例:  {cmd:import haver gdp@"C:\data\usecon" c1*@"C:\data\ifs"}

{p 4 4 2}
如果您不指定数据库的路径，并且没有 {cmd:set haverdir}，则 {cmd:import haver} 将在当前工作目录中查找数据库。{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:文件 > 导入 > Haver Analytics 数据库}


{marker description}{...}
{title:描述}

{pstd}
Haver Analytics ({browse "http://www.haver.com"}) 提供经济和金融数据库，您可以购买访问权限。 {opt import haver}
命令允许您使用这些数据库与 Stata。 {opt import haver} 命令仅随 Stata for Windows 提供。

{pstd}
{cmd:import} {cmd:haver} {it:seriesdblist} 将一个或多个 Haver 数据库的数据加载到 Stata 的内存中。

{pstd}
{cmd:import} {cmd:haver} {it:seriesdblist}{cmd:, describe} 描述一个或多个 Haver 数据库的内容。

{pstd}
如果指定的数据库没有后缀，则假定后缀为 {opt .dat}。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection D importhaverQuickstart:快速启动}

        {mansection D importhaverRemarksandexamples:备注和示例}

{pstd}
上述部分不包括在此帮助文件中。


{marker importoptions}{...}
{title:导入 Haver 的选项}

{phang}
{cmd:fin(}[{it:datestring}]{cmd:,} [{it:datestring}]{cmd:)}
   指定要加载的数据的日期范围。 {it:datestring} 必须遵循 Stata 的默认设置以适应不同的频率。 参见 
   {manhelp datetime_display_formats D:日期时间显示格式}。 示例有 23mar2012（每日和每周）、2000m1（每月）、2003q4（季度）和 1998（年度）。 {cmd:fin(1jan1999, 31dec1999)} 表示从1999年1月1日至1999年12月31日（包括该日期）。 请注意，周数据必须以日数据的形式指定，因为 Haver 周数据在概念上与 Stata 周数据不同。

{pmore}
   {cmd:fin()} 还决定聚合频率。
   如果您想以低于数据存储的频率检索数据，请相应地在 {cmd: fin()} 选项中指定日期。例如，要将按季度存储的系列检索到年度数据集中，您可以输入 {cmd:fin(1980,2010)}。

{phang}
{cmd:fwithin(}[{it:datestring}]{cmd:,} [{it:datestring}]{cmd:)}
   其功能与 {cmd:fin()} 相同，只是范围的端点将被排除在加载的数据之外。

{phang}
{opth tvar(varname)} 指定 Stata 将创建的时间变量的名称。 默认值是 {cmd:tvar(time)}。 {opt tvar()} 变量是您在加载后用于 {cmd:tsset} 数据所使用的变量名称，尽管这样做并不必要，因为 {cmd:import haver} 会自动为您 {cmd:tsset} 数据。

{phang}
{cmd:case(lower}|{cmd:upper)} 指定导入后变量名称的大小写。 默认值是 {cmd:case(lower)}。

{phang}
{opt hmissing(misval)} 指定 Stata 的 27 个缺失值（{cmd:.}、{cmd:.a}，...，{cmd:.z}）中的一个，当 Haver 数据库中存在缺失值时将其记录。

{pmore}
   Haver 数据库中存在两种缺失值。 第一种是在数据未跨越整个范围时未记录任何内容；这些缺失值始终由 Stata 存储为 {cmd:.}。 第二种是在 Haver 记录了 Haver 缺失值时；默认情况下，这些值由 Stata 存储为 {cmd:.}，但您可以使用 {opt hmissing()} 指定使用不同的 {help missing_zh:extended missing-value} 代码。

{phang}
{cmd:aggmethod(strict}|{cmd:relaxed}|{cmd:force)} 在存在缺失观测值的情况下，指定时间聚合的方法。 
{cmd:aggmethod(strict)} 是默认的聚合方法。

{pmore}
大多数高于年度频率的 Haver 系列都有一个聚合类型，决定数据如何聚合。 三种聚合类型是平均（AVG）、总和（SUM）和期末（EOP）。 每种聚合方法在每种聚合类型上表现不同。

{pmore}
聚合跨度是以原始频率表达的时间段。
目标是在聚合跨度内将数据聚合为目标频率的单个观察值（即更低的频率）。 例如，1973m1-1973m3 是季度聚合到 1973q1 的聚合跨度。

{pmore}
{cmd:strict} 聚合方法：

{p 12 15 2}
1) （平均）如果聚合跨度内没有观测值缺失，则聚合值为平均值；否则，聚合值为缺失。

{p 12 15 2}
2) （总和）如果聚合跨度内没有观测值缺失，则聚合值为总和；否则，聚合值为缺失。

{p 12 15 2}
3) （期末）聚合值为聚合跨度内最后一个时段的系列值，无论其是否缺失。

{pmore}
{cmd:relaxed} 聚合方法：

{p 12 15 2}
1) （平均）只要聚合跨度内存在一个非缺失数据点，聚合值就是平均值；否则，聚合值为缺失。

{p 12 15 2}
2) （总和）如果聚合跨度内没有观测值缺失，则聚合值为总和；否则，聚合值为缺失。

{p 12 15 2}
3) （期末）聚合值为聚合跨度内最后一个可用的非缺失数据点；否则，聚合值为缺失。

{pmore}
{cmd:force} 聚合方法：

{p 12 15 2}
1) （平均）只要聚合跨度内存在一个非缺失数据点，聚合值就是平均值；否则，聚合值为缺失。

{p 12 15 2}
2) （总和）如果聚合跨度内至少有一个非缺失数据点，则聚合值为总和；否则，聚合值为缺失。

{p 12 15 2}
3) （期末）聚合值为聚合跨度内最后一个可用的非缺失数据点；否则，聚合值为缺失。

{pstd}
以下选项适用于 {cmd:import haver}，但在对话框中未显示：

{phang}
{cmd:frommemory}
   指定内存中数据集的每个观察值指定要导入的 Haver 系列的信息。 内存中的数据集必须包含名为 {opt path}、{opt file} 和 {opt series} 的变量。 
   {opt path} 中的观察值指定 Haver 数据库的路径，{opt file} 中的观察值指定 Haver 数据库，而 {opt series} 中的观察值指定要导入的系列。

{phang}
{opt clear} 在加载 Haver 数据库之前清除内存中的数据。


{marker importdescribeoptions}{...}
{title:与 import haver, describe 一起使用的选项}

{phang}
{opt describe} 描述一个或多个 Haver 数据库的内容。

{phang}
{opt detail} 指定显示关于变量的所有可用信息的详细报告。

{phang}
{cmdab:saving(}{it:{help filename_zh}}[{cmd:, verbose replace}]{cmd:)} 将系列元信息保存到 Stata 数据集。 默认情况下，系列元信息不显示在结果窗口中，但您可以使用 {opt verbose} 选项来显示它。

{pmore}{cmdab:saving()} 保存一个 Stata 数据集，可以随后与 {cmdab:frommemory} 选项一起使用。


{marker sethaverdiroption}{...}
{title:set haverdir 的选项}

{phang}
{cmd:permanently}
指定除了立即进行更改外，还要记住 {cmd:haverdir} 设置，并在您调用 Stata 时成为默认设置。


{marker remarks}{...}
{title:备注和示例}

{pstd}
备注按照以下标题呈现：

	{help import_haver##remarks1:安装}
	{help import_haver##remarks2:设置 Haver 数据库路径}
	{help import_haver##remarks3:下载示例 Haver 数据库}
	{help import_haver##remarks4:确定 Haver 数据库的内容}
	{help import_haver##remarks5:加载 Haver 数据库}
	{help import_haver##remarks6:从描述文件加载 Haver 数据库}
	{help import_haver##remarks7:时间聚合}
	{help import_haver##remarks8:每日数据}
	{help import_haver##remarks9:每周数据}


{marker remarks1}{...}
{title:安装}

{pstd}
Haver Analytics ({browse "http://www.haver.com"}) 提供 200 多个经济和金融数据库，格式为 {cmd:.dat} 文件，您可以购买访问权限。 {cmd:import haver} 命令便于您通过 Stata 访问这些数据库。 {cmd:import haver} 仅随 Stata for Windows 提供。


{marker remarks2}{...}
{title:设置 Haver 数据库路径}

{pstd}
如果您想从 Haver Analytics 数据库中检索数据，您必须找到数据库存储的目录。 这很可能是一个网络位置。 如果您不知道该目录，请联系技术支持人员或 Haver Analytics ({browse "http://www.haver.com"})。 一旦确定目录位置——例如，{cmd:H:\haver_files}——您可以使用以下命令保存它

{phang2}
	{cmd:. set haverdir "H:\haver_files\", permanently}

{pstd}
使用 {opt permanently} 选项将保留 Haver 目录信息，使其在 Stata 会话之间保持不变。 一旦设置了 Haver 目录，您可以开始检索数据。 例如，如果您订阅了 USECON 数据库，您可以输入

{phang2}
	{cmd:. import haver gdp@usecon}

{pstd}
以将 GDP 系列加载到 Stata 中。 如果您没有使用 {cmd:set haverdir}，则需要输入

{phang2}
	{cmd:. import haver gdp@"H:\haver_files\usecon"}

{pstd}
传递给 {cmd:set haverdir} 的目录路径保存在 {cmd:creturn} 值 {cmd:c(haverdir)} 中。 您可以通过输入以下内容查看它

{phang2}
	{cmd:. display "`c(haverdir)'"}


{marker remarks3}{...}
{title:下载示例 Haver 数据库}

{pstd}
您可以下载三个示例 Haver 数据库到您的工作目录。 运行下面的 {cmd:copy} 命令下载 HAVERD、HAVERW 和 HAVERMQA。

	{cmd:. copy https://www.stata.com/haver/HAVERD.DAT haverd.dat}
	{cmd:. copy https://www.stata.com/haver/HAVERD.IDX haverd.idx}
	{cmd:. copy https://www.stata.com/haver/HAVERW.DAT haverw.dat}
	{cmd:. copy https://www.stata.com/haver/HAVERW.IDX haverw.idx}
	{cmd:. copy https://www.stata.com/haver/HAVERMQA.DAT havermqa.dat}
	{cmd:. copy https://www.stata.com/haver/HAVERMQA.IDX havermqa.idx}

{pstd}
要使用这些文件，您需要确保未设置 Haver 目录：

{phang2}
	{cmd:. set haverdir ""}


{marker remarks4}{...}
{title:确定 Haver 数据库的内容}

{pstd}
{cmd:import} {cmd:haver} {it:seriesdblist}{cmd:, describe} 显示 Haver 数据库的内容。 如果未指定系列，则将描述所有系列。

        {cmd:. import haver haverd, describe}

数据集: haverd
-------------------------------------------------------------------------------
变量   描述               时间范围             频率  来源
-------------------------------------------------------------------------------
FXTWB      名义广泛贸易权重..   03jan2005-02mar2012   每日     FRB
FXTWM      名义贸易权重..   03jan2005-02mar2012   每日     FRB
FXTWOTP    名义贸易权重..   03jan2005-02mar2012   每日     FRB
-------------------------------------------------------------------------------

摘要
-------------------------------------------------------------------------------
    描述的系列数量: 3
              未找到的系列数量: 0


{pstd}
上述描述了 Haver 数据库 {cmd:haverd.dat}，我们已经在计算机上并在当前目录中。

{pstd}
默认情况下，输出的每一行对应一种 Haver 系列。 指定 {opt detail} 将显示有关每个系列的更多信息，指定 {it:seriesname}{cmd:@} 允许我们将输出限制于我们感兴趣的系列：

        {cmd:. import haver FXTWB@haverd, describe detail}

-------------------------------------------------------------------------------
FXTWB         名义广泛贸易加权美元汇率（1/97=100）
-------------------------------------------------------------------------------
    频率: 每日                     时间范围: 03jan2005-02mar2012
    观察次数: 1870         修改日期: 07mar2012 11:27:33
    聚合类型: AVG                十进制精度: 4
    差异类型: 0                   数量级: 0
    数据类型: 指数                     组: R03
    主要地理编码: 111          次要地理编码:
    来源: FRB                          来源描述: 美国联邦储备局


摘要
-------------------------------------------------------------------------------
    描述的系列数量: 1
              未找到的系列数量: 0

{pstd}
您可以用一个命令描述多个 Haver 数据库：

	{cmd:. import haver haverd haverw, describe}
	<输出省略>

{pstd}
要限制输出到我们对每个数据库感兴趣的系列，您可以输入

	{cmd:. import haver (FXTWB FXTWOTP)@haverd FARVSN@haverw, describe}
	<输出省略>


{marker remarks5}{...}
{title:加载 Haver 数据库}

{pstd}
{cmd:import haver} {it:seriesdblist} 加载 Haver 数据库。如果未指定系列，则将加载所有系列。
{p_end}

        {cmd:. import haver haverd, clear}

摘要
-------------------------------------------------------------------------------
       Haver 数据检索: 2012年12月10日 11:41:18
      请求的系列数量: 3
      使用的数据库数量: 1 (HAVERD)
       所有系列已成功检索

频率
-------------------------------------------------------------------------------
    最高 Haver 频率: 每日
     最低 Haver 频率: 每日
 Stata 数据集频率: 每日


{pstd}
{cmd:import} {cmd:haver} {it:seriesdblist} 产生的表包含有关加载数据的摘要、加载数据的频率信息、由于错误无法加载的系列以及有关数据的说明。

{pstd}
数据集现在包含一个时间变量和三个从 HAVERD 数据库中提取的变量：

        {cmd:. describe}

包含数据
  观察:         1,870
  变量:             4
  大小:        59,840
-------------------------------------------------------------------------------
              存储  显示     值
变量名   类型   格式      标签      变量标签
-------------------------------------------------------------------------------
time            double %td
fxtwb_haverd    double %10.0g                 名义广泛贸易加权
                                                美元汇率（1/97=100）
fxtwm_haverd    double %10.0g                 名义贸易加权汇率
                                                美元对主要货币（3/73=100）
fxtwotp_haverd  double %10.0g                 名义贸易加权美元汇率
                                                对 OITP（1/97=100）
-------------------------------------------------------------------------------
按: time 排序
     注意: 数据集自上次保存以来已更改。

{pstd}
Haver 数据库包括关于每个变量的以下元信息：

{p2colset 9 30 32 2}{...}
{synopt:{cmd:HaverDB}}数据库名称{p_end}
{synopt:{cmd:Series}}系列名称{p_end}
{synopt:{cmd:DateTimeMod}}系列最后修改的日期/时间{p_end}
{synopt:{cmd:Frequency}}系列的频率（从每日到每年），如在 Haver 数据库中存储{p_end}
{synopt:{cmd:Magnitude}}数据的数量级{p_end}
{synopt:{cmd:DecPrecision}}变量记录的小数位数{p_end}
{synopt:{cmd:DifType}}仅在 Haver 软件中相关：如果 =1，则不允许进行百分比计算{p_end}
{synopt:{cmd:AggType}}时间聚合类型（AVG、SUM、EOP）中的一种{p_end}
{synopt:{cmd:DataType}}数据类型（例如，比例、指数、美元、%）{p_end}
{synopt:{cmd:Group}}该变量所属 Haver 系列组{p_end}
{synopt:{cmd:Geography1}}主地理编码{p_end}
{synopt:{cmd:Geography2}}次要地理编码{p_end}
{synopt:{cmd:StartDate}}数据开始日期{p_end}
{synopt:{cmd:EndDate}}数据结束日期{p_end}
{synopt:{cmd:Source}}与数据来源关联的 Haver 代码{p_end}
{synopt:{cmd:SourceDescription}}与数据来源关联的 Haver 代码的描述{p_end}
{p2colreset}{...}

{pstd}
当变量被加载时，这些元信息被存储在变量特征中（见 {help char_zh:[P] char}）。 这些特征可以通过 {cmd:char list} 查看：

	{cmd:. char list fxtwb_haverd[]}
          fxtwb_haverd[HaverDB]:      HAVERD
          fxtwb_haverd[Series]:       FXTWB
          fxtwb_haverd[DateTimeMod]:  26feb2012 14:56:36
          fxtwb_haverd[Frequency]:    每日
          fxtwb_haverd[Magnitude]:    0
          fxtwb_haverd[DecPrecision]: 4
          fxtwb_haverd[DifType]:      0
          fxtwb_haverd[AggType]:      AVG
          fxtwb_haverd[DataType]:     指数
          fxtwb_haverd[Group]:        D01
          fxtwb_haverd[Geography1]:   0000000
          fxtwb_haverd[StartDate]:    03jan2005
          fxtwb_haverd[EndDate]:      17feb2012
          fxtwb_haverd[Source]:       FRB
          fxtwb_haverd[SourceDescription]:
	                              美国联邦储备局

{pstd}
您可以用一个命令加载多个 Haver 数据库/系列。 要从 HAVERD 数据库加载系列 FXTWB 和 FXTWOTP 以及从 HAVERMQA 数据库加载所有以 V 开头的系列，您可以输入

	{cmd:. import haver (FXTWB FXTWOTP)@haverd V*@havermqa, clear}
	<输出省略>

{pstd}
{cmd:import haver} 自动为您 {opt tsset} 数据。


{marker remarks6}{...}
{title:从描述文件加载 Haver 数据库}

{pstd}
您经常需要浏览 Haver 数据库(s) 的系列信息，以查看您想要加载哪些系列。 您可以通过将 {cmd:import haver, describe} 的输出保存到 Stata 数据集中，使用 {opt saving(filename)} 选项来执行此操作。 创建的数据集可以通过 {cmd:import haver, frommemory} 从描述的 Haver 数据库(dr) 中加载数据。 例如，这里我们搜索 HAVERMQA 数据库中的系列信息。

	{cmd:. import haver havermqa, describe saving(my_desc_file)}
	<输出省略>

	{cmd:. use my_desc_file, clear}

	{cmd:. describe}

包含来自 my_desc_file.dta 的数据
  观察:           161
  变量:             8                          2012年12月10日 11:41
  大小:        19,642
-------------------------------------------------------------------------------
              存储  显示     值
变量名   类型   格式      标签      变量标签
-------------------------------------------------------------------------------
path            str1   %9s                    Haver 文件路径
file            str8   %9s                    Haver 文件名
series          str7   %9s                    系列名称
description     str80  %80s                   系列描述
startdate       str7   %9s                    开始日期
enddate         str7   %9s                    结束日期
frequency       str9   %9s                    频率
source          str3   %9s                    来源
-------------------------------------------------------------------------------

{pstd}
结果数据集包含了 HAVERMQA 中的 164 个系列的信息。 假设我们想检索所有描述中包含“Yield”的每月系列。 我们需要仅保留频率变量等于“每月”且描述变量包含“Yield”的数据集的观察值。

	{cmd:. keep if frequency=="Monthly" & strpos(description,"Yield")}
	(152 个观察已删除)

{pstd}
要将选定的系列加载到 Stata 中，我们输入

	{cmd:. import haver, frommemory clear}

{pstd}
注意: 我们必须 {cmd:clear} 描述数据以加载选定系列。 如果您不希望丢失您对描述数据集所做的更改，您必须在使用 {cmd:import haver, frommemory} 之前保存它。


{marker remarks7}{...}
{title:时间聚合}

{pstd}
如果您请求不同频率的系列，则高频率数据将被聚合到最低频率。例如，如果请求每月和每季度系列，则每月系列将被聚合。在极少数情况下，某些系列无法聚合到较低频率，因此不会被检索。这些系列的列表将存储在 {cmd:r(noaggtype)} 中。

{pstd}
选项 {opt fin()} 和 {opt fwithin()} 对手动聚合系列非常有用。


{marker remarks8}{...}
{title:每日数据}

{pstd}
Haver 的每日频率对应于 Stata 的每日频率。 Haver 的每日数据系列是商业系列，商业日历很有用。 有关商业日历的更多信息，请参见 
{helpb datetime business calendars:[D] 日期时间商业日历}。


{marker remarks9}{...}
{title:每周数据}

{pstd}
Haver 的每周数据也会检索到 Stata 的每日频率。 有关商业日历的更多信息，请参见 
{helpb datetime business calendars:[D] 日期时间商业日历}。


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:import haver} 将以下内容存储在 {cmd:r()} 中：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:r(k_requested)}}请求的系列数量{p_end}
{synopt:{cmd:r(k_noaggtype)}}由于聚合类型无效而丢弃的系列数量 {p_end}
{synopt:{cmd:r(k_nodisagg)}}由于其频率低于输出数据集的频率而丢弃的系列数量{p_end}
{synopt:{cmd:r(k_notindata)}}由于数据超出 {opt fwithin()} 或 {opt fin()} 中指定的日期范围而丢弃的系列数量{p_end}
{synopt:{cmd:r(k_notfound)}}未在数据库中找到的系列数量{p_end}

{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:r(noaggtype)}}由于聚合类型无效而丢弃的系列列表{p_end}
{synopt:{cmd:r(nodisagg)}}由于其频率低于输出数据集的频率而丢弃的系列列表{p_end}
{synopt:{cmd:r(notindata)}}由于数据超出 {opt fwithin()} 或 {opt fin()} 中指定的日期范围而丢弃的系列列表{p_end}
{synopt:{cmd:r(notfound)}}未在数据库中找到的系列列表{p_end}

{pstd}
{cmd:import haver}{cmd:, describe} 将以下内容存储在 {cmd:r()} 中：

{synoptset 20 tabbed}{...}
{p2col 5 20 24 2: 标量}{p_end}
{synopt:{cmd:r(k_described)}}描述的系列数量{p_end}
{synopt:{cmd:r(k_notfound)}}未在数据库中找到的系列数量{p_end}

{p2col 5 20 24 2: 宏}{p_end}
{synopt:{cmd:r(notfound)}}未在数据库中找到的系列列表{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <import_haver.sthlp>}