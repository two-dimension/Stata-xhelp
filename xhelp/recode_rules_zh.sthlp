{smcl}
{* *! version 1.0.3  11feb2011}{...}
{* 此帮助文件由 recode.dlg 调用}{...}
{vieweralsosee "[D] recode" "help recode_zh"}{...}
{viewerjumpto "理解 recode 规则" "recode_rules_zh##understand"}{...}
{viewerjumpto "recode 规则示例" "recode_rules_zh##examples"}
{help recode_rules:English Version}
{hline}{...}
{marker understand}{...}
{title:理解 recode 规则}

{pstd}
可以有任意数量的规则，每个规则放在括号内。最常见的 {it:rule} 形式为

{center:{c TLC}{hline 16}{c TT}{hline 15}{c TT}{hline 27}{c TRC}}
{center:{c |} {it:rule}           {c |} 示例         {c |} 含义                     {c |}}
{center:{c LT}{hline 16}{c +}{hline 15}{c +}{hline 27}{c RT}}
{center:{c |}{cmd:(}{it:#} {cmd:=} {it:#}{cmd:)}         {c |} (3 = 1)       {c |} 3 重编码为 1            {c |}}
{center:{c |}{cmd:(}{it:#} {it:#} {cmd:=} {it:#}{cmd:)}       {c |} (2 . = 9)     {c |} 2 和 . 重编码为 9      {c |}}
{center:{c |}{cmd:(}{it:#}{cmd:/}{it:#} {cmd:=} {it:#}{cmd:)}       {c |} (1/5 = 4)     {c |} 1 到 5 重编码为 4  {c |}}
{center:{c |}{cmd:(}{cmdab:nonm:issing} {cmd:=} {it:#}{cmd:)}{c |} (nonmiss = 8) {c |} 所有其他非缺失值重编码为 8 {c |}}
{center:{c |}{cmd:(}{cmdab:mis:sing} {cmd:=} {it:#}{cmd:)}   {c |} (miss = 9)    {c |} 所有其他缺失值重编码为 9   {c |}}
{center:{c BLC}{hline 16}{c BT}{hline 15}{c BT}{hline 27}{c BRC}}

{marker examples}{...}
{title:recode 规则示例}

{cmd:单个规则:}

{phang} {cmd:(3 = 5)} 或 {cmd:(1/3 5.5 = min)}  或 {cmd:(1/3 max = .)} 或
{cmd:(else = 0)}

{phang} {cmd:(missing = 0 None)} 或 {cmd: (1 4 7 9 11/13 = 1 blue)} 或
{cmd:(* = 20.5 "其他")}

{cmd}
{cmd:多个规则:}

{phang} (1=2) (2=1)

{phang} (1 2.1 3/5=1) (6/10=2)

{phang} (1 2 3/5=1) (6/10.5=2)

{phang} (1=6) (2=5.5) (3=4) (4=3) (5=2) (6=1) (nonmiss=0) (miss=.)

{phang} (min/0 = 0) (1/max = 1)

{phang} (min/19=1) (20/29=2) (30/39=3) (40/49=4) (50/max=5)

{phang} (.=.) (missing =.a)

{phang} (.=.) (.a = .a) (missing =.a)

{phang} (1 2=1 low) (3=2 medium) (4 5=3 high) (nonmiss=9) (miss=.)

带标签的多个规则:

{phang} (1 2 = 1 low) (3 = 2 medium) (4 5 = 3 high) (nonmissing = 9 "其他") (missing = .)

{phang} (missing = 0 None) (min/10.7 = 1 first) (10.8/30.3 = 2 second)
(30.4/max = 3 third)

{txt}
{title:一般的 recode 规则}

{pstd}
一般来说，每个 {it:rule} 的形式为

{p 12 12 2}
({it:element} [ {it:element ...}] {cmd:=} {it:el} [{cmd:"}{it:label}{cmd:"}])

{p 23 23 2}({cmdab:nonm:missing =} {it:el} [{cmd:"}{it:label}{cmd:"}])

{p 27 27 2}({cmdab:mis:sing =} {it:el} [{cmd:"}{it:label}{cmd:"}])

{p 26 26 2}({cmd:else} | {cmd:*} {cmd:=} {it:el} [{cmd:"}{it:label}{cmd:"}])

{p 8 8 2}
{it:element} 的形式为

{p 12 12 2}
{it:el} | {it:el}{cmd:/}{it:el}

{p 8 8 2}
而 {it:el} 是

{p 12 12 2}
{it:#} | {cmd:min} | {cmd:max}

{pstd}
关键字规则 {cmd:missing}、{cmd:nonmissing} 和 {cmd:else} 必须作为最后的规则指定。{cmd:else} 不能与 {cmd:missing} 和 {cmd:nonmissing} 结合使用。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <recode_rules.sthlp>}