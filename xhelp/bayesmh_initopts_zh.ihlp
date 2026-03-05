
{help bayesmh_initopts:English Version}
{hline}
{* *! version 1.0.2  04dec2018}{...}
{synopt: {opth init:ial(bayesmh##initspec:initspec)}}指定单链模型参数的初始值{p_end}
{synopt: {cmd:init}{it:#}{cmd:(}{it:{help bayesmh##initspec:initspec}}{cmd:)}}指定第 {it:#}条链的初始值；需要 {cmd:nchains()}{p_end}
{synopt: {opth initall:(bayesmh##initspec:initspec)}}为所有链指定初始值；需要 {cmd:nchains()}{p_end}
{synopt: {opt nomleinit:ial}}抑制使用最大似然估计作为起始值{p_end}
{synopt: {opt initrand:om}}指定随机初始值{p_end}
{synopt: {opt initsumm:ary}}显示用于模拟的初始值{p_end}