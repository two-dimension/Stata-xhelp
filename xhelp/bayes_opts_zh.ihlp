
{help bayes_opts:English Version}
{hline}
{* *! version 1.0.3  13dec2018}{...}
包含 help bayesmh_prioropts

{marker options_simulation}{...}
  {syntab:{help bayes##simulation_options:模拟}}
包含 help bayesmh_simopts

{marker options_blocking}{...}
  {syntab:{help bayes##blocking_options:隔离}}
{p2coldent:* {opt blocksize(#)}}最大块大小；默认为 {cmd:blocksize(50)}{p_end}
包含 help bayesmh_blockopts
  {p2coldent:* {opt noblock:ing}}默认情况下不隔离参数{p_end}

{marker options_initialization}{...}
  {syntab:{help bayes##initialization_options:初始化}}
包含 help bayesmh_initopts
  {p2coldent:* {opt noi:sily}}在初始化期间显示估计命令的输出{p_end}

{marker options_adaptation}{...}
  {syntab:{help bayes##adaptation_options:适应}}
包含 help bayesmh_adaptopts

{marker options_reporting}{...}
  {syntab:{help bayes##reporting_options:报告}}
包含 help bayes_reportopts

{marker options_advanced}{...}
  {syntab:{help bayes##advanced_options:高级}}
包含 help bayesmh_advancedopts
{synoptline}
{p 4 6 2}* 带星号的选项是特定于 {cmd:bayes} 前缀的；其他选项在 {cmd:bayes} 和 {help bayesmh_zh} 之间是通用的。{p_end}
{p 4 6 2}选项 {cmd:prior()} 和 {cmd:block()} 可以重复使用。{p_end}
{p 4 6 2}{helpb bayesmh##priorspec:{it:priorspec}} 和
{helpb bayesmh##paramref:{it:paramref}} 在 {manhelp bayesmh BAYES} 中定义。{p_end}
{p 4 6 2}{it:paramref} 可以包含因子变量；见 {help fvvarlist_zh}。{p_end}
{p 4 6 2}请参阅 {manhelp bayesian_postestimation BAYES:贝叶斯后估计} 以获取估计后可用的特性。{p_end}