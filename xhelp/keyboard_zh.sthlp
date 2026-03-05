{smcl}
{* *! version 1.1.4  04oct2018}{...}
{findalias asfrkeyboard}{...}
{vieweralsosee "" "--"}{...}
{viewerjumpto "Description" "keyboard_zh##description"}{...}
{viewerjumpto "F-keys" "keyboard_zh##fkeys"}
{help keyboard:English Version}
{hline}{...}
{title:标题}

{pstd}
{findalias frkeyboard}


{marker description}{...}
{title:描述}

{pstd}
某些键允许您编辑正在输入的行。由于 Stata 支持多种计算机和键盘，因此编辑键的位置和名称对于所有 Stata 用户并不相同。

{pstd}
每个键盘都有标准的字母键（如 QWERTY 等），每个键盘都有一个 {hi:Ctrl} 键。一些键盘上有额外的键，位于右侧、上方或左侧，名称类似于 {hi:PgUp} 和 {hi:PgDn}。

{pstd}
有些键组合对 Stata 有特殊的含义，例如 {hi:Break}，它告诉 Stata 停止当前操作并将控制权返回给键盘。在大多数 Unix 计算机上，按住 {hi:Ctrl} 并按 {hi:C} 会产生 {hi:Break}。

{pstd}其他键组合为某些命令和编辑以前的行提供了快捷方式。在带有 {hi:PgUp} 标签的键盘上，{hi:PgUp} 是 PrevLine 键，但在每个人的键盘上，无论是哪个版本的 Unix、哪个品牌的键盘，{hi:Ctrl+R} 也表示 PrevLine。

{pstd}当我们说按 PrevLine 时，现在您知道我们的意思：按 {hi:PgUp} 或 {hi:Ctrl+R}。编辑键如下：

      编辑键名称{space 2}编辑键{space 18}功能
    {hline}
    Kill{space 6}{hi:Esc} 在 PC 上或 {hi:Ctrl+U}{space 12}删除该行，让您重新开始。

    Dbs{space 7}{hi:Backspace} 在 PC 上、{hi:Delete},{space 7}向后删除一个字符，或 {hi:Ctrl+H}。

    Lft{space 7}{hi:<-}（左箭头）、在 PC 上的数字键盘上 {hi:4}  或 {hi:Ctrl+H}   不删除任何字符向左移动光标一个字符。

    Rgt{space 7}{hi:->}（右箭头）、在 PC 上的数字键盘上 {hi:6} 或 {hi:Ctrl+L}  向右移动光标一个字符。

    Up{space 8}上箭头，PC 上数字键盘的 {hi:8} 或 {hi:Ctrl+O}  在占用多行的行上向上移动光标一行。
						另见 PrevLine。

    Dn{space 8}下箭头，PC 上数字键盘的 {hi:2} 或 {hi:Ctrl+N} 在占用多行的行上向下移动光标一行。
						另见 NextLine。

    PrevLine{space 2}{hi:PgUp} 或 {hi:Ctrl+R}                  检索之前输入的行。您可以多次按 PrevLine 逐步回溯以前的命令。

    NextLine{space 2}{hi:PgDn} 或 {hi:Ctrl+B}                  PrevLine 的反向操作。

    Seek{space 6}{hi:Ctrl+Home} 在 PC 上或 {hi:Ctrl+W}      跳转到指定的行号。在按 Seek 之前，输入行号。
						例如，输入 {hi:3} 然后按 Seek 相当于按 PrevLine 三次。

    Ins{space 7}{hi:Ins} 或 {hi:Ctrl+E}                   切换插入模式。在插入模式下，输入的字符会插入到光标位置。

    Del{space 7}{hi:Del} 或 {hi:Ctrl+D}                   删除光标位置的字符。

    Home{space 6}{hi:Home} 或 {hi:Ctrl+K}                  将光标移至行首。

    End{space 7}{hi:End} 或 {hi:Ctrl+P}                   将光标移至行尾。

    Hack{space 6}{hi:Ctrl+End} 在 PC 上或 {hi:Ctrl+X}      从光标处删除行。

    Tab{space 7}{hi:->|} 在 PC 上、{hi:Tab} 或 {hi:Ctrl+I}      展开变量名。

    Btab{space 6}{hi:|<-} 在 PC 上或 {hi:Ctrl+G}            Tab 的反向操作。
    {hline}


{marker fkeys}{...}
{title:F 键}

{pstd}
默认情况下，Stata 定义 F 键的含义为：

      F 键{col 16}等同于输入...{col 60}参见
      {hline 67}
      F1{col 16}{cmd:help advice;}{col 30}并按空格键{col 60}{helpb help advice}
      F2{col 16}{cmd:describe;}{col 30}并按 Enter{col 60}{help describe_zh}
      F7{col 16}{cmd:save}{col 30}并按空格键{col 60}{help save_zh}
      F8{col 16}{cmd:use}{col 30}并按空格键{col 60}{help use_zh}
      {hline 67}

{pstd}
某些条目末尾的分号表示隐含的 {hi:Return}。

{pstd}
Unix（控制台）用户：有时 Unix 为 F 键分配特殊意义，如果是这样，这些含义将优先于我们的定义。Stata 提供了访问 F 键的第二种方式。按住 {hi:Ctrl}，按 {hi:F}，释放按键，然后按一个数字 {hi:0} 到 {hi:9}。Stata 将 {hi:Ctrl+F} 加上 {hi:1} 解释为等同于 {hi:F1} 键，{hi:Ctrl+F} 加上 {hi:2} 作为 {hi:F2}，依此类推。{hi:Ctrl+F} 加上 {hi:0} 表示 {hi:F10}。这些键仅在您的 {cmd:termcap} 或 {cmd:terminfo} 条目正确映射时有效。

{pstd}
Unix（控制台）用户：{cmd:Ctrl+H} 可用作删除或左箭头。默认行为为删除，可以使用未记录的命令 {helpb set ctrlh} 进行更改。

{pstd}
Windows 用户：{hi:F10} 在 Windows 内部是保留的；您无法编程此键。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <keyboard.sthlp>}