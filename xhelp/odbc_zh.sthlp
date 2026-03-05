{smcl}
{* *! version 1.4.6  07mar2018}{...}
{viewerdialog "odbc load" "dialog odbc_load"}{...}
{viewerdialog "odbc insert" "dialog odbc_insert"}{...}
{vieweralsosee "[D] odbc" "mansection D odbc"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] export" "help export_zh"}{...}
{vieweralsosee "[D] import" "help import_zh"}{...}
{viewerjumpto "语法" "odbc_zh##syntax"}{...}
{viewerjumpto "菜单" "odbc_zh##menu"}{...}
{viewerjumpto "描述" "odbc_zh##description"}{...}
{viewerjumpto "PDF文档链接" "odbc_zh##linkspdf"}{...}
{viewerjumpto "选项" "odbc_zh##options"}{...}
{viewerjumpto "示例" "odbc_zh##examples"}
{help odbc:English Version}
{hline}{...}
{p2colset 1 13 15 2}{...}
{p2col:{bf:[D] odbc} {hline 2}}从 ODBC 源加载、写入或查看数据{p_end}
{p2col:}({mansection D odbc:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{phang}列出 Stata 可连接的 ODBC 源

{p 8 13 2}
{cmd:odbc} {opt li:st}


{phang}从指定数据源检索可用的名称

{p 8 13 2}
{cmd:odbc} {opt q:uery}
[{cmd:"}{it:DataSourceName}{cmd:"}
{cmd:,}
{opt verb:ose} {opt sche:ma} {it:{help odbc##connect_options:连接选项}}]


{phang}列出与指定表相关的列名和类型

{p 8 13 2}
{cmd:odbc} {opt des:cribe}
[{cmd:"}{it:TableName}{cmd:"}
{cmd:,}
{it:{help odbc##connect_options:连接选项}}]


{phang}从 ODBC 数据源导入数据

{p 8 13 2}
{cmd:odbc} {opt lo:ad}
[{it:extvarlist}]
{ifin}
{cmd:,}
{c -(}{cmdab:t:able:(}{cmd:"}{it:TableName}{cmd:"}{cmd:)}{c |}{cmdab:e:xec:(}{cmd:"}{it:SqlStmt}{cmd:"}{cmd:)}{c )-} {break}
[{it:{help odbc##load_options:加载选项} {help odbc##connect_options:连接选项}}]


{phang}导出数据到 ODBC 数据源

{p 8 13 2}
{cmd:odbc} {opt in:sert}
[{varlist}] {ifin} {cmd:,}
{cmdab:t:able:(}{cmd:"}{it:TableName}{cmd:"}{cmd:)}{break}
{c -(}{cmd:dsn(}{cmd:"}{it:DataSourceName}{cmd:"}{cmd:)}{c |}{cmdab:conn:ectionstring:(}{cmd:"}{it:ConnectStr}{cmd:"}{cmd:)}{c )-} {break}
[{it:{help odbc##insert_options:插入选项}} {it:{help odbc##connect_options:连接选项}}]


{phang}允许直接对 ODBC 数据源发出 SQL 语句

{p 8 13 2}
{cmd:odbc} {cmdab:exe:c(}{cmd:"}{it:SqlStmt}{cmd:"}{cmd:) ,}
{c -(}{cmd:dsn(}{cmd:"}{it:DataSourceName}{cmd:"}{cmd:)}{c |}{cmdab:conn:ectionstring:(}{cmd:"}{it:ConnectStr}{cmd:"}{cmd:)}{c )-} {break}
[{it:{help odbc##connect_options:连接选项}}]


{phang}批处理作业替代 odbc exec

{p 8 13 2}
{cmd:odbc} {cmdab:sql:file:(}{cmd:"}{it:{help filename_zh}}{cmd:"}{cmd:) ,}
{c -(}{cmd:dsn(}{cmd:"}{it:DataSourceName}{cmd:"}{cmd:)}{c |}{cmdab:conn:ectionstring:(}{cmd:"}{it:ConnectStr}{cmd:"}{cmd:)}{c )-} {break}
[{opt loud} {it:{help odbc##connect_options:连接选项}}]


{phang}指定 ODBC 驱动程序类型

{p 8 17 2}
{cmd:set}
{cmd:odbcdriver}
{c -(}{opt unicode}{c |}{opt ansi}{c )-} 
[{cmd:,} {opt perm:anently}]


{phang}指定 ODBC 驱动程序管理器（仅限 Mac 和 Unix）

{p 8 17 2}
{cmd:set}
{cmd:odbcmgr}
{c -(}{opt iodbc}{c |}{opt unixodbc}{c )-} 
[{cmd:,} {opt perm:anently}]


{phang}{it:DataSourceName} 是 ODBC 源的名称（数据库、电子表格等。）

{phang}{it:ConnectStr} 是有效的 ODBC 连接字符串

{phang}{it:TableName} 是 ODBC 数据源中表的名称

{phang}{it:SqlStmt} 是 SQL SELECT 语句

{phang}{it:filename} 是由分号分隔的纯 SQL 命令

{phang}{it:extvarlist} 包含

{phang3}{it:sqlvarname}{p_end}
{phang3}{varname}={it:sqlvarname}

{synoptset 35}{...}
{marker connect_options}{...}
{synopthdr :连接选项}
{synoptline}
{synopt :{opt u:ser(UserID)}}建立连接的用户的用户 ID{p_end}
{synopt :{opt p:assword(Password)}}建立连接的用户的密码{p_end}
{synopt :{cmdab:d:ialog(noprompt)}}不显示 ODBC 连接信息对话框，并且不提示用户输入连接信息{p_end}
{synopt :{cmdab:d:ialog(prompt)}}显示 ODBC 连接信息对话框{p_end}
{synopt :{cmdab:d:ialog(complete)}}仅当信息不足时显示 ODBC 连接信息对话框{p_end}
{synopt :{cmdab:d:ialog(required)}}仅当提供的强制性信息不足时显示 ODBC 连接信息对话框{p_end}
{p2coldent:*{cmd:dsn("}{it:DataSourceName}{cmd:")}}数据源的名称{p_end}
{p2coldent:*{cmdab:conn:ectionstring("}{it:ConnectStr}{cmd:")}}ODBC 连接字符串{p_end}
{synoptline}
{p 4 6 2}* {cmd:dsn("}{it:DataSourceName}{cmd:")} 和
{cmd:odbc query} 不允许同时使用。您不能在 {cmd:odbc query} 中同时指定 {it:DataSourceName} 和 {cmd:connectionstring()}。在 {cmd:odbc insert}、{cmd:odbc exec} 和 {cmd:odbc sqlfile} 中必须使用 {cmd:dsn()} 或 {cmd:connectionstring()}。

{synoptset 25 tabbed}{...}
{marker load_options}{...}
{synopthdr :加载选项}
{synoptline}
{p2coldent :* {cmdab:t:able("}{it:TableName}{cmd:")}}存在于数据源中的表名{p_end}
{p2coldent :* {cmdab:e:xec("}{it:SqlStmt}{cmd:")}}用于生成要读取到 Stata 的表的 SQL SELECT 语句{p_end}
{synopt :{opt clear}}即使内存中有数据集，也加载数据集{p_end}
{synopt :{opt noq:uote}}改变 Stata 对 SQL 命令的内部使用；很少使用{p_end}
{synopt :{opt low:ercase}}将变量名称作为小写读取{p_end}
{synopt :{opt sql:show}}显示所有发出的 SQL 命令{p_end}
{synopt :{opt allstr:ing}}将所有变量作为字符串读取{p_end}
{synopt :{opt datestr:ing}}将日期格式的变量作为字符串读取{p_end}
{synopt :{opt multis:tatement}}允许使用 {opt exec()} 的多个 SQL 语句，以分号分隔{p_end}
{synopt :{opt bigint:asdouble}}在 64 位操作系统上将 BIGINT 列存储为 Stata 双精度{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
* 必须在 {cmd:odbc}
{cmd:load} 中指定 {cmd:table("}{it:TableName}{cmd:")} 或
{cmd:exec("}{it:SqlStmt}{cmd:")}。{p_end}

{synoptset 25 tabbed}{...}
{marker insert_options}{...}
{synopthdr :插入选项}
{synoptline}
{p2coldent :* {cmdab:t:able("}{it:TableName}{cmd:")}}存在于数据源中的表名{p_end}
{synopt :{opt over:write}}在将内存中的数据写入表之前清除 ODBC 表中的数据{p_end}
{synopt :{opt ins:ert}}{opt odbc insert} 命令的默认操作模式{p_end}
{synopt :{opt q:uoted}}在将所有值插入 ODBC 表时，用单引号引用所有值{p_end}
{synopt :{opt sql:show}}显示所有发出的 SQL 命令{p_end}
{synopt :{cmd:as("}{varlist}{cmd:")}}数据源上与 Stata 内存中变量对应的 ODBC 变量{p_end}
{synopt :{opt block}}使用块插入{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
* 在 {cmd:odbc}
{cmd:insert} 中必须指定 {cmd:table("}{it:TableName}{cmd:")}。{p_end}


{marker menu}{...}
{title:菜单}

    {title:odbc load}

{phang2}
{bf:文件 > 导入 > ODBC 数据源}

    {title:odbc insert}

{phang2}
{bf:文件 > 导出 > ODBC 数据源}


{marker description}{...}
{title:描述}

{pstd}
{opt odbc} 让您从开放数据库连接 (ODBC) 源加载、写入和查看数据到 Stata。ODBC 是一组标准化的函数调用，用于访问存储在关系和非关系数据库管理系统中的数据。在 Unix 平台上，Stata 默认使用 iODBC 作为 ODBC 驱动程序管理器，但您可以通过使用 {cmd:set odbcmgr unixodbc} 命令使用 unixODBC。

{pstd}
ODBC 的架构由四个主要组件（或层）组成：客户端接口、ODBC 驱动程序管理器、ODBC 驱动程序和数据源。Stata 将 {opt odbc} 作为客户端接口。系统如下所示：

    {c TLC}{hline 19}{c TRC}{dup 37: }{c TLC}{hline 10}{c TRC}
    {c |}{dup 19: }{c |}{dup 5: }{c TLC}{hline 9}{c TRC}{dup 5: }{...}
{c TLC}{hline 9}{c TRC}{dup 5: }{c |}{dup 10: }{c |}
    {c |} {ul:客户端接口}  {c |}{dup 5: }{c |}{dup 9: }{c |}{...}
{dup 5: }{c |}{dup 9: }{c |}{dup 5: }{c |}{dup 10: }{c |}
    {c |}       (Stata)     {c |}{dup 5: }{c |}{dup 9: }{c |}{...}
{dup 5: }{c |}{dup 9: }{c |}{dup 5: }{c |}{dup 10: }{c |}
    {c |}{dup 19: }{c |}{dup 5: }{c |} ODBC    {c |}{dup 5: }{...}
{c |} ODBC    {c |}{dup 5: }{c |}  ODBC    {c |}
    {c |} {cmd:odbc} {cmd:list}         {c |} {hline 3} {c |} 驱动程序  {c |} {...}
{hline 3} {c |} 驱动程序  {c |} {hline 3} {c |}  数据    {c |}
    {c |} {cmd:odbc} {cmd:query}        {c |}{dup 5: }{c |} 管理器 {c |}{dup 5: }{...}
{c |}{dup 9: }{c |}{dup 5: }{c |}  源  {c |}
    {c |} {cmd:odbc} {cmd:describe}     {c |}{dup 5: }{c |}{dup 9: }{c |}{dup 5: }{...}
{c |}{dup 9: }{c |}{dup 5: }{dup 10: }
    {c |} {cmd:odbc} {cmd:load}         {c |}{dup 5: }{c BLC}{hline 9}{c BRC}{...}
{dup 5: }{c BLC}{hline 9}{c BRC}{dup 5: }{c |}{dup 10: }{c |}
    {c |} {cmd:odbc} {cmd:insert}       {c |}{dup 37: }{c |}{dup 10: }{c |}
    {c |} {cmd:odbc} {cmd:exec}         {c |}{dup 37: }{c |}{dup 10: }{c |}
    {c |} {cmd:odbc} {cmd:sqlfile}      {c |}{dup 37: }{c |}{dup 10: }{c |}
    {c BLC}{hline 19}{c BRC}{dup 37: }{c BLC}{hline 10}{c BRC}

{pstd}
{opt odbc list} 生成 Stata 可以连接的 ODBC 数据源名称列表。

{pstd}
{opt odbc query} 从指定数据源的系统目录中检索可用的表名称列表。

{pstd}
{opt odbc describe} 列出与指定表相关的列名称和类型。

{pstd}
{opt odbc load} 将 ODBC 表读取到内存中。您可以加载在 {opt table()} 选项中指定的 ODBC 表，或加载在 {opt exec()} 选项中指定的 SQL SELECT 语句生成的 ODBC 表。在这两种情况下，您可以通过指定 {it:extvarlist} 和 {opt if} 以及 {opt in} 条件来选择要读取的 ODBC 表的列和行。{it:extvarlist} 指定要读取的列，并允许您重命名变量。例如，

{p 8 16 2}
{cmd:. odbc load id=ID name="Last Name", table(Employees) dsn(Northwind)}

{pstd}
读取来自 {cmd:Northwind} 数据源的 {cmd:Employees} 表中的两列 {cmd:ID} 和 {cmd:Last Name}。它还将变量 {cmd:ID} 重命名为 {cmd:id}，将变量 {cmd:Last Name} 重命名为 {cmd:name}。

{pstd}
{opt odbc insert} 将内存中的数据写入 ODBC 表。这些数据可以附加到现有表中，或替换现有的表。

{pstd}
{opt odbc exec} 允许直接向任何 ODBC 数据源发出大多数 SQL 语句。生成输出的语句，如 SELECT，其输出会整齐地显示。通过使用 Stata 的 ado 语言，您还可以动态生成 SQL 命令以进行位置更新或根据需要执行其他操作。

{pstd}
{opt odbc sqlfile} 提供了一个批处理作业的替代方案来替代 {opt odbc exec} 命令。指定一个包含任意数量的任意长度 SQL 命令的文件。此文件中的每个 SQL 命令应由分号分隔，且必须构建为纯 SQL。不允许使用 Stata 宏和 ado 语言语法。使用此命令的优点在于，仅建立一个连接来处理多条 SQL 语句。通过 {opt odbc exec} 使用的类似 SQL 命令序列需要构建一个 ado 文件，该文件发出命令，因此每条 SQL 命令需要建立一个连接。另一个小差别是，任何可能生成的输出默认被抑制。提供了一个 {opt loud} 选项来重新打开输出。

{pstd}
{opt set odbcdriver unicode} 指定 ODBC 驱动程序为 Unicode 驱动程序（默认）。{opt set odbcdriver ansi} 指定 ODBC 驱动程序为 ANSI 驱动程序。您必须重新启动 Stata 才能使设置生效。

{pstd}
{opt set odbcmgr iodbc} 指定 ODBC 驱动程序管理器为 iODBC（默认）。{opt set odbcmgr unixodbc} 指定 ODBC 驱动程序管理器为 unixODBC。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection D odbcQuickstart:快速入门}

        {mansection D odbcRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{opt user(UserID)}
指定尝试与数据源建立连接的用户的用户 ID。默认情况下，Stata 假定用户 ID 与上一个 {opt odbc} 命令中指定的相同，如果当前 Stata 会话中从未指定过 {opt user()}，则为空。

{phang}
{opt password(Password)}
指定尝试与数据源建立连接的用户的密码。默认情况下，Stata 假定密码与之前指定的相同，如果在当前 Stata 会话中未使用密码，则为空。通常，{opt password()} 选项不会与 {opt user()} 选项一起指定。

{phang}
{cmd:dialog(noprompt}|{opt prompt}|{opt complete}|{cmd:required)}
指定 ODBC 驱动程序管理器用于显示 ODBC 连接信息对话框以提示更多连接信息的模式。

{pmore}
{opt noprompt} 是默认值。不会显示 ODBC 连接信息对话框，并且不会提示您输入连接信息。如果没有足够的信息来建立与指定数据源的连接，则返回错误。

{pmore}
{opt prompt} 将显示 ODBC 连接信息对话框。

{pmore}
{opt complete} 仅在没有足够的信息时显示 ODBC 连接信息对话框，即使这些信息不是强制性的。

{pmore}
{opt required} 仅在未提供足够的强制性信息以建立与指定数据源的连接时显示 ODBC 连接信息对话框。仅提示强制性信息；对于连接指定数据源不要求的信息，控件将被禁用。

{phang}
{cmd:dsn("}{it:DataSourceName}{cmd:")}
指定数据源的名称，如 {opt odbc list} 命令列出。如果名称中包含空格，则必须用双引号括起来。默认情况下，Stata 假定数据源名称与上一个 {opt odbc} 命令中指定的相同。此选项在 {cmd:odbc query} 中不允许使用。{cmd:odsn()} 选项或 {cmd:connectionstring()} 选项可以与 {cmd:odbc describe} 和 {cmd:odbc load} 一起使用，这两个选项中的一个必须与 {cmd:odbc insert}、{cmd:odbc exec} 和 {cmd:odbc sqlfile} 一起使用。

{phang}
{cmd:connectionstring("}{it:ConnectStr}{cmd:")}
指定连接字符串，而不是数据源的名称。Stata 不假定连接字符串与上一个 {opt odbc} 命令中指定的相同。{it:DataSourceName} 或 {cmd:connectionstring()} 选项可以与 {cmd:odbc query} 一起使用；{cmd:dsn()} 选项或 {cmd:connectionstring()} 选项可以与 {cmd:odbc describe} 和 {cmd:odbc load} 一起使用，这两个选项中的一个必须与 {cmd:odbc insert}、{cmd:odbc exec} 和 {cmd:odbc sqlfile} 一起使用。

{phang}
{cmd:table("}{it:TableName}{cmd:")}
指定存储在指定数据源的系统目录中的 ODBC 表的名称，如 {opt odbc query} 命令所列。如果表名中包含空格，则必须用双引号括起来。{opt table()} 选项或 {opt exec()} 选项中必须指定一个，但不能同时指定这两个选项。

{phang}
{cmd:exec("}{it:SqlStmt}{cmd:")}
允许您发出 SQL SELECT 语句以生成要读取到 Stata 的表。如果 SELECT 语句无效，则返回错误消息。该语句必须用双引号括起来。{opt table()} 选项或 {opt exec()} 选项中必须指定一个，但不能同时指定这两个选项。

{phang}
{opt clear} 允许在内存中已有数据集的情况下加载数据，即使该数据集自上次保存以来已更改。

{phang}
{opt noquote} 改变 Stata 对 SQL 命令的内部使用，特别是涉及引用表名的命令，以更好地兼容各种驱动程序。此选项对于 DB2 驱动程序特别有用。

{phang}
{opt lowercase} 使所有变量名称作为小写读取。

{phang}
{opt sqlshow} 是一个有用的选项，可以显示所有由 {opt odbc insert} 或 {opt odbc load} 命令发出的 SQL 命令。这可以帮助您调试与插入或加载相关的任何问题。

{phang}
{opt allstring} 使所有变量作为字符串数据类型读取。

{phang}
{opt datestring} 使日期和时间格式的所有变量作为字符串数据类型读取。

{phang}
{opt multistatement} 指定在使用 {cmd:exec()} 选项时允许用 {cmd:;} 分隔的多个 SQL 语句。一些驱动程序不支持多个 SQL 语句。

{phang}
{opt bigintasdouble} 指定将存储在 64 位整数（BIGINT）数据库列中的数据转换为 Stata 双精度。如果任何整数值大于 9,007,199,254,740,965 或小于 -9,007,199,254,740,992，则无法进行此转换，{cmd:odbc load} 将发出错误消息。

{phang}
{opt overwrite} 允许在将内存中的数据写入表之前清除 ODBC 表中的数据。从 ODBC 表中清除所有数据，而不仅仅是将被替换的变量列中的数据。

{phang}
{opt insert} 将数据附加到现有的 ODBC 表中，是 {opt odbc insert} 命令的默认操作模式。

{phang}
{opt quoted} 对于需要引用所有插入值的 ODBC 数据源非常有用。此选项指定在将所有值插入 ODBC 表时用单引号引用。

{phang}
{cmd:as(}{cmd:"}{varlist}{cmd:")} 允许您指定数据源上与 Stata 内存中变量对应的 ODBC 变量。如果此选项被指定，则变量的数量必须等于插入变量的数量，即使某些名称相同。

{phang}
{opt loud} 指定显示 SQL 命令的输出。

{phang}
{opt verbose} 指定 {cmd:odbc query} 列出任何数据源别名、昵称、类型表、类型视图和视图以及表，以便您可以从这些表类型中加载数据。

{phang}
{opt schema} 指定 {cmd:odbc query} 返回来自数据源的表名称的模式名称。注意：从 {cmd:odbc query} 返回的模式名称也将用于 {cmd:odbc describe} 和 {cmd:odbc load} 命令。当使用 {cmd:odbc load} 与模式名称时，您可能还需要指定 {opt noquote} 选项，因为某些驱动程序不接受表名或模式名的引号。

{phang}
{opt block} 指定 {cmd:odbc insert} 使用块插入以加快数据写入性能。一些驱动程序不支持块插入。

{phang}
{opt permanently}（仅适用于 {cmd:set odbcdriver} 和 {cmd:set odbcmgr}）指定除立即进行更改外，还要记住该设置，并使其成为调用 Stata 时的默认设置。


{marker examples}{...}
{title:示例}

{pstd}
以下一些示例是安装 Microsoft Office 时提供的默认示例。根据 Microsoft Office 的版本，您的结果可能会有所不同。

    {cmd}. odbc list

    {txt}数据源名称                驱动
    {hline}
    dBase 文件 - Word              Microsoft Access dBASE 驱动程序 (*.dbf, *.ndx)
    Excel 文件                     Microsoft Excel 驱动程序 (*.xls, *.xlsx, *.xl)
    MS Access 数据库              Microsoft Access 驱动程序 (*.mdb, *.accdb)
    Northwind                       Microsoft Access 驱动程序 (*.mdb, *.accdb)
    {hline}

    {cmd}. odbc query "Northwind"

    {txt}数据源: {result:Northwind}
    路径      : C:\Program Files\Microsoft Office\Office\Samples\Northwind.accdb
    {hline}
    Customers
    Employee Privileges
    Employees
    Inventory Transaction Types
    Inventory Transactions
    Invoices
    Order Details
    Order Details Status
    Orders
    Orders Status
    Orders Tax Status
    Privileges
    Products
    Purchase Order Details
    Purchase Order Status
    Purchase Orders
    Sales Reports
    Shippers
    Strings
    Suppliers
    {hline}

    {cmd}. odbc describe "Employees", dsn("Northwind")

    {txt}数据源: {result:Northwind} (查询)
    表:      {result:Employees} (加载)
    {hline}
    变量名称                               变量类型
    {hline}
    {result:ID}                                 COUNTER
    {result:Company}                            VARCHAR
    {result:Last Name}                          VARCHAR
    {result:First Name}                         VARCHAR
    {result:E-mail Address}                     VARCHAR
    {result:Job Title}                          VARCHAR
    {result:Business Phone}                     VARCHAR
    {result:Home Phone}                         VARCHAR
    {result:Mobile Phone}                       VARCHAR
    {result:Fax Number}                         VARCHAR
    {result:Address}                            LONGCHAR
    {result:City}                               VARCHAR
    {result:State/Province}                     VARCHAR
    {result:ZIP/Postal Code}                    VARCHAR
    {result:Country/Region}                     VARCHAR
    {result:Web Page}                           LONGCHAR
    {result:Notes}                              LONGCHAR
    {result:Attachments}                        LONGCHAR
    {hline}

{p 4 12 2}
    {cmd}. odbc load id=ID name="Last Name" "Job Title" in 1/5, table("Employees") dsn("Northwind")

    {cmd}. list
{txt}
	 {c TLC}{hline 7}{c -}{hline 11}{c -}{hline 23}{c TRC}
	 {c |} {res}   id        name               Job Title {txt}{c |}
	 {c LT}{hline 7}{c -}{hline 11}{c -}{hline 23}{c RT}
      1. {c |} {res}    1   Freehafer    Sales Representative {txt}{c |}
      2. {c |} {res}    2     Cencini   Vice President, Sales {txt}{c |}
      3. {c |} {res}    3       Kotas    Sales Representative {txt}{c |}
      4. {c |} {res}    4   Sergienko    Sales Representative {txt}{c |}
      5. {c |} {res}    5      Thorpe           Sales Manager {txt}{c |}
	 {c BLC}{hline 7}{c -}{hline 11}{c -}{hline 23}{c BRC}

{p 4 12 2}
    {cmd}. odbc load, exec(`"SELECT ID, "Last Name", "Job Title" FROM Employees  WHERE ID <= 5"') dsn("Northwind")

    {cmd}. list
{txt}
	 {c TLC}{hline 7}{c -}{hline 11}{c -}{hline 23}{c TRC}
	 {c |} {res}   ID   Last_Name               Job_Title {txt}{c |}
	 {c LT}{hline 7}{c -}{hline 11}{c -}{hline 23}{c RT}
      1. {c |} {res}    1   Freehafer    Sales Representative {txt}{c |}
      2. {c |} {res}    2     Cencini   Vice President, Sales {txt}{c |}
      3. {c |} {res}    3       Kotas    Sales Representative {txt}{c |}
      4. {c |} {res}    4   Sergienko    Sales Representative {txt}{c |}
      5. {c |} {res}    5      Thorpe           Sales Manager {txt}{c |}
	 {c BLC}{hline 7}{c -}{hline 11}{c -}{hline 23}{c BRC}
{txt}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <odbc.sthlp>}