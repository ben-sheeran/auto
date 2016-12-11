//Maya ASCII 2016 scene
//Name: grass1.ma
//Last modified: Fri, Dec 09, 2016 04:38:59 PM
//Codeset: 1252
requires maya "2016";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya batch mode";
fileInfo "version" "2016";
fileInfo "cutIdentifier" "201502261600-953408";
fileInfo "osv" "Microsoft Windows 8 Home Premium Edition, 64-bit  (Build 9200)\n";
createNode transform -n "grassWindNarrow2ShaderSG_materialRef";
	rename -uid "B9C0F62E-4F63-72C3-3EE1-838FF434C9A6";
createNode mesh -n "grassWindNarrow2ShaderSG_materialRefShape" -p "grassWindNarrow2ShaderSG_materialRef";
	rename -uid "293C1E3B-4ADF-3744-80C9-C0BE7B59E3E0";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ndt" 0;
createNode shadingEngine -n "grassWindNarrow2ShaderSG";
	rename -uid "496BF4D2-4317-61DD-3677-CBA41120FD3E";
	setAttr ".ihi" 0;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "F6242C70-41ED-51EB-D9BE-07893AE2FD3B";
createNode phong -n "grassWindNarrow2Shader";
	rename -uid "1BB367C5-4EB6-1D96-CEEB-06B1CDA8686D";
	setAttr ".dc" 0.44999998807907104;
	setAttr ".tc" 0.55000001192092896;
	setAttr ".tcf" 0;
	setAttr ".trsd" 1;
	setAttr ".fakc" 0;
	setAttr ".cp" 15.94890022277832;
createNode ramp -n "ramp1";
	rename -uid "C9615A18-4047-E4D4-1773-1FB91BEAC6F4";
	setAttr -s 2 ".cel";
	setAttr ".cel[0].ep" 0;
	setAttr ".cel[0].ec" -type "float3" 0.14782779 0.15274668 0.045217603 ;
	setAttr ".cel[1].ep" 1;
	setAttr ".cel[1].ec" -type "float3" 0.24998897 0.62352943 0.22909708 ;
createNode ramp -n "ramp2";
	rename -uid "5CB6BC96-4AD0-FC28-DDF7-21BC5BC81577";
	setAttr ".t" 1;
	setAttr ".in" 4;
	setAttr -s 2 ".cel";
	setAttr ".cel[0].ep" 0;
	setAttr ".cel[0].ec" -type "float3" 1 1 1 ;
	setAttr ".cel[1].ep" 0.3009600043296814;
	setAttr ".cel[1].ec" -type "float3" 0 0 0 ;
createNode place2dTexture -n "place2dTexture1";
	rename -uid "30021923-4A4D-FB39-05E9-9B844C98F110";
	setAttr ".mu" yes;
	setAttr ".re" -type "float2" 2 1 ;
createNode multiplyDivide -n "multiplyDivide1";
	rename -uid "A589A0C1-4EF4-F5D0-66CF-C8B6ECE9C880";
	setAttr ".i1" -type "float3" 0.075689785 0.1822927 0.10403699 ;
createNode reverse -n "reverse1";
	rename -uid "7FC7D920-462C-060B-60A0-DC9DF59034C2";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "B1D26CB7-49A5-4534-89DF-7697814CCF8D";
	setAttr -s 3 ".lnk";
	setAttr -s 3 ".slnk";
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 3 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 5 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 3 ".u";
select -ne :defaultRenderingList1;
select -ne :defaultTextureList1;
	setAttr -s 2 ".tx";
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
connectAttr "grassWindNarrow2Shader.oc" "grassWindNarrow2ShaderSG.ss";
connectAttr "grassWindNarrow2MainShape.iog" "grassWindNarrow2ShaderSG.dsm" -na;
connectAttr "grassWindNarrow2ShaderSG_materialRefShape.iog" "grassWindNarrow2ShaderSG.dsm"
		 -na;
connectAttr "grassWindNarrow2ShaderSG.msg" "materialInfo1.sg";
connectAttr "grassWindNarrow2Shader.msg" "materialInfo1.m";
connectAttr "grassWindNarrow2Shader.msg" "materialInfo1.t" -na;
connectAttr "ramp1.oc" "grassWindNarrow2Shader.c";
connectAttr "ramp2.oc" "grassWindNarrow2Shader.it";
connectAttr "multiplyDivide1.o" "grassWindNarrow2Shader.sc";
connectAttr "place2dTexture1.o" "ramp2.uv";
connectAttr "place2dTexture1.ofs" "ramp2.fs";
connectAttr "reverse1.o" "multiplyDivide1.i2";
connectAttr "ramp2.oc" "reverse1.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "grassWindNarrow2ShaderSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "grassWindNarrow2ShaderSG.message" ":defaultLightSet.message";
connectAttr "grassWindNarrow2ShaderSG.pa" ":renderPartition.st" -na;
connectAttr "grassWindNarrow2Shader.msg" ":defaultShaderList1.s" -na;
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "multiplyDivide1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "reverse1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ramp1.msg" ":defaultTextureList1.tx" -na;
connectAttr "ramp2.msg" ":defaultTextureList1.tx" -na;
// End of grass1.ma
