{smcl}
{* *! version 1.1.13  26apr2019}{...}
{vieweralsosee "[M-5] fopen()" "mansection M-5 fopen()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-5] bufio()" "help mf_bufio_zh"}{...}
{vieweralsosee "[M-5] cat()" "help mf_cat_zh"}{...}
{vieweralsosee "[M-5] printf()" "help mf_printf_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] IO" "help m4_io_zh"}{...}
{viewerjumpto "语法" "mf_fopen_zh##syntax"}{...}
{viewerjumpto "描述" "mf_fopen_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "mf_fopen_zh##linkspdf"}{...}
{viewerjumpto "备注" "mf_fopen_zh##remarks"}{...}
{viewerjumpto "符合性" "mf_fopen_zh##conformability"}{...}
{viewerjumpto "诊断" "mf_fopen_zh##diagnostics"}{...}
{viewerjumpto "源代码" "mf_fopen_zh##source"}
{help mf_fopen:English Version}
{hline}{...}
{p2colset 1 18 20 2}{...}
{p2col:{bf:[M-5] fopen()} {hline 2}}文件输入/输出
{p_end}
{p2col:}({mansection M-5 fopen():查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 8 2}
{it:real scalar}{bind:   }
{cmd:fopen(}{it:string scalar fn}{cmd:,}
{it:mode}{cmd:)}

{p 8 8 2}
{it:real scalar}{bind:   }
{cmd:fopen(}{it:string scalar fn}{cmd:,}
{it:mode}{cmd:,}
{it:public}{cmd:)}

{p 8 8 2}
{it:real scalar}{bind:  }
{cmd:_fopen(}{it:string scalar fn}{cmd:,}
{it:mode}{cmd:)}

{p 8 8 2}
{it:real scalar}{bind:  }
{cmd:_fopen(}{it:string scalar fn}{cmd:,}
{it:mode}{cmd:,}
{it:public}{cmd:)}


{p 4 4 2}
其中 
{p_end}
{p 16 18 2}
{help mf_fopen##mode:{it:mode}}:  {it:string scalar} 包含 "{cmd:r}"、"{cmd:w}"、"{cmd:rw}" 或
"{cmd:a}"

{p 14 18 2}
{help mf_fopen##public:{it:public}}:  可选的 {it:real scalar}，包含零或非零


{p 4 4 2}
在下面的内容中，{it:fh} 是 {cmd:fopen()} 或 
{cmd:_fopen()} 返回的值：

{p 8 8 2}
{it:void}{bind:          }
{cmd:fclose(}{it:fh}{cmd:)}

{p 8 8 2}
{it:real scalar}{bind:  }
{cmd:_fclose(}{it:fh}{cmd:)}


{p 8 8 2}
{it:string scalar}{bind: }
{cmd:fget(}{it:fh}{cmd:)}

{p 8 8 2}
{it:string scalar}
{cmd:_fget(}{it:fh}{cmd:)}

{p 8 8 2}
{it:string scalar}{bind: }
{cmd:fgetnl(}{it:fh}{cmd:)}

{p 8 8 2}
{it:string scalar}
{cmd:_fgetnl(}{it:fh}{cmd:)}


{p 8 8 2}
{it:string scalar}{bind: }
{cmd:fread(}{it:fh}{cmd:,}
{it:real scalar len}{cmd:)}

{p 8 8 2}
{it:string scalar}
{cmd:_fread(}{it:fh}{cmd:,}
{it:real scalar len}{cmd:)}


{p 8 8 2}
{it:void}{bind:          }
{cmd:fput(}{it:fh}{cmd:,}
{it:string scalar s}{cmd:)}

{p 8 8 2}
{it:real scalar}{bind:  }
{cmd:_fput(}{it:fh}{cmd:,}
{it:string scalar s}{cmd:)}


{p 8 8 2}
{it:void}{bind:          }
{cmd:fwrite(}{it:fh}{cmd:,}
{it:string scalar s}{cmd:)}

{p 8 8 2}
{it:real scalar}{bind:  }
{cmd:_fwrite(}{it:fh}{cmd:,}
{it:string scalar s}{cmd:)}


{p 8 8 2}
{it:matrix}{bind:        }
{cmd:fgetmatrix(}{it:fh} [{cmd:, }{it:real scalar isstrict}]{cmd:)}

{p 8 8 2}
{it:matrix}{bind:       }
{cmd:_fgetmatrix(}{it:fh} [{cmd:, }{it:real scalar isstrict}]{cmd:)}

{p 8 8 2}
{it:void}{bind:          }
{cmd:fputmatrix(}{it:fh}{cmd:,}
{it:transmorphic matrix X}{cmd:)}

{p 8 8 2}
{it:real scalar}{bind:  }
{cmd:_fputmatrix(}{it:fh}{cmd:,}
{it:transmorphic matrix X}{cmd:)}


{p 8 8 2}
{it:real scalar}{bind:   }
{cmd:fstatus(}{it:fh}{cmd:)}


{p 8 8 2}
{it:real scalar}{bind:   }
{cmd:ftell(}{it:fh}{cmd:)}

{p 8 8 2}
{it:real scalar}{bind:  }
{cmd:_ftell(}{it:fh}{cmd:)}

{p 8 8 2}
{it:void}{bind:          }
{cmd:fseek(}{it:fh}{cmd:,}
{it:real scalar offset}{cmd:,}
{it:real scalar whence}{cmd:)}

{p 8 8 2}
{it:real scalar}{bind:  }
{cmd:_fseek(}{it:fh}{cmd:,}
{it:real scalar offset}{cmd:,}
{it:real scalar whence}{cmd:)}

{p 22 23 2}
({it:whence} 的编码为 -1、0 或 1，表示从文件开始、当前位置或文件末尾; {it:offset} 为带符号: 正值表示在 {it:whence} 之后，负值表示在之前)


{p 8 8 2}
{it:void}{bind:          }
{cmd:ftruncate(}{it:fh}{cmd:)}

{p 8 8 2}
{it:real scalar}{bind:  }
{cmd:_ftruncate(}{it:fh}{cmd:)}


{marker description}{...}
{title:描述}

{p 4 4 2}
这些函数用于读取和写入文件。首先，
打开文件并返回文件句柄（{it:fh}）。文件句柄，仅仅是一个整数，您可以通过它来引用文件，以便于其他文件 I/O 函数的调用。当完成时，关闭文件。

{p 4 4 2}
大多数文件 I/O 函数有两种类型：没有前导下划线和前面带下划线的情况，比如
{help mf_fopen##remarks1:{bf:fopen()} 和 {bf:_fopen()}}, 以及
{help mf_fopen##remarks3:{bf:fwrite()} 和 {bf:_fwrite()}}。

{p 4 4 2}
在没有前导下划线的函数中，如果出现错误，执行将被中止。例如，您尝试打开一个读取的文件，而该文件不存在。执行停止。或者，成功打开文件后，您尝试写入，但磁盘已满。执行停止。当执行停止时，将显示相应的错误信息。

{p 4 4 2}
在带有前导下划线的函数中，执行将继续，并且不会显示错误信息；您有责任 (1) 验证事情是否顺利 (2) 采取适当的措施。

{p 4 4 2}
关于 (1)，一些带下划线的函数返回状态值；其他函数需要您调用 
{helpb mf_fopen##underscore:fstatus()} 来获取状态信息。

{p 4 4 2}
您可以混合使用带下划线和不带下划线的函数，例如，使用 {cmd:_fopen()} 打开文件，使用 {cmd:fread()} 阅读，或者使用 {cmd:fopen()} 打开和 {cmd:_fwrite()} 写入。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection M-5 fopen()Remarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
备注在以下标题下呈现：

	{help mf_fopen##remarks1:打开和关闭文件}
	{help mf_fopen##remarks2:从文件读取}
	{help mf_fopen##remarks3:写入文件}
	{help mf_fopen##remarks4:在同一文件中读取和写入}
	{help mf_fopen##remarks5:读取和写入矩阵}
	{help mf_fopen##remarks6:在文件中重新定位}
	{help mf_fopen##remarks7:截断文件}
	{help mf_fopen##remarks8:错误代码}


{marker remarks1}{...}
{title:打开和关闭文件}

{p 4 4 2}
函数 

{p 9 9 2}
{cmd:fopen(}{it:string scalar fn}{cmd:,}
{it:string scalar mode}{cmd:)}

{p 8 8 2}
{cmd:_fopen(}{it:string scalar fn}{cmd:,}
{it:string scalar mode}{cmd:)}

{p 9 9 2}
{cmd:fopen(}{it:string scalar fn}{cmd:,}
{it:string scalar mode}{cmd:,}
{it:real scalar public}{cmd:)}

{p 8 8 2}
{cmd:_fopen(}{it:string scalar fn}{cmd:,}
{it:string scalar mode}{cmd:,}
{it:real scalar public}{cmd:)}

{p 4 4 2}
打开一个文件。
文件可以位于本地磁盘、网络磁盘，甚至可以在网络上（例如 https://www.stata.com/index.html）。
{it:fn} 指定文件名，{it:mode} 指定以何种方式打开文件：

{marker mode}{...}
	{it:mode}     含义
	{hline 61}
	"{cmd:r}"      以只读模式打开；文件必须存在且可读。
                 文件可以是 "{cmd:https://...}" 文件。
		 文件将位于开头。

	"{cmd:w}"      以写模式打开；文件不可存在且目录必须可写。
                 文件不能是 "{cmd:https://...}" 文件。
		 文件将位于开头。

        "{cmd:rw}"     以读写模式打开；文件必须存在且可写，或者不存在且目录可写。
                 文件不能是 "{cmd:https://...}" 文件。
		 文件将位于开头（新文件）或末尾（现有文件）。

        "{cmd:a}"      以追加模式打开；文件必须存在且可写，或者不存在且目录可写。
                 文件不能是 "{cmd:https://...}" 文件。
		 文件将位于末尾。
	{hline 61}

{p 4 4 2}
{it:mode} 的其他值导致 {cmd:fopen()} 和 {cmd:_fopen()} 
中止并显示无效模式错误。

{marker public}{...}
{p 4 4 2}
可选第三个参数 {it:public} 指定文件在创建时是否应授予所有人读取权限，或者是否应授予正常权限。
不指定 {it:public}，或指定 {it:public} 为 0，将给文件授予正常权限。指定 {it:public} 为非零值将使文件公开可读。 {it:public} 仅在文件被创建时相关，即当文件以 {cmd:"w"} 模式打开时，或者以 {cmd:"rw"} 模式打开且之前不存在时。

{p 4 4 2}
{cmd:fopen()} 返回文件句柄；文件打开或执行被中止。

{p 4 4 2}
{cmd:_fopen()} 返回文件句柄或返回负数。如果返回负数，则文件未打开，负数表示原因。对于 {cmd:_fopen()}，可能有几种可能性

      负值
	说明
	{hline 61}
	 -601    找不到文件
	 -602    文件已存在
	 -603    无法打开文件
	 -608    文件为只读
	 -691    输入/输出错误
	{hline 61}

{p 4 4 2}
并且还有许多其他可能性。
例如，您尝试打开一个网页上的文件（例如 https://www.newurl.org/upinfo.doc），但未找到该 URL，或者服务器拒绝发送文件等。请参阅 
{it:{help mf_fopen##remarks8:错误代码}} 以获取完整的代码列表。

{p 4 4 2}
打开文件后，您可以使用其他文件 I/O 命令读取和写入该文件，然后使用 {cmd:fclose()} 或 {cmd:_fclose()} 关闭文件。
{cmd:fclose()} 不返回任何值；如果无法关闭文件，则会中止执行。 {cmd:_fclose} 返回 0，如果不成功则返回负数。对于 {cmd:_fclose()}，可能的负值是

      负值
	说明
	{hline 61}
         -691    文件系统输入/输出错误
	{hline 61}


{marker remarks2}{...}
{title:从文件读取}

{p 4 4 2}
您可以从以 "{cmd:r}" 或 "{cmd:rw}" 模式打开的文件中读取。
读取的命令是

{p 9 8 2}
{cmd:fget(}{it:fh}{cmd:)}

{p 9 8 2}
{cmd:fgetnl(}{it:fh}{cmd:)}

{p 9 8 2}
{cmd:fread(}{it:fh}{cmd:,}
{it:real scalar len}{cmd:)}

{p 4 4 2}
当然，还有 

{p 8 8 2}
{cmd:_fget(}{it:fh}{cmd:)}

{p 8 8 2}
{cmd:_fgetnl(}{it:fh}{cmd:)}

{p 8 8 2}
{cmd:_fread(}{it:fh}{cmd:,}
{it:real scalar len}{cmd:)}

{p 4 4 2}
所有函数，无论是否带下划线，都需要指定文件句柄，所有函数返回字符串标量，或者返回 
{cmd:J(0,0,"")}, 这是一个 0 {it:x} 0 字符矩阵。它们在到达文件末尾时返回 {cmd:J(0,0,"")}，对于下划线函数，当读取由于其他原因未成功时也返回该值。当使用下划线函数时，您使用 {cmd:fstatus()} 来获取状态代码；请参阅 
{it:{help mf_fopen##remarks8:错误代码}}。
下划线读取函数很少使用，因为读取失败的唯一原因是输入/输出错误，而对这方面几乎没有其他处理方法，正如非下划线函数所做的那样。

{p 4 4 2}
{cmd:fget(}{it:fh}{cmd:)} 用于读取文本文件；返回文件中的下一行，不带换行字符。
（如果该行长度超过 32,768 个字符，将返回前 32,768 个字符。）

{p 4 4 2}
{cmd:fgetnl(}{it:fh}{cmd:)} 类似于 {cmd:fget()}，只是返回结果中不去除换行字符。
（如果该行长度超过 32,768 个字符，将返回前 32,768 个字符。）

{p 4 4 2}
{cmd:fread(}{it:fh}{cmd:,} {it:len}{cmd:)} 通常用于读取二进制文件，并返回文件中接下来的 {it:len} 字符（字节），或者如果剩余可读取的内容少于该值，则返回剩余的内容。
({it:len} 在 64 位计算机上不得超过 9,007,199,254,740,991 [{it:sic}]；在大多数计算机上，存储结果时将很快遇到内存不足的问题。)

{p 4 4 2}
以下代码读取并显示文件：

	{cmd}fh = fopen(filename, "r")
	while ((line=fget(fh))!=J(0,0,"")) {
		printf("%s\n", line) 
	}
	fclose(fh){txt}


{marker remarks3}{...}
{title:写入文件}

{p 4 4 2}
您可以对以 "{cmd:w}"、"{cmd:rw}" 或 "{cmd:a}" 模式打开的文件进行写入。
函数为 

{p 9 8 2}
{cmd:fput(}{it:fh}{cmd:,}
{it:string scalar s}{cmd:)}

{p 9 8 2}
{cmd:fwrite(}{it:fh}{cmd:,}
{it:string scalar s}{cmd:)}

{p 4 4 2}
当然，还有 

{p 8 8 2}
{cmd:_fput(}{it:fh}{cmd:,}
{it:string scalar s}{cmd:)}

{p 8 8 2}
{cmd:_fwrite(}{it:fh}{cmd:,}
{it:string scalar s}{cmd:)}

{p 4 4 2}
{it: fh} 指定文件句柄，{it:s} 指定要写入的字符串。 {cmd:fput()} 写入 {it:s}，后接适合您操作系统的换行字符。 {cmd:fwrite()} 单独写入 {it:s}。

{p 4 4 2}
{cmd:fput()} 和 {cmd:fwrite()} 不返回任何值； {cmd:_fput()} 和
{cmd:_fwrite()} 返回一个实数标量，若一切正常则为 0，否则返回负的错误代码；请见
{it:{help mf_fopen##remarks8:错误代码}}。

{p 4 4 2}
以下代码将文本从一个文件复制到另一个文件：

	{cmd}fh_in  = fopen(inputname, "r")
	fh_out = fopen(outputname, "w")
	while ((line=fget(fh_in))!=J(0,0,"")) {
		fput(fh_out, line)
	}
	fclose(fh_out)
	fclose(fh_in){txt}

{p 4 4 2}
以下代码读取文件（可以是二进制或文本），并将每个出现的 "a" 改为 "b"：

	{cmd}fh_in  = fopen(inputname, "r")
	fh_out = fopen(outputname, "w")
	while ((c=fread(fh_in, 1))!=J(0,0,"")) {
		fwrite(fh_out, (c=="a" ? "b" : c))
	}
	fclose(fh_out)
	fclose(fh_in){txt}


{marker remarks4}{...}
{title:在同一文件中读取和写入}

{p 4 4 2}
您可以在以 "{cmd:rw}" 模式打开的文件中进行读取和写入，使用上述描述的任何读取或写入函数。在同一文件中读取和写入时，通常使用文件重新定位函数； 
请参见 {it:{help mf_fopen##remarks6:在文件中重新定位}}。

{marker remarks5}{...}
{title:读取和写入矩阵}

{p 4 4 2}
函数 

{p 8 4 2}
{cmd:fputmatrix(}{it:fh}{cmd:,}
{it:transmorphic matrix X}{cmd:)}

{p 4 4 2}
和 

{p 7 4 2}
{cmd:_fputmatrix(}{it:fh}{cmd:,}
{it:transmorphic matrix X}{cmd:)}

{p 4 4 2}
将一个矩阵写入文件。通常情况下， {cmd:fputmatrix()} 不返回任何值（如果发生输入/输出错误则中止），而 {cmd:_fputmatrix()} 在一切正常时返回 0，否则返回负的错误代码。

{p 4 4 2}
函数

{p 8 4 2}
{cmd:fgetmatrix(}{it:fh} [{cmd:, }{it:real scalar isstrict}]{cmd:)}

{p 4 4 2}
和

{p 7 4 2}
{cmd:_fgetmatrix(}{it:fh} [{cmd:, }{it:real scalar isstrict}]{cmd:)}

{p 4 4 2}
将读取一个由 {cmd:fputmatrix()} 或 {cmd:_fputmatrix()} 写入的矩阵。两个函数都返回读取的矩阵或在文件末尾时返回 {cmd:J(0,0,.)}（两个函数）或错误（仅 {cmd:_fgetmatrix()}）。由于 {cmd:J(0,0,.)} 可以是已写入的矩阵，因此区分这一点和文件末尾需要后续使用 
{helpb mf_fopen##underscore:fstatus()}。{cmd:fstatus()} 将在 {cmd:fgetmatrix()} 或 {cmd:_fgetmatrix()} 返回已写入的矩阵时返回 0，在文件末尾返回 -1，或者（在 {cmd:_fgetmatrix()} 之后）返回负的错误代码。

{p 4 4 2}
对于 Mata 结构或类的矩阵，将根据当前定义创建一个矩阵，并使用保存的矩阵根据成员名称匹配来初始化新矩阵。

{p 4 4 2}
可选参数 {it:isstrict} 会影响函数的行为，如果读取的矩阵是 Mata 结构或类矩阵。当该参数设置并不为零时，将检查内存中的当前结构或类定义与保存的矩阵，以确保所有变量名称、变量元素类型和变量原始类型相互匹配。

{p 4 4 2}
{cmd:fputmatrix()} 以紧凑、高效和可移植的格式写入矩阵；在 Windows 计算机上写入的矩阵可以在 Mac 或 Unix 计算机上读回，反之亦然。

{p 4 4 2}
以下代码创建一个包含三个矩阵的文件：

	{cmd}fh = fopen(filename, "w")
	fputmatrix(fh, a) 
	fputmatrix(fh, b) 
	fputmatrix(fh, c) 
	fclose(fh){txt}

{p 4 4 2}
以下代码读取它们：

	{cmd}fh = fopen(filename, "r")
	a = fgetmatrix(fh) 
	b = fgetmatrix(fh) 
	c = fgetmatrix(fh) 
	fclose(fh){txt}

{p 4 4 2}
以下代码将 Mata 类标量保存到文件中，

	{cmd}class sA {
		real scalar r
		string scalar s
		static scalar sr
		void new()
	}
	
	a = sA()
	a.r = 1
	a.s = "sA 实例"
	
	fh = fopen(filename, "w")	
	fputmatrix(fh, a) 
	fclose(fh){txt}

{p 4 4 2}
以下代码读取类矩阵：

	{cmd}fh = fopen(filename, "r")
	a = fgetmatrix(fh) 
	fclose(fh){txt}

{p 4 4 2}
{cmd:a} 的内容取决于内存中类 {cmd:sA} 的当前定义。如果定义没有改变，{cmd:a.r} 将为 1，{cmd:a.s} 将为 "sA 实例"。注意：仅保存和读取常规变量；静态变量和函数不会被保存。此外，在创建的类标量中不会调用 {cmd:new()} 函数。如果类定义已更改，

	{cmd}class sA {
		real scalar r
		real scalar b
		static scalar sr
		void new()
	}{txt}

{p 4 4 2}
如果指定了可选参数 {it:isstrict} 并且不为零，则该函数不会读取矩阵。否则，将根据当前定义创建类 {cmd:sA} 标量 {cmd:a}。(注意：{cmd:new()} 不会被调用。)具有匹配名称和兼容元素类型和原始类型的成员变量将根据保存的矩阵中的值进行初始化。在此示例中，{cmd:a.r} 将为 {cmd:1}，而 {cmd:a.b} 将缺失，因为 {cmd:b} 在保存时并不是类 {cmd:sA} 定义中的成员。

		
	{hline}
	{title:技术注释}

{p 8 8 2}
您甚至可以写入指针矩阵

	    {cmd}mats = (&a, &b, &c, NULL)
	    fh = fopen(filename,"w") 
	    fputmatrix(fh, mats)
	    fclose(fh){txt}

{p 8 8 2}
并将其读取回来：

	    {cmd}fh = fopen(filename, "r")
	    mats = fgetmatrix(fh)
	    fclose(fh){txt}

{p 8 8 2}
在写入指针矩阵时，{cmd:fputmatrix()} 将任何指向函数值的指针写为 NULL。建议您不要写入自引用矩阵（指向自身的矩阵，无论是直接还是间接），尽管矩阵的元素可能交叉链接甚至本身递归。如果您正在写入指针矩阵 {cmd:p}，{cmd:p} 的任何元素、{cmd:*p}、{cmd:**p} 等均不应包含 {cmd:&p}。因为在与读取矩阵相关的赋值中（"{it:result} {cmd:=}" 部分），与内容关联的新矩阵与旧矩阵的地址不同。{p_end}
	{hline}


{marker remarks6}{...}
{title:在文件中重新定位}

{p 4 4 2}
函数 

{p 8 8 2}
{cmd:ftell(}{it:fh}{cmd:)}

{p 4 4 2} 
返回一个实数标量，报告您在文件中的位置，函数

{p 8 8 2}
{cmd:fseek(}{it:fh}{cmd:,}
{it:real scalar offset}{cmd:,}
{it:real scalar whence}{cmd:)}

{p 4 4 2}
更改您在文件中的位置，使其为 
{it:offset} 字节，起始位置为 
文件开头（{it:whence} = -1），
{it:offset} 字节，起始位置为当前位置（{it:whence} = 0）， 
或 {it:offset} 字节，起始位置为文件结束（{it:whence} = 1）。

{p 4 4 2}
函数 {cmd:_ftell()} 和 {cmd:_fseek()} 与 
{cmd:ftell()} 和 {cmd:fseek()} 完成相同的工作，区别在于，在发生错误时，带下划线的函数返回负的错误代码。 {cmd:_ftell()} 基本上没有用，因为唯一可能出现的错误是输入/输出错误，您有什么其他选择，除了中止？而 {cmd:_fseek()} 是有用的，因为它允许您尝试一次重新定位并检查其是否成功。如果使用 {cmd:fseek()}，如果重新定位未成功，则将中止执行。

{p 4 4 2}
假设您打开一个文件以进行读取

	{cmd:fh = fopen(filename, "r")}

{p 4 4 2}
在 "{cmd:r}" 模式下打开文件后，您处于文件的开头，或在文件处理术语中，处于位置 0。
现在假设您从文件中读取 10 个字节：

	{cmd:part1 = fread(fh, 10)}

{p 4 4 2}
假设成功读取，您现在位于文件的第 10 个位置。
假设您接下来从文件中读取一行 

	{cmd:line = fget(fh)}

{p 4 4 2}
假设 {cmd:fget()} 返回 "abc"。您现在处于位置 14 或 15。（不，不能是 13，因为 {cmd:fget()} 读取了行和换行符并返回了该行。"abc" 后面可能跟着回车和换行（两个字符），如果文件是在 Windows 下创建的，或者仅在 Mac 或 Unix 下由回车或换行（一个字符）创建。）

{p 4 4 2}
{cmd:ftell(}{it:fh}{cmd:)} 和 {cmd:_ftell(}{it:fh}{cmd:)} 告诉您在文件中的位置。 编码

	{cmd:pos = ftell(fh)}

{p 4 4 2}
将把 14 或 15 存储在 {cmd:pos} 中。在您的代码的后续部分，在读取更多内容后，您可以通过编码 

	{cmd:fseek(fh, pos, -1)}

{p 4 4 2}
返回到此位置。

{p 4 4 2}
您可以通过编码 

	{cmd:fseek(fh, 0, -1)}

{p 4 4 2}
返回到文件开头，也可以通过编码 

	{cmd:fseek(fh, 0, 1)}

{p 4 4 2}
移动到文件的末尾。 

{p 4 4 2}
{cmd:_fseek(}{it:fh}{cmd:, 0, 0)} 相当于
{cmd:ftell(}{it:fh}{cmd:)}。

{p 4 4 2}
当文件以 "{cmd:a}" 打开时，无法使用重新定位函数。


{marker remarks7}{...}
{title:截断文件}

{p 4 4 2}
截断指的是使较长的文件变短。
如果一个文件是以 "{cmd:w}" 或 "{cmd:rw}" 模式打开的，您可以使用

{p 9 8 2}
{cmd:ftruncate(}{it:fh}{cmd:)}

{p 4 4 2}
或

{p 8 8 2}
{cmd:_ftruncate(}{it:fh}{cmd:)}

{p 4 4 2}
来在当前位置截断它。
{cmd:ftruncate()} 不返回任何值； {cmd:_ftruncate()} 成功时返回 0，否则返回负的错误代码。

{p 4 4 2}
以下代码将文件缩短到其前 100 个字节：

	{cmd}fh = fopen(filename, "rw")
	fseek(fh, 100, -1)
	ftruncate(fh)
	fclose(fh){txt}


{marker remarks8}{...}
{title:错误代码}

{p 4 4 2}
如果您使用带下划线的输入/输出函数，发生错误时，它们将返回负代码。 这些代码为

       负值
	代码    含义
	{hline 61}
	    0    一切正常
	   -1    文件末尾
	   -2    连接超时
	 -601    找不到文件
	 -602    文件已存在
	 -603    无法打开文件
	 -608    文件为只读
	 -610    文件格式错误
	 -612    意外的文件结尾
	 -630    此版本 Stata 不支持网页文件
	 -631    找不到主机
	 -632    本上下文不允许网页文件
	 -633    不能写入网页文件
	 -660    找不到代理主机
	 -661    找不到主机或文件
	 -662    代理服务器拒绝请求发送
	 -663    与代理的远程连接失败
	 -665    无法设置套接字为非阻塞
	 -669    无效的 URL
	 -670    无效的网络端口号
	 -671    网络协议未知
	 -672    服务器拒绝发送文件
         -673    服务器需要授权
	 -674    服务器回复意外响应
	 -675    服务器报告服务器错误
	 -676    服务器拒绝请求发送
	 -677    远程连接失败
	 -678    无法打开本地网络套接字
	 -679    意外的网页错误
	 -691    输入/输出错误
         -699    磁盘空间不足
	-3601    无效的文件句柄
	-3602    无效的文件名
	-3603    无效的文件模式
	-3611    打开文件过多
	-3621    试图写入只读文件
	-3622    试图读取写入文件
	-3623    试图给仅追加的文件定位
	-3698    文件查找错误
	{hline 61}
{p 8 8 10}
-600 到 -699 范围内的其他代码也是可能的。该代码范围对应于对应 Stata 返回代码的负值；请参阅 {manlink P error}。

{p 4 4 2}
返回实数标量的下划线函数如果发生错误，将返回这些代码中的一个。

{marker underscore}{...}
{p 4 4 2}
如果下划线函数未返回实数标量，则您可以使用 {cmd:fstatus()} 获取结果状态。例如，读取字符串函数返回字符串标量或在文件末尾返回 {cmd:J(0,0,"")}。下划线版本执行相同操作，并且在出现错误时也返回 {cmd:J(0,0,"")}, 这意味错误看起来像文件末尾。您可以使用函数

	{cmd:fstatus(}{it:fh}{cmd:)}

{p 4 4 2}
{cmd:fstatus()} 返回 0（无先前错误）或上述负代码之一。 

{p 4 4 2}
{cmd:fstatus()} 可在任何下划线输入/输出命令后使用，以获取当前错误状态。

{p 4 4 2}
{cmd:fstatus()} 也可以在非下划线 I/O 命令之后使用；在这种情况下，{cmd:fstatus()} 将返回 -1 或 0，因为其他所有问题都将导致执行停止。


{marker conformability}{...}
{title:符合性}

{p 4 4 2}
{cmd:fopen(}{it:fn}{cmd:,} {it:mode}{cmd:,} {it:public}{cmd:)}, 
{cmd:_fopen(}{it:fn}{cmd:,} {it:mode}{cmd:,} {it:public}{cmd:)}:
{p_end}
	       {it:fn}:  1 {it:x} 1
	     {it:mode}:  1 {it:x} 1
	   {it:public}:  1 {it:x} 1    （可选）
	   {it:result}:  1 {it:x} 1

    {cmd:fclose(}{it:fh}{cmd:)}:
	       {it:fh}:  1 {it:x} 1
	   {it:result}:  {it:void}

    {cmd:_fclose(}{it:fh}{cmd:)}:
	       {it:fh}:  1 {it:x} 1
	   {it:result}:  1 {it:x} 1

{p 4 4 2}
{cmd:fget(}{it:fh}{cmd:)},
{cmd:_fget(}{it:fh}{cmd:)},
{cmd:fgetnl(}{it:fh}{cmd:)},
{cmd:_fgetnl(}{it:fh}{cmd:)}:
{p_end}
	       {it:fh}:  1 {it:x} 1
	   {it:result}:  1 {it:x} 1  或  0 {it:x} 0 如果是文件末尾

{p 4 4 2}
{cmd:fread(}{it:fh}{cmd:,} {it:len}{cmd:)},
{cmd:_fread(}{it:fh}{cmd:,} {it:len}{cmd:)}:
{p_end}
	       {it:fh}:  1 {it:x} 1
	      {it:len}:  1 {it:x} 1
	   {it:result}:  1 {it:x} 1  或  0 {it:x} 0 如果是文件末尾

{p 4 4 2}
{cmd:fput(}{it:fh}{cmd:,} {it:s}{cmd:)},
{cmd:fwrite(}{it:fh}{cmd:,} {it:s}{cmd:)}:
{p_end}
	       {it:fh}:  1 {it:x} 1
		{it:s}:  1 {it:x} 1
	   {it:result}:  {it:void}

{p 4 4 2}
{cmd:_fput(}{it:fh}{cmd:,} {it:s}{cmd:)},
{cmd:_fwrite(}{it:fh}{cmd:,} {it:s}{cmd:)}:
{p_end}
	       {it:fh}:  1 {it:x} 1
		{it:s}:  1 {it:x} 1
	   {it:result}:  1 {it:x} 1

{p 4 4 2}
{cmd:fgetmatrix(}{it:fh}{cmd:)},
{cmd:_fgetmatrix(}{it:fh}{cmd:)}:
{p_end}
	       {it:fh}:  1 {it:x} 1
	   {it:result}:  {it:r x c}  或  0 {it:x} 0 如果是文件末尾


{p 4 4 2}
{cmd:fputmatrix(}{it:fh}{cmd:,} {it:X}{cmd:)}:
{p_end}
	       {it:fh}:  1 {it:x} 1
		{it:X}:  {it:r x c}
	   {it:result}:  {it:void}

{p 4 4 2}
{cmd:_fputmatrix(}{it:fh}{cmd:,} {it:X}{cmd:)}:
{p_end}
	       {it:fh}:  1 {it:x} 1
		{it:X}:  {it:r x c}
	   {it:result}:  1 {it:x} 1

{p 4 4 2}
{cmd:fstatus(}{it:fh}{cmd:)}:
{p_end}
	       {it:fh}:  1 {it:x} 1
	   {it:result}:  1 {it:x} 1

{p 4 4 2}
{cmd:ftell(}{it:fh}{cmd:)},
{cmd:_ftell(}{it:fh}{cmd:)}:
{p_end}
	       {it:fh}:  1 {it:x} 1
	   {it:result}:  1 {it:x} 1

{p 4 4 2}
{cmd:fseek(}{it:fh}{cmd:,} {it:offset}{cmd:,} {it:whence}{cmd:)}:
{p_end}
	       {it:fh}:  1 {it:x} 1
	   {it:offset}:  1 {it:x} 1
	   {it:whence}:  1 {it:x} 1
	   {it:result}:  {it:void}

{p 4 4 2}
{cmd:_fseek(}{it:fh}{cmd:,} {it:offset}{cmd:,} {it:whence}{cmd:)}:
{p_end}
	       {it:fh}:  1 {it:x} 1
	   {it:offset}:  1 {it:x} 1
	   {it:whence}:  1 {it:x} 1
	   {it:result}:  1 {it:x} 1

{p 4 4 2}
{cmd:ftruncate(}{it:fh}{cmd:)}:
{p_end}
	       {it:fh}:  1 {it:x} 1
	   {it:result}:  {it:void}

{p 4 4 2}
{cmd:_ftruncate(}{it:fh}{cmd:)}:
{p_end}
	       {it:fh}:  1 {it:x} 1
	   {it:result}:  1 {it:x} 1


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
{cmd:fopen(}{it:fn}{cmd:,} {it:mode}{cmd:)} 如果 
{it:mode} 无效，或 إذا {it:fn} 无法打开，或者尝试同时打开过多文件，则会中止并显示错误。

{p 4 4 2}
{cmd:_fopen(}{it:fn}{cmd:,} {it:mode}{cmd:)} 如果 {it:mode} 无效，或尝试同时打开太多文件也会中止并显示错误。
{cmd:_fopen()} 如果 {it:fn} 无法打开，将返回相应的负错误代码。

{p 4 4 2}
所有其他 I/O 函数——即使以下划线开头的函数——如果 {it:fh} 不是当前打开文件的句柄，也会中止并显示错误。

{p 4 4 2}
此外，未以下划线开头的函数在文件以只读模式打开时，如果发出需要写入权限的请求，或者在以写入模式打开的文件中发出需要读取权限的请求时，都会中止并显示错误。请参阅
{it:{help mf_fopen##remarks8:错误代码}} ；除 -1（文件末尾）之外的所有问题都会导致非下划线函数中止并出现错误。

{p 4 4 2}
最后，以下函数也会因特定原因中止并显示错误：

{p 4 4 2}
{cmd:fseek(}{it:fh}{cmd:,} {it:offset}{cmd:,} {it:whence}{cmd:)}
和 
{cmd:_fseek(}{it:fh}{cmd:,} {it:offset}{cmd:,} {it:whence}{cmd:)}
如果 {it:offset} 超出了 +/-9,007,199,254,740,991 范围，或者 {it:whence} 不是 -1、0 或 1，则会中止并显示错误。


{marker source}{...}
{title:源代码}

{p 4 4 2}
{view ftell.mata, adopath asis:ftell.mata};
其他函数是内置的。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_fopen.sthlp>}