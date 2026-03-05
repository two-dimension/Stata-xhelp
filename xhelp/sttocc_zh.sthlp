{smcl}
{* *! version 1.1.9  19sep2018}{...}
{viewerdialog sttocc "dialog sttocc"}{...}
{vieweralsosee "[ST] sttocc" "mansection ST sttocc"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[ST] stbase" "help stbase_zh"}{...}
{vieweralsosee "[ST] stdescribe" "help stdescribe_zh"}{...}
{vieweralsosee "[ST] stset" "help stset_zh"}{...}
{vieweralsosee "[ST] stsplit" "help stsplit_zh"}{...}
{viewerjumpto "语法" "sttocc_zh##syntax"}{...}
{viewerjumpto "菜单" "sttocc_zh##menu"}{...}
{viewerjumpto "描述" "sttocc_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "sttocc_zh##linkspdf"}{...}
{viewerjumpto "选项" "sttocc_zh##options"}{...}
{viewerjumpto "示例" "sttocc_zh##examples"}
{help sttocc:English Version}
{hline}{...}
{p2colset 1 16 18 2}{...}
{p2col:{bf:[ST] sttocc} {hline 2}}将生存时间数据转换为病例对照数据{p_end}
{p2col:}({mansection ST sttocc:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 15 2}
{cmd:sttocc} [{varlist}] [{cmd:,} {it:options}]


{synoptset 27 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:主要}
{synopt :{opt m:atch(matchvarlist)}}在分析时间和指定的分类变量上匹配病例和对照；默认仅在分析时间上匹配{p_end}
{synopt :{opt n:umber(#)}}为每个病例使用 {it:#} 个对照；默认值是 {cmd:number(1)}{p_end}
{synopt :{opt nodot:s}}在计算期间抑制显示点{p_end}

{syntab:选项}
{synopt :{opt gen:erate(case set time)}}新变量名；默认是 {cmd:_case}、{cmd:_set} 和 {cmd:_time}{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
在使用 {cmd:sttocc} 之前，您必须先 {cmd:stset} 您的数据；参见 {manhelp stset ST}.{p_end}
{p 4 6 2}
可以使用 {cmd:stset} 指定 {opt fweight}s、{opt iweight}s 和 {opt pweight}s；参见 {manhelp stset ST}.{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 生存分析 > 设置和工具 >}
      {bf:将生存时间数据转换为病例对照数据}


{marker description}{...}
{title:描述}

{pstd}
{cmd:sttocc} 从队列研究数据集中生成嵌套病例对照研究数据集，通过从风险集中抽取对照。对于每个病例，对照随机选择自该病例发生时仍在风险状态的队列成员。换句话说，生成的病例对照样本在分析时间上是匹配的——分析时间是用于计算风险集的时间尺度。以下变量将添加到数据集中：

{p2colset 9 18 20 2}{...}
{p2col:{cmd:_case}}对照编码为 0，病例编码为 1{p_end}
{p2col:{cmd:_set}}病例-对照 ID；匹配属于同一组的病例和对照{p_end}
{p2col:{cmd:_time}}病例失败的分析时间{p_end}
{p2colreset}{...}

{pstd}
这些三个变量的名称可以通过指定 {cmd:generate()} 选项进行更改。 {varlist} 定义在创建病例对照研究中所用变量之外，将保留在最终数据集中的变量。如果未指定 {it:varlist}，所有变量将被转移到结果数据集中。

{pstd}
当分析结果数据集作为匹配病例对照研究时，优势比将估计对应于队列研究中比例风险模型的速率比参数。

{pstd}
通过 Stata 的 {helpb runiform()} 函数获得匹配中的随机性。为确保样本是真正随机的，您应该设置随机数种子；参见 {manhelp set_seed R:set seed}。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection ST sttoccQuickstart:快速开始}

        {mansection ST sttoccRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{dlgtab:主要}

{phang}
{opt match(matchvarlist)} 指定用于匹配对照和病例的更多分类变量。当未指定 {opt match()} 时，仅根据时间匹配病例和对照。如果指定了 {opt match(matchvarlist)}，则病例也将根据 {it:matchvarlist} 进行匹配。

{phang}
{opt number(#)} 指定为每个病例抽取的对照数量。默认值为 1，尽管这并不是一个合理的选择。

{phang}
{opt nodots} 请求在每组病例对照选择开始时不在屏幕上放置点。默认情况下，为显示进度而显示点。

{dlgtab:选项}

{phang}
{opt generate(case set time)} 指定三个新变量的变量名称；默认是 {cmd:_case}、{cmd:_set} 和 {cmd:_time}。


{marker examples}{...}
{title:示例}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse diet}

{pstd}声明数据为生存时间数据{p_end}
{phang2}{cmd:. stset dox, failure(fail) enter(time doe) id(id)}
             {cmd:origin(time dob) scale(365.25)}

{pstd}将生存时间数据转换为病例对照数据，在时间和 {cmd:job} 上匹配病例和对照{p_end}
{phang2}{cmd:. sttocc, match(job)}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse diet, clear}

{pstd}声明数据为生存时间数据{p_end}
{phang2}{cmd:. stset dox, failure(fail) enter(time doe) id(id)}
              {cmd:origin(time dob) scale(365.25)}

{pstd}将生存时间数据转换为病例对照数据，在时间和 {cmd:job} 上匹配病例和对照，并为每个病例使用 5 个对照{p_end}
{phang2}{cmd:. sttocc, match(job) n(5)}{p_end}
    {hline}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <sttocc.sthlp>}