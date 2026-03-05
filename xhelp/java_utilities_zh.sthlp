{smcl}
{* *! version 1.0.5  13may2019}{...}
{vieweralsosee "[P] Java 工具" "mansection P Javautilities"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[P] Java 简介" "help java_intro_zh"}{...}
{viewerjumpto "语法" "java_utilities_zh##syntax"}{...}
{viewerjumpto "描述" "java_utilities_zh##description"}{...}
{viewerjumpto "备注" "java_utilities_zh##remarks"}
{help java_utilities:English Version}
{hline}{...}
{p2colset 1 23 25 2}{...}
{p2col:{bf:[P] Java 工具} {hline 2}}Java 工具 
{p_end}
{p2col:}({mansection P Javautilities:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{pstd}
列出 Java 运行时环境设置和系统信息

{p 8 16 2}
{cmd:java} {cmdab:q:uery}


{pstd}
初始化 Java 运行时环境

{p 8 16 2}
{cmd:java} {cmdab:init:ialize}


{pstd}
设置 Java 运行时环境的路径

{p 8 16 2}
{cmd:java} {cmd:set} 
{cmd:home}
{cmd:default} | {cmd:"}{it:path_to_java_home_dir}{cmd:"} 

{phang}
{cmd:set java_home} 是 {cmd:java set home} 的同义词.{p_end}


{pstd}
设置 Java 运行时环境的堆内存大小

{p 8 16 2}
{cmd:java} {cmd:set} 
{cmd:heapmax}
{cmd:default} | {it:size}  

{phang}
{cmd:set java_heapmax} 是 {cmd:java set heapmax} 的同义词.{p_end}
{phang}
{it:size} 为 {it:#}[{cmd:m}|{cmd:g}]，默认单位为 {cmd:m}。


{marker description}{...}
{title:描述}

{pstd}
{cmd:java} {cmd:query} 显示 Java 运行时环境 (JRE) 的设置和系统信息。
某些系统信息仅在 Java 虚拟机 (JVM) 初始化后才可用。

{pstd}
{cmd:java} {cmd:set} {cmd:home} 设置 JRE 的路径。

{pstd}
{cmd:java} {cmd:set} {cmd:heapmax} 设置分配给 JVM 的堆内存的最大量。

{pstd}
{cmd:java} {cmd:initialize} 手动初始化 JVM。手动初始化通常不会被使用，因为
JVM 在需要时会自动初始化。一旦 JVM 被初始化，就无法在 Stata 会话中反初始化。

{pstd}
有关在 Stata 中创建 Java 插件的详细信息，请参见 
{helpb java intro:[P] Java 简介}。


{marker remarks}{...}
{title:备注}

{pstd}
Stata 对某些功能需要 JRE。 
与 Stata 一起重新分发的 JRE 基于 OpenJDK 的源代码并按照 
{browse "https://openjdk.java.net/legal/gplv2+ce.html":GPL v2 with Classpath Exception} 进行许可。 
此版本的 Stata 包含从 Azul Systems 获取的构建 11.0.3-LTS。

{pstd}
有时，可能需要使用和维护您自己的 JRE 版本。例如，一些机构要求必须在 JRE 上应用频繁的安全补丁以维持安全合规性。 
针对这些情况，使用 {cmd:java} {cmd:set} {cmd:home} 将告诉 Stata 使用您的 JRE，而不是与 Stata 一起分发的 JRE。 
更换默认 JRE 时，我们建议仅使用长期支持 (LTS) 版本。本版本的 Stata 支持的最低 Java 版本为 8 版本。 
对于希望重新分发 Java 插件的开发者，我们建议将他们的代码编译为目标 8 版本。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <java_utilities.sthlp>}