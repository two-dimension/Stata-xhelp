{smcl}
{* *! version 1.2.6  23may2019}{...}
{vieweralsosee "[P] javacall" "mansection P javacall"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[P] Java intro" "help java intro"}{...}
{vieweralsosee "[P] python" "help python_zh"}{...}
{vieweralsosee "Stata-Java API Specification" "browse http://www.stata.com/java/api16"}{...}
{vieweralsosee "Java Platform, Standard Edition 8 API Specification" "browse http://docs.oracle.com/javase/8/docs/api/"}{...}
{viewerjumpto "Syntax" "javacall_zh##syntax"}{...}
{viewerjumpto "Description" "javacall_zh##description"}{...}
{viewerjumpto "Links to PDF documentation" "javacall_zh##linkspdf"}{...}
{viewerjumpto "Options" "javacall_zh##options"}{...}
{viewerjumpto "Example" "javacall_zh##example"}
{help javacall:English Version}
{hline}{...}
{p2colset 1 17 16 2}{...}
{p2col:{bf:[P] javacall} {hline 2}}调用 Java 插件{p_end}
{p2col:}({mansection P javacall:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:语法}

{p 8 16 2}
{opt javacall} {it:类} {it:方法} [{varlist}] {ifin}{cmd:,}
{c -(}{opt jars(jar_files)}|{opt classpath(classpath)}{c )-}
[{opt args(arg_list)}]


{marker description}{...}
{title:描述}

{pstd}
{cmd:javacall} 通过调用静态方法来调用 Java 插件。  要调用的 {it:方法} 必须具有特定的 Java 签名，格式如下：

	{cmd:static int} {it:java_method_name}{cmd:(String[] args)}

{pstd}
{cmd:javacall} 要求 {it:类} 是包含类的包说明的完全限定名称。
例如，要调用 {cmd:method1} 方法，该方法位于包 {bf:com.mydomain} 中的类 {bf:Class1}，并打包在 {bf:myjarfile.jar} 中，可以使用以下命令：

	{com}. javacall com.mydomain.Class1 method1, jars(myjarfile.jar){txt}

{pstd}
可以选择性地指定变量列表、{help if_zh} 条件或 {help in_zh} 条件。Stata 提供了一个包含各种类和方法的 Java 包，以便访问变量列表、{cmd:if} 条件和 {cmd:in} 条件；有关更多细节，请参见 {helpb Java_intro:[P] Java intro}。

{marker linkspdf}{...}
{title:PDF 文档链接}

        {mansection P javacallRemarksandexamples:备注和示例}

{pstd}
以上部分未包含在此帮助文件中。


{marker options}{...}
{title:选项}

{phang}
{opt jars(jar_files)} 指定要添加到类路径的 JAR 文件。 {it:jar_files} 可以是一个 JAR 文件或多个用空格或分号分隔的 JAR 文件列表。 Stata将在 {help sysdir_zh:ado-path} 中查找指定的 JAR 文件并将它们添加到插件的 Java 类路径中。必须指定 {opt jars()} 或 {opt classpath()} 之一。

{phang}
{opt classpath(classpath)} 指定要使用的类路径。 {it:classpath} 可以是单个类路径或使用平台特定 Java 类路径指定的多个路径。在 Windows 上，多条路径用分号分隔。在 Mac 和 Unix 上，多条路径用冒号分隔。必须指定 {cmd:jars()} 或 {cmd:classpath()} 之一。

{pmore}
此选项在开发过程中提供便利。例如，开发人员可能会使用此选项将类路径设置为其编译器生成 {cmd:.class} 文件的目录，从而快速测试新编译的代码，而无需构建 JAR 文件。开发过程完成后，应创建 JAR 文件，并应使用 {cmd:jars()} 选项。

{phang}
{opt args(args_list)} 指定将作为字符串数组传递给 Java 方法的 {it:args_list}。如果未指定 {opt args()}，数组将为空。


{marker example}{...}
{title:示例}

{pstd}
考虑两个变量需要存储过大而无法在 {help datatype:double} 或 {help datatype:long} 中准确存储的整数，因此它们被存储为 {help datatype:strings}。如果我们需要从一个变量中减去另一个变量的值，我们可以使用 Java 的 BigInteger 类编写一个插件。以下代码展示了我们如何执行此任务：
  
    /* Java 类从这里开始 */
    import java.math.BigInteger;
    import com.stata.sfi.*;
    public class MyClass {
       /* 定义具有正确签名的静态方法 */
       public static int sub_string_vals(String[] args) {
	  long nobs1 = Data.getObsParsedIn1() ;
	  long nobs2 = Data.getObsParsedIn2() ;
	  BigInteger b1, b2 ;

	  if (Data.getParsedVarCount() != 2) {
	      SFIToolkit.error("必须指定两个变量\n") ;
	      return(198) ;
	  }
	  if (args.length != 1) {
	      SFIToolkit.error("未指定新变量名称\n") ;
	      return(198) ;
	  }

	  if (Data.addVarStr(args[0], 10)!=0) {
	      SFIToolkit.errorln("无法创建新变量 " + args[0]) ;
	      return(198) ;
	  }

	  // 获取变量列表的真实索引
	  int mapv1 = Data.mapParsedVarIndex(1) ;
	  int mapv2 = Data.mapParsedVarIndex(2) ;
	  int resv  = Data.getVarIndex(args[0]) ;

	  if (!Data.isVarTypeStr(mapv1) || !Data.isVarTypeStr(mapv2)) {
	      SFIToolkit.error("两个变量都必须是字符串\n") ;
	      return(198) ;
	  }

	  for(long obs=nobs1; obs<=nobs2; obs++) {
	      // 遍历观察值

	      if (!Data.isParsedIfTrue(obs)) continue ;
	      // 跳过任何在 [if] 条件中省略的观察值
	      try {
	          b1 = new BigInteger(Data.getStr(mapv1, obs)) ;
	          b2 = new BigInteger(Data.getStr(mapv2, obs)) ;
	          Data.storeStr(resv, obs, b1.subtract(b2).toString()) ;
	      }
	      catch (NumberFormatException e) { }
	  }
	  return(0) ;		
       }
    }
    /* Java 类在这里结束 */

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <javacall.sthlp>}