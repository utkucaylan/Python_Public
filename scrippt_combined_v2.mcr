#!MC 1410
$!ReadDataSet  '"STANDARDSYNTAX" "1.0" "FILELIST_CGNSFILES" "1" "/hpc/local/pwc/pw193639/UTCFD_newversion/PW307/ADP_part1/FanCFD_Folder1/solution.cgns" "LoadBCs" "Yes" "AssignStrandIDs" "Yes" "UniformGridStructure" "Yes" "LoaderVersion" "V3" "CgnsLibraryVersion" "4.1.2"'
  DataSetReader = 'CGNS Loader'
  ReadDataOption = New
  ResetStyle = No
  AssignStrandIDs = Yes
  InitialPlotType = Cartesian3D
  InitialPlotFirstZoneOnly = No
  AddZonesToExistingStrands = No
  VarLoadMode = ByName
$!PICK ADDATPOSITION
  X = 7.32294617564
  Y = 6.77407932011
  CONSIDERSTYLE = YES
$!ALTERDATA 
  EQUATION = '{Density}={Density}*0.1501409E-04'
$!ALTERDATA 
  EQUATION = '{MomentumX}={MomentumX}*0.1501409E-04*477.9196'
$!ALTERDATA 
  EQUATION = '{MomentumY}={MomentumY}*0.1501409E-04*477.9196'
$!ALTERDATA 
  EQUATION = '{MomentumZ}={MomentumZ}*0.1501409E-04*477.9196'
$!ALTERDATA 
  EQUATION = '{VelocityX}={MomentumX}/{Density}'
$!ALTERDATA 
  EQUATION = '{VelocityY}={MomentumY}/{Density}'
$!ALTERDATA 
  EQUATION = '{VelocityZ}={MomentumZ}/{Density}'
$!ALTERDATA 
  EQUATION = '{Temperature}={Temperature}*491.7'
$!ALTERDATA 
  EQUATION = '{a}=sqrt(1.401400*1718.281*{Temperature})'
$!ALTERDATA 
  EQUATION = '{VelocityMagnitude}=sqrt({VelocityX}**2+{VelocityY}**2+{VelocityZ}**2)'
$!ALTERDATA 
  EQUATION = '{MachNumber}={VelocityMagnitude}/{a}'
$!ACTIVEFIELDMAPS -= [1]
$!ACTIVEFIELDMAPS -= [2]
$!ACTIVEFIELDMAPS -= [3]
$!ACTIVEFIELDMAPS -= [4]
$!ACTIVEFIELDMAPS -= [5]
$!ACTIVEFIELDMAPS -= [6]
$!ACTIVEFIELDMAPS -= [7]
$!ACTIVEFIELDMAPS -= [8]
$!ACTIVEFIELDMAPS -= [9]
$!ACTIVEFIELDMAPS -= [10]
$!ACTIVEFIELDMAPS -= [11]
$!ACTIVEFIELDMAPS -= [12]
$!ACTIVEFIELDMAPS -= [13]
$!ACTIVEFIELDMAPS -= [14]
$!ACTIVEFIELDMAPS -= [15]
$!ACTIVEFIELDMAPS -= [16]
$!ACTIVEFIELDMAPS -= [17]
$!ACTIVEFIELDMAPS -= [18]
$!ACTIVEFIELDMAPS -= [19]
$!ACTIVEFIELDMAPS -= [20]
$!ACTIVEFIELDMAPS -= [21]
$!ACTIVEFIELDMAPS -= [22]
$!ACTIVEFIELDMAPS -= [23]
$!ACTIVEFIELDMAPS -= [24]
$!ACTIVEFIELDMAPS -= [25]
$!ACTIVEFIELDMAPS -= [26]
$!ACTIVEFIELDMAPS -= [27]
$!ACTIVEFIELDMAPS -= [28]
$!ACTIVEFIELDMAPS -= [29]
$!ACTIVEFIELDMAPS += [27]
$!GLOBALRGB REDCHANNELVAR = 4
$!GLOBALRGB GREENCHANNELVAR = 4
$!GLOBALRGB BLUECHANNELVAR = 4
$!SETCONTOURVAR 
  VAR = 4
  CONTOURGROUP = 1
  LEVELINITMODE = RESETTONICE
$!SETCONTOURVAR 
  VAR = 5
  CONTOURGROUP = 2
  LEVELINITMODE = RESETTONICE
$!SETCONTOURVAR 
  VAR = 6
  CONTOURGROUP = 3
  LEVELINITMODE = RESETTONICE
$!SETCONTOURVAR 
  VAR = 7
  CONTOURGROUP = 4
  LEVELINITMODE = RESETTONICE
$!SETCONTOURVAR 
  VAR = 8
  CONTOURGROUP = 5
  LEVELINITMODE = RESETTONICE
$!SETCONTOURVAR 
  VAR = 9
  CONTOURGROUP = 6
  LEVELINITMODE = RESETTONICE
$!SETCONTOURVAR 
  VAR = 10
  CONTOURGROUP = 7
  LEVELINITMODE = RESETTONICE
$!SETCONTOURVAR 
  VAR = 11
  CONTOURGROUP = 8
  LEVELINITMODE = RESETTONICE
$!FIELDLAYERS SHOWCONTOUR = YES
$!PLOTTYPE = CARTESIAN2D
$!TWODAXIS XDETAIL{VARNUM = 2}
$!TWODAXIS YDETAIL{VARNUM = 3}
$!GLOBALRGB REDCHANNELVAR = 1
$!GLOBALRGB GREENCHANNELVAR = 1
$!GLOBALRGB BLUECHANNELVAR = 1
$!SETCONTOURVAR 
  VAR = 1
  CONTOURGROUP = 1
  LEVELINITMODE = RESETTONICE
$!SETCONTOURVAR 
  VAR = 4
  CONTOURGROUP = 2
  LEVELINITMODE = RESETTONICE
$!SETCONTOURVAR 
  VAR = 5
  CONTOURGROUP = 3
  LEVELINITMODE = RESETTONICE
$!SETCONTOURVAR 
  VAR = 6
  CONTOURGROUP = 4
  LEVELINITMODE = RESETTONICE
$!SETCONTOURVAR 
  VAR = 7
  CONTOURGROUP = 5
  LEVELINITMODE = RESETTONICE
$!SETCONTOURVAR 
  VAR = 8
  CONTOURGROUP = 6
  LEVELINITMODE = RESETTONICE
$!SETCONTOURVAR 
  VAR = 9
  CONTOURGROUP = 7
  LEVELINITMODE = RESETTONICE
$!SETCONTOURVAR 
  VAR = 10
  CONTOURGROUP = 8
  LEVELINITMODE = RESETTONICE
$!FIELDLAYERS SHOWCONTOUR = YES
$!SETCONTOURVAR 
  VAR = 21
  CONTOURGROUP = 1
  LEVELINITMODE = RESETTONICE
$!GLOBALCONTOUR 1  COLORMAPFILTER{COLORMAPDISTRIBUTION = CONTINUOUS}
$!ACTIVEFIELDMAPS -= [1]
$!ACTIVEFIELDMAPS -= [2]
$!ACTIVEFIELDMAPS -= [3]
$!ACTIVEFIELDMAPS -= [4]
$!ACTIVEFIELDMAPS -= [5]
$!ACTIVEFIELDMAPS -= [6]
$!ACTIVEFIELDMAPS -= [7]
$!ACTIVEFIELDMAPS -= [8]
$!ACTIVEFIELDMAPS -= [9]
$!ACTIVEFIELDMAPS -= [10]
$!ACTIVEFIELDMAPS -= [11]
$!ACTIVEFIELDMAPS -= [12]
$!ACTIVEFIELDMAPS += [12]
$!ACTIVEFIELDMAPS -= [13]
$!ACTIVEFIELDMAPS -= [12]
$!ACTIVEFIELDMAPS -= [14]
$!ACTIVEFIELDMAPS -= [15]
$!ACTIVEFIELDMAPS -= [16]
$!ACTIVEFIELDMAPS -= [17]
$!ACTIVEFIELDMAPS -= [18]
$!ACTIVEFIELDMAPS -= [19]
$!ACTIVEFIELDMAPS -= [20]
$!ACTIVEFIELDMAPS -= [21]
$!ACTIVEFIELDMAPS -= [22]
$!ACTIVEFIELDMAPS -= [23]
$!ACTIVEFIELDMAPS -= [24]
$!ACTIVEFIELDMAPS -= [25]
$!ACTIVEFIELDMAPS -= [26]
$!ACTIVEFIELDMAPS -= [27]
$!ACTIVEFIELDMAPS -= [28]
$!ACTIVEFIELDMAPS -= [29]
$!ACTIVEFIELDMAPS += [27]
$!SETCONTOURVAR 
  VAR = 19
  CONTOURGROUP = 1
  LEVELINITMODE = RESETTONICE
$!SETCONTOURVAR 
  VAR = 21
  CONTOURGROUP = 1
  LEVELINITMODE = RESETTONICE 
$!GLOBALCONTOUR 1  COLORMAPFILTER{COLORMAPDISTRIBUTION = CONTINUOUS}
$!TWODAXIS 
  XDETAIL
    {
    RANGEMIN = -1.2779363508360468
    RANGEMAX = 16.122199931731341
    }
  YDETAIL
    {
    RANGEMIN = 4.5192147399986355
    RANGEMAX = 20.398450221571245
    }
$!TWODAXIS 
  XDETAIL
    {
    RANGEMIN = 2.4925586702660523
    RANGEMAX = 12.351704910629277
    }
  YDETAIL
    {
    RANGEMIN = 7.9601405666636653
    RANGEMAX = 16.957524394906251
    }
$!TWODAXIS 
  XDETAIL
    {
    RANGEMIN = 1.176764522984338
    RANGEMAX = 11.03591076334755
    }
  YDETAIL
    {
    RANGEMIN = 7.624985453676814
    RANGEMAX = 16.62236928191939
    }
$!TWODAXIS 
  XDETAIL
    {
    RANGEMIN = 2.0118922045209899
    RANGEMAX = 10.200783081810906
    }
  YDETAIL
    {
    RANGEMIN = 8.3871167897161847
    RANGEMAX = 15.860237945880019
    }
$!TWODAXIS 
  XDETAIL
    {
    RANGEMIN = 1.4477099563273743
    RANGEMAX = 10.764965330004541
    }
  YDETAIL
    {
    RANGEMIN = 7.8722482491424524
    RANGEMAX = 16.375106486453763
    }
$!TWODAXIS 
  XDETAIL
    {
    RANGEMIN = 1.9755997791986035
    RANGEMAX = 11.292855152875779
    }
  YDETAIL
    {
    RANGEMIN = 8.0482115234328671
    RANGEMAX = 16.551069760744184
    }
$!PICK SETMOUSEMODE
  MOUSEMODE = SELECT
$!PICK ADDATPOSITION
  X = 8.67422096317
  Y = 1.84490084986
  CONSIDERSTYLE = YES
$!PICK SHIFT
  X = -2.73654390935
  Y = -1.24079320113
$!PICK ADDATPOSITION
  X = 5.93767705382
  Y = 0.604107648725
  CONSIDERSTYLE = YES
$!GLOBALCONTOUR 1  LEGEND{ISVERTICAL = NO}
$!GLOBALCONTOUR 1  LEGEND{BOX{BOXTYPE = NONE}}
$!GLOBALCONTOUR 1  LABELS{NUMFORMAT{FORMATTING = FIXEDFLOAT}}
$!GLOBALCONTOUR 1  LABELS{NUMFORMAT{TIMEDATEFORMAT = }}
$!GLOBALCONTOUR 1  LABELS{NUMFORMAT{PRECISION = 1}}
$!GLOBALCONTOUR 1  LABELS{NUMFORMAT{POSITIVEPREFIX = }}
$!GLOBALCONTOUR 1  LABELS{NUMFORMAT{POSITIVESUFFIX = }}
$!GLOBALCONTOUR 1  LABELS{NUMFORMAT{ZEROPREFIX = }}
$!GLOBALCONTOUR 1  LABELS{NUMFORMAT{ZEROSUFFIX = }}
$!GLOBALCONTOUR 1  LABELS{NUMFORMAT{NEGATIVEPREFIX = }}
$!GLOBALCONTOUR 1  LABELS{NUMFORMAT{NEGATIVESUFFIX = }}
$!CONTOURLEVELS NEW
  CONTOURGROUP = 1
  RAWDATA
11
0
0.1
0.2
0.3
0.4
0.5
0.6
0.7
0.8
0.9
1
$!PICK ADDATPOSITION
  X = 7.76487252125
  Y = 7.31798866856
  CONSIDERSTYLE = YES
$!PICK ADDATPOSITION
  X = 7.74787535411
  Y = 7.36898016997
  CONSIDERSTYLE = YES
$!TWODAXIS GRIDAREA{DRAWBORDER = YES}
$!PICK ADDATPOSITION
  X = 9.97450424929
  Y = 0.272662889518
  CONSIDERSTYLE = YES
$!FRAMECONTROL ACTIVATEBYNUMBER
  FRAME = 1
$!PICK SHIFT
  X = -2.03116147309
  Y = 1.76770538244
  PICKSUBPOSITION = TOPRIGHT
$!PICK ADDATPOSITION
  X = 5.03682719547
  Y = 2.33781869688
  CONSIDERSTYLE = YES
$!PICK SHIFT
  X = 0.71388101983
  Y = -0.195467422096
$!PICK SHIFT
  X = 0.373937677054
  Y = 0.110481586402
$!PICK SHIFT
  X = -0.356940509915
  Y = -0.0594900849858
$!PICK SHIFT
  X = 0.0764872521246
  Y = 0.0084985835694
$!PICK SHIFT
  X = 0.509915014164
  Y = 0.0339943342776
$!PICK SHIFT
  X = -0.0764872521246
  Y = -0.042492917847
$!PICK SHIFT
  X = 0
  Y = -0.0254957507082
$!PICK ADDATPOSITION
  X = 7.98583569405
  Y = 3.23866855524
  CONSIDERSTYLE = YES
$!FRAMECONTROL ACTIVATEBYNUMBER
  FRAME = 1
$!FRAMELAYOUT SHOWBORDER = NO
$!FRAMECONTROL ACTIVATEATPOSITION
  X = 7.04249291785
  Y = 2.34631728045
$!PICK SETMOUSEMODE
  MOUSEMODE = SELECT
$!ATTACHTEXT 
  ANCHORPOS
    {
    X = 79.63414634146339
    Y = 83.81818181818177
    }
  TEXTSHAPE
    {
    ISBOLD = NO
    }
  BOX
    {
    BOXTYPE = HOLLOW
    }
  TEXT = 'SP1'
$!PICK ADDATPOSITION
  X = 4.63739376771
  Y = 7.92138810198
  CONSIDERSTYLE = YES
$!TWODAXIS XDETAIL{TITLE{TITLEMODE = USETEXT}}
$!TWODAXIS XDETAIL{TITLE{TEXT = 'Y [in]'}}
$!PICK ADDATPOSITION
  X = 1.38243626062
  Y = 5.22733711048
  CONSIDERSTYLE = YES
$!TWODAXIS YDETAIL{TITLE{TITLEMODE = USETEXT}}
$!TWODAXIS YDETAIL{TITLE{TEXT = 'Z [in]'}}  
$!EXPORTSETUP IMAGEWIDTH = 1059
$!EXPORTSETUP EXPORTFNAME = '/hpc/local/pwc/pw193639/UTCFD_newversion/PW307/ADP_part1/SP1.png'
$!EXPORT 
  EXPORTREGION = CURRENTFRAME