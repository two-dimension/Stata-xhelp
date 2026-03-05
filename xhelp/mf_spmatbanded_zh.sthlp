{smcl}
{* *! version 1.0.4  15may2018}{...}
{vieweralsosee undocumented "help undocumented"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[M-4] Matrix" "help m4_matrix_zh"}{...}
{viewerjumpto "Syntax" "mf_spmatbanded_zh##syntax"}{...}
{viewerjumpto "Description" "mf_spmatbanded_zh##description"}{...}
{viewerjumpto "Conformability" "mf_spmatbanded_zh##conformability"}{...}
{viewerjumpto "Diagnostics" "mf_spmatbanded_zh##diagnostics"}{...}
{viewerjumpto "Source code" "mf_spmatbanded_zh##source"}
{help mf_spmatbanded:English Version}
{hline}{...}
{title:标题}

{p 4 8 2}
{cmd:SPMATbanded*()} {hline 2} 带状矩阵操作符


{marker syntax}{...}
{title:语法}

{p 4 8 2}
{it:实数矩阵} {cmd:SPMATbandedmake(}{it:实数矩阵 A}{cmd:,}
{it:实数标量 lb}{cmd:,} {it:实数标量 ub}{cmd:)}

{p 4 8 2}
{it:实数矩阵} {cmd:SPMATbandedunmake(}{it:实数矩阵 A}{cmd:,}
{it:实数标量 lb}{cmd:,} {it:实数标量 ub}{cmd:)}

{p 4 8 2}
{it:无返回值} {cmd:_SPMATbandedtranspose(}{it:实数矩阵 A}{cmd:,}
{it:实数标量 lb}{cmd:,} {it:实数标量 ub}{cmd:)}

{p 4 8 2}
{it:实数矩阵} {cmd:SPMATbandedplus(}{it:实数矩阵 A}{cmd:,}
{it:实数标量 lb1}{cmd:,} {it:实数标量 ub1}{cmd:,}
{it:实数矩阵 B}{cmd:,} {it:实数标量 lb2}{cmd:,}
{it:实数标量 ub2}{cmd:)}

{p 4 8 2}
{it:实数矩阵} {cmd:SPMATbandedminus(}{it:实数矩阵 A}{cmd:,}
{it:实数标量 lb1}{cmd:,} {it:实数标量 ub1}{cmd:,}
{it:实数矩阵 B}{cmd:,} {it:实数标量 lb2}{cmd:,}
{it:实数标量 ub2}{cmd:)}

{p 4 8 2}
{it:实数标量} {cmd:SPMATbandedtrace(}{it:实数矩阵 A}{cmd:,}
{it:实数标量 lb}{cmd:,} {it:实数标量 ub}{cmd:)}

{p 4 8 2}
{it:实数标量} {cmd:SPMATbandedtracemult(}{it:实数矩阵 A}{cmd:,}
{it:实数标量 lb1}{cmd:,} {it:实数标量 ub1}{cmd:,}
{it:实数矩阵 B}{cmd:,} {it:实数标量 lb2}{cmd:,}
{it:实数标量 ub2}{cmd:)}

{p 4 8 2}
{it:实数矩阵} {cmd:SPMATbandedcross(}{it:实数矩阵 A}{cmd:,}
{it:实数标量 lb}{cmd:,} {it:实数标量 ub}{cmd:)}

{p 4 8 2}
{it:实数矩阵} {cmd:SPMATbandedmult(}{it:实数矩阵 A}{cmd:,}
{it:实数标量 lb1}{cmd:,} {it:实数标量 ub1}{cmd:,}
{it:实数矩阵 B}{cmd:,} {it:实数标量 lb2}{cmd:,}
{it:实数标量 ub2}{cmd:)}

{p 4 8 2}
{it:实数矩阵} {cmd:SPMATbandedmultfull(}{it:实数矩阵 A}{cmd:,}
{it:实数标量 lb1}{cmd:,} {it:实数标量 ub1}{cmd:,}
{it:实数矩阵 X}{cmd:)}


{marker description}{...}
{title:描述}

{p 4 4 2}
这些函数创建并对带状矩阵执行操作。

{p 4 4 2}
{cmd:SPMATbandedmake()} 接受一个 {it:n x n} 矩阵 {it:A} 并返回一个具有下带 {it:lb} 和上带 {it:ub} 的带状矩阵。

{p 4 4 2}
{cmd:SPMATbandedunmake()} 接受一个 {it:b x n} 带状矩阵 {it:A}，其下带为 {it:lb} 和上带 {it:ub}，并返回一个 {it:n x n} 矩阵。

{p 4 4 2}
{cmd:_SPMATbandedtranspose()} 返回转置的带状矩阵 {it:A}，下带为 {it:lb} 和上带为 {it:ub}。

{p 4 4 2}
{cmd:SPMATbandedplus()} 对带状矩阵 {it:A} 和 {it:B} 执行矩阵加法。

{p 4 4 2}
{cmd:SPMATbandedminus()} 对带状矩阵 {it:A} 和 {it:B} 执行矩阵减法。

{p 4 4 2}
{cmd:SPMATbandedtrace()} 返回带状矩阵 {it:A} 的迹。

{p 4 4 2}
{cmd:SPMATbandedtracemult()} 返回 {cmd:trace(}{it:A}{cmd:*}{it:B}{cmd:)} 的带状矩阵 {it:A} 和 {it:B} 的迹。

{p 4 4 2}
{cmd:SPMATbandedcross()} 返回 {cmd:cross(}{it:A,A}{cmd:)}，其中矩阵 {it:A} 以带状形式存储。

{p 4 4 2}
{cmd:SPMATbandedmult()} 对带状矩阵 {it:A} 和 {it:B} 执行矩阵乘法。

{p 4 4 2}
{cmd:SPMATbandedmultfull()} 对带状矩阵 {it:A} 和一个 {it:n x k} 矩阵 {it:X} 执行矩阵乘法。


{marker conformability}{...}
{title:兼容性}

{p 4 4 2}
    {cmd:SPMATbandedmake()}:
{p_end}
		{it:A}:  {it:n x n}
	   {it:result}:  {it:b x n}        其中 {it:b} = {it:lb}{cmd: + 1 + }{it:ub}

{p 4 4 2}
    {cmd:SPMATbandedunmake()}:
{p_end}
		{it:A}:  {it:b x n}        其中 {it:b} = {it:lb}{cmd: + 1 + }{it:ub}
	   {it:result}:  {it:n x n}

{p 4 4 2}
    {cmd:_SPMATbandedtranspose()}:
{p_end}
		{it:A}:  {it:b x n}
	   {it:result}:  {it:b x n}

{p 4 4 2}
    {cmd:SPMATbandedplus()},
    {cmd:SPMATbandedminus()}:
{p_end}
		{it:A}:  {it:b1 x n}        其中 {it:b1} = {it:lb1}{cmd: + 1 + }{it:ub1}
		{it:B}:  {it:b2 x n}        其中 {it:b2} = {it:lb2}{cmd: + 1 + }{it:ub2}
	   {it:result}:   {it:b x n}        其中  {it:b} = {cmd:max(}{it:lb1}{cmd:,}{it:lb2}{cmd:) + 1 + max(}{it:ub1}{cmd:,}{it:ub2}{cmd:)}

{p 4 4 2}
    {cmd:SPMATbandedtrace()}:
{p_end}
		{it:A}:  {it:b x n}
	   {it:result}:  1 {it:x} 1

{p 4 4 2}
    {cmd:SPMATbandedtracemult()}:
{p_end}
		{it:A}:  {it:b1 x n}
		{it:B}:  {it:b2 x n}
	   {it:result}:   1 {it:x} 1

{p 4 4 2}
    {cmd:SPMATbandedmult()}:
{p_end}
		{it:A}:  {it:b1 x n}        其中 {it:b1} = {it:lb1}{cmd: + 1 + }{it:ub1}
		{it:B}:  {it:b2 x n}        其中 {it:b2} = {it:lb2}{cmd: + 1 + }{it:ub2}
	   {it:result}:   {it:b x n}        其中  {it:b} = {cmd:(}{it:lb1}{cmd:+}{it:lb2}{cmd:) + 1 + (}{it:ub1}{cmd:+}{it:ub2}{cmd:)}

{p 4 4 2}
    {cmd:SPMATbandedcross()}:
{p_end}
		{it:A}:  {it:b1 x n}        其中 {it:b1} = {it:lb1}{cmd: + 1 + }{it:ub1}
	   {it:result}:   {it:b x n}        其中  {it:b} = {cmd:(}{it:lb1}{cmd:+}{it:ub1}{cmd:) + 1 + (}{it:lb1}{cmd:+}{it:ub1}{cmd:)}

{p 4 4 2}
    {cmd:SPMATbandedmultfull()}:
{p_end}
		{it:A}:  {it:b x n}
		{it:X}:  {it:n x k}
	   {it:result}:  {it:n x k}
	   

{marker diagnostics}{...}
{title:诊断}

{p 4 4 2}
    无。


{marker source}{...}
{title:源代码}

{p 4 4 2}
函数是内置的。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <mf_spmatbanded.sthlp>}