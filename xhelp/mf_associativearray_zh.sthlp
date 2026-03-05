{smcl}
{* *! version 1.0.6  15may2018}{...}
{vieweralsosee "[M-5] AssociativeArray()" "mansection M-5 AssociativeArray()"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-5] asarray()" "help mf_asarray_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] Manipulation" "help m4_manipulation_zh"}{...}
{vieweralsosee "[M-4] Programming" "help m4_programming_zh"}{...}
{viewerjumpto "Syntax" "mf_associativearray_zh##syntax"}{...}
{viewerjumpto "Description" "mf_associativearray_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mf_associativearray_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "mf_associativearray_zh##remarks"}{...}
{viewerjumpto "Conformability" "mf_associativearray_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf_associativearray_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf_associativearray_zh##source"}
{help mf_associativearray:English Version}
{hline}{...}
{p2colset 1 29 31 2}{...}
{p2col:{bf:[M-5] AssociativeArray()} {hline 2}}关联数组（类）
{p_end}
{p2col:}({mansection M-5 AssociativeArray():查看完整的PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{col 9}{...}
{cmd:class AssociativeArray scalar} {it:A}{...}
{right:{it:创建一个带有 {cmd:string scalar} 键的数组}      }
{col 9}{it:或}
{col 9}{...}
{it:A}{cmd: = AssociativeArray()}{...}
{right:{it:创建一个带有 {cmd:string scalar} 键的数组}      }

{col 9}{...}
{it:A}{cmd:.reinit(}[  {it:keytype}{...}
{right:{cmd:"string",} {cmd:"real",} {cmd:"complex",} ...          }
{col 18}[{cmd:,} {it:keydim} {...}
{right:{cmd:1} {it:到} {cmd:50}                                   }
{col 18}[{cmd:,} {it:minsize}{...}
{right:{it:调整参数}                          }
{col 18}[{cmd:,} {it:minratio}{...}
{right:{it:调整参数}                          }
{col 18}[{cmd:,} {it:maxratio} ]]]]]{cmd:)}{...}
{right:{it:调整参数}                          }

{col 9}{...}
{it:A}{cmd:.put(}{it:key}{cmd:,} {...}
{it:val}{cmd:)}{...}
{right:{it:A[key] = val                              }}

{col 9}{...}
{it:val} {cmd:=} {...}
{it:A}{cmd:.get(}{it:key}{cmd:)}{...}
{right:{it:val = A[key] 或 val = notfound            }}

{col 9}{...}
{it:A}{cmd:.notfound(}{it:notfound}{cmd:)}{...}
{right:{it:改变未找到的值                     }}

{col 9}{...}
{it:notfound} {cmd:=} {...}
{it:A}{cmd:.notfound()}{...}
{right:{it:查询未找到的值                      }}

{col 9}{...}
{it:A}{cmd:.remove(}{it:key}{cmd:)}{...}
{right:{it:删除 A[key]（如果存在）                }}

{col 9}{...}
{it:bool} {cmd:=} {...}
{it:A}{cmd:.exists(}{it:key}{cmd:)} {...}
{right:{it:A[key] 是否存在？                            }}

{col 9}{...}
{it:val}{cmd: = }{it:A}{cmd:.firstval()}{...}
{right:{it:第一个值或未找到                     }}
{col 9}{...}
{it:val}{cmd: = }{it:A}{cmd:.nextval()}{...}
{right:{it:下一个值或未找到                      }}
{col 9}{...}
{it:key}{cmd: = }{it:A}{cmd:.key()}{...}
{right:{it:与值对应的键                  }}
{col 9}{...}
{it:val}{cmd: = }{it:A}{cmd:.val()}{...}
{right:{it:再次获取值                             }}

{col 9}{...}
{it:loc}{cmd: = }{it:A}{cmd:.firstloc()}{...}
{right:{it:第一个位置或} {cmd:NULL}             }
{col 9}{...}
{it:loc}{cmd: = }{it:A}{cmd:.nextloc()}{...}
{right:{it:下一个位置或} {cmd:NULL}              }
{col 9}{...}
{it:key}{cmd: = }{it:A}{cmd:.key(}{it:loc}{cmd:)}{...}
{right:{it:在位置上的键                           }}
{col 9}{...}
{it:val}{cmd: = }{it:A}{cmd:.val(}{it:loc}{cmd:)}{...}
{right:{it:在位置上的值                           }}

{col 9}{...}
{it:keys}{cmd: = }{it:A}{cmd:.keys()}{...}
{right:{it:N x 键维度的已定义键矩阵         }}

{col 9}{...}
{it:N}{cmd: = }{it:A}{cmd:.N()}{...}
{right:{it:N，已定义键的数量                 }}

{col 9}{...}
{it:A}{cmd:.clear()}{...}
{right:{it:清除数组；将 N 设置为 0             }}


{marker description}{...}
{title:描述}

{pstd}
{cmd:AssociativeArray} 提供了一个基于类的接口，用于访问 {cmd:asarray()} 提供的关联数组；请参见 {help mf_asarray_zh:[M-5] asarray()}。
基于类的接口提供了更简洁的函数名称，使得使用它编写的代码更容易阅读。

{pstd}
关联数组也被称为容器、映射、字典、索引和哈希表。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection M-5 AssociativeArray()Remarksandexamples:备注和示例}

{pstd}
上述部分不包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{pstd} 
数组是计算机术语。 一维数组是具有元素 {it:A[i]} 的向量。 二维数组是具有元素 {it:A[i,j]} 的矩阵。 三维数组在三个维度上对矩阵进行了广义化，具有元素 {it:A[i,j,k]}，以此类推。

{pstd}
关联数组是一种数组，其中的索引不一定是整数。 最常见情况下，索引是字符串，因此你可能会有 {it:A["bill"]}，{it:A["bill", "bob"]}，{it:A["bill", "bob", "mary"]} 等等。

{pstd}
通过 {cmd:AssociativeArray} 创建的关联数组是一维的，并且键默认是字符串类型。 此外，元素可以是任何类型，甚至每个元素可以不同。 当你编码时会创建这样的数组

       {cmd:function foo(}...{cmd:)}
       {cmd:{c -(}}
                {cmd:class AssociativeArray scalar  }{it:A}
                .
                .
       {cmd:{c )-}}

{pstd} 
或者如果你在交互式工作中，你输入

        {cmd:: }{it:A}{cmd: = AssociativeArray()}

{pstd}
无论哪种方式，{it:A} 现在是一个带有字符串键的一维数组。
这是大多数用户希望使用的关联数组风格，但如果你想要不同的风格，例如，带有实数键的二维数组，你可以接下来使用 {it:A}{cmd:.reinit()} 来更改样式。
你编码

       {cmd:function foo(}...{cmd:)}
       {cmd:{c -(}}
                {cmd:class AssociativeArray scalar  }{it:A}

                {it:A}{cmd:.reinit("real", 2)}
                .
                .
       {cmd:{c )-}}

{pstd}
或者你交互式输入

        {cmd:: }{it:A}{cmd: = AssociativeArray()}

        {cmd:: }{it:A}{cmd:.reinit("real", 2)}

{pstd}
这个关联数组会像矩阵一样，你可以存储元素如 {it:A[1,2]}，{it:A[2,1]}：

        {cmd:: }{it:A}{cmd:.put((1,2),  5)}
        {cmd:: }{it:A}{cmd:.put((2,1), -2)}

{pstd}
{it:A}{cmd:.put()} 是我们定义元素或更改已定义元素内容的方式。 如果我们输入

        {cmd:: }{it:A}{cmd:.put((2,1), -5)}

{pstd} 
{it:A[2,1]} 将从 -2 变为 -5。
{it:A}{cmd:.put()} 的第一个参数是键（想想索引），第二个参数是要分配的值。 第一个参数用括号括起来，因为 {it:A} 是二维数组，因此键是 1{it:x}2。

{pstd}
如果我们现在编码

        {cmd:x = }{it:A}{cmd:.get((1,2))}
        {cmd:y = }{it:A}{cmd:.get((2,1))}

{pstd}
那么 {cmd:x} 将等于 5， {cmd:y} 将等于 -5。 {it:A} 似乎像是一个常规矩阵，但事实并非如此。 其中一个区别是仅 {it:A[1,2]} 和 {it:A[2,1]} 被定义，而 {it:A[1,1]} 和 {it:A[2,2]} 并没有定义。 如果我们通过输入来获取 {it:A[1,1]} 的值

        {cmd:z = }{it:A}{cmd:.get((1,1))}

{pstd}
这不会是一个错误，但我们会感到惊讶，因为 {cmd:z} 将等于 {cmd:J(0,0,.)}，一个实际的 0{it:x}0 矩阵。 那就是 {cmd:AssociativeArray} 表达的方式，表示 {it:A[1,1]} 从未被定义。 我们可以更改 {cmd:AssociativeArray} 在元素未定义时返回的内容。 让我们将其更改为零：

        {it:A}{cmd:.notfound(0)}

{pstd} 
现在如果我们通过输入获取 {it:A[1,1]} 的值 

        {cmd:z = }{it:A}{cmd:.get((1,1))}

{pstd}
{cmd:z} 将等于零。 我们正在创建稀疏矩阵！ 实际上，我们已经创建了一个稀疏矩阵。 我不知道我们的矩阵是 2{it:x}2 还是 1000{it:x}1000，因为 {it:A[i,j]} 对于所有 ({it:i,j}) 不等于 (1,2) 和 (2,1) 都是 0。 我们只能分别跟踪总维度。
如果我定义 

        {it:A}{cmd:.put((1000,1000), 6)}

{pstd}
那么稀疏矩阵至少会是 1000{it:x}1000。 而我们的矩阵确实是稀疏的且存储高效，因为 {it:A} 仅包含三个元素。

{pstd}
创建稀疏矩阵是使用关联数组的一种方法。 但是，典型的使用涉及带有字符串键的一维数组，这些关联数组通常与稀疏矩阵相反，因为它们存储很多元素，而不是仅存储少数几个元素。 人们可以想象一个关联数组

        {cmd:: Dictionary = AssociativeArray()}

{pstd} 
其中元素是 {cmd:string} {cmd:colvector}，结果是：

        {cmd:: Dictionary.get("aback")}
          [1, 1] = (古老的) 朝后或处于后方的情况。
          [2, 1] = (航海) 船帆被风压向桅杆后方。

{pstd} 
我通过编码存储了 "aback" 的定义 

        {cmd::  Dictionary.put("aback",}
                           (
                               "(古老的) 朝后或处于后方的情况。"
                               \
                               "(航海) 船帆被风压向桅杆后方。"
                           ))

{pstd}
关联数组的一个重要特点是我可以输入 25,591 个其他单词的定义，且 {cmd:Dictionary.get()} 可以几乎瞬间找到任何单词的定义，包括 "wombat"。 性能不会依赖于按字母顺序输入单词。 它们可以任意顺序定义。 有用户曾抱怨在 500,000 到 1,000,000 元素之间速度变慢，但这是由于一个错误，我们已修复。

{pstd}
以下是 {cmd:AssociativeArray} 特性的摘要。

{pstd}
{it:初始化:}

{p 8 8 2}
在你编写的函数中声明 {it:A}，

                {cmd:class AssociativeArray scalar  }{it:A}

{p 8 8 2}
或者如果以交互式方式工作，使用创建函数创建 {it:A}： 

                {it:A} = {cmd:AssociativeArray()}

{p 8 8 2}
{it:A} 现在是一个由 {cmd:string} 键索引的关联数组。
{cmd:string} 是默认类型。


{pstd}
{it:重新初始化:}

{p 8 8 2}
初始化后，关联数组准备好使用 {cmd:string} 键。
如果要更改键的类型或设置调整参数，请使用 {it:A}{cmd:.reinit()}。
键可以是 {cmd:scalar} 或 {cmd:rowvector}，并可以是 {cmd:real}、{cmd:complex}、{cmd:string}，甚至是 {cmd:pointer}。

{col 14}{...}
{it:A}{cmd:.reinit(}[  {it:keytype}{...}
{right:{cmd:"string",} {cmd:"real",} {cmd:"complex",} ...    }
{col 23}[{cmd:,} {it:keydim} {...}
{right:{cmd:1} {it:到} {cmd:50}                             }
{col 23}[{cmd:,} {it:minsize}{...}
{right:{it:调整参数}                    }
{col 23}[{cmd:,} {it:minratio}{...}
{right:{it:调整参数}                    }
{col 23}[{cmd:,} {it:maxratio} ]]]]]{cmd:)}{...}
{right:{it:调整参数}                    }

{p 8 8 2}
不要指定调整参数。 将 {it:A}{cmd:.reinit()} 视为仅允许两个参数。 除非你了解参数的工作原理，否则你不太可能改善默认值。 调整参数在 {help mf_asarray_zh:[M-5] asarray()} 中有所描述。


{pstd}
{it:添加或替换数组中的元素:}

{p 8 8 2}
使用 {it:A}{cmd:.put()} 添加或替换数组中的元素：

{col 15}{...}
{it:A}{cmd:.put(}{it:key}{cmd:,} {...}
{it:val}{cmd:)}{...}
{right:{it:A[key] = val                       }}

{p 8 8 2}
值可以是任何元素类型，即 {cmd:real}、{cmd:complex}、{cmd:string} 或 {cmd:pointer}。 它们甚至可以是结构或类实例。 值可以是标量、向量或矩阵。 值类型不需要声明。 值类型甚至可以在一个元素与下一个元素之间变化。


{pstd}
{it:从数组中检索元素:}

{p 8 8 2}
使用 {it:A}{cmd:.get()} 检索值：

{col 15}{...}
{it:val} {cmd:=} {...}
{it:A}{cmd:.get(}{it:key}{cmd:)}{...}
{right:{it:val = A[key] 或 val = notfound     }}

{p 8 8 2}
为从未定义的键检索值不是错误。 在这种情况下会返回一个称为 {it:notfound} 的特殊值。 {it:notfound} 的默认值是 {cmd:J(0,0,.)}。 你可以更改它：

{col 15}{...}
{it:A}{cmd:.notfound(}{it:notfound}{cmd:)}{...}
{right:{it:改变未找到的值               }}

{p 8 8 2}
包含数字值的关联数组的用户常常通过编码 {it:A}{cmd:.notfound(0)} 或 {it:A}{cmd:.notfound(.)} 将 {it:notfound} 更改为零或缺失。

{p 8 8 2}
你可以使用 {it:A}{cmd:.notfound()} 查询当前的 {it:notfound} 值，而不带参数：

{col 15}{...}
{it:notfound} {cmd:=} {...}
{it:A}{cmd:.notfound()}{...}
{right:{it:查询未找到的值                }}


{p 4 4 2}
{it:在数组中删除元素:}

{p 8 8 2}
使用 {it:A}{cmd:.remove()} 删除元素：

{col 15}{...}
{it:A}{cmd:.remove(}{it:key}{cmd:)}{...}
{right:{it:删除 A[key]（如果存在）          }}

{p 8 8 2}
函数 {it:A}{cmd:.exists()} 将告诉你元素是否存在：

{col 15}{...}
{it:bool} {cmd:=} {...}
{it:A}{cmd:.exists(}{it:key}{cmd:)} {...}
{right:{it:A[key] 是否存在？                      }}

{p 8 8 2} 
该函数返回 1 或 0； 1 表示元素存在。 你可能会质疑这个函数的必要性，因为 {it:A}{cmd:.get()} 在元素不存在时返回 {it:notfound}。
为什么有两种方法来完成一个任务？ 
{it:A}{cmd:.exists()} 有用，因为你可以将 {it:notfound} 值存储在元素中。 当然不应该这么做。


{pstd}
{it:遍历数组中的所有元素:}

{p 8 8 2}
有三种方法可以遍历元素。

{p 8 8 2}
{it:方法 1} 是

{col 15}{...}
{cmd:for (val=}{it:A}{cmd:.firstval();} {...}
{cmd:val!=}{it:notfound}{cmd:;} {...}
{cmd:val=}{it:A}{cmd:.nextval()) {c -(}}
{col 23}{cmd:key = }{it:A}{cmd:.key()}       // 如果需要的话
{col 23}.
{col 23}.
{col 15}{cmd:{c )-}}

{p 8 8 2}
在循环内部，{cmd:val} 包含元素的值。 如果你需要知道元素的键，请使用 {it:A}{cmd:.key()}。

{p 8 8 2}
{it:方法 2} 是

{col 15}{cmd:transmorphic  loc}

{col 15}{...}
{cmd:for (loc=}{it:A}{cmd:.firstloc(); }{...}
{cmd:loc!=NULL; }{...}
{cmd:loc=}{it:A}{cmd:.nextloc()) {c -(}}
{col 23}{cmd:val = }{it:A}{cmd:.val(loc)}
{col 23}{cmd:key = }{it:A}{cmd:.key(loc)}    // 如果需要的话
{col 23}.
{col 23}.
{col 15}{cmd:{c )-}}

{p 8 8 2}
方法 2 允许递归。 如果你在循环中调用一个子程序，这个子程序本身可能会遍历数组中的元素，则使用方法 2。

{p 8 8 2}
{it:方法 3} 是一种完全不同的方法。 你获取所有已定义键的完整集合并遍历它们。 函数 {it:A}.{cmd:keys()} 返回将键作为矩阵。 矩阵的每一行是一个键。

{col 15}{cmd:K = }{it:A}{cmd:.keys()}
{col 15}{cmd:for (i=1; i<=length(K); i++) {c -(}}
{col 23}{cmd:val = }{it:A}{cmd:.get(K[i,.])}
{col 23}.
{col 23}.
{col 15}{cmd:{c )-}}

{p 8 8 2}
{it:A}{cmd:.keys()} 返回的键没有特定顺序。
对于某些循环，顺序很重要。 使用 Mata 的 {cmd:sort()} 函数对它们进行排序。
如果键的维度为 1，因此 {cmd:K} 为 {it:N x} 1，你可以编码

{col 15}{cmd:K = sort(}{it:A}{cmd:.keys(), 1)}

{p 8 8 2}
如果 {it:A} 为 {it:N x k}，你可以编码 

{col 15}{cmd:K = sort(}{it:A}{cmd:.keys(), (1..}{it:k}{cmd:))}

{p 8 8 2}
向量运算符 {cmd:1..}{it:k} 生成行向量 (1, 2, ..., {it:k})。


{pstd}
{it:杂项:}

{p 8 8 2}
{it:A}{cmd:.N()} 返回 {it:A} 中已定义元素的数量。

{p 8 8 2}
{it:A}{cmd:.clear()} 清除数组 {it:A}。 数组的特性 -- 键类型和维度、{it:notfound} 值以及调整参数 -- 保持不变。


{marker conformability}{...}
{title:兼容性}

{p 4 4 2}
{it:A}{cmd:.reinit(}{it:keytype}{cmd:,}
{it:keydim}{cmd:,}
{it:minsize}{cmd:,}
{it:minratio}{cmd:,}
{it:maxratio}{cmd:)}:
{p_end}
	  {it:keytype}:  1 {it:x} 1    (可选)
	   {it:keydim}:  1 {it:x} 1    (可选)
	  {it:minsize}:  1 {it:x} 1    (可选)
	 {it:minratio}:  1 {it:x} 1    (可选)
	 {it:maxratio}:  1 {it:x} 1    (可选)

{p 4 4 2}
{it:A}{cmd:.put(}{it:key}{cmd:,}
{it:a}{cmd:)}:
{p_end}
	      {it:key}:  1 {it:x} {it:keydim}
		{it:a}:  {it:r_key x c_key}; {it:r_key} 和 {it:c_key} 自行选择
	   {it:result}:  {it:void}

{p 4 4 2}
{it:A}{cmd:.get(}{it:key}{cmd:)}:
{p_end}
	      {it:key}:  1 {it:x} {it:keydim}
	   {it:result}:  {it:r_key x c_key}

{p 4 4 2}
{it:A}{cmd:.remove(}{it:key}{cmd:)}:
{p_end}
	      {it:key}:  1 {it:x} {it:keydim}
	   {it:result}:  {it:void}

{p 4 4 2}
{it:A}{cmd:.clear()}:
{p_end}
	   {it:result}:  {it:void}

{p 4 4 2}
{it:A}{cmd:.exists(}{it:key}{cmd:)}:
{p_end}
	      {it:key}:  1 {it:x} {it:keydim}
	   {it:result}:  1 {it:x} 1

{p 4 4 2}
{it:A}{cmd:.N()}:
{p_end}
	   {it:result}:  1 {it:x} 1

{p 4 4 2}
{it:A}{cmd:.keys()}:
{p_end}
	   {it:result}:  {it:N} {it:x} {it:keydim}

{p 4 4 2}
{it:A}{cmd:.firstval()}:
{p_end}
	   {it:result}:  {it:变形类型}

{p 4 4 2}
{it:A}{cmd:.firstloc()}:
{p_end}
	   {it:result}:  {it:变形类型}

{p 4 4 2}
{it:A}{cmd:.nextval()}:
{p_end}
	   {it:result}:  {it:变形类型}

{p 4 4 2}
{it:A}{cmd:.nextloc()}:
{p_end}
	   {it:result}:  {it:变形类型}

{p 4 4 2}
{it:A}{cmd:.key()}:
{p_end}
	   {it:result}:  1 {it:x} {it:keydim}

{p 4 4 2}
{it:A}{cmd:.key(}{it:loc}{cmd:)}:
{p_end}
	      {it:loc}:  {it:变形类型}
	   {it:result}:  1 {it:x} {it:keydim}

{p 4 4 2}
{it:A}{cmd:.val()}:
{p_end}
	   {it:result}:  {it:r_key} {it:x} {it:c_key}

{p 4 4 2}
{it:A}{cmd:.val(}{it:loc}{cmd:)}:
{p_end}
	      {it:loc}:  {it:变形类型}
	   {it:result}:  {it:r_key} {it:x} {it:c_key}

{p 4 4 2}
{it:A}{cmd:.notfound(}{it:notfound}{cmd:)}:
{p_end}
	 {it:notfound}:  {it:r} {it:x} {it:c}; 自行选择
	   {it:result}:  {it:void}

{p 4 4 2}
{it:A}{cmd:.notfound()}:
{p_end}
	   {it:result}:  {it:r} {it:x} {it:c}


{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
无。 


{marker source}{...}
{title:源代码}

{p 4 4 2}
{view associativearray.mata, adopath asis:associativearray.mata}
{view asarray.mata, adopath asis:asarray.mata}
{p_end}


{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_associativearray.sthlp>}