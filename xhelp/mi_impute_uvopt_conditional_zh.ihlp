
{help mi_impute_uvopt_conditional:English Version}
{hline}
{opth conditional(if)} 指定了插补变量应基于满足 {it:{help if_zh:exp}} 的观察值进行条件插补。也就是说，在条件样本中缺失的值，即由 {it:exp} 表达式识别的样本，仅根据该条件样本中的数据进行插补。在条件样本之外的缺失值则用一个条件常量替代，即插补变量在条件样本之外观察值中的值。因此，插补变量在条件样本之外必须保持不变。此外，如果任何条件变量（涉及条件规范的变量 {cmd:if} {it:exp}）包含软缺失值 ({cmd:.})，它们的缺失值必须嵌套在插补变量的缺失值之内。有关更多信息，请参见 {mansection MI miimputeRemarksandexamplesConditionalimputation:{it:Conditional imputation}} 下的 {it:Remarks and examples} 在 {bf:[MI] mi impute} 中。