# Olah Data Semarang
# WhatsApp : +6285227746673
# IG : @olahdatasemarang_
# Model Implied Instrumental Variable (MIIV) Estimation of Structural Equation Models Use miive (MIIVsem) With (In) R Software
install.packages("MIIVsem")
install.packages("systemfit")
library("MIIVsem")
MIIVsem = read.csv("https://raw.githubusercontent.com/timbulwidodostp/MIIVsem/main/MIIVsem/MIIVsem.csv",sep = ";")
# Estimation Model Implied Instrumental Variable (MIIV) Estimation of Structural Equation Models Use miive (MIIVsem) With (In) R Software
model <- '
  consump  ~ corpProf + corpProfLag + wages
  invest   ~ corpProf + corpProfLag + capitalLag
  privWage ~ gnp + gnpLag + trend
'
instruments <- '
  consump  ~ govExp + taxes + govWage + trend + capitalLag + corpProfLag + gnpLag
  invest   ~ govExp + taxes + govWage + trend + capitalLag + corpProfLag + gnpLag
  privWage ~ govExp + taxes + govWage + trend + capitalLag + corpProfLag + gnpLag
'
MIIVsem <- miive(model, MIIVsem, instruments, miiv.check = FALSE)
MIIVsem
estimatesTable(MIIVsem)
# Model Implied Instrumental Variable (MIIV) Estimation of Structural Equation Models Use miive (MIIVsem) With (In) R Software
# Olah Data Semarang
# WhatsApp : +6285227746673
# IG : @olahdatasemarang_
# Finished