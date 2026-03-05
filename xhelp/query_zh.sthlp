{smcl}
{* *! version 2.3.8  13jun2019}{...}
{viewerdialog query "dialog query"}{...}
{vieweralsosee "[R] query" "mansection R query"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[P] creturn" "help creturn_zh"}{...}
{vieweralsosee "[M-3] mata set" "help mata set"}{...}
{vieweralsosee "[R] set" "help set_zh"}{...}
{viewerjumpto "Syntax" "query_zh##syntax"}{...}
{viewerjumpto "Description" "query_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "query_zh##linkspdf"}{...}
{viewerjumpto "Example" "query_zh##example"}
{help query:English Version}
{hline}{...}
{p2colset 1 14 16 2}{...}
{p2col:{bf:[R] query} {hline 2}}显示系统参数{p_end}
{p2col:}({mansection R query:查看完整的PDF手册条目}){p_end}
{p2colreset}{...}

{marker syntax}{...}
{title:语法}

{p 8 16 2}{cmdab:q:uery} [ {opt mem:ory} | {opt out:put} |
		{opt inter:face} | {opt graph:ics} |
		{opt net:work} | {opt up:date} |
		{opt trace} | {opt mata} | {opt java} | {opt python} |
		{opt random} | {opt unicode} | {opt oth:er} ]

{col 16}有关 ... 的信息{col 47}参见 ...
               {hline 49}
{col 16}内存设置
{center:{cmd:set maxvar}                   {help memory_zh}              }
{center:{cmd:set niceness}                 {help memory_zh}              }
{center:{cmd:set max_memory}               {help memory_zh}              }
{center:{cmd:set min_memory}               {help memory_zh}              }
{center:{cmd:set segmentsize}              {help memory_zh}              }
{center:{cmd:set adosize}                  {help adosize}             }
{center:{cmd:set max_preservemem}          {help preserve_zh}            }

{col 16}输出设置
{center:{cmd:set more}                     {help more_zh}                }
{center:{cmd:set rmsg}                     {help rmsg_zh}                }
{center:{cmd:set dp}                       {help format_zh}              }
{center:{cmd:set linesize}                 {help log_zh}                 }
{center:{cmd:set pagesize}                 {help more_zh}                }
{center:{cmd:set iterlog}                  {help set iter}            }
{center:{cmd:set level}                    {help level_zh}               }
{center:{cmd:set clevel}                   {help clevel_zh}              }
{center:{cmd:set showbaselevels}           {help set showbaselevels}  }
{center:{cmd:set showemptycells}           {help set showbaselevels}  }
{center:{cmd:set showomitted}              {help set showbaselevels}  }
{center:{cmd:set fvlabel}                  {help set showbaselevels}  }
{center:{cmd:set fvwrap}                   {help set showbaselevels}  }
{center:{cmd:set fvwrapon}                 {help set showbaselevels}  }
{center:{cmd:set lstretch}                 {help lstretch_zh}            }
{center:{cmd:set cformat}                  {help set cformat}         }
{center:{cmd:set pformat}                  {help set cformat}         }
{center:{cmd:set sformat}                  {help set cformat}         }
{center:{cmd:set coeftabresults}           {help set coeftabresults}  }
{center:{cmd:set dots}                     {help set dots}            }
{center:{cmd:set logtype}                  {help log_zh}                 }
{center:{cmd:set notifyuser}               {help notifyuser_zh}          }
{center:{cmd:set playsnd}                  {help playsnd_zh}             }
{center:{cmd:set include_bitmap}           {help include_bitmap_zh}      }

{col 16}接口设置
{center:{cmd:set dockable}                 {help dockable_zh}            }
{center:{cmd:set floatwindows}             {help floatwindows_zh}        }
{center:{cmd:set locksplitters}            {help locksplitters_zh}       }
{center:{cmd:set pinnable}                 {help pinnable_zh}            }
{center:{cmd:set doublebuffer}             {help doublebuffer_zh}        }
{center:{cmd:set revkeyboard}              {help varkeyboard_zh}         }
{center:{cmd:set varkeyboard}              {help varkeyboard_zh}         }
{center:{cmd:set smoothfonts}              {help smoothfonts_zh}         }
{center:{cmd:set linegap}                  {help linegap_zh}             }
{center:{cmd:set scrollbufsize}            {help scrollbufsize_zh}       }
{center:{cmd:set fastscroll}               {help fastscroll_zh}          }
{center:{cmd:set reventries}               {help reventries_zh}          }
{center:{cmd:set maxdb}                    {help db_zh}                  }

{col 16}图形设置
{center:{cmd:set graphics}                 {help set graphics}        }
{center:{cmd:set autotabgraphs}            {help autotabgraphs_zh}       }
{center:{cmd:set scheme}                   {help set scheme}          }
{center:{cmd:set printcolor}               {help set printcolor}      }
{center:{cmd:set copycolor}                {help set printcolor}      }

{col 16}网络设置
{center:{cmd:set checksum}                 {help checksum_zh}            }
{center:{cmd:set timeout1}                 {help netio_zh}               }
{center:{cmd:set timeout2}                 {help netio_zh}               }
{center:{cmd:set httpproxy}                {help netio_zh}               }
{center:{cmd:set httpproxyhost}            {help netio_zh}               }
{center:{cmd:set httpproxyport}            {help netio_zh}               }
{center:{cmd:set httpproxyauth}            {help netio_zh}               }
{center:{cmd:set httpproxyuser}            {help netio_zh}               }
{center:{cmd:set httpproxypw}              {help netio_zh}               }

{col 16}更新设置
{center:{cmd:set update_query}             {help update_zh}              }
{center:{cmd:set update_interval}          {help update_zh}              }
{center:{cmd:set update_prompt}            {help update_zh}              }

{col 16}跟踪设置
{center:{cmd:set trace}                    {help trace_zh}               }
{center:{cmd:set tracedepth}               {help trace_zh}               }
{center:{cmd:set traceexpand}              {help trace_zh}               }
{center:{cmd:set tracesep}                 {help trace_zh}               }
{center:{cmd:set traceindent}              {help trace_zh}               }
{center:{cmd:set tracenumber}              {help trace_zh}               }
{center:{cmd:set tracehilite}              {help trace_zh}               }

{col 16}Mata设置
{center:{cmd:set matastrict}               {help mata set}            }
{center:{cmd:set matalnum}                 {help mata set}            }
{center:{cmd:set mataoptimize}             {help mata set}            }
{center:{cmd:set matafavor}                {help mata set}            }
{center:{cmd:set matacache}                {help mata set}            }
{center:{cmd:set matalibs}                 {help mata set}            }
{center:{cmd:set matamofirst}              {help mata set}            }

{col 16}Java设置
{center:{cmd:set java_heapmax}             {help java_utilities_zh}      }
{center:{cmd:set java_home}                {help java_utilities_zh}      }

{col 16}Python设置
{center:{cmd:set python_exec}              {help python_zh}              }
{center:{cmd:set python_userpath}          {help python_zh}              }

{col 16}随机设置
{center:{cmd:set rng}                      {help set rng}             }
{center:{cmd:set rngstate}                 {help set rngstate}        }
{center:{cmd:set rngstream}		   {help set rngstream}       }

{col 16}Unicode设置
{center:{cmd:set locale_functions}         {help set locale_functions}}
{center:{cmd:set locale_ui}                {help set locale_ui}       }

{col 16}其他设置
{center:{cmd:set type}                     {help generate_zh}            }
{center:{cmd:set maxiter}                  {help set iter}            }
{center:{cmd:set searchdefault}            {help search_zh}              }
{center:{cmd:set varabbrev}                {help varabbrev}           }
{center:{cmd:set emptycells}               {help emptycells}          }
{center:{cmd:set fvtrack}                  {help set fvtrack}         }
{center:{cmd:set fvbase}                   {help set fvbase}          }
{center:{cmd:set processors}               {help processors}          }
{center:{cmd:set odbcmgr}                  {help odbc_zh}                }
{center:{cmd:set odbcdriver}               {help odbc_zh}                }
{center:{cmd:set haverdir}                 {help import haver}        }
{center:{cmd:set fredkey}                  {help import fred}         }
               {hline 49}

{marker description}{...}
{title:描述}

{pstd}
{cmd:query} 显示各种Stata参数的设置。

{marker linkspdf}{...}
{title:PDF文档链接}

        {mansection R queryRemarksandexamples:备注和示例}

{pstd}
上述部分不包括在此帮助文件中。

{marker example}{...}
{title:示例}

{phang}
仅显示内存设置
{p_end}
{phang2}{cmd:. query memory}{p_end}

{phang}
显示所有设置
{p_end}
{phang2}{cmd:. query}{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <query.sthlp>}