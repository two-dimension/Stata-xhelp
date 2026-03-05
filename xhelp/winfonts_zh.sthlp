{smcl}
{* *! version 1.1.2  29jan2019}{...}
{findalias asgswfonts}{...}
{viewerjumpto "更改和保存您窗口的字体和位置" "winfonts_zh##remarks1"}{...}
{viewerjumpto "更改配色方案" "winfonts_zh##remarks2"}{...}
{viewerjumpto "管理您的偏好设置" "winfonts_zh##remarks3"}{...}
{viewerjumpto "关闭和打开窗口" "winfonts_zh##remarks4"}
{help winfonts:English Version}
{hline}{...}
{title:标题}

    {findalias gswfonts}


{marker remarks1}{...}
{title:更改和保存您窗口的字体和位置}

{p 4 4 2}
您可以在以下窗口中更改字体：

{p 8 25 2}{hi:结果}{space 10}(仅限等宽字体){p_end}
{p 8 25 2}{hi:图形}{space 12}(仅限 TrueType 字体){p_end}
{p 8 25 2}{hi:查看器}{space 11}(仅限等宽字体){p_end}
{p 8 25 2}{hi:命令}{space 10}(任何字体){p_end}
{p 8 25 2}{hi:历史记录}{space 11}(任何字体){p_end}
{p 8 25 2}{hi:变量}{space 8}(任何字体){p_end}
{p 8 25 2}{hi:数据编辑器}{space 6}(仅限等宽字体){p_end}
{p 8 25 2}{hi:Do文件编辑器}{space 3}(仅限等宽 TrueType 字体)

{p 8 8 2}(等宽字体是指“打字机”字体，如 Courier。)


{p 4 4 2}
要更改窗口的字体：

{p 8 12 2}1.  右键单击窗口并选择 {cmd:字体...}{p_end}
{p 8 12 2}2.  选择字体


{p 4 4 2}
要更改 Do 文件编辑器的字体：

{p 8 12 2}1.  右键单击 Do 文件编辑器并选择 {cmd:首选项...}{p_end}
{p 8 12 2}2.  选择字体


{marker remarks2}{...}
{title:更改配色方案}

{p 4 4 2}
要更改 {hi:结果} 窗口的配色方案：

{p 8 12 2}1.  右键单击结果窗口并选择 {cmd:首选项...}{p_end}
{p 8 12 2}2.  从 {cmd:配色方案} 列表中选择所需方案

    或

{p 8 12 2}1.  通过从 {cmd:配色方案} 列表中选择自定义 1 创建自己的方案{p_end}
{p 8 12 2}2.  点击各个输出级别按钮并选择所需颜色{p_end}
{p 8 12 2}3.  如有需要，勾选 {cmd:加粗} 和 {cmd:下划线} 选框


{p 4 4 2}
要更改 {hi:查看器} 的配色方案：

{p 8 12 2}1.  右键单击查看器窗口并选择 {cmd:首选项...}{p_end}
{p 8 12 2}3.  从 {cmd:配色方案} 列表中选择所需方案

    或

{p 8 12 2}1.  通过从 {cmd:配色方案} 列表中选择自定义 1 创建自己的方案{p_end}
{p 8 12 2}2.  点击各个输出级别按钮并选择所需颜色{p_end}
{p 8 12 2}3.  如有需要，勾选 {cmd:加粗} 和 {cmd:下划线} 选框


{marker remarks3}{...}
{title:管理您的偏好设置}

{p 4 4 2}
您的字体大小、图形设置和窗口布局将在您结束 Stata 会话时自动保存。下次打开 Stata 时，它将恢复到您离开时的状态。您也可以拥有多个偏好设置集。


{p 4 4 2}
要保存您的字体、图形和窗口偏好设置：

{p 8 12 2}1.  选择 {cmd:编辑 > 首选项 > 管理首选项 > 保存首选项 > 新建首选项集。}{p_end}
{p 8 12 2}2.  输入 {it:偏好名称}。


{p 4 4 2}
要加载已保存的偏好设置：

{p 8 8 2}选择 {cmd:编辑 > 首选项 > 管理首选项 > 加载首选项 >} {it:偏好名称}。


{p 4 4 2}
要恢复字体、图形设置和窗口排列的出厂设置：

{p 8 8 2}选择 {cmd:编辑 > 首选项 > 管理首选项 > 加载首选项 > 出厂设置}。


{marker remarks4}{...}
{title:关闭和打开窗口}

{p 4 4 2}
您可以关闭除 {hi:命令} 窗口和 {hi:结果} 窗口以外的任何窗口。


{p 4 4 2}
如果您想打开一个已关闭的窗口或将一个隐藏的窗口置于最上层：

{p 8 8 2}从 {cmd:窗口} 菜单中选择所需窗口。


{p 4 4 2}
还有按钮可以将 {hi:图形}、{hi:结果}、{hi:数据编辑器}、{hi:Do 文件编辑器} 和 {hi:查看器} 窗口置于最上层。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <winfonts.sthlp>}