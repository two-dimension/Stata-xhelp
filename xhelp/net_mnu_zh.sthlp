{smcl}
{* *! version 1.1.4  12feb2019}{...}
{findalias asfrupdate}{...}
{vieweralsosee "[R] net" "mansection R net"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] ado update" "help ado update"}{...}
{vieweralsosee "[R] net" "help net_zh"}{...}
{vieweralsosee "[R] search" "help search_zh"}{...}
{vieweralsosee "[R] sj" "help sj_zh"}{...}
{vieweralsosee "stb" "help stb_zh"}{...}
{vieweralsosee "[R] update" "help update_zh"}
{help net_mnu:English Version}
{hline}{...}
{p}{hi: SJ、STB 和社区贡献程序的安装与维护}
{p_end}

{p 4 4 2}
社区贡献的程序 -- SJ、STB、Statalist 等 -- 可从各种来源获得。使用以下链接查找、安装和卸载它们。

    {ul: 新包}

        {nsdialog:搜索...}           搜索所有来源。先尝试这个！

        {net "from http://www.stata-journal.com/software/":Stata Journal}       来自 Stata Journal 文章的程序
        {net "from http://www.stata.com/stb/":STB}                 来自 Stata Technical Bulletin 文章的程序
        {net "from http://fmwww.bc.edu/RePEc/bocode/":SSC archive}         波士顿学院统计软件组件
                               Stata 程序存档
        {net "from http://www.stata.com/":其他地点}     其他可用程序的位置

        高级
               {nfdialog:输入网站名称...}
               {net from CD:cd/dvd 驱动器}

    {ul: 先前安装的包}

        {ado dir:列表}
        {asdialog:搜索...}
	{dialog adoupdate:更新...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <net_mnu.sthlp>}