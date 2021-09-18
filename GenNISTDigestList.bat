@echo off
echo Download RDS minimal hash set archive start
bin\wget –quiet --auth-no-challenge --no-check-certificate https://s3.amazonaws.com/rds.nsrl.nist.gov/RDS/current/rds_modernm.zip
echo Download RDS minimal hash set archive complete
echo Extract RDS minimal hash set archive start
bin\7za.exe e %cd%\rds_modernm.zip -otarget -spe -mmt4 -y
echo Extract RDS minimal hash set archive complete
echo Generate Nuix digest list start
bin\CreateNuixNistDigestList.exe %cd%\target\NSRLFile.txt
echo Generate Nuix digest list complete