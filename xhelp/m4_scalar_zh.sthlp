{smcl}
{* *! version 1.3.0  14jun2018}{...}
{vieweralsosee "[M-4] Scalar" "mansection M-4 Scalar"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] Intro" "help m4_intro_zh"}{...}
{viewerjumpto "Contents" "m4_scalar_zh##contents"}{...}
{viewerjumpto "Description" "m4_scalar_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "m4_scalar_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "m4_scalar_zh##remarks"}
{help m4_scalar:English Version}
{hline}{...}
{p2colset 1 17 19 2}{...}
{p2col:{bf:[M-4] Scalar} {hline 2}}标量数学函数
{p_end}
{p2col:}({mansection M-4 Scalar:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker contents}{...}
{title:目录}

{col 5}   [M-5]
{col 5}手册条目{col 22}函数{col 39}目的
{col 5}{hline}

{col 5}   {c TLC}{hline 9}{c TRC}
{col 5}{hline 3}{c RT}{it: 复数 }{c LT}{hline}
{col 5}   {c BLC}{hline 9}{c BRC}

{col 7}{bf:{help mf_re_zh:Re()}}{...}
{col 22}{cmd:Re()}{...}
{col 39}实部
{col 22}{cmd:Im()}{...}
{col 39}虚部

{col 7}{bf:{help mf_c_zh:C()}}{...}
{col 22}{cmd:C()}{...}
{col 39}构造复数

{col 5}   {c TLC}{hline 14}{c TRC}
{col 5}{hline 3}{c RT}{it: 符号相关 }{c LT}{hline}
{col 5}   {c BLC}{hline 14}{c BRC}

{col 7}{bf:{help mf_abs_zh:abs()}}{...}
{col 22}{cmd:abs()}{...}
{col 39}绝对值（如果是复数则为长度）

{col 7}{bf:{help mf_sign_zh:sign()}}{...}
{col 22}{cmd:sign()}{...}
{col 39}符号函数
{col 22}{cmd:quadrant()}{...}
{col 39}值的象限

{col 7}{bf:{help mf_dsign_zh:dsign()}}{...}
{col 22}{cmd:dsign()}{...}
{col 39}类似FORTRAN的DSIGN函数

{col 7}{bf:{help mf_conj_zh:conj()}}{...}
{col 22}{cmd:conj()}{...}
{col 39}复共轭

{col 5}   {c TLC}{hline 30}{c TRC}
{col 5}{hline 3}{c RT}{it: 超越函数与平方根 }{c LT}{hline}
{col 5}   {c BLC}{hline 30}{c BRC}

{col 7}{bf:{help mf_exp_zh:exp()}}{...}
{col 22}{cmd:exp()}{...}
{col 39}指数运算
{col 22}{cmd:ln()}, {cmd:log()}{...}
{col 39}自然对数
{col 22}{cmd:log10()}{...}
{col 39}以10为底的对数
{col 22}{cmd:expm1()}{...}
{col 39}{cmd:exp()}-1
{col 22}{cmd:ln1p()}, {cmd:log1p()}{...}
{col 39}自然对数（1+{it:x}）
{col 22}{cmd:ln1m()}, {cmd:log1m()}{...}
{col 39}自然对数（1-{it:x}）

{col 7}{bf:{help mf_sqrt_zh:sqrt()}}{...}
{col 22}{cmd:sqrt()}{...}
{col 39}平方根

{col 7}{bf:{help mf_sin_zh:sin()}}{...}
{col 22}{cmd:sin()}{...}
{col 39}正弦
{col 22}{cmd:cos()}{...}
{col 39}余弦
{col 22}{cmd:tan()}{...}
{col 39}正切
{col 22}{cmd:asin()}{...}
{col 39}反正弦
{col 22}{cmd:acos()}{...}
{col 39}反余弦
{col 22}{cmd:atan()}{...}
{col 39}反正切
{col 22}{cmd:arg()}{...}
{col 39}复数的反正切
{col 22}{cmd:atan2()}{...}
{col 39}双参数反正切
{col 22}{cmd:sinh()}{...}
{col 39}双曲正弦
{col 22}{cmd:cosh()}{...}
{col 39}双曲余弦
{col 22}{cmd:tanh()}{...}
{col 39}双曲正切
{col 22}{cmd:asinh()}{...}
{col 39}反双曲正弦
{col 22}{cmd:acosh()}{...}
{col 39}反双曲余弦
{col 22}{cmd:atanh()}{...}
{col 39}反双曲正切
{col 22}{cmd:pi()}{...}
{col 39}{it:pi}的值

{col 5}   {c TLC}{hline 19}{c TRC}
{col 5}{hline 3}{c RT}{it: 阶乘与伽玛 }{c LT}{hline}
{col 5}   {c BLC}{hline 19}{c BRC}

{col 7}{bf:{help mf_factorial_zh:factorial()}}{...}
{col 22}{cmd:factorial()}{...}
{col 39}阶乘
{col 22}{cmd:lnfactorial()}{...}
{col 39}阶乘的自然对数
{col 22}{cmd:gamma()}{...}
{col 39}伽玛函数
{col 22}{cmd:lngamma()}{...}
{col 39}伽玛函数的自然对数
{col 22}{cmd:digamma()}{...}
{col 39}伽玛函数自然对数的导数
{col 22}{cmd:trigamma()}{...}
{col 39}伽玛函数自然对数的二阶导数

{col 5}   {c TLC}{hline 28}{c TRC}
{col 5}{hline 3}{c RT}{it: 模数与整数四舍五入 }{c LT}{hline}
{col 5}   {c BLC}{hline 28}{c BRC}

{col 7}{bf:{help mf_mod_zh:mod()}}{...}
{col 22}{cmd:mod()}{...}
{col 39}模数

{col 7}{bf:{help mf_trunc_zh:trunc()}}{...}
{col 22}{cmd:trunc()}{...}
{col 39}截断为整数
{col 22}{cmd:floor()}{...}
{col 39}向下舍入到整数 
{col 22}{cmd:ceil()}{...}
{col 39}向上舍入到整数 
{col 22}{cmd:round()}{...}
{col 39}四舍五入到最接近的整数或倍数

{col 5}   {c TLC}{hline 7}{c TRC}
{col 5}{hline 3}{c RT}{it: 日期 }{c LT}{hline}
{col 5}   {c BLC}{hline 7}{c BRC}

{col 7}{bf:{help mf_date_zh:date()}}{...}
{col 22}{cmd:clock()}{...}
{col 39}{cmd:%tc} 字符串
{col 22}{cmd:mdyhms()}{...}
{col 39}{cmd:%tc} 月、日、年、时、分和秒
{col 22}{cmd:dhms()}{...}
{col 39}{cmd:%tc} 的 {cmd:%td}、小时、分钟和秒
{col 22}{cmd:hms()}{...}
{col 39}{cmd:%tc} 的小时、分钟和秒
{col 22}{cmd:hh()}{...}
{col 39}{cmd:%tc} 的小时
{col 22}{cmd:mm()}{...}
{col 39}{cmd:%tc} 的分钟
{col 22}{cmd:ss()}{...}
{col 39}{cmd:%tc} 的秒
{col 22}{cmd:dofc()}{...}
{col 39}{cmd:%td} 的 {cmd:%tc}

{col 22}{cmd:Cofc()}{...}
{col 39}{cmd:%tC} 的 {cmd:%tc}
{col 22}{cmd:Clock()}{...}
{col 39}{cmd:%tC} 字符串
{col 22}{cmd:Cmdyhms()}{...}
{col 39}{cmd:%tC} 月、日、年、时、分和秒
{col 22}{cmd:Cdhms()}{...}
{col 39}{cmd:%tC} 的 {cmd:%td}、小时、分钟和秒
{col 22}{cmd:Chms()}{...}
{col 39}{cmd:%tC} 的小时、分钟和秒
{col 22}{cmd:hhC()}{...}
{col 39}{cmd:%tC} 的小时
{col 22}{cmd:mmC()}{...}
{col 39}{cmd:%tC} 的分钟
{col 22}{cmd:ssC()}{...}
{col 39}{cmd:%tC} 的秒
{col 22}{cmd:dofC()}{...}
{col 39}{cmd:%td} 的 {cmd:%tC}

{col 22}{cmd:date()}{...}
{col 39}{cmd:%td} 字符串
{col 22}{cmd:mdy()}{...}
{col 39}{cmd:%td} 月、日和年
{col 22}{cmd:yw()}{...}
{col 39}{cmd:%tw} 年和周
{col 22}{cmd:ym()}{...}
{col 39}{cmd:%tm} 年和月
{col 22}{cmd:yq()}{...}
{col 39}{cmd:%tq} 年和季度
{col 22}{cmd:yh()}{...}
{col 39}{cmd:%th} 年和半年
{col 22}{cmd:cofd()}{...}
{col 39}{cmd:%tc} 的 {cmd:%td}
{col 22}{cmd:Cofd()}{...}
{col 39}{cmd:%tC} 的 {cmd:%td}

{col 22}{cmd:dofb()}{...}
{col 39}{cmd:%td} 的 {cmd:%tb}
{col 22}{cmd:bofd()}{...}
{col 39}{cmd:%tb} 的 {cmd:%td}

{col 22}{cmd:month()}{...}
{col 39}{cmd:%td} 的月份
{col 22}{cmd:day()}{...}
{col 39}{cmd:%td} 的日
{col 22}{cmd:year()}{...}
{col 39}{cmd:%td} 的年
{col 22}{cmd:dow()}{...}
{col 39}{cmd:%td} 的周几
{col 22}{cmd:week()}{...}
{col 39}{cmd:%td} 的周
{col 22}{cmd:quarter()}{...}
{col 39}{cmd:%td} 的季度
{col 22}{cmd:halfyear()}{...}
{col 39}{cmd:%td} 的半年
{col 22}{cmd:doy()}{...}
{col 39}{cmd:%td} 的年中的日

{col 22}{cmd:yearly()}{...}
{col 39}{cmd:%ty} 字符串
{col 22}{cmd:yofd()}{...}
{col 39}{cmd:%ty} 的 {cmd:%td}
{col 22}{cmd:dofy()}{...}
{col 39}{cmd:%td} 的 {cmd:%ty}

{col 22}{cmd:halfyearly()}{...}
{col 39}{cmd:%th} 字符串
{col 22}{cmd:hofd()}{...}
{col 39}{cmd:%th} 的 {cmd:%td}
{col 22}{cmd:dofh()}{...}
{col 39}{cmd:%td} 的 {cmd:%th}

{col 22}{cmd:quarterly()}{...}
{col 39}{cmd:%tq} 字符串
{col 22}{cmd:qofd()}{...}
{col 39}{cmd:%tq} 的 {cmd:%td}
{col 22}{cmd:dofq()}{...}
{col 39}{cmd:%td} 的 {cmd:%tq}

{col 22}{cmd:monthly()}{...}
{col 39}{cmd:%tm} 字符串
{col 22}{cmd:mofd()}{...}
{col 39}{cmd:%tm} 的 {cmd:%td}
{col 22}{cmd:dofm()}{...}
{col 39}{cmd:%td} 的 {cmd:%tm}

{col 22}{cmd:weekly()}{...}
{col 39}{cmd:%tw} 字符串
{col 22}{cmd:wofd()}{...}
{col 39}{cmd:%tw} 的 {cmd:%td}
{col 22}{cmd:dofw()}{...}
{col 39}{cmd:%td} 的 {cmd:%tw}

{col 22}{cmd:hours()}{...}
{col 39}毫秒中的小时
{col 22}{cmd:minutes()}{...}
{col 39}毫秒中的分钟
{col 22}{cmd:seconds()}{...}
{col 39}毫秒中的秒
{col 22}{cmd:msofhours()}{...}
{col 39}小时的毫秒数
{col 22}{cmd:msofminutes()}{...}
{col 39}分钟的毫秒数
{col 22}{cmd:msofseconds()}{...}
{col 39}秒的毫秒数

{col 5}{hline}


{marker description}{...}
{title:描述}

{p 4 4 2}
除了少数例外，以上函数被大多数人认为是标量函数，尽管实际上所有函数将在矩阵中逐元素工作。


{marker linkspdf}{...}
{title:链接到PDF文档}

        {mansection M-4 ScalarRemarksandexamples:备注和示例}

{pstd}
以上部分未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
有关其他数学函数，请参见 

{col 8}{...}
{bf:{help m4_matrix_zh:[M-4] 矩阵}}{...}
{col 30}矩阵数学函数

{col 8}{...}
{bf:{help m4_mathematical_zh:[M-4] 数学}}{...}
{col 30}重要数学函数

{col 8}{...}
{bf:{help m4_statistical_zh:[M-4] 统计}}{...}
{col 30}统计函数

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <m4_scalar.sthlp>}