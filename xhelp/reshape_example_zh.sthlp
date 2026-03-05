{smcl}
{* *! version 1.0.3  11feb2011}{...}
{* 此帮助文件由 reshape.dlg 调用}{...}
{vieweralsosee "[D] reshape" "help reshape_zh"}
{help reshape_example:English Version}
{hline}{...}
{title:长格式}	id   year   sex    inc   ue
		{hline 27}
		 1     80     0   5000    0
		 1     81     0   5500    1
		 1     82     0   6000    0
		 2     80     1   2000    1
		 2     81     1   2200    0
		 2     82     1   3300    0
		 3     80     0   3000    0
		 3     81     0   2000    0
		 3     82     0   1000    1


{title:宽格式}	id  sex   inc80  inc81  inc82  ue80  ue81  ue82
		{hline 47}
		 1    0    5000   5500   6000     0     1     0
		 2    1    2000   2200   3300     1     0     0
		 3    0    3000   2000   1000     0     0     1


{c TLC}{hline 53}{c TT}{hline 8}{c TRC}
{c |} 变量编辑字段                                 {c |} 值  {c |}
{c LT}{hline 53}{c +}{hline 8}{c RT}
{c |} ID 变量 - i() 选项                     {c |} {bf:id}     {c |}
{c |} 子观察标识变量 - j() 选项 {c |} {bf:year}   {c |}
{c |} 在子观察中不同的变量            {c |} {bf:inc ue} {c |}
{c BLC}{hline 53}{c BT}{hline 8}{c BRC}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <reshape_example.sthlp>}