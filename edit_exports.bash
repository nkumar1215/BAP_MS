#!/usr/bin/env bash

sed 's/jboatw2\/SAP/jboatw2\/BAP\/variant_calling/g' $1 > mid
sed 's/all_gvcfs\/SAP.Chr/single_gvcf\/BAP_Mace.Chr/g' mid > temp
sed 's/gatk-4.1.7.0/gatk-4.2.6.1/g' temp > mid
sed 's/tmp-dir=/tmp-dir /g' mid > temp
sed 's/HDP/BAP/g' temp > mid
sed 's/all_gvcfs/single_gvcf/g' mid > temp
sed 's/--genomicsdb-use-vcf-codec//g' temp > mid
mv mid temp
# mv temp BAP_${1}

# for i in 04 06 07 08 09 10
# do 
#     for j in 1 2
#     do 
#         bash edit_exports.bash exportGenotypesDB${i}-${j}.qsub
#         sed "s/jointexport/jointexport_${j}_/g" temp > mid
#         sed "s/jointExport/jointExport_${j}_/g" mid > BAP_exportGenotypesDB${i}-${j}.qsub 
#     done
# done; # mv temp BAP_${1}

# for i in 01 02 03 05
# do
#     for j in 1 2
#     do
#         bash edit_exports.bash exportGenotypesDB${i}-${j}.qsub
#         sed "s/jointexport/jointexport_${j}_/g" temp > mid
#         sed "s/jointExport/jointExport_${j}_/g" mid > BAP_exportGenotypesDB${i}-${j}.qsub
#     done
# done; # mv temp BAP_${1}
