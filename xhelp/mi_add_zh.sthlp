{smcl}
{* *! version 1.1.4  15may2018}{...}
{viewerdialog mi "dialog mi"}{...}
{vieweralsosee "[MI] mi add" "mansection MI miadd"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MI] Intro" "help mi_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MI] mi append" "help mi_append_zh"}{...}
{vieweralsosee "[MI] mi merge" "help mi_merge_zh"}{...}
{viewerjumpto "语法" "mi add##syntax"}{...}
{viewerjumpto "菜单" "mi add##menu"}{...}
{viewerjumpto "描述" "mi add##description"}{...}
{viewerjumpto "PDF文档链接" "mi_add_zh##linkspdf"}{...}
{viewerjumpto "选项" "mi add##options"}{...}
{viewerjumpto "备注" "mi add##remarks"}{...}
{viewerjumpto "存储结果" "mi add##results"}
{help mi_add:English Version}
{hline}{...}
{p2colset 1 16 18 2}{...}
{p2col:{bf:[MI] mi add} {hline 2}}从另一个 mi 数据集中添加填充值{p_end}
{p2col:}({mansection MI miadd:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{cmd:mi} {cmd:add} {varlist}
{cmd:using} {it:{help filename_zh}}
[{cmd:,} {it:options}]

{synoptset 15}{...}
{synopthdr}
{synoptline}
{synopt:{cmd:assert(master)}}断言在主数据集中找到的所有观察值{p_end}
{synopt:{cmd:assert(match)}}断言在主数据集和使用数据集中找到的所有观察值{p_end}

{synopt:{cmdab:noup:date}}查看 {bf:{help mi_noupdate_option_zh:[MI] noupdate option}}{p_end}
{synoptline}
{p2colreset}{...}

{p 4 8 2}
注意：

{p 8 14 2}
1.  行话：{break}
    匹配变量 = {it:varlist}，进行匹配的变量{break}
    {bind:         }主 = 内存中的数据{break}
    {bind:          }使用 = 磁盘上的数据 ({it:filename})

{p 8 12 2}
2.  主集必须使用 {cmd:mi} {cmd:set}。

{p 8 12 2}
3.  使用的数据集必须使用 {cmd:mi} {cmd:set}。

{p 8 12 2}
4.  如果 {it:filename} 包含空格或其他特殊字符，则必须用双引号括起来。


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 多重填充}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:mi} {cmd:add} 将磁盘上使用数据集的填充值添加到内存中的主数据集末尾。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection MI miaddRemarksandexamples:备注和示例}

{pstd}
以上部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{p 4 8 2}
{cmd:assert(}{it:results}{cmd:)} 
    指定预期观察值的匹配方式。如果结果与预期不符，将发出错误消息，并且主数据将保持不变。

{phang2}
    {cmd:assert(master)} 指定您期望主集中的每个观察值都有匹配，尽管在使用集中可能有额外的观察值，{cmd:mi} {cmd:add} 将忽略这些。

{phang2}
    {cmd:assert(match)} 指定您期望主集中的每个观察值都与使用集中的一个观察值匹配，反之亦然。

{p 8 8 2}
    默认情况下，主集中可能有在使用中缺失的观察值，反之亦然。只有共同的观察值会被 {cmd:mi} {cmd:add} 使用。

{p 4 8 2}
{cmd:noupdate}
    在某些情况下会抑制此命令可能执行的自动 {cmd:mi} {cmd:update}; 
    请参见 {bf:{help mi_noupdate_option_zh:[MI] noupdate option}}。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
将 {cmd:mi} {cmd:add} 产生的结果视为

          {c TLC}{hline 52}{c TRC}
          {c |}  结果                   来源{col 64}{c |}
	  {c LT}{hline 52}{c RT}
          {c |}  {it:m} = 0                    {it:m} = 0来自主数据{col 64}{c |}
          {c |}  {it:m} = 1                    {it:m} = 1来自主数据{col 64}{c |}
          {c |}  {it:m} = 2                    {it:m} = 2来自主数据{col 64}{c |}
          {c |}    .                        .{col 64}{c |}
          {c |}    .                        .{col 64}{c |}
          {c |}  {it:m} = {it:M_master}             {it:m} = {it:M_master}来自主数据{col 64}{c |}
          {c |}  {it:m} = {it:M_master} + 1         {it:m} = 1来自使用数据{col 64}{c |}
          {c |}  {it:m} = {it:M_master} + 2         {it:m} = 2来自使用数据{col 64}{c |}
          {c |}    .                        .{col 64}{c |}
          {c |}    .                        .{col 64}{c |}
          {c |}  {it:m} = {it:M_master} + {it:M_using}   {it:m} = {it:M_using}来自使用数据{col 64}{c |}
          {c BLC}{hline 52}{c BRC}

{p 4 4 2}
也就是说，主数据中的原始数据保持不变。发生的所有事情是从使用中添加的填充数据将作为附加填充值添加到主数据的末尾。

{p 4 4 2}
例如，假设您发现自己和同事在处理同一数据。您已经为您的数据添加了 {it:M}=20 个填充值。
您的同事已单独添加了 {it:M}=17。要合并数据，请输入类似以下内容：

	. {cmd:use mydata}

	. {cmd:mi add patientid using karensdata}
	（添加了 17 个填充值; {it:M}=37）

{p 4 4 2}
您数据中唯一变化的是 {it:M}。如果您同事的数据有其他变量，则会被忽略。如果您同事注册变量的方式与您注册的方式不同，则也会被忽略。如果您同事尚未将某个变量注册为填充，而您已将其注册为填充，则将在输出中提及。您可能会看到：

	. {cmd:use mydata}

	. {cmd:mi add patientid using karensdata}
	（添加了 17 个填充值; {it:M}=37）
        （未在使用的数据中找到填充值变量 grade;
            添加的填充值对该变量包含 {it:m}=0 的值）


{marker results}{...}
{title:存储结果}

{p 4 4 2}
{cmd:mi add} 将以下内容存储在 {cmd:r()} 中：

	标量
	    {cmd:r(m)}              添加的填充值数量
	    {cmd:r(unmatched_m)}    未匹配的主观察数量
	    {cmd:r(unmatched_u)}    未匹配的使用观察数量

	宏
            {cmd:r(imputed_f)}      找到填充值的变量
            {cmd:r(imputed_nf)}     未找到填充值的变量

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mi_add.sthlp>}