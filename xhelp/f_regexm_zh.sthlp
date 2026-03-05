{smcl}
{* *! version 1.2.2  19oct2017}{...}
{vieweralsosee "[FN] 字符串函数" "mansection FN Stringfunctions"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "help 函数" "help functions_zh"}{...}
{vieweralsosee "help 字符串函数" "help string_functions_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "FAQ: 正则表达式是什么，我如何在 Stata 中使用它们？" "browse http://www.stata.com/support/faqs/data/regex.html"}{...}
{viewerjumpto "函数" "f_regexm_zh##functions"}{...}
{viewerjumpto "示例" "f_regexm_zh##examples"}
{help f_regexm:English Version}
{hline}{...}
{p2colset 1 26 28 2}{...}
{p2col:{bf:[FN] 字符串函数}}
{p_end}
{p2col:({mansection FN Stringfunctions:查看完整的 PDF 手册条目})}{p_end}
{p2colreset}{...}


{marker functions}{...}
{title:函数}

包含帮助 f_regexm


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. sysuse auto}

{pstd}列出所有以大写字母 "B" 开头的汽车品牌和型号{p_end}
{phang2}{cmd:. generate bbegin = regexm(make, "^B")}{p_end}
{phang2}{cmd:. list make if bbegin == 1}
   
{pstd}或者，全部在一行中{p_end}
{phang2}{cmd:. list make if regexm(make, "^B") == 1}
   
{pstd}列出所有品牌或型号中包含字母 "ck" 的汽车{p_end}
{phang2}{cmd:. list make if regexm(make, "ck") == 1}
   
{pstd}列出所有型号以数字结尾的汽车{p_end}
{phang2}{cmd:. list make if regexm(make, "[0-9]$") == 1}

{pstd}生成一个新变量 {cmd:make2}，其值等于 {cmd:make}，然后如果 {cmd:make2} 以大写字母 "B" 开头且以三位数字后跟一个小写字母结尾，则将 {cmd:make2} 替换为 {cmd:"found"}{p_end}
{phang2}{cmd:. generate make2 = make}{p_end}
{phang2}{cmd:. replace make2 = regexr(make2, "^B.*[0-9][0-9][0-9][a-z]$",}
            {cmd:"found")}{p_end}
{phang2}{cmd:. list make make2 if make != make2}{p_end}

{pstd}将电话号码格式从 (123) 456-7890 转换为 123-456-7890:{p_end}
{phang2}{cmd:. clear}{p_end}
{phang2}{cmd:. input str15 number}

                         number
             1. "(123) 456-7890"
             2. "(800) STATAPC"
             3. end

{phang2}{cmd:. gen str newnum = regexs(1) + "-" + regexs(2)}
               {cmd:if regexm(number, "^\(([0-9]+)\) (.*)")}{p_end}
{phang2}{cmd:. list number newnum}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <f_regexm.sthlp>}