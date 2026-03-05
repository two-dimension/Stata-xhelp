{smcl}
{* *! version 1.1.4  15may2018}{...}
{vieweralsosee "[M-5] logit()" "mansection M-5 logit()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] Statistical" "help m4_statistical_zh"}{...}
{viewerjumpto "Syntax" "mf_logit_zh##syntax"}{...}
{viewerjumpto "Description" "mf_logit_zh##description"}{...}
{viewerjumpto "Conformability" "mf_logit_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf_logit_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf_logit_zh##source"}
{help mf_logit:English Version}
{hline}{...}
{p2colset 1 18 20 2}{...}
{p2col:{bf:[M-5] logit()} {hline 2}}日志几率和补充日志-log{p_end}
{p2col:}({mansection M-5 logit():查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{it:real matrix}{bind:     }
{cmd:logit(}{it:real matrix X}{cmd:)}

{p 8 12 2}
{it:real matrix}{bind:  }
{cmd:invlogit(}{it:real matrix X}{cmd:)}

{p 8 12 2}
{it:real matrix}{bind:   }
{cmd:cloglog(}{it:real matrix X}{cmd:)}

{p 8 12 2}
{it:real matrix} 
{cmd:invcloglog(}{it:real matrix X}{cmd:)}


{marker description}{...}
{title:描述}

{p 4 4 2}
    {cmd:logit(}{it:X}{cmd:)} 
    返回 {it:X} 中元素的日志几率比， 
    ln{c -(}{it:x}/(1-{it:x}){c )-}。

{p 4 4 2}
    {cmd:invlogit(}{it:X}{cmd:)} 
    返回 {it:X} 中元素的 {cmd:logit()} 的反函数， 
    exp({it:x})/{c -(}1+exp({it:x}){c )-}。

{p 4 4 2}
    {cmd:cloglog(}{it:X}{cmd:)} 
    返回 {it:X} 中元素的补充日志-log， 
    ln{c -(}-ln(1-{it:x}){c )-}。

{p 4 4 2}
    {cmd:invcloglog(}{it:X}{cmd:)} 
    返回 {it:X} 中元素的 {cmd:cloglog()} 的逐元素反函数，
    1-exp{c -(}-exp({it:x}){c )-}。


{marker conformability}{...}
{title:兼容性}

{p 4 4 2}
所有函数返回与输入相同维度的矩阵
包含逐元素计算的结果。

    
{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
    {cmd:logit(}{it:X}{cmd:)} 和 
    {cmd:cloglog(}{it:X}{cmd:)}
    在 {it:x} <= 0 或 {it:x} >= 1 时返回缺失值。


{marker source}{...}
{title:源代码}

{p 4 4 2}
{view logit.mata, adopath asis:logit.mata},
{view invlogit.mata, adopath asis:invlogit.mata},
{view cloglog.mata, adopath asis:cloglog.mata},
{view invcloglog.mata, adopath asis:invcloglog.mata}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_logit.sthlp>}