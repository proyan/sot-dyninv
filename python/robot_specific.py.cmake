# --- ROBOT CONFIG -------------------------------------------------------------
# --- ROBOT CONFIG -------------------------------------------------------------
# --- ROBOT CONFIG -------------------------------------------------------------

pkgDataRootDir=dict()
modelName=dict()
robotDimension=dict()
initialConfig=dict()
halfSittingConfig=dict()
gearRatio=dict()
inertiaRotor=dict()
specificitiesName=dict()
jointRankName=dict()
postureRange=dict()

pkgDataRootDir['hrp10small'] = "@CMAKE_INSTALL_PREFIX@/share/hrp2-10-small"
pkgDataRootDir['hrp14small'] = "@CMAKE_INSTALL_PREFIX@/share/hrp2-14"
pkgDataRootDir['hrp14aug'] = "@CMAKE_INSTALL_PREFIX@/hrp2-14-augmented"
pkgDataRootDir['hrp10aug'] = "@CMAKE_INSTALL_PREFIX@/share/hrp2-10-augmented"

modelName['hrp10small'] = 'HRP2JRLmainsmall.wrl'
modelName['hrp14small'] = 'HRP2JRLmainsmall.wrl'
modelName['hrp14aug'] = 'HRP2JRLmainsmall.wrl'
modelName['hrp10aug'] = 'HRP2JRLmainSmall.wrl'

robotDimension['hrp14small']=36
robotDimension['hrp14aug']=38
robotDimension['hrp10small']=38
robotDimension['hrp10aug']=40

for r in [ 'hrp14small','hrp14aug','hrp10small','hrp10aug']:
    specificitiesName[r]='HRP2SpecificitiesSmall.xml'
    jointRankName[r]='HRP2LinkJointRankSmall.xml'
    postureRange[r] = { \
        "rleg": range(6,12), \
        "lleg": range(12,18), \
        "chest": range(18,20), \
        "head": range(20,22), \
        "rarm": range(22,28), \
        "rhand": [28], \
        "larm": range(29,35), \
        "lhand": [35], \
            }

initialConfig['hrp14aug'] = (
 0.0274106623863, 0.143843868989, 0.646921914726, 0.00221064938462, 0.101393756965, 1.36729741242e-05,  # FF
-0.00911630330837, -0.0914099637938, -0.471978743283, 0.840380192617, -0.470232799053, 0.0896624078591, # RLEG
 0.00950781802257, 0.0911102868041, -0.469450351848, 0.835307995386, -0.467686190904, -0.0938029466367, # LLEG
 0.01, 0, 0.01,                                                                                         # CHEST
 0, 0, 0.01,                                                                                            # NECK
 0.26, -0.17, 0.01, -0.51, -0.01, -0.01, 0.3,                                                           # RARM
 0.27, 0.18, 0.01, -0.53, -0.01, -0.01, 0.3,    )                                                       # LARM
initialConfig['hrp10aug'] = (
 0.0274106623863, 0.143843868989, 0.646921914726, 0.00221064938462, 0.101393756965, 1.36729741242e-05,  # FF
-0.00911630330837, -0.0914099637938, -0.471978743283, 0.840380192617, -0.470232799053, 0.0896624078591, # RLEG
 0.00950781802257, 0.0911102868041, -0.469450351848, 0.835307995386, -0.467686190904, -0.0938029466367, # LLEG
 0.01, 0, 0.01,                                                                                         # CHEST
 0, 0, 0.01,                                                                                            # NECK
 0.26, -0.17, 0.01, -0.51, -0.01, -0.01, 0, 0.3,                                                           # RARM
 0.27, 0.18, 0.01, -0.53, -0.01, -0.01, 0, 0.3,    )                                                       # LARM
initialConfig['hrp14small'] = ( 0.0274106623863, 0.143843868989, 0.646921914726, 0.00221064938462, 0.101393756965, 1.36729741242e-05, -0.00911630330837, -0.0914099637938, -0.471978743283, 0.840380192617, -0.470232799053, 0.0896624078591, 0.00950781802257, 0.0911102868041, -0.469450351848, 0.835307995386, -0.467686190904, -0.0938029466367, -8.75646582964e-05, 0.00326431877374, -7.83380820086e-06, 0.000194742578013, 0.258370257314, -0.175099102142, -6.1173425555e-05, -0.524953548768, 3.1825099713e-06, -0.000257600047423, -3.41210481921e-06, 0.258367271628, 0.174322097546, -8.89023954997e-05, -0.524983690846, -3.46102941488e-07, -0.000265401439772, 1.00498481453e-06 )
initialConfig['hrp10small'] = ( 0.0274106623863, 0.143843868989, 0.646921914726, 0.00221064938462, 0.101393756965, 1.36729741242e-05, -0.00911630330837, -0.0914099637938, -0.471978743283, 0.840380192617, -0.470232799053, 0.0896624078591, 0.00950781802257, 0.0911102868041, -0.469450351848, 0.835307995386, -0.467686190904, -0.0938029466367, -8.75646582964e-05, 0.00326431877374, -7.83380820086e-06, 0.000194742578013, 0.258370257314, -0.175099102142, -6.1173425555e-05, -0.524953548768, 3.1825099713e-06, -0.000257600047423, -3.41210481921e-06, 0, 0.258367271628, 0.174322097546, -8.89023954997e-05, -0.524983690846, -3.46102941488e-07, -0.000265401439772, 0, 1.00498481453e-06 )

halfSittingConfig['hrp14small'] = (0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, -0.4537856055185257, 0.87266462599716477, -0.41887902047863906, 0.0, 0.0, 0.0, -0.4537856055185257, 0.87266462599716477, -0.41887902047863906, 0.0, 0.0, 0.0, 0.0, 0.0, 0.26179938779914941, -0.17453292519943295, 0.0, -0.52359877559829882, 0.0, 0.0, 0.17453292519943295, 0.26179938779914941, 0.17453292519943295, 0.0, -0.52359877559829882, 0.0, 0.0, 0.17453292519943295)
halfSittingConfig['hrp10small'] = (0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, -0.4537856055185257, 0.87266462599716477, -0.41887902047863906, 0.0, 0.0, 0.0, -0.4537856055185257, 0.87266462599716477, -0.41887902047863906, 0.0, 0.0, 0.0, 0.0, 0.0, 0.26179938779914941, -0.17453292519943295, 0.0, -0.52359877559829882, 0.0, 0.0, 0.0, 0.17453292519943295, 0.26179938779914941, 0.17453292519943295, 0.0, -0.52359877559829882, 0.0, 0.0, 0.0, 0.17453292519943295)


inertiaRotor['hrp14small'] = (0,0,0,0,0,0,1.01e-4,6.96e-4,1.34e-4,1.34e-4,6.96e-4,6.96e-4,1.01e-4,6.96e-4,1.34e-4,1.34e-4,6.96e-4,6.96e-4,6.96e-4,6.96e-4,1.10e-4,1.10e-4,6.96e-4,6.60e-4,1.00e-4,6.60e-4,1.10e-4,1.00e-4,1.00e-4,6.96e-4,6.60e-4,1.00e-4,6.60e-4,1.10e-4,1.00e-4,1.00e-4)
inertiaRotor['hrp10small'] = (0,0,0,0,0,0,1.01e-4,6.96e-4,1.34e-4,1.34e-4,6.96e-4,6.96e-4,1.01e-4,6.96e-4,1.34e-4,1.34e-4,6.96e-4,6.96e-4,6.96e-4,6.96e-4,1.10e-4,1.10e-4,6.96e-4,6.60e-4,1.00e-4,6.60e-4,1.10e-4,1.00e-4,1.00e-4,1.00e-4,6.96e-4,6.60e-4,1.00e-4,6.60e-4,1.10e-4,1.00e-4,1.00e-4,1.00e-4)
inertiaRotor['hrp14aug'] = (0,0,0,0,0,0,1.01e-4,6.96e-4,1.34e-4,1.34e-4,6.96e-4,6.96e-4,1.01e-4,6.96e-4,1.34e-4,1.34e-4,6.96e-4,6.96e-4,6.96e-4,6.96e-4,6.96e-4,1.10e-4,1.10e-4,1.10e-4,6.96e-4,6.60e-4,1.00e-4,6.60e-4,1.10e-4,1.00e-4,1.00e-4,6.96e-4,6.60e-4,1.00e-4,6.60e-4,1.10e-4,1.00e-4,1.00e-4)
inertiaRotor['hrp10aug'] = (0,0,0,0,0,0,1.01e-4,6.96e-4,1.34e-4,1.34e-4,6.96e-4,6.96e-4,1.01e-4,6.96e-4,1.34e-4,1.34e-4,6.96e-4,6.96e-4,6.96e-4,6.96e-4,6.96e-4,1.10e-4,1.10e-4,1.10e-4,6.96e-4,6.60e-4,1.00e-4,6.60e-4,1.10e-4,1.00e-4,1.00e-4,1.00e-4,6.96e-4,6.60e-4,1.00e-4,6.60e-4,1.10e-4,1.00e-4,1.00e-4,1.00e-4)

gearRatio['hrp14aug'] = (0,0,0,0,0,0,384.0,240.0,180.0,200.0,180.0,100.0,384.0,240.0,180.0,200.0,180.0,100.0,207.69,207.69,381.54,100.0,100.0,100.0,219.23,231.25,266.67,250.0,145.45,350.0,200.0,219.23,231.25,266.67,250.0,145.45,350.0,200.0)
gearRatio['hrp14small'] = (0,0,0,0,0,0,384.0,240.0,180.0,200.0,180.0,100.0,384.0,240.0,180.0,200.0,180.0,100.0,207.69,381.54,100.0,100.0,219.23,231.25,266.67,250.0,145.45,350.0,200.0,219.23,231.25,266.67,250.0,145.45,350.0,200.0)
gearRatio['hrp10small'] = (0,0,0,0,0,0,384.0,240.0,180.0,200.0,180.0,100.0,384.0,240.0,180.0,200.0,180.0,100.0,207.69,381.54,100.0,100.0,219.23,231.25,266.67,250.0,145.45,350.0,350.0,200.0,219.23,231.25,266.67,250.0,145.45,350.0,350.0,200.0)
gearRatio['hrp10aug'] = (0,0,0,0,0,0,384.0,240.0,180.0,200.0,180.0,100.0,384.0,240.0,180.0,200.0,180.0,100.0,207.69,207.69,381.54,100.0,100.0,100.0,219.23,231.25,266.67,250.0,145.45,350.0,350.0,200.0,219.23,231.25,266.67,250.0,145.45,350.0,350.0,200.0)









# --- ROMEO -----------------------------------
pkgDataRootDir['romeo'] = "@CMAKE_INSTALL_PREFIX@/share/romeo"

# Romeo data
modelName['romeo'] = 'Romeo.wrl'
specificitiesName['romeo'] = 'RomeoSpecificities.xml'
jointRankName['romeo'] = 'RomeoLinkJointRank.xml'
robotDimension['romeo'] = 39
initialConfig['romeo'] = (
0, 0, .840252, 0, 0, 0,                                    # FF
0,                                                      # TRUNK
0, 0, 0, 0,                                             # HEAD
1.5,  0.6,  -0.5, -1.05, -0.4, -0.3, -0.2,              # LARM
1.5, -0.6,   0.5,  1.05, -0.4, -0.3, -0.2,              # RARM
0,  0,  -0.3490658,  0.6981317,  -0.3490658,   0,       # LLEG    
0,                                                      # LTOW
0,  0,  -0.3490658,  0.6981317,  -0.3490658,   0,       # RLEG
0,                                                      # RTOW
)

inertiaRotor['romeo'] = (0,)*6+(5e-4,)*31
gearRatio['romeo'] =  (0,)*6+(200,)*31

postureRange['romeo'] = { \
        "rleg": range(32,38), \
        "lleg": range(25,31), \
        "chest": range(6,7), \
        "head": range(7,11), \
        "rarm": range(18,25), \
        "rhand": [], \
        "larm": range(11,18), \
        "lhand": [], \
            }
