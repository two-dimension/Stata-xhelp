{smcl}
{* *! version 1.0.3  11feb2011}{...}
{* 此 hlp 文件由 ds.dlg 调用}{...}
{vieweralsosee "[D] ds" "help ds_zh"}
{help varfind_pat_examp:English Version}
{hline}{...}
{title:ds 的模式匹配}

{p 4 4 2}
模式与 {cmd:has()} 和 {cmd:not()} 选项一起用于 {cmd:ds}。
模式由预期文本和字符 {cmd:*} 和 {cmd:?} 组成。 {cmd:*} 表示这里有一个或多个字符，而 {cmd:?} 表示这里有一个特定字符。

	{it:example}{col 30}匹配{col 55}不匹配
	{hline 70}
	this{col 30}this{col 55}this or that
	{col 55}that
	{col 55}that or this
	{hline 70}
	th?s{col 30}this {col 55}thanks
	{col 30}thus{col 55}the Eagles
	{hline 70}
	th*s{col 30}this{col 55}this or that
	{col 30}ths{col 55}thanks for all the fish
	{col 30}thanks
	{col 30}the Eagles
	{col 30}thanks for all this
	{hline 70}
	this or that{col 30}this{col 55}this or that
	{col 30}or
	{col 30}that
	{hline 70}
	"this or that"{col 30}this or that{...}
{col 55}this or that xyzfoo
	{hline 70}
	"*his * tha*"{...}
{col 30}this or that{col 55}that or this
	{col 30}do this and thank Fred
	{hline 70}
	*is th*{col 30}this{col 55}What is that
	{col 30}that{col 55}fish
	{col 30}this is{col 55}Is this thing matching?
	{col 30}that is
	{col 30}It is where it is
	{col 30}that this
	{col 30}this that
	{col 30}this or that
	{hline 70}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <varfind_pat_examp.sthlp>}