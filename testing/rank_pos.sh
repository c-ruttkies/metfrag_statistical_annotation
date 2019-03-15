#!/bin/bash
java -Xmx4096m -Xms4096m -XX:-UseGCOverheadLimit -cp MetFrag2.4.5-Tools.jar de.ipbhalle.metfrag.ranking.GetRankOfCandidateMultipleThreadCSV param=parameter_files/pos csv=results threads=1 output=rankings/pos scorenames=Score weights=weight.txt negscore=true filter="01.csv"
