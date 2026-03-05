{smcl}
{* *! version 1.1.7  15may2018}{...}
{vieweralsosee "[M-5] bufio()" "mansection M-5 bufio()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-5] fopen()" "help mf_fopen_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] IO" "help m4_io_zh"}{...}
{viewerjumpto "语法" "mf_bufio_zh##syntax"}{...}
{viewerjumpto "描述" "mf_bufio_zh##description"}{...}
{viewerjumpto "PDF文档链接" "mf_bufio_zh##linkspdf"}{...}
{viewerjumpto "备注" "mf_bufio_zh##remarks"}{...}
{viewerjumpto "兼容性" "mf_bufio_zh##conformability"}{...}
{viewerjumpto "诊断" "mf_bufio_zh##diagnostics"}{...}
{viewerjumpto "源代码" "mf_bufio_zh##source"}
{help mf_bufio:English Version}
{hline}{...}
{p2colset 1 18 20 2}{...}
{p2col:{bf:[M-5] bufio()} {hline 2}}缓冲（二进制）I/O
{p_end}
{p2col:}({mansection M-5 bufio():查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 12 2}
{it:列向量 C} {cmd:=} 
{cmd:bufio()}


{p 8 12 2}
{it:实数标量}{bind:  }
{cmd:bufbyteorder(}{it:C}{cmd:)}

{p 8 12 2}
{it:无}{bind:         }
{cmd:bufbyteorder(}{it:C}{cmd:,}
{it:实数标量 byteorder}{cmd:)}

{p 8 12 2}
{it:实数标量}{bind:  }
{cmd:bufmissingvalue(}{it:C}{cmd:)}

{p 8 12 2}
{it:无}{bind:         }
{cmd:bufmissingvalue(}{it:C}{cmd:,}
{it:实数标量 version}{cmd:)}


{p 8 12 2}
{it:无}{bind:         }
{cmd:bufput(}{it:C}{cmd:,}
{it:B}{cmd:,}
{it:offset}{cmd:,}
{it:bfmt}{cmd:,}
{it:X}{cmd:)}


{p 8 12 2}
{it:标量}{bind:       }
{cmd:bufget(}{it:C}{cmd:,}
{it:B}{cmd:,}
{it:offset}{cmd:,}
{it:bfmt}{cmd:)}

{p 8 12 2}
{it:行向量}{bind:    }
{cmd:bufget(}{it:C}{cmd:,}
{it:B}{cmd:,}
{it:offset}{cmd:,}
{it:bfmt}{cmd:,}
{it:c}{cmd:)}

{p 8 12 2}
{it:矩阵}{bind:       }
{cmd:bufget(}{it:C}{cmd:,}
{it:B}{cmd:,}
{it:offset}{cmd:,}
{it:bfmt}{cmd:,}
{it:r}{cmd:,}
{it:c}{cmd:)}


{p 8 12 2}
{it:无}{bind:         }
{cmd:fbufput(}{it:C}{cmd:,}
{it:fh}{cmd:,}
{it:bfmt}{cmd:,}
{it:X}{cmd:)}


{p 8 12 2}
{it:标量}{bind:       }
{cmd:fbufget(}{it:C}{cmd:,}
{it:fh}{cmd:,}
{it:bfmt}{cmd:)}

{p 8 12 2}
{it:行向量}{bind:    }
{cmd:fbufget(}{it:C}{cmd:,}
{it:fh}{cmd:,}
{it:bfmt}{cmd:,}
{it:c}{cmd:)}

{p 8 12 2}
{it:矩阵}{bind:       }
{cmd:fbufget(}{it:C}{cmd:,}
{it:fh}{cmd:,}
{it:bfmt}{cmd:,}
{it:r}{cmd:,}
{it:c}{cmd:)}


{p 8 12 2}
{it:实数标量}{bind:  }
{cmd:bufbfmtlen(}{it:string scalar bfmt}{cmd:)}

{p 8 12 2}
{it:实数标量}{bind:  }
{cmd:bufbfmtisnum(}{it:string scalar bfmt}{cmd:)}


{p 4 4 2}
其中 

{p 20 24 2}
{it:C}:  {it:列向量} 由 {cmd:bufio()} 返回

{p 20 24 2}
{it:B}:  {it:字符串标量}（缓冲区）
{p_end}
{p 15 24 2}
{it:offset}:  {it:实数标量}（缓冲位置，从0开始）

{p 19 24 2}
{it:fh}:  由 {help mf_fopen_zh:fopen()} 返回的文件句柄

{p 16 24 2}
{it:bfmt}:  {it:字符串标量}（二进制格式；见 {help mf_bufio##bfmt:以下})

{p 20 24 2}
{it:r}:  {it:字符串标量}
{p_end}
{p 20 24 2}
{it:c}:  {it:字符串标量}
{p_end}
{p 20 24 2}
{it:X}:  要写入的值；见 {help mf_bufio##remarks:备注}


{marker bfmt}{...}
{p 4 4 2}
{it:bfmt} 可能包含

{col 8}{it:bfmt}{col 25}含义
{col 8}{hline 68}
{col 8}{...}
{helpb mf_bufio##remarks6:%{c -(}8|4{c )-}z}{...}
{col 25}{...}
8字节浮点或4字节浮点
{...}
{col 8}{...}
{helpb mf_bufio##remarks6:%{c -(}4|2|1{c )-}b[s|u]}{...}
{col 25}{...}
4、2或1字节整数；{help mf_bufio##Stata:Stata}，有符号或无符号
{...}
{col 8}{...}
{helpb mf_bufio##remarks7:%{it:#}s}{...}
{col 25}{...}
文本字符串
{...}
{col 8}{...}
{helpb mf_bufio##remarks7:%{it:#}S}{...}
{col 25}{...}
二进制字符串
{col 8}{hline 68}


{marker description}{...}
{title:描述}

{pstd}
这些函数操作包含二进制数据的缓冲区（字符串标量），并可选择执行I/O。

{pstd}
{cmd:bufio()} 返回一个控制向量 {it:C}，您可以将其传递给其他缓冲区函数。  {it:C} 指定缓冲区的字节顺序，并指定如何对缺失值进行编码。 尽管名称如此，{cmd:bufio()} 不会打开任何文件，也不会执行任何I/O。 {cmd:bufio()} 仅返回一个用于其余缓冲区函数的默认值向量。

{pstd}
{cmd:bufbyteorder()} 和 {cmd:bufmissingvalue()} 允许更改 {it:C} 中的默认值。

{pstd}
{cmd:bufput()} 和 {cmd:bufget()} 将元素复制到缓冲区和从缓冲区中取出。 不执行I/O。 然后，可以使用 {cmd:fwrite()} 将缓冲区写入文件，使用 {cmd:fread()} 从文件中读取；见 {bf:{help mf_fopen_zh:[M-5] fopen()}}。

{pstd} 
{cmd:fbufput()} 和 {cmd:fbufget()} 也做同样的事情，并通过使用 {cmd:fwrite()} 或 {cmd:fread()} 执行相应的I/O。

{pstd}
{cmd:bufbfmtlen(}{it:bfmt}{cmd:)} 和 {cmd:bufbfmtisnum(}{it:bfmt}{cmd:)} 是处理 {it:bfmts} 的实用程序例程；它们很少使用。 {cmd:bufbfmtlen(}{it:bfmt}{cmd:)} 返回指定 {it:bfmt} 的隐含长度（以字节为单位），而 {cmd:bufbfmtisnum(}{it:bfmt}{cmd:)} 如果 {it:bfmt} 为数字，则返回1；如果为字符串，则返回0。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection M-5 bufio()备注和示例:备注和示例}

{pstd}
上述章节不包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{pstd}
如果您只是想读取和写入矩阵等，请参见 {cmd:fgetmatrix()} 和 {cmd:fputmatrix()} 以及 {bf:{help mf_fopen_zh:[M-5] fopen()}} 中的其他函数。

{pstd}
这里记录的函数如果您希望

{p 8 12 2}
1.  创建自己的二进制数据格式，因为您正在编写低级语言（如FORTRAN或C）中的例程，并需要在您的新例程和Stata之间传递数据，或者 

{p 8 12 2}
2.  编写一个程序以读取和写入另一个软件包的二进制格式。

{pstd}
这些是高级且繁琐的编程项目。

{pstd} 
备注按以下标题呈现：

	{help mf_bufio##remarks1:基础}
	{help mf_bufio##remarks2:参数 C}
	{help mf_bufio##remarks3:参数 B 和 offset}
	{help mf_bufio##remarks4:参数 fh}
	{help mf_bufio##remarks5:参数 bfmt}
	{help mf_bufio##remarks6:数字数据的 bfmts}
	{help mf_bufio##remarks7:字符串数据的 bfmts}
	{help mf_bufio##remarks8:参数 X}
	{help mf_bufio##remarks9:参数 r 和 c}
	{help mf_bufio##remarks10:高级问题}


{marker remarks1}{...}
{title:基础}

{pstd}
假设您希望将矩阵写入磁盘，以便能够将其来回移动到FORTRAN。  您决定采用文件格式，首先写入行数和列数作为4字节整数，然后按行写入矩阵的值为8字节双精度浮点数：

	{c TLC}{hline 8}{c TT}{hline 8}{c TT}{hline 16}{c TT}{hline 16}{c TT}{hline 2} 
	{c |} 行数 {c |} 列数 {c |}         X[1,1] {c |}         X[1,2] {c |}  ... 
	{c BLC}{hline 8}{c BT}{hline 8}{c BT}{hline 16}{c BT}{hline 16}{c BT}{hline 2} 
	  4 字节  4 字节      8 字节          8 字节      

{pstd} 
以这种格式写入矩阵的一种解决方案如下：

	{cmd:fh = fopen("}{it:filename}{cmd:", "w")}
	{cmd:C  = bufio()}
	{cmd:fbufput(C, fh, "%4b", rows(X))}
	{cmd:fbufput(C, fh, "%4b", cols(X))}
	{cmd:fbufput(C, fh, "%8z", X)}
	{cmd:fclose(fh)}

{pstd}
读取矩阵的代码如下：

	{cmd:fh   = fopen("}{it:filename}{cmd:", "r")}
	{cmd:C    = bufio()}
	{cmd:rows = fbufget(C, fh, "%4b")}
	{cmd:cols = fbufget(C, fh, "%4b")}
	{cmd:X    = fbufget(C, fh, "%8z", rows, cols)}
	{cmd:fclose(fh)}

{pstd}
另一种略微更高效的解决方案是：

	{cmd:fh = fopen("}{it:filename}{cmd:", "w")}
	{cmd:C   = bufio()}
	{cmd:buf = 8*char(0)}
	{cmd:bufput(C, buf, 0, "%4b", rows(X))}
	{cmd:bufput(C, buf, 4, "%4b", cols(X))}
	{cmd:fwrite(C, buf)}
	{cmd:fbufput(C, fh, "%8z", X)}
	{cmd:fclose(fh)}

{pstd}
读取矩阵的代码是：

	{cmd:fh   = fopen("}{it:filename}{cmd:", "r")}
	{cmd:C    = bufio()}
	{cmd:buf  = fread(fh, 8)}
	{cmd:rows = bufget(C, buf, 0, "%4b")}
	{cmd:cols = bufget(C, buf, 4, "%4b")}
	{cmd:X    = fbufget(C, fh, "%8z", rows, cols)}
	{cmd:fclose(fh)}

{pstd}
使上述方法更有效的原因是，我们不再逐个写入4字节（行数）和4字节（列数），而是创建了一个8字节的缓冲区，并将两个4字节的字段放入其中，然后一次性写入所有的8字节。  我们在读取数据时则与此相反：读取所有8字节，然后分解出字段。  在这里好处微乎其微，但一般来说，写入更长的缓冲区会导致更快的I/O。

{pstd}
在所有上述示例中，我们使用一个函数调用写入和读取整个矩阵，

	{cmd:fbufput(C, fh, "%8z", X)}

{pstd}
和 

	{cmd:X    = fbufget(C, fh, "%8z", rows, cols)}

{pstd}
也许您会更喜欢我们用

	{cmd}for (i=1; i<=rows(X); i++) {
		for (j=1; j<=cols(X); j++) {
			fbufput(C, fh, "%8z", X[i,j])
		}
	}{txt}

{pstd}
或者您可能更喜欢编写类似的代码以读取矩阵。如果我们这样做，结果将是一样的。

{pstd}
如果您熟悉FORTRAN，您知道它以列优先的顺序记录矩阵，而不是Mata所使用的行优先顺序。如果我们改变文件格式设计，以便首先写入列，这将使FORTRAN方面的编码更加简单：

	{c TLC}{hline 8}{c TT}{hline 8}{c TT}{hline 16}{c TT}{hline 16}{c TT}{hline 2} 
	{c |} 行数 {c |} 列数 {c |}         X[1,1] {c |}         X[2,1] {c |}  ... 
	{c BLC}{hline 8}{c BT}{hline 8}{c BT}{hline 16}{c BT}{hline 16}{c BT}{hline 2} 
	  4 字节  4 字节      8 字节          8 字节      

{pstd}
我们可以通过自己编写循环实现这一点：

	{cmd:fh = fopen("}{it:filename}{cmd:", "w")}
	{cmd:C  = bufio()}
	{cmd:fbufput(C, fh, "%4b", rows(X))}
	{cmd:fbufput(C, fh, "%4b", cols(X))}
	{cmd}for (j=1; j<=cols(X); i++) {
		for (i=1; i<=rows(X); j++) {
			fbufput(C, fh, "%8z", X[i,j])
		}
	}{txt}

{pstd} 
我们可以这样做，但还有更高效和简单的方法。例如，我们可以在写入之前和读取之后转置矩阵，如果我们在原地执行转置，我们的代码不会使用额外的内存：

	{cmd:fh = fopen("}{it:filename}{cmd:", "w")}
	{cmd:C  = bufio()}
	{cmd:fbufput(C, fh, "%4b", rows(X))}
	{cmd:fbufput(C, fh, "%4b", cols(X))}
	{cmd:_transpose(X)}
	{cmd:fbufput(C, fh, "%8z", X)}
	{cmd:_transpose(X)}
	{cmd:fclose(fh)}

{pstd}
读取矩阵的代码如下：

	{cmd:fh   = fopen("}{it:filename}{cmd:", "r")}
	{cmd:C    = bufio()}
	{cmd:rows = bufget(C, fh, "%4b")}
	{cmd:cols = bufget(C, fh, "%4b")}
	{cmd:X    = fbufget(C, fh, "%8z", cols, rows)}
	{cmd:_transpose(X)}
	{cmd:fclose(fh)}


{marker remarks2}{...}
{title:参数 C}

{pstd}
在

{p 8 8 2}
{cmd:bufput(}{it:C}{cmd:,}
	{it:B}{cmd:,}
	{it:offset}{cmd:,}
	{it:bfmt}{cmd:,}
	{it:X}{cmd:)}, 

{p 8 8 2}
{cmd:bufget(}{it:C}{cmd:,}
	{it:B}{cmd:,}
	{it:offset}{cmd:,}
	{it:bfmt}{cmd:,} 
	...{cmd:)},

{p 8 8 2}
{cmd:fbufput(}{it:C}{cmd:,}
	{it:fh}{cmd:,}
	{it:bfmt}{cmd:,}
	{it:X}{cmd:)},
和

{p 8 8 2}
{cmd:fbufget(}{it:C}{cmd:,}
	{it:fh}{cmd:,}
	{it:bfmt}{cmd:,} 
	...{cmd:)}

{pstd}
指定控制向量。 您通过编码

	{cmd:C = bufio()}

{pstd}
{cmd:bufio()} 返回 {it:C}，它只不过是一个填充默认值的向量。 其他缓冲区例程知道如何解释该向量。 该向量包含两个信息部分：

{p 8 12 2}
1.
将要使用的字节顺序。

{p 8 12 2}
2.  
将要使用的缺失值编码方案。

{pstd}
某些计算机硬件将数字从左到右写入（例如，Sun），而另一些计算机硬件将数字从右到左写入（例如，Intel）；见 {bf:{help mf_byteorder_zh:[M-5] byteorder()}}。 如果您要写入二进制文件，并且希望您的文件在所有计算机上都可读，则必须编写代码来处理此问题。

{pstd}
许多程序员忽略这个问题，因为他们编写的程序是为一台计算机或与其使用的计算机相似的计算机而设计的。 如果是这种情况，您也可以忽略这个问题。 由 {cmd:bufio()} 填充的默认字节顺序是您正在使用的计算机的字节顺序。

{pstd}
然而，如果您打算在不同计算机之间读取和写入文件，您需要关注字节顺序，如何处理这个问题在下面的 {it:{help mf_bufio##remarks10:高级问题}} 中描述。

{pstd}
您可能需要考虑的另一个问题是缺失值。 如果您正在编写一个打算在Stata之外使用的二进制格式，最好是在写入时去掉缺失值。 并不是所有软件包都有缺失值，而有缺失值的软件包在编码方式上也没有一致性。 在这种情况下，如果您正在写入的数据包含缺失值，就将这些值更改为其他值，例如 -1、99、999 或 -9999。

{pstd}
然而，如果您正在在Stata中写入将要在Stata中读取的二进制文件，可以允许Stata的缺失值 {cmd:.}、{cmd:.a}、{cmd:.b}、...、{cmd:.z}。 不需要采取特殊行动。 {it:C} 中的缺失值方案指定了如何编码这些缺失值，目前只有一种方式，因此实际上没有任何问题。  {it:C} 包含额外的信息，以防Stata将来改变编码缺失值的方式，这样您将有方法来读取和写入旧格式文件。 该过程如何工作的描述见 {it:{help mf_bufio##remarks10:高级问题}}。


{marker remarks3}{...}
{title:参数 B 和 offset}

{pstd}
函数

{p 8 8 2}
{cmd:bufput(}{it:C}{cmd:,}
	{it:B}{cmd:,}
	{it:offset}{cmd:,}
	{it:bfmt}{cmd:,}
	{it:X}{cmd:)} 和 

{p 8 8 2}
{cmd:bufget(}{it:C}{cmd:,}
	{it:B}{cmd:,}
	{it:offset}{cmd:,}
	{it:bfmt}{cmd:,} 
	...{cmd:)}

{pstd} 
不执行I/O；它们将在缓冲区内复制值。 {it:B} 指定缓冲区，{it:offset} 指定在缓冲区内的位置。

{pstd} 
{it:B} 是一个字符串标量。

{pstd}
{it:offset} 是一个整数标量，指定在 {it:B} 内的位置。 偏移量0指定 {it:B} 的第一个字节。

{pstd}
对于 {cmd:bufput()}，{it:B} 必须已经存在并足够长以接收结果，通常编写如下内容：

	{cmd}B = (4 + 4 + rows(X)*cols(X)*8) * char(0)
	bufput(C, B, 0, "%4b", rows(X))
	bufput(C, B, 4, "%4b", cols(X))
	bufput(C, B, 8, "%8z", X){txt}


{marker remarks4}{...}
{title:参数 fh}

{pstd}
在 

{p 8 8 2}
{cmd:fbufput(}{it:C}{cmd:,}
	{it:fh}{cmd:,}
	{it:bfmt}{cmd:,}
	{it:X}{cmd:)}
和

{p 8 8 2}
{cmd:fbufget(}{it:C}{cmd:,}
	{it:fh}{cmd:,}
	{it:bfmt}{cmd:,} 
	...{cmd:)}

{pstd}
中，参数 {it:fh} 的角色与 {cmd:bufput()} 和 {cmd:bufget()} 中的参数 {it:B} 和 {it:offset} 相同。 数据不是复制到或从缓冲区中提取，而是写入或从文件 {it:fh} 读取。 {it:fh} 是通过 {cmd:fopen()} 获得的；见 {bf:{help mf_fopen_zh:[M-5] fopen()}}。


{marker remarks5}{...}
{title:参数 bfmt}

{pstd}
在 

{p 8 8 2}
{cmd:bufput(}{it:C}{cmd:,}
	{it:B}{cmd:,}
	{it:offset}{cmd:,}
	{it:bfmt}{cmd:,}
	{it:X}{cmd:)}, 

{p 8 8 2}
{cmd:bufget(}{it:C}{cmd:,}
	{it:B}{cmd:,}
	{it:offset}{cmd:,}
	{it:bfmt}{cmd:,} 
	...{cmd:)},

{p 8 8 2}
{cmd:fbufput(}{it:C}{cmd:,}
	{it:fh}{cmd:,}
	{it:bfmt}{cmd:,}
	{it:X}{cmd:)},
和

{p 8 8 2}
{cmd:fbufget(}{it:C}{cmd:,}
	{it:fh}{cmd:,}
	{it:bfmt}{cmd:,} 
	...{cmd:)}

{pstd}
规定元素的书写或读取方式。


{marker remarks6}{...}
{title:数字数据的 bfmts}

{pstd}
数字 {it:bfmts} 为

	{it:bfmt}{col 20}解释
	{hline 35}
	{cmd:%8z}{col 20}8字节浮点数
	{cmd:%4z}{col 20}4字节浮点数

	{cmd:%4bu}{col 20}4字节无符号整数
	{cmd:%4bs}{col 20}4字节有符号整数
	{cmd:%4b}{col 20}4字节Stata整数

	{cmd:%2bu}{col 20}2字节无符号整数
	{cmd:%2bs}{col 20}2字节有符号整数
	{cmd:%2b}{col 20}2字节Stata整数

	{cmd:%1bu}{col 20}1字节无符号整数
	{cmd:%1bs}{col 20}1字节有符号整数
	{cmd:%1b}{col 20}1字节Stata整数
	{hline 35}

{marker Stata}{...}
{pstd}
Stata整数与有符号整数相同，不同之处在于最大27个值被解释为 {cmd:.}、{cmd:.a}、{cmd:.b}、...、{cmd:.z}。


{marker remarks7}{...}
{title:字符串数据的 bfmts}

{pstd}
字符串 {it:bfmts} 为

	{it:bfmt}{col 20}解释
	{hline 35}
	{cmd:%}{it:#}{cmd:s}{col 20}文本字符串
	{cmd:%}{it:#}{cmd:S}{col 20}二进制字符串
	{hline 35}

{pstd}
其中 {it:#} 表示字符串字段的长度。  
示例包括 {cmd:%8s} 和 {cmd:%639876S}。

{pstd}
在写入时，不管您使用 {cmd:%}{it:#}{cmd:s} 还是 
{cmd:%}{it:#}{cmd:S}，执行的操作是相同的：

{p 8 12 2}
1.
如果正在写入的字符串短于 {it:#}，则字段将用 {cmd:char(0)} 填充。

{p 8 12 2}
2.
如果正在写入的字符串长于 {it:#}，则只写入字符串的前 {it:#} 字节。

{pstd}
在读取时，{cmd:%}{it:#}{cmd:s} 
和 
{cmd:%}{it:#}{cmd:S} 之间的区别是重要的：

{p 8 12 2}
1.  当使用 {cmd:%}{it:#}{cmd:s} 进行读取时，如果在前 {it:#} 字节内出现 {cmd:char(0)}，那么返回的结果将在此位置被截断。

{p 8 12 2}
2.  当使用 {cmd:%}{it:#}{cmd:S} 进行读取时，在所有情况下返回 {it:#} 字节。


{marker remarks8}{...}
{title:参数 X}

{pstd}
在 

{p 8 8 2}
{cmd:bufput(}{it:C}{cmd:,}
	{it:B}{cmd:,}
	{it:offset}{cmd:,}
	{it:bfmt}{cmd:,}
	{it:X}{cmd:)}
和

{p 8 8 2}
{cmd:fbufput(}{it:C}{cmd:,}
	{it:fh}{cmd:,}
	{it:bfmt}{cmd:,}
	{it:X}{cmd:)}

{pstd}
中，参数 {it:X} 指定要写入的值。  {it:X} 可以是实数或字符串，可以是标量、向量或矩阵。  如果 {it:X} 是向量，则元素将一个个写入。  如果 {it:X} 是矩阵，则首先写入第一行的元素，接着是第二行的元素，依此类推。

{pstd}
在

{p 8 8 2}
{it:X} = 
{cmd:bufget(}{it:C}{cmd:,}
	{it:B}{cmd:,}
	{it:offset}{cmd:,}
	{it:bfmt}{cmd:,} 
	...{cmd:)}
和

{p 8 8 2}
{it:X} = 
{cmd:fbufget(}{it:C}{cmd:,}
	{it:fh}{cmd:,}
	{it:bfmt}{cmd:,} 
	...{cmd:)}

{pstd}
中，返回 {it:X}。


{marker remarks9}{...}
{title:参数 r 和 c}

{pstd}
在以下情况下，参数 {it:r} 和 {it:c} 是可选的：

{p 8 8 2}
{it:X} = 
{cmd:bufget(}{it:C}{cmd:,}
	{it:B}{cmd:,}
	{it:offset}{cmd:,}
	{it:bfmt}{cmd:)}, 

{p 8 8 2}
{it:X} = 
{cmd:bufget(}{it:C}{cmd:,}
	{it:B}{cmd:,}
	{it:offset}{cmd:,}
	{it:bfmt}{cmd:,} 
	{it:c}{cmd:)}, 

{p 8 8 2}
{it:X} = 
{cmd:bufget(}{it:C}{cmd:,}
	{it:B}{cmd:,}
	{it:offset}{cmd:,}
	{it:bfmt}{cmd:,} 
	{it:r}{cmd:,} 
	{it:c}{cmd:)}, 

{p 8 8 2}
{it:X} = 
{cmd:fbufget(}{it:C}{cmd:,}
	{it:fh}{cmd:,}
	{it:bfmt}{cmd:)}, 

{p 8 8 2}
{it:X} = 
{cmd:fbufget(}{it:C}{cmd:,}
	{it:fh}{cmd:,}
	{it:bfmt}{cmd:,} 
	{it:c}{cmd:)}, 
和

{p 8 8 2}
{it:X} = 
{cmd:fbufget(}{it:C}{cmd:,}
	{it:fh}{cmd:,}
	{it:bfmt}{cmd:,} 
	{it:r}{cmd:,} 
	{it:c}{cmd:)}.

{pstd}
如果未指定 {it:r}，结果与 {it:r} = 1 的情况相同。

{pstd}
如果未指定 {it:c}，结果与 {it:c} = 1 的情况相同。

{pstd}
因此，

{p 8 8 2}
{it:X} = 
{cmd:bufget(}{it:C}{cmd:,}
	{it:B}{cmd:,}
	{it:offset}{cmd:,}
	{it:bfmt}{cmd:)}, 
和

{p 8 8 2}
{it:X} = 
{cmd:fbufget(}{it:C}{cmd:,}
	{it:fh}{cmd:,}
	{it:bfmt}{cmd:)}

{pstd}
将读取一个元素并返回， 
而 

{p 8 8 2}
{it:X} = 
{cmd:bufget(}{it:C}{cmd:,}
	{it:B}{cmd:,}
	{it:offset}{cmd:,}
	{it:bfmt}{cmd:,} 
	{it:c}{cmd:)}, 
和

{p 8 8 2}
{it:X} = 
{cmd:fbufget(}{it:C}{cmd:,}
	{it:fh}{cmd:,}
	{it:bfmt}{cmd:,} 
	{it:c}{cmd:)}

{pstd}
将读取 {it:c} 个元素并以列向量的形式返回，而 

{p 8 8 2}
{it:X} = 
{cmd:bufget(}{it:C}{cmd:,}
	{it:B}{cmd:,}
	{it:offset}{cmd:,}
	{it:bfmt}{cmd:,} 
	{it:r}{cmd:,} 
	{it:c}{cmd:)} 
和 

{p 8 8 2}
{it:X} = 
{cmd:fbufget(}{it:C}{cmd:,}
	{it:fh}{cmd:,}
	{it:bfmt}{cmd:,} 
	{it:r}{cmd:,} 
	{it:c}{cmd:)}

{pstd}
将读取 {it:r}*{it:c} 个元素并以 {it:r} {it:x} {it:c} 矩阵的形式返回。


{marker remarks10}{...}
{title:高级问题}

{pstd}
一个合理设计的二进制文件格式包括文件中的签名行：

	{cmd:fh = fopen(filename, "w")}
        {cmd:fwrite(fh, "MyFormat For Mats v. 1.0")}
                 /* ----+----1----+----2---- */

{pstd}
并且 

	{cmd:fh = fopen(filename, "r")}
	{cmd}if (fread(fh, 24) != "MyFormat For Mats v. 1.0") {
		errprintf("%s 不是 My-Format 文件\n", filename)
		exit(610)
	}{txt}

{pstd}
如果您关注字节顺序和缺失值的映射，您应该在文件中写入字节顺序和缺失值映射，按自然字节顺序写入，并做好在任一字节顺序下读取的准备。

{pstd}
写入的代码是

	{cmd}fh = fopen(filename, "w")
        fwrite(fh, "MyFormat For Mats v. 1.0")

	C = bufio()
	fbufput(C, fh, "%1bu", bufbyteorder(C))
	fbufput(C, fh, "%2bu", bufmissingvalue(C)){txt}

{pstd}
而读取文件的相应代码是

	{cmd:fh = fopen(filename, "r")}
	{cmd}if (fread(fh, 24) != "MyFormat For Mats v. 1.0") {
		errprintf("%s 不是 My-Format 文件\n", filename)
		exit(610)
	}

	C = bufio()
	bufbyteorder(C, fbufget(C, "%1bu"))
	bufmissingvalue(C, fbufget(C, "%2bu")){txt}

{pstd}
在记录字节顺序之前，我们在文件中写入的都是字符串和字节。  这样，当我们之后读取文件时，可以在读取任何2、4或8字节字段之前设置字节顺序。

{pstd}
{cmd:bufbyteorder(}{it:C}{cmd:)} -- {cmd:bufbyteorder()} 带一个参数 -- 
返回记录在 {it:C} 中的字节顺序编码。 它返回1（表示HILO）或2（表示LOHI）。

{pstd}
{cmd:bufbyteorder(}{it:C}{cmd:,} {it:value}{cmd:)} -- 
{cmd:bufbyteorder()} 带两个参数 -- 
重置记录在 {it:C} 中的字节顺序。 一旦重置，所有缓冲区函数在必要时将自动反转字节。

{pstd}
{cmd:bufmissingvalue()} 的函数方式相同。 带一个参数，它返回记录在 {it:C} 中的编码方案的代码（该代码为Stata版本号乘以100）。 带两个参数，重置该代码。 一旦重置，所有使用的缓冲区例程将自动采取适当的操作。


{marker conformability}{...}
{title:兼容性}

    {cmd:bufio()}:
	   {it:结果}:  {it:列向量}

    {cmd:bufbyteorder(}{it:C}{cmd:)}:
		{it:C}:  {it:列向量}{col 32}由 {cmd:bufio()} 创建
	   {it:结果}:  1 {it:x} 1{col 32}包含1（HILO）或2（LOHI）

    {cmd:bufbyteorder(}{it:C}{cmd:,} {it:byteorder}{cmd:)}:
		{it:C}:  {it:列向量}{col 32}由 {cmd:bufio()} 创建
	{it:byteorder}:  1 {it:x} 1{col 32}包含1（HILO）或2（LOHI）
	   {it:结果}: {it:无}

    {cmd:bufmissingvalue(}{it:C}{cmd:)}:
		{it:C}:  {it:列向量}{col 32}由 {cmd:bufio()} 创建
	   {it:结果}:  1 {it:x} 1 

    {cmd:bufmissingvalue(}{it:C}{cmd:,} {it:version}{cmd:)}:
		{it:C}:  {it:列向量}{col 32}由 {cmd:bufio()} 创建
	  {it:version}:  1 {it:x} 1
	   {it:结果}: {it:无}

{p 4 4 2}
{cmd:bufput(}{it:C}{cmd:,}
{it:B}{cmd:,}
{it:offset}{cmd:,}
{it:bfmt}{cmd:,}
{it:X}{cmd:)}:
{p_end}
		{it:C}:  {it:列向量}{col 32}由 {cmd:bufio()} 创建
		{it:B}:  1 {it:x} 1
	   {it:offset}:  1 {it:x} 1
	     {it:bfmt}:  1 {it:x} 1
		{it:X}:  {it:r x c}
	   {it:结果}:  {it:无}

{p 4 4 2}
{cmd:bufget(}{it:C}{cmd:,}
{it:B}{cmd:,}
{it:offset}{cmd:,}
{it:bfmt}{cmd:)}:
{p_end}
		{it:C}:  {it:列向量}{col 32}由 {cmd:bufio()} 创建
		{it:B}:  1 {it:x} 1
	   {it:offset}:  1 {it:x} 1
	     {it:bfmt}:  1 {it:x} 1
	   {it:结果}:  1 {it:x} 1

{p 4 4 2}
{cmd:bufget(}{it:C}{cmd:,}
{it:B}{cmd:,}
{it:offset}{cmd:,}
{it:bfmt}{cmd:,}
{it:r}{cmd:)}:
{p_end}
		{it:C}:  {it:列向量}{col 32}由 {cmd:bufio()} 创建
		{it:B}:  1 {it:x} 1
	   {it:offset}:  1 {it:x} 1
	     {it:bfmt}:  1 {it:x} 1
		{it:r}:  1 {it:x} 1
	   {it:结果}:  1 {it:x c}

{p 4 4 2}
{cmd:bufget(}{it:C}{cmd:,}
{it:B}{cmd:,}
{it:offset}{cmd:,}
{it:bfmt}{cmd:,}
{it:r}{cmd:,}
{it:c}{cmd:)}:
{p_end}
		{it:C}:  {it:列向量}{col 32}由 {cmd:bufio()} 创建
		{it:B}:  1 {it:x} 1
	   {it:offset}:  1 {it:x} 1
	     {it:bfmt}:  1 {it:x} 1
		{it:r}:  1 {it:x} 1
		{it:c}:  1 {it:x} 1
	   {it:结果}:  {it:r x c}

{p 4 4 2}
{cmd:fbufput(}{it:C}{cmd:,}
{it:fh}{cmd:,}
{it:bfmt}{cmd:,}
{it:X}{cmd:)}:
{p_end}
		{it:C}:  {it:列向量}{col 32}由 {cmd:bufio()} 创建
	       {it:fh}:  1 {it:x} 1
	     {it:bfmt}:  1 {it:x} 1
		{it:X}:  {it:r x c}
	   {it:结果}:  {it:无}

{p 4 4 2}
{cmd:fbufget(}{it:C}{cmd:,}
{it:fh}{cmd:,}
{it:bfmt}{cmd:)}:
{p_end}
		{it:C}:  {it:列向量}{col 32}由 {cmd:bufio()} 创建
	       {it:fh}:  1 {it:x} 1
	     {it:bfmt}:  1 {it:x} 1
	   {it:结果}:  1 {it:x} 1

{p 4 4 2}
{cmd:fbufget(}{it:C}{cmd:,}
{it:fh}{cmd:,}
{it:bfmt}{cmd:,}
{it:r}{cmd:)}:
{p_end}
		{it:C}:  {it:列向量}{col 32}由 {cmd:bufio()} 创建
	       {it:fh}:  1 {it:x} 1
	     {it:bfmt}:  1 {it:x} 1
		{it:r}:  1 {it:x} 1
	   {it:结果}:  1 {it:x c}

{p 4 4 2}
{cmd:fbufget(}{it:C}{cmd:,}
{it:fh}{cmd:,}
{it:bfmt}{cmd:,}
{it:r}{cmd:,}
{it:c}{cmd:)}:
{p_end}
		{it:C}:  {it:列向量}{col 32}由 {cmd:bufio()} 创建
	       {it:fh}:  1 {it:x} 1
	     {it:bfmt}:  1 {it:x} 1
		{it:r}:  1 {it:x} 1
		{it:c}:  1 {it:x} 1
	   {it:结果}:  {it:r x c}

    {cmd:bufbfmtlen(}{it:bfmt}{cmd:)}:
	     {it:bfmt}:  1 {it:x} 1
	   {it:结果}:  1 {it:x} 1

    {cmd:bufbfmtisnum(}{it:bfmt}{cmd:)}:
	     {it:bfmt}:  1 {it:x} 1
	   {it:结果}:  1 {it:x} 1


{marker diagnostics}{...}
{title:诊断}

{pstd}
{cmd:bufio()} 不会失败。

{pstd}
{cmd:bufbyteorder(}{it:C}{cmd:)} 不会失败。
{cmd:bufbyteorder(}{it:C}{cmd:,} {it:byteorder}{cmd:)} 
如果 {it:byteorder} 不是1或2，则会中止并报错。

{pstd}
{cmd:bufmissingvalue(}{it:C}{cmd:)} 不会失败。
{cmd:bufmissingvalue(}{it:C}{cmd:,} {it:version}{cmd:)} 
如果 {it:version} < 100 或 
{it:version} > {bf:{help mf_stataversion_zh:stataversion()}}，则会中止并报错。

{pstd}
{cmd:bufput(}{it:C}{cmd:,} 
{it:B}{cmd:,}
{it:offset}{cmd:,}
{it:bfmt}{cmd:,}
{it:X}{cmd:)}
会中止并报错 
如果 {it:B} 太短以接收结果， 
{it:offset} 超出范围， 
{it:bfmt} 无效， 
或者 
{it:bfmt} 是字符串格式且 {it:X} 是数字格式或反之。
插入空矩阵会导致缓冲区中插入0字节，并且不是错误。

{pstd}
{cmd:bufget(}{it:C}{cmd:,} 
{it:B}{cmd:,}
{it:offset}{cmd:,}
{it:bfmt}{cmd:,}
...{cmd:)}
会中止并报错 
如果 {it:B} 太短， 
{it:offset} 超出范围， 
或者
{it:bfmt} 无效。
读取零行或列会导致返回结果为空，并且不是错误。

{pstd}
{cmd:fbufput(}{it:C}{cmd:,} 
{it:fh}{cmd:,}
{it:bfmt}{cmd:,}
{it:X}{cmd:)}
会中止并报错 
如果 {it:fh} 无效， 
{it:bfmt} 无效， 
或者 
{it:bfmt} 是字符串格式且 {it:X} 是数字格式或反之。
插入空矩阵会导致写入0字节，并且不是错误。
可能会出现I/O错误；使用 {helpb mf_fstatus:fstatus()} 来检测它们。

{pstd}
{cmd:fbufget(}{it:C}{cmd:,} 
{it:fh}{cmd:,}
{it:bfmt}{cmd:,}
...{cmd:)}
会中止并报错 
如果 {it:fh} 无效
或者
{it:bfmt} 无效。
读取零行或列会导致返回结果为空，并且不是错误。  可能会出现EOF和I/O错误；使用
{helpb mf_fstatus:fstatus()} 来检测它们。

{pstd}
{cmd:bufbfmtlen(}{it:bfmt}{cmd:)}
和 
{cmd:bufbfmtisnum(}{it:bfmt}{cmd:)}
如果 {it:bfmt} 无效则中止并报错。


{marker source}{...}
{title:源代码}

{pstd}
{view bufio.mata, adopath asis:bufio.mata}, 
{view bufbyteorder.mata, adopath asis:bufbyteorder.mata}, 
{view bufmissingvalue.mata, adopath asis:bufmissingvalue.mata},
{view fbufput.mata, adopath asis:fbufput.mata},
{view fbufget.mata, adopath asis:fbufget.mata};
其他函数是内置的。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_bufio.sthlp>}