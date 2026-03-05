{smcl}
{* *! version 1.1.5  15oct2018}{...}
{vieweralsosee undocumented "help undocumented"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] search" "help search_zh"}{...}
{viewerjumpto "描述" "keyfiles_zh##description"}{...}
{viewerjumpto "备注" "keyfiles_zh##remarks"}{...}
{viewerjumpto "示例" "keyfiles_zh##example"}
{help keyfiles:English Version}
{hline}{...}
{title:标题}

    {hi:[P] keyfiles} {hline 2} {cmd:search} 命令使用的关键文件


{marker description}{...}
{title:描述}

{pstd}
{cmd:search} 命令检查 "key" 文件中的关键词数据库，以在进行 "本地" 搜索时确定匹配（即 {cmd:local} 选项的 {cmd:search}）；参见 {manhelp search R}。下面我们提供了关键文件的描述。


{marker remarks}{...}
{title:备注}

{pstd}
备注按以下标题呈现：

        {help keyfiles##remarks1:介绍}
        {help keyfiles##remarks2:关键文件结构}
        {help keyfiles##remarks3:帮助、浏览器和网络链接在关键文件中的使用}
        {help keyfiles##remarks4:高亮文本}


{marker remarks1}{...}
{title:介绍}

{pstd}
这些关键文件提供官方 Stata 命令、文档不详的帮助文件、NetCourses、Stata Press 书籍、发布在 Stata 网站上的常见问题解答、StataCorp 官方博客上的精选文章、社区贡献的常见问题解答和示例，以及 {help sj_zh:Stata Journal} 和 {help stb_zh:Stata Technical Bulletin} 中的文章的关键词。

{pstd}
Stata 的关键文件会定期更新。使用 {cmd:update} 命令（参见 {manhelp update R}）获取最新的 Stata 更新，或简单地 {update "from https://www.stata.com":点击这里}。

{pstd}
此外，如果存在，{cmd:site.key} 和 {cmd:user.key} 关键文件也会被 {cmd:search} 检查。该两个关键文件可以用于存储用户感兴趣的其他项目的关键词。搜索 {cmd:stata}{it:#}{cmd:.key} 文件的结果优先显示，然后是 {cmd:site.key}（如果可用）的搜索结果，最后是 {cmd:user.key}（如果可用）的搜索结果。

{pstd}
Stata 沿着 {cmd:adopath} 查找这些文件；参见 {manhelp sysdir P}。{cmd:stata}{it:#}{cmd:.key} 文件位于 {cmd:BASE} 目录下。{cmd:site.key} 和 {cmd:user.key} 文件通常根据文件的来源放置在 {cmd:SITE}、{cmd:PERSONAL} 或 {cmd:PLUS} 目录中。


{marker remarks2}{...}
{title:关键文件结构}

{pstd}
关键文件是文本文件。关键文件中的条目通过一个或多个空行分隔。每个条目的每一行以一个句点 ({cmd:.}) 开头，后跟字母之一：{cmd:c}、{cmd:e}、{cmd:t}、{cmd:o}、{cmd:a}、{cmd:k}、{cmd:z} 或 {cmd:x}，接着是一个或多个空格，随后是与特定关键文件指令相应的信息。以下表格和讨论概述了这些指令在关键文件中的用途。

{center:{c TLC}{hline 11}{c TT}{hline 31}{c TRC}}
{center:{c |} 指令 {c |} 描述 {space 18}{c |}}
{center:{c LT}{hline 11}{c +}{hline 31}{c RT}}
{center:{c |}    {cmd:.c}     {c |} 类别 {space 24}{c |}}
{center:{c |}    {cmd:.e}     {c |} 条目名称 {space 19}{c |}}
{center:{c |}    {cmd:.t}     {c |} 标题 {space 24}{c |}}
{center:{c |}    {cmd:.o}     {c |} 帮助 {space 25}{c |}}
{center:{c |}    {cmd:.a}     {c |} 作者 {space 23}{c |}}
{center:{c |}    {cmd:.k}     {c |} 关键词 {space 21}{c |}}
{center:{c |}    {cmd:.z}     {c |} 标记为历史 {space 13}{c |}}
{center:{c |}    {cmd:.x}     {c |} 后续行的原样文本 {c |}}
{center:{c BLC}{hline 11}{c BT}{hline 31}{c BRC}}


{phang}
{cmd:.c} 行指示条目的类别。尽管该行后可以跟任何字，但某些词对于 Stata 有特殊意义。{cmd:manual} 表示官方 Stata 命令；{cmd:faq} 表示常见问题；{cmd:sj} 和 {cmd:stb} 被视为同义词，表示 Stata Journal 和 STB；而 {cmd:error} 表示错误代码。

	    示例：

		{cmd:.c manual}

		{cmd:.c faq}

		{cmd:.c whatever}

{pmore}
每个条目中应该只有一行 {cmd:.c}。

{pmore}
{cmd:faq} 选项的 {cmd:search} 限制搜索为具有 {cmd:.c faq} 行的条目。{cmd:manual} 选项的 {cmd:search} 限制搜索为具有 {cmd:.c manual} 行的条目。{cmd:sj} 选项的 {cmd:search} 限制搜索为具有 {cmd:.c sj} 或 {cmd:.c stb} 行的条目。

{pmore}
{cmd:search} 具有一个未记录的选项 {cmd:class(}{it:classname}{cmd:)}，允许您将搜索限制在具有 {it:classname} 作为类别的条目中。例如：

		{cmd:. search} ... {cmd:, class(foo)}

{pmore}
将把搜索限制在具有

		{cmd:.c foo}

{pmore}
行的关键文件条目。

{phang}
{cmd:.e} 行提供条目名称。在 {cmd:.e} 后面的文本显示在输出的第一行的左侧。紧接在 {cmd:.e} 后的第一个 "词" 显示在输出的最左侧，任何剩余的词从第一个制表符开始显示。

	    示例：

		{cmd:.e [R] regress}

		{cmd:.e FAQ}

		{cmd:.e SJ-2-4 pr0007}

{pmore}
每个条目中应该只有一行 {cmd:.e}。

{pmore}
在显示 {cmd:.e} 信息后，标题（见下面的 {cmd:.t} 指令）将被呈现在第一行的最右侧，条目名称和标题之间用重复的句点和空格分隔。

{phang}
{cmd:.t} 行提供标题。标题显示在第一行的最右侧；参见上述的 {cmd:.e} 指令讨论。

	    示例：

		{cmd:.t 线性回归}

		{cmd:.t 通过模拟计算效能}

{pmore}
每个条目中应该只有一行 {cmd:.t}。

{phang}
{cmd:.o} 行用于提供帮助文件的链接。当存在 {cmd:.o} 行时，输出的第二行会在第一个制表位置添加 "(help "，后跟 {cmd:.o} 后面的内容，最后以")" 结束。如果单词被 {cmd:@} 包围，便会创建链接到帮助文件；参见下面标题为 {hi:帮助、浏览器和网络链接在关键文件中的使用} 的部分。

	    示例：

		{cmd:.o @regress@}

		{cmd:.o @help@, @search@, @viewer@}

		{cmd:.o @clustergram@ 如果已安装}

{pmore}
每个条目中应该只有一行 {cmd:.o}。

{phang}
{cmd:.a} 行指示作者或作者们。该信息显示在输出的第二行的最右侧，前面重复句点和空格。{cmd:.o}（见上文）和 {cmd:.a} 信息显示在同一行上，{cmd:.o} 信息在左侧，{cmd:.a} 信息在右侧。

	    示例：

		{cmd:.a D. W. Hosmer}

		{cmd:.a N. J. Cox 和 C. F. Baum}

{pmore}
每个条目中应该只有一行 {cmd:.a}。

{phang}
{cmd:.k} 行提供条目的关键词。连字符表示与关键词匹配时允许的最小缩写。允许多行 {cmd:.k} 行，并且每行可以指定一个或多个关键词。

	    示例：

		{cmd:.k stat-istics mean-s med-ians}

		{cmd:.k data-sets set-s manage-ment}

{pmore}
某些关键词用于限制搜索的上下文；详细信息请参见 {help searchadvice_zh}。

{pmore}
为提供一致的缩写，请选择您的关键词，使用 {cmd:search} 每个关键词，然后检查一些找到的条目并使用相同长度的缩写。

{phang}
{cmd:.z} 指示该条目仅具有历史意义，不应该被呈现。标记为 {cmd:.z} 的条目仅在使用 {cmd:search} 时指定 {cmd:historical} 选项时占用。

{phang}
{cmd:.x} 指示后续行应以 “原样” 方式呈现，位于显示由 {cmd:.e}、{cmd:.t}、{cmd:.o} 和 {cmd:.a} 指令后面的信息之下。


{marker remarks3}{...}
{title:帮助、浏览器和网络链接在关键文件中的使用}

{pstd}
关键文件当前不使用 {help smcl_zh}。相反，关键文件使用 {cmd:@} 来指示链接。例如，{cmd:@regress@} 创建一个链接到 {cmd:regress.sthlp}。

{pstd}
{cmd:@browser:https://www.stata.com/!https://www.stata.com/@} 创建一个链接到 {cmd:https://www.stata.com/} 网页。中间的 {cmd:!} 是必须的。{cmd:@browser:https://www.stata.com/!click here@} 创建相同的链接，但单词 "click here" 将被显示作为链接，而不是 {cmd:https://www.stata.com/}。

{pstd}
{cmd:@net:sj 2-1 st0005!st0005@} 生成一个链接，执行 {cmd:net} 命令。这里的链接指向 Stata Journal 2-1 的 {cmd:st0005} 条目。文本 "st0005" 将出现，因为它跟随在 {cmd:!} 之后。


{marker remarks4}{...}
{title:高亮文本}

{pstd}
要高亮显示文本，请将其括在 {cmd:^} 中。例如，{cmd:^hello^} 将使单词 "hello" 以高亮方式显示。


{marker example}{...}
{title:示例}

{pstd}
以下是常见问题解答条目的示例。

      {cmd}.e FAQ
      .c faq
      .t 我的常见问题标题
      .a S. Body
      .k stat-istics what-ever ever
      .k test-s test-ing
      .x
	  1/03    你是如何做到的？
		  @browser:https://www.z/wever.html!https://www.z/wever.html@{txt}

{pstd}
用户在输入 {cmd:search whatever} 时将看到的内容是

{s6hlp}
    常见问题     . . . . . . . . . . . . . . . . . . . . . . . . . . . 我的常见问题标题
	    . . . . . . . . . . . . . . . . . . . . . . . . . . . . .  S. Body
	    1/03    你是如何做到的？
		    @browser:https://www.z/wever.html!https://www.z/wever.html@
{smcl}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <keyfiles.sthlp>}