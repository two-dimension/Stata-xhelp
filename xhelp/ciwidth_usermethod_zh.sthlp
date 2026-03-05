{smcl}
{* *! version 1.0.0  27feb2019}{...}
{vieweralsosee "[PSS-3] ciwidth usermethod" "mansection PSS-3 ciwidthusermethod"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[PSS-3] Intro (ciwidth)" "mansection PSS-3 Intro(ciwidth)"}{...}
{vieweralsosee "[PSS-3] ciwidth" "help ciwidth_zh"}{...}
{vieweralsosee "[PSS-5] Glossary" "help pss_glossary_zh"}{...}
{viewerjumpto "Syntax" "ciwidth_usermethod_zh##syntax"}{...}
{viewerjumpto "Description" "ciwidth_usermethod_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "ciwidth_usermethod_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "ciwidth_usermethod_zh##remarks"}
{help ciwidth_usermethod:English Version}
{hline}{...}
{p2colset 1 31 33 2}{...}
{p2col:{bf:[PSS-3]} {it:ciwidth usermethod} {hline 2}}为ciwidth命令添加自定义方法{p_end}
{p2col:}({mansection PSS-3 ciwidthusermethod:查看完整PDF手册条目）{p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{pstd}
计算样本大小

{p 8 16 2}
{cmd:ciwidth} {help ciwidth_usermethod##usermethod:{it:usermethod}}
...{cmd:,} {opth w:idth(numlist)}
[{opth probw:idth(numlist)}
{help ciwidth##ciwidth_options:{it:ciwidthopts}}
{help ciwidth_usermethod##useropts:{it:useropts}}]


{pstd}
计算置信区间宽度

{p 8 16 2}
{cmd:ciwidth} {help ciwidth_usermethod##usermethod:{it:usermethod}}
...{cmd:,} {help ciwidth_usermethod##nspec:{it:nspec}}
[{opth probw:idth(numlist)}
{help ciwidth##ciwidth_options:{it:ciwidthopts}}
{help ciwidth_usermethod##useropts:{it:useropts}}]


{pstd}
计算置信区间宽度的概率

{p 8 16 2}
{cmd:ciwidth} {help ciwidth_usermethod##usermethod:{it:usermethod}}
...{cmd:,} {help ciwidth_usermethod##nspec:{it:nspec}} {opth w:idth(numlist)}
[{help ciwidth##ciwidth_options:{it:ciwidthopts}}
{help ciwidth_usermethod##useropts:{it:useropts}}]


{marker usermethod}{...}
{phang}
{it:usermethod}是您希望添加到{cmd:ciwidth}命令中的方法名称。在命名您的{cmd:ciwidth}方法时，您应遵循与为Stata添加程序时相同的约定——不要选择将来可能被Stata官方方法使用的“好听”名称。

{marker useropts}{...}
{phang}
{it:useropts}是您的方法{it:usermethod}支持的选项。

{marker nspec}{...}
{phang}
{it:nspec}包含{opth n(numlist)}用于单样本置信区间或{help ciwidth##ciwidth_options:{it:ciwidthopts}}的任何样本大小选项，例如{opt n1(numlist)}和{opt n2(numlist)}用于双样本置信区间。


{marker description}{...}
{title:描述}

{pstd}
{help ciwidth_zh}命令允许您将自己的方法添加到{cmd:ciwidth}中，并自动生成结果的表和图。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection PSS-3 ciwidthusermethodRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{pstd}
将自己的方法添加到{cmd:ciwidth}很简单。假设您想将名为{cmd:mymethod}的方法添加到{cmd:ciwidth}。只需

{phang}
1. 编写一个{help program_zh:r-class program}，名为{cmd:ciwidth_cmd_mymethod}，该程序计算样本大小、置信区间宽度的概率或置信区间宽度，并遵循{cmd:ciwidth}的命名常见选项和存储结果的约定；并且

{phang}
2. 将程序放在Stata可以找到的地方。

{pstd}
您就完成了。现在可以像使用其他官方{cmd:ciwidth}方法一样在{cmd:ciwidth}中使用{cmd:mymethod}。

    {title:一个快速示例}

{pstd}
在我们讨论接下来的技术细节之前，让我们尝试一个示例。我们将编写一个程序，根据样本大小、标准差和置信水平计算单均值正态基础置信区间的宽度。为简单起见，我们假设一个双侧置信区间。我们将称我们的新方法为{cmd:mymean}。（请注意，当您指定{cmd:knownsd}选项时，此方法在官方的{helpb ciwidth onemean}命令中可用。）

{pstd}
我们创建一个名为{cmd:ciwidth_cmd_mymean.ado}的ado文件，包含以下Stata程序：

      // 评估器
      {cmd:program ciwidth_cmd_mymean, rclass}
              {cmd:version {ccl stata_version}}
              /* 解析选项 */
              {cmd:syntax, n(integer)}          /// 样本大小
                      {cmd:[ Level(cilevel)}    /// 置信水平
                        {cmd:Stddev(real 1) ]}  /// 标准差
              /* 计算置信区间宽度 */
              {cmd:tempname width}
              {cmd:scalar `width' = 2*invnormal(1/2+`level'/200)*`stddev'/sqrt(`n')}
              /* 存储结果 */
              {cmd}return scalar level   = `level'
              return scalar N       = `n'
              return scalar width   = `width'
              return scalar stddev  = `stddev'
      end{txt}

{pstd}
我们的ado程序由三个部分构成：用于解析选项的{help syntax_zh}命令、计算置信区间宽度，以及存储或返回结果。这三部分的工作如下：

{pmore}
{cmd:ciwidth_cmd_mymean}程序具有{cmd:ciwidth}的两个常见选项，{cmd:level()}用于置信水平和{cmd:n()}用于样本大小，它还有自己的选项{cmd:stddev()}，最小缩写为{cmd:s()}，默认值为1，用于指定标准差。

{pmore}
选项解析后，计算出置信区间宽度并存储在一个{help macro_zh:temporary scalar} {cmd:`width'}中。

{pmore}
最后，计算出的置信区间宽度和其他结果存储在返回标量中。根据{cmd:ciwidth}的{mansection PSS-3 ciwidthusermethodRemarksandexamplesconvention:约定}，置信水平存储在{cmd:r(level)}中，样本大小存储在{cmd:r(N)}中，计算得到的置信区间宽度存储在{cmd:r(width)}中。该程序还将标准差存储在{cmd:r(stddev)}中。

{pstd}
现在我们可以像使用{cmd:ciwidth}的其他任何现有方法那样在{cmd:ciwidth}中使用{cmd:mymean}：

      {cmd:. ciwidth mymean, level(95) n(10) stddev(0.25)}

{pstd}
我们可以使用官方的{helpb ciwidth onemean}检查结果：

      {cmd:. ciwidth onemean, level(95) n(10) sd(0.25) knownsd}

{pstd}
我们可以通过在{cmd:n()}选项中指定多个值来计算多个样本大小的结果。注意我们的{cmd:ciwidth_cmd_mymean}程序在{cmd:n()}中每次只能接受一个值。当在{cmd:ciwidth}命令的{cmd:n()}选项中指定{help numlist_zh}时，{cmd:ciwidth}会自动处理该{it:numlist}。

      {cmd:. ciwidth mymean, level(95) n(10 20) stddev(0.25)}

{pstd}
我们还可以计算多个样本大小和置信水平的结果，而不需要额外的努力：

      {cmd:. ciwidth mymean, level(90 95) n(10 20) stddev(0.25)}

{pstd}
我们甚至可以仅通过指定{cmd:graph}选项来生成图形：

      {cmd:. ciwidth mymean, level(90 95) n(10(10)100) stddev(0.25) graph}

{pstd}
以上只是一个简单的示例。您的程序可以复杂得多：您甚至可以使用模拟计算结果；请参阅{mansection PSS-3 ciwidthusermethodRemarksandexamplesmoreexamples:{it:更多示例：计算单比例置信区间的置信区间宽度的概率}}在{bf:[PSS-3] ciwidth usermethod}中。您还可以通过一些额外的工作自定义您的表和图。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <ciwidth_usermethod.sthlp>}