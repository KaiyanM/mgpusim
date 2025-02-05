 @echo off
setlocal enabledelayedexpansion


cd aes
.\aes.exe -timing -length=33554432 --report-all
ren "metrics.csv" "buildL1VCaches_WithBankLatency+5.csv"
cd ..\matrixtranspose
.\matrixtranspose.exe -width=8192 -timing --report-all
ren "metrics.csv" "buildL1VCaches_WithBankLatency+5.csv"
cd ..\nbody
.\nbody.exe -iter=2048 -timing --report-all
ren "metrics.csv" "buildL1VCaches_WithBankLatency+5.csv"
cd ..\pagerank
.\pagerank.exe -node=16384 -timing --report-all
ren "metrics.csv" "buildL1VCaches_WithBankLatency+5.csv"
cd ..\spmv
.\spmv.exe -dim=32768 -timing --report-all
ren "metrics.csv" "buildL1VCaches_WithBankLatency+5.csv"
