{smcl}
{* *! version 1.3.4  15may2018}{...}
{vieweralsosee "[FN] 矩阵函数" "mansection FN Matrixfunctions"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[FN] 按类别的函数" "help functions_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] egen" "help egen_zh"}{...}
{vieweralsosee "[D] generate" "help generate_zh"}{...}
{vieweralsosee "[M-4] 入门" "help m4_intro_zh"}{...}
{findalias asfrfunctions}{...}
{findalias asfrmatfunc}{...}
{viewerjumpto "示例" "matrix_functions_zh##examples"}
{help matrix_functions:English Version}
{hline}{...}
{p2colset 1 26 28 2}{...}
{p2col:{bf:[FN] 矩阵函数}}
{p_end}
{p2col:({mansection FN Matrixfunctions:查看完整的 PDF 手册条目})}{p_end}
{p2colreset}{...}


{marker matrix}{...}
{title:返回矩阵的矩阵函数}

包含 help f_cholesky

包含 help f_corr

包含 help f_diag

包含 help f_get

包含 help f_hadamard

包含 help f_i

包含 help f_inv

包含 help f_invsym

包含 help f_j

包含 help f_matuniform

包含 help f_nullmat

包含 help f_sweep

包含 help f_vec

包含 help f_vecdiag


{marker scalar}{...}
{title:返回标量的矩阵函数}

包含 help f_coleqnumb

包含 help f_colnfreeparms

包含 help f_colnumb

包含 help f_colsof

包含 help f_det

包含 help f_diag0cnt

包含 help f_el

包含 help f_issymmetric

包含 help f_matmissing

包含 help f_mreldif

包含 help f_roweqnumb

包含 help f_rownfreeparms

包含 help f_rownumb

包含 help f_rowsof

包含 help f_trace


{marker examples}{...}
{title:示例}

{phang}{cmd:. matrix myid = I(3)}{p_end}
{phang}{cmd:. matrix list myid}

{phang}{cmd:. matrix new = J(2,3,0)}{p_end}
{phang}{cmd:. matrix list new}

{phang}{cmd:. matrix A = (1,2\2,5)}{p_end}
{phang}{cmd:. matrix Ainv = invsym(A)}{p_end}
{phang}{cmd:. matrix list Ainv}

{phang}{cmd:. matrix L = cholesky(4*I(2) + A'*A)}{p_end}
{phang}{cmd:. matrix list L}

{phang}{cmd:. matrix B = (1,5,9\2,1,7\3,5,1)}{p_end}
{phang}{cmd:. matrix Binv = inv(B)}{p_end}
{phang}{cmd:. matrix list Binv}

{phang}{cmd:. matrix C = sweep(B,1)}{p_end}
{phang}{cmd:. matrix list C}

{phang}{cmd:. matrix C = sweep(C,1)}{p_end}
{phang}{cmd:. matrix list C}

{phang}{cmd:. matrix Cov = (36.6598,-3596.48\-3596.48,604030)}{p_end}
{phang}{cmd:. matrix R = corr(Cov)}{p_end}
{phang}{cmd:. matrix list R}

{phang}{cmd:. matrix d = (1,2,3)}{p_end}
{phang}{cmd:. matrix D = diag(d)}{p_end}
{phang}{cmd:. matrix list D}

{phang}{cmd:. matrix e = vec(D)}{p_end}
{phang}{cmd:. matrix list e}

{phang}{cmd:. matrix f = vecdiag(D)}{p_end}
{phang}{cmd:. matrix list f}

{phang}{cmd:. matrix G = diag(inv(B) * vecdiag(d) + 4*sweep(B+J(3,3,10),2)'*I(3))'}{p_end}
{phang}{cmd:. matrix list G}

{phang}{cmd:. matrix U = matuniform(3,4)}{p_end}
{phang}{cmd:. matrix list U}

{phang}{cmd:. matrix H = hadamard(B,C)}{p_end}
{phang}{cmd:. matrix list H}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <matrix_functions.sthlp>}