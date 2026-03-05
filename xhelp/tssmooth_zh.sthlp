{smcl}
{* *! version 1.1.6  19sep2018}{...}
{vieweralsosee "[TS] tssmooth" "mansection TS tssmooth"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[TS] arima" "help arima_zh"}{...}
{vieweralsosee "[R] smooth" "help smooth_zh"}{...}
{vieweralsosee "[TS] sspace" "help sspace_zh"}{...}
{vieweralsosee "[TS] tsfilter" "help tsfilter_zh"}{...}
{vieweralsosee "[TS] tsset" "help tsset_zh"}{...}
{viewerjumpto "Syntax" "tssmooth_zh##syntax"}{...}
{viewerjumpto "Description" "tssmooth_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "tssmooth_zh##linkspdf"}{...}
{viewerjumpto "Examples" "tssmooth_zh##examples"}
{help tssmooth:English Version}
{hline}{...}
{p2colset 1 18 20 2}{...}
{p2col:{bf:[TS] tssmooth} {hline 2}}平滑和预测单变量时间序列数据{p_end}
{p2col:}({mansection TS tssmooth:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 18 2}
{cmd:tssmooth} {it:smoother} {dtype} {newvar} {cmd:=} {it:{help exp_zh}}
   {ifin} [{cmd:,} {it:...}]

{synoptset 28 tabbed}{...}
{p2coldent :平滑器类别}{it:smoother}{p_end}
{synoptline}
{syntab:移动平均}
{synopt :使用均匀权重}{helpb tssmooth ma:ma}{p_end}
{synopt :使用指定权重}{helpb tssmooth ma:ma}{p_end}

{syntab:递归}
{synopt :指数}{helpb tssmooth exponential:exponential}{p_end}
{synopt :双指数}{helpb tssmooth dexponential:dexponential}{p_end}
{synopt :非季节性霍尔特-温特斯}{helpb tssmooth hwinters:hwinters}{p_end}
{synopt :季节性霍尔特-温特斯}{helpb tssmooth shwinters:shwinters}{p_end}

{p2coldent :非线性滤波器}{helpb tssmooth nl:nl}{p_end}
{synoptline}
{p2colreset}{...}


{marker description}{...}
{title:描述}

{pstd}
{cmd:tssmooth} 创建新变量 {newvar}，并通过将指定表达式（通常是变量名）传递给请求的平滑器来填充该变量。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection TS tssmoothRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker examples}{...}
{title:tssmooth ma 示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse sales1}{p_end}
{phang2}{cmd:. tsset}{p_end}

{pstd}使用两个滞后项、三个前项以及在滤波中包含当前观察值，创建 {cmd:sales} 的均匀加权移动平均{p_end}
{phang2}{cmd:. tssmooth ma sm1=sales, window(2 1 3)}


{title:tssmooth exponential 示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse sales1, clear}{p_end}

{pstd}对 {cmd:sales} 进行单指数平滑{p_end}
{phang2}{cmd:. tssmooth exponential double sm2a=sales}


{title:tssmooth dexponential 示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse sales2, clear}{p_end}

{pstd}对 {cmd:sales} 进行双指数平滑{p_end}
{phang2}{cmd:. tssmooth dexponential double sm2a=sales}


{title:tssmooth hwinters 示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse bsales, clear}{p_end}

{pstd}对 {cmd:sales} 进行霍尔特-温特斯非季节性平滑{p_end}
{phang2}{cmd:. tssmooth hwinters hw1=sales}


{title:tssmooth shwinters 示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse turksales, clear}{p_end}

{pstd}对 {cmd:sales} 进行霍尔特-温特斯季节性平滑{p_end}
{phang2}{cmd:. tssmooth shwinters shw1=sales}


{title:tssmooth nl 示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse sales2, clear}{p_end}

{pstd}对 {cmd:sales} 进行非线性平滑，使用跨度为5的中位数平滑器{p_end}
{phang2}{cmd:. tssmooth nl nl1=sales, smoother(5)}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <tssmooth.sthlp>}