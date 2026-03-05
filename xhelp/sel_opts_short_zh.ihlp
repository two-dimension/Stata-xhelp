
{help sel_opts_short:English Version}
{hline}
{* *! version 1.0.0  22jun2019}{...}
{synopt :{opt stopok}}当 CV 函数没有识别出的最小值时，如果达到 {opt stop(#)} 提停标准，选定的 lambda* 设置为 lambda_{stop}; 默认情况{p_end}
{synopt :{opt strict}}当 CV 函数没有识别出的最小值时，不选择 lambda*; 这是对默认 {cmd:stopok} 的更严格的替代方案{p_end}
{synopt :{opt gridminok}}当 CV 函数没有识别出的最小值，且未达到 {opt stop(#)} 提停标准时，选定的 lambda* 设置为 lambda 网格的最小值 lambda_{gmin}; 这是对默认 {cmd:stopok} 的更宽松的替代方案，且很少使用{p_end}