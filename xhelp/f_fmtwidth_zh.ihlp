
{help f_fmtwidth:English Version}
{hline}
{* *! version 1.1.1  02mar2015}{...}
    {cmd:fmtwidth(}{it:fmtstr}{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述:}输出长度为 {cmd:%}{it:fmt} 包含在 {it:fmtstr} 中；如果 {it:fmtstr} 不包含有效的 {cmd:%}{it:fmt}，则为 {it:missing}{p_end}

{p2col:}例如，{cmd:fmtwidth("%9.2f")} 返回 {cmd:9}，而 {cmd:fmtwidth("%tc")} 返回 {cmd:18}.{p_end}
{p2col: 范围:}字符串{p_end}
{p2colreset}{...}