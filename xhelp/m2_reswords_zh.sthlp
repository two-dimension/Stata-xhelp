{smcl}
{* *! version 1.2.5  15may2018}{...}
{vieweralsosee "[M-2] reswords" "mansection M-2 reswords"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-1] Naming" "help m1_naming_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-2] version" "help m2_version_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-2] Intro" "help m2_intro_zh"}{...}
{viewerjumpto "Syntax" "m2_reswords_zh##syntax"}{...}
{viewerjumpto "Description" "m2_reswords_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "m2_reswords_zh##linkspdf"}{...}
{viewerjumpto "Remarks" "m2_reswords_zh##remarks"}
{help m2_reswords:English Version}
{hline}{...}
{p2colset 1 19 21 2}{...}
{p2col:{bf:[M-2] reswords} {hline 2}}保留字
{p_end}
{p2col:}({mansection M-2 reswords:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 4 4 2}
保留字是

	{cmd}aggregate       float           pointer         union 
	array           for           	polymorphic     unsigned
  			friend		pragma 		using
	boolean         function        private		    
	break                           protected       vector
	byte            global          public          version     
			goto				virtual
	case            		quad            void
	catch           if                              volatile
	class           inline          real                    
	colvector       int             return          while
	complex                         rowvector      
	const           local                           
	continue        long            scalar         
					short
	default         mata            signed       
	delegate        matrix          static      
	delete                          string     
	do              namespace       strL
	double          new             struct   
			NULL 		super
else            numeric         switch
eltypedef
end             operator        template      
enum 		orgtypedef	this
explicit			throw
export				transmorphic
external			try
					typedef
					typename{txt}


{marker description}{...}
{title:描述}

{p 4 4 2}
保留字是 Mata 编译器保留的词；这些词不能用于命名变量或函数。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection M-2 reswordsRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
备注按以下标题呈现：

	{help m2_reswords##remarks1:未来发展}
	{help m2_reswords##remarks2:版本控制}


{marker remarks1}{...}
{title:未来发展}

{p 4 4 2}
上述许多词是为未来实现新功能而保留的。例如，词
{cmd:aggregate},
{cmd:array},
{cmd:boolean},
{cmd:byte},
等，目前在 Mata 中没有作用，但它们被保留。

{p 4 4 2}
你无法仅通过某个单词在列表中的存在与否推断出短期开发计划。该列表的构建是为了包括在添加某些功能时需要的词，但我们在保留词方面倾向于保留过多，因为保留一个词比之后再将其移除要好。移除一个词可能导致先前编写的代码出错。

{p 4 4 2}
此外，如果某个词仅在特定上下文中使用，可以在不保留词汇的情况下添加功能。我们的原始列表要长得多，但我们删除了其中一些特定上下文的词汇。


{marker remarks2}{...}
{title:版本控制}

{p 4 4 2}
即使将来我们需要保留新词，你可以通过参与版本控制来确保不需要修改你的程序；请参见 {bf:{help m2_version_zh:[M-2] version}}。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <m2_reswords.sthlp>}