{smcl}
{* *! version 1.1.7  29aug2018}{...}
{vieweralsosee "[P] makecns" "mansection P makecns"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] constraint" "help constraint_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] cnsreg" "help cnsreg_zh"}{...}
{vieweralsosee "[P] ereturn" "help ereturn_zh"}{...}
{vieweralsosee "[P] macro (local)" "help local"}{...}
{vieweralsosee "[P] matrix" "help matrix_zh"}{...}
{vieweralsosee "[P] matrix get" "help get()"}{...}
{vieweralsosee "[R] ml" "help ml_zh"}{...}
{viewerjumpto "Syntax" "makecns_zh##syntax"}{...}
{viewerjumpto "Description" "makecns_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "makecns_zh##linkspdf"}{...}
{viewerjumpto "Options" "makecns_zh##options"}{...}
{viewerjumpto "Example" "makecns_zh##example"}{...}
{viewerjumpto "Stored results" "makecns_zh##results"}
{help makecns:English Version}
{hline}{...}
{p2colset 1 16 18 2}{...}
{p2col:{bf:[P] makecns} {hline 2}}约束估计{p_end}
{p2col:}({mansection P makecns:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

    构建约束

{p 8 15 2}
{cmd:makecns}
	[{it:{help numlist_zh}}|{it:matname}]
	[{cmd:,} {it:options}]


    创建约束矩阵 

{p 8 15 2}
{cmd:matcproc} {it:T a C}


{phang}
{it:numlist} 是由空格或短横线分隔的约束编号列表； {it:matname} 是表示约束的现有矩阵，并且必须比 {hi:e(b)} 和 {hi:e(V)} 矩阵多一列。

{phang}
{it:T}、{it:a} 和 {it:C} 是新矩阵或现有矩阵的名称。

{synoptset 12}{...}
{synopthdr}
{synoptline}
{synopt:{opt nocnsnote:s}}在约束被丢弃时不显示注释{p_end}
{synopt:{opt di:splaycns}}以可读格式显示系统存储的约束矩阵{p_end}
{synopt:{opt r}}返回 {hi:r()} 中接受的约束；此选项覆盖 {opt displaycns}{p_end}
{synoptline}
{p2colreset}{...}


{marker description}{...}
{title:描述}

{pstd}
{cmd:makecns} 是一个程序员命令，便于向估计命令添加约束。

{pstd}
{cmd:makecns} 将创建一个约束矩阵，并在因错误而丢弃每个约束时显示注释。当不带参数调用时，{cmd:makecns} 将添加基准水平、空水平和省略系数所暗示的缺失因子变量约束。约束矩阵存储在 {hi:e(Cns)} 中。

{pstd}
{cmd:matcproc} 返回对执行约束估计有帮助的矩阵，包括约束矩阵。

{pstd}
如果您仅仅想在支持约束估计的命令中使用约束，请参见 {manhelp constraint R}。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection P makecnsRemarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{cmd:nocnsnotes} 防止在约束被丢弃时显示注释。

{phang}
{cmd:displaycns} 以可读形式显示系统存储的约束矩阵。

{phang}
{cmd:r} 在 {cmd:r()} 中返回接受的约束。此选项覆盖 {cmd:displaycns}。


{marker example}{...}
{title:示例}

{pstd}
这里是使用 {cmd:makecns} 进行约束估计的程序大纲：

{cmd}{...}
	program {it:myest}, eclass properties(...)
		version {ccl stata_version}
		if replay() {	// {it:重放结果}
			if ("`e(cmd)'" != "{it:myest}") error 301
			syntax [, Level(cilevel) ]
                        makecns , displaycns
		}
		else {		// {it:拟合模型}
			syntax {it:whatever} [,			     ///
				{it:whatever}			     ///
				Constraints(string)	    	///
				Level(cilevel)			///
			]
			// {it:用户估计请求的任何其他解析}
			tempname b V C T a bc Vc
			local p={it:参数的数量}
			// {it:定义模型}（{it:设置行和列}
			// {it:名称）} {it:在 `b' 中}
			if "`constraints'" != "" {
				matrix `V' = `b''*`b'
				ereturn post `b' `V'	// {it:一个虚拟解}
				makecns `constraints', display
				matcproc `T' `a' `C'
				// {it:在 `bc' 和 `Vc' 中获得解}
				matrix `b' = `bc'*`T'' + `a'    // {it:注意主}
				matrix `V' = `T'*`Vc'*`T''	// {it:注意主}
				ereturn post `b' `V' `C', {it:options}
			}
			else {
				// {it:在 `b' 和 `V' 中获得标准解}
				ereturn post `b' `V', {it:options}
			}
			// {it:存储您想在 e() 中的任何其他信息}
			ereturn local cmd "{it:myest}"
		}
		// {it:在系数表上方输出任何头信息}
		ereturn display, level(`level')
	end
{reset}{txt}{...}


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:makecns} 在 {cmd:r()} 中存储以下信息：

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: 标量}{p_end}
{synopt:{cmd:r(k_autoCns)}}基准、空和省略约束的数量{p_end}

{p2col 5 15 19 2: 宏}{p_end}
{synopt:{cmd:r(clist)}}使用的约束（numlist 或矩阵名称）{p_end}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <makecns.sthlp>}