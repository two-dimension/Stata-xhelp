{smcl}
{* *! version 1.1.24  20sep2018}{...}
{vieweralsosee "[TS] 时间序列" "mansection TS Timeseries"}{...}
{viewerjumpto "描述" "time_zh##description"}{...}
{viewerjumpto "PDF文档链接" "time_zh##linkspdf"}{...}
{viewerjumpto "数据管理工具和时间序列操作符" "time_zh##data"}{...}
{viewerjumpto "单变量时间序列" "time_zh##univariate"}{...}
{viewerjumpto "多变量时间序列" "time_zh##multivariate"}{...}
{viewerjumpto "预测模型" "time_zh##forecasting"}
{help time:English Version}
{hline}{...}
{p2colset 1 21 23 2}{...}
{p2col:{bf:[TS] 时间序列} {hline 2}}时间序列命令简介{p_end}
{p2col:}({mansection TS Timeseries:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{pstd}
（注意：如果您正在寻找有关时间和日期变量的信息，请参见 {manhelp Datetime D}。）
{p_end}


{marker description}{...}
{title:描述}

{pstd}
某些 Stata 命令专门用于执行时间序列分析。此条目提供这些命令的索引。

{pstd}
许多其他 Stata 命令允许在表达式和变量列表中使用时间序列操作符（例如，{help regress_zh}, {help summarize_zh}, {help graph_zh}, {help list_zh}, ...）。

{pstd}
有关时间序列操作符和变量列表的帮助，请参见 {help tsvarlist_zh}。

{pstd}
在使用时间序列分析命令或时间序列操作符之前，您必须声明您的数据为时间序列，并指明时间变量。这可以使用 {cmd:tsset} 命令完成；请参见 {manhelp tsset TS}。

{pstd}
如果您对分析横截面时间序列（面板）数据集感兴趣，请参见 {manhelp xt XT}。


{marker data}{...}
    {title:数据管理工具和时间序列操作符}

{p2colset 9 37 39 2}{...}
{p2col :{help tsset_zh}}声明数据为时间序列数据{p_end}
{p2col :{help tsfill_zh}}填补时间变量中的缺口{p_end}
{p2col :{help tsappend_zh}}向时间序列数据集中添加观测值{p_end}
{p2col :{help tsreport_zh}}报告数据集或估计样本的时间序列方面{p_end}
{p2col :{help tsrevar_zh}}时间序列操作符编程命令{p_end}
{p2col :{help rolling_zh}}滚动窗口和递归估计{p_end}
{p2col :{helpb datetime business calendars}}用户自定义业务日历{p_end}
{p2col :{helpb import fred}}从联邦储备经济数据导入数据{p_end}


{marker univariate}{...}
    {title:单变量时间序列}

      {bf:估计量}

{p2col :{help arfima_zh}}自回归分数积分滑动平均模型{p_end}
{p2col :{helpb arfima postestimation}}arfima的后估计工具{p_end}
{p2col :{help arima_zh}}ARIMA、ARMAX 和其他动态回归模型{p_end}
{p2col :{helpb arima postestimation}}arima的后估计工具{p_end}
{p2col :{help arch_zh}}自回归条件异方差（ARCH）估计量家族{p_end}
{p2col :{helpb arch postestimation}}arch的后估计工具{p_end}
{p2col :{help mswitch_zh}}马尔可夫切换回归模型{p_end}
{p2col :{helpb mswitch postestimation}}mswitch的后估计工具{p_end}
{p2col :{help newey_zh}}带有 Newey-West 标准误的回归{p_end}
{p2col :{helpb newey postestimation}}newey的后估计工具{p_end}
{p2col :{help prais_zh}}Prais-Winsten 和 Cochrane-Orcutt 回归{p_end}
{p2col :{helpb prais postestimation}}prais的后估计工具{p_end}
{p2col :{help ucm_zh}}未观察的成分模型{p_end}
{p2col :{helpb ucm postestimation}}ucm的后估计工具{p_end}
{p2col :{help threshold_zh}}阈值回归{p_end}
{p2col :{helpb threshold postestimation}}threshold的后估计工具{p_end}


      {bf:时间序列平滑器和滤波器}

{p2col :{helpb tsfilter bk}}Baxter-King 时间序列滤波器{p_end}
{p2col :{helpb tsfilter bw}}Butterworth 时间序列滤波器{p_end}
{p2col :{helpb tsfilter cf}}Christiano-Fitzgerald 时间序列滤波器{p_end}
{p2col :{helpb tsfilter hp}}霍德里克-普雷斯科特时间序列滤波器{p_end}
{p2col :{helpb tssmooth ma}}移动平均滤波器{p_end}
{p2col :{helpb tssmooth dexponential}}双指数平滑{p_end}
{p2col :{helpb tssmooth exponential}}单指数平滑{p_end}
{p2col :{helpb tssmooth hwinters}}霍尔特-温特斯非季节性平滑{p_end}
{p2col :{helpb tssmooth shwinters}}霍尔特-温特斯季节性平滑{p_end}
{p2col :{helpb tssmooth nl}}非线性滤波器{p_end}


      {bf:诊断工具}

{p2col :{help corrgram_zh}}制表并绘制自相关{p_end}
{p2col :{help xcorr_zh}}双变量时间序列的交叉相关图{p_end}
{p2col :{help cumsp_zh}}绘制累积分布谱{p_end}
{p2col :{help pergram_zh}}周期图{p_end}
{p2col :{help psdensity_zh}}参数谱密度估计{p_end}
{p2col :{helpb estat acplot}}绘制参数自相关和自协方差函数{p_end}
{p2col :{helpb estat aroots}}检查 ARIMA 估计的稳定性条件{p_end}
{p2col :{helpb estat duration}}在表中显示状态的预期持续时间{p_end}
{p2col :{helpb estat transition}}在表中显示转移概率{p_end}
{p2col :{help dfgls_zh}}DF-GLS 单位根检验{p_end}
{p2col :{help dfuller_zh}}增强的迪基-福勒单位根检验{p_end}
{p2col :{help pperron_zh}}菲利普斯-佩隆单位根检验{p_end}
{p2col :{helpb estat sbknown}}已知断点的结构性断裂检验{p_end}
{p2col :{helpb estat sbsingle}}未知断点的结构性断裂检验{p_end}
{p2col :{helpb estat sbcusum}}参数稳定性的累积和检验{p_end}
{p2col :{helpb regress postestimationts##dwatson:estat dwatson}}Durbin-Watson d 统计量{p_end}
{p2col :{helpb regress postestimationts##durbinalt:estat durbinalt}}Durbin 的序列相关性替代检验{p_end}
{p2col :{helpb regress_postestimationts##bgodfrey:estat bgodfrey}}Breusch-Godfrey 高阶序列相关性检验{p_end}
{p2col :{helpb regress_postestimationts##archlm:estat archlm}}Engle 对自回归条件异方差的 LM 检验{p_end}
{p2col :{helpb mswitch postestimation}}mswitch 的后估计工具{p_end}
{p2col :{help wntestb_zh}}巴特利特基于周期图的白噪声检验{p_end}
{p2col :{help wntestq_zh}}Portmanteau (Q) 白噪声检验{p_end}


{marker multivariate}{...}
    {title:多变量时间序列}

      {bf:估计量}

{p2col :{help dfactor_zh}}动态因子模型{p_end}
{p2col :{helpb dfactor postestimation}}dfactor 的后估计工具{p_end}
{p2col :{helpb mgarch ccc}}常数条件相关多变量 GARCH 模型{p_end}
{p2col :{helpb mgarch ccc postestimation}}mgarch ccc 的后估计工具{p_end}
{p2col :{helpb mgarch dcc}}动态条件相关多变量 GARCH 模型{p_end}
{p2col :{helpb mgarch dcc postestimation}}mgarch dcc 的后估计工具{p_end}
{p2col :{helpb mgarch dvech}}对角 vech 多变量 GARCH 模型{p_end}
{p2col :{helpb mgarch dvech postestimation}}mgarch dvech 的后估计工具{p_end}
{p2col :{helpb mgarch vcc}}变条件相关多变量 GARCH 模型{p_end}
{p2col :{helpb mgarch vcc postestimation}}mgarch vcc 的后估计工具{p_end}
{p2col :{help sspace_zh}}状态空间模型{p_end}
{p2col :{helpb sspace postestimation}}sspace 的后估计工具{p_end}
{p2col :{help var_zh}}向量自回归模型{p_end}
{p2col :{helpb var postestimation}}var 的后估计工具{p_end}
{p2col :{help svar_zh}}结构向量自回归模型{p_end}
{p2col :{helpb svar postestimation}}svar 的后估计工具{p_end}
{p2col :{help varbasic_zh}}拟合简单 VAR 并绘制 IRFs 或 FEVDs{p_end}
{p2col :{helpb varbasic postestimation}}varbasic 的后估计工具{p_end}
{p2col :{help vec_zh}}向量误差修正模型{p_end}
{p2col :{helpb vec postestimation}}vec 的后估计工具{p_end}

{p 8 10 2}
另见 {mansection DSGE dsgeDSGE:{it:Stata 动态随机一般均衡模型参考手册}}。


      {bf:诊断工具}

{p2col :{help varlmar_zh}}对残差自相关进行 LM 检验{p_end}
{p2col :{help varnorm_zh}}检验是否符合正态分布的干扰{p_end}
{p2col :{help varsoc_zh}}获得 VAR 和 VECM 的滞后阶数选择统计量{p_end}
{p2col :{help varstable_zh}}检查 VAR 或 SVAR 估计的稳定性条件{p_end}
{p2col :{help varwle_zh}}获得 Wald 滞后排除统计量{p_end}
{p2col :{help veclmar_zh}}对残差自相关进行 LM 检验{p_end}
{p2col :{help vecnorm_zh}}检验是否符合正态分布的干扰{p_end}
{p2col :{help vecrank_zh}}估计 VECM 的协整秩{p_end}
{p2col :{help vecstable_zh}}检查 VECM 估计的稳定性条件{p_end}


      {bf:预测、推断和解释}

{p2col :{helpb irf create}}获取 IRFs、动态乘数函数和 FEVDs{p_end}
{p2col :{helpb fcast compute}}在 var、svar 或 vec 之后计算动态预测{p_end}
{p2col :{help vargranger_zh}}执行成对 Granger 因果检验{p_end}


      {bf:图形和表格}

{p2col :{help corrgram_zh}}制表并绘制自相关{p_end}
{p2col :{help xcorr_zh}}双变量时间序列的交叉相关图{p_end}
{p2col :{help pergram_zh}}周期图{p_end}
{p2col :{helpb irf graph}}IRFs、动态乘数函数和 FEVDs 的图形{p_end}
{p2col :{helpb irf cgraph}}IRFs、动态乘数函数和 FEVDs 的组合图{p_end}
{p2col :{helpb irf ograph}}IRFs、动态乘数函数和 FEVDs 的重叠图{p_end}
{p2col :{helpb irf table}}IRFs、动态乘数函数和 FEVDs 的表格{p_end}
{p2col :{helpb irf ctable}}IRFs、动态乘数函数和 FEVDs 的组合表{p_end}
{p2col :{helpb fcast graph}}在 fcast compute 之后绘制预测{p_end}
{p2col :{help tsline_zh}}绘制时间序列数据{p_end}
{p2col :{helpb tsrline}}绘制时间序列范围图数据{p_end}
{p2col :{help varstable_zh}}检查 VAR 或 SVAR 估计的稳定性条件{p_end}
{p2col :{help vecstable_zh}}检查 VECM 估计的稳定性条件{p_end}
{p2col :{help wntestb_zh}}巴特利特基于周期图的白噪声检验{p_end}


      {bf:结果管理工具}

{p2col :{helpb irf add}}将 IRF 文件中的结果添加到活动 IRF 文件{p_end}
{p2col :{helpb irf describe}}描述 IRF 文件{p_end}
{p2col :{helpb irf drop}}从活动 IRF 文件中删除 IRF 结果{p_end}
{p2col :{helpb irf rename}}重命名 IRF 文件中的 IRF 结果{p_end}
{p2col :{helpb irf set}}设置活动 IRF 文件{p_end}


{marker forecasting}{...}
    {title:预测模型}

{p2colset 9 37 39 2}{...}
{p2col :{help forecast_zh}}经济计量模型预测{p_end}
{p2col :{helpb forecast adjust}}通过加法因子、替换等调整变量{p_end}
{p2col :{helpb forecast clear}}从内存中清除当前模型{p_end}
{p2col :{helpb forecast coefvector}}通过系数向量指定方程{p_end}
{p2col :{helpb forecast create}}创建一个新的预测模型{p_end}
{p2col :{helpb forecast describe}}描述预测模型的特征{p_end}
{p2col :{helpb forecast drop}}删除预测变量{p_end}
{p2col :{helpb forecast estimates}}将估计结果添加到预测模型中{p_end}
{p2col :{helpb forecast exogenous}}声明外生变量{p_end}
{p2col :{helpb forecast identity}}向预测模型添加身份{p_end}
{p2col :{helpb forecast list}}列出现有模型的预测命令{p_end}
{p2col :{helpb forecast query}}检查预测模型是否已启动{p_end}
{p2col :{helpb forecast solve}}获取静态和动态预测{p_end}


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection TS TimeseriesRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在该帮助文件中。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <time.sthlp>}