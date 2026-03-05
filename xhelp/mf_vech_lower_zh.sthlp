{smcl}
{* *! version 1.0.4  15may2018}{...}
{vieweralsosee undocumented "help undocumented"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] Manipulation" "help m4_manipulation_zh"}{...}
{vieweralsosee "[M-5] vech()" "help mf_vech"}{...}
{viewerjumpto "Syntax" "mf_vech_lower_zh##syntax"}{...}
{viewerjumpto "Description" "mf_vech_lower_zh##description"}{...}
{viewerjumpto "Example" "mf_vech_lower_zh##example"}{...}
{viewerjumpto "Conformability" "mf_vech_lower_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf_vech_lower_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf_vech_lower_zh##source"}
{help mf_vech_lower:English Version}
{hline}{...}
{title:标题}

{p2colset 5 27 29 2}{...}
{p2col :{hi:[M-5] vech_lower()} {hline 2}}堆叠矩阵列{p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 8 2}
{it:transmorphic colvector}
{cmd:vech_lower(}{it:transmorphic matrix T}{cmd:)}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:vech_lower(}{it:T}{cmd:)} 返回方形且通常对称的矩阵 {it:T} 转换为列向量；仅记录矩阵的下半部分，不包括主对角线。


{marker example}{...}
{title:示例}

        {cmd:: x}
        [对称]
               1   2   3
            {c TLC}{hline 13}{c TRC}
          1 {c |}  1          {c |}
          2 {c |}  2   4      {c |}
          3 {c |}  3   6   9  {c |}
            {c BLC}{hline 13}{c BRC}

        {cmd:: v = vech_lower(x)}
        {cmd:: v}
               1
            {c TLC}{hline 5}{c TRC}
          1 {c |}  2  {c |}
          2 {c |}  3  {c |}
          3 {c |}  6  {c |}
            {c BLC}{hline 5}{c BRC}


{marker conformability}{...}
{title:相容性}

    {cmd:vech_lower(}{it:T}{cmd:)}:
                  {it:T}:   {it:n x n}
             {it:result}:   ({it:n}*({it:n}-1)/2) {it:x} 1


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
{cmd:vech_lower(}{it:T}{cmd:)} 如果 {it:T} 不是方形，将会中止并报错。
{cmd:vech_lower()} 仅记录 {it:T} 的下三角，不包括主对角线；它不要求 {it:T} 为对称矩阵。


{marker source}{...}
{title:源代码}

{p 4 4 2}
{view vech_lower.mata, adopath asis:vech_lower.mata}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_vech_lower.sthlp>}