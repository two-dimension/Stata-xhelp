{smcl}
{* *! version 1.4.5  21jun2019}{...}
{vieweralsosee "[R] Limits" "mansection R Limits"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] about" "help about_zh"}{...}
{vieweralsosee "[D] compress" "help compress_zh"}{...}
{vieweralsosee "[D] Data types" "help data_types_zh"}{...}
{vieweralsosee "[D] import" "help import_zh"}{...}
{vieweralsosee "[D] infile (fixed format)" "help infile2_zh"}{...}
{vieweralsosee "[D] infile (free format)" "help infile1_zh"}{...}
{vieweralsosee "[D] memory" "help memory_zh"}{...}
{vieweralsosee "[D] obs" "help obs_zh"}{...}
{viewerjumpto "最大大小限制" "limits_zh##size"}{...}
{viewerjumpto "注意事项" "limits_zh##notes"}{...}
{viewerjumpto "确定您运行的是哪个版本的 Stata" "limits_zh##about"}
{help limits:English Version}
{hline}{...}
{marker size}{...}
{title:最大大小限制}

                                                              {help statamp_zh:Stata/MP} 和
                                             {help stataic_zh:Stata/IC}         {help SpecialEdition:Stata/SE}
{hline}
   观测数量                      2,147,483,619  1,099,511,627,775 (MP) {help limits##note1:(1)}
                                                         2,147,483,619 (SE) {help limits##note1:(1)}

   变量数量                             2,048            120,000 (MP)
                                                                32,767 (SE)

   右侧变量数量                           798             65,532 (MP)
                                                                10,998 (SE)

   命令中的字符数                264,408          4,227,159
   命令选项数量                      256                256

   {it:{help numlist_zh}} 中的元素数量                 2,500              2,500

   连续变量的交互数量          64                 64
   因子变量的交互数量               8                  8

   命令中唯一的时间序列操作符数量                                100                100
   每个时间序列操作符的季节性子操作符数量                                   8                  8

   表达式中的二元操作符数量       800                800
   表达式中的数字字面量数量       300                300
   表达式中的字符串字面量数量        512                512
   字符串表达式中的字符串长度（字节）             2,000,000,000      2,000,000,000
   表达式中的求和函数数量            5                  5
   嵌套括号对的数量             249                249

   宏中字符数量 {help limits##note2:(2)}          264,392         15,480,200 (MP)
                                                             4,227,143 (SE)

   嵌套 do-files 数量                          64                 64

   程序行数                    3,500              3,500
   程序字节数                  135,600            135,600

   变量名长度（字符）        32                 32
   ado 命令名长度（字符）       32                 32
   全局宏名长度（字符）                              32                 32
   局部宏名长度（字符）     31                 31

   {helpb data types:str#} 变量长度（字节）          2,045              2,045
   {helpb data types:strL} 变量长度（字节）      2,000,000,000      2,000,000,000

   {help anova_zh}
       一个 {cmd:anova} 项中变量的数量           8                  8
       {cmd:repeated()} 选项中的项数量        4                  4

   {help char_zh}
       单个特征的长度（字节）                               67,784             67,784

   {help constraint_zh}
       约束数量                       1,999              1,999

   {help encode_zh} 和 {helpb decode}
       唯一值数量                    65,536             65,536

   {help _estimates_zh} {cmd:hold}
       存储的估计结果数量           300                300

   {help estimates_zh} {cmd:store}
       存储的估计结果数量           300                300

   {help exlogistic_zh} 和 {help expoisson_zh}
       最大内存规格               2gb                2gb
       {opt memory(#)}

   {help frames_zh:frames}
       框架数量                              100                100

   {help grmeanby_zh}
       {varlist} 中的唯一值数量           _N/2               _N/2

   {helpb graph twoway}
       图中的变量数量                 100                100
       选项的样式列表中的样式数量      20                 20

   {helpb import sas}
       变量数量                         2,048             32,766

   {helpb import spss}
       变量数量                         2,048             32,766

   {help impute_zh}
       {varlist} 中的变量数量                 31                 31

   {help infile_zh}
       无字典的记录长度        none               none
       使用字典的记录长度      524,275            524,275

   {help infix_zh}
       使用字典的记录长度      524,275            524,275

   {help label_zh}
       数据集标签长度（字符）      80                 80
       变量标签长度（字符）     80                 80
       值标签字符串长度（字节）                           32,000             32,000
       值标签名称长度（字符）                          32                 32
       一个值标签内的编码数量                       65,536             65,536

   {helpb label language}
       不同语言的数量                 100                100

   {help macros}
       嵌套宏数量                        20                 20

   {help manova_zh}
       单个 {cmd:manova} 项中的变量数量       8                  8

   {help matrix_zh}  {help limits##note3:(3)}
       单个矩阵的维度           800x800      65,534x65,534 (MP)
                                                         11,000x11,000 (SE)

   {help maximize_zh} 选项
       {cmd:iterate()} 的最大值                     16,000             16,000

   {help mprobit_zh}
       {depvar} 中的类别数量               30                 30

   {help net_zh}（另见 {help usersite_zh}）
       .pkg 文件中的描述行数量      100                100

   {help nlogit_zh} 和 {helpb nlogittree}
       模型中的级别                       8                  8

   {help notes_zh}
       单个注释的长度（字节）            67,784             67,784
       附加到 _dta 的注释数量            9,999              9,999
       附加到每个变量的注释数量                           9,999              9,999

   {it:{help numlist_zh}}
       数字列表中的元素数量      2,500              2,500

   {helpb _pctile}
       百分位数的数量                       4,096              4,096

   {help reg3_zh}, {help sureg_zh}, 和其他系统估计器
       方程数量                           800             65,534 (MP)
                                                                11,000 (SE)

   {cmd:set} {helpb adosize}
       ado 文件可消耗的内存           1000K              1000K

   {cmd:set} {help scrollbufsize_zh}
       结果窗口缓冲区的内存       2000K              2000K

   {help slogit_zh}
       {depvar} 中的类别数量               30                 30

   {help snapshot_zh}
       标签长度（字符）              80                 80
       保存的快照数量                   1,000              1,000

   {help stcox_zh}
       {cmd:strata()} 选项中的变量数量          5                  5

   {help stcurve_zh}
       在同一图上绘制的曲线数量     10                 10

   {help table_zh} 和 {help tabdisp_zh}
       by 变量数量                          4                  4
       边际数量，即行、列、超级列和
       by 组的总和                            3,000              3,000

   {help tabulate_zh}  
       单向表中的行数量             3,000             12,000
       双向表中的行和列数量     300x20           1,200x80

   {cmd:tabulate, summarize}（见 {helpb tabsum}）
       单元格数量（行 X 列）                 375                375

   {help teffects_zh}
	治疗数量                          20                 20

   {cmd:xt} 估计命令（例如，{help xtgee_zh},
       {help xtgls_zh}, {help xtpoisson_zh}, {help xtprobit_zh}, {help xtreg_zh}
       使用 {cmd:mle} 选项，以及 {help xtpcse_zh} 当
       不指定选项 {cmd:hetonly} 或选项
       {cmd:independent}）

       面板内的时间段数量           800             65,534 (MP)
                                                                11,000 (SE)
       被 {opt intpoints(#)} 接受的积分点数量         195                195
{hline}


{marker notes}{...}
{title:注意事项}

{marker note1}{...}
{p 4 8 2}(1)  对于 Stata/MP，最大观测数量为
          1,099,511,627,775，而
	  对于 Stata/SE，最大数量为 2,147,483,619。
          在实践中，两者都受到内存的限制。

{marker note2}{...}
{p 4 8 2}(2)  宏的内容最大长度在 Stata/IC 中是固定的，
          而在 Stata/SE 和 Stata/MP 中是可设置的。
          当前设置的最大长度记录在
          {cmd:c(macrolen)} 中；输入 {cmd:display c(macrolen)}。
          最大长度可以通过 {helpb set maxvar} 改变。
          如果您将 {cmd:maxvar}
          设置为更大的值，最大长度会增加；
          如果您将 {cmd:maxvar} 设置为较小的值，最大长度
          会减少。它们之间的关系是
          {it:maximum_length} = 129*{cmd:maxvar} + 200。

{marker note3}{...}
{p 4 8 2}(3)  在 Mata 中，矩阵仅受计算机内存大小的限制。


{marker about}{...}
{title:确定您运行的是哪个版本的 Stata}

    输入

	    {cmd:. about}

{p 4 4 2}
响应将是 Stata/MP、Stata/SE 或 Stata/IC。
还会显示其他信息，包括您的序列号。
请参阅 {help about_zh}。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <limits.sthlp>}