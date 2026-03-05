{smcl}
{* *! version 1.0.4  25sep2018}{...}
{vieweralsosee "[M-5] mvnormal()" "mansection M-5 mvnormal()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-5] normal()" "help mf_normal_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-5] ghk()" "help mf_ghk_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] Statistical" "help m4_statistical_zh"}{...}
{viewerjumpto "Syntax" "mf_mvnormal_zh##syntax"}{...}
{viewerjumpto "Description" "mf_mvnormal_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mf_mvnormal_zh##linkspdf"}{...}
{viewerjumpto "Conformability" "mf_mvnormal_zh##conformability"}{...}
{viewerjumpto "Source code" "mf_mvnormal_zh##source"}
{help mf_mvnormal:English Version}
{hline}{...}
{p2colset 1 21 23 2}{...}
{p2col:{bf:[M-5] mvnormal()} {hline 2}}计算多元正态分布及其导数
{p_end}
{p2col:}({mansection M-5 mvnormal():查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{synoptset 15}{...}
{synopt:{it:real colvector}}{opt mvnormal(U, R)}{p_end}

{synopt:{it:real colvector}}{opt mvnormal(L, U, R)}{p_end}

{synopt:{it:real colvector}}{opt mvnormalcv(L, U, M, V)}{p_end}


{synopt:{it:real colvector}}{opt mvnormalqp(U, R, q)}{p_end}

{synopt:{it:real colvector}}{opt mvnormalqp(L, U, R, q)}{p_end}

{synopt:{it:real colvector}}{opt mvnormalcvqp(L, U, M, V, q)}{p_end}


{synopt:{it:void}}{opt mvnormalderiv(U, R, dU, dR)}{p_end}

{synopt:{it:void}}{opt mvnormalderiv(L, U, R, dL, dU, dR)}{p_end}

{synopt:{it:void}}{opt mvnormalcvderiv(L, U, M, V, dL, dU, dM, dV)}{p_end}


{synopt:{it:void}}{opt mvnormalderivqp(U, R, dU, dR, q)}{p_end}

{synopt:{it:void}}{opt mvnormalderivqp(L, U, R, dL, dU, dR, q)}{p_end}

{synopt:{it:void}}{opt mvnormalcvderivqp(L, U, M, V, dL, dU, dM, dV, q)}{p_end}
{p2colreset}{...}


{pstd}
其中{p_end}
	         {it:L}:  {it:实数矩阵 L}
	         {it:U}:  {it:实数矩阵 U}
	         {it:M}:  {it:实数矩阵 M}
	         {it:R}:  {it:实数矩阵 R}
	         {it:V}:  {it:实数矩阵 V}
	         {it:q}:  {it:实数标量 q}

{pmore2}
{it:dL}、{it:dU}、{it:dM}、{it:dR} 和 {it:dV} 的类型不相关；结果作为实数矩阵返回。

{marker description}{...}
{title:描述}

{pstd}
{opt mvnormal(U, R)} 返回具有下限 -infinity，上限 {it:U} 和矢量化的相关矩阵 {it:R} 的累积多元正态分布（仅记录下三角部分）。

{pstd}
{opt mvnormal(L, U, R)} 返回具有下限 {it:L}，上限 {it:U} 和矢量化的相关矩阵 {it:R} 的多元正态分布（仅记录下三角部分）。

{pstd}
{opt mvnormalcv(L, U, M, V)} 返回具有下限 {it:L}，上限 {it:U}，均值 {it:M} 和矢量化的协方差矩阵 {it:V} 的多元正态分布（仅记录下三角部分）。

{pstd}
{opt mvnormalderiv(U, R, dU, dR)} 计算累积多元正态分布 {opt mvnormal(U, R)} 关于 upper limits {it:U}（lower limits -infinity）和矢量化的相关矩阵 {it:R} 的导数 {it:dU} 和 {it:dR}，没有返回值。

{pstd}
{opt mvnormalderiv(L, U, R, dL, dU, dR)} 计算多元正态分布 {opt mvnormal(L, U, R)} 关于下限 {it:L}，上限 {it:U} 和矢量化的相关矩阵 {it:R} 的导数 {it:dL}、{it:dU} 和 {it:dR}，没有返回值。

{pstd}
{opt  mvnormalcvderiv(L, U, M, V, dL, dU, dM, dV)} 计算多元正态分布 {opt mvnormalcv(L, U, M, V)} 关于下限 {it:L}，上限 {it:U}，均值 {it:M} 和矢量化的协方差矩阵 {it:V} 的导数 {it:dL}、{it:dU}、{it:dM} 和 {it:dV}，没有返回值。

{pstd}
{opt mvnormal()}, {opt mvnormalcv()}, {opt mvnormalderiv()} 和 {opt mvnormalcvderiv()} 默认使用 128 个积分点，适用于大于 3 的维度，默认使用 10 个积分点，适用于小于或等于 3 的维度。

{pstd}
{opt mvnormalqp(U, R, q)},
{opt mvnormalqp(L, U, R, q)},
{opt mvnormalcvqp(L, U, M, V, q)},
{opt mvnormalderivqp(U, R, dU, dR, q)},
{opt mvnormalderivqp(L, U, R, dL, dU, dR, q)} 和 {opt mvnormalcvderivqp(L, U, M, V, dL, dU, dM, dV, q)} 做相同的事情，只是它们允许您在 {it:q} 中指定积分点的数量，而不是使用默认的积分点数量。 {it:q} 必须在 3 到 5,000 之间。如果 {it:q} 不是整数，则取 {it:q} 的整数部分作为积分点的数量。

{pstd}
注意，当维度等于 1 时，{opt mvnormal()}、{opt mvnormalcv()}、{opt mvnormalqp()} 和 {opt mvnormalcvqp()} 会使用 {opt normal()}，当维度等于 2 时使用 {opt binormal()}，在这两种情况下，积分点的数量是无关紧要的。当维度较大时，计算累积多元正态分布及其导数可能会很慢。

{pstd}
矩阵 {it:L}、{it:U}、{it:M}、{it:R} 和 {it:V} 参数化要近似的积分并返回一个列向量。请参见 {help mf_mvnormal##conformability:{it:兼容性}} 以获取兼容性的基本规则，并查看 {mansection M-5 mvnormal()Remarksandexamples:{it:备注和示例}} 以获取 {bf:[M-5] mvnormal()} 的示例。

{marker linkspdf}{...}
{title:链接到 PDF 文档}

        {mansection M-5 mvnormal()Remarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker conformability}{...}
{title:兼容性}

{pstd}
设 {it:d} 为 1 到 50 之间的维度。设 {it:t} = ({it:d} + 1) * {it:d} / 2，并设 {it:q} 为 3 到 5,000 之间的积分点数量。默认情况下，{it:q} = 128，当 {it:d} > 3 时，{it:q} = 10，当 {it:d} {ul:<} 3 时。设 {it:r} = {cmd:max(}{opt rows(L)}{cmd:,} {opt rows(U)}{cmd:,} {opt rows(M)}{cmd:,} {opt rows(R)}{cmd:,} {opt rows(V)}{cmd:)}.

    {opt mvnormal(U, R)}:
        {it:输入}:
                  {it:U}: 1 {it:x} {it:d}  或  {it:r} {it:x} {it:d}, {it:r} > 1
                  {it:R}: 1 {it:x} {it:t}  或  {it:r} {it:x} {it:t}, {it:r} > 1
       {it:输出}:
             {it:result}: 1 {it:x} 1  或  {it:r} {it:x} 1, {it:r} > 1

    {opt mvnormal(L, U, R)}:
        {it:输入}:
                  {it:L}: 1 {it:x} {it:d}  或  {it:r} {it:x} {it:d}, {it:r} > 1 
                  {it:U}: 1 {it:x} {it:d}  或  {it:r} {it:x} {it:d}, {it:r} > 1
                  {it:R}: 1 {it:x} {it:t}  或  {it:r} {it:x} {it:t}, {it:r} > 1
       {it:输出}:
             {it:result}: 1 {it:x} 1  或  {it:r} {it:x} 1, {it:r} > 1

    {opt mvnormalcv(L, U, M, V)}:
        {it:输入}:
                  {it:L}: 1 {it:x} {it:d}  或  {it:r} {it:x} {it:d}, {it:r} > 1
                  {it:U}: 1 {it:x} {it:d}  或  {it:r} {it:x} {it:d}, {it:r} > 1
                  {it:M}: 1 {it:x} {it:d}  或  {it:r} {it:x} {it:d}, {it:r} > 1
                  {it:V}: 1 {it:x} {it:t}  或  {it:r} {it:x} {it:t}, {it:r} > 1
       {it:输出}:
             {it:result}: 1 {it:x} 1  或  {it:r} {it:x} 1, {it:r} > 1

    {opt mvnormalqp(U, R, q)}:
        {it:输入}:
                  {it:U}: 1 {it:x} {it:d}  或  {it:r} {it:x} {it:d}, {it:r} > 1
                  {it:R}: 1 {it:x} {it:t}  或  {it:r} {it:x} {it:t}, {it:r} > 1
                  {it:q}: 1 {it:x} 1
       {it:输出}:
             {it:result}: 1 {it:x} 1  或  {it:r} {it:x} 1, {it:r} > 1

    {opt mvnormalqp(L, U, R, q)}:
        {it:输入}:
                  {it:L}: 1 {it:x} {it:d}  或  {it:r} {it:x} {it:d}, {it:r} > 1
                  {it:U}: 1 {it:x} {it:d}  或  {it:r} {it:x} {it:d}, {it:r} > 1
                  {it:R}: 1 {it:x} {it:t}  或  {it:r} {it:x} {it:t}, {it:r} > 1
                  {it:q}: 1 {it:x} 1 
       {it:输出}:
             {it:result}: 1 {it:x} 1  或  {it:r} {it:x} 1, {it:r} > 1

    {opt mvnormalcvqp(L, U, M, V, q)}:
        {it:输入}:
                  {it:L}: 1 {it:x} {it:d}  或  {it:r} {it:x} {it:d}, {it:r} > 1
                  {it:U}: 1 {it:x} {it:d}  或  {it:r} {it:x} {it:d}, {it:r} > 
                  {it:M}: 1 {it:x} {it:d}  或  {it:r} {it:x} {it:d}, {it:r} > 1
                  {it:V}: 1 {it:x} {it:t}  或  {it:r} {it:x} {it:t}, {it:r} > 1
                  {it:q}: 1 {it:x} 1
       {it:输出}:
             {it:result}: 1 {it:x} 1  或  {it:r} {it:x} 1, {it:r} > 1

    {opt mvnormalderiv(U, R, dU, dR)}:
        {it:输入}:
                  {it:U}: 1 {it:x} {it:d}  或  {it:r} {it:x} {it:d}, {it:r} > 1
                  {it:R}: 1 {it:x} {it:t}  或  {it:r} {it:x} {it:t}, {it:r} > 1
       {it:输出}:
                 {it:dU}: 1 {it:x} {it:d}  或  {it:r} {it:x} {it:d}, {it:r} > 1
                 {it:dR}: 1 {it:x} {it:t}  或  {it:r} {it:x} {it:t}, {it:r} > 1
             {it:result}: {it:void}

    {opt mvnormalderiv(L, U, R, dL, dU, dR)}:
        {it:输入}:
                  {it:L}: 1 {it:x} {it:d}  或  {it:r} {it:x} {it:d}, {it:r} > 1
                  {it:U}: 1 {it:x} {it:d}  或  {it:r} {it:x} {it:d}, {it:r} > 1
                  {it:R}: 1 {it:x} {it:t}  或  {it:r} {it:x} {it:t}, {it:r} > 1
       {it:输出}:
                 {it:dL}: 1 {it:x} {it:d}  或  {it:r} {it:x} {it:d}, {it:r} > 1
                 {it:dU}: 1 {it:x} {it:d}  或  {it:r} {it:x} {it:d}, {it:r} > 1
                 {it:dR}: 1 {it:x} {it:t}  或  {it:r} {it:x} {it:t}, {it:r} > 1
             {it:result}: {it:void}

    {opt mvnormalcvderiv(L, U, M, V, dL, dU, dM, dV)}:
        {it:输入}:
                  {it:L}: 1 {it:x} {it:d}  或  {it:r} {it:x} {it:d}, {it:r} > 1
                  {it:U}: 1 {it:x} {it:d}  或  {it:r} {it:x} {it:d}, {it:r} > 1
                  {it:M}: 1 {it:x} {it:d}  或  {it:r} {it:x} {it:d}, {it:r} > 1
                  {it:V}: 1 {it:x} {it:t}  或  {it:r} {it:x} {it:t}, {it:r} > 1
       {it:输出}:
                 {it:dL}: 1 {it:x} {it:d}  或  {it:r} {it:x} {it:d}, {it:r} > 1
                 {it:dU}: 1 {it:x} {it:d}  或  {it:r} {it:x} {it:d}, {it:r} > 1
                 {it:dM}: 1 {it:x} {it:d}  或  {it:r} {it:x} {it:d}, {it:r} > 1
                 {it:dV}: 1 {it:x} {it:t}  或  {it:r} {it:x} {it:t}, {it:r} > 1
             {it:result}: {it:void}

    {opt mvnormalderivqp(U, R, dU, dR, q)}:
        {it:输入}:
                  {it:U}: 1 {it:x} {it:d}  或  {it:r} {it:x} {it:d}, {it:r} > 1
                  {it:R}: 1 {it:x} {it:t}  或  {it:r} {it:x} {it:t}, {it:r} > 1
                  {it:q}: 1 {it:x} 1 
       {it:输出}:
                 {it:dU}: 1 {it:x} {it:d}  或  {it:r} {it:x} {it:d}, {it:r} > 1
                 {it:dR}: 1 {it:x} {it:t}  或  {it:r} {it:x} {it:t}, {it:r} > 1
             {it:result}: {it:void}

    {opt mvnormalderivqp(L, U, R, dL, dU, dR, q)}:
        {it:输入}:
                  {it:L}: 1 {it:x} {it:d}  或  {it:r} {it:x} {it:d}, {it:r} > 1
                  {it:U}: 1 {it:x} {it:d}  或  {it:r} {it:x} {it:d}, {it:r} > 1
                  {it:R}: 1 {it:x} {it:t}  或  {it:r} {it:x} {it:t}, {it:r} > 1
                  {it:q}: 1 {it:x} 1
       {it:输出}:
                 {it:dL}: 1 {it:x} {it:d}  或  {it:r} {it:x} {it:d}, {it:r} > 1
                 {it:dU}: 1 {it:x} {it:d}  或  {it:r} {it:x} {it:d}, {it:r} > 1
                 {it:dR}: 1 {it:x} {it:t}  或  {it:r} {it:x} {it:t}, {it:r} > 1
             {it:result}: {it:void}

    {opt mvnormalcvderivqp(L, U, M, V, dL, dU, dM, dV, q)}:
        {it:输入}:
                  {it:L}: 1 {it:x} {it:d}  或  {it:r} {it:x} {it:d}, {it:r} > 1
                  {it:U}: 1 {it:x} {it:d}  或  {it:r} {it:x} {it:d}, {it:r} > 1
                  {it:M}: 1 {it:x} {it:d}  或  {it:r} {it:x} {it:d}, {it:r} > 1
                  {it:V}: 1 {it:x} {it:t}  或  {it:r} {it:x} {it:t}, {it:r} > 1
                  {it:q}: 1 {it:x} 1
       {it:输出}:
                 {it:dL}: 1 {it:x} {it:d}  或  {it:r} {it:x} {it:d}, {it:r} > 1
                 {it:dU}: 1 {it:x} {it:d}  或  {it:r} {it:x} {it:d}, {it:r} > 1
                 {it:dM}: 1 {it:x} {it:d}  或  {it:r} {it:x} {it:d}, {it:r} > 1
                 {it:dV}: 1 {it:x} {it:t}  或  {it:r} {it:x} {it:t}, {it:r} > 1
             {it:result}: {it:void}


{marker source}{...}
{title:源代码}

{p 4 4 2}
函数为内置函数。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_mvnormal.sthlp>}