{smcl}
{* *! version 1.1.3  29jan2019}{...}
{findalias asgsufonts}{...}
{viewerjumpto "更改和保存窗口的字体和位置" "unixfonts_zh##remarks1"}{...}
{viewerjumpto "更改颜色方案" "unixfonts_zh##remarks2"}{...}
{viewerjumpto "管理您的首选项" "unixfonts_zh##remarks3"}{...}
{viewerjumpto "关闭和打开窗口" "unixfonts_zh##remarks4"}
{help unixfonts:English Version}
{hline}{...}
{title:标题}

    {findalias gsufonts} 


{marker remarks1}{...}
{title:更改和保存窗口的字体和位置}

{p 4 4 2}
您可以在以下窗口中更改字体：

{p 8 25 2}{hi:结果}{space 10}(仅限等宽字体){p_end}
{p 8 25 2}{hi:命令行}{space 5}(任意字体){p_end}
{p 8 25 2}{hi:历史记录}{space 11}(任意字体){p_end}
{p 8 25 2}{hi:变量}{space 8}(任意字体){p_end}
{p 8 25 2}{hi:Do-file 编辑器}{space 3}(仅限等宽字体){p_end}
{p 8 25 2}{hi:数据编辑器}{space 6}(仅限等宽字体){p_end}
{p 8 25 2}{hi:查看器}{space 11}(仅限等宽字体){p_end}
{p 8 25 2}{hi:图形}{space 12}(任意字体)

{p 4 4 2}
（等宽字体是 "打字机" 字体，如 Courier。）

{p 4 4 2}
要更改窗口的字体：

{p 8 12 2}1.  右键点击窗口，并选择 {cmd:首选项...}{p_end}
{p 8 12 2}2.  点击字体字段旁边的 {cmd:浏览} 按钮。{p_end}
{p 8 12 2}3.  选择字体和大小。{p_end}
{p 8 12 2}4.  点击 {cmd:确定}。{p_end}
{p 8 12 2}5.  再次点击 {cmd:确定}。


{marker remarks2}{...}
{title:更改颜色方案}

{p 4 4 2}
要更改 {hi:结果} 窗口的颜色方案：

{p 8 12 2}1.  右键点击结果窗口并选择 {cmd:首选项...}{p_end}
{p 8 12 2}2.  从 {cmd:颜色方案} 列表中选择所需的方案。

    或者

{p 8 12 2}1.  通过从 {cmd:颜色方案} 列表中选择自定义 1 来创建自己的方案。{p_end}
{p 8 12 2}2.  点击各种输出级别按钮并选择所需的颜色。{p_end}
{p 8 12 2}3.  根据需要勾选 {cmd:粗体} 和 {cmd:下划线} 选项。


{p 4 4 2}
要更改 {hi:查看器} 的颜色方案：

{p 8 12 2}1.  右键点击查看器窗口并选择 {cmd:首选项...}{p_end}
{p 8 12 2}3.  从 {cmd:颜色方案} 列表中选择所需的方案。

    或者

{p 8 12 2}1.  通过从 {cmd:颜色方案} 列表中选择自定义 1 来创建自己的方案。{p_end}
{p 8 12 2}2.  点击各种输出级别按钮并选择所需的颜色。{p_end}
{p 8 12 2}3.  根据需要勾选 {cmd:粗体} 和 {cmd:下划线} 选项。


{p 4 4 2}
Stata（控制台）用户应参阅帮助 {help conren_zh} 以获取有关利用 Stata 的颜色、粗体和下划线输出的控制台设置的信息。


{marker remarks3}{...}
{title:管理您的首选项}

{p 4 4 2}
您的字体大小、图形设置和窗口布局将在 Stata 会话结束时自动保存。下次启动 Stata 时，界面将与您上次离开时完全相同。您还可以拥有多个首选项集。

{p 4 4 2}
要保存您的字体、图形和窗口首选项：

{p 8 12 2}1.  选择 {cmd:编辑 > 首选项 > 管理首选项 > 保存首选项...}。{p_end}
{p 8 12 2}2.  输入 {it:首选项名称}。


{p 4 4 2}
要加载已保存的首选项：

{p 8 8 2}选择 {cmd:编辑 > 首选项 > 管理首选项 > 打开首选项 ... > }{it:首选项名称}。


{p 4 4 2}
要恢复字体、图形设置和窗口布局的出厂设置：

{p 8 8 2}
选择 {cmd:编辑 > 首选项 > 管理首选项 > 出厂设置}。


{marker remarks4}{...}
{title:关闭和打开窗口}

{p 4 4 2}
您可以关闭 {hi:查看器}、{hi:图形}、{hi:Do-file 编辑器} 和 {hi:数据编辑器} 窗口。

{p 4 4 2}
如果您想打开已关闭的窗口或将隐藏的窗口置于最上层：

{p 8 8 2}
从 {cmd:窗口} 菜单中选择所需的窗口。

{p 4 4 2}
还有按钮可以将 {hi:主窗口}、{hi:图形}、{hi:数据编辑器}、{hi:Do-file 编辑器} 和 {hi:查看器} 窗口置于最上层。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <unixfonts.sthlp>}