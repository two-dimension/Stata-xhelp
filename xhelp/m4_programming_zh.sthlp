{smcl}
{* *! version 1.1.9  05sep2018}{...}
{vieweralsosee "[M-4] 编程" "mansection M-4 编程"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] 介绍" "help m4_intro_zh"}
{help m4_programming:English Version}
{hline}{...}
{p2colset 1 22 24 2}{...}
{p2col:{bf:[M-4] 编程} {hline 2}}编程函数
{p_end}
{p2col:}({mansection M-4 编程:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{title:目录}

{col 5}   [M-5]
{col 5}手册条目{col 24}函数{col 42}用途
{col 5}{hline}

{col 5}   {c TLC}{hline 43}{c TRC}
{col 5}{hline 3}{c RT}{it: 参数和调用者偏好处理 }{c LT}{hline}
{col 5}   {c BLC}{hline 43}{c BRC}

{col 7}{bf:{help mf_args_zh:args()}}{...}
{col 24}{cmd:args()}{...}
{col 42}参数数量

{col 7}{bf:{help mf_isfleeting_zh:isfleeting()}}{...}
{col 24}{cmd:isfleeting()}{...}
{col 42}参数是否为临时的

{col 7}{bf:{help mf_callersversion_zh:callersversion()}}{...}
{col 24}{cmd:callersversion()}{...}
{col 42}获取调用者的版本号

{col 7}{bf:{help mf_favorspeed_zh:favorspeed()}}{...}
{col 24}{cmd:favorspeed()}{...}
{col 42}是否偏重于速度或空间

{col 5}   {c TLC}{hline 18}{c TRC}
{col 5}{hline 3}{c RT}{it: 高级解析 }{c LT}{hline}
{col 5}   {c BLC}{hline 18}{c BRC}

{col 7}{bf:{help mf_tokenget_zh:tokenget()}}{...}
{col 24}{cmd:tokeninit()}{...}
{col 42}初始化解析环境
{col 24}{cmd:tokeninitstata()}{...}
{col 42}将环境初始化为 Stata 的样子
{col 24}{cmd:tokenset()}{...}
{col 42}设置/重置要解析的字符串
{col 24}{cmd:tokengetall()}{...}
{col 42}解析整个字符串
{col 24}{cmd:tokenget()}{...}
{col 42}解析字符串的下一个元素
{col 24}{cmd:tokenpeek()}{...}
{col 42}查看下一个 {cmd:tokenget()} 结果
{col 24}{cmd:tokenrest()}{...}
{col 42}返回尚未解析的部分
{col 24}{cmd:tokenoffset()}{...}
{col 42}查询/重置字符串中的偏移量
{col 24}{cmd:tokenwchars()}{...}
{col 42}查询/重置空格字符
{col 24}{cmd:tokenpchars()}{...}
{col 42}查询/重置解析字符
{col 24}{cmd:tokenqchars()}{...}
{col 42}查询/重置引号字符
{col 24}{cmd:tokenallownum()}{...}
{col 42}查询/重置数字解析
{col 24}{cmd:tokenallowhex()}{...}
{col 42}查询/重置十六进制数解析

{col 5}   {c TLC}{hline 21}{c TRC}
{col 5}{hline 3}{c RT}{it: 访问外部变量 }{c LT}{hline}
{col 5}   {c BLC}{hline 21}{c BRC}

{col 7}{bf:{help mf_findexternal_zh:findexternal()}}{...}
{col 24}{cmd:findexternal()}{...}
{col 42}查找全局变量
{col 24}{cmd:crexternal()}{...}
{col 42}创建全局变量
{col 24}{cmd:rmexternal()}{...}
{col 42}移除全局变量
{col 24}{cmd:nameexternal()}{...}
{col 42}外部变量的名称

{col 7}{bf:{help mf_direxternal_zh:direxternal()}}{...}
{col 24}{cmd:direxternal()}{...}
{col 42}获取现有全局变量的列表

{col 7}{bf:{help mf_valofexternal_zh:valofexternal()}}{...}
{col 24}{cmd:valofexternal()}{...}
{col 42}获取全局变量的值

{col 5}   {c TLC}{hline 11}{c TRC}
{col 5}{hline 3}{c RT}{it: 中断键 }{c LT}{hline}
{col 5}   {c BLC}{hline 11}{c BRC}

{col 7}{bf:{help mf_setbreakintr_zh:setbreakintr()}}{...}
{col 24}{cmd:setbreakintr()}{...}
{col 42}开启/关闭中断键中断
{col 24}{cmd:querybreakintr()}{...}
{col 42}中断键中断是否开启
{col 24}{cmd:breakkey()}{...}
{col 42}中断键是否被按下
{col 24}{cmd:breakkeyreset()}{...}
{col 42}重置中断键

{col 5}   {c TLC}{hline 20}{c TRC}
{col 5}{hline 3}{c RT}{it: 关联数组 }{c LT}{hline}
{col 5}   {c BLC}{hline 20}{c BRC}

{col 7}{bf:{help mf_asarray_zh:asarray()}}{...}
{col 24}{cmd:asarray()}{...}
{col 42}存储或检索数组中的元素
{col 24}{cmd:asarray_*()}{...}
{col 42}工具例程 

{col 7}{bf:{help mf_associativearray_zh:AssociativeArray()}}{...}
{col 42}类接口进入 {cmd:asarray()}
{col 24}{it:A}{cmd:.put()}{...}
{col 42}存储元素
{col 24}{it:A}{cmd:.get()}{...}
{col 42}获取元素
{col 24}等等。

{col 7}{bf:{help mf_hash1_zh:hash1()}}{...}
{col 24}{cmd:hash1()}{...}
{col 42}Jenkins的按位哈希

{col 5}   {c TLC}{hline 15}{c TRC}
{col 5}{hline 3}{c RT}{it: 杂项 }{c LT}{hline}
{col 5}   {c BLC}{hline 15}{c BRC}

{col 7}{bf:{help mf_assert_zh:assert()}}{...}
{col 24}{cmd:assert()}{...}
{col 42}如果不为真，则中止执行
{col 24}{cmd:asserteq()}{...}
{col 42}如果不相等，则中止执行

{col 7}{bf:{help mf_c_lc_zh:c()}}{...}
{col 24}{cmd:c()}{...}
{col 42}访问 c() 值

{col 7}{bf:{help mf_sizeof_zh:sizeof()}}{...}
{col 24}{cmd:sizeof()}{...}
{col 42}对象占用的字节数

{col 7}{bf:{help mf_swap_zh:swap()}}{...}
{col 24}{cmd:swap()}{...}
{col 42}交换变量内容

{* BEGIN timer() is NOT included in the manual; it is undocumented}{...}
{col 7}{bf:{help mf_timer_zh:timer()}}{...}
{col 24}{cmd:timer_clear()}{...}
{col 42}代码分析；清除计时器
{col 24}{cmd:timer_on()}{...}
{col 42}启动计时器
{col 24}{cmd:timer_off()}{...}
{col 42}停止计时器
{col 24}{cmd:timer_value()}{...}
{col 42}获取计时器值
{col 24}{cmd:timer()}{...}
{col 42}显示时间配置报告
{* END timer() is NOT included in the manual; it is undocumented}{...}

{col 5}   {c TLC}{hline 13}{c TRC}
{col 5}{hline 3}{c RT}{it: 系统信息 }{c LT}{hline}
{col 5}   {c BLC}{hline 13}{c BRC}

{col 7}{bf:{help mf_byteorder_zh:byteorder()}}{...}
{col 24}{cmd:byteorder()}{...}
{col 42}计算机使用的字节顺序

{col 7}{bf:{help mf_stataversion_zh:stataversion()}}{...}
{col 24}{cmd:stataversion()}{...}
{col 42}正在使用的 Stata 版本
{col 24}{cmd:statasetversion()}{...}
{col 42}Stata 集的版本

{col 5}   {c TLC}{hline 9}{c TRC}
{col 5}{hline 3}{c RT}{it: 退出 }{c LT}{hline}
{col 5}   {c BLC}{hline 9}{c BRC}

{col 7}{bf:{help mf_exit_zh:exit()}}{...}
{col 24}{cmd:exit()}{...}
{col 42}终止执行

{col 7}{bf:{help mf_error_zh:error()}}{...}
{col 24}{cmd:error()}{...}
{col 42}发布标准 Stata 错误消息
{col 24}{cmd:_error()}{...}
{col 42}发布带回溯日志的错误消息

{col 5}{hline}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <m4_programming.sthlp>}