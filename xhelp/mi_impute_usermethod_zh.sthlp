{smcl}
{* *! version 1.2.3  10may2018}{...}
{vieweralsosee "[MI] mi impute usermethod" "mansection MI miimputeusermethod"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MI] Intro" "help mi_zh"}{...}
{vieweralsosee "[MI] Intro substantive" "help mi intro substantive"}{...}
{vieweralsosee "[MI] mi impute" "help mi_impute_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MI] mi estimate" "help mi_estimate_zh"}{...}
{viewerjumpto "Syntax" "mi_impute_usermethod_zh##syntax"}{...}
{viewerjumpto "Description" "mi_impute_usermethod_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mi_impute_usermethod_zh##linkspdf"}{...}
{viewerjumpto "Options" "mi_impute_usermethod_zh##options"}{...}
{viewerjumpto "Remarks and examples" "mi_impute_usermethod_zh##remarks"}{...}
{viewerjumpto "Stored results" "mi_impute_usermethod_zh##results"}{...}
{viewerjumpto "Acknowledgment" "mi_impute_usermethod_zh##ack"}
{help mi_impute_usermethod:English Version}
{hline}{...}
{p2colset 1 30 32 2}{...}
{p2col:{bf:[MI]} {it:mi impute usermethod} {hline 2}}用户定义的插补方法{p_end}
{p2col:}({mansection MI miimputeusermethod:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 19 2}{cmd:mi} {cmdab:imp:ute} {it:usermethod} {it:userspec}
[{cmd:,}
{it:{help mi_impute_usermethod##options_table:选项}}]

{marker usermethod}{...}
{phang}
{it:usermethod} 是你希望添加到 {cmd:mi impute} 命令中的方法名称。在命名 {cmd:mi impute} 方法时，您应该遵循与命名添加到 Stata 的程序相同的约定——不要选择“好听”的名称，因为这些名称可能会被 Stata 的官方方法将来使用。

{marker userspec}{...}
{phang}
{it:userspec} 是由用户定义的方法 {it:usermethod} 支持的插补模型的规范。它必须包括插补变量 {it:ivars}。它还可以包括自变量 {it:indepvars}、{help weight_zh} 和 {help if_zh:{it:if}} 限定符（如果这些内容也被 {it:usermethod} 支持的话）。{it:userspec} 的实际语法将具体取决于 {it:usermethod}。我们鼓励添加自己方法的用户遵循 {helpb mi impute} 的语法或 Stata 的通用 {help syntax_zh} 来设计其方法。

{marker options_table}{...}
{synoptset 22}{...}
{synopthdr:选项}
{synoptline}
{synopt: {it:impute_options}}任何 {helpb mi_impute##impopts:mi impute} 的选项，但不包括 {cmd:noupdate} 和 {cmd:by()} {p_end}
{synopt: {opt orderasis}}按指定顺序插补变量{p_end}
{synopt: {it:user_options}} {it:usermethod} 支持的其他选项{p_end}
{synoptline}
{p 4 6 2}
在使用 {cmd:mi} {cmd:impute} {it:usermethod} 之前，必须先使用 {cmd:mi set} 设置数据；参见 {manhelp mi_set MI:mi set}.{p_end}
{p 4 6 2}
在使用 {cmd:mi} {cmd:impute} {it:usermethod} 之前，必须将插补变量注册为 {cmd:imputed}；参见 {manhelp mi_set MI:mi set}.{p_end}


{marker description}{...}
{title:描述}

{pstd}
此条目描述如何将自己的插补方法添加到 {cmd:mi} {cmd:impute} 命令中。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection MI miimputeusermethodRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{it:impute_options} 包括 {cmd:add()}、 {cmd:replace}、 {cmd:rseed()}、 {cmd:double}、 {cmd:dots}、 {cmd:noisily}、 {cmd:nolegend}、 {cmd:force}；详细信息请参见 {manhelp mi_impute MI:mi impute}。

{phang}
{cmd:orderasis} 请求按指定顺序插补变量。默认情况下，变量按被观察到的数量从多到少进行插补。

{phang}
{it:user_options} 指定 {it:usermethod} 所支持的任何额外选项。


{marker remarks}{...}
{title:备注和示例}

{pstd}
将自己的方法添加到 {cmd:mi impute} 是相当简单的。假设您希望为 {cmd:mi impute} 添加一个名为 {cmd:mymethod} 的方法。

{phang}
1. 编写一个 ado 文件，其中包含一个名为 {cmd:mi_impute_cmd_mymethod_parse} 的 {help program_zh:program} 以解析您的插补模型。

{phang}
2. 编写一个 ado 文件，其中包含一个名为 {cmd:mi_impute_cmd_mymethod} 的 {help program_zh:program}，该程序将在所有插补变量上执行单次插补。

{phang}
3. 将 ado 文件放置在 Stata 可以找到的地方。

{pstd}
你完成了。现在您可以像使用其他官方 {cmd:mi impute} 方法一样在 {cmd:mi impute} 中使用 {cmd:mymethod}。{cmd:mi impute} 将负责多次执行插补步骤，并将其正确执行以符合任何 {help mi_styles_zh:{bf:mi} 样式}。

{pstd}
备注在以下标题下呈现：

{p 8 8 2}{help mi_impute_usermethod##introex:玩具示例：简单回归插补}{p_end}
{p 8 8 2}{help mi_impute_usermethod##steps:将新方法添加到 mi impute 的步骤}{p_end}
{p 12 12 2}{help mi_impute_usermethod##parserdef:编写插补解析器}{p_end}
{p 12 12 2}{help mi_impute_usermethod##initializerdef:编写初始化器}{p_end}
{p 12 12 2}{help mi_impute_usermethod##imputerdef:编写插补器}{p_end}
{p 12 12 2}{help mi_impute_usermethod##returndef:存储附加结果}{p_end}
{p 12 12 2}{help mi_impute_usermethod##cleanupdef:编写清理程序}{p_end}
{p 8 8 2}{help mi_impute_usermethod##examples:示例}{p_end}
{p 12 12 2}{help mi_impute_usermethod##exnaive_init:简单回归插补}{p_end}
{p 12 12 2}{help mi_impute_usermethod##exregress:单元回归插补}{p_end}
{p 12 12 2}{help mi_impute_usermethod##exmonotone:多元单调插补}{p_end}
{p 8 8 2}{help mi_impute_usermethod##glmacros:全局宏}{p_end}


{marker introex}{...}
{title:玩具示例：简单回归插补}

{pstd}
作为一个快速示例，让我们编写一个名为 {cmd:naivereg} 的方法，以执行简单回归插补，也称为随机回归插补，基于自变量 {it:xvars} 的单个变量 {it:ivar}。

{pstd}
首先，让我们描述我们的插补程序。

{phang}
1. 使用观察到的数据对 {it:ivar} 进行回归 {it:xvars}。

{phang}
2. 获取线性预测 {it:xb}。

{phang}
3. 用 {it:xb} 加上一个从 N(0,{it:sigma_mle}) 生成的随机误差替换 {it:ivar} 的缺失值，其中 {it:sigma_mle} 是估计的误差标准差。

{pstd}
现在，让我们编写我们的插补程序。我们创建一个名为 {cmd:mi_impute_cmd_naivereg.ado} 的 ado 文件，其中包含以下 Stata 程序：

{p 8 14 2}// 插补器{p_end}
{p 8 14 2}{cmd:program mi_impute_cmd_naivereg}{p_end}
{p 16 20 2}{cmd:version {ccl stata_version}}{p_end}
{p 16 20 2}/* 步骤 1：对观察到的数据进行回归 */{p_end}
{p 16 20 2}{cmd:quietly regress $MI_IMPUTE_user_ivar $MI_IMPUTE_user_xvars}{p_end}
{p 16 20 2}/* 步骤 2：计算线性预测 */{p_end}
{p 16 20 2}{cmd:tempvar xb}{p_end}
{p 16 20 2}{cmd:quietly predict double `xb', xb}{p_end}
{p 16 20 2}/* 步骤 3：替换缺失值 */{p_end}
{p 16 20 2}{cmd:quietly replace $MI_IMPUTE_user_ivar = `xb' + rnormal(0,e(rmse))} ///{p_end}
{p 26 30 2}{cmd:           if $MI_IMPUTE_user_miss==1}{p_end}
{p 8 14 2}{cmd:end}{p_end}

{pstd}
全局宏 {cmd:MI_IMPUTE_user_ivar} 和 {cmd:MI_IMPUTE_user_xvars} 分别包含插补变量和自变量的名称，而 {cmd:MI_IMPUTE_user_miss} 包含插补变量中的缺失值指标。 {help ereturn_zh} 标量 {cmd:e(rmse)} 包含在步骤 1 中使用的 {help regress_zh} 命令的估计误差标准差。 {helpb rnormal()} 函数用于生成来自正态分布的值。

{pstd}
除了插补器之外，我们还需要编写一个解析器程序，该程序将插补模型规范传递给 {cmd:mi impute}。我们创建一个名为 {cmd:mi_impute_cmd_naivereg_parse.ado} 的 ado 文件，其中包含以下简单程序：

{p 8 14 2}// 解析器{p_end}
{p 8 14 2}{cmd:program mi_impute_cmd_naivereg_parse}{p_end}
{p 16 20 2}{cmd:version {ccl stata_version}}{p_end}
{p 16 20 2}{cmd:syntax anything [, * ]}{p_end}
{p 16 20 2}{cmd:gettoken ivar xvars : anything}{p_end}
{p 16 20 2}{cmd:u_mi_impute_user_setup, ivars(`ivar') xvars(`xvars') `options'}{p_end}
{p 8 14 2}{cmd:end}{p_end}

{pstd}
解析器检索用户提供的关于插补和自变量的信息，并通过实用程序程序 {cmd:u_mi_impute_user_setup} 将其传递给 {cmd:mi impute}，稍后将讨论该程序。

{pstd}
现在我们可以在 {cmd:mi impute} 中使用 {cmd:naivereg}。仅供演示，我们将使用新方法为 {cmd:auto} 数据集中的 {cmd:rep78} 的缺失值进行插补。我们将使用完整变量 {cmd:mpg} 和 {cmd:weight} 作为预测变量。

{pstd}
我们加载数据，声明 {cmd:mi} 样式，并注册 {cmd:rep78} 作为插补变量。

{com}. sysuse auto, clear
{com}. mi set wide
{com}. mi register imputed rep78
{res}{txt}

{pstd}
现在我们在 {cmd:mi impute} 中使用新方法 {cmd:naivereg}。

{com}. mi impute naivereg rep78 mpg weight, add(2)
{res}{txt}
多重插补{txt}{col 45}{ralign 12:插补 }= {res}       2
{txt}{txt}用户方法 {cmd}naivereg{txt}{col 45}{ralign 12:添加 }= {res}       2
{txt}插补: {it:m}=1 到 {it:m}=2{txt}{col 45}{ralign 12:更新 }= {res}       0

{txt}{hline 19}{c TT}{hline 35}{hline 11}
{txt}{col 20}{c |}{center 46:  每个 {it:m} 的观察数}
{txt}{col 20}{c LT}{hline 35}{c TT}{hline 10}
{txt}{col 11}变量 {c |}{ralign 12:完整 }{ralign 13:不完整 }{ralign 10:插补 }{c |}{ralign 10:总计}
{hline 19}{c +}{hline 35}{c +}{hline 10}
{txt}{ralign 19:rep78 }{c |}{res}         69            5         5 {txt}{c |}{res}        74
{txt}{hline 19}{c BT}{hline 35}{c BT}{hline 10}
{p 0 1 1 66}(完整 + 不完整 = 总计；插补是填充观察数中的最小值){p_end}
{res}{txt}

{pstd}
我们使用 {cmd:mi impute} 的选项 {cmd:add()} 创建了两个插补，并从 {cmd:mi impute} 获取了标准输出。我们使用新方法 {cmd:naivereg} 插补了变量 {cmd:rep78} 的所有五个缺失值。

{pstd}
这只是一个简单的示例。您的插补模型可以复杂得多。有关更复杂的插补模型，请参见 {it:{help mi_impute_usermethod##examples:示例}}。


{marker steps}{...}
{title:将新方法添加到 mi impute 的步骤}

{pstd}
假设您想将自己的方法 {it:usermethod} 添加到 {cmd:mi} {cmd:impute} 命令中。请按照以下步骤操作：

{marker parser}{...}
{phang}
1. 创建一个解析器，即一个名为 {cmd:mi_impute_cmd_}{it:usermethod}{cmd:_parse} 的 {help program_zh:program}，并由 ado 文件 {cmd:mi_impute_cmd_}{it:usermethod}{cmd:_parse.ado} 定义，该解析器解析插补模型并检查用户特定选项的语法 {it:user_options}。参见 {it:{help mi_impute_usermethod##parserdef:编写插补解析器}}。

{marker initializer}{...}
{phang}
2. 可选地，创建一个初始化器，即一个名为 {cmd:mi_impute_cmd_}{it:usermethod}{cmd:_init} 的 {help program_zh:program}，并由 ado 文件 {cmd:mi_impute_cmd_}{it:usermethod}{cmd:_init.ado} 定义，该程序在观察到的数据上执行某些任务，仅执行一次。例如，在单调插补期间，可以仅使用观察到的数据一次估计模型参数。参见 {it:{help mi_impute_usermethod##initializerdef:编写初始化器}}。

{marker imputer}{...}
{phang}
3. 创建一个插补器，即一个名为 {cmd:mi_impute_cmd_}{it:usermethod} 的 {help program_zh:program}，并由 ado 文件 {cmd:mi_impute_cmd_}{it:usermethod}{cmd:.ado} 定义，该程序为所有插补变量执行一轮插补。参见 {it:{help mi_impute_usermethod##imputerdef:编写插补器}}。

{marker return}{...}
{phang}
4. 可选地，创建一个存储额外 {help return_zh:r()} 结果的 {help program_zh:program}，名称为 {cmd:mi_impute_cmd_}{it:usermethod}{cmd:_return}，并由 ado 文件 {cmd:mi_impute_cmd_}{it:usermethod}{cmd:_return.ado} 定义。参见 {it:{help mi_impute_usermethod##returndef:存储附加结果}}。

{marker cleanup}{...}
{phang}
5. 可选地，创建一个清理程序（或垃圾收集器），即一个名为 {cmd:mi_impute_cmd_}{it:usermethod}{cmd:_cleanup} 的 {help program_zh:program}，并由 ado 文件 {cmd:mi_impute_cmd_}{it:usermethod}{cmd:_cleanup.ado} 定义，该程序删除在解析、初始化或插补期间创建的所有中间变量、{help macro_zh:global macros}等。参见 {it:{help mi_impute_usermethod##cleanupdef:编写清理程序}}。

{phang}
6. 将您的所有程序放置在 Stata 可以找到的地方。

{pstd}
您现在可以与 {cmd:mi impute} 一起使用 {it:usermethod}，

{phang2}{cmd:. mi impute} {it:usermethod} ...{p_end}

{pstd}
并访问 {cmd:mi impute} 的任何 {help mi_impute##options:选项}（除了 {cmd:by()} 和 {cmd:noupdate}）。

{marker parserdef}{...}
{title:编写插补解析器}

{pstd}
解析器是解析插补模型规范 {it:userspec} 的程序，它将必要的信息传递给 {cmd:mi} {cmd:impute}，并检查用户指定的选项。它必须在名为 {cmd:mi_impute_cmd_}{it:usermethod}{cmd:_parse.ado} 的 ado 文件中定义。您可以使用 Stata 的任何解析实用程序，例如 {help syntax_zh} 命令来编写您的解析器。如果您在设计插补方法时遵循 {helpb mi impute} 的语法，用户会觉得更方便。

{pstd}
至少，您的解析器必须向 {cmd:mi impute} 提供有关插补变量的信息。这是通过实用程序命令 {cmd:u_mi_impute_user_setup} 的 {cmd:ivars()} 选项完成的：

{phang2}
{cmd: u_mi_impute_user_setup, ivars({varlist})} ...

{pstd}
您还可以提供其他信息，例如独立变量（完整预测因子）在选项 {cmd:xvars()} 中、权重、{it:if} 限定符等。

{pstd}
一个简单的单变量解析器可能如下所示。

{phang2}
{cmd:program mi_impute_cmd_}{it:usermethod}{cmd:_parse}{p_end}
	        {cmd:version} ...
                {cmd:syntax anything [if] [fw iw] [, * ]}
	        {cmd:gettoken ivar xvars : anything}
	        {cmd:u_mi_impute_user_setup `if' [`weight'`exp'],   ///}
			{cmd:ivars(`ivar') xvars(`xvars') `options'}
{phang2}{cmd:end}{p_end}

{pstd}
上述解析器对应于以下 {it:userspec}，

{phang2}
{it:{help varname_zh:ivar}} [{it:{help varlist_zh:indepvars}}] [{it:{help if_zh}}] {weight}

{pstd}
其中仅允许 {cmd:fweight}s 和 {cmd:iweight}s。

{pstd}
一个简单的多变量解析器可能如下所示。

{phang2}
{cmd:program mi_impute_cmd_}{it:usermethod}{cmd:_parse}{p_end}
	        {cmd:version} ...
                {cmd:syntax anything(equalok) [if] [fw iw] [, * ]}
	        {cmd:gettoken ivars xvars : anything, parse("=")}
	        {cmd:gettoken eq xvars : xvars, parse("=")}
	        {cmd:u_mi_impute_user_setup `if' [`weight'`exp'],   ///}
			{cmd:ivars(`ivars') xvars(`xvars') `options'}
{phang2}{cmd:end}{p_end}

{pstd}
该解析器对应于以下 {it:userspec}，

{phang2}
{it:{help varlist_zh:ivars}} [{cmd:=} {it:{help varlist_zh:indepvars}}] [{it:{help if_zh}}] {weight}

{pstd}
其中仅允许 {cmd:fweight}s 和 {cmd:iweight}s。

{pstd}
您还可以提供完整的预测因子、特定于每个插补变量的 {it:if} 限定符，以及控制插补变量的插补顺序。以下是实用程序程序的完整语法。

{p 8 19 2}{cmd:u_mi_impute_user_setup} [{it:{help if_zh}}] {weight}
[{cmd:,} {it:setup_options}] 

{synoptset 22 tabbed}{...}
{synopthdr:setup_options}
{synoptline}
{syntab:主}
{p2coldent :* {opth ivars(varlist)}}指定插补变量{p_end}
{synopt: {opth xvars(varlist)}}指定所有插补变量的完整预测因子{p_end}
{synopt: {cmd:xvars}{it:#}{cmd:(}{varlist}{cmd:)}}为 {it:#}th 插补变量指定完整预测因子；覆盖 {cmd:xvars()}{p_end}
{synopt: {cmd:if}{it:#}{cmd:(}{it:{help if_zh}}{cmd:)}}为 {it:#}th 插补变量指定 {it:if} 限定符（除了全局 {it:if}）{p_end}
{synopt: {cmd:weight}{it:#}{cmd:(}{it:{help weight_zh}}{cmd:)}}为 {it:#}th 插补变量指定权重；覆盖全局权重{p_end}
{synopt: {opt orderasis}}按指定顺序插补变量{p_end}
{synopt: [{cmdab:no:}]{opt fillmis:sing}}不要用缺失值替换当前的插补数据{p_end}
{synopt: {opt title1(string)}}指定主标题{p_end}
{synopt: {opt title2(string)}}指定副标题{p_end}
{synoptline}
{p 4 6 2}
* {opt ivars(varlist)} 是必需的。{p_end}

{phang}
{opth ivars(varlist)} 指定插补变量的名称。此选项是必需的。

{phang}
{opth xvars(varlist)} 指定所有插补变量的独立变量（完整预测因子）的名称。您可以使用 {cmd:xvars}{it:#}{cmd:()} 来覆盖 {it:#}th 插补变量的完整预测因子。

{phang}
{cmd:xvars}{it:#}{cmd:(}{varlist}{cmd:)} 指定 {it:#}th 插补变量的独立变量名称。此选项覆盖该变量的 {cmd:xvars()} 选项。如果未指定 {cmd:xvars}{it:#}{cmd:()}，则假定该变量的 {cmd:xvars()}（如果指定）。

{phang}
{cmd:if}{it:#}{cmd:(}{it:{help if_zh}}{cmd:)} 为 {it:#}th 插补变量指定 {it:if} 限定符。此选项与程序指定的全局 {it:if} 限定符一起使用，以为该变量定义插补样本。

{phang}
{cmd:weight}{it:#}{cmd:(}{it:{help weight_zh}}{cmd:)} 为 {it:#}th 插补变量指定权重。此选项覆盖程序指定的全局权重。如果未指定 {cmd:weight}{it:#}{cmd:()}，则使用该变量的全局权重（如果指定）。

{phang}
{cmd:orderasis} 请求按指定顺序插补变量。默认情况下，变量按被观察到的数量从多到少进行插补。

{phang}
{cmd:fillmissing} 或 {cmd:nofillmissing} 请求在插补之前将插补数据填充或不填充缺失值。默认是 {cmd:fillmissing}。此选项很少使用。

{phang}
{opt title1(string)} 指定主标题。默认是“多重插补”。

{phang}
{opt title2(string)} 指定副标题。默认是“用户方法：{it:usermethod}”。


{pstd}
{cmd:u_mi_impute_user_setup} 设置 {cmd:mi} {cmd:impute} 使用的某些全局宏；有关详细信息，请参见 {it:{help mi_impute_usermethod##glmacros:全局宏}}。


{marker initializerdef}{...}
{title:编写初始化器}

{pstd}
在 {cmd:mi} {cmd:impute} 的上下文中，初始化器是一个在插补之前对观察到的数据 {it:m}=0 执行一次的程序。此程序是可选的。如果选择编写初始化器，则必须在名为 {cmd:mi_impute_cmd_}{it:usermethod}{cmd:_init.ado} 的 ado 文件中定义。此程序在仅对观察到的数据执行的估计任务中很有用。

{pstd}
例如，单变量回归插补要求在插补之前对观察到的数据进行回归。这样的简单初始化器可以如下所示。

{phang2}
{cmd:program mi_impute_cmd_}{it:usermethod}{cmd:_init}{p_end}
	        {cmd:version} ...
		{cmd:quietly regress $MI_IMPUTE_user_ivar $MI_IMPUTE_user_xvars ///}
			{cmd:if $MI_IMPUTE_user_touse}
{phang2}{cmd:end}{p_end}


{marker imputerdef}{...}
{title:编写插补器}

{pstd}
插补器是对所有指定插补变量插补缺失值的程序。此程序是必需的，并且必须在名为 {cmd:mi_impute_cmd_}{it:usermethod}{cmd:.ado} 的 ado 文件中定义。{cmd:mi} {cmd:impute} 将多次执行此程序以生成多个插补数据集。

{pstd}
一个简单的单变量插补器可能如下所示。

{phang2}
{cmd:program mi_impute_cmd_}{it:usermethod}{p_end}
	        {cmd:version} ...
		{cmd:quietly replace $MI_IMPUTE_user_ivar =} ...  {cmd:///}
			{cmd:if $MI_IMPUTE_user_miss}
{phang2}{cmd:end}{p_end}


{marker returndef}{...}
{title:存储附加结果}

{pstd}
为了存储附加结果，除了 {cmd:mi} {cmd:impute} 提供的结果（请参见 {it:{help mi_impute_usermethod##results:存储结果}}），您需要创建一个名为 {cmd:mi_impute_cmd_}{it:usermethod}{cmd:_return} 的 {help program_zh:r-class program}。以下是一个示例。

{phang2}
{cmd:program mi_impute_cmd_}{it:usermethod}{cmd:_return, rclass}{p_end}
	        {cmd:version} ...
		{cmd:syntax [, myopt(real 0) * ]}
		{cmd:return scalar myopt = `myopt'}
{phang2}{cmd:end}{p_end}


{marker cleanupdef}{...}
{title:编写清理程序}

{pstd}
“清理”程序或垃圾收集器是插补过程结束时调用的程序，用于删除在解析、初始化或插补期间创建的任何中间结果，这些结果在程序完成时不会自动删除。例如，这些结果可能包括新变量（临时变量除外）、全局宏、估计结果的全局名称等。此程序是可选的，但在有需要手动清理的中间结果时强烈推荐使用。


{marker examples}{...}
{title:示例}

{marker exnaive_init}{...}
{title:简单回归插补}

{pstd}
回顾我们在 {it:{help mi_impute_usermethod##introex:玩具示例：简单回归插补}} 中的介绍示例。

{pstd}
{bf:初始化器}。我们可以通过将估计和插补任务分开来让插补程序更具计算效率。目前，每个插补中都执行回归。我们可以将这一步移动到初始化器中。

{p 8 14 2}// 初始化器 (naivereg) {p_end}
{p 8 14 2}{cmd:program mi_impute_cmd_naivereg_init}{p_end}
{p 16 20 2}{cmd:version {ccl stata_version}}{p_end}
{p 16 20 2}/* 步骤 1：对观察到的数据进行回归 */{p_end}
{p 16 20 2}{cmd:quietly regress $MI_IMPUTE_user_ivar $MI_IMPUTE_user_xvars}{p_end}
{p 8 14 2}{cmd:end}{p_end}

{pstd}
这是更新的插补器。

{p 8 14 2}// 插补器 (naivereg) {p_end}
{p 8 14 2}{cmd:program mi_impute_cmd_naivereg}{p_end}
{p 16 20 2}{cmd:version {ccl stata_version}}{p_end}
{p 16 20 2}/* 步骤 2：计算线性预测 */{p_end}
{p 16 20 2}{cmd:tempvar xb}{p_end}
{p 16 20 2}{cmd:quietly predict double `xb', xb}{p_end}
{p 16 20 2}/* 步骤 3：替换缺失值 */{p_end}
{p 16 20 2}{cmd:quietly replace $MI_IMPUTE_user_ivar = `xb'+rnormal(0,e(rmse))} ///{p_end}
{p 26 30 2}{cmd:           if $MI_IMPUTE_user_miss==1}{p_end}
{p 8 14 2}{cmd:end}{p_end}

{pstd}
现在，如果我们运行 {cmd:mi impute naivereg}，{cmd:regress} 命令将只对观察到的数据 {it:m}=0 运行一次。

{pstd}
{bf:if 限定符和权重}。我们还可以扩展我们的方法，以允许指定 {it:if} 限定符和，比如说，频率权重。

{p 8 14 2}// 解析器 (naivereg, if 和权重){p_end}
{p 8 14 2}{cmd:program mi_impute_cmd_naivereg_parse}{p_end}
{p 16 20 2}{cmd:version {ccl stata_version}}{p_end}
{p 16 20 2}{cmd:syntax anything [if] [fw] [, * ]}{p_end}
{p 16 20 2}{cmd:gettoken ivar xvars : anything}{p_end}
{p 16 20 2}{cmd:u_mi_impute_user_setup `if' [`weight'`exp'] ,  ///}{p_end}
{p 24 28 2}{cmd:ivars(`ivar') xvars(`xvars') `options'}{p_end}
{p 8 14 2}{cmd:end}{p_end}

{pstd}
我们更新了 {cmd:syntax} 语句，以允许 {it:if} 和频率权重，并将该信息传递给实用程序程序 {cmd:u_mi_impute_user_setup}。

{p 8 14 2}// 初始化器 (naivereg, if 和权重) {p_end}
{p 8 14 2}{cmd:program mi_impute_cmd_naivereg_init}{p_end}
{p 16 20 2}{cmd:version {ccl stata_version}}{p_end}
{p 16 20 2}/* 步骤 1：对观察到的数据进行回归 */{p_end}
{p 16 20 2}{cmd:quietly regress $MI_IMPUTE_user_ivar $MI_IMPUTE_user_xvars  ///}{p_end}
{p 24 28 2}{cmd:$MI_IMPUTE_user_weight if $MI_IMPUTE_user_touse}{p_end}
{p 8 14 2}{cmd:end}{p_end}

{pstd}
我们将在 {cmd:regress} 命令中包含包含有关权重和插补样本的信息的全局宏。

{p 8 14 2}// 插补器 (naivereg, if 和权重) {p_end}
{p 8 14 2}{cmd:program mi_impute_cmd_naivereg}{p_end}
{p 16 20 2}{cmd:version {ccl stata_version}}{p_end}
{p 16 20 2}/* 步骤 2：计算线性预测 */{p_end}
{p 16 20 2}{cmd:tempvar xb}{p_end}
{p 16 20 2}{cmd:quietly predict double `xb' if $MI_IMPUTE_user_touse, xb}{p_end}
{p 16 20 2}/* 步骤 3：替换缺失值 */{p_end}
{p 16 20 2}{cmd:quietly replace $MI_IMPUTE_user_ivar = `xb'+`sigma'*rnormal()} ///{p_end}
{p 26 30 2}{cmd:           if $MI_IMPUTE_user_miss==1}{p_end}
{p 8 14 2}{cmd:end}{p_end}

{pstd}
我们限制了线性预测的计算，以便适应由指定的 {it:if} 限定符确定的样本。更有效的方法是仅限制对缺失值的线性预测计算。这可以通过将 {cmd:if $MI_IMPUTE_user_touse} 行中的预测结果替换为 {cmd:if $MI_IMPUTE_user_miss} 来实现。

{pstd}
例如，我们现在可以分别为外国产车和国产车插补 {cmd:rep78} 并纳入频率权重。为了演示，我们将使用 {cmd:turn} 作为频率权重。

{com}. sysuse auto, clear
{com}. mi set wide
{com}. mi register imputed rep78
{res}{txt}

{com}. mi impute naivereg rep78 mpg weight [fweight=turn] if foreign==1, add(2)
{res}{txt}
多重插补{txt}{col 45}{ralign 12:插补 }= {res}       2
{txt}{txt}用户方法 {cmd}naivereg{txt}{col 45}{ralign 12:添加 }= {res}       2
{txt}插补: {it:m}=1 到 {it:m}=2{txt}{col 45}{ralign 12:更新 }= {res}       0

{txt}{hline 19}{c TT}{hline 35}{hline 11}
{txt}{col 20}{c |}{center 46:  每个 {it:m} 的观察数}
{txt}{col 20}{c LT}{hline 35}{c TT}{hline 10}
{txt}{col 11}变量 {c |}{ralign 12:完整 }{ralign 13:不完整 }{ralign 10:插补 }{c |}{ralign 10:总计}
{hline 19}{c +}{hline 35}{c +}{hline 10}
{txt}{ralign 19:rep78 }{c |}{res}       74           3        3 {txt}{c |}{ res}       77
{txt}{hline 19}{c BT}{hline 35}{c BT}{hline 10}
{p 0 1 1 66}(完整 + 不完整 = 总计；插补是填充观察数中的最小值。){p_end}
{res}{txt}
{com}. mi impute naivereg rep78 mpg weight [fweight=turn] if foreign==0, replace
{res}{txt}
多重插补{txt}{col 45}{ralign 12:插补 }= {res}       2
{txt}{txt}用户方法 {cmd}naivereg{txt}{col 45}{ralign 12:添加 }= {res}       0
{txt}插补: {it:m}=1 到 {it:m}=2{txt}{col 45}{ralign 12:更新 }= {res}       2

{txt}{hline 19}{c TT}{hline 35}{hline 11}
{txt}{col 20}{c |}{center 46:  每个 {it:m} 的观察数}
{txt}{col 20}{c LT}{hline 35}{c TT}{hline 10}
{txt}{col 11}变量 {c |}{ralign 12:完整 }{ralign 13:不完整 }{ralign 10:插补 }{c |}{ralign 10:总计}
{hline 19}{c +}{hline 35}{c +}{hline 10}
{txt}{ralign 19:rep78 }{c |}{res}       2004          150       150 {txt}{c |}{ res}      2154
{txt}{hline 19}{c BT}{hline 35}{c BT}{hline 10}
{p 0 1 1 66}(完整 + 不完整 = 总计；插补是填充观察数中的最小值。){p_end}
{res}{txt}


{marker exregress}{...}
{title:单元回归插补}

{pstd}
在 {it:{help mi_impute_usermethod##exnaive_init:简单回归插补}} 的示例中，我们添加了一个新方法 {cmd:naivereg}。我们称这个插补方法为简单，是因为它在计算线性预测和模拟插补值时，没有考虑关于系数和误差标准差估计的不确定性。

{pstd}
让我们添加一个新方法 {cmd:myregress}，改进 {cmd:naivereg} 方法。解析器和初始化器保持不变（只需将其重命名为 {cmd:mi_impute_cmd_myregress_parse} 和 {cmd:mi_impute_cmd_myregress_init}）。然而，插补器将发生重大变化。在我们开始编程任务之前，让我们回顾一下在 
{it:{help mi_impute_usermethod##introex:玩具示例：简单回归插补}} 中描述的插补程序。

{pstd}
步骤 2 的线性预测是使用步骤 1 的回归系数的最大似然估计 {it:beta_mle} 计算的。此外，随机正态变量是使用误差标准差的最大似然估计 {it:sigma_mle} 生成的。正确的回归插补模拟一组新参数 {it:beta} 和 {it:sigma}，这些参数来自各自的后验分布，并用于在步骤 2 和步骤 3 中计算结果。让我们更新我们的插补程序。

{phang}
1. 使用观察到的数据对 {it:ivar} 进行回归 {it:xvars}。

{phang}
2. 从其各自的后验分布中模拟新的回归系数 {it:beta} 和误差标准差 {it:sigma}，这些分布基于它们的最大似然估计 {it:beta_mle} 和 {it:sigma_mle}。

{phang}
3. 使用新的回归系数 {it:beta} 获取线性预测 {it:xb}。

{phang}
4. 用 {it:xb} 加上从 N(0,{it:sigma}) 生成的随机误差替换 {it:ivar} 的缺失值。

{pstd}
现在，让我们更新我们的插补器。

{p 8 14 2}// 插补器 (myregress) {p_end}
{p 8 14 2}{cmd:program mi_impute_cmd_myregress, eclass}{p_end}
{p 16 20 2}{cmd:version {ccl stata_version}}{p_end}
{p 16 20 2}/* 步骤 2：模拟新的 {it:beta} 和 {it:sigma} */{p_end}
{p 16 20 2}{cmd:tempname sigma beta sigma_mle beta_mle vce_chol rnorm}{p_end}
{p 16 20 2}{cmd:matrix `beta_mle' = e(b)}{p_end}
{p 16 20 2}{cmd:scalar `sigma_mle' = e(rmse)}{p_end}
{p 16 20 2}{cmd:matrix `vce_chol' = cholesky(e(V))/`sigma_mle'}{p_end}
{p 16 20 2}{cmd:local ncols = colsof(`beta_mle')}{p_end}
{p 16 20 2}/* 从后验分布抽取 {it:beta} 和 {it:sigma} */{p_end}
{p 16 20 2}{cmd:scalar `sigma' = `sigma_mle'*sqrt(e(df_r)/rchi2(e(df_r)))}{p_end}
{p 16 20 2}{cmd:mata: st_matrix("`rnorm'", rnormal(`ncols',1,0,1))}{p_end}
{p 16 20 2}{cmd:matrix `beta' = `beta_mle'+(`sigma'*(`vce_chol'*`rnorm'))'}{p_end}
{p 16 20 2}/* 步骤 3：计算线性预测 */{p_end}
{p 16 20 2}{cmd:ereturn repost b = `beta'} // repost 新的 {it:beta}{p_end}
{p 16 20 2}{cmd:tempvar xb}{p_end}
{p 16 20 2}{cmd:quietly predict double `xb' if $MI_IMPUTE_user_miss, xb}{p_end}
{p 16 20 2}{cmd:ereturn repost b = `beta_mle'} // repost 回 old {it:beta_mle}{p_end}
{p 16 20 2}/* 步骤 4：替换缺失值 */{p_end}
{p 16 20 2}{cmd:quietly replace $MI_IMPUTE_user_ivar = `xb'+`sigma'*rnormal()} ///{p_end}
{p 26 30 2}{cmd:           if $MI_IMPUTE_user_miss==1}{p_end}
{p 8 14 2}{cmd:end}{p_end}

{pstd}
我们的新插补器复杂得多。在步骤 2 中，我们生成一个新的（临时的）系数矩阵 {cmd:`beta'} 和一个包含新误差标准差的临时标量。在步骤 3 中，我们 repost 新系数到 {help ereturn_zh:e()} 结果，以获得正确的线性预测，并将旧系数 repost 回以供下一次插补使用。在步骤 4 中，我们使用新的 {cmd:`sigma'} 生成随机误差。

{pstd}
我们可以检查，只要使用相同的随机数种子，就可以获得与 Stata 官方 {helpb mi impute regress} 命令相同的插补值。例如，

{cmd:. sysuse auto, clear}
{cmd:. mi set wide}
{cmd:. mi register imputed rep78}

{cmd:. mi impute myregress rep78 mpg weight, add(1) rseed(234)}
{cmd:. mi impute regress rep78 mpg weight, add(1) rseed(234)}

{cmd:. mi xeq 1 2: summarize rep78}
{res}{txt}

{marker exmonotone}{...}
{title:多元单调插补}

{pstd}
我们之前的示例演示了单变量插补——对单个变量进行插补。在这里我们展示一个对具有单调缺失值模式的变量进行多元插补的示例。为简单起见，我们将考虑使用新方法 {cmd:mymonreg} 对两个变量进行插补。

{pstd}
我们从一个解析器开始。

{p 8 14 2}// 插补器 (mymonreg) {p_end}
{p 8 14 2}{cmd:program mi_impute_cmd_mymonreg_parse}{p_end}
{p 16 20 2}{cmd:version {ccl stata_version}}{p_end}
{p 16 20 2}{cmd:syntax anything(equalok) [if] [, * ]}{p_end}
{p 16 20 2}{cmd:gettoken ivars xvars : anything, parse("=")}{p_end}
{p 16 20 2}{cmd:gettoken eq xvars : xvars, parse("=")}{p_end}
{p 16 20 2}{cmd:u_mi_impute_user_setup `if', ivars(`ivars') xvars(`xvars') `options'}{p_end}
{p 8 14 2}{cmd:end}{p_end}

{pstd}
我们用等号（{cmd:=}）将多个插补变量与完整预测因子分开。将使用相同的完整预测因子来插补所有插补变量。

{p 8 14 2}// 初始化器 (mymonreg) {p_end}
{p 8 14 2}{cmd:program mi_impute_cmd_mymonreg_init}{p_end}
{p 16 20 2}{cmd:version {ccl stata_version}}{p_end}
{p 16 20 2}/* 对每个插补变量在观察到的数据上进行回归并存储估计结果 */{p_end}
{p 16 20 2}{cmd:quietly regress $MI_IMPUTE_user_ivar1{space 18}///}{p_end}
{p 26 30 2}{cmd:$MI_IMPUTE_user_xvars1 if $MI_IMPUTE_user_touse1}{p_end}
{p 16 20 2}{cmd:quietly estimates store myreg1}{p_end}
{p 16 20 2}{cmd:quietly regress $MI_IMPUTE_user_ivar2{space 18}///}{p_end}
{p 26 30 2}{cmd:$MI_IMPUTE_user_ivar1 $MI_IMPUTE_user_xvars2 ///}{p_end}
{p 26 30 2}{cmd:if $MI_IMPUTE_user_touse2}{p_end}
{p 16 20 2}{cmd:quietly estimates store myreg2}{p_end}
{p 8 14 2}{cmd:end}{p_end}

{pstd}
使用多个插补变量时，{cmd:mi impute} 会根据缺失值从少到多自动对它们进行排序。在我们的示例中，{cmd:MI_IMPUTE_user_ivar1} 将包含缺失值最少的插补变量的名称，而 {cmd:MI_IMPUTE_user_ivar2} 将包含缺失值最多的变量的名称。您可以使用 {cmd:orderasis} 选项来防止 {cmd:mi} {cmd:impute} 对变量进行排序。注意，在单调插补期间，之前插补的变量会与完整预测因子一起用作后续插补变量的预测因子。因此，我们使用 {cmd:MI_IMPUTE_user_ivar1} 作为 {cmd:MI_IMPUTE_user_ivar2} 的额外预测因子。

{pstd}
为了避免在每个插补数据集中重新调整模型，我们将估计结果存储为 {cmd:myreg1} 和 {cmd:myreg2}。在插补结束时，我们有责任从内存中删除这些估计结果。

{pstd}
在插补期间，我们将需要对每个插补变量应用在 {it:{help mi_impute_usermethod##exregress:单元回归插补}} 中描述的回归插补步骤。为了简化此任务，我们可以在插补器中创建一个执行这些步骤的子程序 {cmd:ImputeIvar}。然后，我们的插补器可以看起来像这样。

{p 8 14 2}// 插补器 (mymonreg) {p_end}
{p 8 14 2}{cmd:program mi_impute_cmd_mymonreg}{p_end}
{p 16 20 2}{cmd:version {ccl stata_version}}{p_end}
{p 16 20 2}{cmd:ImputeIvar 1 myreg1}{p_end}
{p 16 20 2}{cmd:ImputeIvar 2 myreg2}{p_end}
{p 8 14 2}{cmd:end}{p_end}

{p 8 14 2}// 在 mi_impute_cmd_mymonreg.ado 中定义的子程序{p_end}
{p 8 14 2}{cmd:program ImputeIvar, eclass}{p_end}
{p 16 20 2}{cmd:args index estres}{p_end}
{p 16 20 2}/* 加载相应的估计结果 */{p_end}
{p 16 20 2}{cmd:quietly estimates restore `estres'}{p_end}
{p 16 20 2}/* 步骤 2：模拟新的 {it:beta} 和 {it:sigma} */{p_end}
{p 16 20 2}{cmd:tempname sigma beta sigma_mle beta_mle vce_chol rnorm}{p_end}
{p 16 20 2}{cmd:matrix `beta_mle' = e(b)}{p_end}
{p 16 20 2}{cmd:scalar `sigma_mle' = e(rmse)}{p_end}
{p 16 20 2}{cmd:matrix `vce_chol' = cholesky(e(V))/`sigma_mle'}{p_end}
{p 16 20 2}{cmd:local ncols = colsof(`beta_mle')}{p_end}
{p 16 20 2}/* 从后验分布抽取 {it:beta} 和 {it:sigma} */{p_end}
{p 16 20 2}{cmd:scalar `sigma' = `sigma_mle'*sqrt(e(df_r)/rchi2(e(df_r)))}{p_end}
{p 16 20 2}{cmd:mata: st_matrix("`rnorm'", rnormal(`ncols',1,0,1))}{p_end}
{p 16 20 2}{cmd:matrix `beta' = `beta_mle'+(`sigma'*(`vce_chol'*`rnorm'))'}{p_end}
{p 16 20 2}/* 步骤 3：计算线性预测 */{p_end}
{p 16 20 2}{cmd:ereturn repost b = `beta'} // repost 新的 {it:beta}{p_end}
{p 16 20 2}{cmd:tempvar xb}{p_end}
{p 16 20 2}{cmd:quietly predict double `xb' if ${MI_IMPUTE_user_miss`index'}, xb}{p_end}
{p 16 20 2}{cmd:ereturn repost b = `beta_mle'} // repost 回 old {it:beta_mle}{p_end}
{p 16 20 2}/* 步骤 4：替换缺失值 */{p_end}
{p 16 20 2}{cmd:quietly replace ${MI_IMPUTE_user_ivar`index'} = `xb' +  ///}{p_end}
{p 24 28 2}{cmd:rnormal(0,`sigma') if ${c -(}MI_IMPUTE_user_miss`index'{c )-}==1}{p_end}
{p 8 14 2}{cmd:end}{p_end}

{pstd}
{cmd:ImputeIvar} 子程序几乎与单元回归插补器相同，唯一的区别是我们将全局宏替换为特定于每个插补变量的类似物。例如，我们将 {cmd:MI_IMPUTE_user_ivar} 替换为 {cmd:MI_IMPUTE_user_ivar`index'}，其中局部宏 {cmd:`index'} 将包含值 1 或 2。我们还将相应的估计结果名称传递给子程序。

{pstd}
最后，我们编写一个清理程序，以从内存中删除初始化期间创建的估计结果。

{p 8 14 2}// 清理程序 (mymonreg) {p_end}
{p 8 14 2}{cmd:program mi_impute_cmd_mymonreg_cleanup}{p_end}
{p 16 20 2}{cmd:version {ccl stata_version}}{p_end}
{p 16 20 2}{cmd:capture estimates drop myreg1 myreg2}{p_end}
{p 8 14 2}{cmd:end}{p_end}

{pstd}
返回到我们的 {cmd:auto} 示例中，我们可以替换 {cmd:rep78} 和 {cmd:mpg} 的缺失值。

{com}. sysuse auto, clear
{com}. quietly replace mpg = . in 3
{com}. mi set wide
{com}. mi register imputed rep78 mpg
{res}{txt}

{com}. mi impute mymonreg rep78 mpg = weight, add(1)
{res}{txt}
多重插补{txt}{col 45}{ralign 12:插补 }= {res}       1
{txt}{txt}用户方法 {cmd}mymonreg{txt}{col 45}{ralign 12:添加 }= {res}       1
{txt}插补: {it:m}=1{txt}{col 45}{ralign 12:更新 }= {res}       0

{txt}{hline 19}{c TT}{hline 35}{hline 11}
{txt}{col 20}{c |}{center 46:  每个 {it:m} 的观察数}
{txt}{col 20}{c LT}{hline 35}{c TT}{hline 10}
{txt}{col 11}变量 {c |}{ralign 12:完整 }{ralign 13:不完整 }{ralign 10:插补 }{c |}{ralign 10:总计}
{hline 19}{c +}{hline 35}{c +}{hline 10}
{txt}{ralign 19:rep78 }{c |}{res}         69            5         5 {txt}{c |}{res}        74
{txt}{ralign 19:mpg }{c |}{res}         73            1         1 {txt}{c |}{res}        74
{txt}{hline 19}{c BT}{hline 35}{c BT}{hline 10}
{p 0 1 1 66}(完整 + 不完整 = 总计；插补是填充观察数中的最小值。){p_end}
{res}{txt}


{marker glmacros}{...}
{title:全局宏}

{pstd}
{cmd:mi impute} {it:usermethod} 存储全局宏，程序员可以使用这些宏来创建插补方法。这些全局宏是 {cmd:MI_IMPUTE_user_}{it:name}，其中 {it:name} 在下文中定义。全局宏 {cmd:MI_IMPUTE_user} 对于所有用户定义的插补方法被设置为 1，对于所有官方插补方法设置为 0。

{synoptset 22 tabbed}{...}
{synopthdr:{it:name}}
{synoptline}
{synopt: {cmd:method}}插补方法名称{p_end}
{synopt: {cmd:user_options}}方法特定选项{p_end}
{synopt: {cmd:k_ivars}}指定的插补变量总数（完整和不完整）{p_end}
{synopt: {cmd:allivars}}所有指定插补变量的名称（完整和不完整）{p_end}
{synopt: {cmd:k_ivarsinc}}不完整插补变量的数量{p_end}
{synopt: {cmd:ivarsinc}}原始顺序中不完整插补变量的名称{p_end}
{synopt: {cmd:ivars}} {cmd:ivarsinc} 同义词{p_end}
{synopt: {cmd:ivarscomplete}}原始顺序中完整插补变量的名称{p_end}
{synopt: {cmd:ivarsincord}}按缺失值从少到多排列的不完整插补变量的名称{p_end}
{synopt: {cmd:ordind}} 有序插补变量的索引{p_end}
{synopt: {cmd:incordind}} 按顺序不完整插补变量的索引{p_end}
{synopt: {cmd:pattern}} {cmd:monotone} 或 {cmd:nonmonotone} 模式，其中包含所有指定插补变量对于全局插补样本{p_end}
{synopt: {cmd:ivar}{it:#}}第 {it:#} 个不完整插补变量的名称{p_end}
{synopt: {cmd:ivar}} {cmd:ivar1} 的同义词；仅存储一次插补变量时使用{p_end}
{synopt: {cmd:xvars}}所有不完整插补变量的完整预测因子的名称{p_end}
{synopt: {cmd:xvars}{it:#}}第 {it:#} 个不完整插补变量的完整预测因子的名称{p_end}
{synopt: {cmd:weight}}全局权重表达式{p_end}
{synopt: {cmd:weight}{it:#}}第 {it:#} 个插补变量的权重表达式{p_end}
{synopt: {cmd:touse}}全局插补样本的指示器{p_end}
{synopt: {cmd:touse}{it:#}}第 {it:#} 个插补变量的插补样本的指示器{p_end}
{synopt: {cmd:tousevars}}所有插补样本指示器的名称{p_end}
{synopt: {cmd:miss}{it:#}}第 {it:#} 个插补变量的缺失值指示器{p_end}
{synopt: {cmd:miss}} {cmd:miss1} 的同义词；仅存储一次插补变量时使用{p_end}
{synopt: {cmd:missvars}}所有缺失值指示器的名称{p_end}
{synopt: {cmd:m}}当前插补编号{p_end}
{synopt: {cmd:quietly}}包含 {cmd:quietly}，除非指定了 {cmd:mi impute} 的选项 {cmd:noisily}{p_end}
{synopt: {cmd:opt_add}}选项 {cmd:add()} 的内容{p_end}
{synopt: {cmd:opt_replace}}选项 {cmd:replace} 的内容{p_end}
{synopt: {cmd:opt_rseed}}选项 {cmd:rseed()} 的内容{p_end}
{synopt: {cmd:opt_double}}选项 {cmd:double} 的内容{p_end}
{synopt: {cmd:opt_dots}}选项 {cmd:dots} 的内容{p_end}
{synopt: {cmd:opt_noisily}}选项 {cmd:noisily} 的内容{p_end}
{synopt: {cmd:opt_nolegend}}选项 {cmd:nolegend} 的内容{p_end}
{synopt: {cmd:opt_force}}选项 {cmd:force} 的内容{p_end}
{synopt: {cmd:opt_orderasis}}选项 {cmd:orderasis} 的内容{p_end}
{synoptline}

{pstd}
您可能需要定义自己的全局宏。在这种情况下，您需要为所有全局宏使用前缀 {cmd:MI_IMPUTE_userdef_} 以避免与 {cmd:mi impute} 的内部全局宏冲突。


{marker results}{...}
{title:存储结果}

{pstd}
{cmd:mi impute} {it:usermethod} 在 {cmd:r()} 中存储以下内容：

{synoptset 25 tabbed}{...}
{p2col 5 25 29 2: 标量}{p_end}
{synopt:{cmd:r(M)}}插补的总数{p_end}
{synopt:{cmd:r(M_add)}}添加的插补数量{p_end}
{synopt:{cmd:r(M_update)}}更新的插补数量{p_end}
{synopt:{cmd:r(k_ivars)}}插补变量的数量{p_end}
{synopt:{cmd:r(N_g)}}插补组的数量{p_end}

{synoptset 25 tabbed}{...}
{p2col 5 25 29 2: 宏}{p_end}
{synopt:{cmd:r(method)}}插补方法的名称（{it:usermethod}）{p_end}
{synopt:{cmd:r(ivars)}}插补变量的名称{p_end}
{synopt:{cmd:r(rngstate)}}使用的随机数状态{p_end}

{synoptset 25 tabbed}{...}
{p2col 5 25 29 2: 矩阵}{p_end}
{synopt:{cmd:r(N)}}插补样本中的观察数量{p_end}
{synopt:{cmd:r(N_complete)}}插补样本中的完整观察数量{p_end}
{synopt:{cmd:r(N_incomplete)}}插补样本中的不完整观察数量{p_end}
{synopt:{cmd:r(N_imputed)}}插补样本中的插补观察数量{p_end}

{pstd}
您还可以存储自己的结果；有关详细信息，请参见 {it:{help mi_impute_usermethod##returndef:存储附加结果}}。


{marker ack}{...}
{title:致谢}

{pstd}
该功能的发展部分得到了世界银行的支持。{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mi_impute_usermethod.sthlp>}