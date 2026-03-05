{smcl}
{* *! version 1.0.10  14may2018}{...}
{vieweralsosee "[SEM] ssd" "mansection SEM ssd"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[SEM] Intro 11" "mansection SEM Intro11"}{...}
{findalias assemssd}{...}
{findalias assemssdg}{...}
{findalias assemssdbuild}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] datasignature" "help datasignature_zh"}{...}
{viewerjumpto "Syntax" "ssd_zh##syntax"}{...}
{viewerjumpto "Description" "ssd_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "ssd_zh##linkspdf"}{...}
{viewerjumpto "Options" "ssd_zh##options"}{...}
{viewerjumpto "Remarks" "ssd_zh##remarks"}{...}
{viewerjumpto "Examples" "ssd_zh##examples"}{...}
{viewerjumpto "Stored results" "ssd_zh##results"}
{help ssd:English Version}
{hline}{...}
{p2colset 1 14 16 2}{...}
{p2col:{bf:[SEM] ssd} {hline 2}}生成摘要统计数据（仅限 SEM）{p_end}
{p2col:}({mansection SEM ssd:查看完整的 PDF 手动条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{pstd}
输入摘要统计数据（SSD）的命令为
        
{phang2}{cmd:ssd init} {varlist}{p_end}

{phang2}{cmd:ssd set} [{it:#}] {cmdab:obs:ervations} {it:#}{p_end}

{phang2}{cmd:ssd set} [{it:#}] {cmdab:mean:s} {it:{help ssd##vector:vector}} 
{p_end}

{phang2}{cmd:ssd set} [{it:#}] {{cmdab:var:iances} {c |} {cmd:sd}} 
{it:{help ssd##vector:vector}}{p_end}

{phang2}{cmd:ssd set} [{it:#}] {{cmdab:cov:ariances} {c |}
         {cmdab:cor:relations}} 
{it:{help ssd##matrix:matrix}}{p_end}


{phang2}{cmd:ssd} {cmdab:addgr:oup} {varname}{space 8}(添加第二组)
  {p_end}

{phang2}{cmd:ssd} {cmdab:addgr:oup}{space 16}(添加后续组){p_end}

{phang2}{cmd:ssd} {cmdab:unaddgr:oup} {it:#}{space 12}(移除最后一组)
{p_end}


{phang2}{cmd:ssd} {cmdab:stat:us} [{it:#}]{space 14}(查看状态){p_end}

       
{pstd}
从原始数据构建 SSD 的命令为

{phang2}{cmd:ssd} {cmd:build} {varlist} [{cmd:,} {opth group(varname)} 
{opt clear}]{p_end}


{pstd}
查看 SSD 内容的命令为

{phang2}{cmd:ssd} {cmdab:stat:us} [{it:#}]{p_end}

{phang2}{cmd:ssd} {cmdab:d:escribe}{p_end}

{phang2}{cmd:ssd} {cmdab:l:ist} [{it:#}]{p_end}


{pstd}
在紧急情况下（{cmd:ssd} 会告诉您何时），您可以使用

{phang2}{cmd:ssd} {cmd:repair}{p_end}


{pstd}
在上述内容中， 

{marker vector}{...}
{phang2}
一个 {it:vector} 可以是以下任意之一：

{phang3}
1.  用空格分隔的数字列表，例如， 

{p 20 22 2}{cmd:. ssd set means 1 2 3}{p_end}

{phang3}
2.  {cmd: (stata)} {it:matname}{break}，其中 {it:matname} 是 Stata 1 x {it:k} 或 {it:k} x 1 矩阵的名称，例如，

{p 20 22 2}{cmd:. ssd set variances (stata) mymeans}{p_end}

{phang3}
3.  {cmd:(mata)} {it:matname}{break}，其中 {it:matname} 是 Mata 1 x {it:k} 或 {it:k} x 1 矩阵的名称，例如，

{p 20 22 2}{cmd:. ssd set sd (mata) mymeans}{p_end}


{marker matrix}{...}
{phang2}
一个 {it:matrix} 可以是以下任意之一：

{phang3}
1.  用空格分隔的数字列表对应于矩阵的行，行之间用反斜杠（{cmd:\}）分隔。 数字可以是矩阵的下三角和对角线，或者对角线和上三角，例如，

{p 20 22 2}{cmd:. ssd set correlations 1 \ .2 1 \ .3 .5 1}{p_end}

{p 16 16 2}
或 
             
{p 20 22 2}{cmd:. ssd set correlations 1 .2 .3 \ 1 .5 \ 1}{p_end}

{phang3}
2.  {cmd:(ltd)} {it:# #} ...{break}，也就是说，一个用空格分隔的数字列表对应于矩阵的下三角和对角线，行之间没有反斜杠，例如，

{p 20 22 2}{cmd:. ssd set correlations (ltd) 1  .2 1  .3 .5 1}{p_end}

{phang3}
3.  {cmd:(dut)} {it:# #} ...{break}，也就是说，一个用空格分隔的数字列表对应于矩阵的对角线和上三角，行之间没有反斜杠，例如，

{p 20 22 2}{cmd:. ssd set correlations (dut) 1 .2 .3   1 .5   1}{p_end}

{phang3}
4.  {cmd:(stata)} {it:matname}{break}，其中 {it:matname} 是 Stata {it:k} x {it:k} 对称矩阵的名称，例如，

{p 20 22 2}{cmd:. ssd set correlations (stata) mymat}{p_end}

{phang3}
5.  {cmd:(mata)} {it:matname}{break}，其中 {it:matname} 是 Mata {it:k} x {it:k} 对称矩阵的名称，例如，

{p 20 22 2}{cmd:. ssd set correlations (mata) mymat}{p_end}


{marker description}{...}
{title:描述}

{pstd}
{cmd:ssd} 允许您输入 SSD 以适配 SEM，并允许您从原始数据创建 SSD 以发布或发送给他人（从而保留参与者的机密性）。 通过 {cmd:ssd} 创建的数据可与 {cmd:sem} 一起使用，但不可与 {cmd:gsem} 一起使用。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection SEM ssdRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{opth group(varname)} 用于 {cmd:ssd build}。 它指定为 {it:varname} 的每个值生成单独的摘要统计数据组。

{phang}
{cmd:clear} 用于 {cmd:ssd build}。 它指定可以用 SSD 替换内存中的数据，即使自上次更改以来原始数据集未被保存。


{marker remarks}{...}
{title:备注}

{pstd}    
请参见 

{p2colset 8 28 30 2}{...}
{p2col:{manlink SEM Intro 11}}使用摘要统计数据拟合模型（仅限 SEM）{p_end}

{pstd}    
以获取介绍，并请参见 

{p2colset 8 28 30 2}{...}
{p2col:{findalias semssd}}从已发布的协方差创建数据集{p_end}
{p2col:{findalias semssdg}}创建多个组摘要统计数据{p_end}
{p2col:{findalias semssdbuild}}从原始数据创建摘要统计数据{p_end}

{pstd}    
摘要统计数据集不同于常规的原始 Stata 数据集。 请务必不要使用标准 Stata 数据操作命令与内存中的摘要统计数据。 相关命令包括 

{phang2}{help generate_zh}{p_end}
{phang2}{helpb replace}{p_end}
{phang2}{help merge_zh}{p_end}
{phang2}{help append_zh}{p_end}
{phang2}{help drop_zh}{p_end}
{phang2}{helpb set obs}{p_end}

{pstd}    
仅仅提到几个。 不过，您可以使用 {help rename_zh} 更改变量的名称。

{pstd}    
其他数据操作命令可能会损坏您的摘要统计数据集。 如果您犯了错误并使用了其中一个命令，请不要尝试自行修复数据。 请让 {cmd:ssd} 通过输入

{phang2}{cmd:. ssd repair}{p_end}

{pstd}    
来修复您的数据。

{pstd}    
只要没有删除变量或观测值，{cmd:ssd} 通常会成功。

{pstd}    
每次您使用 {cmd:ssd}，即使是描述或列出数据这样的小事，{cmd:ssd} 也会验证数据没有损坏。 如果 {cmd:ssd} 发现数据损坏，它会建议您输入 {cmd:ssd repair}。

{pstd}    
在关键应用中，我们还建议您使用 {cmd:datasignature set} 命令对摘要统计数据集进行数字签名。 
然后在任何未来的时间，您都可以通过 {cmd:datasignature confirm} 命令验证数据是否仍然完好无损。 请参见 
{help datasignature_zh: [D] datasignature} 以及
{it:{mansection SEM ssdRemarksandexamples:备注和示例}} 在
{manlink SEM ssd} 中。


{marker examples}{...}
{title:示例}


{title:示例：从已发布的协方差创建数据集}

{pstd}在此示例中，我们将从以下协方差创建一个包含 150 个观测值的数据集：{p_end}

        {hline 10}{c TT}{hline 50}
        情感 {c |} 1         2         3         4         5
        {hline 10}{c +}{hline 50}
            1     {c |} 2038.035 
            2     {c |} 1631.766  1932.163 
            3     {c |} 1393.567  1336.871  1313.809 
            4     {c |} 1657.299  1647.164  1273.261  2034.216 
            5     {c |} 1721.830  1688.292  1498.401  1677.767  2061.875 
        {hline 10}{c BT}{hline 50}

{pstd}设置{p_end}
{phang2}{cmd:. clear all}{p_end}

{pstd}初始化摘要统计数据{p_end}
{phang2}{cmd:. ssd init a1 a2 a3 a4 a5}{p_end}

{pstd}设置观测值数量{p_end}
{phang2}{cmd:. ssd set observations 150}{p_end}

{pstd}设置协方差值{p_end}
{phang2}{cmd:. ssd set covariances}{break}
	{cmd: 2038.035 \}{break}
	{cmd: 1631.766 1932.163 \}{break}
	{cmd: 1393.567 1336.871 1313.809 \}{break}
	{cmd: 1657.299 1647.164 1273.261 2034.216 \}{break}
	{cmd: 1721.830 1688.292 1498.401 1677.767 2061.875}{p_end}

{pstd}描述摘要统计数据{p_end}
{phang2}{cmd:. ssd describe}{break}

{pstd}列出摘要统计数据{p_end}
{phang2}{cmd:. ssd list}{break}

{pstd}保存摘要统计数据{p_end}
{phang2}{cmd:. save ssd_data}{break}


{title:示例：创建多个组摘要统计数据}

{pstd}在此示例中，我们将创建一个包含两个组，且每组有 100 个观测值的数据集，来自以下相关性、标准差和均值：{p_end}

{phang}相关性{p_end}

        {hline 8}{c TT}{hline 30}
        组 1 {c |}  x1     x2    x3    x4    
        {hline 8}{c +}{hline 30}
           x1   {c |}  1.0 
           x2   {c |}  0.50   1.0
           x3   {c |}  0.59   0.46  1.0
           x4   {c |}  0.58   0.43  0.66  1.0
        {hline 8}{c BT}{hline 30}
        
	{hline 8}{c TT}{hline 30}
        组 2 {c |}  x1     x2    x3    x4    
        {hline 8}{c +}{hline 30}
           x1   {c |}  1.0 
           x2   {c |}  0.31   1.0
           x3   {c |}  0.52   0.45  1.0
           x4   {c |}  0.54   0.46  0.70  1.0
        {hline 8}{c BT}{hline 30}

{phang}均值（标准差）{p_end}
        
	{hline 8}{c TT}{hline 30}
        组   {c |}    x1     x2     x3     x4    
        {hline 8}{c +}{hline 30}
           1    {c |}   8.34   8.34   8.37   8.40 
                {c |}  (1.90) (1.75) (2.06) (1.88)
           2    {c |}   8.20   8.23   8.17   8.56 
                {c |}  (1.84) (1.94) (2.07) (1.88)
        {hline 8}{c BT}{hline 30}
	
{pstd}设置{p_end}
{phang2}{cmd:. clear all}{p_end}
        
{pstd}为第一组初始化摘要统计数据{p_end}
{phang2}{cmd:. ssd init x1 x2 x3 x4}{p_end}

{pstd}设置观测值数量{p_end}
{phang2}{cmd:. ssd set observations 100}{p_end}

{pstd}设置第一组的均值{p_end}
{phang2}{cmd:. ssd set means 8.34 8.34 8.37 8.40}{p_end}

{pstd}设置第一组的标准差{p_end}
{phang2}{cmd:. ssd set sd 1.90 1.75 2.06 1.88}{p_end}

{pstd}设置第一组的相关性{p_end}
{phang2}{cmd:. ssd set correlations}{break}
	{cmd: 1.0 \ .50 1.0 \ .59 .46 1.0 \ .58 .43 .66 1.0}{p_end}

{pstd}指定还有其他组{p_end}
{phang2}{cmd:. ssd addgroup group}{p_end}

{pstd}重复上述步骤为第二组{p_end}
{phang2}{cmd:. ssd set observations 100}{p_end}
{phang2}{cmd:. ssd set means 8.20 8.23 8.17 8.56}{p_end}
{phang2}{cmd:. ssd set sd 1.84 1.94 2.07 1.88}{p_end}
{phang2}{cmd:. ssd set correlations}{break}
	{cmd: 1.0 \ .31 1.0 \ .52 .45 1.0 \ .54 .46 .70 1.0}{p_end}

{pstd}描述摘要统计数据{p_end}
{phang2}{cmd:. ssd describe}{break}

{pstd}保存摘要统计数据{p_end}
{phang2}{cmd:. save ssd_group}{break}


{title:示例：从原始数据创建摘要统计数据}

{pstd}在此示例中，我们将从系统 auto 数据集创建摘要统计数据。{p_end}

{pstd}设置{p_end}
{phang2}{cmd:. sysuse auto, clear}{p_end}

{pstd}使用指定变量创建摘要统计数据集{p_end}
{phang2}{cmd:. ssd build price mpg turn displacement foreign}{p_end}

{pstd}为当前数据集中的所有变量创建摘要统计数据集{p_end}
{phang2}{cmd:. sysuse auto, clear}{p_end}
{phang2}{cmd:. drop make}{p_end}
{phang2}{cmd:. ssd build _all, clear}{p_end}

{pstd}指定一个组变量{p_end}
{phang2}{cmd:. sysuse auto, clear}{p_end}
{phang2}{cmd:. drop make}{p_end}
{phang2}{cmd:. ssd build _all, group(foreign) clear}{p_end}

{pstd}描述摘要统计数据{p_end}
{phang2}{cmd:. ssd describe}{p_end}

{pstd}保存摘要统计数据{p_end}
{phang2}{cmd:. save ssd_auto}{p_end}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:ssd describe} 将以下内容存储在 {cmd:r()} 中：

{synoptset 26 tabbed}{...}
{p2col 5 18 22 2: 标量}{p_end}
{synopt:{cmd:r(N)}}观测值数量（按组统计总数）{p_end}
{synopt:{cmd:r(k)}}变量数量（不包括组变量）{p_end}
{synopt:{cmd:r(G)}}组数量 {p_end}
{synopt:{cmd:r(complete)}}{cmd:1} 如果完整，{cmd:0} 否则{p_end}
{synopt:{cmd:r(complete_means)}}{cmd:1} 如果均值完整，{cmd:0} 否则{p_end}
{synopt:{cmd:r(complete_covariances)}}{cmd:1} 如果协方差完整，{cmd:0} 否则{p_end}

{synoptset 26 tabbed}{...}
{p2col 5 18 22 2: 宏}{p_end}
{synopt:{cmd:r(v}{it:#}{cmd:)}}变量名称（不包括组变量）{p_end}
{synopt:{cmd:r(groupvar)}}组变量名称（如果存在）{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <ssd.sthlp>}