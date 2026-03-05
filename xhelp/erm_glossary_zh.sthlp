{smcl}
{* *! version 1.0.6  22may2019}{...}
{vieweralsosee "[ERM] 术语表" "mansection ERM Glossary"}{...}
{viewerjumpto "描述" "erm_glossary_zh##description"}{...}
{viewerjumpto "术语表" "erm_glossary_zh##glossary"}{...}
{viewerjumpto "参考文献" "erm_glossary_zh##references"}
{help erm_glossary:English Version}
{hline}{...}
{p2colset 1 19 21 2}{...}
{p2col:{bf:[ERM] 术语表} {hline 2}}术语表{p_end}
{p2col:}({mansection ERM Glossary:查看完整 PDF 手册条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:描述}

{pstd}此处定义了常用术语。


{marker glossary}{...}
{title:术语表}

{marker average_structural_function}{...}
{phang}
{bf:平均结构函数}。
        平均结构函数 (ASF) 用于计算预测的 ERM 值。 

{pmore}
        ASF 通过从具有内生协变量的模型中的条件均值或条件概率中消除内生性引起的异质性来进行平均。将 ASF 应用于条件均值产生平均结构均值 (ASM)。将 ASF 应用于条件概率产生平均结构概率 (ASP)。由协变量变化产生的 ASM 或 ASP 的对比定义了因果结构效应。
	Blundell 和 Powell ({help erm_glossary##BP2003:2003},
	{help erm_glossary##BP2004:2004})
	以及 Wooldridge ({help erm_glossary##W2005:2005},
	{help erm_glossary##W2014:2014})
	是定义和扩展 ASF 的开创性论文。有关教科书介绍，请参见 Wooldridge ({help erm_glossary##W2010:2010}, 22-24)。

{phang}
{bf:平均结构均值}。
        平均结构均值 (ASM) 是将
	{help erm_glossary##average_structural_function:平均结构函数}
	应用于条件均值的结果。

{phang}
{bf:平均结构概率}。
        平均结构概率 (ASP) 是将
	{help erm_glossary##average_structural_function:平均结构函数}
	应用于条件概率的结果。

{phang}
{bf:平均处理效应}。
   请参见 {help erm_glossary##treatment_effects:{it:处理效应}}。

{marker ATET}{...}
{phang}
{bf:接受治疗的平均处理效应}。
        请参见 {help erm_glossary##treatment_effects:{it:处理效应}}。

{phang}
{bf:未接受治疗的平均处理效应}。
        请参见 {help erm_glossary##treatment_effects:{it:处理效应}}。

{marker binary_variable}{...}
{phang}
{bf:二元变量}。
        二元变量是记录两个值的变量，这两个值表示假和真，例如某人是否生病。我们通常将这两个值称为 0 和 1，其中 1 表示真，但 Stata 仅要求 0 表示假，非零和非缺失表示真。另请参见
        {help erm_glossary##continuous_variable:{it:连续变量}},
        {help erm_glossary##categorical_variable:{it:分类变量}}和
        {help erm_glossary##interval_variable:{it:区间变量}}。

{marker categorical_variable}{...}
{phang}
{bf:分类变量}。
         分类变量是记录类别编号的变量，例如，生活在美国，生活在欧洲和生活在亚洲。分类变量在本手册中并没有特别作用，但
	 {help erm_glossary##ordered_categorical_variable:有序分类变量} 是有的。 
	 给出的例子是无序的。美国、欧洲和亚洲的类别没有自然顺序。我们将美国列为第一只是因为本手册的作者恰好生活在美国。

{pmore}
         按照我们的用法，分类变量通常记录两类或更多类，二元变量用于具有两个类别的分类变量。

{pmore}
         我们通常将分类变量视为取值 1、2、.... Stata 并不要求这样。不过，值必须是整数。 

{marker censored}{...}
{phang}
{bf:审查}, {bf:左审查}, {bf:右审查} 和
{bf:区间审查}。
        审查涉及未观察到某些东西但知道何时何地未观察到。

{pmore}
	例如，有时被研究的患者、样本或单位 - 你数据集中的观察值 - 值等于缺失。
	当观察值缺失有原因时，这样的观察值称为被审查。某个变量缺失的原因可能是潜在工人选择不工作，潜在患者选择不成为患者，潜在对象未被处方治疗等。
	这种被审查的结果在存在未观察到的因素与正在研究的结果相关联时，造成困难。ERM 选项 {cmd:select()} 处理这些问题。

{pmore}
	另一种类型的审查 - 区间审查 - 涉及未精确观察到某个值，但知道其范围。你没有观察到血压，但你知道它在 120 到 140 的范围内。或者你知道它小于 120 或大于 160。ERM 命令
	{cmd:eintreg} 适用于因变量为区间审查的模型。

{pmore}
        左审查是开放式区间审查，其中低于某个值的测量结果未被观察到。血压小于 120。

{pmore}
        右审查是开放式区间审查，其中高于某个值的测量结果未被观察到。血压高于 160。 

{phang}
{bf:条件均值}。
        变量的条件均值是基于其他变量函数的期望值。如果 y 是 x_1 和 x_2 的线性函数 - y = beta_0 + beta_1x_1 + beta_2x_2 + 噪声 - 那么 x_1 = 2 和 x_2 = 4 时 y 的条件均值是 beta_0 + 2beta_1 + 4beta_2。

{phang}
{bf:混杂变量，混杂因子}。
	混杂变量是模型中遗漏的解释变量，它与模型中包含的变量相关。
	观察变量的拟合系数将包括变量的预期效果，加上因与遗漏变量相关而产生的效应。  

{pmore}
        混杂因子常常被遗漏在模型中，因为它们未被观察到。请参见 {manlink ERM Intro 3}。

{marker continuous_variable}{...}
{phang}
{bf:连续变量}。
        连续变量是取数轴上任何值的变量。然而，在本手册中，我们使用此术语意味着变量不是
	{help erm_glossary##binary_variable:二元变量}，不是 
        {help erm_glossary##categorical_variable:分类变量}，并且不是一个 
        {help erm_glossary##interval_variable:区间变量}。

{phang}
{bf:反事实}。
	反事实是指通过假设与当前事实相反的事情而期望的结果。
	如果每个人多受一年教育，平均收入将会是多少？如果实验医学治疗得到广泛提供，将有什么效果？
	Stata 的 {cmd:margins} 命令为这些类型的反事实思维实验提供统计答案，并同样报告标准误差。

{phang}
{bf:反事实预测}。
	反事实预测在主要方程中有内生协变量时使用，您希望估计反事实或协变量值变化对结果的影响。它们是通过使用 {cmd:predict} 选项 {cmd:base()} 和 {cmd:fix()} 获得的。

{marker covariate}{...}
{phang}
{bf:协变量}。
        协变量是出现在模型右侧 (RHS) 的变量。协变量可以是外生的或内生的，但一旦不带修饰地使用该术语，通常指外生协变量。协变量也称为解释变量。另请参见
	{help erm_glossary##endogenous_covariate:{it:内生协变量}}
        和
	{help erm_glossary##exogenous_covariate:{it:外生协变量}}。

{marker dependent_variable}{...}
{phang}
{bf:因变量}。
        因变量是出现在模型方程左侧的变量。它是要被解释的变量。每个模型方程都有一个因变量。"因变量" 这个术语在本手册中通常用来指 
        {help erm_glossary##main_equation:主方程} 的因变量。
	另请参见 {manlink ERM Intro 3}。

{phang}
{bf:内生和外生处理分配}。
	请参见 {help erm_glossary##treatment_assignment:{it:处理分配}}。

{marker endogenous_covariate}{...}
{phang}
{bf:内生协变量}。
        内生协变量是出现在模型中的一个
	{help erm_glossary##covariate:协变量}，1）与被遗漏的同时影响结果的变量相关；2）存在测量误差；3）受因变量影响；或 4）与模型的误差相关。请参见 {manlink ERM Intro 3}。

{marker endogenous_sample_selection}{...}
{phang}
{bf:内生样本选择}。
        内生样本选择是指用于拟合模型的数据子集以对与模型结果相关的方式选择的情况。  

{pmore}
        从技术上讲，使用的子集是包含模型使用的变量的非缺失值的子集。某个变量未观察到 - 包含缺失值 - 是因为潜在工人选择不工作，潜在患者选择不成为患者，因为潜在对象未被处方治疗等。 这种被审查的结果造成困难， 当缺乏观察到的成分与正在研究的结果相关时。  

{pmore}
        当数据集包含因变量缺失的观察值时，ERM 选项 {cmd:select()} 可以解决这些问题。

{phang}
{bf:误差}。
	误差是出现在模型方程末尾的随机成分（残差）。这些误差解释了影响因变量的未观察信息。
	本手册中的误差写作 e.{it:depvarname}，例如 y = beta_0 + beta_1x_1 + beta_2x_2 + e.y。

{marker exogenous_covariate}{...}
{phang}
{bf:外生协变量}。
        外生协变量是一个与模型中误差项不相关的
	{help erm_glossary##covariate:协变量}。请参见
	{manlink ERM Intro 3}。

{phang}
{bf:解释变量}。
	解释变量是
	{help erm_glossary##covariate:协变量}的另一种说法。

{phang}
{bf:扩展回归模型}。
         扩展回归模型（ERM）是广义结构方程模型，允许身份和概率链接以及高斯、二项和有序的主要结果。它们通过容纳内生协变量、非随机和内生处理分配以及内生样本选择来扩展区间回归、顺序概率、概率和线性回归模型。

{phang}
{bf:个体层面处理效应}。 
        个体层面
	{help erm_glossary##treatment_effects:处理效应}
	是指在给定一种处理而不是另一种处理时，个体结果之间的差异。这是个体的两个潜在结果之间的差异。服用药片后的血压减去未服用时的血压是药片对血压的个体层面处理效应。

{phang}
{bf:信息缺失}。
        见 {help erm_glossary##missingness:{it:缺失}}。 

{marker instrument}{...}
{phang}
{bf:工具}。
	工具是对
	{help erm_glossary##instrumental_variable:工具变量}的非正式称谓。
        
{marker instrumental_variable}{...}
{phang}
{bf:工具变量}。
        工具变量是影响一个
        {helpb erm_glossary##endogenous_covariate:内生协变量}但不影响
        {help erm_glossary##dependent_variable:因变量}的变量。
	请参见 {manlink ERM Intro 3}。

{phang}
{bf:区间测量}。
        区间测量是区间审查的同义词。 
	请参见 {help erm_glossary##censored:{it:审查}}。
       
{marker interval_variable}{...}
{phang}
{bf:区间变量}。
        区间变量实际上是一对变量，记录下限和上限，以表示未观察到的变量的精确值。 {cmd:ylb} 和 {cmd:yub}
        可能为变量 y 记录这样的值。假设每个观察 i 均已知，{cmd:ylb}_i {ul:<}
        y {ul:<} {cmd:yub}_i。 ERM 估计命令 {cmd:eintreg}
	拟合此类模型。另请参见
	{help erm_glossary##censored:{it:审查}}。

{phang}
{bf:区间审查}。
	见 {help erm_glossary##censored:{it:审查}}。

{phang}
{bf:左侧变量 (LHS)}。
        左侧变量是
      {help erm_glossary##dependent_variable:因变量}的另一种说法。  

{phang}
{bf:失访}。
     被试由于与事件无关的原因未能完成研究。因此，失访的情况会发生在被试迁移到不同地区或决定不再参与研究时。失访不应与行政审查混淆。如果被试失访，关于这些被试在研究结束时会经历的结果信息是不可用的，这可能让他们完成研究后所经历的结果信息丧失。

{marker main_equation}{...}
{phang}
{bf:主方程}。
       ERM 中的主方程是第一条指定的方程，
       该方程直接出现在 {cmd:eregress}、{cmd:eintreg}、{cmd:eprobit} 或 {cmd:eoprobit}
       命令后面。 ERM 的目的是在存在内生性、选择或处理分配等复杂情况下，生成主方程中结构系数的有效估计。

{phang}
{bf:测量误差，带有误差的测量}。
        一个带有误差的变量具有记录值 
        等于 x + epsilon，其中 x 是真实值。
        该误差与模型中的所有其他误差是毫无相关的。 在这种情况下，拟合系数将偏向于零。 
        参见 {manlink ERM Intro 3}。

{phang}
{bf:随机缺失 (MAR)}。
        见 {help erm_glossary##missingness:{it:缺失}}。

{phang}
{bf:完全随机缺失 (MCAR)}。
	见 {help erm_glossary##missingness:{it:缺失}}。

{phang}
{bf:非随机缺失 (MNAR)}。
        见 {help erm_glossary##missingness:{it:缺失}}。

{marker missingness}{...}
{phang}
{bf:缺失}。
        缺失指的是数据中缺少观察值的情况。
        分类为 {bind:1) 非随机缺失 (MNAR)，{bind:2) 随机缺失 (MAR)，和 {bind:3) 完全随机缺失 (MCAR)。

{pmore}
        在以下讨论中，我们将提到的缺失观察值不仅仅是指数据集中完全缺失的观察值，还包括拟合模型时由于缺失值而被遗漏的观察值。

{pmore}
        MNAR 观察值是指缺失发生依赖于正在研究的结果。这种情况下的解决方案是对该依赖关系进行建模。
        当观察值因缺失值而缺失时，ERM 选项 {cmd:select()} 可用于建模缺失。

{pmore}
        MAR 观察值是指缺失发生不依赖于正在研究的结果，但依赖于与结果相关的其他变量。针对某些问题的解决方案是在模型中将其他变量包含为协变量。
        重要的是，您不需要对缺失的原因进行建模。

{pmore}
        MCAR 观察值就是这样，显然除了造成效率的损失之外没有其他问题。

{pmore}
        MNAR 和 MAR 情况统称为信息缺失。

{phang}
{bf:多值处理}。
	多值处理是指具有两个以上处理组的处理。
        请参见 {help erm_glossary##treatment_arms:{it:处理组}}。 

{phang}
{bf:观察数据}。
	观察数据是研究者没有控制的数据。观察数据的对立面是实验数据。使用观察数据通常会带来实验数据不会存在的统计问题。
        例如，在基于观察数据的治疗研究中，研究者对治疗分配没有控制；因此，治疗分配需要进行建模。 

{phang}
{bf:遗漏变量}。
        遗漏变量是指应出现在模型中的
	{help erm_glossary##covariate:协变量}但没有包含的情况。它们没有被包括进来可能是因为未被测量、出于肆意无知或其他原因。 当不遗漏的变量与遗漏的变量相关时，会产生问题。

{marker ordered_categorical_variable}{...}
{phang}
{bf:有序分类变量}。
        有序分类变量是一个
        {help erm_glossary##categorical_variable:分类变量}
        其类别可以排序，例如健康、生病和非常生病。变量实际上记录的是 1、2 和 3 等整数。
        整数不必是连续的，但必须反映排序。

{pmore}
        另请参见 {help erm_glossary##binary_variable:{it:二元变量}} 和 
        {help erm_glossary##continuous_variable:{it:连续变量}}。

{phang}
{bf:结果变量}。
        见 {help erm_glossary##dependent_variable:{it:因变量}}。

{marker potential_outcome}{...}
{phang}
{bf:潜在结果}。
     潜在结果是处理效应文献中使用的一个术语。它是指个体在接受某种特定处理后将会得到的结果。在这种情况下，个体是指基于个体的协变量，这些协变量在由 ERM 拟合的模型的主方程中。它是指该个体将观察到的结果。例如，每个参与研究的患者在服药后有一个潜在的血压，和一个如果没有服药时的血压。
     另请参见 {help erm_glossary##treatment_effects:{it:处理效应}}。

{marker potential_outcome_means}{...}
{phang}
{bf:潜在结果均值}。
     潜在结果均值 (POMs) 是处理效应文献中使用的一个术语。它们是
     {help erm_glossary##potential_outcome:潜在结果} 的均值（平均值）。
     平均处理效应（请参见
     {help erm_glossary##treatment_effects:{it:处理效应}}）
     是指处理组与未处理组的潜在结果均值之间的差异。

{marker recursive_structural_model}{...}
{phang}
{bf:递归（结构）模型}。
      ERM 拟合递归模型。当一个内生变量依赖于另一个内生变量，且另一个内生变量依赖于第一个时，模型即不为递归模型。用符号表示，A 依赖于 B，而 B 依赖于 A。当 A 依赖于 B，B 依赖于 C，而 C 又依赖于 A 等等，模型同样不为递归模型。请参见 {manlink ERM Triangularize}。
    
{phang}
{bf:反向因果关系和同时因果关系}。
      在手册中，当 ERM 的主方程中的
      {help erm_glossary##dependent_variable:因变量}
      影响某个 {help erm_glossary##covariate:协变量} 以及该协变量影响因变量时，我们使用反向因果关系这个术语。遭受压力的人可能由于受到压力而身体不健康，进一步因为身体不健康而受到更多压力。当协变量遭受反向因果关系时，解决方案是使其内生并找到
      {help erm_glossary##instrument:工具}。

{pmore}
      我们使用的反向因果关系一词在其他地方也常用。反向因果关系是使变量内生的理由。反向因果关系在 {manlink ERM Intro 3} 中进行了讨论。

{pmore}
      同时因果关系有时在其他地方与反向因果关系互换使用，但我们做出区分。当两个已经内生的变量相互影响时，我们使用该术语。
      同时因果关系在 {manlink ERM Triangularize} 中进行了讨论。 

{phang}
{bf:右侧变量 (RHS)}。
        右侧变量是另一个指代
	{help erm_glossary##covariate:协变量}的词。 

{phang}
{bf:样本选择}。
        样本选择是另一个指代
        {help erm_glossary##endogenous_sample_selection:内生样本选择}的术语。

{phang}
{bf:选择}。
	选择是另一个指代
	{help erm_glossary##endogenous_sample_selection:内生样本选择}的术语。

{phang}
{bf:未观察选择}。
        未观察选择是另一个指代 
        {help erm_glossary##endogenous_sample_selection:内生样本选择}的术语。

{phang}
{bf:同时因果关系}。
        见 {help erm_glossary##recursive_structural_model:{it:递归（结构）模型}}。

{phang}
{bf:同时系统}。
        同时系统是一个多方程模型，其中因变量可以自由相互影响。 {cmd:y1} 的方程可能包括 {cmd:y2}，而 {cmd:y2} 的方程可能包括 {cmd:y1}。 ERM 不能拟合同时系统。因为 ERM 侧重于特定的一个方程 - 主方程 - 所以可以将协变量替换为 {cmd:y1} 的方程中的 {cmd:y1} 来形成简化结果，仍然可以获得 {cmd:y1} 方程的结构参数的估计。在本手册中，我们使用反向因果关系和
	{help erm_glossary##recursive_structural_model:递归（结构）模型} 讨论此问题。
        本手册在 {manlink ERM Triangularize} 中进行了讨论。

{phang}
{bf:TE}。
	见 {help erm_glossary##treatment_effects:{it:处理效应}}。

{phang}
{bf:托比特估计量}。
        托比特是一种处理因变量被审查的估计技术。经典的托比特模型处理左审查，其结果变量被记录为零，如果它本应该是零或更少。该估计量随后已被推广到处理左审查、右审查或区间审查的模型。请参见
	{help erm_glossary##censored:{it:审查}}。

{marker treatment}{...}
{phang}
{bf:处理}。
	处理是指药物、政府方案或其他希望改善结果的措施。

{marker treatment_arms}{...}
{phang}
{bf:治疗组}。
        有时，实验将针对多个
	{help erm_glossary##treatment:处理}
        同时进行。每个不同的处理称为处理的一条支臂。控制组（未接受治疗者）也是治疗的一条支臂。

{marker treatment_assignment}{...}
{phang}
{bf:处理分配}。
        处理分配是指被试分配到某个 {help erm_glossary##treatment_arms:处理组} 的过程。
	该过程可以是内生的或外生的，即分配中的随机成分（误差）可能与处理的结果相关或不相关。由于医生分配被试或被试选择基于与治疗结果相关的未观察因素，因此通常为内生的。

{marker treatment_effects}{...}
{phang}
{bf:处理效应}。
        处理效应 (TE) 是指一种处理对于测量结果（如血压、行走能力、就业机会等）的效果。统计问题是测量在面临审查、处理分配等复杂情况时的处理效应。

{pmore}
        当指定 {cmd:entreat()} 或 {cmd:extreat()} 其中一个选项用于内生或外生处理分配时，ERM 拟合处理效应模型。同时，结果模型在主方程中指定。  

{pmore}
        TE 是每个人的
        基于主方程的协变量而锁定处理为被处理或未被处理后的预测结果的差异。

{pmore}
        被治疗的处理效应 (TET) 是
        对于每个被治疗的人，基于主方程中协变量的预测结果的差异，考虑到他们被分配为被治疗或选择治疗的事实。

{pmore}
        未接受治疗的处理效应 (TEU) 是
        对于每个未被治疗的人，基于主方程中协变量的预测结果的差异，考虑到他们被分配为未治疗或选择不治疗的事实。

{pmore}
        平均处理效应 (ATE) 是估计
        人群中账户统计问题后产生的平均效果。

{pmore}
        被治疗者的平均效应 (ATET) 是
        对于在数据中实际上被治疗的人的总结估计的平均效应。

{pmore}
        未接受治疗的平均效应 (ATEU) 是
        对于在数据中实际上未治疗的人总结估计的平均效应。

{phang}
{bf:三角系统}。
      参见 {help erm_glossary##recursive_structural_model:{it:递归（结构）模型}}。


{marker references}{...}
{title:参考文献}

{marker BP2003}{...}
{phang}
Blundell, R. W., 和 J. L. Powell. 2003. 非参数和半参数回归模型中的内生性。在
{it:经济学与计量经济学进展：理论与应用，第八届世界大会},
编：M. Dewatripont、L. P. Hansen 和 S. J. Turnovsky，第二卷，312-357.
剑桥：剑桥大学出版社。

{marker BP2004}{...}
{phang}
------. 2004. 半参数二元响应模型中的内生性。
{it:经济研究评论} 71: 655-679。

{marker W2005}{...}
{phang}
Wooldridge, J. M. 2005. 未观察差异性与平均部分效应估计。在
{it:计量经济模型的识别与推理：纪念托马斯·罗斯滕伯格的论文集},
编：D.  W. K. Andrews 和 J. H. Stock, 27-55.
纽约：剑桥大学出版社。

{marker W2010}{...}
{phang}
------. 2010.
{browse "http://www.stata.com/bookstore/cspd.html":{it:跨段与面板数据的计量分析}}. 第2版.
马萨诸塞州剑桥：MIT出版社。

{marker W2014}{...}
{phang}
------. 2014. 带有内生解释变量的非线性模型的拟合和检验。
{it:计量经济学杂志} 182: 226-234。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <erm_glossary.sthlp>}