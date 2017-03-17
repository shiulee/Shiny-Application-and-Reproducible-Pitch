

shinyUI(
        pageWithSidebar(
                
                headerPanel("Music and movie prediction"),
                sidebarPanel(
                        textInput('mood', label="You are feeling ?(caps off)"),
                        textInput('movie', label="movie genre (caps off)"),
                        submitButton('Submit')
                ),
                mainPanel(
                        h3('Suggested song and movie'),
                        h4('You are feeling'),
                        verbatimTextOutput("inputValue"),
                        h4('You entered this genre'),
                        verbatimTextOutput("inputValue2"),
                        h4('very well then, listen to this one '),
                        verbatimTextOutput("prediction"),
                        h4('and you can watch this movie '),
                        verbatimTextOutput("prediction2")
                )
        )
)