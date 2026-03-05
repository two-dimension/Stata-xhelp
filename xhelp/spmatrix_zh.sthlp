{smcl}
{* *! version 1.0.4  11may2018}{...}
{viewerdialog Sp "dialog sp"}{...}
{vieweralsosee "[SP] spmatrix" "mansection SP spmatrix"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[SP] Intro" "mansection SP Intro"}{...}
{viewerjumpto "Description" "spmatrix_zh##description"}
{help spmatrix:English Version}
{hline}{...}
{p2colset 1 18 22 2}{...}
{p2col:{bf:[SP] spmatrix} {hline 2}}spmatrix命令的分类指南{p_end}
{p2col:}({mansection SP spmatrix:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:描述}

{pstd}
{cmd:spmatrix} 命令用于创建、导入、操作和导出
{bf:W} 空间加权矩阵。下面列出了描述 {cmd:spmatrix} 命令的各个部分。

{synoptset 28 tabbed}{...}
{syntab:创建标准加权矩阵}
{synopt:{helpb spmatrix create}}创建标准矩阵{p_end}
{synopt:{help spdistance_zh}}计算地点之间的距离{p_end}

{syntab:创建自定义加权矩阵}
{synopt:{helpb spmatrix userdefined}}使用用户定义函数自定义创建{p_end}
{synopt:{helpb spmatrix fromdata}}基于数据集中变量的自定义创建{p_end}
{synopt:{helpb spmatrix spfrommata}}从 Mata 获取加权矩阵{p_end}
{synopt:{helpb spmatrix matafromsp}}将加权矩阵复制到 Mata{p_end}
{synopt:{helpb spmatrix normalize}}标准化矩阵{p_end}

{syntab:操作加权矩阵}
{synopt:{helpb spmatrix dir}}列出内存中加权矩阵的名称{p_end}
{synopt:{helpb spmatrix summarize}}内存中存储的加权矩阵的详细信息{p_end}
{synopt:{helpb spmatrix drop}}从内存中删除加权矩阵{p_end}
{synopt:{helpb spmatrix copy}}将加权矩阵复制到新名称{p_end}
{synopt:{helpb spmatrix save}}将空间加权矩阵保存到文件{p_end}
{synopt:{helpb spmatrix use}}从文件加载空间加权矩阵{p_end}
{synopt:{helpb spmatrix note}}设置或列出注释{p_end}
{synopt:{helpb spmatrix clear}}从内存中删除所有加权矩阵{p_end}

{syntab:导入和导出加权矩阵}
{synopt:{helpb spmatrix export}}以标准格式导出加权矩阵{p_end}
{synopt:{helpb spmatrix import}}以标准格式导入加权矩阵{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <spmatrix.sthlp>}