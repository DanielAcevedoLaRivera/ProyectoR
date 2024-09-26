library(stringr)
library(pdftools)

border_patrol <- pdf_text("usbp_stats_fy2017_sector_profile.pdf")

data = head(border_patrol)

length(border_patrol) #verificamos el largo de los elementos

border_patrol[1]

# data1= strsplit("criminology", split = "n") ejemplo de division por similitudes

sector_profile <- border_patrol[1] #seleccion de pagina
sector_profile <- strsplit(sector_profile, "\n") #\n es representacion de "enter" o salto de linea
sector_profile <- sector_profile[[1]]

head(sector_profile)#primeras 6 filas

sector_profile <- trimws(sector_profile)#remueve los espacios blancos al principio o al final del string o ambas

grep("Miami", sector_profile) #grep // posicion desde donde encuentro un caracter // key sensitive
grep("Nationwide Total", sector_profile)

sector_profile <- sector_profile[grep("Miami", sector_profile):
                                   grep("Nationwide Total", sector_profile)]
head(sector_profile)

sector_profile <- str_split_fixed(sector_profile, " {2,}", 10) # 10= cantidad columnas //"{2,}" separar en cantidad de espacios

head(sector_profile)

sector_profile <- data.frame(sector_profile) #conversion a data frame + nombrar las columnas
names(sector_profile) <- c("sector",
                           "agent_staffing",
                           "apprehensions",
                           "other_than_mexican_apprehensions", 
                           "marijuana_pounds",
                           "cocaine_pounds",
                           "accepted_prosecutions",
                           "assaults",
                           "rescues",
                           "deaths")

head(sector_profile)