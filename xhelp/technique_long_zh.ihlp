
{help technique_long:English Version}
{hline}
{* *! version 1.0.0  22jun2019}{...}
{phang}
{cmd:technique(dml1}|{cmd:dml2)} 指定使用哪种交叉拟合技术，分别为双重机器学习 1 ({cmd:dml1}) 或双重机器学习 2 ({cmd:dml2})。对于这两种技术，初始估计步骤是相同的。样本被分为 K={opt xfolds(#)} 份。接着，使用不在第 k 份的观察值估计控制变量的系数，其中 k = 1, 2, ..., K。关于 {it:varsofinterest} 的系数的矩条件是使用第 k 份的观察值来形成的。默认的技术 {cmd:dml2} 通过所有观察值联合解决矩条件。而可选的技术 {cmd:dml1} 在每个第 k 份中解决矩条件，产生 K 个不同的估计，然后将这些估计取平均以形成一个单一的估计向量。