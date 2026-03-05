{smcl}
{* *! version 1.2.0  22jun2018}{...}
{vieweralsosee undocumented "help undocumented"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] assert" "help assert_zh"}{...}
{vieweralsosee "[P] cscript" "help cscript_zh"}{...}
{vieweralsosee "[P] return" "help return_zh"}{...}
{vieweralsosee "[R] Stored results" "help stored_results_zh"}{...}
{viewerjumpto "Syntax" "mkassert_zh##syntax"}{...}
{viewerjumpto "Description" "mkassert_zh##description"}{...}
{viewerjumpto "Options" "mkassert_zh##options"}{...}
{viewerjumpto "Example" "mkassert_zh##example"}{...}
{viewerjumpto "Acknowledgment" "mkassert_zh##ack"}
{help mkassert:English Version}
{hline}{...}
{title:标题}

{p 4 22 2}
{hi:[P] mkassert} {hline 2} 为 Stata 对象生成断言


{marker syntax}{...}
{title:语法}

{p 8 24 2}
{cmd:mkassert} {cmdab:r:class}
    [{cmd:,}
     {cmdab:mf:mt:(}{it:fmt}{cmd:)}
     {cmdab:mt:ol:(}{it:{help mkassert##mtol:tol}}{cmd:)}
     {cmdab:sf:mt:(}{it:fmt}{cmd:)}
     {cmdab:st:ol:(}{it:{help mkassert##stol:tol}}{cmd:)}
     {cmdab:mw:rap:(}{it:#}{cmd:)}
     {cmdab:n:ame:(}{it:str}{cmd:)}
     {cmdab:nostripe:s}
     {cmdab:tmp:names}
     {bind:{cmdab:sav:ing:(}{it:filename} [{cmd:,} {cmd:append} | {cmd:replace}]{cmd:)}}]

{p 8 24 2}
{cmd:mkassert} {cmdab:e:class}
     [{cmd:,}
      {cmdab:mf:mt:(}{it:fmt}{cmd:)}
      {cmdab:mt:ol:(}{it:{help mkassert##mtol:tol}}{cmd:)}
      {cmdab:sf:mt:(}{it:fmt}{cmd:)}
      {cmdab:st:ol:(}{it:{help mkassert##stol:tol}}{cmd:)}
      {cmdab:mw:rap:(}{it:#}{cmd:)}
      {cmdab:n:ame:(}{it:str}{cmd:)}
      {cmdab:nostripe:s}
      {cmdab:tmp:names}
     {bind:{cmdab:sav:ing:(}{it:filename} [{cmd:,} {cmd:append} | {cmd:replace}]{cmd:)}}]

{p 8 24 2}
{cmd:mkassert} {cmdab:scl:ass}
     [{cmdab:n:ame:(}{it:str}{cmd:)}
     {bind:{cmdab:sav:ing:(}{it:filename} [{cmd:,} {cmd:append} | {cmd:replace}]{cmd:)}}]

{p 8 24 2}
{cmd:mkassert} {cmdab:m:atrix} {it:name-list}
     [{cmd:,}
      {cmdab:mf:mt:(}{it:fmt}{cmd:)}
      {cmdab:mt:ol:(}{it:{help mkassert##mtol:tol}}{cmd:)}
      {cmdab:mw:rap:(}{it:#}{cmd:)}
      {cmdab:n:ame:(}{it:str}{cmd:)}
      {cmdab:nostripe:s}
      {cmdab:tmp:names}
      {bind:{cmdab:sav:ing:(}{it:filename} [{cmd:,} {cmd:append} | {cmd:replace}]{cmd:)}}]

{p 8 24 2}
{cmd:mkassert} {cmdab:sca:lar} {it:name-list}
     [{cmd:,}
      {cmdab:sf:mt:(}{it:fmt}{cmd:)}
      {cmdab:st:ol:(}{it:{help mkassert##stol:tol}}{cmd:)}
      {cmdab:n:ame:(}{it:str}{cmd:)}
      {bind:{cmdab:sav:ing:(}{it:filename} [{cmd:,} {cmd:append} | {cmd:replace}]{cmd:)}}]

{p 8 24 2}
{cmd:mkassert} {cmdab:c:har}{space 3}[{varlist}]
     [{cmd:,}
      {cmd:dta}
      {cmdab:n:ame:(}{it:str}{cmd:)}
      {bind:{cmdab:sav:ing:(}{it:filename} [{cmd:,} {cmd:append} | {cmd:replace}]{cmd:)}}]

{p 8 24 2}
{cmd:mkassert} {cmdab:f:ormat} [{varlist}]
     [{cmd:,}
      {cmdab:n:ame:(}{it:str}{cmd:)}
      {bind:{cmdab:sav:ing:(}{it:filename} [{cmd:,} {cmd:append} | {cmd:replace}]{cmd:)}}]

{p 8 24 2}
{cmd:mkassert} {cmdab:o:bs}{space 4}[{varlist}] {ifin}
{cmd:,} {cmd:id(}{it:varlist}{cmd:)}
     [{cmdab:c:omputed:(}{it:spec}{cmd:)}
      {cmdab:n:ame:(}{it:str}{cmd:)}
      {bind:{cmdab:sav:ing:(}{it:filename} [{cmd:,} {cmd:append} | {cmd:replace}]{cmd:)}}]


{marker description}{...}
{title:描述}

{pstd}{cmd:mkassert} 为当前的 Stata “对象”生成一组 {help assert_zh} 语句：

{p 8 16 2}{cmd:eclass}{space 2}宏、标量和矩阵在 {cmd:e()}

{p 8 16 2}{cmd:rclass}{space 2}宏、标量和矩阵在 {cmd:r()}

{p 8 16 2}{cmd:sclass}{space 2}宏在 {cmd:s()}

{p 8 16 2}{cmd:matrix}{space 2}一个或多个矩阵

{p 8 16 2}{cmd:scalar}{space 2}一个或多个标量

{p 8 16 2}{cmd:char}{space 4}与 {it:varlist} 中的变量或数据集相关的特征（或两者）

{p 8 16 2}{cmd:format}{space 2}与 {it:varlist} 中的变量相关的格式

{p 8 16 2}{cmd:obs}{space 5}在（某些）观察中的变量值

{pstd}
为了提高可读性，输出使用了对齐和颜色等格式。 断言语句可以从结果窗口复制到认证脚本中（请参见 {manhelp cscript P}）。 或者，您可以让 {cmd:mkassert} 写入日志文件（请参见 {manhelp log R}）。

{pstd}
如果宏文本可以被解释为整数和实数，将生成测试数值相等的断言（对于实数，在转换为浮点数后）。 整数标量值使用严格相等进行测试，而不是某种公差。


{marker options}{...}
{title:选项}

{phang}
{cmd:mfmt(}{it:fmt}{cmd:)}
    用于将矩阵元素转换为 ASCII 的格式。 默认值为 %18.0g。

{phang}{marker mtol}
{cmd:mtol(}{{it:#}|{it:name}|{it:name} {it:#}}{cmd:)}
    指定矩阵的 {hi:mreldif} 测试的公差。 如果未指定 {it:#}，则默认值为 1e-8。 如果指定了 {it:name}，则定义一个局部宏 {it:name} 等于 {it:#}，所有块中的测试都参考 {it:name}。

{phang}
{cmd:sfmt(}{it:fmt}{cmd:)}
    用于将标量转换为 ASCII 的格式。 默认值为 {cmd:sfmt(%18.0g)}。

{phang}{marker stol}
{cmd:stol(}{{it:#}|{it:name}|{it:name} {it:#}}{cmd:)}
    指定标量的 {hi:reldif} 测试的公差。 语法与 {cmd:mtol()} 选项描述相同。

{phang}
{cmd:mwrap(}{it:#}{cmd:)}
    指定 {cmd:mkassert} 在为具有 {it:#} 或更多列的矩阵生成输入命令时执行元素换行。 默认值为 4。

{phang}
{cmd:name(}{it:str}{cmd:)}
    指定每个生成的 {cmd:assert} 语句附带一个注释引用 {it:str#}，并按顺序编号。

{phang}
{cmd:nostripes} 指定不在 {cmd:assert} 语句集中包含矩阵条纹。

{phang}
{cmd:tmpnames} 指定 {cmd:assert} 语句包含临时矩阵。 默认情况下，创建永久矩阵并在不再需要时丢弃。

{phang}
{cmd:saving(}{it:filename} [{cmd:,} {cmd:append} | {cmd:replace}]{cmd:)}
    打开一个仅文本文件，以包含 {cmd:mkassert} 输出以便包含在认证脚本中。

{phang}
{cmd:dta}
    指定应为与数据集 {cmd:_dta} 相关的特征写入认证语句。

{phang}
{cmd:id(}{it:varlist}{cmd:)}
    指定一个或多个变量来识别观察（形成一个键）。 这些变量用于将当前观察与认证期间的那些匹配。 {cmd:if} 和 {cmd:in} 子句在对 {cmd:id()} 变量进行排序后评估。

{phang}
{cmd:computed(}{it:spec}{cmd:)}
    指定“计算”的实值变量，必须进行 {hi:reldif} 测试，而不是相等测试。 规范 {it:spec} 是一个 varlist，可以选择性地嵌入数字，这些数字是用于所有后续变量的 {hi:reldif} 测试中的公差，直到被另一个数字覆盖。 默认公差为 1e-10。

{pmore}例如，{cmd:computed(1e-8 price weight 1e-7 trunk mpg)}
    指定 {cmd:price} 和 {cmd:weight} 使用公差 1e-8 进行 {hi:reldif} 测试，而 {cmd:trunk} 和 {cmd:mpg} 使用公差 1e-7 进行测试。


{marker example}{...}
{title:示例}

    {cmd:. sysuse auto}
    {txt}(1978 年汽车数据)

    {cmd:. summarize price}

    {txt}    变量 |     观察      均值   标准差       最小值        最大值
    {txt}-------------+-----------------------------------------------------
    {txt}       价格 |{res}      74    6165.257   2949.496       3291      15906{txt}

    {cmd:. return list}

    {txt:标量:}
                     {txt:r(N) =}{res:  74}
                 {txt:r(sum_w) =}{res:  74}
                  {txt:r(mean) =}{res:  6165.256756756757}
                   {txt:r(Var) =}{res:  8699525.974268789}
                    {txt:r(sd) =}{res:  2949.495884768919}
                   {txt:r(min) =}{res:  3291}
                   {txt:r(max) =}{res:  15906}
                   {txt:r(sum) =}{res:  456229}

    {cmd:. mkassert rclass}

    {txt}assert{space 9}r({res:N})     {col 25}== {res}74
    {txt}assert{space 9}r({res:sum_w}) {col 25}== {res}74
    {txt}assert reldif( r({res:mean})  {col 25} , {res}6165.256756756757{txt}{col 46}) < {res} 1e-8
    {txt}assert reldif( r({res:Var})   {col 25} , {res}8699525.974268789{txt}{col 46}) < {res} 1e-8
    {txt}assert reldif( r({res:sd})    {col 25} , {res}2949.495884768919{txt}{col 46}) < {res} 1e-8
    {txt}assert{space 9}r({res:min})   {col 25}== {res}3291
    {txt}assert{space 9}r({res:max})   {col 25}== {res}15906
    {txt}assert{space 9}r({res:sum})   {col 25}== {res}456229

{pstd}
{txt}如果您为 {cmd:summarize} 编写认证脚本，您将从 {cmd:mkassert rclass} 中复制命令行和相关输出到脚本中，并可能删除不重要的 {cmd:assert}。 当然，您可以修改容忍度，但请注意容忍度选项，以修改所有测试的容忍度，或通过 {cmd:mtol()} 和 {cmd:stol()} 选项中的命名常量“参数化”测试。


{marker ack}{...}
{title:致谢}

{pstd}
{cmd:mkassert} 的编写者是荷兰乌特勒支大学社会学系的 Jeroen Weesie。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mkassert.sthlp>}