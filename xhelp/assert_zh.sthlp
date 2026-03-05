{smcl}
{* *! version 1.2.4  15jun2019}{...}
{vieweralsosee "[D] assert" "mansection D assert"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] assertnested" "help assertnested_zh"}{...}
{vieweralsosee "[P] capture" "help capture_zh"}{...}
{vieweralsosee "[P] confirm" "help confirm_zh"}{...}
{viewerjumpto "Syntax" "assert_zh##syntax"}{...}
{viewerjumpto "Description" "assert_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "assert_zh##linkspdf"}{...}
{viewerjumpto "Options" "assert_zh##options"}{...}
{viewerjumpto "Examples" "assert_zh##examples"}
{help assert:English Version}
{hline}{...}
{p2colset 1 15 17 2}{...}
{p2col:{bf:[D] assert} {hline 2}}验证声明的真实性{p_end}
{p2col:}({mansection D assert:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 16 2}
{opt as:sert} {it:{help exp_zh}} {ifin} [{cmd:,} {opt r:c0} {opt n:ull} {opt f:ast}]

{phang}
{cmd:by} 被允许；见 {manhelp by D}。


{marker description}{...}
{title:描述}

{pstd}
{cmd:assert} 验证 {it:{help exp_zh}} 是否为真。如果为真，该命令不产生任何输出。如果不为真，{cmd:assert} 会通知您“断言为假”，并返回代码 9；见 {findalias frrc}。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection D assertQuickstart:快速入门}

        {mansection D assertRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{opt rc0} 强制返回代码为 0，即使断言为假。

{phang}
{opt null} 强制在空断言时返回代码 8。空断言发生在 {cmd:if} 条件将所有观察排除在 {cmd:assert} 之外时。默认情况下，空断言的返回代码为 0。

{phang}
{opt fast} 强制命令在 {it:{help exp_zh}} 第一次评估为假时退出。


{marker examples}{...}
{title:示例}

    {hline}
    设置
{phang2}{cmd:. sysuse bplong}{p_end}
{phang2}{cmd:. describe}{p_end}

{pstd}验证 {cmd:sex} 变量是否编码为 0 或 1{p_end}
{phang2}{cmd:. assert sex == 0 | sex == 1}

    设置
{phang2}{cmd:. replace sex = 3 in 1}

{pstd}验证 {cmd:sex} 变量是否编码为 0 或 1{p_end}
{phang2}{cmd:. assert sex == 0 | sex == 1}{p_end}

{pstd}列出断言为假的观察{p_end}
{phang2}{cmd:. list if sex != 0 & sex != 1}

{pstd}验证 {cmd:bp} 是否在 [100,200] 范围内{p_end}
{phang2}{cmd:. assert bp >= 100 & bp <= 200}

    {hline}
    设置
{phang2}{cmd:. webuse autotech, clear}{p_end}
{phang2}{cmd:. merge 1:1 make using https://www.stata-press.com/data/r16/autocost}

{pstd}确认 {cmd:_merge} 始终为 3{p_end}
{phang2}{cmd:. assert _merge == 3}{p_end}

    {hline}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <assert.sthlp>}