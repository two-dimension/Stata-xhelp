
{help measure_option_optstab:English Version}
{hline}
{* *! version 1.0.6  29jul2015}{...}
{p2colset 5 23 27 2}{...}
{p2col:{it:测量}}描述{p_end}
{p2line}
{p2col:{it:{help measure_option##cont_measure:cont_measure}}}连续数据的相似性或不相似性测量{p_end}
{p2col:{it:{help measure_option##binary_measure:binary_measure}}}二元数据的相似性测量{p_end}
{p2col:{it:{help measure_option##mixed_measure:mixed_measure}}}混合二元和连续数据的不相似性测量{p_end}
{p2line}

{p2col:{marker cont_measure}{it:cont_measure}}描述{p_end}
{p2line}
{p2col:{opt L2}}欧几里得距离（Minkowski参数为2）{p_end}
{p2col 7 25 29 2:{opt Euc:lidean}}{opt L2}的别名{p_end}
{p2col 7 25 29 2:{cmd:L(2)}}{opt L2}的别名{p_end}
{p2col:{opt L2squared}}平方欧几里得距离{p_end}
{p2col 7 25 29 2:{cmd:Lpower(2)}}{opt L2squared}的别名{p_end}
{p2col:{opt L1}}绝对值距离（Minkowski参数为1）{p_end}
{p2col 7 25 29 2:{opt abs:olute}}{opt L1}的别名{p_end}
{p2col 7 25 29 2:{opt cityb:lock}}{opt L1}的别名{p_end}
{p2col 7 25 29 2:{opt manhat:tan}}{opt L1}的别名{p_end}
{p2col 7 25 29 2:{cmd:L(1)}}{opt L1}的别名{p_end}
{p2col 7 25 29 2:{cmd:Lpower(1)}}{opt L1}的别名{p_end}
{p2col:{opt Linf:inity}}最大值距离（Minkowski无穷参数）{p_end}
{p2col 7 25 29 2:{opt max:imum}}{opt Linfinity}的别名{p_end}
{p2col:{opt L(#)}}Minkowski距离，参数为 {it:#}{p_end}
{p2col:{opt Lpow:er(#)}}Minkowski距离，参数提高到 {it:#}次方{p_end}
{p2col:{opt Canb:erra}}Canberra距离{p_end}
{p2col:{opt corr:elation}}相关系数相似性测量{p_end}
{p2col:{opt ang:ular}}角度分离相似性测量{p_end}
{p2col 7 25 29 2:{opt ang:le}}{opt angular}的别名{p_end}
{p2line}

{p2col:{marker binary_measure}{it:binary_measure}}描述{p_end}
{p2line}
{p2col:{opt match:ing}}简单匹配相似性系数{p_end}
{p2col:{opt Jac:card}}杰卡德二元相似性系数{p_end}
{p2col:{opt Russ:ell}}拉塞尔和拉奥相似性系数{p_end}
{p2col:{opt Hamann}}哈曼相似性系数{p_end}
{p2col:{opt Dice}}骰子相似性系数{p_end}
{p2col:{opt antiDice}}反骰子相似性系数{p_end}
{p2col:{opt Sneath}}斯尼思和索卡尔相似性系数{p_end}
{p2col:{opt Rogers}}罗杰斯和塔尼莫托相似性系数{p_end}
{p2col:{opt Ochiai}}小池相似性系数{p_end}
{p2col:{opt Yule}}尤尔相似性系数{p_end}
{p2col:{opt Ander:berg}}安德伯格相似性系数{p_end}
{p2col:{opt Kulc:zynski}}库尔钦斯基相似性系数{p_end}
{p2col:{opt Pearson}}皮尔逊φ相似性系数{p_end}
{p2col:{opt Gower2}}与 {opt Pearson} 拥有相同分母的相似性系数{p_end}
{p2line}

{p2col:{marker mixed_measure}{it:mixed_measure}}描述{p_end}
{p2line}
{p2col:{opt Gower}}高尔相似性系数{p_end}
{p2line}
{p2colreset}{...}