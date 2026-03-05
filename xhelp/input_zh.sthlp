{smcl}
{* *! version 1.1.7  19oct2017}{...}
{vieweralsosee "[D] input" "mansection D input"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[D] edit" "help edit_zh"}{...}
{vieweralsosee "[D] import" "help import_zh"}{...}
{vieweralsosee "[D] save" "help save_zh"}{...}
{viewerjumpto "Syntax" "input_zh##syntax"}{...}
{viewerjumpto "Description" "input_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "input_zh##linkspdf"}{...}
{viewerjumpto "Options" "input_zh##options"}{...}
{viewerjumpto "Examples" "input_zh##examples"}
{help input:English Version}
{hline}{...}
{p2colset 1 14 16 2}{...}
{p2col:{bf:[D] input} {hline 2}}从键盘输入数据{p_end}
{p2col:}({mansection D input:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 14 2}
{opt inp:ut}
[{varlist}]
[{cmd:,} {opt a:utomatic} {opt l:abel}]


{marker description}{...}
{title:描述}

{pstd}
{opt input} 允许您直接在内存中的数据集上输入数据。

{pstd}
对于大多数用户而言，使用 {help edit_zh} 添加观测值到数据集是更好的选择，因为它会自动调整变量的存储类型（如果需要），以适应新值。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection D inputQuickstart:快速入门}

        {mansection D inputRemarksandexamples:备注和示例}

{pstd}
以上章节不包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}{opt automatic} 导致 Stata 从遇到的非数值数据中创建值标签。它还会自动调整显示格式，以适应最长的标签。指定 {opt automatic} 意味着 {opt label}，即使您没有显式输入 {opt label} 选项。

{phang}{opt label} 允许您为与值标签相关的变量输入标签（字符串），而不是数值。除非指定了 {opt automatic}，否则不会自动创建新的值标签。


{marker examples}{...}
{title:示例}

    {hline}
    设置
        {cmd:. clear all}

{pstd}直接在 Stata 中输入事故率和限速数据{p_end}
        {cmd:. input acc_rate spdlimit}

                   acc_rate   spdlimit
          1.  {cmd:4.58 55}
          2.  {cmd:1.86 60}
          3.  {cmd:1.61 .}
          4.  {cmd:end}

{pstd}列出数据{p_end}
        {cmd:. list}

{pstd}添加另一条观测值{p_end}
        {cmd:. input}

                   acc_rate   spdlimit
          4.  {cmd:3.02 60}
          5.  {cmd:end}

{pstd}列出数据{p_end}
        {cmd:. list}

{pstd}添加另一个变量{p_end}
        {cmd:. input acc_pts}

                   acc_pts
          1.  {cmd:4.6}
          2.  {cmd:4.4}
          3.  {cmd:2.2}
          4.  {cmd:4.7}

{pstd}列出数据{p_end}
        {cmd:. list}

    {hline}
    设置
        {cmd:. clear all}

{pstd}直接在 Stata 中输入数据，其中 {cmd:name} 和 {cmd:sex} 是字符串变量{p_end}
        {cmd:. input str20 name age str6 sex}

                             name       age      sex
          1.  {cmd:"A. Doyle" 22  male}
          2.  {cmd:"Mary Hope" 37 "female"}
          3.  {cmd:"Guy Fawkes" 48 male}
          4.  {cmd:end}

{pstd}注意 {cmd:str20} 意味着 20 字节，而不是 20 个 Unicode 字符（每个 Unicode 字符需要的字节数最多为 4 字节） 

{pstd}列出数据{p_end}
        {cmd:. list}

    {hline}
    设置
        {cmd:. clear all}

{pstd}与上一个示例相同，但将 {cmd:age} 存储为 {cmd:byte}{p_end}
        {cmd:. input str20 name byte age str6 sex}

    {hline}
    设置
        {cmd:. clear all}

{pstd}直接在 Stata 中输入数据，并将 {cmd:make} 存储为 {cmd:str20}，将 {cmd:foreign} 和 {cmd:rep78} 存储为 {cmd:byte}，将 {cmd:price} 存储为默认的 {cmd:float} 存储类型{p_end}
        {cmd:. input str20 make byte(foreign rep78) price}
    {hline}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <input.sthlp>}