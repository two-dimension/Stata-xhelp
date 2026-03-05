{smcl}
{* *! version 1.1.4  24may2018}{...}
{findalias asfrvarnew}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[U] 11 语言语法" "help language_zh"}{...}
{vieweralsosee "[U] 11.4 变量名和变量列表" "help varname_zh"}{...}
{viewerjumpto "描述" "newvarlist_zh##description"}{...}
{viewerjumpto "示例" "newvarlist_zh##examples"}
{help newvarlist:English Version}
{hline}{...}
{title:标题}

    {findalias frvarnew}


{marker description}{...}
{title:描述}

{pstd}
{it:newvarlist} 是新变量的列表：

{p 8 12 2}
    1.  {it:newvarlist} 可以字面上是一个或多个
        {it:{help newvar_zh:newvars}}的列表，逐个列出：

		{cmd:x}
		{cmd:x myvar inc92}

{p 8 12 2}
    2.  您可以使用连字符来指定一组变量：

		{cmd:p1-p90}{col 43}(意味着 {cmd:p1 p2} ... {cmd:p90})
		{cmd:inc90-inc99}{col 43}(意味着 {cmd:inc90 inc91} ... {cmd:inc99})

{p 8 12 2}
    3.  您可以在列表的任何元素前指定一个 {it:{help data types:storage type}}。
	数值存储类型有
	{cmd:byte}、 
	{cmd:int}、 
	{cmd:long}、 
	{cmd:float} 和
	{cmd:double}。
	  字符串存储类型是 {cmd:str}{it:#}，其中 {it:#} 被替换为
	  1 到 2045（含）之间的整数，表示字符串的最大长度，或者 {cmd:strL}。例如，
	  您可以输入

		{cmd:double x}
		{cmd:str2 name int myvar double inc92}

{p 8 12 2}
    4.  您可以使用括号来收集组：

		{cmd:double(x myvar inc92) int(p1-p90)}

{p 12 12 2}
	括号围绕 {cmd:p1-p90} 是不必要的，但 
	它们澄清了含义。

{p 8 12 2}
    5.  当您未指定类型时，默认类型 -- 通常是
	{cmd:float} -- 被假设：

		{cmd:double x myvar inc92}{col 43}({cmd:myvar} 和 {cmd:inc92} 将是 {cmd:float})

{p 12 12 2}
	默认通常是 {cmd:float}，但如果您愿意，可以将其更改为
	{cmd:double}；请参见 {helpb set type}。

{pstd}
由于默认是 {cmd:float} 或 {cmd:double}，如果您想创建字符串变量，则必须指定
{cmd:str}{it:#}。一些命令了解 {cmd:str}（没有数字）并自行确定长度。
{cmd:generate} 命令甚至不需要指定 {cmd:str}；
它会创建一个 {cmd:str}{it:#} 变量，其中 {it:#} 是能够容纳结果的最小字符串。

{marker stub*}{...}
{pstd}
许多命令要求列出特定数量的新变量
同时也允许使用 {it:stub}{cmd:*} 符号指定新变量。
例如，如果您使用 {cmd:predict} 生成四个新变量，
您可以输入 {cmd:predict pred*} 来创建新变量 {cmd:pred1}、
{cmd:pred2}、{cmd:pred3} 和 {cmd:pred4}。


{marker examples}{...}
{title:示例}

    {hline}
{pstd}从键盘输入变量 {cmd:x} 的数据{p_end}
        {cmd:. input x}

                     x
          1. {cmd:1}
          2. {cmd:2}
          3. {cmd:end}

{pstd}输入变量 {cmd:y} 和 {cmd:z} 的数据并将其设为类型
{cmd:double}{p_end}
        {cmd:. input double (y z)}
        
              y           z
          1. {cmd:3 4}
          2. {cmd:5 6}

{pstd}输入变量 {cmd:s} 的数据并将其设为类型 {cmd:str2}{p_end}
        {cmd:. input str2 s}

                     s
          1. {cmd:ab}
          2. {cmd:cd}

{pstd}描述数据{p_end}
        {cmd:. describe}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse genxmpl2}{p_end}
{phang2}{cmd:. generate str9 lastname = word(name, 2)}{p_end}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse genxmpl2, clear}{p_end}

{pstd}与上述 {cmd:generate} 命令等效{p_end}
{phang2}{cmd:. generate str lastname = word(name, 2)}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse genxmpl2, clear}{p_end}

{pstd}与上述 {cmd:generate} 命令等效{p_end}
{phang2}{cmd:. generate lastname = word(name, 2)}{p_end}

    {hline}
{pstd}设置{p_end}
{phang2}{cmd:. webuse fullauto}{p_end}
{phang2}{cmd:. ologit rep77 i.foreign length mpg}{p_end}

{pstd}预测五个结果的概率，使用
{cmd:pred} 作为新生成变量的 {it:stub} 名称{p_end}
{phang2}{cmd:. predict pred*}{p_end}

{pstd}列出数据{p_end}
{phang2}{cmd:. list}{p_end}

    {hline}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <newvarlist.sthlp>}