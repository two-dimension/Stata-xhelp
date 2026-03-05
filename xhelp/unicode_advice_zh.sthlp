{smcl}
{* *! version 1.0.1  11jan2017}{...}
{findalias asfrunicode}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] unicode" "help unicode_zh"}{...}
{vieweralsosee "help encodings_zh" "help encodings_zh"}
{help unicode_advice:English Version}
{hline}{...}
{title:使用Unicode的建议}

{pstd}
Stata支持Unicode（UTF-8）。  
这意味着您可以包含带重音的字符，

        {c a'} {c e'g} {c i'} {c o^} {c u:} {c y'} ç ...

{pstd}
包括符号， 

        {c L-} {c Y=} € ≤ ≥ ≠ ∑ ...

{pstd}
甚至可以包含非拉丁字符，

	Здравствуйте          

	こんにちは

{pstd}
您可以在您的.dta文件、do文件、ado文件和其他Stata文件中包含它们。 

{pstd} 
Stata的所有部分都支持Unicode。您可以在变量名称、标签、数据以及您希望的任何地方使用Unicode。这意味着，当您共享数据时，其他人将看到您所看到的内容。 

{pstd} 
{bf:如果您从Stata 13或更早版本迁移，并且之前使用扩展ASCII在Stata文件中包含重音字符、特殊符号或非拉丁字符，您需要翻译您的.dta文件、ado文件和do文件。}

{center:请参见命令 {bf:{help unicode_translate_zh:unicode translate}}。}

{pstd}
普通ASCII文件无需翻译。 
现代的Stata即使与使用扩展ASCII的旧数据集也能正常工作，但扩展ASCII字符将无法正确显示。  

{center:了解更多关于在Stata中使用Unicode的信息：}

{center:请参见 {findalias frunicode}。}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <unicode_advice.sthlp>}