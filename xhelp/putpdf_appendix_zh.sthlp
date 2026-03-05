{smcl}
{* *! version 1.0.0  10may2019}{...}
{vieweralsosee "[RPT] putpdf 的附录" "mansection RPT Appendixforputpdf"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[RPT] putpdf 介绍" "help putpdf intro"}{...}
{vieweralsosee "[RPT] putpdf 开始" "help putpdf begin"}{...}
{vieweralsosee "[RPT] putpdf 页面跳转" "help putpdf pagebreak"}{...}
{vieweralsosee "[RPT] putpdf 段落" "help putpdf paragraph"}{...}
{vieweralsosee "[RPT] putpdf 表格" "help putpdf table"}{...}
{viewerjumpto "描述" "putpdf appendix##description"}{...}
{viewerjumpto "不支持的估计命令" "putpdf appendix##Unsupported_estcmds"}
{help putpdf_appendix:English Version}
{hline}{...}
{p2colset 1 30 32 2}{...}
{p2col:{bf:[RPT] putpdf 的附录} {hline 2}}putpdf 条目的附录{p_end}
{p2col:}({mansection RPT Appendixforputpdf:查看完整的 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:描述}

{pstd}
这是 {cmd:putpdf} 条目的集合附录：
{helpb putpdf begin:[RPT] putpdf 开始},
{helpb putpdf pagebreak:[RPT] putpdf 页面跳转},
{helpb putpdf paragraph:[RPT] putpdf 段落}，以及
{helpb putpdf table:[RPT] putpdf 表格}。


{marker Colors}{...}
{marker colors}{...}
    {bf:颜色}

         {it:color}, {it:bcolor}
       {hline 52}
         {cmd}aliceblue       ghostwhite            navajowhite
         antiquewhite    gold                  navy
         aqua            goldenrod             oldlace
         aquamarine      gray                  olive
         azure           green                 olivedrab
         beige           greenyellow           orange
         bisque          honeydew              orangered
         black           hotpink               orchid
         blanchedalmond  indianred             palegoldenrod
         blue            indigo                palegreen
         blueviolet      ivory                 paleturquoise
         brown           khaki                 palevioletred
         burlywood       lavender              papayawhip
         cadetblue       lavenderblush         peachpuff
         chartreuse      lawngreen             peru
         chocolate       lemonchiffon          pink
         coral           lightblue             plum
         cornflowerblue  lightcoral            powderblue
         cornsilk        lightcyan             purple
         crimson         lightgoldenrodyellow  red
         cyan            lightgray             rosybrown
         darkblue        lightgreen            royalblue
         darkcyan        lightpink             saddlebrown
         darkgoldenrod   lightsalmon           salmon
         darkgray        lightseagreen         sandybrown
         darkgreen       lightskyblue          seagreen
         darkkhaki       lightslategray        seashell
         darkmagenta     lightsteelblue        sienna
         darkolivegreen  lightyellow           silver
         darkorange      lime                  skyblue
         darkorchid      limegreen             slateblue
         darkred         linen                 slategray
         darksalmon      magenta               snow
         darkseagreen    maroon                springgreen
         darkslateblue   mediumaquamarine      steelblue
         darkslategray   mediumblue            tan
         darkturquoise   mediumorchid          teal
         darkviolet      mediumpurple          thistle
         deeppink        mediumseagreen        tomato
         deepskyblue     mediumslateblue       turquoise
         dimgray         mediumspringgreen     violet
         dodgerblue      mediumturquoise       wheat
         firebrick       mediumvioletred       white
         floralwhite     midnightblue          whitesmoke
         forestgreen     mintcream             yellow
         fuchsia         mistyrose             yellowgreen
         gainsboro       moccasin{txt}
        {hline 52}


{marker Unsupported_estcmds}{...}
{title:不支持的估计命令}

{synoptset 20}{...}
{synopt :命令名称}可用的存储结果文档在{p_end}
{synoptline}
{synopt :{cmd:bayesmh}}{manhelp bayesmh BAYES}{p_end}
{synopt :{cmd:bayes}}{manhelp bayes BAYES}{p_end}
{synopt :{cmd:boxcox}}{manhelp boxcox R}{p_end}
{synopt :{cmd:exlogistic}}{manhelp exlogistic R}{p_end}
{synopt :{cmd:expoisson}}{manhelp expoisson R}{p_end}
{synopt :{cmd:menl}}{manhelp menl ME}{p_end}
{synopt :{cmd:rocfit}}{manhelp rocfit R}{p_end}
{synopt :{cmd:varbasic}}{manhelp varbasic TS}{p_end}
{synopt :{cmd:xthtaylor}}{manhelp xthtaylor XT}{p_end}
{synopt :{cmd:xtpcse}}{manhelp xtpcse XT}{p_end}
{synoptline}
{p2colreset}{...}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <putpdf_appendix.sthlp>}