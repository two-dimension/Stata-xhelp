
{help vcetype:English Version}
{hline}
{* *! version 1.0.0  18mar2010}{...}
{synoptset 23 tabbed}{...}
{synopthdr:vcetype}
{synoptline}
{syntab:SE}
{synopt :{opt linear:ized}}泰勒线性化方差估计{p_end}
{synopt :{opt bootstrap}}自助法方差估计；
	参见 {manhelp svy_bootstrap SVY:svy bootstrap}
{p_end}
{synopt :{opt brr}}BRR方差估计；
	参见 {manhelp svy_brr SVY:svy brr}
{p_end}
{synopt :{opt jack:knife}}尖刀法方差估计；
	参见 {manhelp svy_jackknife SVY:svy jackknife}{p_end}
{synopt :{opt sdr}}SDR方差估计；
	参见 {manhelp svy_sdr SVY:svy sdr}
{p_end}
{synoptline}
{p 4 6 2}
指定一个 {it:vcetype} 将覆盖 {cmd:svyset} 中的默认设置。