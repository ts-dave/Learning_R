#votes <- read.table(
# "votes.csv", 
#  sep = ",", 
#  header = TRUE
#)
votes <- read.csv("votes.csv")

#selecting cells using vector notation
votes[2,2]

#selection cells using namespace
votes$poll[2]

#selecting columns using namespace
votes$candidate
votes$poll
votes$mail

#selecting columns using vector notation
votes[1]
votes[2]
votes[3]

#selecting rows using vector notation
votes[1,]
votes[2,]
votes[3,]

#adding columns in the table
sum(votes$poll)

#adding rows
votes$poll + votes$mail

#adding rows to form a new vector
votes$total <- votes$poll + votes$mail

#writing to a new file called totals
#remove [row.names = FALSE] from totals data
write.csv(votes, "totals.csv", row.names = FALSE)

