# Define UI for application that produces a linear model plot
ui <- fluidPage(
  
  # Application title
  titlePanel("Affective Intensity and Regulation Effort"),
  
  # Sidebar with a slider input for moderating variables
  sidebarLayout(
    sidebarPanel(

      # Panel for Emotion
      selectInput(inputId = "Emotion",
                  label = "Emotions Experienced:",
                  choices = c("Overwhelmed", "Angry", "Upset", "Alert", "Tense", "Disgusted", "All"),
                  selected = c("All"),
                  multiple = F),
    ),
    
    # Show a plot of the generated visualization
    mainPanel(
      plotOutput("regressPlot")
    )
  )
)

# Define server logic required to draw visualization
server <- function(input, output) {
  
  # Creating the plot output
  output$regressPlot <- renderPlot({
    
    # Creating a temporary dataframe we can modify reactively
    df_temp <- df
    
    # Subsetting emotion if we don't want all
    if (input$Emotion != "All"){
      df_temp <- subset(df_temp, df_temp$Emotion %in% input$Emotion)
    }

    # Specifying our ggplot output
    ggplot(data = df_temp, aes(x = Emo.Extent_z, y = Reg.Extent_z, color = Strategy)) +
      geom_point() +
      stat_smooth(method="lm", alpha = .25, size = 2) +
      scale_color_brewer(palette = "Dark2") +
      labs(title = "Regulation Effort By Intensity of Emotion and Strategy Used",
           subtitle = "Intensity is more predictive of effort for reappraisal than distraction",
           x = "Intensity of Emotion (z)",
           y ="Regulation Effort (z)",
           caption = NULL) +
      coord_cartesian(xlim=c(-1.8, 1.8), ylim=c(-1.8, 1.8)) +
      theme_classic() +
      theme(plot.title = element_text(face="bold", size=13, hjust = 0.5)) +
      theme(plot.subtitle = element_text(size = 10, hjust = 0.5, face = "italic")) +
      theme(plot.caption = element_text(size = 8, hjust = 0.0, face = "italic")) +
      theme(axis.title = element_text(size = 16)) +
      theme(axis.text.x = element_text(size = 14, color = "Black")) +
      theme(axis.text.y = element_text(size = 14, color = "Black"))
  })
}

# Run the application 
shinyApp(ui = ui, server = server)