{smcl}
{* *! version 1.1.7  28aug2018}{...}
{vieweralsosee "[ME] me" "mansection ME me"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[ME] Glossary" "help me_glossary_zh"}{...}
{viewerjumpto "描述" "me_zh##description"}{...}
{viewerjumpto "混合效应线性回归" "me_zh##MElinear"}{...}
{viewerjumpto "混合效应广义线性回归" "me_zh##GLMM"}{...}
{viewerjumpto "混合效应截尾回归" "me_zh##MEcensored"}{...}
{viewerjumpto "混合效应二元回归" "me_zh##MEbinary"}{...}
{viewerjumpto "混合效应有序回归" "me_zh##MEordinal"}{...}
{viewerjumpto "混合效应计数数据回归" "me_zh##MEcount"}{...}
{viewerjumpto "混合效应多项回归" "me_zh##MEmulti"}{...}
{viewerjumpto "混合效应生存模型" "me_zh##MEsurvival"}{...}
{viewerjumpto "非线性混合效应回归" "me_zh##NLME"}{...}
{viewerjumpto "事后估计工具" "me_zh##MEpost"}{...}
{viewerjumpto "PDF文档链接" "me_zh##linkspdf"}
{help me:English Version}
{hline}{...}
{p2colset 1 12 14 2}{...}
{p2col:{bf:[ME] me} {hline 2}}混合效应命令介绍{p_end}
{p2col:}({mansection ME me:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:描述}

{pstd}
混合效应模型的特点是包含固定效应和随机效应。固定效应类似于标准回归系数，并直接进行估计。随机效应并不直接估计（尽管它们可以通过事后估计获得），而是根据其估计的方差和协方差进行总结。随机效应可以是随机截距或随机系数的形式，并且数据的分组结构可以由多个嵌套组的层次构成。因此，混合效应模型在文献中也被称为多层模型和分层模型。混合效应命令为响应的多种分布拟合混合效应模型，这些响应是条件于正态分布的随机效应。


{marker MElinear}{...}
    {title:混合效应线性回归}

{p 8 30 2}{help mixed_zh}{space 15}多层混合效应线性回归{p_end}


{marker GLMM}{...}
    {title:混合效应广义线性模型}

{p 8 30 2}{help meglm_zh}{space 15}多层混合效应广义线性模型{p_end}


{marker MEcensored}{...}
    {title:混合效应截尾回归}

{p 8 30 2}{help metobit_zh}{space 13}多层混合效应Tobit回归{p_end}
{p 8 30 2}{help meintreg_zh}{space 12}多层混合效应区间回归{p_end}


{marker MEbinary}{...}
    {title:混合效应二元回归}

{p 8 30 2}{help melogit_zh}{space 13}多层混合效应逻辑回归{p_end}
{p 8 30 2}{help meprobit_zh}{space 12}多层混合效应Probit回归{p_end}
{p 8 30 2}{help mecloglog_zh}{space 11}多层混合效应补充对数-对数回归{p_end}


{marker MEordinal}{...}
    {title:混合效应有序回归}

{p 8 30 2}{help meologit_zh}{space 12}多层混合效应有序逻辑回归{p_end}
{p 8 30 2}{help meoprobit_zh}{space 11}多层混合效应有序Probit回归{p_end}


{marker MEcount}{...}
    {title:混合效应计数数据回归}

{p 8 30 2}{help mepoisson_zh}{space 11}多层混合效应泊松回归{p_end}
{p 8 30 2}{help menbreg_zh}{space 13}多层混合效应负二项回归{p_end}


{marker MEmulti}{...}
    {title:混合效应多项回归}

{pmore}
虽然没有 {cmd:memlogit} 命令，但可以使用 {cmd:gsem} 拟合多层混合效应多项逻辑模型；参见 {findalias gsemtmlogit}。
{p_end}


{marker MEsurvival}{...}
    {title:混合效应生存模型}

{p 8 30 2}{help mestreg_zh}{space 13}多层混合效应参数生存模型{p_end}


{marker NLME}{...}
    {title:非线性混合效应回归}

{p 8 30 2}{help menl_zh}{space 16}非线性混合效应回归{p_end}


{marker MEpost}{...}
    {title:特定于混合效应命令的事后估计工具}

{p 8 30 2}{helpb estat df}{space 12}计算并显示固定效应的自由度{p_end}
{p 8 30 2}{helpb estat group}{space 9}总结嵌套组的组成{p_end}
{p 8 30 2}{helpb estat icc}{space 11}估计类内相关性{p_end}
{p 8 30 2}{helpb estat recovariance}{space 4}显示估计的随机效应协方差矩阵{p_end}
{p 8 30 2}{helpb me estat sd:estat sd}{space 12}将方差成分显示为标准差和相关性{p_end}
{p 8 30 2}{helpb me estat wcorrelation:estat wcorrelation}{space 2}显示组内相关性和标准差{p_end}


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection ME meQuickstart:快速入门}

        {mansection ME meRemarksandexamples:备注和示例}

{pstd}
以上部分不包含在此帮助文件中。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <me.sthlp>}