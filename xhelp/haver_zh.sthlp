{smcl}
{* *! version 1.1.8  19dec2012}{...}
{viewerdialog haver "dialog haver"}{...}
{vieweralsosee "之前文档" "help prdocumented_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] infile" "help infile_zh"}{...}
{vieweralsosee "[D] insheet" "help insheet_zh"}{...}
{vieweralsosee "[D] odbc" "help odbc_zh"}{...}
{vieweralsosee "[TS] tsset" "help tsset_zh"}{...}
{viewerjumpto "语法" "haver_zh##syntax"}{...}
{viewerjumpto "菜单" "haver_zh##menu"}{...}
{viewerjumpto "描述" "haver_zh##description"}{...}
{viewerjumpto "与 haver describe 一起使用的选项" "haver_zh##option_haver_describe"}{...}
{viewerjumpto "与 haver use 一起使用的选项" "haver_zh##options_haver_use"}{...}
{viewerjumpto "示例" "haver_zh##examples"}
{help haver:English Version}
{hline}{...}
{pstd}
{cmd:haver} 已被 {helpb import haver} 替代。 {cmd:haver} 继续有效，但自 Stata 13 起不再是 Stata 的官方部分。这是原始帮助文件，我们将不再更新，因此某些链接可能不再有效。


{title:标题}

{p2colset 5 19 21 2}{...}
{p2col:{bf:[TS] haver} {hline 2}}从 Haver Analytics 数据库加载数据{p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{pstd}描述 Haver 数据集的内容

{p 8 17 2}
{cmd:haver}
{opt des:cribe}
{it:{help filename_zh}}
[{cmd:,}
{opt det:ail}]


{pstd}描述 Haver 数据集中的指定变量

{p 8 17 2}
{cmd:haver}
{opt des:cribe}
{varlist}
{opt using}
{it:{help filename_zh}}
[{cmd:,}
{opt det:ail}]


{pstd}加载 Haver 数据集

{p 8 17 2}
{cmd:haver}
{opt use}
{it:{help filename_zh}}
[{cmd:,}
{it:use_options}]


{pstd}从 Haver 数据集中加载指定变量

{p 8 17 2}
{cmd:haver}
{opt use}
{varlist}
{opt using}
{it:{help filename_zh}}
[{cmd:,}
{it:use_options}]


{synoptset 33}{...}
{synopthdr:use_options}
{synoptline}
{synopt:{cmdab:ti:n:(}[{it:constant}]{cmd:,} [{it:constant}]{cmd:)}}在指定日期范围内加载数据 {p_end}
{synopt:{cmdab:tw:ithin:(}[{it:constant}]{cmd:,} [{it:constant}]{cmd:)}}与 {opt tin()} 相同，但排除范围的端点 {p_end}
{synopt:{opth tv:ar(varname)}}创建时间变量 {it:varname}{p_end}
{synopt:{opth hm:issing(missing:misval)}}将缺失值记录为 {it:misval}
{p_end}
{synopt:{opt fi:ll}}在结果数据集中包含缺失数据的观测值，并为其记录缺失值 {p_end}
{synopt:{opt clear}}在加载 Haver 数据集之前清除内存中的数据 {p_end}
{synoptline}
{p2colreset}{...}


{marker menu}{...}
{title:菜单}

{phang}
{bf:文件 > 导入 > Haver Analytics 数据库}


{marker description}{...}
{title:描述}

{pstd}
Haver Analytics ({browse "http://www.haver.com"}) 提供经济和金融数据库，以 {opt .dat} 文件的形式出售访问权限。 {opt haver} 命令允许您在 Stata 中使用这些数据集。该命令仅与 Windows 版本的 Stata 一起提供。

{pstd}
{opt haver describe} 描述 Haver 文件的内容。

{pstd}
{opt haver use} 将指定变量从 Haver 文件加载到 Stata 的内存中。

{pstd}
如果 {it:{help filename_zh}} 被指定而没有后缀，则假定为 {opt .dat}。


{marker option_haver_describe}{...}
{title:与 haver describe 一起使用的选项}

{phang}
{opt detail} 指定将提供关于变量的所有信息的详细报告。 默认情况下，Haver 概念数据类型、观察数量、聚合类型、差异类型、大小和修改日期不会报告。


{marker options_haver_use}{...}
{title:与 haver use 一起使用的选项}

{phang}
{cmd:tin(}[{it:constant}]{cmd:,} [{it:constant}]{cmd:)} 
   指定要加载的数据的日期范围。 {it:constant} 指通常方式指定的日期常量，例如，{cmd:tin(1jan1999, 31dec1999)}，表示从 1999 年 1 月 1 日起至 1999 年 12 月 31 日。

{phang}
{cmd:twithin(}[{it:constant}]{cmd:,} [{it:constant}]{cmd:)}
   功能与 {cmd:tin()} 相同，但加载的数据将排除范围的端点。

{phang}
{opth tvar(varname)} 指定 Stata 将创建的时间变量的名称；默认值为 {cmd:tvar(time)}。{opt tvar()} 变量是加载数据后用于 {cmd:tsset} 数据的变量名称，尽管这样做并不是必要的，因为 {opt haver use} 会自动为您 {opt tsset} 数据。

{phang}
{opt hmissing(misval)} 指定在 Haver 数据集有缺失值时应记录 Stata 的 27 个缺失值之一（{cmd:.}、{cmd:.a}，...、{cmd:.z}）。

{pmore}
   加载 Haver 数据集时可能会出现两种缺失值。一种是由于变量数据未覆盖整个时间序列而创建，这些缺失值始终由 Stata 记录为 {cmd:.}。另一种对应于在 Haver 格式中记录的实际缺失值。{opt hmissing()} 设置在遇到第二种缺失值时记录的内容。您可以指定 {cmd:hmissing(.h)} 以使 Stata 的 {cmd:.h} 代码在此处被记录。

{pmore}
  默认情况下，两种缺失值都存储为 {cmd:.}。请参阅 {help missing_zh}。

{phang}
{opt fill} 指定在内存中形成的结果数据集中保留没有数据的观测值，并为其记录缺失值。 默认情况下，排除此类观测值，这可能导致加载的时间序列数据集中出现缺口。

{pmore}
   指定 {opt fill} 的效果与加载后发出 {opt tsfill} 命令相同；请参见 {manhelp tsfill TS}。

{phang}
{opt clear} 在加载 Haver 数据集之前清除内存中的数据。


{marker examples}{...}
{title:示例}

{pstd}描述数据{p_end}

{phang2}{cmd:. haver describe dailytst}{p_end}
{phang2}{cmd:. haver describe FDB6 using dailytst, detail}{p_end}

{phang2}{cmd:. haver use dailytst.dat}{p_end}
{phang2}{cmd:. char list FDB6[]}{p_end}

{pstd}合并变量

{phang2}{cmd:. haver describe dailytst}{p_end}
{phang2}{cmd:. haver use dailytst.dat, clear}{p_end}
{phang2}{cmd:. egen fedfunds = rfirst(FFED FFED2 FFED3 FFED4 FFED5 FFED6)}{p_end}

{pstd}更复杂的命令

{phang2}{cmd:. haver use FFED FFED2 using dailytst.dat, tin(1jan1990,31dec1999) hmissing(.h)}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <haver.sthlp>}