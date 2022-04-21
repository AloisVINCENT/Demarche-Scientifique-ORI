############################################
#-------------Deuxième graphique-----------#
############################################
# Setup
os <- Sys.info()["sysname"]
if (os == "Windows") {
    setwd("C:\\Users\\madgu\\OneDrive\\Cours-L1-Evry\\Bloc Complementaire\\Demarche_scientifique_projet\\Demarche-Scientifique-ORI")#nolint
    } else {
    setwd("/home/alois/Bureau/Demarche-Scientifique-ORI")
}
# Load data
data <- read.table("sortie/calcGC.txt", sep = "\t", header = TRUE) # nolint

if (os == "Windows") {
   setwd("C:\\Users\\madgu\\OneDrive\\Cours-L1-Evry\\Bloc Complementaire\\Demarche_scientifique_projet\\Demarche-Scientifique-ORI\\sortie")#nolint
   } else {
       setwd("/home/alois/Bureau/Demarche-Scientifique-ORI/sortie")
}
dev.new()
plot(data[,1], data[,2], type = "l", xlab = "Position en kilobases", ylab = "G-C/G+C", main = "ORI", ylim = c(-40,40)) #nolint
abline(h = 0, col = "blue", lwd = 2)
print("Second plot done")
