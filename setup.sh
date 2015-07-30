CMSSW_RELEASE=CMSSW_7_4_1_patch1
cmsrel $CMSSW_RELEASE
cd $CMSSW_RELEASE/src
cmsenv
git clone https://github.com/cms-jet/JetMETAnalysis
scram b -j16

cd $CMSSW_BASE/src/JetMETAnalysis/JetAnalyzers/test
git clone https://github.com/aminnj/jec
cd jec

echo "now you can do"
echo "  cmsRun run_JRA_cfg.py"
echo "to create the initial ntuple"
