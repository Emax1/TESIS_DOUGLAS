calidad<-read.csv('https://raw.githubusercontent.com/Emax1/CALIDAD/main/base_calidad3.csv',sep=';',colClasses = 'factor',header=TRUE)
cld<-calidad[c(3,4,5)]
cld$A<-as.numeric(cld$A)
cld$B<-as.numeric(cld$B)
cld$C<-as.numeric(cld$C)

cld<-as.data.frame.factor(cld)


bn.learn.wine = bnlearn::hc(cld)
bn.learn.wine = drop.arc(bn.learn.wine, "A", "B")

viewer(bn.learn.wine,
       bayesianNetwork.width = "100%",
       bayesianNetwork.height = "100vh",
       bayesianNetwork.layout = "layout_on_grid",
       bayesianNetwork.title="<br><span style='font-size:18px;
       font-family:Arial;
       color:black;
       text-align:center;'>
       Bayesian Networks
       with Continuous Distributions -
       Wine Dataset</span>",
       bayesianNetwork.subtitle = "<span style='font-size:15px;
       font-family:Arial;
       color:black;
       text-align:center;'>Automatic
       Structure Learning -
       HC (Hill Climbing)</span>")


####CLASIFICACIÓN
cld$A<-factor(cld$A)
cld$B<-factor(cld$B)
cld$C<-factor(cld$C)

summary(cld)
str(calidad)


bn.learn.hc = hc(cld)
viewer(bn.learn.hc,
       bayesianNetwork.width = "100%",
       bayesianNetwork.height = "80vh",
       bayesianNetwork.layout = "layout_with_sugiyama",
       bayesianNetwork.title="Discrete Bayesian Network - Alarm",
       bayesianNetwork.subtitle = "Monitoring of emergency care patients",
       bayesianNetwork.footer = "Fig. 1 - Layout with Sugiyama"
)


calidad<-read.csv('https://raw.githubusercontent.com/Emax1/CALIDAD/main/base_calidad3.csv',sep=';',colClasses = 'factor',header=TRUE)
str(calidad)
bn.learn.hc = hc(calidad)
viewer(bn.learn.hc,
       bayesianNetwork.width = "100%",
       bayesianNetwork.height = "80vh",
       bayesianNetwork.layout = "layout_with_sugiyama",
       bayesianNetwork.title="Discrete Bayesian Network - Alarm",
       bayesianNetwork.subtitle = "Monitoring of emergency care patients",
       bayesianNetwork.footer = "Fig. 1 - Layout with Sugiyama"
)       

#regresión

calidad<-read.csv('https://raw.githubusercontent.com/Emax1/CALIDAD/main/base_calidad5.csv',sep=';',colClasses = 'numeric',header=TRUE)


str(calidad)

bn.learn.hc = hc(calidad)
viewer(bn.learn.hc,
       bayesianNetwork.width = "100%",
       bayesianNetwork.height = "80vh",
       bayesianNetwork.layout = "layout_with_sugiyama",
       bayesianNetwork.title="Discrete Bayesian Network - Alarm",
       bayesianNetwork.subtitle = "Monitoring of emergency care patients",
       bayesianNetwork.footer = "Fig. 1 - Layout with Sugiyama"
) 



bn.learn.wine = bnlearn::hc(calidad)
bn.learn.wine = drop.arc(bn.learn.wine, "A", "B")

viewer(bn.learn.wine,
       bayesianNetwork.width = "100%",
       bayesianNetwork.height = "100vh",
       bayesianNetwork.layout = "layout_on_grid",
       bayesianNetwork.title="<br><span style='font-size:18px;
       font-family:Arial;
       color:black;
       text-align:center;'>
       Bayesian Networks
       with Continuous Distributions -
       CALIDAD Dataset</span>",
       bayesianNetwork.subtitle = "<span style='font-size:15px;
       font-family:Arial;
       color:black;
       text-align:center;'>Automatic
       Structure Learning -
       HC (Hill Climbing)</span>",
       node.colors = list(background = "white",
                          border = "black",
                          highlight = list(background = "#e91eba",
                                           border = "black")),
       
       node.font = list(color = "black", face="Arial"),
       clusters.legend.title = list(text = "Legend",
                                    style = "font-size:18px;
                                    font-family:Arial;
                                    color:black;
                                    text-align:center;"),
       clusters.legend.options = list(
         list(label = "P1",
              shape = "icon",
              icon = list(code = "f1ce", size = 50, color = "#e91e63")),
         list(label = "P2",
              shape = "icon",
              icon = list(code = "f140", size = 50, color = "#03a9f4")),
         list(label = "P3",
              shape = "icon",
              icon = list(code = "f192", size = 50, color = "#4caf50")),
         list(label = "P4",
              shape = "icon",
              icon = list(code = "f10c", size = 50, color = "#ffc107")),
         list(label = "P5",
              shape = "icon",
              icon = list(code = "f043", size = 50, color = "#03a9f4"))
       ),
       clusters = list(
         list(label = "P1",
              shape = "icon",
              icon = list(code = "f1ce", color = "#e91e63"),
              nodes = list("A","B","C","D")),
         list(label = "P2",
              shape = "icon",
              icon = list(code = "f140", color = "#03a9f4"),
              nodes = list("E","F","G","H")),
         list(label = "P3",
              shape = "icon",
              icon = list(code = "f192", color = "#4caf50"),
              nodes = list("I")),
         list(label = "P4",
              shape = "icon",
              icon = list(code = "f10c", color = "#ffc107"),
              nodes = list("J","K")),
         list(label = "P5",
              shape = "icon",
              icon = list(code = "f043", color = "#03a9f4"),
              nodes = list("L","M"))
       )
       )
