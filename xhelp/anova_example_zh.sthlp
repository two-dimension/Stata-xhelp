{smcl}
{* *! version 1.0.4  11feb2011}{...}
{* 此帮助文件由 anova.dlg 和 testanova.dlg 调用}{...}
{vieweralsosee "[R] anova" "help anova_zh"}
{help anova_example:English Version}
{hline}{...}
{title:ANOVA 模型示例}

    {c TLC}{hline 25}{c TT}{hline 41}{c TRC}
    {c |} 模型 {space 18}{c |} 描述 {space 28}{c |}
    {c LT}{hline 25}{c +}{hline 41}{c RT}
    {c |} {cmd:a}                       {c |} 单因素                              {c |}
    {c |} {cmd:a b}                     {c |} 双因素                             {c |}
    {c |} {cmd:a b a#b}                 {c |} 双因素加交互作用                  {c |}
    {c |} {cmd:a##b}                    {c |} 双因素加交互作用                  {c |}
    {c |} {cmd:a b c}                   {c |} 三因素                             {c |}
    {c |} {cmd:a b c a#b a#c b#c}       {c |} 三因素加双向交互作用            {c |}
    {c |} {cmd:a b c a#b a#c b#c a#b#c} {c |} 三因素加所有交互作用            {c |}
    {c |} {cmd:a##b##c}                 {c |} 三因素加所有交互作用            {c |}
    {c BLC}{hline 25}{c BT}{hline 41}{c BRC}


{title:嵌套 ANOVA 模型示例}

    模型：  {cmd:district / school|district /}

    {c TLC}{hline 17}{c TT}{hline 27}{c TT}{hline 17}{c TRC}
    {c |} 项 {space 11}{c |} 含义 {space 18}{c |} 误差项      {c |}
    {c LT}{hline 17}{c +}{hline 27}{c +}{hline 17}{c RT}
    {c |} {cmd:district}        {c |} {cmd:district} {space 17}{c |} {cmd:school|district} {c |}
    {c |} {cmd:school|district} {c |} {cmd:school} 嵌套在 {cmd:district} {c |} 残差误差  {c |}
    {c BLC}{hline 17}{c BT}{hline 27}{c BT}{hline 17}{c BRC}


    模型：  {cmd:t / c|t / d|c|t / p|d|c|t /}

    {c TLC}{hline 9}{c TT}{hline 39}{c TT}{hline 13}{c TRC}
    {c |} 项    {c |} 含义 {space 30}{c |} 误差项  {c |}
    {c LT}{hline 9}{c +}{hline 39}{c +}{hline 13}{c RT}
    {c |} {cmd:t}       {c |} {cmd:t} {space 36}{c |} {cmd:c|t}         {c |}
    {c |} {cmd:c|t}     {c |} {cmd:c} 嵌套在 {cmd:t} {space 24}{c |} {cmd:d|c|t}       {c |}
    {c |} {cmd:d|c|t}   {c |} {cmd:d} 嵌套在 {cmd:c} 嵌套在 {cmd:t} {space 12}{c |} {cmd:p|d|c|t}     {c |}
    {c |} {cmd:p|d|c|t} {c |} {cmd:p} 嵌套在 {cmd:d} 嵌套在 {cmd:c} 嵌套在 {cmd:t} {c |} 残差误差 {c |}
    {c BLC}{hline 9}{c BT}{hline 39}{c BT}{hline 13}{c BRC}


{title:分割平面 ANOVA 模型示例}

    模型：  {cmd:p / c|p s p#s / c#s|p / g|c#s|p /}

    {c TLC}{hline 9}{c TT}{hline 42}{c TT}{hline 13}{c TRC}
    {c |} 项    {c |} 含义 {space 33}{c |} 误差项  {c |}
    {c LT}{hline 9}{c +}{hline 42}{c +}{hline 13}{c RT}
    {c |} {cmd:p}       {c |} {cmd:p} {space 39}{c |} {cmd:c|p}         {c |}
    {c |} {cmd:c|p}     {c |} {cmd:c} 嵌套在 {cmd:p} {space 27}{c |}{space 13}{c |}
    {c |} {cmd:s}       {c |} {cmd:s} {space 39}{c |} {cmd:c#s|p}       {c |}
    {c |} {cmd:p#s}     {c |} {cmd:p} 与 {cmd:s} 的交互作用 {space 22}{c |} {cmd:c#s|p}       {c |}
    {c |} {cmd:c#s|p}   {c |} {cmd:c} 与 {cmd:s} 的交互作用嵌套在 {cmd:p}           {c |} {cmd:g|c#s|p}     {c |}
    {c |} {cmd:g|c#s|p} {c |} {cmd:g} 嵌套在 {cmd:c} 与 {cmd:s} 的交互作用中, 而 {cmd:s} 嵌套在 {cmd:p} {c |} 残差误差 {c |}
    {c BLC}{hline 9}{c BT}{hline 42}{c BT}{hline 13}{c BRC}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <anova_example.sthlp>}