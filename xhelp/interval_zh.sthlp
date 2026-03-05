
{smcl}
{* *! version 1.0.0  16mar2017}{...}
{pstd}
区间时间变量应具有以下形式：
{help interval:English Version}
{hline}

         数据类型{space 24}下限{space 5}上限
	 {space 35}端点{space 2}端点
         {hline 53}
         未删失数据{space 9}{it:a} = [{it:a},{it:a}]{space 5}{it:a}{space 9}{it:a}
         区间删失数据{space 6}({it:a},{it:b}]{space 5}{it:a}{space 9}{it:b}
         左删失数据{space 10}(0,{it:b}]{space 5}{cmd:.}{space 9}{it:b}
         左删失数据{space 10}(0,{it:b}]{space 5}0{space 9}{it:b}
         右删失数据{space 6}[{it:a},+inf){space 5}{it:a}{space 9}{cmd:.}
         缺失{space 31}{cmd:.}{space 9}{cmd:.}
         缺失{space 31}0{space 9}{cmd:.}
         {hline 53}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <interval.sthlp>}