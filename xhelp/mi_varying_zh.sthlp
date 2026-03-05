{smcl}
{* *! version 1.1.11  15may2018}{...}
{viewerdialog mi "dialog mi"}{...}
{vieweralsosee "[MI] mi varying" "mansection MI mivarying"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MI] Intro" "help mi_zh"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[MI] mi misstable" "help mi_misstable_zh"}{...}
{viewerjumpto "Syntax" "mi_varying_zh##syntax"}{...}
{viewerjumpto "Menu" "mi_varying_zh##menu"}{...}
{viewerjumpto "Description" "mi_varying_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "mi_varying_zh##linkspdf"}{...}
{viewerjumpto "Options" "mi_varying_zh##options"}{...}
{viewerjumpto "Remarks" "mi_varying_zh##remarks"}{...}
{viewerjumpto "Stored results" "mi_varying_zh##results"}
{help mi_varying:English Version}
{hline}{...}
{p2colset 1 20 22 2}{...}
{p2col:{bf:[MI] mi varying} {hline 2}}识别在插补过程中变化的变量{p_end}
{p2col:}({mansection MI mivarying:查看完整PDF手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 8 2}
{cmd:mi} {cmdab:vary:ing} 
[{varlist}]
[{cmd:,}
{bf:{help mi_noupdate_option_zh:{ul:noup}date}}]

{p 8 8 2}
{cmd:mi} {cmdab:vary:ing}{cmd:, } 
{cmdab:unreg:istered}
[{bf:{help mi_noupdate_option_zh:{ul:noup}date}}]


{marker menu}{...}
{title:菜单}

{phang}
{bf:统计 > 多重插补}


{marker description}{...}
{title:描述}

{p 4 4 2}
{cmd:mi} {cmd:varying} 列出了那些意外变化的变量名称，以及超级变化的变量名称； 
请参阅 {bf:{help mi_glossary_zh:[MI] 术语表}} 以获取 
{help mi_glossary##def_varying:变化和超级变化变量} 的定义。


{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection MI mivaryingRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{p 4 8 2}
{cmd:unregistered} 
    指定仅列出未注册变量。
    指定此选项可以节省时间，尤其在数据为 
    flongsep 时。

{p 4 8 2}
{cmd:noupdate}
    在某些情况下，抑制此命令可能执行的自动 {cmd:mi} {cmd:update}； 
    请参阅 {bf:{help mi_noupdate_option_zh:[MI] noupdate 选项}}。


{marker remarks}{...}
{title:备注}

{p 4 4 2}
如果一个变量在 {it:m} 的 {help mi_glossary##def_complete:完整} 
观察中变化，则称其为变化的变量。
如果一个变量在 {it:m} 的 {help mi_glossary##def_complete:不完整} 
观察中变化，则称其为超级变化的变量。

{p 4 4 2}
备注按以下标题列出：

    {help mi_varying##detecting:检测问题}
    {help mi_varying##fixing:修复问题}


{marker detecting}{...}
{title:检测问题}

{p 4 4 2}
{cmd:mi} {cmd:varying} 查找五种潜在问题：

{p 8 12 2}
1.  {it:插补的非变化变量}。
    登记为插补的变量且不变化，可能

{p 12 16 2}
    a.  其缺失值在 {it:m}>0 尚未填写，在这种情况下，
        您应该使用 {bf:{help mi_impute_zh:mi impute}}
        来进行插补，或者

{p 12 16 2}
    b.  在 {it:m}=0 的情况下没有缺失值，此时您
        应该 {bf:mi} {cmd:unregister} 该变量，并可能使用 {cmd:mi}
        {cmd:register} 将该变量作为常规变量注册
        （见 {bf:{help mi_set_zh:[MI] mi set}}）。

{p 8 12 2}
2.  {it:被动的非变化变量}。
    登记为被动的变量且不变化，可能

{p 12 16 2}
    a.  在不完整观察中的 {it:m}>0 存在缺失值，
        在这种情况下，在填写了插补变量的缺失值之后，
        您应该使用 
        {bf:{help mi_passive_zh:mi passive}} 
        来更新这些变量的值，或者

{p 12 16 2}
    b.  在 {it:m}=0 的情况下没有缺失值，此时您 
        应该 {cmd:mi} {cmd:unregister} 该变量
       ，并可能使用 {bf:mi} {cmd:register} 
        将该变量注册为常规 
        （见 {bf:{help mi_set_zh:[MI] mi set}}）。

{p 8 12 2}
3.  {it:未注册的变化变量}。

{p 12 16 2}
    a.  这些变量最有可能应被注册为插补或被动。

{p 12 16 2}
    b.  如果这些变量是变化的但不应该变化，
        使用 {cmd:mi} {cmd:register} 将其注册为常规。
        这样会解决问题； {it:m}=0 的值将复制到 {it:m}>0。

{p 12 16 2}
    c.  有可能这与下面的潜在问题 5 类似，仅仅是偶然地，
        变化发生的唯一路径是那些不完整的观察。在这种情况下，
        保持变量未注册。

{p 8 12 2}
4.  {it:未注册的超级变化变量}。
    这些变量是超级变化的，但如果被注册为插补，则将被归类为变化的。这就是说，
    尽管它们在当前注册为插补的变量的完整观察中的值是变化的，只是在
    {it:m}=0 的观察中存在缺失，因此它们可以在没有信息丢失的情况下
    被注册为插补。此类变量应该注册为插补。

{p 8 12 2}
5.  {it:未注册的超级变化}。
    这些变量确实超级变化，无法被注册为插补而不会丢失信息。
    这些变量要么包含真实错误，要么是观测组的函数的被动变量。通过将这些变量注册为
    常规来修复错误，留下那些打算超级变化的变量未注册。
    如果您故意在数据中有超级变化的变量，请记住，永远不要转换为宽格式或 mlong 格式。
    超级变化的变量只能在 flong 和 flongsep 格式中出现。


{p 4 4 2}
{cmd:mi} {cmd:varying} 的输出如下：


                     可能问题   变量名称
         {hline}
{p 18 32 2}
插补的非变化变量：
（无）
{p_end}
{p 18 32 2}
被动的非变化变量：
（无）
{p_end}
{p 16 32 2}
未注册的变化变量：
（无）
{p_end}
{p 9 32 2}
*未注册的超级/变化：
（无）
{p_end}
{p 10 32 2}
未注册的超级变化：
（无）
{p_end}
         {hline}
{p 9 11 2}
* 超级/变化意味着超级变化，但如果注册为插补则将是变化；
变量仅在 {it:m}=0 时等于软缺失时才变化。


{p 4 4 2}
如果存在可能的问题，变量名称将在表中列出。

{p 4 4 2}
超级变化变量只能在 flong 和 flongsep 数据中出现，因此
在对宽格式或 mlong 格式的数据运行 {cmd:mi} {cmd:varying} 时会省略
最后两个类别。如果没有插补变量，或者没有被动变量，或者没有未注册变量，
则相应类别将从表中省略。


{marker fixing}{...}
{title:修复问题}

{p 4 4 2}
如果 {cmd:mi} {cmd:varying} 检测到问题，请在注册被动变量前
注册所有插补变量。 
在注册新插补变量时，重新运行 {cmd:mi} {cmd:varying}。
将新变量注册为插补可能会更改哪些观察被分类为完整或不完整，而这种分类
反过来又可能会更改其他变量的分配类别。
在将变量注册为插补后，之前列为超级变化的其他变量可能现在只是变化的。

{marker results}{...}
{title:存储结果}

{p 4 4 2}
{cmd:mi varying} 将以下内容存储在 {cmd:r()} 中：

    宏
      {cmd:r(ivars)}      非变化的插补变量
      {cmd:r(pvars)}      非变化的被动变量 
      {cmd:r(uvars_v)}	  变化的未注册变量 
      {cmd:r(uvars_s_v)}  (超级) 变化的未注册变量
      {cmd:r(uvars_s_s)}  超级变化的未注册变量

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mi_varying.sthlp>}