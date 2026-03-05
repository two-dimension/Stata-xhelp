{smcl}
{* *! version 1.2.6  01nov2018}{...}
{vieweralsosee undocumented "help undocumented"}
{help prdocumented:English Version}
{hline}{...}
{title:标题}

{pstd}
{hi:以前文档中的命令}


{title:描述}

{pstd}
以前文档中的命令是指来自先前版本的 Stata 的命令，这些命令由于被更新、更好的命令所取代而不再被文档化。这些命令仍然可以使用，尽管有时仅在版本控制下可以工作。下面列出的命令的帮助文件仍然可用，以帮助理解旧的 do 文件和 ado 文件。

{col 74}最后
{col 5}命令{col 25}描述{col 71}版本
    {hline}
{col 5}{manhelp adjust R}{col 25}调整均值和比例的表{col 76}10
{col 5}{manhelp anova_10 R}{col 25}旧的 (在 Stata 11 之前) anova 命令{col 76}10
{col 5}{manhelp asclogit R}{col 25}特定于替代的条件 logit{col 76}15
          {col 27}(McFadden's choice) 模型
{col 5}{manhelp asmixlogit R}{col 25}特定于替代的混合 logit{col 76}15
          {col 27}回归
{col 5}{manhelp asmprobit R}{col 25}特定于替代的多项式 probit{col 76}15
          {col 27}回归
{col 5}{manhelp asroprobit R}{col 25}特定于替代的等级有序 probit{col 76}15
          {col 27}回归

{col 5}{manhelp blogit R}{col 25}分组数据的逻辑回归{col 76}13
{col 5}{manhelp bprobit R}{col 25}分组数据的 probit 回归{col 76}13

{col 5}{manhelp chelp R}{col 25}在结果窗口中显示系统帮助{col 76}12
{col 5}{manhelp ci_14_0 R}{col 25}旧的 (在 Stata 14.1 之前) ci 命令{col 74}14.0
{col 5}{manhelp cii_14_0 R}{col 25}旧的 (在 Stata 14.1 之前) cii 命令{col 74}14.0
{col 5}{manhelp clist D}{col 25}列出变量的值{col 76}11
{col 5}{manhelp cnreg R}{col 25}截断正态回归{col 76}10

{col 5}{manhelp dprobit R}{col 25}probit 回归，报告边际效应{col 76}10
{col 5}{manhelp dvech TS}{col 25}对角 vech 多元 GARCH 模型{col 76}11

{col 5}{manhelp fdasave D}{col 25}以 FDA (SAS XPORT) 格式保存并使用数据集{col 76}11
{col 5}{manhelp findit R}{col 25}在所有来源中搜索信息{col 76}12
{col 5}{manhelp fracpoly R}{col 25}分数多项式回归{col 76}12

{col 5}{manhelp glogit R}{col 25}加权最小二乘法逻辑回归{col 76}13
{col 29}用于分组数据
{col 5}{manhelp gprobit R}{col 25}加权最小二乘法 probit 回归{col 76}13
{col 29}用于分组数据
{col 5}{manhelp graph7 G-2}{col 25}旧的 (在 Stata 8 之前) 图形命令{col 77}7

{col 5}{manhelp hadimvo R}{col 25}识别多元离群值{col 77}7
{col 5}{manhelp haver TS}{col 25}从 Haver Analytics 数据库加载数据{col 76}12
{col 5}{manhelp hsearch R}{col 25}搜索帮助文件{col 76}12

{col 5}{manhelp icd9_13 D}{col 25}旧的 (在 Stata 14 之前) icd9 和 icd9p 命令{col 76}13
{col 5}{manhelp impute D}{col 25}填补缺失值；请改用 {helpb mi impute}{col 76}10
{col 5}{manhelp insheet D}{col 25}读取电子表格创建的文本数据{col 76}12

{col 5}{manhelp manova_10 R}{col 25}旧的 (在 Stata 11 之前) manova 命令{col 76}10
{col 5}{manhelp matrix_makeCns P:matrix dispCns}{col 25}约束估计；请改用 {help makecns_zh}{col 77}8
{col 5}{manhelp matrix_makeCns P:matrix makeCns}{col 25}约束估计；请改用 {help makecns_zh}{col 77}8
{col 5}{manhelp matsize R}{col 25}设置模型中的最大变量数{col 76}15
{col 5}{manhelp meqrlogit ME}{col 25}多层混合效应逻辑回归{col 76}15
                       {col 27}(QR 分解) 
{col 5}{manhelp meqrpoisson ME}{col 25}多层混合效应 Poisson 回归{col 76}15
                       {col 27}(QR 分解) 
{col 5}{manhelp merge_10 R}{col 25}旧的 (在 Stata 11 之前) merge 命令{col 76}10
{col 5}{manhelp mfx R}{col 25}获得估计后的边际效应或弹性{col 76}10
                       {col 27}估计
{col 5}{help ml_10_zh}{col 25}旧的 (Stata 10) {cmd:ml} 命令{col 76}10
{col 5}{help mleval_10_zh}
{col 5}{help mlmethod_10_zh}
{col 5}{help ml_11_zh}{col 25}原始 (Stata 11) {cmd:ml} 命令{col 76}11
{col 5}{help mleval_11_zh}
{col 5}{help mlmethod_11_zh}
{col 5}{manhelp moptimize_11 M-5}{col 25}原始 (Stata 11) {cmd:moptimize()}{col 76}11

{col 5}{manhelp news R}{col 25}报告 Stata 新闻{col 76}15

{col 5}{manhelp optimize_11 M-5}{col 25}原始 (Stata 11) {cmd:optimize()}{col 76}11
{col 5}{manhelp outsheet D}{col 25}写入电子表格风格的数据集{col 76}12

{col 5}{manhelp parse R}{col 25}解析程序参数{col 77}4
{col 5}{manhelp plot R}{col 25}使用打字机字符绘制散点图{col 77}7

{col 5}{manhelp _qreg R}{col 25}用于分位数的内部估计命令{col 76}12
                        {col 27}回归

{col 5}{manhelp rologit R}{col 25}等级有序逻辑回归{col 76}15


{col 5}{manhelp sampsi R}{col 25}均值和比例的样本大小和效能{col 76}12
{col 5}{manhelp set_charset R:set charset}{col 25}设置 Stata 使用的字符集{col 76}13
                        {col 27}ASCII 测试 (仅限 Mac)
{col 5}{manhelp stpower ST}{col 25}生存分析的样本大小、效能和效应大小{col 76}13
{col 27}分析
{col 5}{manhelp stpower_cox ST:stpower cox}{col 25}Cox 比例风险模型的样本大小、效能和效应大小{col 76}13
{col 27}模型
{col 5}{manhelp stpower_exponential ST:stpower}{col 25}指数检验的样本大小和效能{col 76}13
{col 10}{help stpower_exponential_zh:指数}
{col 5}{manhelp stpower_logrank ST:stpower}{col 25}对数秩检验的样本大小、效能和效应大小{col 76}13
{col 10}{help stpower_logrank_zh:对数秩}{col 27}检验

{col 5}{manhelp tobit_14 R}{col 25}Tobit 回归{col 76}14

{col 5}{manhelp vce R}{col 25}显示估计量的方差-协方差矩阵{col 77}8

{col 5}{manhelp xtmixed XT}{col 25}多层混合效应线性回归{col 76}12
{col 5}{manhelp xtmelogit XT}{col 25}多层混合效应逻辑回归{col 76}12
{col 5}{manhelp xtmepoisson XT}{col 25}多层混合效应 Poisson 回归{col 76}12
{col 5}{manhelp xmlsave D}{col 25}以 XML 格式导出或导入数据集{col 76}14

{col 5}{manhelp ztnb R}{col 25}零截断负二项回归{col 76}11
{col 5}{manhelp ztp R}{col 25}零截断 Poisson 回归{col 76}11
    {hline}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <prdocumented.sthlp>}