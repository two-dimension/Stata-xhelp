
{help syntax_me_predict:English Version}
{hline}
{* *! version 1.0.2  04jun2018}{...}
{marker syntax_predict}{...}
{marker predict}{...}
{title:预测的语法}

{pstd}
获取结果和其他统计量预测的语法

{p 8 16 2}
{cmd:predict} {dtype}
{{it:{help newvarlist##stub*:stub}}{cmd:*} | {newvar:list}} {ifin}
[{cmd:,} {it:{help meglm_postestimation##statistic:统计量}}
{it:{help meglm_postestimation##options_table:选项}}]


{p 4 4 2}
获取估计随机效应及其标准误差的语法

{p 8 16 2}
{cmd:predict} {dtype}
{{it:{help newvarlist##stub*:stub}}{cmd:*} | {newvar:list}}
{ifin}{cmd:,} {opt reffects}
[{it:{help meglm_postestimation##re_options:随机效应选项}}]


{pstd}
获取最大似然估计分数的语法

{p 8 16 2}
{cmd:predict} {dtype}
{{it:{help newvarlist##stub*:stub}}{cmd:*} | {newvar:list}}
{ifin}{cmd:,} {opt sc:ores}