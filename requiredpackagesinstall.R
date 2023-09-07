
# Name   : requiredpackagesinstall
# Author : Joe W. Byers
# Date   : 02/26/2014
# Version: 1.0001
# Aim    : 
# Mail   : <<<ecjbosu@aol.com>>>
#==============================================================================
#Install the Base plus a few Quantitative libraries 
requiredpackagesinstall <- function(others=F, cranmirror=1, includeR_Forge=T) {
# others=T will install the 2000+ other packages that may benefit.

#      others=T
#      cranmirror=1 #cloud repository
#      includeR_Forge=T

#set the cranmirroor
chooseCRANmirror(ind=cranmirror)

repos = getOption("repos");

if (includeR_Forge) options("repos"= c(repos, "https://cloud.r-project.org", "http://R-Forge.R-project.org"));

#source("http://www.rmetrics.org/Rmetrics.R")
#Updated to rforge read only repository: JWB
# Errors on fUtilities so use source from rforge pkgs
#source("https://raw.githubusercontent.com/rforge/rmetrics/master/www/installRmetrics.R")
#source("https://r-forge.r-project.org/scm/viewvc.php/*checkout*/pkg/RmetricsTools.R?revision=5924&root=rmetrics")
#source('https://r-forge.r-project.org/scm/viewvc.php/www/installRmetrics.R?root=rmetrics&revision=3617')
source("https://raw.githubusercontent.com/r-forge/rmetrics/master/www/installRmetrics.R")
   #options(install.packages.check.source = FALSE)
   
   currentPacks <- c("RJDBC","hwriter","xlsxjars","xlsx","RCurl","XML","xtable",
      "tis","reshape","xts","lubridate","rJava","base64enc","digest", "rvest",
      "splus2R","R.devices","R.matlab","DBI","memoise","packrat", "R6", "readODS",
      "Rcpp","plyr","R.methodsS3","R.oo","R.utils","stringr","stringi","bibtex",
      "PortfolioAnalytics","FinCal","FinancialMath", "devtools","plogr","RMariadb",
      "quantmod","PerformanceAnalytics", "lpSolve","lpSolveAPI","bizdays","prettyR",
      "rsconnect", "dplyr", "leaflet", "dtplyr", "corrplot", "DT", "ggplot2",
		"tidyr", "Quandl", "tidyquant","hablar","RSQLite");
      #"blotter", will be installed from r-forge directly
      
   roi <- c("ucminf","ROI","ROI.plugin.glpk","ROI.plugin.quadprog","ROI.plugin.symphony",
	"ROI.models.globalOptTests","ROI.models.miplib","ROI.models.netlib",
	"ROI.plugin.alabama","ROI.plugin.clp","ROI.plugin.deoptim","ROI.plugin.ecos",
	"ROI.plugin.ipop","ROI.plugin.lpsolve","ROI.plugin.msbinlp","ROI.plugin.nloptr",
	"ROI.plugin.optimx","ROI.plugin.scs");
#"ROI.plugin.cplex" skipping because dependencies are to damn difficult to install.
   
mostCommonDepends <- c("rgl","igraph","ape","Formula","BB","geepack","sp","Hmisc",
"scales","plotrix","RColorBrewer","abind","coda","R.cache","R.filesets",
"matrixStats","R.huge","R.rsp","scatterplot3d","vcd","seriation","polynom",
"deSolve","gstat","sendmailR","brew","fail","pbapply","wpp2012",
"hett","car","MCMCpack","maptools","colorspace","flexmix","modeltools",
"sandwich","RcppArmadillo","strucchange","raster","e1071","fields","vctrs",
"permute","ROCR","gbm","colorRamps","pamr","randomForest","Boruta","caret",
"tgp","mlegp","penalizedSVM","SoDA","cubature","truncdist","spam","reshape2",
"foreach","polycor","sfsmisc","glmmML","miscTools","VGAM","multcomp","actuar",
"statmod","tweedie","ade4","R2HTML","useful","proto","oce",
"isotone","energy","rootSolve","AlgDesign","clusterSim","rgeos","RandomFields",
"gsl","ADGofTest","pspline","copula","vines","truncnorm","CRF","expm","corpcor",
"phangorn","rgenoud","biglm","minqa","tpr","lgtdl","latticeExtra",
"RJSONIO","base64","markdown","mvbutils","httr","whisker","evaluate","disclap",
"distr","distrEx","distrSim","distrTEst","distrTeach","RandVar","distrMod",
"SweaveListingUtils","startupmsg","KFAS","lme4","combinat","lhs",
"iterators","pkgmaker","gmp","trust","hexbin","TSP","extrafontdb","Rttf2pt1",
"BBmisc","fastmatch","ltsa","filehash","glmnet","lars","leaps","muhaz",
"extrafont","sapa","tseries","fracdiff","wmtsa","BsMD","moments","lambda.r",
"futile.options","DAAG","oro.nifti","movMF","gridExtra","geometry","subplex",
"msm","mstate","data.table","splancs","MBA","RSEIS","RFOC","GEOmap","gtable",
"RgoogleMaps","png","rjson","mapproj","Runuran","PolynomF","CommonJavaJars",
"magic","qvcalc","relimp","testthat","RSAGA","rgdal","aqp","plotKML",
"quantregForest","spacetime","ggmap","popgraph","locfit","ash","ks","EMD","Iso",
"fda","SparseM","TeachingDemos","hydroTSM","automap","elliptic","contfrac",
"appell","kappalab","baseline","signal","evd","spcosa","network",
"sets","prodlim","ff","sciplot","genalg","kernlab","mitools","formatR","highr",
"lmodel2","sna","gWidgets","pbivnorm","MBESS","FNN","yuima",
"harvestr","dostats","pbkrtest","gvlma","shapes","pcaMethods","SparseGrid",
"shape","downloader","readBrukerFlexData","readMzXmlData","R2admb","optimx",
"dfoptim","cba","proxy","exactRankTests","nnls","stashR","denstrip",
"futile.logger","doBy","fastGHQuad","RGCCA","pheatmap","ipred","reportr","aod",
"HI","wordcloud","Ohmage","rms","skmeans","clue","gsubfn","rSymPy","rJython",
"partitions","Rsolnp","HardyWeinberg","emulator","compositions",
"robCompositions","labdsv","vegan","bayesm","statnet.common","objectSignals",
"NLP","openNLPdata","getopt","ucminf","BHH2","phytools","coin","mratios",
"binMto","RWeka","rcdd","phylosim","rlecuyer","penalized","gnm","matlab",
"animation","gridBase","misc3d","pixmap","classInt","plsdof","plsRglm",
"spls","mixOmics","bipartite","games","calibrate","RcppEigen","lava",
"multilevel","chron","openNLP","reports","tm","venneuler","ellipse","lavaan",
"sem","jpeg","BDgraph","hdrcde","RSNNS","rtematres","biclust","isa2","ggthemes",
"roxygen2","OAIHarvester","wavethresh","gamm4","RLRsim","tsoutliers",
"FRACTION","mcmc","PhaseType","ascii","knitr","knitcitations","RPostgreSQL",
"cmprsk","matrixcalc","kknn","jsonlite","pcaPP","RQuantLib","IBrokers",
"registry","googleVis","quantreg","gam","minpack.lm","norm",
"Rwave","tree","maxent","tau","rphast","nloptr","spd","maps","RWekajars",
"dichromat","munsell","labeling","VineCopula","survey",
"lisrelToR","rockchalk","rggobi","gclus","Cairo","doParallel","circular",
"httpuv","qcc","elasticnet","intervals","spdep","mmap","spBayes",
"deldir","tensor","polyclip","LearnBayes","akima","forecast",
"Rook","shiny","tframe","tfplot","tseriesChaos","vars","fMultivar","fNonlinear",
"setRNG","tframePlus","fame","TSsql","TSdbi","pastecs","tester","yaml",
"yacca","fPortfolio","FinancialInstrument","fTrading","gamlss","gamlss.add",
"gamlss.cens","gamlss.data","gamlss.dist","gamlss.mx","gamlss.tr","fRegression");

#from packageCleanup

#requireForCurrentPackageSet <- c(); 



otherpacks <- c("abc","ada","adabag","adagio","AdMit","ads","AER",
"aftgee","AGD","ahaz","AID","alabama","alphashape3d","alr4","ALS","amap","amen",
"AmericanCallOpt","anacor","aplpack","apt","arfima","arrayhelpers","ars",
"arules","arulesNBMiner","arulesViz","aspace","aspect","assertive",
"AssetPricing","astroFns","astsa","asympTest","audit","aws","awsMethods",
"BACCO","backtest","BACprior","Barnard","BAS","batch","BatchJobs","batchmeans",
"BayesFactor","bayesGARCH","BayesLCA","BayesLogit","bayesPop",
"bayesTFR","BayesTree","BayesVarSel","BayesX","BayesXsrc","BAYSTAR","bbmle",
"BCBCSF","BCE","BCEA","Bchron","bcv","bda","bdsmatrix","beanplot",
"Benchmarking","Bergm","bestglm","betareg","betategarch","bfast","bfp",
"BGLR","bgmm","BH","Bhat","BiasedUrn","bibtex","BiDimRegression",
"bild","bindata","binGroup","binom","binseqtest","bit64","biwavelet","BlakerCI",
"BLCOP","blm","blockmodeling","blockrand","blockTools","BLR","BMA","bmem",
"bmp","BMS","bnlearn","BNPdensity","BoolNet","bootES","bootruin","bootStepAIC",
"bootstrap","BoSSA","bpca","bpcp","bqtl","bReeze","brglm","brnn","Brobdingnag",
"broman","BSDA","BurStFin","BurStMisc","bursts","bvls","bvpSolve","CADFtest",
"calibrator","candisc","capushe","CARBayes","caroline","cat","catdata",
"CausalGAM","CCA","CCM","CCP","CDFt","CDNmoney","celestial","censReg",
"cfa","cg","ChainLadder","cherry","ChoiceModelR","choplump","CHsharp",
"CircNNTSR","CircStats","CITAN","Ckmeans.1d.dp","classifly","clhs",
"clime","cmrutils","coarseDataTools","cobs","CoClust","coefplot",
"compare","compareGroups","CompareTests","comparison","compHclust",
"COMPoissonReg","compound.Cox","CompQuadForm","compute.es","ConConPiWiFun",
"concreg","condGEE","conf.design","conjoint","contrast","ConvergenceConcepts",
"copBasic","copulaedas","CORElearn","corpora","CorrBin","corrgram",
"corrsieve","cosmoFns","cosso","cotrend","COUNT","countrycode","coxphf",
"coxphw","coxrobust","CPE","cplm","cpm","CPMCGLM","cramer","crank","crimCV",
"CRM","crrSC","crrstep","crs","CRTSize","cshapes","CTT","ctv","Cubist","CUMP",
"cumSeg","currentSurvival","cusp","cvAUC","CVST","CVThresh","cvTools",
"cxxfunplus","dae","daewr","dataframes2xls","date","dblcens","dbmss","ddst",
"deal","depmix","depmixS4","depthTools","descr","detect","deTestSet",
"detrendeR","devEMF","dglars","dglm","dgof","dhglm","diagram","directlabels",
"DirichletReg","dirmult","disclapmix","DiscreteInverseWeibull",
"DiscreteLaplace","discretization","dispmod","Distance","distfree.cr",
"distrDoc","distrEllipse","distrom","dlnm","dma","doRNG","doSNOW",
"dr","ds","dse","dsm","DTDA","dtw","dyn","dynamicTreeCut","dynaTree",
"DynClust","dynCorr","dynlm","dynpred","earlywarnings","earth","EasyABC",
"easyanova","eba","ebal","EbayesThresh","ebdbNet","EBMAforecast","Ecdat",
"ecespa","ecodist","EDISON","editrules","effects","EffectStars","eha",
"eigenmodel","eive","EL","elec","elrm","emdist","emg","emplik","emplik2","EMT",
"entropy","epr","EQL","equate","equivalence","erer","ergm","ergm.count",
"ergm.userterms","ESG","etable","ETLUtils","etm","EvalEst","evdbayes","evir",
"evtree","Exact","exact2x2","exactci","ExactCIdiff","exams","ExpDes",
"expectreg","experiment","ExPosition","expsmooth","extRemes","extremevalues",
"ez","ezglm","FactoClass","FactoMineR","Fahrmeir","fanc","fANCOVA",
"fanovaGraph","fanplot","faoutlier","far","fastcluster","fastcox","fastICA",
"FastImputation","FastRWeb","fastSOM","fds","fdth","feature","features",
"fechner","fExtremes","ffmanova","fftw","fGarch","filehashSQLite","fImport",
"FinAsym","FindAllRoots","FindIt","fingerprint","FinTS",
"FisherEM","fit.models","fitdistrplus","FITSio","FKF","flexclust",
"FlexParamCurve","flexsurv","flip","fma","FME","fmri","fmsb","FMStable",
"fontcm","ForeCA","formula.tools","fortunes","forward",
"fossil","fpc","fpow","fpp","fptdApprox","fracprolif","fractaldim",
"FRAPO","frbs","FRCC","FrF2","FrF2.catlg128","frontier",
"frontiles","fun","FuncMap","functional","fUnitRoots","FuzzyNumbers",
"fuzzyRankTests","FWDselect","fwi.fbp","fxregime","galts","gamair",
"gamboostLSS","gamclass","gamlr","gammSlice","gaussDiff",
"gaussquad","gb","gcmr","gcookbook","gdistance","gee","geeM","geiger","gems",
"GENEAread","GeneF","genlasso","GenOrd","genridge","GenSA","genSurv",
"geomapdata","geonames","geoR","geosphere","geospt","geotools","geotopbricks",
"geozoo","GEVcdn","GGally","ggdendro","gglasso","GGMselect","ggparallel",
"ghyp","GillespieSSA","glasso","gld","GLDEX","glm2","glmc","glmmLasso",
"glmnetcr","glmpath","glmpathcr","glmulti","glmx","glogis","glpkAPI","gMCP",
"gmm","GMMBoost","gmodels","gmt","gMWT","gnumeric","gogarch",
"googlePublicData","goric","gpairs","GPArotation","GPfit","gProfileR","GPvam",
"grade","granova","GrapheR","gridSVG","grImport",
"growthrate","grplasso","grpreg","grt","GSA","gsarima","gsbDesign","gsDesign",
"GSM","gsmoothr","gte","Guerry","gumbel","GUniFrac","GWASExactHW","GWRM","HAC",
"hash","hbmem","hbsae","hda","HDclassif","heatmapFit","helloJavaWorld",
"heplots","hexView","hglm","HGNChelper","hht","HiddenMarkov","HiDimDA",
"highfrequency","highlight","highriskzone","HistData","histogram","HLMdiag",
"hmeasure","HMM","hmm.discnp","hmmm","HMP","HMPTrees","HMR","holdem","homals",
"Hotelling","hotspots","howmany","HSAUR","HSAUR2","hSDM","HTMLUtils","hts",
"httpRequest","huge","hwde","HWEintrinsic","hydroGOF","HydroMe","hydroPSO",
"HyperbolicDist","hypergeo","hyperSpec","ibd","ibdreg","ibr",
"ic.infer","ICC","ICEinfer","ICS","ICSNP","IDPmisc","idr","ifs","iGasso",
"igraphdata","igraphtosonia","imguR","imputeYn","indicspecies","ineq",
"influence.ME","infoDecompuTE","infotheo","inline","inlinedocs","intamap",
"intergraph","intRegGOF","intsvy","ipw","IQCC","iRegression","irlba",
"irr","irtoys","irtrees","isdals","ismev","isocir","ISOcodes","isopat",
"ISOweek","ISwR","iterLap","itertools","itsmr","JM",
"joineR","jointDiag","JoSAE","Julia","Kendall","kequate",
"kernelFactory","KernSmoothIRT","kin.cohort","klaR","klausuR","km.ci","kmi",
"kml","kml3d","KMsurv","kohonen","koRpus","Kpart","kriging","KrigInv","KRLS",
"kSamples","kst","kza","kzs","labstatR","LaF","LambertW","landsat","languageR",
"lassoshooting","latdiag","latentnet","Laterality","latticeDensity",
"LatticeKrig","lawstat","lazyWeave","lcda","LCFdata","lcmm","lda","ldbounds",
"LDcorSV","lessR","lestat","lfe","lfstat","lgcp","LiblineaR",
"lifecontingencies","LifeTables","likelihood","LIM","limSolve","lineup",
"linkcomm","linprog","LIStest","LMERConvenienceFunctions","lmerTest",
"lmeSplines","LMest","lmf","lmm","lmom","lmomco","Lmoments","lmomRFA","loa",
"localgauss","locfdr","Lock5Data","locpol","log4r","logconcens","logcondens",
"logcondiscr","logging","LogicReg","logistf","logitnorm","loglognorm","logmult",
"logspline","longitudinal","longitudinalData","longmemo","longpower",
"LoopAnalyst","lordif","lorec","LowRankQP","lpc","LPCM","lpint","lpridge",
"lqmm","LS2W","lsa","LSD","lsmeans","lspls","luca","Luminescence","MAd","mada",
"magicaxis","MAINT.Data","makeProject","MALDIquant","MAMS","manipulate",
"mapdata","MapGAM","mapplots","maptree","mAr","mar1s","marqLevAlg","MARSS",
"MAT","Matching","MatchIt","MatrixEQTL","MatrixModels","maxLik","maxlike",
"maxstat","MBmca","mboost","mc2d","mcbiopi","mcclust","mcga","MChtest",
"mclogit","mclust","MCMCglmm","mcmcse","mco","Mcomp","MCPAN","MCPMod",
"mcprofile","mcr","mda","mded","MDPtoolbox","meboot","meifly","mem","memisc",
"MEMSS","merror","Metrics","metRology","mets","mFilter","mfp","mhsmm","mhurdle",
"mice","micEcon","micEconAids","micEconCES","micEconSNQP","microbenchmark",
"micromap","MindOnStats","minerva","minimax","miscFuncs","missForest",
"missMDA","mix","mixAK","mixcat","mixdist","mixexp","mixPHM","mixreg","MixSim",
"mixsmsn","mixtools","mkin","mkssd","mlbench","MLCM","MLDS",
"mlearning","MLEcens","mlmmm","mlmRev","mlogit","mlogitBMA","MM","mmand","mmcm",
"mmeln","MNM","MNP","MOCCA","Modalclust","modeest","modehunt","modelfree",
"ModelMap","mombf","mondate","monomvn","MonoPoly","monreg","mosaic","MPDiR",
"MplusAutomation","mpm","mpmcorrelogram","mpmi","mpoly","mpt","MPV","mra",
"MRCE","mrds","mritc","mRMRe","msgl","MSwM","mtsdi","multcompView","MultEq",
"multgee","multicool","MultiLCIRT","MultinomialCI","MultiOrd","MultiPhen",
"multipol","multisensi","multitaper","multivator","multxpert","MuMIn","munfold",
"muRL","MVA","mvabund","mvinfluence","mvna","mvnmle","mvnormtest","mvoutlier",
"mvProbit","MVR","mvShapiroTest","mvtsplot","mxkssd","NADA","nadiv","ncf",
"ncvreg","ndl","neldermead","NetCluster","networkDynamic","nFactors",
"ngspatial","NHPoisson","NightDay","NISTnls","nleqslv","nlmeU","nlmrt","NLRoot",
"nls2","nlsmsn","nlstools","nlts","NMFN","NMOF","noia","nonlinearTseries",
"nonparaeff","nopp","nor1mix","normalp","nortest","nose","Nozzle.R1","np",
"nparcomp","nparLD","NPCD","npde","NPHMC","nplplot","npmlreg","npmv","nppbib",
"NScluster","nullabor","numbers","Oarray","objectProperties","OceanView","ODB",
"oem","onion","openair","openintro","OpenRepGrid","OpenStreetMap",
"operator.tools","operators","optextras","optimbase","optimsimplex","optmatch",
"optparse","optpart","orclus","ORCME","orcutt","OrdFacReg","ordinal",
"OrdMonReg","ordPens","ORIClust","orientlib","orloca","orloca.es",
"orthogonalsplinebasis","orthopolynom","osDesign","ouch","outliers","OUwie",
"oz","pa","pack","packHV","pairwiseCI","pamm","pan","pander",
"ParamHelpers","paran","parfm","parma","parmigene","partDSA","partitionMetric",
"partsm","party","partykit","PAS","pavo","PBImisc","PBSadmb","PBSddesolve",
"PBSmapping","PBSmodelling","PCICt","pcse","pdc","pdfCluster","pdist",
"PDSCE","PearsonDS","PearsonICA","pec","pendensity","pensim","peperr","pequod",
"perm","perry","pgam","pglm","pgmm","phia","PKI","plan","PlayerRatings","plgp",
"pln","plot3D","plotmo","plotpc","plotSEMM","plsdepot","plspm","plsRbeta",
"plugdensity","plumbr","pmml","pmr","poibin","PoiClaClu","poilog",
"poisson.glm.mix","poLCA","polyapost","polySegratio","polySegratioMM","polywog",
"Pomic","pomp","pooh","popbio","popReconstruct","portes","portfolio","potts",
"PP","ppcor","pps","prabclus","pracma","PredictABEL","prefmod",
"PReMiuM","PresenceAbsence","prettyGraphs","prevR","prim","primer","princurve",
"PRISMA","PrivateLR","pROC","ProDenICA","ProfessR","ProfileLikelihood",
"profileModel","profr","proftools","proj4","ProjectTemplate","PropCIs",
"protoclust","PSAgraphics","pscl","pseudo","pso","pspearman","PST","psy",
"ptinpoly","PtProcess","ptw","pvclass","pvclust","PVR","pwr","PwrGSD","pwt",
"pxR","pyramid","QCA","qmap","qmrparser","qpcR","QRM","qrnn","QSARdata",
"quadrupen","qualV","quantregGrowth","quantspec","queueing","R0","R1magic",
"R2BayesX","R2MLwiN","R2SWF","r4ss","RadioSonde","rainbow","ramps","random",
"random.polychor.pa","randomForestSRC","randomGLM","randomizeBE","randomLCA",
"randomNames","randtoolbox","rangeMapper","RankAggreg","rankhazard","RANN",
"rapport","rasclass","rasterVis","rateratio.test","rationalfun","rAverage",
"rbenchmark","rBeta2009","rbounds","RCALI","Rcapture","rcdk","Rcgmin",
"rChoiceDialogs","rCMA","RcppBDT","RcppClassic","RcppClassicExamples",
"RcppCNPy","RcppDE","RcppExamples","RcppGSL","RcppProgress","RcppRoll",
"RcppSMC","RcppXts","Rcsdp","Rd2roxygen","rdd","Rdistance","Rdpack","rdryad",
"RDS","ReacTran","readbitmap","readMLData","refund","REGENT","reglogit",
"regress","regsubseq","rehh","rela","relaimpo","relations","reldist","relevent",
"relSim","relsurv","rEMM","RepeatedHighDim","repolr","reporttools","REPPlab",
"ResourceSelection","restorepoint","rfigshare","Rfit","RFLPtools","rfPermute",
"rgexf","RGIFT","RH2","ridge","RIFS","RInside","riskRegression","risksetROC",
"RISmed","RItools","riv","rje","RKEA","rkt","RMallow","RMark","RMAWGEN",
"rminer","Rmisc","Rmixmod","RMTstat","RNCBIEUtilsLibs","RNCEP","RNetCDF",
"RNetLogo","rngSetSeed","rngtools","rngWELL","RNiftyReg","ROAuth","RobAStBase",
"robeth","robfilter","RobRex","robust","RobustAFT","robustfa","robustHD",
"RobustRankAggreg","robustreg","robustX","rocc","rococo","RODBC","ROptEst",
"ROptEstOld","ROptRegTS","rpartScore","rpf","rplotengine","RPMM","Rramas",
"rrBLUP","rrcov","rrcovHD","rrcovNA","RRF","rriskDistributions","RSA","rsae",
"RSclient","rseedcalc","rsem","rSFA","RSiena","RSKC","rsm","rspa","Rssa",
"rstiefel","rstream","rtape","RTextTools","rtf","rtop","rts","rugarch","rv",
"rvertnet","rworldmap","rworldxtra","RXKCD","RXMCDA","RXshrink",
"sac","saemix","SAFD","SAM","sampleSelection","samplesize","SampleSizeMeans",
"SampleSizeProportions","sampling","samplingbook","SamplingStrata",
"samplingVarEst","SAPP","sas7bdat","SAScii","SASmixed","saws","sbgcop","sca",
"scagnostics","scam","scaRabee","schoolmath","SciViews","SCMA","ScottKnott",
"scout","SCperf","ScreenClean","scrime","SCRT","SDaA","sde","sdprisk",
"SearchTrees","seas","season","SECP","secr","seg","segmented","SEL",
"selectiongain","selectMeta","selectr","SeleMix","SemiPar","semPlot",
"semTools","sensitivity","SensitivityCaseControl","SensoMineR","separationplot",
"Sequential","sft","sgeostat","SGL","SGP","SGPdata","sharpshootR","sig",
"sigclust","simboot","SimComp","SimCorMultRes","simctest","simecol","simex",
"simexaft","simFrame","Simile","simpleboot","simsem","sirad","SIS","sitools",
"SixSigma","SiZer","SKAT","SkewHyperbolic","skewt","smacof","smatr","smcure",
"smfsb","smirnov","SMR","sms","SMVar","someMTP","sorvi","sos","spaa","sparcl",
"sparr","sparseHessianFD","sparseLDA","sparseLTSEigen","sparsenet","spate",
"spatgraphs","spatial.tools","spatialCovariance","SpatialEpi","SpatialExtremes",
"spatialkernel","SpatialNP","SpatialPack","spatialprobit","spc","spcadjust",
"spcov","SPECIES","spectralGP","speedglm","speff2trial","SPEI","sperrorest",
"spgwr","sphereplot","sphet","splm","spMC","SPOT","SPSL","spsurvey","spt",
"spTimer","sqldf","SQN","SQUAREM","squash","sra","ssanv","ssize.fdr","sss",
"SSsimple","st","stabledist","stacomirtools","stargazer","StatMatch","stepp",
"stepPlr","StMoSim","stocc","stochvol","stratification",
"StressStrength","stringdist","subselect","supclust","superdiag","SuperLearner",
"superpc","SuppDists","support.CEs","surface","survAUC","survC1","surveillance",
"survivalROC","survPresmooth","survSNP","svd","SVMMaj","svmpath","SvyNom",
"SwissAir","symmoments","synchrony","systemfit","tables","tabuSearch","teigen",
"tempdisagg","tensorA","texmex","TExPosition","tgram","TH.data","thgenetics",
"ThreeWay","ThresholdROC","Tides","tiff","tightClust","tikzDevice",
"timeordered","timereg","timeROC","timetools","TIMP","timsac","Tinflex",
"tkrplot","tm.plugin.dc","tm.plugin.factiva","tm.plugin.mail","tmle","tmvtnorm",
"tnet","tolerance","topicmodels","tourr","TPmsm","tractor.base","TraMineR",
"TraMineRextras","TRAMPR","trapezoid","treebase","treemap","TreeSim","triangle",
"trimcluster","tripack","tripEstimation","truncreg","truncSP","trustOptim",
"TSA","tsDyn","TSHRC","tsModel","tsne","TSTutorial",
"tth","TTR","ttutils","TukeyC","TunePareto",
"turboEM","turner","twang","TwoStepCLogit","txtplot","udunits2","ump",
"Unicode","UScensus2010","UsingR","utility","UWHAM","varbvs","vardiag",
"VarianceGamma","varSelRF","vcdExtra","Vdgraph","vec2dtransf","VennDiagram",
"verification","visreg","VLMC","WDI","YieldCurve");
#allpacks=c(getOption('defaultPackages'),basePacks,currentPacks,
#  rMetrics,rMetricsRequires,mostCommonDepends ,otherpacks   )

#installRmetrics(repos="http://cran.us.r-project.org")
#installRmetrics deprecated, but rmetrics install has issues, failing to install.packages using pkgsRmetricsDev()
#install.packages(pkgsRmetricsDev, repos="https://cloud.r-project.org", dependencies=TRUE);


install.packages(currentPacks, repos="https://cloud.r-project.org", dependencies=TRUE);

#install rcharts
require(devtools)
install_github("ramnathv/rCharts")

#blotter
install.packages("blotter", repos="http://R-Forge.R-project.org", dependencies=TRUE)

install.packages(roi,repos="https://cloud.r-project.org", dependencies=TRUE);

install.packages(mostCommonDepends,repos="https://cloud.r-project.org", dependencies=TRUE);

if (others) install.packages(otherpacks,repos="https://cloud.r-project.org", dependencies=TRUE);

}

