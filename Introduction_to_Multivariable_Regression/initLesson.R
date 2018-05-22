# For compatibility with 2.2.21
.get_course_path <- function(){
  tryCatch(swirl:::swirl_courses_dir(),
           error = function(c) {file.path(find.package("swirl"),"Courses")}
  )
}

local({
  fname <- file.path(.get_course_path(),
  	"C11_Stats_supplement", "Introduction_to_Multivariable_Regression", "elimination.R")
  #file.copy(fname, "elimination.R")
  file.edit(fname)
})
elimation <- file.path(.get_course_path(),
  	"C11_Stats_supplement", "Introduction_to_Multivariable_Regression", "elimination.R")
source(elimation)
galton <- read.csv(file.path(.get_course_path(),
	"C11_Stats_supplement", "Introduction_to_Multivariable_Regression", "galton.csv"))
trees <- datasets::trees
trees <- cbind(Constant=rep(1.0, nrow(trees)), trees)
