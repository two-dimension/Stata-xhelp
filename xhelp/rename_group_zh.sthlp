{smcl}
{* *! version 1.0.12  17may2019}{...}
{viewerdialog "Variables Manager" "stata varmanage"}{...}
{viewerdialog rename "dialog rename"}{...}
{vieweralsosee "[D] rename group" "mansection D renamegroup"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] rename" "help rename_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] generate" "help generate_zh"}{...}
{vieweralsosee "[D] varmanage" "help varmanage_zh"}{...}
{viewerjumpto "Syntax" "rename_group_zh##syntax"}{...}
{viewerjumpto "Menu" "rename_group_zh##menu"}{...}
{viewerjumpto "Description" "rename_group_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "rename_group_zh##linkspdf"}{...}
{viewerjumpto "Options for renaming variables" "rename_group_zh##options_rename"}{...}
{viewerjumpto "Options for changing the case" "rename_group_zh##options_case"}{...}
{viewerjumpto "Technical note" "rename_group_zh##technote"}{...}
{viewerjumpto "Stored results" "rename_group_zh##results"}
{help rename_group:English Version}
{hline}{...}
{p2colset 1 21 23 2}{...}
{p2col:{bf:[D] rename group} {hline 2}}重命名变量组{p_end}
{p2col:}({mansection D renamegroup:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{pstd}重命名单个变量

{p 8 20 2}
{opt ren:ame} {it:old} {it:new} [{cmd:,} {it:{help rename group##options1:options1}}]


{pstd}重命名变量组

{p 8 20 2}
{opt ren:ame} {cmd:(}{it:old1 old2} ...{cmd:)} {cmd:(}{it:new1 new2} ...{bf:)}{...}
[{cmd:,} {it:{help rename group##options1:options1}}]


{pstd}更改变量名称的大小写

{p 8 20 2}
{opt ren:ame}  {it:old1 old2} ...{cmd:,}
   {c -(}{opt u:pper}|{opt l:ower}|{opt p:roper}{c )-} {...}
[{it:{help rename group##options2:options2}}]


{p 4 4 2}
其中 {it:old} 和 {it:new} 指定现有和新的变量名称。
指定它们的规则如下：

{marker item1}{...}
{p 8 11 2}
    1. {bf:rename stat status}:
	将 {bf:stat} 更名为 {bf:status}。

{p 15 15 2}
            规则 1: 这与您熟悉的 {cmd:rename} 命令相同，如 
	    {bf:{help rename_zh:[D] rename}} 中所述。

{p 8 11 2}
    2. {bf:rename (stat inc) (status income)}: 将 {bf:stat} 更名为
       {bf:status}，将 {bf:inc} 更名为 {bf:income}。

{p 15 15 2}
           规则 2: 使用括号指定多个变量的 {it:old} 和 {it:new}。

{p 8 11 2}
    3. {bf:rename (v1 v2) (v2 v1)}: 交换 {bf:v1} 和 {bf:v2}。

{p 15 15 2}
           规则 3: 变量名称可以互换。

{p 8 11 2}
    4. {bf:rename (a b c) (b c a)}: 交换名称。将 {bf:a} 更名为 {bf:b}，
    {bf:b} 更名为 {bf:c}，{bf:c} 更名为 {bf:a}。

{p 15 15 2}
            规则 4: 可以无限制地互换多个名称。

{p 8 11 2}
    5. {bf:rename (a b c) (c b a)}: 将 {bf:a} 更名为 {bf:c}，将 {bf:c} 更名为 
    {bf:a}，但保持 {bf:b} 不变。

{p 15 15 2}
           规则 5: 允许将变量重命名为其自身。

{p 8 11 2}
    6. {bf:rename jan* *1}: 将所有以 {bf:jan} 开头的变量重命名为
    以 {bf:1} 结尾，例如，将 {bf:janstat} 更名为 {bf:stat1}，
    {bf:janinc} 更名为 {bf:inc1} 等等。

{p 15 15 2}
           规则 6.1: {bf:*} 在 {it:old} 中选择要重命名的变量。{bf:*} 表示
           可以包含零个或多个字符。

{p 15 15 2}
           规则 6.2: {bf:*} 在 {it:new} 中对应于 {bf:*} 在 {it:old} 中，表示
           与 {bf:*} 在 {it:old} 中匹配的文本。

{p 11 11 2}
        {bf:*} 在 {it:new} 或 {it:old} 中称为通配符字符，简称通配符。

{p 11 11 2}
        {bf:rename jan* *}: 删除前缀 {bf:jan}。

{p 11 11 2}
        {bf:rename *jan *}: 删除后缀 {bf:jan}。


{p 8 11 2}
    7. {bf:rename jan? ?1}: 将所有以 {bf:jan} 开头并以一个字符结尾的
    变量重命名，通过删除 {bf:jan} 并在末尾添加 {bf:1}；
    例如，将 {bf:jans} 更名为 {bf:s1}，但 {bf:janstat} 保持不变。
    {bf:?} 表示这里正好一个字符，就如同 {bf:*} 表示这里可以零个
    或多个字符。

{p 15 15 2}
            规则 7: {bf:?} 表示正好一个字符，{bf:??} 表示正好两个字符，依此类推。

{p 8 11 2}
    8. {bf:rename *jan* **}: 删除前缀、中缀和后缀 {bf:jan}，
	for example, {bf:janstat} to {bf:stat}, {bf:injanstat} to {bf:instat},
        and {bf:subjan} to {bf:sub}.

{p 15 15 2}
           规则 8: 您可以在 {it:old} 和 {it:new} 中指定多个通配符。它们会按
           给定的顺序对应。

{p 11 11 2}
        {bf:rename jan*s* *s*1}: 将所有以 {bf:jan} 开头并包含 {bf:s} 的
        变量重命名为以 {bf:1} 结尾，删除 {bf:jan}，例如，将 
        {bf:janstat} 更名为 {bf:stat1}，将 {bf:janest} 更名为 
        {bf:est1}，但不会将 {bf:janinc} 更名为 {bf:inc1}。

{p 8 11 2}
    9. {bf:rename *jan* *}: 删除 {bf:jan} 及其后面的所有内容，从而将 
    变量名称 {bf:statjan} 更名为 {bf:stat}，{bf:incjan71} 更名
    为 {bf:inc}，....

{p 15 15 2}
            规则 9: 您可以在 {it:old} 中指定比在 {it:new} 更多的通配符。

{p 7 11 2}
   10. {bf:rename *jan* .*}: 删除 {bf:jan} 和其前面的所有内容，从而将
    变量名称 {bf:midjaninc} 更名为 {bf:inc}，....

{p 15 15 2}
           规则 10: 通配符 {bf:.} （点）在 {it:new} 中跳过
           {it:old} 中对应的通配符。

{p 7 11 2}
   11. {bf:rename *pop jan=}: 将前缀 {bf:jan} 添加到所有以 
       {cmd:pop} 结尾的变量，例如，将 {cmd:age1pop} 更名为 
       {cmd:janage1pop}，....

{p 11 11 2}
       {bf:rename (status bp time) admit=}: 将 {bf:status} 更名为 
       {bf:admitstatus}，{bf:bp} 更名为 {bf:admitbp}，并将 {bf:time} 更名为 {bf:admittime}。

{p 11 11 2}
       {bf:rename} {it:whatever} {bf:pre=}: 为所有由 {it:whatever}
       选择的变量添加前缀 {cmd:pre}，不论 {it:whatever} 是如何
       指定的。

{p 15 15 2}
           规则 11: 通配符 {bf:=} 在 {it:new} 中指定原始变量名称。

{p 11 11 2}
        {bf:rename} {it:whatever} {bf:=jan}: 为所有由 {it:whatever}
        选择的变量添加后缀 {bf:jan}。

{p 11 11 2}
        {bf:rename} {it:whatever} {bf:pre=fix}: 为所有由 {it:whatever}
        选择的变量添加前缀 {bf:pre} 和后缀 {bf:fix}。

{p 7 11 2}
   12. {bf:rename v# stat#}: 将 {bf:v1} 更名为 {bf:stat1}，将 {bf:v2} 更名为
   {bf:stat2}，...，将 {bf:v10} 更名为 {bf:stat10}，....

{p 15 15 2}
           规则 12.1: {bf:#} 与 {bf:*} 类似，但适用于数字。{bf:#} 在
           {it:old} 中选择一个或多个数字。

{p 15 15 2}
           规则 12.2: {bf:#} 在 {it:new} 中复制数字，正如它们在对应的
           {it:old} 中那样。

{p 7 11 2}
   13. {bf:rename v(#) stat(#)}: 将 {bf:v1} 更名为 {bf:stat1}，将 {bf:v2} 更名为
   {bf:stat2}，...，但不重命名 {bf:v10}，....

{p 15 15 2}
           规则 13.1: {bf:(#)} 在 {it:old} 中选择正好一个数字。类似地，
           {bf:(##)} 选择正好两个数字，以此类推，最多到十个 {bf:#}
           符号。

{p 15 15 2}
           规则 13.2: {bf:(#)} 在 {it:new} 中意味着格式化为一个或多个
           数字。类似地，{bf:(##)} 格式化为两个或多个数字，依此类推，最多到十个 {bf:#} 符号。

{p 11 11 2}
        {bf:rename v(##) stat(##)}: 将 {bf:v01} 更名为 {bf:stat01}，
        将 {bf:v02} 更名为 {bf:stat02}，...，将 {bf:v10} 更名为 {bf:stat10}，
        ...，但不重命名 {bf:v0}，{bf:v1}，{bf:v2}，...，{bf:v9}，{bf:v100}，
        ...。

{p 7 11 2}
   14. {bf:rename v# v(##)}: 将 {bf:v1} 更名为 {bf:v01}，将 {bf:v2} 更名为 
   {bf:v02}，...，将 {bf:v10} 更名为 {bf:v10}，将 {bf:v11} 更名为 
   {bf:v11}，...，将 {bf:v100} 更名为 {bf:v100}，将 {bf:v101} 更名为 
   {bf:v101}，....

{p 15 15 2}
           规则 14: 您可以将 {bf:#}、{bf:(#)}、{bf:(##)} 等
           在 {it:old} 中与 {it:new} 中的任何 {bf:#}、{bf:(#)}、{bf:(##)} 
           等组合。

{p 11 11 2}
        {bf:rename v(##) v(#)}: 将 {bf:v01} 更名为 {bf:v1}，将 {bf:v02} 更名为
        {bf:v2}，...，将 {bf:v10} 更名为 {bf:v10}，...，但不重命名
        {bf:v001}，等等。

{p 11 11 2}
        {bf:rename stat(##) stat_20(##)}: 将 {bf:stat10} 更名为 
        {bf:stat_2010}，将 {bf:stat11} 更名为 {bf:stat_2011}，...，但不
        重命名 {bf:stat1}，{bf:stat2}，....

{p 11 11 2}
        {bf:rename stat(#) to stat_200(#)}:
	将 {bf:stat1} 更名为 {bf:stat_2001}，将 {bf:stat2} 更名为 {bf:stat_2002}，
	...，但不重命名 {bf:stat10} 或 {bf:stat_2010}。

{marker item15}{...}
{p 7 11 2}
   15. {bf:rename v# (a b c)}: 将 {bf:v1} 更名为 {bf:a}，将 {bf:v10} 更名为 {bf:b}，
   并将 {bf:v2} 更名为 {bf:c}，前提是变量 {bf:v1}、{bf:v10}、{bf:v2}
   以该顺序出现在数据中。由于在 {it:new} 中指定了三个变量，
   {bf:v#} 在 {it:old} 中必须选择三个变量，否则 {bf:rename} 会发出错误。

{p 15 15 2}
           规则 15.1: 您可以混合语法。请注意显性和隐性变量的数量必须一致。

{p 11 11 2}
        {bf:rename v# (a b c), sort}: 将（例如）{bf:v1} 改为 {bf:a}，{bf:v2} 改为 
        {bf:b}，并将 {bf:v10} 改为 {bf:c}。

{marker rule15.2}{...}
{p 15 15 2}
            规则 15.2: {bf:sort} 选项在重命名之前将所选变量按顺序排列，并 
            进行智能排序。如果 {bf:#}、{bf:(#)}、{bf:(##)} 等出现在 
            {it:old} 中，{bf:sort} 会将变量按数值顺序排列。

{p 11 11 2}
        {bf:rename v* (a b c), sort}: 将（例如）{bf:valpha} 更名为 {bf:a}，将
        {bf:vbeta} 更名为 {bf:b}，并将 {bf:vgamma} 更名为 {bf:c}，无论
        变量在数据中的顺序如何。

{marker rule15.3}{...}
{p 15 15 2}
            规则 15.3: 在 {it:old} 中出现 {bf:*} 或 {bf:?} 的情况，{bf:sort} 
            会将这些变量按字母顺序排列。

{marker item16}{...}
{p 7 11 2}
   16. {bf:rename v# v#, renumber}: 将（例如）{bf:v9} 更名为 {bf:v1}，将
   {bf:v10} 更名为 {bf:v2}，将 {bf:v8} 更名为 {bf:v3}，...，前提是变量
   {bf:v9}、{bf:v10}、{bf:v8} 以该顺序出现在数据中。

{p 15 15 2}
	    规则 16.1: {bf:renumber} 选项重新排序数字。

{p 11 11 2}
        {bf:rename v# v#, renumber sort}: 将（例如）{bf:v8} 更名为 {bf:v1}，将
        {bf:v9} 更名为 {bf:v2}，将 {bf:v10} 更名为 {bf:v3}。有关 {bf:sort} 选项，
        请参见上文 {help rename group##rule15.2:规则 15.2}。

{p 11 11 2}
        {bf:rename v# v#, renumber(10) sort}: 将（例如）{bf:v8} 更名为 {bf:v10}，
        将 {bf:v9} 更名为 {bf:v11}，将 {bf:v10} 更名为 {bf:v12}，....

{p 15 15 2}
            规则 16.2: {opt renumber(#)} 选项允许您指定起始值。

{p 7 11 2}
   17. {bf:rename v* v#, renumber}: 将（例如）{bf:valpha} 更名为 {bf:v1}，
   将 {bf:vgamma} 更名为 {bf:v2}，将 {bf:vbeta} 更名为 {bf:v3}，...，前提是
   变量 {bf:valpha}、{bf:vgamma}、{bf:vbeta} 以该顺序出现在数据中。

{p 15 15 2}
            规则 17: {bf:#} 在 {it:new} 中可以对应于 {bf:*}、{bf:?}、{bf:#}、
            {bf:(#)}、{bf:(##)} 等 {it:old} 中的内容。

{p 11 11 2}
        {bf:rename v* v#, renumber sort}: 将（例如）{bf:valpha} 更名为 {bf:v1}，
        将 {bf:vgamma} 更名为 {bf:v2}，将 {bf:vbeta} 更名为 {bf:v3}。有关注意事项请再
        参见上文 {help rename group##rule15.3:规则 15.3}。

{p 11 11 2}
        {bf:rename *stat stat#, renumber}: 将（例如）{bf:janstat} 更名为
        {bf:stat1}，将 {bf:febstat} 更名为 {bf:stat2}，.... 注意 {bf:#} 在 
        {it:new} 中对应于 {bf:*} 在 {it:old} 中，正如前一个例子所述。

{p 11 11 2}
        {bf:rename *stat stat(##), renumber}: 将（例如）{bf:janstat} 重命名为 
        {bf:stat01}，将 {bf:febstat} 重命名为 {bf:stat02}，....

{p 11 11 2}
        {bf:rename *stat stat#, renumber(0)}: 将（例如）{bf:janstat} 更名为 
        {bf:stat0}，将 {bf:febstat} 更名为 {bf:stat1}，....

{p 11 11 2}
        {bf:rename *stat stat#, renumber sort}: 将（例如）{bf:aprstat} 更名为 
        {bf:stat1}，将 {bf:augstat} 更名为 {bf:stat2}，....

{marker item18}{...}
{p 7 11 2}
   18. {bf:rename (a b c) v#, addnumber}: 将 {bf:a} 更名为 {bf:v1}，将
   {bf:b} 更名为 {bf:v2}，并将 {bf:c} 更名为 {bf:v3}。

{p 15 15 2}
           规则 18: {bf:addnumber} 选项允许您添加编号。更正式地说，
           如果您指定了 {bf:addnumber}，则可以在 {it:new} 中指定比在
           {it:old} 中多一个通配符，而该额外的通配符必须是 {bf:#}、{bf:(#)}、{bf:(##)} 等。

{p 7 11 2}
   19. {bf:rename a(#)(#) a(#)[2](#)[1]}: 将 {bf:a12} 更名为 {bf:a21}，
       将 {bf:a13} 更名为 {bf:a31}，将 {bf:a14} 更名为 {bf:a41}，...，
       将 {bf:a21} 更名为 {bf:a12}，....

{p 15 15 2}
           规则 19.1: 您可以在 {it:new} 中使用通配符和显式下标，以明确指明
           在 {it:old} 中匹配的通配符。下标在 {it:new} 中的通配符后以方括号指定。 
           该数字指的是 {it:old} 中通配符的序号。

{p 11 11 2}
        {bf:rename *stat* *[2]stat*[1]}: 交换前缀和后缀；将 {bf:bpstata} 更名为 
        {bf:astatbp}，将 {bf:rstater} 更名为 {bf:erstatr}，等等。

{p 11 11 2}
        {bf:rename *stat* *[2]stat*}: 执行与上述相同的操作；交换前缀和后缀。

{p 15 15 2}
           规则 19.2: 在指定了下标通配符后，后续未下标通配符对应于 
           {it:old} 中的同名通配符，就好像您完全删除了下标通配符一样。

{p 11 11 2}
        {bf:rename v#a# v#_#[1]_a#[2]}: 将 {bf:v1a1} 更名为 {bf:v1_1_a1}，
        将 {bf:v1a2} 更名为 {bf:v1_1_a2}，...，将 {bf:v2a1} 更名为 {bf:v2_2_a1}，....

{p 15 15 2}
           规则 19.3: 使用下标时，您可以多次引用 {it:old} 中的同一通配符。

{p 11 11 2}
      下标通常用于互换变量名称末尾的后缀。例如，您有区和其下的学校，
      数据中的许多变量名称匹配 {bf:*_#_#}。第一个数字记录区，而第二个数字
      记录学校。在数据中反转顺序，只需输入 {bf:rename} {bf:*_#_#} 
      {bf:*_#[3]_#[2]}。在指定下标时，您通过原始名称中的位置号引用它们。
      例如，原始名称为 {cmd:*_#_#}，因此 {cmd:[1]} 对应于 {cmd:*}， 
      {cmd:[2]} 对应于第一个 {cmd:#}，而 {cmd:[3]} 对应于最后一个 {cmd:#}。


{col 9}说明符{col 22}在 {it:old} 中的含义
{col 9}{hline 67}
{...}
{col 9}{bf:*}{...}
{col 22}零个或多个字符
{...}
{col 9}{bf:?}{...}
{col 22}正好一个字符
{...}
{col 9}{bf:#}{...}
{col 22}一个或多个数字
{...}
{col 9}{bf:(#)}{...}
{col 22}正好一个数字
{...}
{col 9}{bf:(##)}{...}
{col 22}正好两个数字
{...}
{col 9}{bf:(###)}{...}
{col 22}正好三个数字
{...}
{col 9}...
{...}
{col 9}{bf:(##########)}{...}
{col 22}正好十个数字
{col 9}{hline 67}

{col 22}可以对应
{col 9}说明符{col 22}在 {it:old} 中与{col 44}在 {it:new} 中的含义
{col 9}{hline 67}
{...}
{col 9}{bf:*}{...}
{col 22}{bf:*}、{bf:?}、{bf:#}、{bf:(#)}、...{...}
{col 44}复制匹配的文本
{...}
{col 9}{bf:?}{...}
{col 22}{bf:?}{...}
{col 44}复制一个字符
{...}
{col 9}{bf:#}{...}
{col 22}{bf:#}、{bf:(#)}、...{...}
{col 44}按原样复制数字
{...}
{col 9}{bf:(#)}{...}
{col 22}{bf:#}、{bf:(#)}、...{...}
{col 44}格式化为一个或多个数字
{...}
{col 9}{bf:(##)}{...}
{col 22}{bf:#}、{bf:(#)}、...{...}
{col 44}格式化为两个或多个数字
{...}
{col 9}...
{...}
{col 9}{bf:(##########)}{...}
{col 22}{bf:#}、{bf:(#)}、...{...}
{col 44}格式化为十个数字
{col 9}{bf:.}{...}
{col 22}{bf:*}、{bf:?}、{bf:#}、{bf:(#)}、...{...}
{col 44}跳过
{col 9}{bf:=}{...}
{col 22}{it:nothing}{...}
{col 44}复制整个变量名
{col 9}{hline 67}
{p 8 8 2}
在其各种形式中，说明符 {bf:#} 如果指定了 {bf:renumber} 选项，也可以
对应于 {bf:*} 或 {bf:?}。


{marker options1}{...}
{synoptset}{...}
{p2colset 9 30 32 2}{...}
{synopthdr:选项1}
{p2line}
{p2col :{opt addnum:ber}}在末尾添加连续编号{p_end}
{p2col :{opt addnum:ber(#)}}{cmd:addnumber}，从 {it:#} 开始{p_end}
{p2col :{opt renum:ber}}依次重新编号{p_end}
{p2col :{opt renum:ber(#)}}{cmd:renumber}，从 {it:#} 开始{p_end}
{p2col :{opt s:ort}}在编号之前进行排序{p_end}

{p2col :{opt d:ryrun}}不重命名，而是生成报告{p_end}
{p2col :{opt r}}将变量名称存储在 {cmd:r()} 中以供编程使用{p_end}
{p2line}
{p 8 8 2}
这些选项对应于第一和第二种语法。

{marker options2}{...}
{synopthdr:选项2}
{p2line}
{p2col :{opt u:pper}}将变量名称中的 ASCII 字母转换为大写字母（UPPERCASE）{p_end}
{p2col :{opt l:ower}}将变量名称中的 ASCII 字母转换为小写字母（lowercase）{p_end}
{p2col :{opt p:roper}}将变量名称中的字母转换为适当格式（Propercase）{p_end}

{p2col :{opt d:ryrun}}不重命名，而是生成报告{p_end}
{p2col :{opt r}}将变量名称存储在 {cmd:r()} 中以供编程使用{p_end}
{p2line}
{p 8 8 2}
这些选项对应于第三种语法。
必须指定 {opt upper}、{opt lower} 或 {opt proper} 其中之一。
{p_end}


{marker menu}{...}
{title:菜单}

{phang}
{bf:数据 > 数据实用工具 > 重命名变量组}


{marker description}{...}
{title:描述}

{pstd}
{cmd:rename} 命令将现有变量的名称更改为指定的新名称。有关基础语法，请参见 {bf:{help rename_zh:[D] rename}}。
这里记录的是重命名变量组的高级语法。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection D renamegroupQuickstart:快速开始}

        {mansection D renamegroupRemarksandexamples:说明和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker options_rename}{...}
{title:重命名变量的选项}

{p 4 8 2}
{cmd:addnumber} 和 {cmd:addnumber(}{it:#}{cmd:)}
    指定在变量名称后添加序号。有关更多信息，
    请参见 {help rename group##item18:项目 18} 所述的 
    {it:语法}。
    如果没有指定 {it:#}，则序列号从 1 开始。

{p 4 8 2}
{cmd:renumber} 和 {cmd:renumber(}{it:#}{cmd:)}
    指定用序列号替换一组变量名称中的现有数字或文本。
    有关更多信息，请参见 
    {help rename group##item16:项目 16 和 17} 所述的 
    {it:语法}。
    如果没有指定 {it:#}，则序列号从 1 开始。

{p 4 8 2}
{cmd:sort}
    指定在执行重命名之前将现有名称按顺序排列。
    有关详细信息，请参见 {help rename group##item15:项目 15} 所述的 
    {it:语法}。 
    此排序仅在同时指定 {cmd:addnumber}
    或 {cmd:renumber}，或在为 {it:old} 或 {it:new} 指定变量名称列表时重要。

{marker dryrun}{...}
{p 4 8 2}
{cmd:dryrun}
    指定不执行请求的重命名，而是显示一张表，显示旧的和新的变量名称。
    在实际重命名变量之前，指定此选项通常是个好主意。

{p 4 8 2}
{cmd:r}
    是一个编程选项，它请求将旧的和新的变量名称存储在 
    {cmd:r()} 中。此选项可以与 {cmd:dryrun} 一起或单独指定。


{marker options_case}{...}
{title:更改变量名称大小写的选项}

{p 4 8 2}
{cmd:upper}、{cmd:lower} 和 {cmd:proper}
    指定变量如何重命名。
    {cmd:upper} 指定变量名称中的 ASCII 字母更改为大写； 
    {cmd:lower} 改为小写；{cmd:proper} 将首个 ASCII 字母大写，其余字母小写。
    必须指定这三种选项中的一种。注意，这些选项不处理超出
    {help u_glossary##plainascii:普通 ASCII} 范围的 Unicode 字符。
    要将变量名中的 Unicode 字符更改为大写、小写或标题格式，请使用函数 
    {help f_ustrupper_zh:ustrupper()}、{help f_ustrlower_zh:ustrlower()} 和 
    {help f_ustrtitle_zh:ustrtitle()}。
    请参见下面的 {help rename_group##technote:技术说明}。

{p 4 8 2}
{cmd:dryrun} 和 {cmd:r}
    与上面直接记录的选项相同 {help rename group##dryrun:上述}。


{marker technote}{...}
{title:技术说明}

{pstd}
您不能直接在 {cmd:rename} 命令中使用函数
{help f_ustrupper_zh:ustrupper()}、
{help f_ustrlower_zh:ustrlower()} 和
{help f_ustrtitle_zh:ustrtitle()}。您必须先创建一个包含
新变量名称的局部宏，然后在 {cmd:rename} 命令中使用该宏。例如，

{phang2}{cmd:. local new = ustrlower(Ubicación)}{p_end}
{phang2}{cmd:. rename Ubicación `new'}{p_end}

{pstd}
在变量列表中，您可以使用多个局部宏。例如，

{phang2}{cmd:. local new1 = ustrlower(Ubicación1)}{p_end}
{phang2}{cmd:. local new2 = ustrlower(Ubicación2)}{p_end}
{phang2}{cmd:. rename (Ubicación1 Ubicación2) (`new1' `new2')}{p_end}

{pstd}
有关局部宏的更多信息，请参见 {findalias frlocal}。


{marker results}{...}
{title:存储的结果}

{pstd}
默认情况下，{cmd:rename} 不会在 {cmd:r()} 中存储任何内容。如果指定了 {cmd:r} 选项，
那么 {cmd:rename} 会将以下内容存储在 {cmd:r()} 中：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:r(n)}}要重命名的变量数量{p_end}

{p2col 5 15 19 2: 宏}{p_end}
{synopt:{cmd:r(oldnames)}}原始变量名称{p_end}
{synopt:{cmd:r(newnames)}}新变量名称{p_end}
{p2colreset}{...}

{pstd}
重命名为自己的变量将从记录的列表中省略。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <rename_group.sthlp>}