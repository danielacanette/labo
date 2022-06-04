rm( list=ls() )  #remove all objects
gc()             #garbage collection


require("data.table")

 
setwd("C:/ITBA/DM/")
 
dir.create( "./exp/DT0001/", showWarnings = FALSE )
file.copy( "./datasets/paquete_premium_202011.csv",  "./exp/DT0001/", overwrite= FALSE )
 

setwd("C:/ITBA/DM/exp/")

 
dataset  <- fread("./DT0001/paquete_premium_202011.csv")   #donde entreno
 
dim(dataset)
campos_buenos  <- setdiff( colnames( dataset), 
                           c("numero_de_cliente","foto_mes","clase_ternaria" ) )
campos_buenos

variables = c("mv_mpagominimo",
              "mvr_mpagominimo",
              "Master_Fvencimiento",
              "mv_fultimo_cierre",
              "numero_de_cliente",
              "ccallcenter_trx",
              "Visa_mfinanciacion_limite",
              "mplazo_fijo_dolares",
              "mvr_msaldopesos",
              "Visa_Fvencimiento",
              "mv_fechaalta",
              "mrentabilidad",
              "Visa_fultimo_cierre",
              "Master_mfinanciacion_limite",
              "cliente_antiguedad",
              "Master_msaldototal",
              "mv_Fvencimiento",
              "Visa_msaldopesos",
              "Visa_fechaalta",
              "tcallcenter",
              "mv_cconsumos",
              "mv_Finiciomora",
              "ccomisiones_mantenimiento",
              "mtransferencias_emitidas",
              "ctrx_quarter",
              "mcaja_ahorro_dolares",
              "Visa_mconsumospesos",
              "mv_msaldototal",
              "Visa_mpagospesos",
              "Visa_cconsumos",
              "mautoservicio",
              "Master_mpagominimo",
              "Master_msaldopesos",
              "mcomisiones_otras",
              "ctransferencias_recibidas",
              "cplazo_fijo",
              "Master_fultimo_cierre",
              "Visa_mconsumosdolares",
              "mv_status06",
              "internet",
              "mvr_msaldopesos2",
              "mcomisiones",
              "mprestamos_prendarios",
              "Master_mpagospesos",
              "cprestamos_personales",
              "ccomisiones_otras",
              "cmobile_app_trx",
              "mvr_Master_mlimitecompra",
              "mtarjeta_visa_debitos_automaticos",
              "mtarjeta_master_consumo",
              "mvr_mconsumospesos",
              "ctarjeta_master_trx",
              "Visa_msaldodolares",
              "cextraccion_autoservicio",
              "mvr_mconsumosdolares",
              "mv_mconsumospesos",
              "tpaquete9",
              "Master_mconsumospesos",
              "Visa_msaldototal",
              "mvr_Visa_mlimitecompra",
              "mvr_mpagosdolares",
              "mv_mpagospesos",
              "mv_mfinanciacion_limite",
              "Master_mlimitecompra",
              "cpagomiscuentas",
              "ccuenta_debitos_automaticos",
              "ctransferencias_emitidas",
              "Master_Finiciomora",
              "mvr_mpagospesos",
              "Visa_mpagosdolares",
              "minversion1_pesos",
              "mvr_mpagado",
              "mextraccion_autoservicio",
              "Visa_mlimitecompra",
              "ccajas_otras",
              "ccajas_consultas",
              "mcheques_depositados",
              "mttarjeta_master_debitos_automaticos",
              "mcaja_ahorro_adicional",
              "Master_cconsumos",
              "Master_mpagado",
              "cliente_vip",
              "mv_mlimitecompra",
              "Master_delinquency",
              "ctarjeta_debito",
              "tmobile_app",
              "catm_trx",
              "mvr_msaldodolares",
              "matm",
              "mv_msaldodolares",
              "mv_mpagado",
              "tpaquete7",
              "mv_mconsumosdolares",
              "Master_mconsumosdolares",
              "ccajas_extracciones",
              "Visa_status",
              "Master_msaldodolares",
              "cseguro_vida",
              "cforex",
              "matm_other",
              "mvr_msaldodolares2",
              "mv_status03",
              "minversion2",
              "cseguro_accidentes_personales",
              "mprestamos_hipotecarios",
              "catm_trx_other",
              "Visa_mpagado",
              "active_quarter",
              "cinversion2")
 
  dataset[  , c(variables) := NULL ]
  dim(dataset)

  colnames( dataset)
