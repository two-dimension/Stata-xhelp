
{help bayesmh_batchoptdes:English Version}
{hline}
{* *! version 1.0.1  03apr2019}{...}
{phang}
{opt batch(#)} 指定计算批次均值和使用批次均值计算 MCSE 的块长度。默认值为 {cmd:batch(0)}，表示不进行批次计算。当未指定 {cmd:batch()} 时，MCSE 是使用有效样本大小而非批次均值来计算的。选项 {cmd:batch()} 不能与 {cmd:corrlag()} 或 {cmd:corrtol()} 一起使用。