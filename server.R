

MusicPred <- function(mood){
        if (mood=="happy") "Boulevard of Brokens Dreams"
        else if (mood=="sad") "HeartBeat"
        else if (mood=="alone") "Lonely"
        else if (mood=="angry") "Kiss me through the phone"
        else if (mood=="bitchy") "Lollypop Lil wayne"
        else if (mood=="blank") "Emptiness"
        else if (mood=="confused") "Dazed and Confused by Led Zeppelin"
        else if (mood=="depressed") "Small Bump by Ed Sheeran"
        else if (mood=="energetic") "Summer of 69"
        else if (mood=="geeky") "New Periodic Table Song by AsapSCIENCE"
        else if (mood=="high") "Ganja in my brain"
        else if (mood=="lazy") "The Lazy Song by Bruno Mars"
        else if (mood=="pleased") "Stairway To Heaven by Led Zeppelin"
}

MoviePred <- function(movie){
        if (movie=="action") "Avengers 2"
        else if (movie=="musicals") "Evita (1996)"
        else if (movie=="biopic") "Shine (1996)"
        else if (movie=="period") "Sense and Sensibility (1995)"
        else if (movie=="romance") "The Eng"
        else if (movie=="animation") "Toy Story (1995)"
        else if (movie=="science fiction") "FIGHT CLUB"
        else if (movie=="cult") "Pulp Fiction"
        else if (movie=="disaster") "Armageddon"
        else if (movie=="spy") "Mission: Impossible"
        else if (movie=="drama") "The Deer Hunter (1978)"
        else if (movie=="fantasy") "Harry Potter"
        else if (movie=="thriller") "The Silence of the Lambs (1991)"
        else if (movie=="gangster") "Public Enemies"
        else if (movie=="war") "Saving Private Ryan (1998)"
        else if (movie=="westerns") "Unforgiven (1992)"
        else if (movie=="horror") "Evil Dead"
}
        

shinyServer(
        function(input, output) {
                output$inputValue <- renderPrint({input$mood})
                output$prediction <- renderPrint({MusicPred(input$mood)})
                
                output$inputValue2 <- renderPrint({input$movie})
                output$prediction2 <- renderPrint({MoviePred(input$movie)})
        }
)
