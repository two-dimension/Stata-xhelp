{smcl}
{* *! version 1.0.4  25feb2019}{...}
{viewerdialog estat "dialog dsge_estat, message(-stable-) name(dsge_estat_stable)"}{...}
{vieweralsosee "[DSGE] estat stable" "mansection DSGE estatstable"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[DSGE] dsge" "help dsge_zh"}{...}
{vieweralsosee "[DSGE] dsge postestimation" "help dsge postestimation"}{...}
{vieweralsosee "[DSGE] dsgenl" "help dsgenl_zh"}{...}
{vieweralsosee "[DSGE] dsgenl postestimation" "help dsgenl postestimation"}{...}
{vieweralsosee "[DSGE] Intro 5" "mansection DSGE Intro5"}{...}
{viewerjumpto "Syntax" "dsge estat stable##syntax"}{...}
{viewerjumpto "Menu for estat" "dsge estat stable##menu_estat"}{...}
{viewerjumpto "Description" "dsge estat stable##description"}{...}
{viewerjumpto "Links to PDF documentation" "dsge_estat_stable_zh##linkspdf"}{...}
{viewerjumpto "Examples" "dsge estat stable##examples"}{...}
{viewerjumpto "Stored results" "dsge estat stable##results"}
{help dsge_estat_stable:English Version}
{hline}{...}
{p2colset 1 24 26 2}{...}
{p2col:{bf:[DSGE] estat stable} {hline 2}}检查系统的稳定性{p_end}
{p2col:}({mansection DSGE estatstable:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 17 2}
{cmd:estat stable}


包含帮助菜单_estat


{marker description}{...}
{title:描述}

{pstd}
{cmd:estat stable} 显示模型参数的函数，以指示模型在特定参数值下是否为鞍点稳定。这些结果可以帮助您找到模型鞍点稳定的初始值。鞍点稳定性是求解和估计 DSGE 模型参数所必需的。


{marker linkspdf}{...}
{title:链接到 PDF 文档}

        {mansection DSGE estatstableRemarksandexamples:备注和示例}

        {mansection DSGE estatstableMethodsandformulas:方法和公式}

{pstd}
上述部分不包含在此帮助文件中。


{marker examples}{...}
{title:示例}

{pstd}设置{p_end}
{phang2}{cmd:. webuse usmacro2}{p_end}

{pstd}参数估计{p_end}
{phang2}{cmd:. dsge (p = (1/{c -(}gamma{c )-})*F.p + {c -(}kappa{c )-}*y)}
          {cmd:(y = F.y -(r - F.p - z), unobserved)}
          {cmd:(r = {c -(}gamma{c )-}*p + u)}
          {cmd:(F.u = {c -(}rho_u{c )-}*u, state)}
          {cmd:(F.z = {c -(}rho_z1{c )-}*z + {c -(}rho_z2{c )-}*Lz, state)}
          {cmd:(F.Lz = z, state noshock), solve noidencheck}

{pstd}获取初始值所隐含的特征值{p_end}
{phang2}{cmd:. estat stable}

{pstd}重复参数估计，但将 {cmd:gamma} 的初始值指定为 1.2{p_end}
{phang2}{cmd:. dsge (p = (1/{c -(}gamma{c )-})*F.p + {c -(}kappa{c )-}*y)}
     {cmd:(y = F.y -(r - F.p - z), unobserved)}
     {cmd:(r = {c -(}gamma{c )-}*p + u)}
     {cmd:(F.u = {c -(}rho_u{c )-}*u, state)}
     {cmd:(F.z = {c -(}rho_z1{c )-}*z + {c -(}rho_z2{c )-}*Lz, state)}
     {cmd:(F.Lz = z, state noshock),}
     {cmd:solve noidencheck from(gamma=1.2)}

{pstd}获取初始值所隐含的特征值{p_end}
{phang2}{cmd:. estat stable}
{p_end}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:estat stable} 将以下结果存储在 {cmd:r()} 中：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:r(stable)}}{cmd:1} 如果稳定，则为 {cmd:0} 否则{p_end}

{p2col 5 15 19 2: 矩阵}{p_end}
{synopt:{cmd:r(eigenvalues)}}特征值{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <dsge_estat_stable.sthlp>}