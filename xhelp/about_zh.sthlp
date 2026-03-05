{smcl}
{* *! version 1.6.3  10may2018}{...}
{viewerdialog about "dialog about_dlg"}{...}
{vieweralsosee "[R] about" "mansection R about"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[U] 3 Resources for learning and using Stata" "help stata_zh"}{...}
{vieweralsosee "stata/ic" "help stataic_zh"}{...}
{vieweralsosee "stata/se" "help statase_zh"}{...}
{vieweralsosee "stata/mp" "help statamp_zh"}{...}
{vieweralsosee "[R] which" "help which_zh"}{...}
{viewerjumpto "Syntax" "about_zh##syntax"}{...}
{viewerjumpto "Menu" "about_zh##menu"}{...}
{viewerjumpto "Description" "about_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "about_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "about_zh##remarks"}
{help about:English Version}
{hline}{...}
{p2colset 1 14 16 2}{...}
{p2col:{bf:[R] about} {hline 2}}显示关于您 Stata 的信息{p_end}
{p2col:}({mansection R about:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

    {cmd:about}


{marker menu}{...}
{title:菜单}

{phang}
{bf:帮助 > 关于 Stata}


{marker description}{...}
{title:描述}

{pstd}
{cmd:about} 显示关于您版本的 Stata 的信息。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection R aboutRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{pstd}
如果您正在运行 Windows 版 Stata，关于内存的信息也会被显示：

         {cmd:. about}

         Stata/MP {ccl stata_version} for Windows (64-bit x86-64)
	 修订日期 2019年9月17日
	 版权所有 1985-2019 StataCorp LLC

	 总物理内存:     {cmd:8388608 KB}
	 可用物理内存:  {cmd:937932 KB}

	 {cmd}10用户 32核心 Stata 网络永久许可:
	        序列号:  {ccl stata_version}
	          授权给:  Alan R. Riley
	                        StataCorp{txt}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <about.sthlp>}