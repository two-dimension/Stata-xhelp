{smcl}
{* *! version 1.0.0  08may2019}{...}
{vieweralsosee undocumented "help undocumented"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-5] st_matrix()" "help mf_st_matrix_zh"}{...}
{vieweralsosee "[M-5] st_ms_utils" "help mf_st_ms_utils_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[P] matrix rowjoinbyname" "help matrix_rowjoinbyname_zh"}{...}
{viewerjumpto "Syntax" "mf_st_matrix__joinbyname_zh##syntax"}{...}
{viewerjumpto "Description" "mf_st_matrix__joinbyname_zh##description"}{...}
{viewerjumpto "Conformability" "mf_st_matrix__joinbyname_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf_st_matrix__joinbyname_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf_st_matrix__joinbyname_zh##source"}
{help mf_st_matrix__joinbyname:English Version}
{hline}{...}
{title:标题}

{phang}
{cmd:[M-5] st_matrix__joinbyname()} {hline 2} 通过匹配列名连接Stata矩阵的行


{marker syntax}{...}
{title:语法}

{col 5}设置

{col 9}{cmd:class st_matrix__joinbyname scalar} {it:A}
{col 5}{it:或}
{col 9}{it:A}{col 21}{cmd:= st_matrix__joinbyname()}

{col 23}{it:A}{cmd:.list(}{it:list}{cmd:)}
{col 23}{it:A}{cmd:.type(}{it:rowcol}{cmd:)}
{col 23}{it:A}{cmd:.missing_code(}{it:value}{cmd:)}
{col 23}{it:A}{cmd:.consolidate(}{it:consolidate}{cmd:)}
{col 23}{it:A}{cmd:.encode_omit(}{it:encode_omit}{cmd:)}
{col 23}{it:A}{cmd:.ignore_omit(}{it:ignore_omit}{cmd:)}

{col 5}查询

{col 9}{it:list}{col 21}{cmd:=} {it:A}{cmd:.list()}
{col 9}{it:rowcol}{col 21}{cmd:=} {it:A}{cmd:.type()}
{col 9}{it:value}{col 21}{cmd:=} {it:A}{cmd:.missing_code()}
{col 9}{it:consolidate}{col 21}{cmd:=} {it:A}{cmd:.consolidate()}
{col 9}{it:encode_omit}{col 21}{cmd:=} {it:A}{cmd:.encode_omit()}
{col 9}{it:ignore_omit}{col 21}{cmd:=} {it:A}{cmd:.ignore_omit()}

{col 5}操作

{col 23}{it:A}{cmd:.join()}
{col 23}{it:A}{cmd:.post(}{it:matname}{cmd:)}
{col 9}{it:result}{col 21}{cmd:=} {it:A}{cmd:.result()}
{col 9}{it:rowstripe}{col 21}{cmd:=} {it:A}{cmd:.rowstripe()}
{col 9}{it:colstripe}{col 21}{cmd:=} {it:A}{cmd:.colstripe()}


{pstd}
其中

{p2colset 9 21 25 2}{...}
{p2col:{it:rowcol}}: 字符串标量，{bf:"行"}或{bf:"列"}{p_end}
{p2col:{it:list}}: 字符串向量{p_end}
{p2col:{it:value}}: 实数标量{p_end}
{p2col:{it:consolidate}}: 实数标量，{bf:0}表示关闭{p_end}
{p2col:{it:encode_omit}}: 实数标量，{bf:0}表示关闭{p_end}
{p2col:{it:ignore_omit}}: 实数标量，{bf:0}表示关闭{p_end}
{p2col:{it:result}}: 实数矩阵{p_end}
{p2col:{it:rowstripe}}: 字符串矩阵{p_end}
{p2col:{it:colstripe}}: 字符串矩阵{p_end}
{p2colreset}{...}


{marker description}{...}
{title:描述}

{pstd}
Mata类 {cmd:st_matrix__joinbyname} 在一个维度上连接Stata矩阵，同时在另一个维度上匹配名称。
默认情况下，连接行并匹配列名，但您也可以连接列并匹配行名。


{marker remarks}{...}
{title:备注}

{pstd}
所需的最小设置和操作为

{col 23}{it:A}{cmd:.list(}{it:list}{cmd:)}
{col 23}{it:A}{cmd:.join()}

{pstd}
然后

{col 23}{it:A}{cmd:.post(}{it:matname}{cmd:)}

{pstd}
或者

{col 9}{it:result}{col 21}= {it:A}{cmd:.result()}
{col 9}{it:rowstripe}{col 21}{cmd:=} {it:A}{cmd:.rowstripe()}
{col 9}{it:colstripe}{col 21}{cmd:=} {it:A}{cmd:.colstripe()}

{pstd}
其中 {it:list} 是一个字符串向量，包含您希望连接成一个矩阵的Stata矩阵的名称，{it:matname} 是您希望放置结果连接矩阵的Stata矩阵的名称，{it:result} 是您希望放置结果连接矩阵的Mata矩阵，{it:rowstripe} 是一个字符串矩阵，包含与 {it:result} 对应的矩阵行名称，{it:colstripe} 是一个字符串矩阵，包含与 {it:result} 对应的矩阵列名称。

{pstd}
默认情况下，矩阵行通过匹配矩阵列名进行连接。要通过匹配矩阵行名连接矩阵列，请使用

{col 23}{it:A}{cmd:.type("column")}

{pstd}
{it:A}{cmd:.type(}{it:rowcol}{cmd:)} 也将接受 {cmd:"column"} 的缩写；最小缩写为 {cmd:"col"}。

{pstd}
默认情况下，{it:list} 中矩阵的元素在与其他矩阵不匹配时会被编码为 {cmd:.}（"系统缺失值"）。要更改此设置，请在

{col 23}{it:A}{cmd:.missing_code(}{it:value}{cmd:)}

{pstd}
默认情况下，等式和带有等式的名称会被合并。
要关闭此功能，请使用

{col 23}{it:A}{cmd:.consolidate(0)}

{pstd}
在匹配列（或行）名称时，具有省略或基级操作符的零值元素在默认情况下不会被编码。要让这些元素被编码，请使用

{col 23}{it:A}{cmd:.encode_omit(1)}

{pstd}
因子变量和交互项的基级会通过 {cmd:.b} 编码，空级别通过 {cmd:.e} 编码，所有其他省略元素通过 {cmd:.o} 编码。
当该功能开启时，不允许在 {it:A}{cmd:.missing_code(}{it:value}{cmd:)} 中设置这些缺失值。

{pstd}
基级和省略操作符在匹配的列（或行）名称中保留，但仅在它们出现的第一个矩阵中。
要将匹配的列（或行）名称中的基级和省略操作符移除，请使用

{col 23}{it:A}{cmd:.ignore_omit(1)}

{pstd}
此设置由 {it:A}{cmd:.ignore_omit(1)} 隐含。


{marker conformability}{...}
{title:兼容性}

    {it:A}{cmd:.list(}{it:list}{cmd:)}:
	     {it:list}:  1 {it:x} {it:n} 或 {it:n} {it:x} 1
	   {it:result}:  {it:void}

    {it:A}{cmd:.list()}:
	   {it:result}:  1 {it:x} {it:n}

    {it:A}{cmd:.type(}{it:rowcol}{cmd:)}:
	   {it:rowcol}:  1 {it:x} 1
	   {it:result}:  {it:void}

    {it:A}{cmd:.type()}:
	   {it:result}:  1 {it:x} 1

    {it:A}{cmd:.missing_code(}{it:value}{cmd:)}:
	    {it:value}:  1 {it:x} 1
	   {it:result}:  {it:void}

    {it:A}{cmd:.missing_code()}:
	   {it:result}:  1 {it:x} 1

    {it:A}{cmd:.consolidate(}{it:consolidate}{cmd:)}:
      {it:consolidate}:  1 {it:x} 1
	   {it:result}:  {it:void}

    {it:A}{cmd:.consolidate()}:
	   {it:result}:  1 {it:x} 1

    {it:A}{cmd:.encode_omit(}{it:encode_omit}{cmd:)}:
      {it:encode_omit}:  1 {it:x} 1
	   {it:result}:  {it:void}

    {it:A}{cmd:.encode_omit()}:
	   {it:result}:  1 {it:x} 1

    {it:A}{cmd:.ignore_omit(}{it:ignore_omit}{cmd:)}:
      {it:ignore_omit}:  1 {it:x} 1
	   {it:result}:  {it:void}

    {it:A}{cmd:.ignore_omit()}:
	   {it:result}:  1 {it:x} 1

    {it:A}{cmd:.join()}:
	   {it:result}:  {it:void}

    {it:A}{cmd:.post(}{it:matname}{cmd:)}:
          {it:matname}:  1 {it:x} 1
	   {it:result}:  {it:void}

    {it:A}{cmd:.result()}:
	   {it:result}:  {it:rows} {it:x} {it:cols}

    {it:A}{cmd:.rowstripe()}:
	   {it:result}:  {it:rows} {it:x} 2

    {it:A}{cmd:.colstripe()}:
	   {it:result}:  {it:cols} {it:x} 2


{marker diagnostics}{...}
{title:诊断}

{pstd}
无。


{marker source}{...}
{title:源代码}

{pstd}
{view st_matrix__joinbyname.mata, adopath asis:associativearray.mata}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_st_matrix__joinbyname.sthlp>}