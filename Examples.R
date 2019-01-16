#https://github.com/lbenz730/ncaahoopR

#Examples

#devtools::install_github("lbenz730/ncaahoopR")
#Any way to get it from CRAN so it works for shinyapps?
library(ncaahoopR)

wp_chart(game_id = 401025888, home_col = "navy", away_col = "goldenrod1")

gg_wp_chart(game_id = 401082978, home_col = "gray", away_col = "orange")
#Can wrap in ggplotly
library(plotly)
ggplotly(gg_wp_chart(game_id = 401082978, home_col = "gray", away_col = "orange"))

#DT
library(DT)
datatable(get_schedule("Duke"))

#One g
oal of app is to get DT table to work with crosstalk with some other visualization


#Game flow
game_flow(game_id = 401082669, home_col = "blue", away_col = "navy")
#Plotly version
ggplotly(game_flow(game_id = 401082669, home_col = "blue", away_col = "navy"))


#Assist net (no plotly)
assist_net(team = "Oklahoma", node_col = "firebrick4", season = 400989185)


#Season long assist net (not working 1/16/19)
assist_net(team = "Yale", node_col = "royalblue4", season = "2017-18")


#Circle assist network
circle_assist_net(team = "UNC", season = 401082861)


#Highlighted circle assist network
circle_assist_net(team = "San Francisco", season = "2018-19", 
                  highlight_player = "Frankie Ferrari", highlight_color = "#FDBB30")
