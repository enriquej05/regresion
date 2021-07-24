  library(tidyverse)
  url_csv<-"https://raw.githubusercontent.com/andres54121/Modelo_Clasificacion_Regresion/main/Dolar.csv"
  data<-read.csv(url_csv)
  lm(VALOR~FECHA, data = data)
  
  data %>%
    ggplot(aes(x=FECHA, y=VALOR))+geom_point()+
    geom_abline(intercept = 79.016512, slope=-0.001329,col = 'blue')
  
  #Prediccion
  Fecha<-44387
  precio<- -0.001329 * Fecha + 79.016512
  print(precio)
  
  
  
