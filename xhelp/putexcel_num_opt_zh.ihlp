
{help putexcel_num_opt:English Version}
{hline}
{* *! version 1.0.3  10may2019}{...}
{marker nformat}{...}
{phang}
{opt nformat(excelnfmt)} 更改单元格范围的数字格式。常用格式的代码在 {help putexcel##formats:{it:附录}} 的数字格式表中列出。然而，任何有效的 Excel 格式都是允许的。格式由以下符号的组合构成。

                                                   单元格      格式     单元格
     符号        描述                    值     代码  显示
    {hline}
     {cmd:0}             数字占位符（添加零）   8.9      {cmd:#.00}      8.90
     {cmd:#}             数字占位符（不添加零）  8.9      {cmd:#.##}       8.9
     {cmd:?}             数字占位符（添加空格）   8.9      {cmd:0.0?}       8.9
     {cmd:.}             小数点
     {cmd:%}             百分比                       .1         {cmd:%}       10%
     {cmd:,}             千位分隔符	       10000     {cmd:#,###}    10,000
     {cmd:E- E+ e- e+}   科学格式          12200000  {cmd:0.00E+00}  1.22E+07
     {cmd:$-+/():space}  显示符号               12     {cmd:(000)}     (012)
     {cmd:\}             转义字符                  3      {cmd:0\!}         3!
     {cmd:*}             重复字符                  3        {cmd:3*}    3xxxxx
                          （填充单元格宽度）                         
     {cmd:_}             跳过下一个字符的宽度   -1.2      {cmd:_0.0}       1.2
     {cmd:"text"}        显示引号中的文本         1.23  {cmd:0.00 "a"}    1.23 a
     {cmd:@}             文本占位符                  b   {cmd:"a"@"c"}       abc
    {hline}

{pmore}
包含空格的格式必须用双引号括起来。