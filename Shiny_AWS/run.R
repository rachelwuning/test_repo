rm(list = ls())
library(shiny)
library(tidyverse)
library(shinythemes)
library(readr)
library(DT)



# load data
data <- read.csv("C:/Users/nwu/repositories/Shiny/shinyapp/Shiny_AWS/faithful.csv")
shiny::runApp("C:/Users/nwu/repositories/Shiny/shinyapp/Shiny_AWS")

# options(browser = "C:/Program Files/Google/Chrome/Application/chrome.exe")
# runApp(list(ui = ui, server = server),host="127.0.0.1",port=5901, launch.browser = TRUE)
#runApp("./demo1",host='127.0.0.1',port=3840)
