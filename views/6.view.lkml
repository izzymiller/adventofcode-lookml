# --- Day 6: Custom Customs ---
# As your flight approaches the regional airport where you'll switch to a much larger plane, customs declaration forms are distributed to the passengers.

# The form asks a series of 26 yes-or-no questions marked a through z. All you need to do is identify the questions for which anyone in your group answers "yes". Since your group is just you, this doesn't take very long.

# However, the person sitting next to you seems to be experiencing a language barrier and asks if you can help. For each of the people in their group, you write down the questions for which they answer "yes", one per line. For example:

# abcx
# abcy
# abcz
# In this group, there are 6 questions to which anyone answered "yes": a, b, c, x, y, and z. (Duplicate answers to the same question don't count extra; each question counts at most once.)

# Another group asks for your help, then another, and eventually you've collected answers from every group on the plane (your puzzle input). Each group's answers are separated by a blank line, and within each group, each person's answers are on a single line. For example:

# abc

# a
# b
# c

# ab
# ac

# a
# a
# a
# a

# b
# This list represents answers from five groups:

# The first group contains one person who answered "yes" to 3 questions: a, b, and c.
# The second group contains three people; combined, they answered "yes" to 3 questions: a, b, and c.
# The third group contains two people; combined, they answered "yes" to 3 questions: a, b, and c.
# The fourth group contains four people; combined, they answered "yes" to only 1 question, a.
# The last group contains one person who answered "yes" to only 1 question, b.
# In this example, the sum of these counts is 3 + 3 + 3 + 1 + 1 = 11.

# For each group, count the number of questions to which anyone answered "yes". What is the sum of those counts?
# data: https://adventofcode.com/2020/day/6/input

view: six {
  sql_table_name: lookerdata.adventofcode20.6 ;;
  # I'm stumped on how to make this one work in csv-sql. It's hard because of the line break grouping.
  # FWIW, I copied and pasted the input to a new text document, then replaced the new lines with -newline- using sed
  # Then I uploaded that to BQ— You could copy and paste that into a sheet, add the rownum index, and then into csv-sql
  #Bit more complex though. good challenge!

  #In the uploaded table— I did the same thing here as with exercise 4, where I've uploaded a table that includes "-newline-" on rows where there was a blank line in the raw data. This should allow you to identify/extract the groups.
  # There is a rownum column that preserves the original order of the raw data, which is critical to maintain as the grouping is important. order by it, ascending.

  dimension: rownum {
    type: number
    sql: ${TABLE}.rownum ;;
  }

  dimension: answers {
    type: string
    sql: ${TABLE}.answers ;;
    order_by_field: rownum
  }
}



#Part Two: Once you've completed the first part, submit your work at https://adventofcode.com/2020/day/6 and get Part 2.
