#************************************************************************
# Title: statisticalThinkingModel.R
# Author: William Murrah
# Description: Code to create statistical thinking model in grid graphics
# Created: Wednesday, 03 March 2021
# R version: R version 4.0.4 (2021-02-15)
# Project(working) directory: /Users/wmm0017/Projects/QMER/QMER_Mission_Vision_StrategicPlan
#************************************************************************

library(grid)
library(gridtext)


# Create page for graphic
grid.newpage()
pushViewport(plotViewport(c(1, 5, 2, 5)))
pushViewport(dataViewport(pressure$temperature,
                          pressure$pressure,
                          name = "plotRegion"))

# Triangle
grid.polygon(x = c(0.2, .5,.8),
             y = c(0.2, .8, 0.2))
# Lower horizontal line
grid.lines(x = c(.275, .725), 
           y = c(.35, .35))
# Upper horizontal line
grid.lines(x = c(.375, .625),
           y = c(.55, .55))
# Lower left vertical lines
grid.lines(x = c(.42, .42), # left
           y = c(.2, .35))
grid.lines(x = c(.58, .58), # right
           y = c(.2, .35))
# Upper vertical line
grid.lines(x = c(.5, .5), 
           y = c(.35, .55))

#### Text ###

# Upper section
grid.text("Statistical\nThinking", x = .5, y = .65)
# Middle sections
grid.text("Computational\nThinking", x = .42, y = .45)
grid.text("Model-based\nThinking", x = .58, y = .45)
# Lower sections
grid.text("Statistical\nProgramming", x = .33, y = .275)
grid.text("Exploratory\nData\nAnalysis", x = .5, y = .275)
grid.text("FAIR\nWorkflow", x = .67, y = .275)
             

### Tables ###

# Left Table
grid.text("Effective Learning\nStrategies", x = 0.1, y = .8,
          gp = gpar(fontface = "bold"))
grid.text("Distributed Practice", x = .1, y = .725)
grid.text("Interleaving", x = .1, y = .675)
grid.text("Retrieval Practice", x = .1, y = .625)
grid.text("Elaboration", x = .1, y = .575)
grid.text("Concrete Examples", x = .1, y = .525)
grid.text("Dual Coding", x = .1, y = .475)

# Pedagocial Context
grid.text("Pedagical Context", x = 0.9, y = .8,
          gp = gpar(fontface = "bold"))
grid.text("Learning Communities", x = .9, y = .725)
grid.text("Problem-based Learning", x = .9, y = .675)
grid.text("Active Learning/Flipped Classroom", x = .9, y = .625)

grid.text("Assessment/Evaluation", x = 0.9, y = .475,
          gp = gpar(fontface = "bold"))
grid.text("Competency-based Assessment", x = .9, y = .425)
grid.text("Design-based Evaluation", x = .9, y = .375)

# Title
grid.text("QMER Statistical Thinking Model", x = .5, y = .9, 
          gp = gpar(fontsize = 25))

