{smcl}
{* *! version 1.1.4  15may2018}{...}
{vieweralsosee "[M-5] vec()" "mansection M-5 vec()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] Manipulation" "help m4_manipulation_zh"}{...}
{viewerjumpto "Syntax" "mf_vec_zh##syntax"}{...}
{viewerjumpto "Description" "mf_vec_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mf_vec_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "mf_vec_zh##remarks"}{...}
{viewerjumpto "Conformability" "mf_vec_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf_vec_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf_vec_zh##source"}
{help mf_vec:English Version}
{hline}{...}
{p2colset 1 16 18 2}{...}
{p2col:{bf:[M-5] vec()} {hline 2}}堆叠矩阵列
{p_end}
{p2col:}({mansection M-5 vec():查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 8 2}
{it:transmorphic colvector}{bind: }
{cmd:vec(}{it:transmorphic matrix T}{cmd:)}

{p 8 8 2}
{it:transmorphic colvector}
{cmd:vech(}{it:transmorphic matrix T}{cmd:)}

{p 8 8 2}
{it:transmorphic matrix}
{cmd:invvech(}{it:transmorphic colvector v}{cmd:)}



{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:vec(}{it:T}{cmd:)} 返回被转换为一列的 {it:T}，每一列堆叠到下一列上。

{p 4 4 2}
{cmd:vech(}{it:T}{cmd:)} 返回一个方形且通常对称的矩阵 {it:T} 被转换为一列向量；仅记录矩阵的下半部分。

{p 4 4 2}
{cmd:invvech(}{it:v}{cmd:)} 返回 {cmd:vech()} 风格的列向量 {it:v} 被转换为一个对称（厄米特）矩阵。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection M-5 vec()备注和示例:备注和示例}

{pstd}
以上部分不包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
备注分为以下几部分：

	{help mf_vec##remarks1:vec() 示例}
	{help mf_vec##remarks2:vech() 和 invvech() 示例}


{marker remarks1}{...}
{title:vec() 示例}

        {cmd:: x}
               1   2   3
            {c TLC}{hline 13}{c TRC}
          1 {c |}  1   2   3  {c |}
          2 {c |}  4   5   6  {c |}
            {c BLC}{hline 13}{c BRC}

        {cmd:: vec(x)}
               1
            {c TLC}{hline 5}{c TRC}
          1 {c |}  1  {c |}
          2 {c |}  4  {c |}
          3 {c |}  2  {c |}
          4 {c |}  5  {c |}
          5 {c |}  3  {c |}
          6 {c |}  6  {c |}
            {c BLC}{hline 5}{c BRC}


{marker remarks2}{...}
{title:vech() 和 invvech() 示例}

        {cmd:: x}
        [对称]
               1   2   3
            {c TLC}{hline 13}{c TRC}
          1 {c |}  1          {c |}
          2 {c |}  2   4      {c |}
          3 {c |}  3   6   9  {c |}
            {c BLC}{hline 13}{c BRC}

        {cmd:: v = vech(x)}
        {cmd:: v}
               1
            {c TLC}{hline 5}{c TRC}
          1 {c |}  1  {c |}
          2 {c |}  2  {c |}
          3 {c |}  3  {c |}
          4 {c |}  4  {c |}
          5 {c |}  6  {c |}
          6 {c |}  9  {c |}
            {c BLC}{hline 5}{c BRC}

        {cmd:: invvech(v)}
        [对称]
               1   2   3
            {c TLC}{hline 13}{c TRC}
          1 {c |}  1          {c |}
          2 {c |}  2   4      {c |}
          3 {c |}  3   6   9  {c |}
            {c BLC}{hline 13}{c BRC}


{marker conformability}{...}
{title:相容性}

    {cmd:vec(}{it:T}{cmd:)}:
                  {it:T}:   {it:r x c}
             {it:result}:   ({it:r}*{it:c}) {it:x} 1

    {cmd:vech(}{it:T}{cmd:)}:
                  {it:T}:   {it:n x n}
             {it:result}:   ({it:n}*({it:n}+1)/2) {it:x} 1

    {cmd:invvech(}{it:v}{cmd:)}:
                  {it:v}:   ({it:n}*({it:n}+1)/2) {it:x} 1
             {it:result}:   {it:n x n}


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
{cmd:vec(}{it:T}{cmd:)} 不会失败。

{p 4 4 2}
{cmd:vech(}{it:T}{cmd:)} 如果 {it:T} 不是方阵，则会中止并报错。
{cmd:vech()} 仅记录 {it:T} 的下三角部分；它不要求 {it:T} 为对称。

{p 4 4 2}
{cmd:invvech(}{it:v}{cmd:)} 如果 {it:v} 不具有 0、1、3、6、10 等行数，则会中止并报错。


{marker source}{...}
{title:源代码}

{p 4 4 2}
{view vec.mata, adopath asis:vec.mata},
{view vech.mata, adopath asis:vech.mata},
{view invvech.mata, adopath asis:invvech.mata}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_vec.sthlp>}