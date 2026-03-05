{smcl}
{* *! version 1.1.1  11feb2011}{...}
{findalias asgsmfonts}{...}
{viewerjumpto "更改和保存字体及窗口位置" "macfonts_zh##fonts"}{...}
{viewerjumpto "更改配色方案" "macfonts_zh##schemes"}{...}
{viewerjumpto "管理你的偏好设置" "macfonts_zh##prefs"}{...}
{viewerjumpto "关闭和打开窗口" "macfonts_zh##close_open"}
{help macfonts:English Version}
{hline}{...}
{title:标题}

    {findalias gsmfonts} 


{marker fonts}{...}
{title:更改和保存字体及窗口位置}

{p 4 4 2}
您可以在以下窗口中更改字体大小：

	{hi:结果}
	{hi:查看器}
	{hi:命令}
	{hi:数据编辑器}
	{hi:Do-file 编辑器}


{p 4 4 2}
要更改窗口的字体大小：

{p 8 12 2}1.  右键单击窗口，打开 {cmd:字体大小} 菜单.{p_end}
{p 8 12 2}2.  选择字体大小。


{marker schemes}{...}
{title:更改配色方案}

{p 4 4 2}
要更改 {hi:结果} 窗口的配色方案：

{p 8 12 2}1.  右键单击结果窗口，选择 {cmd:偏好设置...}{p_end}
{p 8 12 2}2.  从 {cmd:配色方案} 列表中选择所需的方案。

    或

{p 8 12 2}1.  从 {cmd:配色方案} 列表中选择自定义 1 来创建自己的方案.{p_end}
{p 8 12 2}2.  点击各个输出级别按钮并选择所需的颜色.{p_end}
{p 8 12 2}3.  如果需要，请勾选 {cmd:粗体} 和 {cmd:下划线} 选项。


{p 4 4 2}
要更改 {hi:查看器} 的配色方案：

{p 8 12 2}1.  右键单击查看器窗口，选择 {cmd:偏好设置...}{p_end}
{p 8 12 2}2.  从 {cmd:配色方案} 列表中选择所需的方案。

    或

{p 8 12 2}1.  从 {cmd:配色方案} 列表中选择自定义 1 来创建自己的方案.{p_end}
{p 8 12 2}2.  点击各个输出级别按钮并选择所需的颜色.{p_end}
{p 8 12 2}3.  如果需要，请勾选 {cmd:粗体} 和 {cmd:下划线} 选项。


{marker prefs}{...}
{title:管理你的偏好设置}

{p 4 4 2}
您的字体大小、图形设置和窗口布局将在 Stata 会话结束时自动保存。下次启动 Stata 时，界面将完全与您离开时相同。您还可以保存多个偏好设置集。


{p 4 4 2}
要保存字体、图形和窗口偏好设置：

{p 8 12 2}1.  从 Stata 菜单选择 {cmd:偏好设置 > 管理偏好设置 > 保存偏好设置... }.{p_end}
{p 8 12 2}2.  输入 {it:偏好名称}。


{p 4 4 2}
要加载已保存的偏好：

{p 8 8 2}从 Stata 菜单选择 {cmd:偏好设置 > 管理偏好设置 > 加载偏好 > }{it:偏好名称}。


{p 4 4 2}
要恢复所有 Stata 偏好的出厂设置：

{p 8 8 2}
选择 {cmd:偏好设置 > 管理偏好设置 > 加载偏好 > 出厂设置} 从 Stata 菜单。


{p 4 4 2}
要仅恢复字体大小、颜色和窗口布局的出厂设置：

{p 8 8 2}
请选择 {cmd:偏好设置 > 管理偏好设置 > 加载偏好 > 出厂窗口设置} 从 Stata 菜单。


{marker close_open}{...}
{title:关闭和打开窗口}

{p 4 4 2}
您可以关闭任何窗口，除了 {hi:命令} 窗口和 {hi:结果} 窗口。


{p 4 4 2}
如果您想打开一个已关闭的窗口或者将一个隐藏的窗口置顶：

{p 8 8 2}从 {cmd:窗口} 菜单中选择所需窗口。


{p 4 4 2}
还有按钮可以将 {hi:图形}、{hi:结果}、{hi:数据编辑器}、{hi:Do-file 编辑器} 和 {hi:查看器} 窗口置顶。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <macfonts.sthlp>}