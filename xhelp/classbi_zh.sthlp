{smcl}
{* *! version 1.1.3  19oct2017}{...}
{vieweralsosee "[P] class" "mansection P class"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[P] class: classman" "help classman_zh"}{...}
{vieweralsosee "[P] class: classdeclare" "help classdeclare_zh"}{...}
{vieweralsosee "[P] class: classassign" "help classassign_zh"}{...}
{vieweralsosee "[P] class: classmacro" "help classmacro_zh"}{...}
{viewerjumpto "附录 C.4: 内置函数的快速总结" "classbi_zh##app_c4"}{...}
{viewerjumpto "描述" "classbi_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "classbi_zh##linkspdf"}
{help classbi:English Version}
{hline}{...}
{p2colset 1 14 16 2}{...}
{p2col:{bf:[P] class} {hline 2}}类编程（续 {manhelp classman P:class}）
{p_end}
{p2col:}({mansection P class:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker app_c4}{...}
{title:附录 C.4:  内置函数的快速总结}

{pstd}
内置函数有两种形式：（1）内置函数 -- 返回结果但不改变其运行对象的内置函数；（2）内置修饰符 -- 可能返回结果但最重要的是修改其运行对象的内置函数。


    {title:内置函数（可用作 {it:rvalues}）}

{synoptset 31}{...}
{synopt :{cmd:.}{it:object}{cmd:.id}}创建 {cmd:.}{it:object} 的新实例{p_end}

{synopt :{cmd:.}{it:instance}{cmd:.copy}} 复制 {cmd:.}{it:instance}{p_end}

{synopt :{cmd:.}{it:instance}{cmd:.ref}}用于按引用赋值{p_end}

{synopt :{cmd:.}{it:object}{cmd:.objtype}}返回 "{cmd:double}"、"{cmd:string}"、"{cmd:array}" 或 "{it:classname}"{p_end}

{synopt :{cmd:.}{it:object}{cmd:.isa}}返回 "{cmd:double}"、"{cmd:string}"、"{cmd:array}"、"{cmd:class}" 或 "{cmd:classtype}"{p_end}

{synopt :{cmd:.}{it:object}{cmd:.classname}}返回 "{it:classname}" 或 ""{p_end}

{synopt :{cmd:.}{it:object}{cmd:.isofclass} {it:classname}}如果 {it:object} 是类型为 {it:classname} 的类，则返回 1{p_end}

{synopt :{cmd:.}{it:object}{cmd:.objkey}}返回一个字符串，可用于在隐含上下文之外引用 {it:object}{p_end}

{synopt :{cmd:.}{it:object}{cmd:.uname}}返回一个字符串，可在 Stata 中用作名称；名称对应于 {cmd:.}{it:object} 的 {cmd:.ref}{p_end}

{synopt :{cmd:.}{it:object}{cmd:.ref_n}}返回共享对象的标识符总数（{cmd:double}）{p_end}

{synopt :{cmd:.}{it:array}{cmd:.arrnels}}返回与分配数组的最大索引对应的数字（{cmd:double}）{p_end}

{synopt :{cmd:.}{it:array}{cmd:.arrindexof "}{it:string}{cmd:"}}在数组中搜索第一个等于 {it:string} 的元素并返回其索引（{cmd:double}）或返回 0{p_end}

{synopt :{cmd:.}{it:object}{cmd:.classmv}}返回包含每个 {cmd:.}{it:object} 的类成员 {cmd:.ref} 的 {cmd:array}{p_end}

{synopt :{cmd:.}{it:object}{cmd:.instancemv}}返回包含每个 {cmd:.}{it:object} 的实例成员 {cmd:.ref} 的 {cmd:array}{p_end}

{synopt :{cmd:.}{it:object}{cmd:.dynamicmv}}返回包含每个动态添加的成员 {cmd:.ref} 的 {cmd:array}{p_end}

{synopt :{cmd:.}{it:object}{cmd:.superclass}}返回包含 {cmd:.}{it:object} 继承自的每个类的 {cmd:.ref} 的 {cmd:array}{p_end}

{synopt :{cmd:.oncopy_src}}返回当前 {cmd:.oncopy} 成员程序的源对象关键字{p_end}
{p2colreset}{...}


    {title:内置修饰符}

{synoptset 31}{...}
{synopt :{cmd:.}{it:instance}{cmd:.Declare} {it:declarator}}不返回任何内容；向实例中添加成员变量；详见 {help classdeclare_zh}{p_end}

{synopt :{cmd:.}{it:array}{cmd:[}{it:exp}{cmd:].Arrdropel} {it:#}}不返回任何内容；丢弃指定的数组元素{p_end}

{synopt :{cmd:.}{it:array}{cmd:.Arrpop}}不返回任何内容；查找顶部元素并移除它{p_end}

{synopt :{cmd:.}{it:array}{cmd:.Arrpush "}{it:string}{cmd:"}}不返回任何内容；在数组末尾添加字符串{p_end}
{p2colreset}{...}


{marker description}{...}
{title:描述}

{pstd}
有关更多信息，请参见 {help classman_zh}。
{p_end}


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection P classRemarksandexamples:备注和示例}

{pstd}
以上部分未包含在此帮助文件中。


{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <classbi.sthlp>}