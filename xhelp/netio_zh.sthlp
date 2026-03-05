{smcl}
{* *! version 1.1.12  01nov2018}{...}
{vieweralsosee "[R] netio" "mansection R netio"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[P] creturn" "help creturn_zh"}{...}
{vieweralsosee "r(2)" "help r(2)"}{...}
{vieweralsosee "r(663)" "help r(663)"}{...}
{vieweralsosee "r(677)" "help r(677)"}{...}
{vieweralsosee "[R] query" "help query_zh"}{...}
{viewerjumpto "语法" "netio_zh##syntax"}{...}
{viewerjumpto "描述" "netio_zh##description"}{...}
{viewerjumpto "PDF 文档链接" "netio_zh##linkspdf"}{...}
{viewerjumpto "选项" "netio_zh##options"}
{help netio:English Version}
{hline}{...}
{p2colset 1 14 16 2}{...}
{p2col:{bf:[R] netio} {hline 2}}控制互联网连接{p_end}
{p2col:}({mansection R netio:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

    打开或关闭代理服务器的使用

{p 8 26 2}{cmdab:se:t httpproxy} {c -(}{opt on}{c |}{opt off}{c )-} [{cmd:, init}]{p_end}


    设置代理主机名

{p 8 26 2}{cmdab:se:t httpproxyhost} [{cmd:"}]{it:name}[{cmd:"}]{p_end}


    设置代理端口号

{p 8 26 2}{cmdab:se:t httpproxyport} {it:#}{p_end}


    打开或关闭代理授权

{p 8 26 2}{cmdab:se:t httpproxyauth} {c -(}{opt on}{c |}{opt off}{c )-}{p_end}


    设置代理授权用户 ID

{p 8 26 2}{cmdab:se:t httpproxyuser} [{cmd:"}]{it:name}[{cmd:"}]{p_end}


    设置代理授权密码

{p 8 26 2}{cmdab:se:t httpproxypw} [{cmd:"}]{it:password}[{cmd:"}]{p_end}


    设置建立初始连接的时间限制

{p 8 26 2}{cmdab:se:t timeout1} {it:#秒} [{cmd:,} {opt perm:anently} ]{p_end}


    设置数据传输的时间限制

{p 8 26 2}{cmdab:se:t timeout2} {it:#秒} [{cmd:,} {opt perm:anently}]


{marker description}{...}
{title:描述}

{pstd}
某些命令（例如，{cmd:net} 和 {cmd:update}）是专门设计用于通过互联网使用的。许多其他可以读取文件的 Stata 命令（例如，{cmd:copy}、{cmd:type} 和 {cmd:use}）也可以直接从 URL 读取。所有这些命令通常在您无需担心这里讨论的 {cmd:set} 命令的情况下即可工作。这些 {cmd:set} 命令提供了对网络系统参数的控制。

{pstd}
如果您在使用 Stata 的网络功能时遇到问题，请询问您的系统管理员您的网站是否使用代理。代理是您的计算机与互联网其余部分之间的服务器，您的计算机可能需要通过该代理与互联网的其他计算机进行通信。如果您的网站使用代理，您的系统管理员可以提供其主机名以及您的计算机可以用来与其通信的端口。如果您网站的代理要求您登录才能响应，您的系统管理员将提供给您用户 ID 和密码。

{pstd}
{cmd:set httpproxyhost} 设置将用作代理服务器的主机名称。{cmd:set httpproxyport} 设置端口号。{cmd:set httpproxy} 打开或关闭代理服务器的使用，即使在不使用时也保持代理主机名称和端口不变。
有关更多信息，请参见 {help r(677)}。

{pstd}
在 Mac 和 Windows 操作系统下，当您 {cmd:set httpproxy on} 时，如果尚未之前设置，Stata 将尝试从操作系统获取 {cmd:httpproxyhost} 和 {cmd:httpproxyport} 的值。{cmd:set httpproxy on, init} 尝试从操作系统获取这些值，即使它们之前已经设置。

{pstd}
如果代理需要授权（用户 ID 和密码），请通过 {cmd:set httpproxyauth on} 打开授权。必须通过 {cmd:set httpproxyuser} 和 {cmd:set httpproxypw} 设置代理用户和代理密码为适当的用户 ID 和密码。

{pstd}
Stata 在会话之间记住各种代理设置，并不需要 {opt permanently} 选项。

{pstd}
{cmd:set timeout1} 更改 Stata 为与远程主机建立初始连接施加的时间限制（以秒为单位）。默认值为 30。{cmd:set timeout2} 更改 Stata 对后续与主机的数据传输施加的时间限制（以秒为单位）。默认值为 180。如果超过这些时间限制，将生成“连接超时”消息和错误代码 2；请参见 {help r(2)}。您通常不需要更改这些设置。


{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection R netioRemarksandexamples:备注和示例}

{pstd}
上述部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{opt init} 指定 {cmd:set httpproxy on} 尝试从操作系统初始化 {cmd:httpproxyhost} 和 {cmd:httpproxyport}（仅限 Mac 和 Windows）。

{phang}
{opt permanently} 指定，除了立即进行更改外，{cmd:timeout1} 和 {cmd:timeout2} 设置将被记住，并成为您调用 Stata 时的默认设置。

{pmore}
各个 {cmd:httpproxy} 设置没有 {opt permanently} 选项，因为 {opt permanently} 是隐含的。{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <netio.sthlp>}