
{smcl}
{* *! version 1.0.3  11feb2011}{...}
{title:过时命令}

{help ovtest:English Version}
{hline}
{pstd}
这些命令仍然可以使用，但自 Stata 9 起已过时。它们的替代命令是

{p2colset 9 24 26 2}{...}
{p2col:旧命令}新命令{p_end}
{tab}{hline 30}
{p2col:{cmd:hettest}}{helpb regress postestimation##estathett:estat hettest}
{p_end}
{p2col:{cmd:imtest}}{helpb regress postestimation##estatimtest:estat imtest}
{p_end}
{p2col:{cmd:ovtest}}{helpb regress postestimation##estatovt:estat ovtest}
{p_end}
{p2col:{cmd:szroeter}}{helpb regress postestimation##estatszroeter:estat szroeter}
{p_end}
{p2col:{cmd:vif}}{helpb regress postestimation##estatvif:estat vif}
{p_end}
{tab}{hline 30}
{tab}见 {help regress postestimation}。

{p2col:旧命令}新命令{p_end}
{tab}{hline 30}
{p2col:{cmd:archlm}}{helpb regress postestimationts##archlm:estat archlm}
{p_end}
{p2col:{cmd:bgodfrey}}{helpb regress postestimationts##bgodfrey:estat bgodfrey}
{p_end}
{p2col:{cmd:durbina}}{helpb regress postestimationts##durbinalt:estat durbinalt}
{p_end}
{p2col:{cmd:dwstat}}{helpb regress postestimationts##dwatson:estat dwatson}
{p_end}
{tab}{hline 30}
{tab}见 {help regress postestimation ts}。

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <ovtest.sthlp>}