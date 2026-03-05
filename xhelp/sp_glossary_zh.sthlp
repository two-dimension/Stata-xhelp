{smcl}
{* *! version 1.0.3  15may2018}{...}
{vieweralsosee "[SP] 术语表" "mansection SP Glossary"}{...}
{viewerjumpto "描述" "sp_glossary_zh##description"}{...}
{viewerjumpto "术语表" "sp_glossary_zh##glossary"}
{help sp_glossary:English Version}
{hline}{...}
{p2colset 1 18 20 2}{...}
{p2col:{bf:[SP] 术语表} {hline 2}}术语表{p_end}
{p2col:}({mansection SP Glossary:查看完整PDF手动条目}){p_end}
{p2colreset}{...}


{marker description}{...}
{title:描述}

{pstd}此处定义了常用术语。


{marker glossary}{...}
{title:术语表}

{phang}
{bf:相邻}.
        如果两个 
	{help sp_glossary##areas:区域} 共享一个 
        {help sp_glossary##border_and_vertex:边界}，则称它们相邻。有关更多信息，请参见 
	{help sp_glossary##contiguity_matrix:{it:邻接矩阵}}。

{phang}
{bf:AR(1)}.
        请参见 {help sp_glossary##autoregressive_errors:{it:自回归误差}}。

{marker areal_data}{...}
{phang}
{bf:区域数据}.
	区域数据是指区域数据的术语。 SAR模型适用于区域和 {help sp_glossary##lattice_data:格数据}。

{marker areas}{...}
{phang}
{bf:区域}.
	区域是对 
	{help sp_glossary##geographic_units:地理单元} 的非正式术语。

{phang}
{bf:属性}.
        属性是包括在标准格式的 
	{help sp_glossary##shapefiles:形状文件}中的变量的名称。

{marker autoregressive_errors}{...}
{phang}
{bf:自回归误差}.
        空间自回归误差考虑了残差的空间滞后相关性。rho是相关性参数。它不是相关系数，但与相关系数共享某些特性。它的值介于-1和1之间，0的含义相同，即没有相关性。

{marker autoregressive_models}{...}
{phang}
{bf:自回归模型}.
	  空间自回归模型包括空间滞后因变量或
	  {help sp_glossary##spatially_autoregressive_errors:空间自回归误差}。 请参见 {manlink SP Intro 1}。

{marker balanced_and_strongly_balanced}{...}
{phang}
{bf:平衡和强平衡}.
        面板数据是平衡的，当每个面板包含相同数量的观察值时。如果它们在相同的时间点记录数据（子类别），则为强平衡。

{marker border_and_vertex}{...}
{phang}
{bf:边界和顶点}.
        考虑以下地图：

                                  +-------+
                                  |       |
                       +----------+   C   |
                       |    B     |       |
                 +----------------+-------+
                 |          A     |
                 +----------------+

{pmore}
        A和B共享一个边界，因为它们之间有一条线段分隔。出于同样的原因，B和C共享一个边界。

{pmore}
        A和C共享一个顶点。它们只有一个共同点。

{pmore}
        如何处理只有顶点的相邻关系？这个问题在构建 
	{help sp_glossary##contiguity_matrix:邻接矩阵} 时出现。您可以决定是否共同的顶点足以将区域标记为相邻。只有顶点的相邻关系通常出现在地理单元形状是矩形的情况下。

{marker choropleth_map}{...}
{phang}
{bf:分层地图}.
        分层地图是利用阴影或着色来指示区域内变量值的地图。

{marker contiguity_matrix}{...}
{phang}
{bf:邻接矩阵和事后邻接矩阵}.
        邻接矩阵是一个在标准化之前包含0和1的对称矩阵，其中1表示区域相邻。

{pmore}
	{helpb spmatrix create:spmatrix create contiguity} 创建邻接矩阵以及其他根据上述定义不被视为邻接矩阵的矩阵。 它可以创建包含0和1的一阶邻接矩阵。那是一个邻接矩阵。它可以创建包含0和1的第一和第二阶邻接矩阵。严格来说，那不是一个邻接矩阵。并且它可以创建其他矩阵，其中第二阶邻居被记录为0.5或您选择的任何其他值。

{pmore}
        最后，即使矩阵最初是严格意义上的邻接矩阵，经过标准化后，它包含的两个值是0和c。

{pmore}
	因此，像 {helpb spmatrix summarize} 
        这样的命令使用了不同的邻接矩阵定义。

{pmore}
        事后邻接矩阵是任何矩阵，在其中所有值都为0或c，一个正常数。
	在这种情况下，计算邻居是有意义的。因此， 在键入下列命令时创建的矩阵 {cmd:W2} 为

{pmore2}
{cmd:. spmatrix create contiguity W2, second}

{pmore}
        是一个事后邻接矩阵，而通过键入

{pmore2}
{cmd:. spmatrix create contiguity W, first second(0.5)}

{pmore}
        创建的矩阵 {cmd:W} 则不是。

{marker coordinate_system}{...}
{phang}
{bf:坐标系统}.
        坐标系统是用于指定位置的数字编码。 纬度和经度是一种坐标系统。就Sp而言，唯一的其他坐标系统是平面。 平面坐标也被称为矩形或笛卡尔坐标。理论上，标准格式的 {help sp_glossary##shapefiles:形状文件}提供平面坐标。在实践中，它们有时使用纬度和经度，但用于编码所使用的系统的标准仍在开发中。有关更完整的描述，请参见 {manhelp spdistance SP}，并参见 {manlink SP Intro 4} 以了解如何确定坐标是平面坐标还是纬度与经度。

{phang}
{bf:协变量}.
       请参见 {help sp_glossary##explanatory_variable:{it:解释变量}}。

{marker cross_sectional_data}{...}
{phang}
{bf:横截面数据}.
          横截面数据包含每个 
          {help sp_glossary##spatial_units:空间单位} 的一个观察值。
	  另请参见 {help sp_glossary##panel_data:{it:面板数据}}。

{phang}
{bf:.dbf 文件}.
         请参见 {help sp_glossary##shapefiles:{it:形状文件}}。

{phang}
{bf:因变量}.
          请参见
	  {help sp_glossary##outcome_variable:{it:结果变量}}。

{marker distance_matrix}{...}
{phang}
{bf:距离矩阵}.
        距离矩阵是基于某种距离函数的空间加权矩阵。 通常，该函数是1/距离，然后该矩阵被称为
	{help sp_glossary##inverse_distance_spatial_weighting_matrix:反距离空间加权矩阵}。
     
{marker explanatory_variable}{...}
{phang}
{bf:解释变量}.
        解释变量是在用于“解释” 
        {help sp_glossary##outcome_variable:结果变量} 值的方程的右侧出现的变量。

{phang}
{bf:FIPS 代码}.
        FIPS代表联邦信息处理标准。 FIPS代码用于标识美国的区域。最详细的级别是五位数的FIPS县代码，从阿拉巴马州的Autauga县的01001到美属维尔京群岛的圣托马斯岛的78030。FIPS县代码包括县、美国属地和自由联结区。

{pmore}
        五位数代码的前两位是FIPS州代码。两位数代码涵盖州、美国属地和自由联结区。

{pmore}
        五位数代码在某些数据集中呈现为两位数的州代码加三位数的县代码。完整的五位数代码由两位数和三位数代码组合而成。

{marker geographic_units}{...}
{phang}
{bf:地理单元}.
        地理单元是指如邮政编码区、普查块、城市、县、国家等地点或区域的通用术语。 这些单元不必基于地理。 例如，它们可以是网络节点。 在本手册中，我们也使用地名和区域这两个词来表示地理单元。另请参见 
	{help sp_glossary##spatial_units:{it:空间单位}}。

{phang}
{bf:GIS 数据}.
	GIS是地理信息系统的缩写。 {help sp_glossary##shapefiles:形状文件}中的某些信息来自这种系统。

{phang}
{bf:ID, _ID 变量}.
        ID变量是唯一标识观察值的变量。 Sp的 {cmd:_ID} 变量是一个示例，它唯一标识 
	{help sp_glossary##geographic_units:地理单元}。
         Sp的 {cmd:_ID} 变量是一个数字变量，它唯一标识横截面数据中的观察值，并唯一标识面板数据中的面板。

{phang}
{bf:反距离空间加权矩阵}.
        反距离空间加权矩阵是一个矩阵，其中元素 {bf:W_{i,j}} 在标准化之前包含位置 j 和 i 之间距离的倒数。 该术语还用于反距离矩阵，其中距离超过指定距离的地点被设置为0。

{phang}
{bf:滞后}.
        参见 {help sp_glossary##spatial_lags:{it:空间滞后}}。

{phang}
{bf:纬度和经度}.
        请参见 {help sp_glossary##coordinate_system:{it:坐标系统}}。

{marker lattice_data}{...}
{phang}
{bf:格数据}.
         格数据是一种区域数据。在格数据中，所有地点都是在网格上出现的顶点。 
         SAR模型适用于格数据和 {help sp_glossary##areal_data:区域数据}。

{phang}
{bf:邻居，一阶和二阶}.
        一阶邻居共享
        {help sp_glossary##border_and_vertex:边界}。 二阶邻居是邻居的邻居。

{phang}
{bf:标准化空间加权矩阵}.
        标准化空间加权矩阵是一个 
	{help sp_glossary##spatial_weighting_matrix:空间加权矩阵}
	乘以一个常数，以提高数值精度，并使非爆炸性自回归参数的值介于-1和1之间。
	有关标准化的详细信息，请参见 {mansection SP spregressRemarksandexamplesChoosingweightingmatricesandtheirnormalization:{it:选择加权矩阵及其标准化}} 中的 {bf:[SP] spregress}。

{marker outcome_variable}{...}
{phang}
{bf:结果变量（因变量）}.
        模型的结果变量是方程左侧的变量。它是被“解释”或预测的变量。

{marker panel_data}{...}
{phang}
{bf:面板数据}.
          面板数据包含关于 
	  {help sp_glossary##geographic_units:地理单元} 
          在不同时间的数据。每个观察值包含特定时间对某一地理单元的数据，因此数据对每个地理单元包含多个观察值。另请参见 
          {help sp_glossary##cross_sectional_data:{it:横截面数据}}。

{phang}
{bf:地点}.
	地点是对 
	{help sp_glossary##geographic_units:地理单元} 的非正式术语。

{marker planar_coordinates}{...}
{phang}
{bf:平面坐标}.
        请参见 {help sp_glossary##coordinate_system:{it:坐标系统}}。

{phang}
{bf:临近矩阵}.
        临近矩阵是指 
        {help sp_glossary##distance_matrix:距离矩阵} 的另一种说法。

{phang}
{bf:SAR}.
        SAR代表空间自回归或同时自回归，它们的含义相同，但在不同领域的研究人员使用。 
        请参见 {help sp_glossary##autoregressive_models:{it:自回归模型}} 
        和 {help sp_glossary##autoregressive_errors:{it:自回归误差}}。

{marker shapefiles}{...}
{phang}
{bf:形状文件}.
        形状文件是定义地图及更多内容的文件，您可以在网上找到。 形状文件可能是 {it:name}{cmd:.zip}。
	{it:name}{cmd:.zip} 包含 {it:name}{cmd:.shp}、 
	{it:name}{cmd:.dbf} 和其他后缀的文件。

{pmore}
        在本手册中，形状文件也指前面所描述的以Stata格式翻译的形状文件。它们是名为 {it:name}{cmd:_shp.dta} 的Stata数据集。

{pmore}
        为了区分这两种含义，我们称之为标准格式和Stata格式的形状文件。

{phang}
{bf:Sp}.
        Sp 代表空间，指代本手册中描述的SAR系统。

{phang}
{bf:Sp 数据}.
        Sp 数据是指已被 {cmd:spset} 的数据，无论是直接还是间接。 您可以输入 {cmd:spset} 不带参数以确定您的数据是否被 {cmd:spset}。

{marker spatial_lags}{...}
{phang}
{bf:空间滞后}.
        空间滞后是时间序列滞后的空间类比。在时间序列中，x_t的滞后是x_{t-1}。 在空间分析中，x_i 的滞后——位于 i 的x——是附近地点x的加权和，由 {bf:W}{bf:x}给出。
        见 {manlink SP Intro 1}。

{marker spatial_units}{...}
{phang}
{bf:空间单位}.
       空间单位是我们用来测量距离的单位，当坐标是 
       {help sp_glossary##planar_coordinates:平面坐标} 时。 
       例如，纽约和波士顿记录为平面单位为 ({cmd:_CX}, {cmd:_CY}) = (1.3, 7.836) 
       和 (1.447, 7.118)。 在这种情况下，它们之间的距离是0.0284空间单位。 因为它们大约相距190英里，显然空间单位是6680英里。另请参见
       {manhelp spdistance SP}。

{marker spatial_weighting_matrix}{...}
{phang}
{bf:空间加权矩阵}.
       空间加权矩阵是平方矩阵 {bf:W}。
       {bf:W}{bf:x} 在空间分析中发挥的作用与时间序列分析中的 L.{bf:x} 相同。
       可以认为 {bf:W} 的元素记录了位置 j 到 i 的潜在溢出。

{pmore}
       空间加权矩阵在对角线上为零，其他地方为非零或零值。 
       {help sp_glossary##contiguity_matrix:邻接空间加权矩阵}将包含0和1， 
       W_{i,j} = W_{j,i} 等于1当 i 和 j 是邻居时。

{pmore}
       空间加权矩阵元素记录的比例是无关紧要的。 见 {manlink SP Intro 2}。

{marker spatially_autoregressive_errors}{...}
{phang}
{bf:空间自回归误差}.
        请参见 {help sp_glossary##autoregressive_errors:{it:自回归误差}}。

{phang}
{bf:溢出效应}.
	溢出效应和潜在溢出效应是我们用来描述 
        {help sp_glossary##spatial_weighting_matrix:空间加权矩阵} 元素的非正式术语。 
	W_{i,j} 记录来自地点 j 到 i 的（潜在）溢出。 见 {manlink SP Intro 2}。

{phang}
{bf:标准格式形状文件}.
       请参见 {help sp_glossary##shapefiles:{it:形状文件}}。

{phang}
{bf:Stata格式形状文件}.
      请参见 {help sp_glossary##shapefiles:{it:形状文件}}。

{phang}
{bf:强平衡}.
      请参见 {help sp_glossary##balanced_and_strongly_balanced:{it:平衡和强平衡}}。
 
{phang}
{bf:时间变量}. 时间变量是面板数据中识别面板第二级别的变量。此变量不要求度量时间，但通常会这样做。

{phang}
{bf:用户定义矩阵}.
       用户定义矩阵是一个 
       {help sp_glossary##spatial_weighting_matrix:空间加权矩阵}
       ，通过输入

            {cmd:spmatrix} {cmd:userdefined} 

            {cmd:spmatrix} {cmd:fromdata} 

            {cmd:spmatrix} {cmd:spfrommata} 

{phang}
{bf:顶点}.
       请参见 {help sp_glossary##border_and_vertex:{it:边界和顶点}}。
{p_end}

{.-}
{center:v1.0 2026-03-01, BoliangSong (厦门大学管理学院), HongqiangXu (厦门大学管理学院), YongyiZeng (厦门大学管理学院, zzyy@xmu.edu.cn)}
{center:翻译自Stata官方帮助文档 <sp_glossary.sthlp>}