
{help mi_impute_uvopt_augment:English Version}
{hline}
{* *! version 1.0.2  20sep2012}{...}
{opt augment} 指定在检测到完美预测时执行扩展回归。 默认情况下，当检测到完美预测时，会发出错误提示。 扩展回归方法的理念是在估计过程中向数据中添加一些小权重的观察值，以避免完美预测。 详情请参见 {mansection MI miimputeRemarksandexamplesTheissueofperfectpredictionduringimputationofcategoricaldata:{it:在分类数据插补过程中完美预测的问题}} 下的 {it:备注和示例} 中的 {bf:[MI] mi impute}。 {cmd:augment} 不允许与重要性权重一起使用。