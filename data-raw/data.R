library(tidyverse)
educ <- data.frame(
  title = c("Ph.D. in Physics", "Master of Science"),
  location = c("Zürich, Switzerland", "Zürich, Switzerland"),
  date = c("1905", "1896 - 1900"),
  description = c("University of Zürich", "ETH")
)

pub <- data.frame(
  title = c(
    "On the Electrodynamics of Moving Bodies",
    "On the motion of small particles suspended in liquids at rest required by the molecular-kinetic theory of heat"
  ),
  location = c("Annalen der Physik", "Annalen der Physik"),
  date = c("September 1905", "July 1905")
)

work <- data.frame(
  title = c("Technical Assistant", "Junior Professor", "Associate Professor"),
  location = c("Bern, Switzerland", "Bern, Switzerland", "Zürich, Switzerland"),
  start = as.Date(c("1902-01-01", "1908-01-01", "1909-01-01")),
  end = as.Date(c("1908-01-01", "1909-01-01", "1911-01-01")),
  description = c("Federal Patent Office", "University of Bern", "University of Zürich")
)

award <- data.frame(
  title = c("Nobel Prize in Physics"),
  location = c("Stockholm, Sweden"),
  date = c("1921"),
  description = c("For his services to"),
  detail1 = c("Theoretical Physics"),
  detail2 = c("Discovery of the law of the photoelectric effect")
)

skill <- data.frame(
  title = c("Programming", "Languages", "Tools"),
  description = c("Python, C++, Fortran", "German (Native), English (Fluent), French (Intermediate)", "Typst, Quarto, LaTeX")
)

test <- tribble(
  ~with, ~where, ~what, ~when, ~description, ~details,
  ## PhD
  "Western Michigan University",
  "Kalamazoo, Michigan",
  "Ph.D. in Science Eduation: Biological Sciences",
  "2017-2024",
  "Dissertation committee chaired by Dr. William Cobern, with Dr. Betty Adams and Dr. Ya Zhang",
  list(
    thesis = "Dissertation -- Beyond Average Effects in Education Research: Explaining heterogeneity of concept mapping research in science education through meta-regression modeling"
  ),
  ## Masters
  "Western Michigan University",
  "Kalamazoo, Michigan",
  "M.A. in Biological Sciences",
  "2017-2021",
  "Concurrently enrolled with Ph.D. Science Education Program",
  list(
    thesis = "Master's Thesis Project -- Engineered Flagellin Disulfide Variants in Salmonella typhimurium. Advised by Dr. Brian Tripp"
  ),
  ## Bachelors
  "Cornerstone University",
  "Grand Rapids, Michigan",
  "B.S. in Biology-Health Sciences - minors in Chemistry, Ancient (History) Studies",
  "2011-2015",
  NA,
  list(
    thesis = "Senior Thesis Project -- Meta-study of the neural crest as a mechanism for vertebrate phenotypic diversity",
    internship = "Internship: Hesse Memorial Archaelogical Laboratory, practicing zooarcheology with ancient animal bone remains"
  )
)

#-------------------------------------------------------------------------------
# Save data
#-------------------------------------------------------------------------------
usethis::use_data(educ, pub, work, award, skill, overwrite = TRUE)
