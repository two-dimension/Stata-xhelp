{smcl}
{* *! version 1.2.10  17jun2019}{...}
{vieweralsosee "[G-2] graph other" "mansection G-2 graphother"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[G-1] Graph intro" "help graph_intro_zh"}{...}
{viewerjumpto "Syntax" "graph other##syntax"}{...}
{viewerjumpto "Description" "graph other##description"}{...}
{viewerjumpto "Links to PDF documentation" "graph_other_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "graph other##remarks"}
{help graph_other:English Version}
{hline}{...}
{p2colset 1 22 24 2}{...}
{p2col:{bf:[G-2] graph other} {hline 2}}其他图形命令{p_end}
{p2col:}({mansection G-2 graphother:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{pstd}
分布诊断图：

{p2colset 9 31 33 2}{...}
{p2col :命令}描述{p_end}
{p2line}
{p2col :{help histogram_zh}}直方图{p_end}
{p2col :{helpb diagnostic plots:symplot}}对称图{p_end}
{p2col :{helpb diagnostic plots:quantile}}分位数图{p_end}
{p2col :{helpb diagnostic plots:qnorm}}分位数{hline 1}正态图{p_end}
{p2col :{helpb diagnostic plots:pnorm}}标准化正态概率图{p_end}
{p2col :{helpb diagnostic plots:qchi}}卡方分位数图{p_end}
{p2col :{helpb diagnostic plots:pchi}}卡方概率图{p_end}
{p2col :{helpb diagnostic plots:qqplot}}分位数{hline 1}分位数图{p_end}

{p2col :{helpb gladder}}幂阶梯图{p_end}
{p2col :{helpb qladder}}幂阶梯分位数{p_end}

{p2col :{help spikeplot_zh}}尖峰图和根图{p_end}
{p2col :{help dotplot_zh}}按组的均值或中位数{p_end}
{p2col :{help sunflower_zh}}密度分布向日葵图{p_end}
{p2line}

{pstd}
平滑和密度：

{p2col :命令}描述{p_end}
{p2line}
{p2col :{help kdensity_zh}}核密度估计，单变量{p_end}
{p2col :{help lowess_zh}}低ess平滑{p_end}
{p2col :{help lpoly_zh}}局部多项式平滑{p_end}
{p2line}

{pstd}
回归诊断：

{p2col :命令}描述{p_end}
{p2line}
{p2col :{helpb avplot}}附加变量（杠杆）图{p_end}
{p2col :{helpb cprplot}}部分加残差图{p_end}
{p2col :{helpb lvr2plot}}L-R（杠杆与平方残差）图{p_end}
{p2col :{helpb rvfplot}}残差与拟合图{p_end}
{p2col :{helpb rvpplot}}残差与预测图{p_end}
{p2line}

{pstd}
时间序列：

{p2col :命令}描述{p_end}
{p2line}
{p2col :{helpb ac}}自相关图{p_end}
{p2col :{helpb pac}}偏自相关图{p_end}
{p2col :{help pergram_zh}}周期图{p_end}
{p2col :{help cumsp_zh}}谱分布图，累积{p_end}
{p2col :{help xcorr_zh}}双变量时间序列的交叉自相关图{p_end}
{p2col :{help wntestb_zh}}巴特利特基于周期图的白噪声检验{p_end}
{p2col :{helpb estat acplot}}在 {cmd:arima} 和 {cmd:arfima} 之后的参数自相关和自协方差函数{p_end}
{p2col :{helpb estat aroots}}在 {cmd:arima} 之后伴随矩阵的特征值{p_end}
{p2col :{helpb estat sbcusum}}参数稳定性的累积和检验{p_end}
{p2line}

{pstd}
向量自回归（VAR，SVAR，VECM）模型：

{p2col :命令}描述{p_end}
{p2line}
{p2col :{helpb fcast graph}}{cmd:var}，{cmd:svar} 和 {cmd:vec} 预测{p_end}
{p2col :{help varstable_zh}}在 {cmd:var} 和 {cmd:svar} 之后伴随矩阵的特征值{p_end}
{p2col :{help vecstable_zh}}在 {cmd:vec} 之后伴随矩阵的特征值{p_end}
{p2col :{helpb irf graph}}脉冲响应函数（IRFs）和预测误差方差分解（FEVDs）{p_end}
{p2col :{helpb irf ograph}}叠加的IRFs和FEVDs{p_end}
{p2col :{helpb irf cgraph}}组合的IRFs和FEVDs{p_end}
{p2line}

{pstd}
纵向数据/面板数据：

{p2col :命令}描述{p_end}
{p2line}
{p2col :{help xtline_zh}}面板数据线图{p_end}
{p2line}

{pstd}
生存分析：

{p2col :命令}描述{p_end}
{p2line}
{p2col :{helpb sts graph:sts graph}}生存、风险或累积风险函数{p_end}
{p2col :{help strate_zh}}失效率和累积风险比较{p_end}
{p2col :{help ltable_zh}}生存表{p_end}
{p2col :{help stci_zh}}生存时间的均值和百分位数，带置信区间{p_end}
{p2col :{helpb stphplot}}对数-对数图{p_end}
{p2col :{helpb stcoxkm}}卡普兰{hline 1}迈尔观察到的生存曲线{p_end}
{p2col :{helpb estat phtest}}验证比例风险假设{p_end}
{p2col :{help stcurve_zh}}生存、风险、累积风险或累积发病函数{p_end}
{p2col :{helpb estat gofplot}}区间截断数据模型的拟合优度{p_end}
{p2line}

{pstd}
元分析：

{p2col :命令}描述{p_end}
{p2line}
{p2col :{helpb meta forestplot}}森林图{p_end}
{p2col :{helpb meta funnelplot}}漏斗图{p_end}
{p2col :{helpb meta labbeplot}}L'Abb{c e'} 图{p_end}
{p2col :{helpb estat bubbleplot}}气泡图{p_end}
{p2line}

{pstd}
ROC 分析：

{p2col :命令}描述{p_end}
{p2line}
{p2col :{help roctab_zh}}ROC 曲线{p_end}
{p2col :{helpb rocfit_postestimation##rocplot:rocplot}}参数化ROC曲线{p_end}
{p2col :{help roccomp_zh}}多个ROC曲线比较{p_end}
{p2col :{help rocregplot_zh}}边际和协变量特定的ROC曲线{p_end}
{p2col :{help lroc_zh}}{cmd:logistic}，{cmd:logit}，{cmd:probit} 和 {cmd:ivprobit} 之后的ROC曲线{p_end}
{p2col :{help lsens_zh}}灵敏度和特异性与概率切割{p_end}
{p2line}

{pstd}
Lasso：

{p2col:命令}描述{p_end}
{p2line}
{p2col:{help coefpath_zh}}系数路径{p_end}
{p2col:{help cvplot_zh}}交叉验证函数{p_end}
{p2line}

{pstd}
项目反应理论：

{p2col:命令}描述{p_end}
{p2line}
{p2col:{helpb irtgraph icc}}项目特征曲线图{p_end}
{p2col:{helpb irtgraph tcc}}测试特征曲线图{p_end}
{p2col:{helpb irtgraph iif}}项目信息函数图{p_end}
{p2col:{helpb irtgraph tif}}测试信息函数图{p_end}
{p2line}

{pstd}
多变量分析：

{p2col:命令}描述{p_end}
{p2line}
{p2col:{help biplot_zh}}双变量图{p_end}
{p2col :{helpb cluster dendrogram}}层次聚类分析的树状图{p_end}
{p2col:{help screeplot_zh}}特征值的碎石图{p_end}
{p2col:{help scoreplot_zh}}因子或成分得分图{p_end}
{p2col:{helpb loadingplot}}因子或成分载荷图{p_end}
{p2col:{helpb procoverlay}}Procrustes叠加图{p_end}
{p2col:{helpb cabiplot}}对应分析双变量图{p_end}
{p2col:{helpb caprojection}}对应分析维度投影图{p_end}
{p2col:{helpb mcaplot}}类别坐标图{p_end}
{p2col:{helpb mcaprojection}}MCA维度投影图{p_end}
{p2col:{helpb mdsconfig}}多维缩放配置图{p_end}
{p2col:{helpb mdsshepard}}多维缩放Shepard图{p_end}
{p2line}

{pstd}
质量控制图：

{p2col :命令}描述{p_end}
{p2line}
{p2col :{help cusum_zh}}累积和图{p_end}
{p2col :{helpb cchart}}控制图（c）{p_end}
{p2col :{helpb pchart}}缺陷比例图（p）{p_end}
{p2col :{helpb rchart}}范围或离散度图（R）{p_end}
{p2col :{helpb xchart}}X-Bar（控制线）图{p_end}
{p2col :{helpb shewhart}}纵向对齐的X-Bar和R图{p_end}
{p2col :{help serrbar_zh}}标准误差条形图{p_end}
{p2line}

{pstd}
其他统计图：

{p2col :命令}描述{p_end}
{p2line}
{p2col :{help marginsplot_zh}}{help margins_zh} 的结果图（轮廓图等）{p_end}
{p2col :{help bayesgraph_zh}}{help bayesmh_zh} 的结果图{p_end}
{p2col :{help power_optgraph_zh:power, graph}}{help power_zh} 的结果图{p_end}
{p2col :{help ciwidth_optgraph_zh:ciwidth, graph}}{help ciwidth_zh} 的结果图{p_end}
{p2col :{help tabodds_zh}}失败的赔率与类别{p_end}
{p2col :{helpb teffects overlap}}重叠图{p_end}
{p2col :{helpb tebalance box}}检查平衡的箱线图{p_end}
{p2col :{helpb npgraph}}条件均值函数{p_end}
{p2col :{help grmap_zh}}空间数据的可视化{p_end}
{p2col :{help pkexamine_zh}}总结药物动力学数据{p_end}
{p2line}
{p2colreset}{...}


{marker description}{...}
{title:描述}

{pstd}
除了 {cmd:graph} 之外，还有许多其他命令用于绘制图形。上述内容已列出。

{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection G-2 graphotherRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。

{marker remarks}{...}
{title:备注}

{pstd}
其他图形命令是基于 {cmd:graph} 实现的，提供以下功能：

{p2colset 9 35 37 2}{...}
{p2col :命令}描述{p_end}
{p2line}
{p2col :{helpb graph bar}}条形图{p_end}
{p2col :{helpb graph pie}}饼图{p_end}
{p2col :{helpb graph dot}}点图{p_end}
{p2col :{helpb graph matrix}}散点图矩阵{p_end}
{p2col :{helpb graph twoway}}双变量（{it:y}-{it:x}）图，包括{p_end}
{p2col 11 37 39 2:{helpb graph twoway scatter}}散点图{p_end}
{p2col 11 37 39 2:{helpb graph twoway line}}线图{p_end}
{p2col 11 37 39 2:{helpb graph twoway function}}函数图{p_end}
{p2col 11 37 39 2:{helpb graph twoway histogram}}直方图{p_end}
{p2col 11 37 39 2:{helpb twoway:graph twoway *}}更多{p_end}
{p2line}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <graph_other.sthlp>}