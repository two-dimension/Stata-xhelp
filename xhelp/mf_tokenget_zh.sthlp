{smcl}
{* *! version 1.1.9  15may2018}{...}
{vieweralsosee "[M-5] tokenget()" "mansection M-5 tokenget()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[P] gettoken" "help gettoken_zh"}{...}
{vieweralsosee "[M-5] invtokens()" "help mf_invtokens_zh"}{...}
{vieweralsosee "[P] tokenize" "help tokenize_zh"}{...}
{vieweralsosee "[M-5] tokens()" "help mf_tokens_zh"}{...}
{vieweralsosee "[M-5] ustrword()" "help mf_ustrword_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] Programming" "help m4_programming_zh"}{...}
{vieweralsosee "[M-4] String" "help m4_string_zh"}{...}
{viewerjumpto "Syntax" "mf_tokenget_zh##syntax"}{...}
{viewerjumpto "Description" "mf_tokenget_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mf_tokenget_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "mf_tokenget_zh##remarks"}{...}
{viewerjumpto "Conformability" "mf_tokenget_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf_tokenget_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf_tokenget_zh##source"}
{help mf_tokenget:English Version}
{hline}{...}
{p2colset 1 21 23 2}{...}
{p2col:{bf:[M-5] tokenget()} {hline 2}}高级解析
{p_end}
{p2col:}({mansection M-5 tokenget():查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{it:t} = 
{cmd:tokeninit(}[{it:wchars}
[{cmd:,} {it:pchars}
[{cmd:,} {it:qchars}
[{cmd:,} {it:allownum}
[{cmd:,} {it:allowhex}]]]]]{cmd:)}

{p 8 12 2}
{it:t} = 
{cmd:tokeninitstata()}


{p 8 12 2}
{it:void}{bind:            }
{cmd:tokenset(}{it:t}{cmd:,}
{it:string scalar s}{cmd:)}


{p 8 12 2}
{it:string rowvector}
{cmd:tokengetall(}{it:t}{cmd:)}

{p 8 12 2}
{it:string scalar}{bind:   }
{cmd:tokenget(}{it:t}{cmd:)}

{p 8 12 2}
{it:string scalar}{bind:   }
{cmd:tokenpeek(}{it:t}{cmd:)}

{p 8 12 2}
{it:string scalar}{bind:   }
{cmd:tokenrest(}{it:t}{cmd:)}


{p 8 12 2}
{it:real scalar}{bind:     }
{cmd:tokenoffset(}{it:t}{cmd:)}

{p 8 12 2}
{it:void}{bind:            }
{cmd:tokenoffset(}{it:t}{cmd:,}
{it:real scalar offset}{cmd:)}


{p 8 12 2}
{it:string scalar}{bind:   }
{cmd:tokenwchars(}{it:t}{cmd:)}

{p 8 12 2}
{it:void}{bind:            }
{cmd:tokenwchars(}{it:t}{cmd:,}
{it:string scalar} {it:wchars}{cmd:)}


{p 8 12 2}
{it:string rowvector}
{cmd:tokenpchars(}{it:t}{cmd:)}

{p 8 12 2}
{it:void}{bind:            }
{cmd:tokenpchars(}{it:t}{cmd:,}
{it:string rowvector} {it:pchars}{cmd:)}


{p 8 12 2}
{it:string rowvector}
{cmd:tokenqchars(}{it:t}{cmd:)}

{p 8 12 2}
{it:void}{bind:            }
{cmd:tokenqchars(}{it:t}{cmd:,}
{it:string rowvector} {it:qchars}{cmd:)}


{p 8 12 2}
{it:real scalar}{bind:     }
{cmd:tokenallownum(}{it:t}{cmd:)}

{p 8 12 2}
{it:void}{bind:            }
{cmd:tokenallownum(}{it:t}{cmd:,}
{it:real scalar} {it:allownum}{cmd:)}


{p 8 12 2}
{it:real scalar}{bind:     }
{cmd:tokenallowhex(}{it:t}{cmd:)}

{p 8 12 2}
{it:void}{bind:            }
{cmd:tokenallowhex(}{it:t}{cmd:,}
{it:real scalar} {it:allowhex}{cmd:)}


{p 4 4 2}
其中

{p 12 16 2}
{it:t} 是 {it:transmorphic} 并且包含解析环境信息。 
您可以通过 {cmd:tokeninit()} 或 {cmd:tokeninitstata()} 获得一个 {it:t}，
然后将 {it:t} 传递给其他函数。

{p 12 16 2}
{it:wchars} 是一个 {it:string scalar}，包含将被视为空白的字符，例如 
{cmd:" "}, {cmd:(" "+char(9))}, 或 {cmd:""}。

{p 12 16 2}
{it:pchars} 是一个 {it:string rowvector}，包含将被视为解析字符的字符串， 
例如 {cmd:""} 和 {cmd:(">", "<", ">=", "<=")}。 
{cmd:""} 和 {helpb mf_j##void_matrices:J(1,0,"")} 被赋予相同 
的解释：没有解析字符。

{p 12 16 2}
{it:qchars} 是一个 {it:string rowvector}，包含将被视为引用字符的字符对。
{cmd:""}（也就是空字符串）被赋予与 {helpb mf_j##void_matrices:J(1,0,"")} 相同的解释；没有引用字符。 
{it:qchars}={cmd:(`""""')} （也就是两个字符的字符串 
引用表示 {cmd:"} 要被视为打开引用 
而 {cmd:"} 要被视为关闭引用。
{it:qchars}={cmd:(`""""', `"`""'"')} 表示，除了这些之外，
{cmd:`"} 被视为打开引用，而 {cmd:"'} 被视为关闭引用。
在没有使用 {cmd:<} 和 {cmd:>} 作为解析字符的语法中，
{it:qchars}={cmd:("<>")} 表示 {cmd:<} 应被视为打开引用，而 {cmd:>} 被视为关闭引用。

{p 12 16 2}
{it:allownum} 是一个 {it:string scalar}，包含 0 或 1。 
{it:allownum}=1 表示诸如 12.23 和 1.52e+02 的数字 
将被作为单个令牌返回，即使违反其他解析规则。

{p 12 16 2}
{it:allowhex} 是一个 {it:string scalar}，包含 0 或 1。 
{it:allowhex}=1 表示诸如 1.921fb54442d18X+001 和 1.0x+a 的数字 
将被作为单个令牌返回，即使违反其他解析规则。


{marker description}{...}
{title:描述}

{p 4 4 2}
这些函数提供高级解析。 
如果您只是希望通过在空格分隔的情况下将字符串转换为行向量，将 
{cmd:"mpg weight displ"} 转换为 {cmd:("mpg", "weight", "displ")}，请参见 
{bf:{help mf_tokens_zh:[M-5] tokens()}}。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection M-5 tokenget()Remarksandexamples:备注和示例}

{pstd}
上述章节未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
备注按以下标题呈现：

	{help mf_tokenget##remarks1:概念}
	    {help mf_tokenget##remarks1a:空白字符}
	    {help mf_tokenget##remarks1b:解析字符}
	    {help mf_tokenget##remarks1c:引用字符}
	    {help mf_tokenget##remarks1d:覆盖}
	    {help mf_tokenget##remarks1e:设置解析环境以在空格上进行引用绑定}
	    {help mf_tokenget##remarks1f:设置解析完整的 Stata 语法的环境}
	    {help mf_tokenget##remarks1g:设置解析制表符分隔文件的环境}
	{help mf_tokenget##remarks2:函数概述}
	    {help mf_tokenget##remarks2a:tokeninit() 和 tokeninitstata()}
            {help mf_tokenget##remarks2b:tokenset()}
	    {help mf_tokenget##remarks2c:tokengetall()}
	    {help mf_tokenget##remarks2d:tokenget()、tokenpeek() 和 tokenrest()}
            {help mf_tokenget##remarks2e:tokenoffset()}
	    {help mf_tokenget##remarks2f:tokenwchars()、tokenpchars() 和 tokenqchars()}
	    {help mf_tokenget##remarks2g:tokenallownum 和 tokenallowhex()}


{marker remarks1}{...}
{title:概念}

{p 4 4 2}
解析是指将字符串拆分成片段，我们称之为令牌。
由 {cmd:token*()} 函数实现的解析由 (1) 空白字符 {it:wchars}， 
(2) 解析字符 {it:pchars} 和 (3) 引用字符 {it:qchars} 定义。


{marker remarks1a}{...}
    {title:空白字符}

{p 4 4 2}
考虑字符串 {cmd:"this that what"}。 如果没有空白字符、解析字符和引用字符，也就是说，
如果 {it:wchars}={it:pchars}={it:qchars}={cmd:""}，那么解析 {cmd:"this that what"} 的结果将是一个令牌，该令牌与字符串本身相同：{cmd:"this that what"}。

{p 4 4 2}
如果 {it:wchars} 而是 {cmd:" "}，那么解析 {cmd:"this that what"} 结果为 
{cmd:("this", "that", "what")}。 
解析 {cmd:"this that{bind:   }what"}（注意多个空格）将得到相同结果。 
空白字符将一个令牌与下一个令牌分开，但不作其他意义。

{marker remarks1b}{...}
    {title:解析字符}

{p 4 4 2}
如果我们将 {it:wchars}={cmd:""}，并将 {it:pchars}={cmd:" "}， 
那么 {cmd:"this that what"} 解析为 
{cmd:("this", " ", "that", " ", "what")}
并且解析 {cmd:"this that{bind:   }what"} 的结果为 
{cmd:("this", " ", "that", " ", " ", " ", "what")}。

{p 4 4 2}
{it:pchars} 就像 {it:wchars}，除了它们本身是有意义的。

{p 4 4 2}
{it:pchars} 通常不包含空格。 {it:pchars} 更合理的定义可能是 {cmd:("+", "-")}。 
那么解析 {cmd:"x+y"} 的结果为 
{cmd:("x", "+", "y")}。  
此外，解析字符可以是字符组合。如果
{it:pchars} = {cmd:("+", "-", "++", "--")}, 那么解析 
{cmd:"x+y++"} 结果为 {cmd:("x", "+", "y", "++")}，而解析 
{cmd:"x+++y"} 结果为 {cmd:("x", "++", "+", "y")}。
较长的 {it:pchars} 会在较短的 {it:pchars} 之前匹配，无论它们在 {it:pchars} 向量中出现的顺序如何。

{marker remarks1c}{...}
    {title:引用字符}

{p 4 4 2}
{it:qchars} 指定引用字符。 被引号包围的字符串片段作为一个令牌返回，忽略通常由于 {it:wchars} 和 {it:pchars} 定义而发生的分隔。 考虑字符串

	{cmd:mystr= "x = y"}

{p 4 4 2}
设 {it:wchars} = {cmd:" "}，并且 {it:pchars} 包含 {cmd:"="}。 
单独来看，它将导致上面的字符串解析为五个令牌 

	{c TLC}{hline 7}{c TT}{hline 3}{c TT}{hline 5}{c TT}{hline 5}{c TT}{hline 6}{c TRC}
	{c |} {cmd:mystr} {c |} {cmd:=} {c |} {cmd:"x}  {c |}  {cmd:=}  {c |}  {cmd:y"}  {c |}
	{c BLC}{hline 7}{c BT}{hline 3}{c BT}{hline 5}{c BT}{hline 5}{c BT}{hline 6}{c BRC}

{p 4 4 2}
现在设 {it:qchars} = {cmd:(`""""')}；也就是说，{it:qchars} 是
两个字符的字符串 {cmd:""}。 解析时的结果为三个令牌

	{c TLC}{hline 7}{c TT}{hline 3}{c TT}{hline 9}{c TRC}
	{c |} {cmd:mystr} {c |} {cmd:=} {c |} {cmd:"x = y"} {c |}
	{c BLC}{hline 7}{c BT}{hline 3}{c BT}{hline 9}{c BRC}

{p 4 4 2}
{it:qchars} 的每个元素包含一个字符对：打开字符后跟关闭字符。 
我们在上面定义的那两个字符为 {cmd:"} 和 {cmd:"}，即相同字符。 
这两个字符可以不同。 我们可以将第一个字符定义为 {cmd:`}，第二个字符定义为 {cmd:'}。 
当字符不同时，引用可以嵌套。 引用 {cmd:"he said "hello""} 没有意义，因为它解析为 {cmd:("he said ", hello, "")}。 
然而，引用 {cmd:`he said `hello''} 完全有意义，结果是单个令牌 {cmd:`he said `hello''}。

{p 4 4 2}
引用字符本身可以是多个字符。 
您可以将打开引用定义为 {cmd:`"} 和关闭引用定义为 {cmd:"'}：
{it:qchars}={cmd:(`"`""'"')}. 
或者您可以定义多组引用字符，如 {it:qchars}={cmd:(`""""', `"`""'"')}。

{p 4 4 2}
引用字符甚至不一定是引号。 
在某些情况下，您可能会发现将它们指定为 {cmd:("()")} 很方便。 
使用该定义，"(2*(3+2))" 将解析为一个令牌。
以这种方式指定它们可能会很有用，但通常我们不推荐这样做。 
最好编写代码，使得引用字符确实是引用字符，并将处理其他类型的嵌套表达式的工作推回给调用者。

{marker remarks1d}{...}
    {title:覆盖}

{p 4 4 2}
{cmd:token*()} 函数提供两个覆盖选项：{it:allownum} 和 {it:allowhex}。 
这些都与解析数字有关。 首先，考虑没有覆盖的情况。 
您已将 {it:wchars}={cmd:" "} 并将 {it:pchars}={cmd:("=", "+", "-", "*", "/")}。 
您尝试解析

	{cmd:y = x + 1e+13}

{p 4 4 2}
结果为

        {c TLC}{hline 3}{c TT}{hline 3}{c TT}{hline 3}{c TT}{hline 3}{c TT}{hline 4}{c TT}{hline 3}{c TT}{hline 4}{c TRC}
	{c |} {cmd:y} {c |} {cmd:=} {c |} {cmd:x} {c |} {cmd:+} {c |} {cmd:1e} {c |} {cmd:+} {c |} {cmd:13} {c |}
        {c BLC}{hline 3}{c BT}{hline 3}{c BT}{hline 3}{c BT}{hline 3}{c BT}{hline 4}{c BT}{hline 3}{c BT}{hline 4}{c BRC}

{p 4 4 2}
而您所希望的结果是

        {c TLC}{hline 3}{c TT}{hline 3}{c TT}{hline 3}{c TT}{hline 3}{c TT}{hline 7}{c TRC}
	{c |} {cmd:y} {c |} {cmd:=} {c |} {cmd:x} {c |} {cmd:+} {c |} {cmd:1e+13} {c |}
        {c BLC}{hline 3}{c BT}{hline 3}{c BT}{hline 3}{c BT}{hline 3}{c BT}{hline 7}{c BRC}

{p 4 4 2}
将 {it:allownum}=1 将实现所需的结果。
{it:allownum} 指明当令牌可以被解释为数字时，即使违反其他解析规则，也要采取数字的解释。

{p 4 4 2}
设置 {it:allownum}=1 不会找到埋藏在字符串中的数字，
例如在 {cmd:1e+3} 中位于 {cmd:"xis1e+3"} 中，
但如果数字出现在根据 {it:wchars} 和 {it:pchars} 设置的解析规则下的令牌开头，
则 {it:allownum}=1 将继续该令牌，尽管违反这些规则，但这将产生一个有效的数字。

{p 4 4 2}
覆盖选项 {it:allowhex} 类似且特定于 Stata。 
Stata（和 Mata）提供了一种独特而有用的方法，以可打印、简短且精确的方式书写十六进制浮点数：
pi 可以写为 1.921fb54442d18X+001。 
设置 {it:allowhex}=1 允许使用此类数字。


{marker remarks1e}{...}
    {title:设置解析环境以在空格上进行引用绑定}

{p 4 4 2}
Stata 对于解析 do-file 参数的默认规则是“在空格上进行解析， 在引号上进行绑定”。 
重复此行为的设置为

	    {it:wchars} =  {cmd:" "}

	    {it:pchars} =  {cmd:( "" )}

	    {it:qchars} =  {cmd:( `""""', `"`""'"')}

          {it:allownum} =  0

          {it:allowhex} =  0

{p 4 4 2}
通过编码

	{it:t} {cmd:= tokeninit(" ", "", (`""""', `"`""'"'), 0, 0)}

{p 4 4 2}
或通过编码 

	{it:t} {cmd:= tokeninit()}

{p 4 4 2}
可以获得此行为，因为在 {cmd:tokeninit()} 中，参数是可选的， 
“在空格上进行解析并进行引用绑定”是默认值。

{p 4 4 2}
使用这些设置，解析 
{cmd:`"first second "third fourth" fifth"'} 的结果为 
{cmd:("first", "second", `""third fourth""', "fifth")}。

{p 4 4 2}
此结果与 Stata 的结果略有不同，因为第三个令牌包括引用绑定字符。
假设解析的字符串是通过编码 

	{cmd:res = tokengetall(}{it:t}{cmd:)}

{p 4 4 2}
以下代码将删除打开和关闭引号，假设这需要。

	{cmd}for (i=1; i<=cols(res); i++) {
		if (substr(res[i], 1, 1)==`"""') {
			res[i] = substr(res[i], 2, strlen(res[i])-2)
		}
		else if (substr(res[i], 1, 2)=="`" + `"""') {
			res[i] = substr(res[i], 3, strlen(res[i])-4)
		}
	}{txt}


{marker remarks1f}{...}
    {title:设置解析完整 Stata 语法的环境}

{p 4 4 2}
要解析完整的 Stata 语法，设置为

	    {it:wchars} =  {cmd:" "}

	    {it:pchars} =  {cmd:( "\",  "~",  "!",  "=",  ":",  ";",  ",",}
                       {cmd: "?",  "!",  "@",  "#", "==", "!=", ">=",}
		       {cmd:"<=",  "<",  ">",  "&",  "|", "&&", "||",}
                       {cmd: "+",  "-", "++", "--",  "*",  "/",  "^",}
                       {cmd: "(",  ")",  "[",  "]",  "{c -(}",  "{c )-}" )}

	    {it:qchars} =  {cmd:( `""""', `"`""'"', char(96)+char(39) )}

          {it:allownum} =  1

          {it:allowhex} =  1

{p 4 4 2}
以上是一个略微的简化。 Stata 是一种解释性语言， 
并且 Stata 不要求用户在引号中输入文件名，尽管 Stata 允许这样做。 
因此 {cmd:"\"} 有时是一个解析字符，有时不是，{cmd:"/"} 也是如此。 
在 Stata 从左到右解析一行时，如果下一个令牌可能是或已知为文件名，它将 
在两个 {cmd:tokenget()} 调用之间更改 {it:pchars}。 
有时 Stata 会提前查探以决定解析的方式。 
您可以通过使用 {cmd:tokenpchars()} 和 {cmd:tokenpeek()} 函数做到这一点。

{p 4 4 2}
要获得上述环境，请编码

	{it:t}{cmd: = tokeninitstata()}


{marker remarks1g}{...}
    {title:设置解析制表符分隔文件的环境}

{p 4 4 2}
{cmd:token*()} 函数可用于解析制表符分隔文件的行。 
制表符分隔文件包含以下形式的行

		<{it:field1}><{it:tab}><{it:field2}><{it:tab}><{it:field3}>

{p 4 4 2}
解析环境变量为

	    {it:wchars} =  {cmd:""}

	    {it:pchars} =  {cmd:( char(9) )}{col 40}(即 {it:tab})

	    {it:qchars} =  {cmd:( "" )}

          {it:allownum} =  0

          {it:allowhex} =  0

{p 4 4 2}
要设置此环境，我们编码

	{it:t}{cmd: = tokeninit("", char(9), "", 0, 0)}

{p 4 4 2}
假设您接下来解析的行 

		Farber, William<{it:tab}>  2201.00<{it:tab}>12

{p 4 4 2}
结果将为 

		{cmd:("Farber, William", char(9), {bind:"  2201.00"}, char(9), "12")}

{p 4 4 2}
如果行是 

		Farber, William<{it:tab}><{it:tab}>12

{p 4 4 2}
结果将是 

                {cmd:("Farber, William", char(9), char(9), "12")}

{p 4 4 2}
当最后字段缺失时，制表符分隔格式没有明确定义。 
缺失最后字段的行可能被记录为

		Farber, William<{it:tab}>  2201.00<{it:tab}>

{p 4 4 2}
或

		Farber, William<{it:tab}>  2201.00

{p 4 4 2}
缺失最后两个字段的行可能被记录为

		Farber, William<{it:tab}><{it:tab}>

{p 4 4 2}
或

		Farber, William<{it:tab}>

{p 4 4 2}
或

		Farber, William

{p 4 4 2}
以下程序将正确解析无论如何记录的缺失字段的行：

	{cmd}real rowvector readtabbed(transmorphic t, real scalar n)
	{
		real scalar       i
		string rowvector  res
		string scalar     token

		res = J(1, n, "")
		i = 1
		while ((token = tokenget(t))!="") {
			if (token==char(9)) i++ 
			else res[i] = token
		}
		return(res)
	}{txt}


{marker remarks2}{...}
{title:函数概述}

{p 4 4 2}
基本步骤是初始化解析环境并将其存储在变量中， 

	{cmd:t = tokeninit(}...{cmd:)}

{p 4 4 2}
然后设置要解析的字符串 {cmd:s}，

	{cmd:tokenset(t, s)}

{p 4 4 2}
最后使用 {cmd:tokenget()} 逐个获取令牌 
（{cmd:tokenget()} 在到达行尾时返回 {cmd:""}），
或通过使用 {cmd:tokengetall(t)} 一次获得所有令牌。
也就是说，或者

	{cmd}while((token = tokenget(t)) != "") {
		... {it:process }{cmd}token ...
	}{txt}

{p 4 4 2}
或者

	{cmd}tokens = tokengetall(t)
	for (i=1; i<=cols(tokens); i++) {
		... {it:process }{cmd}tokens[i] ...
	}{txt}

{p 4 4 2}
之后，设置下一个要解析的字符串，

	{cmd:tokenset(t,} {it:nextstring}{cmd:)}

{p 4 4 2}
并重复。


{marker remarks2a}{...}
    {title:tokeninit() 和 tokeninitstata()}

{p 4 4 2}
{cmd:tokeninit()} 和 {cmd:tokeninitstata()} 是替代选项。 
通常，除非您正在编写一个相当复杂的函数， 
否则 {cmd:tokeninitstata()} 是不必要的。

{p 4 4 2}
无论您使用哪种函数，请编码 

	{it:t}{cmd: = tokeninit(}...{cmd:)}

{p 4 4 2}
或

	{it:t}{cmd: = tokeninitstata()}

{p 4 4 2}
如果您声明 {it:t}，请声明为 {cmd:transmorphic}。 
{it:t} 实际上是一个包含解析环境所有细节的结构，但是这对您是隐藏的， 
以便您不会意外地修改环境。

{p 4 4 2}
{cmd:tokeninit()} 允许最多五个参数：

	{it:t}{cmd: = tokeninit(}{it:wchars}{cmd:,} {it:pchars} {cmd:,} {it:qchars}{cmd:,} {it:allownum}{cmd:,} {it:allowhex}{cmd:)}

{p 4 4 2}
您可以从末尾省略参数。 
如果省略，参数的默认值为

          {it:allowhex} =  0

          {it:allownum} =  0

	    {it:qchars} =  {cmd:( `""""', `"`""'"')}

	    {it:pchars} =  {cmd:( "" )}

	    {it:wchars} =  {cmd:" "}


{p 4 4 2}
注意

{p 8 12 2}
1.  关于 {it:wchars}：

{p 12 16 2}
a.  {it:wchars} 是一个 {it:string scalar}。 
    空白字符按顺序出现在字符串中。 
    字符出现的顺序无关紧要。

{p 12 16 2}
b.  将 {it:wchars} 指定为 {cmd:" "} 以将空白视为空白字符。

{p 12 16 2}
c.  将 {it:wchars} 指定为 {cmd:" "+char(9)} 以将空白和 {it:tab} 
    视为空白字符。  仅在从文件中获取要解析的字符串时，才需要包含 {it:tab}； 
    从 Stata 获得的字符串已经移除了 {it:tab} 字符。

{p 12 16 2}
d.  可以将任何字符视为空白字符， 
    包括字母。

{p 12 16 2}
e.  将 {it:wchars} 指定为 {cmd:""} 以指明没有空白字符。

{p 8 12 2}
2.  关于 {it:pchars}：

{p 12 16 2}
a.  {it:pchars} 是一个 {it:string rowvector}。 
    向量的每个元素都是一个单独的解析字符。 
    指定解析字符的顺序无关紧要。

{p 12 16 2}
b.  将 {it:pchars} 指定为 {cmd:("+", "-")} 以使 {cmd:+} 和 {cmd:-} 
    成为解析字符。

{p 12 16 2}
c.  解析字符可以是字符组合，例如 {cmd:++} 或 
    {cmd:>=}。 字符组合最多可以长达四个字符。

{p 12 16 2}
d.  将 {it:pchars} 指定为 {cmd:""} 或 {helpb mf_j##void_matrices:J(1,0,"")} 
    以指明没有解析字符。 
    您指定哪一个没有区别，但如果考虑一下，您会意识到 {cmd:J(1,0,"")} 更为逻辑一致。

{p 8 12 2}
3.  关于 {it:qchars}：

{p 12 16 2}
a.  {it:qchars} 是一个 {cmd:string rowvector}。 
    向量的每个元素包含打开字符和关闭字符。 
    指定引用字符集合的顺序无关紧要。

{p 12 16 2}
b.  将 {it:qchars} 指定为 {cmd:(`""""')} 以使 {cmd:"} 成为打开和关闭 
    字符。

{p 12 16 2}
c.  将 {it:qchars} 指定为 {cmd:(`""""', `"`""'"')} 以使 {cmd:""} 
    和 {cmd:`""'} 成为引用字符。

{p 12 16 2}
d.  单个引用字符可以长达两个字符。

{p 12 16 2}
e.  将 {it:qchars} 指定为 {cmd:""} 或 {helpb mf_j##void_matrices:J(1,0,"")} 
    以指明没有引用字符。


{marker remarks2b}{...}
    {title:tokenset()}

{p 4 4 2}
在 {cmd:tokeninit()} 或 {cmd:tokeninitstata()} 之后，您尚未完成初始化。
您必须 {cmd:tokenset(}{it:s}{cmd:)} 以指定要解析的字符串标量。
您 {cmd:tokenset()} 一行，解析它，如果还有更多行，您再次 {cmd:tokenset()} 然后重复该过程。 
通常，您可能只需要解析一行。 
也许您希望编写一个程序来解析 Stata ado 文件中 
复杂选项的参数。 结构为

	{cmd:program} ...
		...
		{cmd:syntax} ... {cmd:[,} ... {cmd:MYoption(string)} ...{cmd:]}
		{cmd:mata: parseoption(`"`myoption'"')}
		...
	{cmd:end}

	{cmd:mata:}
	{cmd:void parseoption(string scalar option)}
	{cmd:{c -(}}
		{cmd:transmorphic     t}

		{cmd:t = tokeninit(}...{cmd:)}
		{cmd:tokenset(t, option)}
		...
	{cmd:{c )-}}
	{cmd:end}

{p 4 4 2}
注意

{p 8 12 2}
1.  当您 {cmd:tokenset(}{it:s}{cmd:) 时，{it:s} 的内容 
    并不存储。 相反，存储的是对 {it:s} 的指针。 
    这种方法节省了内存和时间，但这意味着如果您在设置后更改 {it:s}，
    将会改变 {cmd:token*()} 函数的后续行为。

{p 8 12 2}
2.  简单地更改 {it:s} 并不足以重新启动解析。  
    如果您更改 {it:s}，必须再次 {cmd:tokenset(}{it:s}{cmd:)}。


{marker remarks2c}{...}
    {title:tokengetall()}

{p 4 4 2}
您有两种处理令牌的替代方法。 
您可以通过使用 {cmd:tokengetall()} 将整行解析为包含所有单个 
令牌的行向量，

	{cmd:tokens = tokengetall(}{it:t}{cmd:)}

{p 4 4 2}
或者您可以使用 {cmd:tokenget()} 逐个处理令牌， 
这在下一节中讨论。

{p 4 4 2}
使用 {cmd:tokengetall()}，{cmd:tokens[1]} 将是第一个令牌， 
{cmd:tokens[2]} 是第二个，以此类推。 
总共有 {cmd:cols(tokens)} 个令牌。
如果行为空或仅包含空白字符， 
{cmd:cols(tokens)} 将为 0。


{marker remarks2d}{...}
    {title:tokenget(), tokenpeek(), 和 tokenrest()}

{p 4 4 2}
{cmd:tokenget()} 一次返回一个令牌，并且在到达行尾时返回 
{cmd:""}。  处理一行中所有令牌的基本循环为

	{cmd:while ( (token = tokenget(}{it:t}{cmd:)) != "") {c -(}}
		...
	{cmd:{c )-}}

{p 4 4 2}
{cmd:tokenpeek()} 允许您提前查看下一个令牌，而不实际获取它，因此返回的内容将通过下一次调用 {cmd:tokenget()} 再次返回。 
{cmd:tokenpeek()} 仅适合于获取 {cmd:tokenget()} 之后的下一个令牌。 
连续两次调用 {cmd:tokenpeek()} 将不会返回下两个令牌；它将返回下一个令牌两次。 
要获取下两个令牌，请编码

	...
	{cmd:current = tokenget(}{it:t}{cmd:)}         // 获取当前令牌
	...
	{it:t2} {cmd:=} {it:t}                        // 复制解析环境
	{cmd:next_1 = tokenget(}{it:t2}{cmd:)}         // 查看下一个令牌
	{cmd:next_1 = tokenget(}{it:t2}{cmd:)}         // 查看下一个令牌
	...
	{cmd:current = tokenget(}{it:t}{cmd:)}         // 获取下一个令牌

{p 4 4 2}
如果您声明 {it:t2}，请声明为 {cmd:transmorphic}。

{p 4 4 2}
{cmd:tokenrest()} 返回原始未解析字符串的剩余部分。 
假设您刚通过使用 {cmd:tokenget()} 获取了第一个令牌。 
{cmd:tokenrest()} 将返回跟随第一个令牌的原始字符串的其余部分，未解析。
{cmd:tokenrest(}{it:t}{cmd:)} 返回 {cmd:substr(}{it:original_string}{cmd:,}
{cmd:tokenoffset(}{it:t}{cmd:),} {cmd:)}。


{marker remarks2e}{...}
    {title:tokenoffset()}

{p 4 4 2}
{cmd:tokenoffset()} 只有在您使用 {cmd:tokenget()} 而不是 {cmd:tokengetall()} 风格的编程时才有用。 
假设原始字符串您通过 {cmd:tokenset()} 设置为 "this is an example"。 
在您刚刚 
{cmd:tokenset()} 该字符串后，{cmd:tokenoffset()} 为 1：

		{cmd:this is an example}
        	|
          {cmd:tokenoffset()} = 1

{p 4 4 2}
在获取第一个令牌之后（假设是 {cmd:"this"}）， 
{cmd:tokenoffset()} 为 5：

		{cmd:this is an example}
        	    |
              {cmd:tokenoffset()} = 5

{p 4 4 2}
{cmd:tokenoffset()} 总是位于最后一个解析字符后面的第一个字符上。

{p 4 4 2}
{cmd:tokenoffset()} 的语法为

	{cmd:tokenoffset(}{it:t}{cmd:)}

{p 4 4 2}
和

	{cmd:tokenoffset(}{it:t}{cmd:,} {it:newoffset}{cmd:)}

{p 4 4 2}
第一个返回当前偏移值。 第二个重置解析器在字符串中的位置。


{marker remarks2f}{...}
    {title:tokenwchars()、tokenpchars() 和 tokenqchars()}

{p 4 4 2}
{cmd:tokenwchars()}、 
{cmd:tokenpchars()}、 
和 
{cmd:tokenqchars()} 
允许重置当前的 {it:wchars}、 {it:pchars} 和 {it:qchars}。
与 {cmd:tokenoffset()} 一样，它们有两种语法。

{p 4 4 2}
使用一个参数 {it:t}，它们返回当前设置的值。 
使用两个参数 {it:t} 和 {it:newvalue}，它们重置该值。

{p 4 4 2}
在解析过程中重置是一个高级问题。 
这些函数中最有用的是 {cmd:tokenpchars()}， 
因为对于交互式语法，有时需要开启和关闭某个解析字符，例如 {cmd:/}， 
在一个上下文中意味着除法，而在另一个上下文中则是文件分隔符。


{marker remarks2g}{...}
    {title:tokenallownum 和 tokenallowhex()}

{p 4 4 2}
这两个函数允许获取当前的 {it:allownum} 和 
{it:allowhex} 的值并重置它们。


{marker conformability}{...}
{title:相容性}

{p 4 8 2}
    {cmd:tokeninit(}{it:wchars}{cmd:,}
    {it:pchars}{cmd:,}
    {it:qchars}{cmd:,}
    {it:allownum}{cmd:,}
    {it:allowhex}{cmd:)}:
{p_end}
	    {it:wchars}:  1 {it:x} 1    (可选)
	    {it:pchars}:  1 {it:x} {it:c_p}  (可选)
	    {it:qchars}:  1 {it:x} {it:c_q}  (可选)
	  {it:allownum}:  1 {it:x} 1    (可选)
	  {it:allowhex}:  1 {it:x} 1    (可选)
	    {it:result}:  {it:transmorphic}

    {cmd:tokeninitstata()}:
	    {it:result}:  {it:transmorphic}

    {cmd:tokenset(}{it:t}{cmd:,} {it:s}{cmd:)}:
		 {it:t}:  {it:transmorphic}
	         {it:s}:  1 {it:x} 1 
	    {it:result}:  {it:void}

    {cmd:tokengetall(}{it:t}{cmd:)}:
		 {it:t}:  {it:transmorphic}
	    {it:result}:  1 {it:x} {it:k}

{p 4 8 2}
    {cmd:tokenget(}{it:t}{cmd:)},
    {cmd:tokenpeek(}{it:t}{cmd:)},
    {cmd:tokenrest(}{it:t}{cmd:)}:
{p_end}
		 {it:t}:  {it:transmorphic}
	    {it:result}:  1 {it:x} 1
	
{p 4 4 2}
    {cmd:tokenoffset(}{it:t}{cmd:)}, 
    {cmd:tokenwchars(}{it:t}{cmd:)}, 
    {cmd:tokenallownum(}{it:t}{cmd:)}, 
    {cmd:tokenallowhex(}{it:t}{cmd:)}:
{p_end}
		 {it:t}:  {it:transmorphic}
	    {it:result}:  1 {it:x} 1

{p 4 4 2}
    {cmd:tokenoffset(}{it:t}{cmd:,} {it:newvalue}{cmd:)},
    {cmd:tokenwchars(}{it:t}{cmd:,} {it:newvalue}{cmd:)},
    {cmd:tokenallownum(}{it:t}{cmd:,} {it:newvalue}{cmd:)},
    {cmd:tokenallowhex(}{it:t}{cmd:,} {it:newvalue}{cmd:)}:
{p_end}
		 {it:t}:  {it:transmorphic}
	  {it:newvalue}:  1 {it:x} 1
	    {it:result}:  {it:void}
	
{p 4 8 2}
    {cmd:tokenpchars(}{it:t}{cmd:)}, 
    {cmd:tokenqchars(}{it:t}{cmd:)}:
{p_end}
		 {it:t}:  {it:transmorphic}
	    {it:result}:  1 {it:x} {it:c}

{p 4 8 2}
    {cmd:tokenpchars(}{it:t}{cmd:,} {it:newvalue}{cmd:)},
    {cmd:tokenqchars(}{it:t}{cmd:,} {it:newvalue}{cmd:)}:
{p_end}
		 {it:t}:  {it:transmorphic}
	  {it:newvalue}:  1 {it:x} {it:c}
	    {it:result}:  {it:void}


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
无。


{marker source}{...}
{title:源代码}

{p 4 4 2}
{view tokenget.mata, adopath asis:tokenget.mata} 
获取所有函数。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_tokenget.sthlp>}