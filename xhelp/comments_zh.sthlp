{smcl}
{* *! version 1.1.5  19oct2017}{...}
{vieweralsosee "[P] comments" "mansection P comments"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[P] #delimit" "help #delimit"}{...}
{viewerjumpto "Description" "comments_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "comments_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "comments_zh##remarks"}{...}
{viewerjumpto "Technical note" "comments_zh##technote"}
{help comments:English Version}
{hline}{...}
{p2colset 1 17 19 2}{...}
{p2col:{bf:[P] comments} {hline 2}}向程序添加注释{p_end}
{p2col:}({mansection P comments:查看完整PDF手册条目}){p_end}
{p2colreset}{...}

{marker description}{...}
{title:描述}

{pstd}
此条目提供了在程序中如何指定注释的快速参考。有关更多详细信息，请参见 {findalias frdocomments}。

{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection P commentsRemarksandexamples:备注和示例}

{pstd}
以上部分不包含在此帮助文件中。

{marker remarks}{...}
{title:备注}

{pstd}
可以通过三种方式向程序添加注释：

{phang2}
o 将行首以 {cmd:*} 开始；

{phang2}
o 注释以 {cmd://} 开始；或

{phang2}
o 将注释放在 {cmd:/*} 和 {cmd:*/} 限定符之间。

{pstd}
以下是每种方式的示例：

         {cmd}* 一个示例分析作业
         version {ccl stata_version}
         use census
         /* 获取摘要统计 */
         tabulate region // 该数据集包含4个地区
         summarize marriage

         * 一个示例分析作业
         version {ccl stata_version}
         use /* 获取摘要统计 */ census
         tabulate region 
         //  该数据集包含4个地区
         summarize marriage{txt}

{pstd}
注释指示符 {cmd:*} 只能在行首使用，但它的优势在于可用于交互式操作。 {cmd:*} 表示该行将被忽略。 {cmd:*} 注释指示符不能在 Mata 中使用。

{pstd}
{cmd://} 注释指示符可用于行的开头或结尾。然而，如果 {cmd://} 指示符位于行末，它必须以一个或多个空格开头。也就是说，您不能输入以下内容：

         {cmd:tabulate region// 该数据集包含4个地区}

{pstd}
{cmd://} 表示该行的其余部分将被忽略。

{pstd}
{cmd:/*} 和 {cmd:*/} 注释限定符的优势在于它可用于行中间，但相比其他两个注释指示符，输入起来较为繁琐。 {cmd:/*} {cmd:*/} 之间的内容会被忽略。

{marker technote}{...}
{title:技术说明}

{pstd}
还有第四种注释指示符 {cmd:///}，它指示 Stata 将 {cmd:///} 到行末的内容视为注释，并将下一行与当前行连接。例如，

         {cmd}args a              /// 输入参数 a
              b              /// 输入参数 b
              c              //  输入参数 c{txt}

{pstd}
相当于 

         {cmd:args a b c}

{pstd}
{cmd:///} 是让长行更易读的一种方式：

         {cmd}replace final_result =                      ///
                 sqrt(first_side^2 + second_side^2)  ///
                 如果 type == "rectangle"{txt}

{pstd}
另一种常用的方法是

         {cmd}replace final_result =                         /*
                 */ sqrt(first_side^2 + second_side^2)  /*
                 */ 如果 type == "rectangle"{txt}

{pstd}
与 {cmd://} 注释指示符一样， {cmd:///} 指示符必须以一个或多个空格开头。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <comments.sthlp>}