connection: "lookerdata_publicdata_standard_sql"

include: "/views/*.view.lkml"                # include all views in the views/ folder in this project


#Day one
explore: one {
  description: "https://adventofcode.com/2020/day/1"
  join: one_self {
    relationship: many_to_one
    from: one
    type: cross
  }
  join: one_self_again {
    #This is for part 2 of Day 1.
    relationship: many_to_one
    from: one
    type: cross
  }
}

#Day two
explore: two {
  description: "https://adventofcode.com/2020/day/2"
}
