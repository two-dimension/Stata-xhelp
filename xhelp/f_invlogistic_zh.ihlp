
{help f_invlogistic:English Version}
{hline}
{* *! version 1.0.1  02mar2015}{...}
    {cmd:invlogistic(}{it:p}{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述：}反累积逻辑分布：如果
{cmd:logistic(}{it:x}{cmd:)} = {it:p}，那么
{cmd:invlogistic(}{it:p}{cmd:)} = {it:x}{p_end}
{p2col: 定义域 {it:p}:}0 到 1{p_end}
{p2col: 值域：}-8e+307 到 8e+307{p_end}
{p2colreset}{...}

    {cmd:invlogistic(}{it:s}{cmd:,}{it:p}{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述：}反累积逻辑分布：如果
{cmd:logistic(}{it:s}{cmd:,}{it:x}{cmd:)} = {it:p}，那么
{cmd:invlogistic(}{it:s}{cmd:,}{it:p}{cmd:)} = {it:x}{p_end}
{p2col: 定义域 {it:s}:}1e-323 到 8e+307{p_end}
{p2col: 定义域 {it:p}:}0 到 1{p_end}
{p2col: 值域：}-8e+307 到 8e+307{p_end}
{p2colreset}{...}

    {cmd:invlogistic(}{it:m}{cmd:,}{it:s}{cmd:,}{it:p}{cmd:)}
{p2colset 8 22 22 2}{...}
{p2col: 描述：}反累积逻辑分布：如果
{cmd:logistic(}{it:m}{cmd:,}{it:s}{cmd:,}{it:x}{cmd:)} = {it:p}，那么
{cmd:invlogistic(}{it:m}{cmd:,}{it:s}{cmd:,}{it:p}{cmd:)} = {it:x}{p_end}
{p2col: 定义域 {it:m}:}-8e+307 到 8e+307{p_end}
{p2col: 定义域 {it:s}:}1e-323 到 8e+307{p_end}
{p2col: 定义域 {it:p}:}0 到 1{p_end}
{p2col: 值域：}-8e+307 到 8e+307{p_end}
{p2colreset}{...}