{smcl}
{* *! version 1.1.4  15may2018}{...}
{vieweralsosee "[M-5] lowertriangle()" "mansection M-5 lowertriangle()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] 操作" "help m4_manipulation_zh"}{...}
{viewerjumpto "语法" "mf_lowertriangle_zh##syntax"}{...}
{viewerjumpto "描述" "mf_lowertriangle_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "mf_lowertriangle_zh##linkspdf"}{...}
{viewerjumpto "备注" "mf_lowertriangle_zh##remarks"}{...}
{viewerjumpto "符合性" "mf_lowertriangle_zh##conformability"}{...}
{viewerjumpto "诊断" "mf_lowertriangle_zh##diagnostics"}{...}
{viewerjumpto "源代码" "mf_lowertriangle_zh##source"}
{help mf_lowertriangle:English Version}
{hline}{...}
{p2colset 1 26 28 2}{...}
{p2col:{bf:[M-5] lowertriangle()} {hline 2}}提取下三角或上三角
{p_end}
{p2col:}({mansection M-5 lowertriangle():查看完整的 PDF 手动条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{it:数值矩阵}
{cmd:lowertriangle(}{it:数值矩阵 A} [{cmd:,}
{it:数值标量 d}]{cmd:)}

{p 8 12 2}
{it:数值矩阵}
{cmd:uppertriangle(}{it:数值矩阵 A} [{cmd:,}
{it:数值标量 d}]{cmd:)}


{p 8 12 2}
{it:void}{bind:         }
{cmd:_lowertriangle(}{it:数值矩阵 A} [{cmd:,}
{it:数值标量 d}]{cmd:)}

{p 8 12 2}
{it:void}{bind:         }
{cmd:_uppertriangle(}{it:数值矩阵 A} [{cmd:,}
{it:数值标量 d}]{cmd:)}


{p 4 4 2}
其中参数 {it:d} 是可选的。


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:lowertriangle()} 返回 {it:A} 的下三角部分。

{p 4 4 2}
{cmd:uppertriangle()} 返回 {it:A} 的上三角部分。

{p 4 4 2}
{cmd:_lowertriangle()} 用 {it:A} 的下三角部分替换 {it:A}。

{p 4 4 2}
{cmd:_uppertriangle()} 用 {it:A} 的上三角部分替换 {it:A}。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection M-5 lowertriangle()备注和示例:备注和示例}

{pstd}
上述章节未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
备注以以下标题呈现：

    {help mf_lowertriangle##remarks1:可选参数 d}
    {help mf_lowertriangle##remarks2:非方阵}


{marker remarks1}{...}
{title:可选参数 d}

{p 4 4 2}
可选参数 {it:d} 指定对对角线的处理。
指定 {it:d}>={cmd:.}，或不指定 {it:d}，意味着没有特别处理；如果

                                {c TLC}{c -}       {c -}{c TRC}
		                {c |} 1  2  3 {c |}
		        {it:A}    =  {c |} 4  5  6 {c |}
		                {c |} 7  8  9 {c |}
                                {c BLC}{c -}       {c -}{c BRC}

    那么

                                {c TLC}{c -}       {c -}{c TRC}
		                {c |} 1  0  0 {c |}
	{cmd:lowertriangle(}{it:A}{cmd:, .)}  =  {c |} 4  5  0 {c |}
		                {c |} 7  8  9 {c |}
                                {c BLC}{c -}       {c -}{c BRC}

{p 4 4 2}
但是，如果为 {it:d} 指定一个非缺失值，则该值将替代对角线的每个元素，例如，

                                {c TLC}{c -}       {c -}{c TRC}
		                {c |} 1  0  0 {c |}
	{cmd:lowertriangle(}{it:A}{cmd:, 1)}  =  {c |} 4  1  0 {c |}
		                {c |} 7  8  1 {c |}
                                {c BLC}{c -}       {c -}{c BRC}


{marker remarks2}{...}
{title:非方阵}

{p 4 4 2}
{cmd:lowertriangle()} 和 {cmd:uppertriangle()} 可以用于非方阵。
如果

                                {c TLC}{c -}          {c -}{c TRC}
		                {c |} 1  2  3  4 {c |}
		        {it:A}    =  {c |} 5  6  7  8 {c |}
		                {c |} 9 10 11 12 {c |}
                                {c BLC}{c -}          {c -}{c BRC}

    那么

                                {c TLC}{c -}       {c -}{c TRC}
		                {c |} 1  0  0 {c |}
	   {cmd:lowertriangle(}{it:A}{cmd:)}  =  {c |} 5  6  0 {c |}
		                {c |} 9 10 11 {c |}
                                {c BLC}{c -}       {c -}{c BRC}

    并且

                                {c TLC}{c -}          {c -}{c TRC}
		                {c |} 1  2  3  4 {c |}
	   {cmd:uppertriangle(}{it:A}{cmd:)}  =  {c |} 0  6  7  8 {c |}
		                {c |} 0  0 11 12 {c |}
                                {c BLC}{c -}          {c -}{c BRC}

{p 4 4 2}
然而，{cmd:_lowertriangle()} 和 
{cmd:_uppertriangle()} 不可以用于非方阵。


{marker conformability}{...}
{title:符合性}

    {cmd:lowertriangle(}{it:A}{cmd:,} {it:d}{cmd:)}:
		{it:A}:  {it:r x c}
		{it:d}:  1 {it:x} 1        (可选)
	   {it:结果}:  {it:r x} min({it:r},{it:c})

    {cmd:uppertriangle(}{it:A}{cmd:,} {it:d}{cmd:)}:
		{it:A}:  {it:r x c}
		{it:d}:  1 {it:x} 1        (可选)
	   {it:结果}:  min({it:r},{it:c}) {it:x c}

{p 4 4 2}
    {cmd:_lowertriangle(}{it:A}{cmd:,} {it:d}{cmd:)},
    {cmd:_uppertriangle(}{it:A}{cmd:,} {it:d}{cmd:)}:
{p_end}
	{it:输入:}
		{it:A}:  {it:n x n}
		{it:d}:  1 {it:x} 1        (可选)
	{it:输出:}
		{it:A}:  {it:n x n}


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
无。


{marker source}{...}
{title:源代码}

{p 4 4 2}
{view lowertriangle.mata, adopath asis:lowertriangle.mata},
{view uppertriangle.mata, adopath asis:uppertriangle.mata},
{view _lowertriangle.mata, adopath asis:_lowertriangle.mata},
{view _uppertriangle.mata, adopath asis:_uppertriangle.mata}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_lowertriangle.sthlp>}