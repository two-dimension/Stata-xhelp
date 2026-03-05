{smcl}
{* *! version 1.1.4  15may2018}{...}
{vieweralsosee undocumented "help undocumented"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-5] fopen" "help mf_fopen_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] IO" "help m4_io_zh"}{...}
{viewerjumpto "Syntax" "mf_st_fopen_zh##syntax"}{...}
{viewerjumpto "Description" "mf_st_fopen_zh##description"}{...}
{viewerjumpto "Remarks" "mf_st_fopen_zh##remarks"}{...}
{viewerjumpto "Conformability" "mf_st_fopen_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf_st_fopen_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf_st_fopen_zh##source"}
{help mf_st_fopen:English Version}
{hline}{...}
{title:标题}

{p 4 8 2}
{bf:[M-5] st_fopen()} {hline 2} 以 Stata 的方式打开文件


{marker syntax}{...}
{title:语法}

{p 8 29 2}
{it:real scalar}
{cmd:st_fopen(}{it:filename}{cmd:,}
{it:suffix}{cmd:,}
{it:mode}{cmd:,}
{it:replace}{cmd:,}
{it:public}{cmd:)}

{p 8 29 2}
{it:real scalar}
{cmd:st_fopen(}{it:filename}{cmd:,}
{it:suffix}{cmd:,}
{it:mode}{cmd:,}
{it:replace}{cmd:)}

{p 8 29 2}
{it:real scalar}
{cmd:st_fopen(}{it:filename}{cmd:,}
{it:suffix}{cmd:,}
{it:mode}{cmd:)}


{p 4 4 2}
其中
{p_end}
{p 12 23 2}
{it:filename}:  {it:string scalar} 包含文件名或路径和文件名，例如 {cmd:"myfile"} 或 {cmd:"myfile.dta"}; {it:filename} 被 {cmd:st_fopen()} 更新为包含文件的完整名称，在两个例子中都将是 {cmd:"myfile.dta"}


{p 14 23 2}
{it:suffix}:  {it:string scalar} 包含以句点开头的默认后缀，例如 {cmd:".dta"}


{p 16 23 2}
{it:mode}:  {it:string scalar} 包含 {cmd:"r"}, {cmd:"w"}, 或 {cmd:"rw"}


{p 13 23 2}
{it:replace}:  
仅在 {it:mode} 为 {cmd:"w"} 或 {cmd:"rw"} 时相关; {break}
如果 {it:mode} 为 {cmd:"w"}, {it:replace} 是一个可选的 {it:real scalar}，包含{p_end}

{p 25 28 2}
2{bind:  }文件可以被覆盖（但在读/写访问时保留在原位置），并在文件不存在时显示注释，
{p_end}

{p 25 28 2}
1{bind:  }文件可以被替换（如果文件已经存在，则在打开之前会被擦除），在文件不存在时显示注释，
{p_end}

{p 25 28 2}
0{bind:  }文件不可以被替换，
{p_end}

{p 24 28 2}
-1{bind:  }文件可以被替换（并在打开之前被擦除），但如果文件不存在则不显示注释，或
{p_end}

{p 24 28 2}
-2{bind:  }文件可以被覆盖（但在读/写访问时保留在原位置），但如果文件不存在则不显示注释。
{p_end}

{p 23 23 2}
{it:replace}<0 被视为 -1; {it:replace}>0 被视为 1; 
{it:replace}=={cmd:.} 被视为 0;  
如果未指定 {it:replace} 则视为 0

{p 23 23 2}
如果 {it:mode} 为 {cmd:"rw"}, {it:replace} 是一个可选的 {it:real scalar}，包含{p_end}

{p 25 28 2}
1{bind:  }文件可以被替换并且 
在替换时显示注释， 
{p_end}

{p 25 28 2}
0{bind:  }文件不可以被替换，或 
{p_end}

{p 24 28 2}
-1{bind:  }文件可以被替换但不显示替换的注释。  
{p_end}

{p 23 23 2}
{it:replace}<-1 被视为 -2; {it:replace}>1 被视为 2; 
{it:replace}=={cmd:.} 被视为 0;  
如果未指定 {it:replace} 则视为 0


{p 14 23 2}
{it:public}:  仅在 {it:mode} 为 {cmd:"w"} 或 {cmd:"rw"} 时相关;{break}
可选的 {it:real scalar} 包含 
{p_end}

{p 25 28 2}
0{bind:  }文件为私有或
{p_end}

{p 25 28 2}
1{bind:  }文件为公共
{p_end}

{p 23 23 2}
所有非零（包括缺失）视为 1; 
如果未指定 {it:public} 则默认为 1


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:st_fopen(}{it:filename}{cmd:,} 
{it:suffix}{cmd:,}
{it:mode}{cmd:,}
...{cmd:)}
是一个打开文件的替代方法，与 {bf:{help mf_fopen_zh:[M-5] fopen()}} 相比。 
文件只能在纯读或写模式下打开 ({cmd:"r"} 或 {cmd:"w"})，但作为回报，{cmd:st_fopen()} 提供了类似 Stata 的注释和错误信息，并且在出现错误时，{cmd:st_fopen()} 会中止而不会产生 Mata 溯源日志。

{p 4 4 2}
如果文件成功打开，则参数 {it:filename} 会更新为完整文件名，并且 {cmd:st_fopen()} 返回一个文件句柄，该句柄可以与其他 {bf:{help mf_fopen_zh:[M-5] fopen()}} 函数一起使用，就像文件是通过标准的 {cmd:fopen()} 打开的那样。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
{cmd:st_fopen()} 供将在 Stata ado 文件中运行的 Mata 函数使用。 {cmd:st_fopen()} 复制了类似 Stata 的行为，例如：

	. {cmd:save myfile, replace}
	(注意：文件 myfile.dta 未找到)
        文件 myfile.dta 已保存

{p 4 4 2}
如果你正在编写 {cmd:save}，责任在于你来生成消息 "文件 myfile.dta 已保存"，但是关于 myfile.dta 未找到的注释，即使指定了 {cmd:replace}，也将由 {cmd:st_fopen()} 为你处理。 {cmd:st_fopen()} 还会更新简化的文件名，以便于生成关闭消息。 以上输出的代码如下：

		{cmd:fh = st_fopen(filename, ".dta", "w", repflag)}
		...
		... {it:(写入数据的代码)}
		...
		{cmd:printf("文件 %s 已保存\n", filename)}

{p 4 4 2}
以上代码即使当 {cmd:filename} 初始包含 {cmd:myfile} 而不是 {cmd:myfile.dta} 时也能正常工作。

{p 4 4 2}
同样，考虑类似 Stata 的输出：

	. {cmd:save myfile}
        {err:文件 myfile.dta 已存在}
	r(602);

{p 4 4 2}
注意，没有 Mata 溯源日志。 以上将由上面相同的代码生成，只是在这里， {cmd:repflag} 将为 0 而不是 1。


{marker conformability}{...}
{title:符合性}

{p 4 4 2}
{cmd:st_fopen(}{it:filename}{cmd:,} 
{it:suffix}{cmd:,}
{it:mode}{cmd:,}
{it:replace}{cmd:,}
{it:public}{cmd:)}:
{p_end}
	{it:输入:}
	 {it:filename}:  1 {it:x} 1
	   {it:suffix}:  1 {it:x} 1
	     {it:mode}:  1 {it:x} 1
	  {it:replace}:  1 {it:x} 1    (可选)
	   {it:public}:  1 {it:x} 1    (可选)
	{it:输出:}
	 {it:filename}:  1 {it:x} 1
	   {it:result}:  1 {it:x} 1



{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
{cmd:st_fopen(}{it:filename}{cmd:,} 
{it:suffix}{cmd:,}
{it:mode}{cmd:,}
{it:replace}{cmd:,}
{it:public}{cmd:)}
在无法打开 {it:filename} 时会优雅地中止并给出错误信息，但不会产生溯源日志。 如果它被不当使用，例如以不同于 {cmd:"r"} 或 {cmd:"w"} 的 {it:mode} 调用，则 {cmd:st_fopen()} 会中止并带有溯源日志。


{marker source}{...}
{title:源代码}

{p 4 4 2}
{view st_fopen.mata, adopath asis:st_fopen.mata}
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_st_fopen.sthlp>}