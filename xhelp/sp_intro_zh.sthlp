{smcl}
{* *! version 1.0.4  30nov2018}{...}
{vieweralsosee "[SP]" "mansection SP"}{...}
{viewerjumpto "Description" "sp_intro_zh##description"}{...}
{viewerjumpto "Resources" "sp_intro_zh##resources"}
{help sp_intro:English Version}
{hline}{...}
{p2colset 1 20 22 2}{...}
{p2col:{bf:Sp 介绍 }{hline 2}}Sp介绍{p_end}
{p2colreset}{...}


{marker description}{...}
{title:描述}

{pstd}
Sp命令用于管理数据并拟合考虑空间关系的回归。Sp拟合包含因变量和自变量空间滞后及空间自回归误差的SAR模型，适用于格状和区划数据，包括社交网络节点等非地理数据。{p_end} 

{pstd}
不同领域对空间概念使用不同的术语。SAR代表（任选其一）空间自回归或同时自回归。{p_end}


{marker resources}{...}
{title:资源}

{pstd}
如果您是新手，以下八个短小的介绍将使您成为Sp软件的专家。{p_end}

{synoptset 31}{...}
{synoptline}
{synopt :{manlink SP Intro}}空间数据和SAR模型介绍{p_end}
{synopt :{manlink SP Intro 1}}SAR模型的简要介绍{p_end}
{synopt :{manlink SP Intro 2}}W矩阵{p_end}
{synopt :{manlink SP Intro 3}}数据准备分析{p_end}
{synopt :{manlink SP Intro 4}}数据准备：带有形状文件的数据{p_end}
{synopt :{manlink SP Intro 5}}数据准备：包含位置的数据（无形状文件）{p_end}
{synopt :{manlink SP Intro 6}}数据准备：没有形状文件或位置的数据{p_end}
{synopt :{manlink SP Intro 7}}从头到尾的示例{p_end}
{synopt :{manlink SP Intro 8}}Sp估计命令{p_end}
{synoptline}

{pstd} 
如果您已经熟悉Sp，请查看以下帮助文件，以获取有关准备数据、检查数据以及拟合和解释SAR模型的命令描述：{p_end}


{pstd}准备数据{p_end}
{synoptline}
{synopt :{help zipfile_zh:[D] zipfile}}压缩和解压缩zip归档格式的文件{p_end}
{synopt :{help spshape2dta_zh:[SP] spshape2dta}}将形状文件转换为Stata格式{p_end}
{synopt :{help spset_zh:[SP] spset}}声明数据为Sp空间数据{p_end}
{synopt :{help spbalance_zh:[SP] spbalance}}使面板数据强平衡{p_end}
{synopt :{help spcompress_zh:[SP] spcompress}}压缩Stata格式的形状文件{p_end}
{synoptline}


{pstd}查看数据{p_end}
{synoptline}
{synopt :{help grmap_zh:[SP] grmap}}绘制分层图{p_end}
{synopt :{help spdistance_zh:[SP] spdistance}}地点间距离计算器{p_end}
{synoptline}


{pstd}设置空间权重矩阵{p_end}
{synoptline}
{synopt :{help spmatrix_zh:[SP] spmatrix}}创建、操作和进出口权重矩阵{p_end}
{synopt :{help spgenerate_zh:[SP] spgenerate}}生成空间滞后变量{p_end}
{synoptline}


{pstd}拟合模型{p_end}
{synoptline}
{synopt :{help spregress_zh:[SP] spregress}}拟合横断面SAR模型{p_end}
{synopt :{help spivregress_zh:[SP] spivregress}}拟合具有内生协变量的横断面SAR模型{p_end}
{synopt :{help spxtregress_zh:[SP] spxtregress}}拟合面板数据SAR模型{p_end}
{synoptline}


{pstd}后估计{p_end}
{synoptline}
{synopt :{help estat_moran_zh:[SP] estat moran}}回归后的Moran检验{p_end}
{synopt :{help spregress_postestimation_zh:[SP] spregress postestimation}}spregress的后估计工具{p_end}
{synopt :{help spivregress_postestimation_zh:[SP] spivregress postestimation}}spivregress的后估计工具{p_end}
{synopt :{help spxtregress_postestimation_zh:[SP] spxtregress postestimation}}spxtregress的后估计工具{p_end}
{synoptline}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <sp_intro.sthlp>}