# --- Day 7: Handy Haversacks ---
# You land at the regional airport in time for your next flight. In fact, it looks like you'll even have time to grab some food: all flights are currently delayed due to issues in luggage processing.

# Due to recent aviation regulations, many rules (your puzzle input) are being enforced about bags and their contents; bags must be color-coded and must contain specific quantities of other color-coded bags. Apparently, nobody responsible for these regulations considered how long they would take to enforce!

# For example, consider the following rules:

# light red bags contain 1 bright white bag, 2 muted yellow bags.
# dark orange bags contain 3 bright white bags, 4 muted yellow bags.
# bright white bags contain 1 shiny gold bag.
# muted yellow bags contain 2 shiny gold bags, 9 faded blue bags.
# shiny gold bags contain 1 dark olive bag, 2 vibrant plum bags.
# dark olive bags contain 3 faded blue bags, 4 dotted black bags.
# vibrant plum bags contain 5 faded blue bags, 6 dotted black bags.
# faded blue bags contain no other bags.
# dotted black bags contain no other bags.
# These rules specify the required contents for 9 bag types. In this example, every faded blue bag is empty, every vibrant plum bag contains 11 bags (5 faded blue and 6 dotted black), and so on.

# You have a shiny gold bag. If you wanted to carry it in at least one other bag, how many different bag colors would be valid for the outermost bag? (In other words: how many colors can, eventually, contain at least one shiny gold bag?)

# In the above rules, the following options would be available to you:

# A bright white bag, which can hold your shiny gold bag directly.
# A muted yellow bag, which can hold your shiny gold bag directly, plus some other bags.
# A dark orange bag, which can hold bright white and muted yellow bags, either of which could then hold your shiny gold bag.
# A light red bag, which can hold bright white and muted yellow bags, either of which could then hold your shiny gold bag.
# So, in this example, the number of bag colors that can eventually contain at least one shiny gold bag is 4.

# How many bag colors can eventually contain at least one shiny gold bag? (The list of rules is quite long; make sure you get all of it.)

view: seven {
  #This one's pretty easy to use https://csv-sql.web.app/ for, since it's just one column,
  # but that column has COMMAS in it! Disaster. Easy fix— Just copy and paste into a g sheet,
  # then download as csv to wrap each line in quotes. upload that csv to csv-sql and you're good to go.
  derived_table: {
    sql: SELECT
  'plaid fuchsia bags contain 5 light violet bags, 1 light yellow bag.' AS rule
UNION ALL
SELECT
  'striped aqua bags contain 2 striped teal bags.' AS rule
UNION ALL
SELECT
  'clear coral bags contain 2 plaid green bags, 5 mirrored gold bags.' AS rule
UNION ALL
SELECT
  'dull tan bags contain 4 faded blue bags, 3 faded olive bags, 5 dull salmon bags.' AS rule
UNION ALL
SELECT
  'plaid green bags contain 3 faded green bags.' AS rule
UNION ALL
SELECT
  'light tomato bags contain 1 drab chartreuse bag, 1 dotted tomato bag, 3 striped red bags, 2 vibrant violet bags.' AS rule
UNION ALL
SELECT
  'dim tomato bags contain 4 striped gold bags, 5 bright lavender bags, 1 pale beige bag, 4 pale tan bags.' AS rule
UNION ALL
SELECT
  'vibrant green bags contain 4 faded teal bags.' AS rule
UNION ALL
SELECT
  'shiny crimson bags contain 2 dull green bags.' AS rule
UNION ALL
SELECT
  'vibrant black bags contain 5 dark beige bags, 3 dark bronze bags.' AS rule
UNION ALL
SELECT
  'light tan bags contain 1 striped tomato bag.' AS rule
UNION ALL
SELECT
  'vibrant teal bags contain 1 shiny silver bag.' AS rule
UNION ALL
SELECT
  'pale chartreuse bags contain 2 dotted plum bags.' AS rule
UNION ALL
SELECT
  'plaid coral bags contain 2 pale green bags, 2 faded tomato bags, 2 dark salmon bags, 1 vibrant magenta bag.' AS rule
UNION ALL
SELECT
  'dull gray bags contain 1 dark tan bag, 3 dotted tan bags.' AS rule
UNION ALL
SELECT
  'muted gray bags contain 5 bright indigo bags, 5 dotted purple bags.' AS rule
UNION ALL
SELECT
  'vibrant red bags contain 4 bright tomato bags, 4 shiny orange bags.' AS rule
UNION ALL
SELECT
  'faded tan bags contain 1 dull crimson bag, 5 faded red bags.' AS rule
UNION ALL
SELECT
  'pale magenta bags contain 3 posh chartreuse bags, 4 vibrant purple bags.' AS rule
UNION ALL
SELECT
  'shiny gray bags contain 2 wavy purple bags.' AS rule
UNION ALL
SELECT
  'light crimson bags contain 5 clear teal bags.' AS rule
UNION ALL
SELECT
  'striped turquoise bags contain 3 pale tomato bags, 2 posh teal bags.' AS rule
UNION ALL
SELECT
  'striped purple bags contain 4 dark silver bags, 4 vibrant gray bags, 2 dim bronze bags, 2 clear aqua bags.' AS rule
UNION ALL
SELECT
  'muted magenta bags contain 4 striped tomato bags.' AS rule
UNION ALL
SELECT
  'light teal bags contain 2 faded brown bags, 2 posh purple bags, 1 faded olive bag.' AS rule
UNION ALL
SELECT
  'clear cyan bags contain 1 clear coral bag, 5 clear aqua bags.' AS rule
UNION ALL
SELECT
  'dull cyan bags contain 5 wavy crimson bags, 1 pale orange bag.' AS rule
UNION ALL
SELECT
  'shiny tan bags contain 2 bright red bags, 4 plaid cyan bags.' AS rule
UNION ALL
SELECT
  'light brown bags contain 3 dim yellow bags, 4 dull orange bags, 1 vibrant yellow bag.' AS rule
UNION ALL
SELECT
  'pale tan bags contain 2 striped orange bags, 5 dull plum bags.' AS rule
UNION ALL
SELECT
  'wavy salmon bags contain 2 dark blue bags, 5 dim plum bags.' AS rule
UNION ALL
SELECT
  'mirrored cyan bags contain 2 plaid turquoise bags, 5 dull plum bags, 3 muted indigo bags, 2 plaid white bags.' AS rule
UNION ALL
SELECT
  'dark aqua bags contain 3 bright red bags, 2 wavy purple bags, 2 plaid tan bags.' AS rule
UNION ALL
SELECT
  'wavy purple bags contain 5 wavy brown bags.' AS rule
UNION ALL
SELECT
  'clear magenta bags contain 4 muted green bags, 3 dull cyan bags, 4 striped teal bags, 2 faded blue bags.' AS rule
UNION ALL
SELECT
  'bright red bags contain 5 vibrant tomato bags, 2 dull orange bags.' AS rule
UNION ALL
SELECT
  'pale purple bags contain 3 plaid turquoise bags, 4 light tan bags, 1 faded black bag, 5 light yellow bags.' AS rule
UNION ALL
SELECT
  'bright orange bags contain 1 mirrored orange bag, 2 faded bronze bags, 1 wavy turquoise bag, 1 bright yellow bag.' AS rule
UNION ALL
SELECT
  'faded lavender bags contain 1 plaid brown bag.' AS rule
UNION ALL
SELECT
  'dark salmon bags contain 3 dotted crimson bags, 1 posh bronze bag.' AS rule
UNION ALL
SELECT
  'mirrored coral bags contain 3 dark red bags, 1 dull fuchsia bag, 2 drab magenta bags, 4 dull indigo bags.' AS rule
UNION ALL
SELECT
  'clear black bags contain 5 mirrored salmon bags, 3 drab gold bags, 3 muted fuchsia bags.' AS rule
UNION ALL
SELECT
  'faded fuchsia bags contain 1 shiny silver bag, 2 posh orange bags, 5 plaid bronze bags.' AS rule
UNION ALL
SELECT
  'dotted red bags contain 4 faded yellow bags, 5 dull brown bags, 3 clear red bags.' AS rule
UNION ALL
SELECT
  'light purple bags contain 2 plaid magenta bags, 3 vibrant coral bags, 2 wavy black bags.' AS rule
UNION ALL
SELECT
  'faded beige bags contain no other bags.' AS rule
UNION ALL
SELECT
  'dull fuchsia bags contain 3 dim lavender bags, 1 dull aqua bag, 2 pale fuchsia bags.' AS rule
UNION ALL
SELECT
  'wavy olive bags contain 5 dotted cyan bags, 1 dull lime bag.' AS rule
UNION ALL
SELECT
  'dim teal bags contain 1 dull green bag.' AS rule
UNION ALL
SELECT
  'dull orange bags contain 5 striped tomato bags, 5 drab blue bags, 5 faded blue bags, 2 pale brown bags.' AS rule
UNION ALL
SELECT
  'muted brown bags contain 3 dotted orange bags, 1 bright tan bag.' AS rule
UNION ALL
SELECT
  'vibrant coral bags contain 2 wavy turquoise bags.' AS rule
UNION ALL
SELECT
  'clear aqua bags contain 5 posh bronze bags, 5 dim orange bags, 5 posh chartreuse bags.' AS rule
UNION ALL
SELECT
  'dull plum bags contain 4 drab tan bags.' AS rule
UNION ALL
SELECT
  'wavy tomato bags contain 4 wavy cyan bags, 1 bright silver bag, 3 dotted gray bags, 1 dark tomato bag.' AS rule
UNION ALL
SELECT
  'shiny fuchsia bags contain 1 dotted silver bag, 5 dull lime bags, 3 drab teal bags.' AS rule
UNION ALL
SELECT
  'pale fuchsia bags contain 3 pale beige bags.' AS rule
UNION ALL
SELECT
  'plaid plum bags contain 4 dotted plum bags, 1 mirrored brown bag, 3 dim yellow bags, 2 vibrant bronze bags.' AS rule
UNION ALL
SELECT
  'posh green bags contain 5 plaid indigo bags, 1 wavy red bag, 5 dim indigo bags, 4 wavy indigo bags.' AS rule
UNION ALL
SELECT
  'muted aqua bags contain 3 bright tan bags, 3 dull yellow bags, 1 faded blue bag.' AS rule
UNION ALL
SELECT
  'mirrored white bags contain 5 dark coral bags, 1 plaid red bag, 4 dull violet bags, 5 clear gray bags.' AS rule
UNION ALL
SELECT
  'dotted aqua bags contain 4 drab aqua bags, 3 faded tomato bags.' AS rule
UNION ALL
SELECT
  'bright indigo bags contain 4 faded tan bags, 3 clear turquoise bags, 1 plaid indigo bag, 4 bright gray bags.' AS rule
UNION ALL
SELECT
  'posh silver bags contain 5 striped red bags, 3 faded blue bags, 3 dim plum bags, 3 vibrant beige bags.' AS rule
UNION ALL
SELECT
  'bright olive bags contain 3 dull silver bags, 5 drab tomato bags.' AS rule
UNION ALL
SELECT
  'muted beige bags contain 1 drab crimson bag.' AS rule
UNION ALL
SELECT
  'shiny beige bags contain 3 clear blue bags.' AS rule
UNION ALL
SELECT
  'wavy brown bags contain 2 striped coral bags, 2 light purple bags.' AS rule
UNION ALL
SELECT
  'wavy black bags contain 4 faded beige bags, 2 striped red bags, 2 pale brown bags, 3 dull yellow bags.' AS rule
UNION ALL
SELECT
  'faded salmon bags contain 1 light indigo bag, 5 plaid cyan bags, 2 pale salmon bags.' AS rule
UNION ALL
SELECT
  'dark gold bags contain 1 mirrored plum bag, 2 dark tomato bags, 5 dull green bags, 2 light lime bags.' AS rule
UNION ALL
SELECT
  'mirrored lavender bags contain 5 muted brown bags, 1 shiny blue bag, 5 dull blue bags, 3 wavy indigo bags.' AS rule
UNION ALL
SELECT
  'wavy beige bags contain 3 mirrored purple bags, 3 posh yellow bags, 4 plaid green bags.' AS rule
UNION ALL
SELECT
  'striped fuchsia bags contain 5 drab bronze bags, 4 posh tomato bags, 1 drab maroon bag, 1 dim beige bag.' AS rule
UNION ALL
SELECT
  'faded blue bags contain 1 striped tomato bag, 3 dark olive bags, 2 drab tan bags.' AS rule
UNION ALL
SELECT
  'drab gray bags contain 1 posh teal bag.' AS rule
UNION ALL
SELECT
  'dim cyan bags contain 4 dark fuchsia bags, 3 wavy maroon bags, 5 posh silver bags, 4 posh chartreuse bags.' AS rule
UNION ALL
SELECT
  'dotted purple bags contain 3 wavy white bags.' AS rule
UNION ALL
SELECT
  'shiny brown bags contain 5 light silver bags, 4 light turquoise bags, 4 posh bronze bags.' AS rule
UNION ALL
SELECT
  'vibrant tomato bags contain 3 dotted cyan bags, 3 posh teal bags, 1 clear magenta bag, 5 dull lime bags.' AS rule
UNION ALL
SELECT
  'dark bronze bags contain 2 vibrant maroon bags, 2 mirrored olive bags.' AS rule
UNION ALL
SELECT
  'wavy silver bags contain 4 striped magenta bags, 3 dim fuchsia bags.' AS rule
UNION ALL
SELECT
  'striped yellow bags contain 5 faded black bags, 5 light beige bags, 1 vibrant beige bag, 2 mirrored beige bags.' AS rule
UNION ALL
SELECT
  'faded chartreuse bags contain 4 clear gray bags, 5 dotted gray bags.' AS rule
UNION ALL
SELECT
  'faded tomato bags contain 5 faded gray bags, 4 faded fuchsia bags, 3 drab teal bags.' AS rule
UNION ALL
SELECT
  'dull gold bags contain 1 dark plum bag, 4 striped black bags.' AS rule
UNION ALL
SELECT
  'muted turquoise bags contain 1 mirrored bronze bag, 5 shiny aqua bags, 1 clear plum bag.' AS rule
UNION ALL
SELECT
  'dotted lime bags contain 1 dark black bag, 5 pale brown bags.' AS rule
UNION ALL
SELECT
  'vibrant violet bags contain 5 faded lime bags, 1 pale fuchsia bag, 5 dull plum bags.' AS rule
UNION ALL
SELECT
  'faded black bags contain 2 striped teal bags, 5 faded beige bags, 4 wavy black bags, 1 striped lavender bag.' AS rule
UNION ALL
SELECT
  'drab teal bags contain 1 clear gold bag, 4 muted crimson bags, 1 light teal bag.' AS rule
UNION ALL
SELECT
  'dull purple bags contain 1 posh crimson bag, 2 clear blue bags.' AS rule
UNION ALL
SELECT
  'dotted teal bags contain 2 dark tan bags.' AS rule
UNION ALL
SELECT
  'dark red bags contain 3 dotted cyan bags, 3 posh red bags, 2 bright red bags, 3 faded magenta bags.' AS rule
UNION ALL
SELECT
  'light black bags contain 5 dull yellow bags.' AS rule
UNION ALL
SELECT
  'light salmon bags contain 3 faded beige bags.' AS rule
UNION ALL
SELECT
  'dull brown bags contain 1 light indigo bag, 4 mirrored yellow bags, 5 faded silver bags.' AS rule
UNION ALL
SELECT
  'dark black bags contain 5 dull yellow bags, 3 dull lime bags, 5 posh aqua bags.' AS rule
UNION ALL
SELECT
  'faded crimson bags contain 3 light fuchsia bags, 5 muted chartreuse bags.' AS rule
UNION ALL
SELECT
  'drab yellow bags contain 5 drab indigo bags, 2 shiny brown bags, 4 muted lime bags.' AS rule
UNION ALL
SELECT
  'muted tomato bags contain 3 posh salmon bags, 2 plaid indigo bags, 5 striped aqua bags.' AS rule
UNION ALL
SELECT
  'pale teal bags contain 2 muted red bags, 5 mirrored brown bags, 4 mirrored tan bags.' AS rule
UNION ALL
SELECT
  'posh violet bags contain 4 posh tomato bags.' AS rule
UNION ALL
SELECT
  'dim plum bags contain 1 faded magenta bag, 5 drab silver bags, 1 pale brown bag.' AS rule
UNION ALL
SELECT
  'light fuchsia bags contain 2 dotted silver bags, 3 dotted lavender bags, 3 shiny gold bags, 5 clear magenta bags.' AS rule
UNION ALL
SELECT
  'vibrant orange bags contain 5 shiny blue bags, 5 dull maroon bags.' AS rule
UNION ALL
SELECT
  'shiny white bags contain 5 mirrored yellow bags, 2 pale fuchsia bags, 4 shiny turquoise bags.' AS rule
UNION ALL
SELECT
  'drab green bags contain 1 mirrored lavender bag, 3 posh tan bags.' AS rule
UNION ALL
SELECT
  'faded silver bags contain 5 vibrant coral bags, 3 striped lavender bags, 4 dotted cyan bags, 5 plaid turquoise bags.' AS rule
UNION ALL
SELECT
  'faded gold bags contain 4 faded magenta bags.' AS rule
UNION ALL
SELECT
  'dark coral bags contain 3 light maroon bags, 1 drab silver bag.' AS rule
UNION ALL
SELECT
  'striped olive bags contain 4 dotted maroon bags, 3 wavy brown bags, 1 wavy crimson bag, 5 shiny silver bags.' AS rule
UNION ALL
SELECT
  'wavy lavender bags contain 3 mirrored yellow bags, 5 shiny crimson bags, 4 dark indigo bags.' AS rule
UNION ALL
SELECT
  'bright fuchsia bags contain 2 vibrant green bags, 5 drab blue bags.' AS rule
UNION ALL
SELECT
  'dotted turquoise bags contain 3 striped red bags.' AS rule
UNION ALL
SELECT
  'drab black bags contain 1 faded tan bag.' AS rule
UNION ALL
SELECT
  'pale silver bags contain 1 faded yellow bag, 1 drab tan bag, 5 muted salmon bags, 3 shiny white bags.' AS rule
UNION ALL
SELECT
  'striped magenta bags contain 4 dark turquoise bags, 4 shiny blue bags, 3 shiny crimson bags.' AS rule
UNION ALL
SELECT
  'dotted beige bags contain 2 mirrored black bags, 2 faded brown bags, 1 bright red bag, 2 clear coral bags.' AS rule
UNION ALL
SELECT
  'clear maroon bags contain 5 bright bronze bags.' AS rule
UNION ALL
SELECT
  'shiny olive bags contain 2 dull blue bags.' AS rule
UNION ALL
SELECT
  'pale violet bags contain 1 light purple bag, 1 pale tomato bag, 4 plaid aqua bags, 4 light magenta bags.' AS rule
UNION ALL
SELECT
  'dotted white bags contain 3 bright purple bags, 4 dull orange bags, 2 plaid salmon bags.' AS rule
UNION ALL
SELECT
  'plaid blue bags contain 5 faded blue bags, 4 muted green bags, 4 bright bronze bags.' AS rule
UNION ALL
SELECT
  'mirrored lime bags contain 1 faded green bag, 4 striped black bags, 1 mirrored purple bag.' AS rule
UNION ALL
SELECT
  'wavy violet bags contain 1 muted bronze bag.' AS rule
UNION ALL
SELECT
  'light silver bags contain 2 dull cyan bags, 1 drab tan bag.' AS rule
UNION ALL
SELECT
  'dark tomato bags contain 1 vibrant tomato bag, 1 striped tomato bag.' AS rule
UNION ALL
SELECT
  'wavy teal bags contain 5 wavy red bags, 2 drab brown bags, 1 posh olive bag.' AS rule
UNION ALL
SELECT
  'dim green bags contain 2 striped teal bags, 1 drab blue bag.' AS rule
UNION ALL
SELECT
  'wavy crimson bags contain no other bags.' AS rule
UNION ALL
SELECT
  'mirrored aqua bags contain 3 posh tan bags, 5 muted teal bags, 3 light violet bags.' AS rule
UNION ALL
SELECT
  'light cyan bags contain 4 vibrant chartreuse bags, 1 faded lime bag, 2 drab purple bags, 2 shiny white bags.' AS rule
UNION ALL
SELECT
  'shiny gold bags contain 4 drab blue bags, 4 posh purple bags, 2 drab silver bags, 4 wavy turquoise bags.' AS rule
UNION ALL
SELECT
  'plaid chartreuse bags contain 5 mirrored olive bags, 2 vibrant orange bags, 2 shiny purple bags.' AS rule
UNION ALL
SELECT
  'dim yellow bags contain 1 faded green bag, 4 wavy fuchsia bags.' AS rule
UNION ALL
SELECT
  'pale turquoise bags contain 1 drab turquoise bag.' AS rule
UNION ALL
SELECT
  'clear red bags contain 1 pale bronze bag, 4 drab tan bags.' AS rule
UNION ALL
SELECT
  'shiny teal bags contain 3 bright aqua bags.' AS rule
UNION ALL
SELECT
  'dotted tomato bags contain 3 dotted orange bags, 5 light silver bags, 2 dull green bags, 5 wavy chartreuse bags.' AS rule
UNION ALL
SELECT
  'striped tan bags contain 1 light turquoise bag, 2 dotted salmon bags, 4 shiny orange bags, 2 clear red bags.' AS rule
UNION ALL
SELECT
  'dim bronze bags contain 1 wavy gold bag.' AS rule
UNION ALL
SELECT
  'posh crimson bags contain 4 posh aqua bags.' AS rule
UNION ALL
SELECT
  'plaid salmon bags contain 2 dull tan bags.' AS rule
UNION ALL
SELECT
  'mirrored salmon bags contain 2 muted aqua bags, 5 muted salmon bags.' AS rule
UNION ALL
SELECT
  'striped blue bags contain 3 wavy white bags, 4 drab blue bags, 1 drab chartreuse bag, 4 dull orange bags.' AS rule
UNION ALL
SELECT
  'pale red bags contain 1 striped red bag.' AS rule
UNION ALL
SELECT
  'muted black bags contain 4 faded gold bags.' AS rule
UNION ALL
SELECT
  'clear orange bags contain 2 faded red bags.' AS rule
UNION ALL
SELECT
  'mirrored maroon bags contain 2 plaid tan bags.' AS rule
UNION ALL
SELECT
  'dull aqua bags contain 4 pale gold bags.' AS rule
UNION ALL
SELECT
  'posh coral bags contain 3 striped gold bags.' AS rule
UNION ALL
SELECT
  'posh purple bags contain 4 pale orange bags, 5 dull salmon bags, 2 striped teal bags.' AS rule
UNION ALL
SELECT
  'muted tan bags contain 3 clear coral bags, 4 pale salmon bags.' AS rule
UNION ALL
SELECT
  'mirrored orange bags contain 5 pale bronze bags.' AS rule
UNION ALL
SELECT
  'striped teal bags contain no other bags.' AS rule
UNION ALL
SELECT
  'dark blue bags contain no other bags.' AS rule
UNION ALL
SELECT
  'clear bronze bags contain 4 vibrant gray bags.' AS rule
UNION ALL
SELECT
  'light magenta bags contain 4 dim green bags.' AS rule
UNION ALL
SELECT
  'drab coral bags contain 5 dotted chartreuse bags, 4 vibrant crimson bags, 2 muted green bags.' AS rule
UNION ALL
SELECT
  'drab brown bags contain 2 dull tomato bags, 5 vibrant bronze bags.' AS rule
UNION ALL
SELECT
  'bright coral bags contain 1 posh plum bag, 1 wavy gold bag, 2 drab lavender bags, 2 muted lavender bags.' AS rule
UNION ALL
SELECT
  'dim white bags contain 4 shiny aqua bags.' AS rule
UNION ALL
SELECT
  'plaid bronze bags contain 4 drab tan bags, 3 plaid salmon bags, 4 striped coral bags.' AS rule
UNION ALL
SELECT
  'faded teal bags contain 1 vibrant white bag, 5 wavy purple bags.' AS rule
UNION ALL
SELECT
  'drab turquoise bags contain 3 pale tomato bags, 1 bright indigo bag.' AS rule
UNION ALL
SELECT
  'muted white bags contain 3 striped brown bags, 1 light blue bag.' AS rule
UNION ALL
SELECT
  'clear crimson bags contain 1 dark magenta bag.' AS rule
UNION ALL
SELECT
  'shiny magenta bags contain 4 wavy tomato bags, 4 shiny bronze bags, 4 vibrant coral bags, 5 bright lime bags.' AS rule
UNION ALL
SELECT
  'bright magenta bags contain 3 wavy brown bags.' AS rule
UNION ALL
SELECT
  'bright tomato bags contain 4 vibrant fuchsia bags, 1 clear aqua bag.' AS rule
UNION ALL
SELECT
  'wavy coral bags contain 4 striped gold bags, 1 light purple bag, 4 vibrant purple bags.' AS rule
UNION ALL
SELECT
  'muted indigo bags contain 2 posh purple bags, 2 light gold bags, 3 striped lavender bags.' AS rule
UNION ALL
SELECT
  'clear violet bags contain 2 wavy cyan bags, 5 pale brown bags, 4 faded magenta bags, 2 bright purple bags.' AS rule
UNION ALL
SELECT
  'dull white bags contain 4 wavy olive bags, 3 mirrored olive bags, 3 faded magenta bags, 4 dull green bags.' AS rule
UNION ALL
SELECT
  'dull magenta bags contain 4 dim beige bags.' AS rule
UNION ALL
SELECT
  'dotted blue bags contain 4 posh beige bags, 1 pale purple bag, 4 shiny red bags.' AS rule
UNION ALL
SELECT
  'dotted lavender bags contain 3 posh purple bags.' AS rule
UNION ALL
SELECT
  'light white bags contain 4 striped lavender bags.' AS rule
UNION ALL
SELECT
  'dark turquoise bags contain 5 light teal bags.' AS rule
UNION ALL
SELECT
  'faded turquoise bags contain 5 striped violet bags, 4 dull crimson bags, 2 dim purple bags, 1 light silver bag.' AS rule
UNION ALL
SELECT
  'striped chartreuse bags contain 3 pale white bags, 3 dim fuchsia bags.' AS rule
UNION ALL
SELECT
  'pale gold bags contain 2 clear teal bags, 3 wavy turquoise bags, 5 light gold bags.' AS rule
UNION ALL
SELECT
  'posh blue bags contain 4 muted yellow bags, 1 dull crimson bag, 3 wavy violet bags, 5 mirrored fuchsia bags.' AS rule
UNION ALL
SELECT
  'dotted gray bags contain 3 wavy fuchsia bags.' AS rule
UNION ALL
SELECT
  'plaid magenta bags contain 3 plaid black bags.' AS rule
UNION ALL
SELECT
  'pale beige bags contain 1 pale white bag, 2 dim salmon bags, 5 mirrored gold bags.' AS rule
UNION ALL
SELECT
  'striped bronze bags contain 2 dull yellow bags, 2 dark blue bags.' AS rule
UNION ALL
SELECT
  'dark lime bags contain 2 pale magenta bags, 4 clear cyan bags.' AS rule
UNION ALL
SELECT
  'bright turquoise bags contain 2 light white bags, 3 plaid salmon bags, 2 clear aqua bags, 5 dull silver bags.' AS rule
UNION ALL
SELECT
  'posh salmon bags contain 1 drab turquoise bag.' AS rule
UNION ALL
SELECT
  'muted bronze bags contain 1 pale bronze bag, 3 clear maroon bags.' AS rule
UNION ALL
SELECT
  'faded coral bags contain 1 clear gray bag, 5 plaid gray bags, 3 bright silver bags, 4 posh yellow bags.' AS rule
UNION ALL
SELECT
  'mirrored gray bags contain 1 dark coral bag, 2 plaid blue bags, 4 mirrored coral bags, 1 mirrored olive bag.' AS rule
UNION ALL
SELECT
  'vibrant olive bags contain 5 pale chartreuse bags, 4 plaid green bags, 4 dark coral bags.' AS rule
UNION ALL
SELECT
  'dotted magenta bags contain 4 light chartreuse bags, 3 plaid indigo bags, 2 dull tan bags.' AS rule
UNION ALL
SELECT
  'light violet bags contain 2 muted green bags.' AS rule
UNION ALL
SELECT
  'dim fuchsia bags contain 5 dim tan bags, 5 faded black bags, 1 drab white bag.' AS rule
UNION ALL
SELECT
  'dotted black bags contain 3 bright gold bags, 2 faded gold bags.' AS rule
UNION ALL
SELECT
  'striped indigo bags contain 3 posh aqua bags.' AS rule
UNION ALL
SELECT
  'posh cyan bags contain 5 dull fuchsia bags.' AS rule
UNION ALL
SELECT
  'vibrant turquoise bags contain 2 muted chartreuse bags, 2 clear magenta bags, 5 drab chartreuse bags.' AS rule
UNION ALL
SELECT
  'mirrored magenta bags contain 1 dull lime bag.' AS rule
UNION ALL
SELECT
  'mirrored violet bags contain 2 posh magenta bags, 1 plaid white bag, 4 wavy turquoise bags, 5 dull salmon bags.' AS rule
UNION ALL
SELECT
  'pale tomato bags contain 4 wavy maroon bags, 3 clear aqua bags, 2 striped lavender bags.' AS rule
UNION ALL
SELECT
  'clear fuchsia bags contain 5 dark cyan bags, 1 plaid cyan bag.' AS rule
UNION ALL
SELECT
  'drab orange bags contain 3 mirrored purple bags, 1 striped orange bag.' AS rule
UNION ALL
SELECT
  'bright blue bags contain 1 bright cyan bag, 4 plaid green bags.' AS rule
UNION ALL
SELECT
  'muted chartreuse bags contain 4 faded beige bags, 3 faded green bags.' AS rule
UNION ALL
SELECT
  'plaid teal bags contain 2 mirrored orange bags, 5 plaid plum bags.' AS rule
UNION ALL
SELECT
  'light blue bags contain 4 faded silver bags, 3 light turquoise bags, 2 dim aqua bags, 5 posh silver bags.' AS rule
UNION ALL
SELECT
  'bright tan bags contain 4 striped coral bags, 1 dark fuchsia bag.' AS rule
UNION ALL
SELECT
  'shiny black bags contain 1 light green bag.' AS rule
UNION ALL
SELECT
  'plaid violet bags contain 1 faded magenta bag, 1 shiny bronze bag, 2 vibrant tomato bags.' AS rule
UNION ALL
SELECT
  'posh bronze bags contain 4 shiny gold bags, 1 bright yellow bag, 1 dull cyan bag.' AS rule
UNION ALL
SELECT
  'light red bags contain 3 dotted black bags, 5 pale coral bags.' AS rule
UNION ALL
SELECT
  'striped red bags contain no other bags.' AS rule
UNION ALL
SELECT
  'clear tan bags contain 2 faded brown bags, 1 bright brown bag, 2 bright gold bags.' AS rule
UNION ALL
SELECT
  'dull turquoise bags contain 5 mirrored yellow bags, 3 wavy red bags, 5 faded purple bags, 4 clear green bags.' AS rule
UNION ALL
SELECT
  'plaid yellow bags contain 4 dark red bags, 3 dull tomato bags, 5 faded violet bags.' AS rule
UNION ALL
SELECT
  'dotted gold bags contain 2 dotted lime bags, 2 faded gray bags, 3 clear coral bags.' AS rule
UNION ALL
SELECT
  'dull bronze bags contain 2 pale red bags, 3 dim indigo bags.' AS rule
UNION ALL
SELECT
  'shiny green bags contain 2 pale red bags, 1 mirrored silver bag, 4 bright lime bags, 5 pale indigo bags.' AS rule
UNION ALL
SELECT
  'bright black bags contain 2 striped plum bags, 1 clear black bag, 4 clear olive bags.' AS rule
UNION ALL
SELECT
  'bright gold bags contain 3 wavy cyan bags, 1 dotted magenta bag, 1 muted salmon bag, 4 light maroon bags.' AS rule
UNION ALL
SELECT
  'muted violet bags contain 5 wavy cyan bags, 4 dim tan bags, 1 posh gray bag, 5 vibrant brown bags.' AS rule
UNION ALL
SELECT
  'dim turquoise bags contain 1 pale tomato bag, 2 dotted silver bags, 5 mirrored coral bags.' AS rule
UNION ALL
SELECT
  'drab lime bags contain 5 shiny gold bags.' AS rule
UNION ALL
SELECT
  'wavy bronze bags contain 1 shiny red bag, 4 dotted cyan bags.' AS rule
UNION ALL
SELECT
  'vibrant purple bags contain 4 drab chartreuse bags, 4 dotted yellow bags.' AS rule
UNION ALL
SELECT
  'plaid purple bags contain 2 drab beige bags, 3 pale aqua bags, 3 muted magenta bags.' AS rule
UNION ALL
SELECT
  'faded brown bags contain 3 faded beige bags, 1 light chartreuse bag, 4 mirrored gold bags.' AS rule
UNION ALL
SELECT
  'pale lavender bags contain 1 mirrored tomato bag, 5 wavy maroon bags, 4 wavy lime bags.' AS rule
UNION ALL
SELECT
  'posh fuchsia bags contain 5 posh orange bags.' AS rule
UNION ALL
SELECT
  'drab fuchsia bags contain 1 dim plum bag, 1 dark coral bag, 3 dark red bags.' AS rule
UNION ALL
SELECT
  'striped crimson bags contain 5 pale orange bags, 5 faded beige bags, 5 faded brown bags.' AS rule
UNION ALL
SELECT
  'wavy lime bags contain 5 dull crimson bags.' AS rule
UNION ALL
SELECT
  'vibrant fuchsia bags contain 2 wavy white bags.' AS rule
UNION ALL
SELECT
  'vibrant plum bags contain 4 dim salmon bags, 2 plaid tan bags, 3 dull blue bags.' AS rule
UNION ALL
SELECT
  'muted cyan bags contain 3 striped beige bags.' AS rule
UNION ALL
SELECT
  'clear teal bags contain 2 wavy aqua bags, 3 dotted plum bags.' AS rule
UNION ALL
SELECT
  'dark maroon bags contain 1 light violet bag, 3 clear plum bags, 5 dotted fuchsia bags, 2 vibrant tomato bags.' AS rule
UNION ALL
SELECT
  'dull black bags contain 5 muted olive bags.' AS rule
UNION ALL
SELECT
  'light yellow bags contain 1 dull white bag, 5 dark aqua bags, 3 light purple bags, 4 dim green bags.' AS rule
UNION ALL
SELECT
  'pale bronze bags contain 1 wavy aqua bag.' AS rule
UNION ALL
SELECT
  'plaid red bags contain 5 pale plum bags, 2 muted brown bags, 2 dull bronze bags.' AS rule
UNION ALL
SELECT
  'dim gray bags contain 2 muted lavender bags.' AS rule
UNION ALL
SELECT
  'plaid gray bags contain 5 muted aqua bags.' AS rule
UNION ALL
SELECT
  'vibrant blue bags contain 4 light tomato bags, 1 plaid beige bag.' AS rule
UNION ALL
SELECT
  'clear blue bags contain 5 clear plum bags, 5 drab chartreuse bags.' AS rule
UNION ALL
SELECT
  'dotted green bags contain 5 plaid white bags, 5 vibrant turquoise bags, 1 drab silver bag.' AS rule
UNION ALL
SELECT
  'dull crimson bags contain 3 mirrored yellow bags, 3 posh red bags, 3 faded brown bags.' AS rule
UNION ALL
SELECT
  'striped maroon bags contain 1 shiny magenta bag, 2 light brown bags, 4 dull green bags.' AS rule
UNION ALL
SELECT
  'dark yellow bags contain 4 faded silver bags, 5 shiny lavender bags, 4 dim crimson bags, 2 plaid bronze bags.' AS rule
UNION ALL
SELECT
  'pale indigo bags contain 4 plaid salmon bags, 3 striped purple bags, 5 pale magenta bags, 1 dotted lime bag.' AS rule
UNION ALL
SELECT
  'faded maroon bags contain 5 light silver bags, 5 dim bronze bags, 4 faded tan bags, 5 striped crimson bags.' AS rule
UNION ALL
SELECT
  'pale green bags contain 4 vibrant white bags.' AS rule
UNION ALL
SELECT
  'muted maroon bags contain 2 light black bags, 2 mirrored fuchsia bags.' AS rule
UNION ALL
SELECT
  'pale yellow bags contain 2 dull bronze bags, 4 bright maroon bags, 5 wavy cyan bags, 4 dotted lavender bags.' AS rule
UNION ALL
SELECT
  'posh white bags contain 3 mirrored turquoise bags, 3 shiny aqua bags, 2 striped blue bags, 4 faded coral bags.' AS rule
UNION ALL
SELECT
  'wavy orange bags contain 4 wavy crimson bags, 2 bright brown bags, 3 bright magenta bags, 1 dotted gold bag.' AS rule
UNION ALL
SELECT
  'dark beige bags contain 3 muted white bags.' AS rule
UNION ALL
SELECT
  'dotted salmon bags contain 5 dim bronze bags, 5 striped orange bags.' AS rule
UNION ALL
SELECT
  'dotted fuchsia bags contain 1 striped red bag, 4 bright purple bags.' AS rule
UNION ALL
SELECT
  'pale cyan bags contain 1 dull blue bag.' AS rule
UNION ALL
SELECT
  'mirrored purple bags contain 5 light turquoise bags, 2 faded silver bags.' AS rule
UNION ALL
SELECT
  'drab violet bags contain 1 vibrant turquoise bag, 2 muted chartreuse bags, 5 pale bronze bags.' AS rule
UNION ALL
SELECT
  'wavy gray bags contain 1 dark purple bag, 4 muted green bags.' AS rule
UNION ALL
SELECT
  'wavy magenta bags contain 5 dark white bags, 4 vibrant black bags, 4 muted coral bags.' AS rule
UNION ALL
SELECT
  'pale plum bags contain 5 mirrored brown bags, 2 pale red bags.' AS rule
UNION ALL
SELECT
  'light plum bags contain 4 dark tomato bags, 4 wavy gold bags.' AS rule
UNION ALL
SELECT
  'pale aqua bags contain 1 striped red bag, 2 dim crimson bags, 3 mirrored orange bags.' AS rule
UNION ALL
SELECT
  'muted green bags contain 1 mirrored yellow bag.' AS rule
UNION ALL
SELECT
  'bright purple bags contain 5 light violet bags, 5 clear magenta bags, 1 faded lime bag.' AS rule
UNION ALL
SELECT
  'dark green bags contain 2 shiny aqua bags.' AS rule
UNION ALL
SELECT
  'dark orange bags contain 3 striped coral bags.' AS rule
UNION ALL
SELECT
  'dotted chartreuse bags contain 1 bright lime bag, 1 light olive bag, 4 muted red bags, 1 posh chartreuse bag.' AS rule
UNION ALL
SELECT
  'shiny chartreuse bags contain 1 bright salmon bag, 1 plaid indigo bag.' AS rule
UNION ALL
SELECT
  'clear gold bags contain 5 dull lime bags, 4 shiny brown bags, 1 dull plum bag, 4 dull salmon bags.' AS rule
UNION ALL
SELECT
  'shiny salmon bags contain 2 muted salmon bags, 2 dotted lavender bags.' AS rule
UNION ALL
SELECT
  'striped cyan bags contain 3 drab tan bags, 5 dotted cyan bags, 1 posh aqua bag, 1 plaid magenta bag.' AS rule
UNION ALL
SELECT
  'dark plum bags contain 1 clear orange bag, 2 striped black bags.' AS rule
UNION ALL
SELECT
  'vibrant magenta bags contain 1 plaid tan bag, 3 muted bronze bags, 3 bright chartreuse bags.' AS rule
UNION ALL
SELECT
  'clear beige bags contain 4 muted tan bags, 1 clear turquoise bag, 4 mirrored turquoise bags, 2 bright silver bags.' AS rule
UNION ALL
SELECT
  'drab lavender bags contain 1 dotted cyan bag, 4 clear plum bags.' AS rule
UNION ALL
SELECT
  'shiny coral bags contain 2 drab beige bags.' AS rule
UNION ALL
SELECT
  'light bronze bags contain 2 mirrored plum bags, 2 light black bags.' AS rule
UNION ALL
SELECT
  'vibrant yellow bags contain 4 vibrant coral bags, 5 mirrored olive bags, 1 light lime bag, 2 muted crimson bags.' AS rule
UNION ALL
SELECT
  'vibrant salmon bags contain 4 faded beige bags, 2 faded olive bags, 1 pale brown bag.' AS rule
UNION ALL
SELECT
  'dim tan bags contain 3 faded beige bags, 4 light tan bags.' AS rule
UNION ALL
SELECT
  'vibrant silver bags contain 1 dark tomato bag.' AS rule
UNION ALL
SELECT
  'striped salmon bags contain 5 faded brown bags.' AS rule
UNION ALL
SELECT
  'shiny purple bags contain 1 pale lavender bag, 3 plaid black bags, 1 drab indigo bag.' AS rule
UNION ALL
SELECT
  'light turquoise bags contain 4 dark silver bags.' AS rule
UNION ALL
SELECT
  'dark chartreuse bags contain 5 dark silver bags.' AS rule
UNION ALL
SELECT
  'mirrored indigo bags contain 5 mirrored gold bags, 1 dotted white bag.' AS rule
UNION ALL
SELECT
  'faded olive bags contain 1 pale brown bag, 3 faded beige bags, 2 light chartreuse bags.' AS rule
UNION ALL
SELECT
  'mirrored black bags contain 5 posh purple bags.' AS rule
UNION ALL
SELECT
  'clear green bags contain 2 dark magenta bags, 5 faded gold bags, 4 striped teal bags, 4 dark purple bags.' AS rule
UNION ALL
SELECT
  'bright beige bags contain 3 light olive bags, 3 wavy orange bags, 4 dotted lavender bags.' AS rule
UNION ALL
SELECT
  'plaid brown bags contain 4 dull lavender bags, 3 drab gold bags.' AS rule
UNION ALL
SELECT
  'vibrant chartreuse bags contain 1 bright bronze bag, 5 wavy crimson bags.' AS rule
UNION ALL
SELECT
  'posh aqua bags contain 5 muted green bags, 2 dim green bags, 1 dim crimson bag, 1 posh red bag.' AS rule
UNION ALL
SELECT
  'vibrant gold bags contain 5 wavy chartreuse bags, 3 drab gold bags, 2 striped blue bags, 3 posh yellow bags.' AS rule
UNION ALL
SELECT
  'posh tan bags contain 1 shiny chartreuse bag, 2 drab bronze bags.' AS rule
UNION ALL
SELECT
  'bright violet bags contain 1 pale lavender bag, 5 mirrored olive bags, 1 posh turquoise bag.' AS rule
UNION ALL
SELECT
  'faded lime bags contain 5 pale brown bags, 4 faded black bags, 1 faded beige bag.' AS rule
UNION ALL
SELECT
  'vibrant gray bags contain 3 vibrant chartreuse bags, 3 bright purple bags.' AS rule
UNION ALL
SELECT
  'dull silver bags contain 5 pale tomato bags, 5 shiny turquoise bags, 2 mirrored yellow bags.' AS rule
UNION ALL
SELECT
  'pale maroon bags contain 3 posh red bags, 1 plaid bronze bag, 5 striped red bags.' AS rule
UNION ALL
SELECT
  'dull lavender bags contain 4 vibrant violet bags, 1 bright yellow bag, 3 bright aqua bags.' AS rule
UNION ALL
SELECT
  'light aqua bags contain 5 vibrant turquoise bags.' AS rule
UNION ALL
SELECT
  'striped violet bags contain 4 drab silver bags, 3 posh magenta bags, 3 wavy turquoise bags.' AS rule
UNION ALL
SELECT
  'bright green bags contain 3 drab teal bags.' AS rule
UNION ALL
SELECT
  'light coral bags contain 5 dotted violet bags, 4 pale chartreuse bags.' AS rule
UNION ALL
SELECT
  'muted salmon bags contain 4 vibrant turquoise bags, 5 clear chartreuse bags, 1 dark fuchsia bag, 5 bright bronze bags.' AS rule
UNION ALL
SELECT
  'wavy cyan bags contain 4 dim orange bags, 1 dull orange bag, 4 plaid indigo bags, 4 dim salmon bags.' AS rule
UNION ALL
SELECT
  'shiny red bags contain 1 dim blue bag, 4 clear plum bags.' AS rule
UNION ALL
SELECT
  'vibrant beige bags contain 3 posh red bags.' AS rule
UNION ALL
SELECT
  'shiny maroon bags contain 3 striped tomato bags, 2 faded lime bags.' AS rule
UNION ALL
SELECT
  'shiny aqua bags contain 3 bright yellow bags.' AS rule
UNION ALL
SELECT
  'bright aqua bags contain 5 wavy lavender bags, 4 striped coral bags, 5 dotted cyan bags, 3 drab cyan bags.' AS rule
UNION ALL
SELECT
  'dim olive bags contain 2 posh blue bags, 5 vibrant violet bags, 3 drab brown bags, 1 dull purple bag.' AS rule
UNION ALL
SELECT
  'shiny silver bags contain 5 dim green bags, 4 dull cyan bags.' AS rule
UNION ALL
SELECT
  'dim brown bags contain 1 wavy brown bag, 3 drab black bags.' AS rule
UNION ALL
SELECT
  'dotted brown bags contain 3 drab crimson bags, 1 shiny red bag.' AS rule
UNION ALL
SELECT
  'striped coral bags contain 4 striped red bags, 1 dotted cyan bag.' AS rule
UNION ALL
SELECT
  'dotted plum bags contain 3 faded lime bags, 2 striped lavender bags, 2 wavy crimson bags, 2 faded brown bags.' AS rule
UNION ALL
SELECT
  'light gold bags contain 1 light silver bag, 3 posh teal bags, 3 dark orange bags, 4 bright bronze bags.' AS rule
UNION ALL
SELECT
  'dark tan bags contain 5 drab black bags, 2 plaid cyan bags, 3 faded yellow bags, 1 dim blue bag.' AS rule
UNION ALL
SELECT
  'posh olive bags contain 4 drab olive bags, 5 dull tan bags, 1 wavy chartreuse bag, 5 muted magenta bags.' AS rule
UNION ALL
SELECT
  'dull red bags contain 1 vibrant teal bag, 4 dim salmon bags, 1 bright violet bag, 1 dark lavender bag.' AS rule
UNION ALL
SELECT
  'plaid turquoise bags contain 3 faded green bags, 5 wavy crimson bags.' AS rule
UNION ALL
SELECT
  'plaid cyan bags contain 2 dull yellow bags, 2 dotted cyan bags, 1 light chartreuse bag, 2 faded green bags.' AS rule
UNION ALL
SELECT
  'dull indigo bags contain 2 faded silver bags.' AS rule
UNION ALL
SELECT
  'pale brown bags contain no other bags.' AS rule
UNION ALL
SELECT
  'striped plum bags contain 5 dull lime bags, 2 muted white bags, 3 striped teal bags.' AS rule
UNION ALL
SELECT
  'dotted coral bags contain 4 faded silver bags, 2 wavy aqua bags, 2 light chartreuse bags, 5 posh indigo bags.' AS rule
UNION ALL
SELECT
  'mirrored beige bags contain 1 plaid black bag, 2 plaid tan bags, 2 pale bronze bags.' AS rule
UNION ALL
SELECT
  'vibrant cyan bags contain 4 wavy beige bags, 1 shiny orange bag.' AS rule
UNION ALL
SELECT
  'wavy fuchsia bags contain 5 pale maroon bags, 3 drab violet bags, 2 shiny orange bags.' AS rule
UNION ALL
SELECT
  'drab silver bags contain 2 dark blue bags, 3 light chartreuse bags, 3 mirrored gold bags.' AS rule
UNION ALL
SELECT
  'wavy turquoise bags contain 5 posh red bags, 4 striped teal bags.' AS rule
UNION ALL
SELECT
  'bright cyan bags contain 4 bright silver bags, 1 muted gray bag, 5 faded aqua bags, 3 wavy aqua bags.' AS rule
UNION ALL
SELECT
  'wavy green bags contain 4 clear violet bags, 4 dark olive bags, 2 clear magenta bags, 1 mirrored black bag.' AS rule
UNION ALL
SELECT
  'mirrored gold bags contain 2 dark olive bags.' AS rule
UNION ALL
SELECT
  'wavy gold bags contain 4 plaid indigo bags.' AS rule
UNION ALL
SELECT
  'dotted yellow bags contain 3 dull orange bags, 2 faded green bags.' AS rule
UNION ALL
SELECT
  'light beige bags contain 4 dull cyan bags.' AS rule
UNION ALL
SELECT
  'bright crimson bags contain 1 faded tan bag, 1 faded chartreuse bag, 5 vibrant brown bags.' AS rule
UNION ALL
SELECT
  'dotted bronze bags contain 5 striped white bags.' AS rule
UNION ALL
SELECT
  'mirrored yellow bags contain 3 wavy crimson bags, 4 dark olive bags, 5 drab tan bags.' AS rule
UNION ALL
SELECT
  'plaid lavender bags contain 1 light tomato bag, 5 dull blue bags, 2 wavy indigo bags, 3 bright gray bags.' AS rule
UNION ALL
SELECT
  'drab purple bags contain 3 dotted plum bags, 5 drab olive bags, 1 drab tan bag, 3 dark black bags.' AS rule
UNION ALL
SELECT
  'shiny lime bags contain 2 plaid bronze bags, 1 shiny gold bag.' AS rule
UNION ALL
SELECT
  'drab chartreuse bags contain 2 bright bronze bags, 4 light teal bags, 1 mirrored yellow bag.' AS rule
UNION ALL
SELECT
  'bright plum bags contain 3 drab turquoise bags.' AS rule
UNION ALL
SELECT
  'light orange bags contain 1 shiny lavender bag, 2 dark fuchsia bags, 1 muted olive bag, 4 wavy olive bags.' AS rule
UNION ALL
SELECT
  'striped beige bags contain 4 dull crimson bags, 5 dotted fuchsia bags.' AS rule
UNION ALL
SELECT
  'wavy chartreuse bags contain 2 bright salmon bags, 5 faded green bags, 1 mirrored black bag.' AS rule
UNION ALL
SELECT
  'striped tomato bags contain no other bags.' AS rule
UNION ALL
SELECT
  'plaid aqua bags contain 1 light magenta bag, 3 pale white bags, 3 clear blue bags, 4 dull crimson bags.' AS rule
UNION ALL
SELECT
  'plaid tan bags contain 3 dull green bags, 1 light silver bag, 5 dim orange bags, 1 dark blue bag.' AS rule
UNION ALL
SELECT
  'dotted cyan bags contain 2 wavy black bags, 3 striped teal bags.' AS rule
UNION ALL
SELECT
  'dull green bags contain 1 plaid magenta bag, 3 dull plum bags, 4 dim green bags.' AS rule
UNION ALL
SELECT
  'faded purple bags contain 5 mirrored cyan bags, 1 dull beige bag, 4 vibrant purple bags.' AS rule
UNION ALL
SELECT
  'dotted maroon bags contain 1 vibrant beige bag, 3 plaid magenta bags.' AS rule
UNION ALL
SELECT
  'faded aqua bags contain 4 plaid gold bags, 1 plaid yellow bag, 2 bright lime bags.' AS rule
UNION ALL
SELECT
  'pale lime bags contain 1 light blue bag.' AS rule
UNION ALL
SELECT
  'dark indigo bags contain 1 light gold bag.' AS rule
UNION ALL
SELECT
  'shiny orange bags contain 2 plaid black bags, 2 faded brown bags, 4 plaid indigo bags.' AS rule
UNION ALL
SELECT
  'muted olive bags contain 1 wavy chartreuse bag.' AS rule
UNION ALL
SELECT
  'muted purple bags contain 4 dotted silver bags.' AS rule
UNION ALL
SELECT
  'plaid black bags contain 3 drab silver bags.' AS rule
UNION ALL
SELECT
  'striped lavender bags contain 5 wavy crimson bags.' AS rule
UNION ALL
SELECT
  'posh chartreuse bags contain 5 drab chartreuse bags.' AS rule
UNION ALL
SELECT
  'clear purple bags contain 3 faded green bags, 2 bright gold bags.' AS rule
UNION ALL
SELECT
  'dark crimson bags contain 4 plaid teal bags, 4 muted cyan bags.' AS rule
UNION ALL
SELECT
  'clear silver bags contain 3 pale beige bags, 2 mirrored tomato bags.' AS rule
UNION ALL
SELECT
  'dotted indigo bags contain 2 dark plum bags, 2 clear magenta bags, 3 light olive bags.' AS rule
UNION ALL
SELECT
  'dull chartreuse bags contain 2 light turquoise bags, 3 drab brown bags.' AS rule
UNION ALL
SELECT
  'bright brown bags contain 4 light purple bags, 1 vibrant coral bag.' AS rule
UNION ALL
SELECT
  'dim salmon bags contain 2 dull salmon bags.' AS rule
UNION ALL
SELECT
  'muted lime bags contain 4 muted violet bags, 5 shiny white bags.' AS rule
UNION ALL
SELECT
  'vibrant lime bags contain 2 mirrored bronze bags, 1 dotted crimson bag, 5 dim yellow bags, 2 mirrored gold bags.' AS rule
UNION ALL
SELECT
  'muted silver bags contain 1 striped orange bag, 3 drab purple bags.' AS rule
UNION ALL
SELECT
  'mirrored bronze bags contain 4 dull bronze bags.' AS rule
UNION ALL
SELECT
  'light olive bags contain 4 mirrored olive bags, 2 dim lime bags, 1 clear magenta bag.' AS rule
UNION ALL
SELECT
  'vibrant tan bags contain 2 shiny teal bags.' AS rule
UNION ALL
SELECT
  'posh red bags contain 2 bright bronze bags, 5 striped teal bags, 5 faded beige bags, 4 faded olive bags.' AS rule
UNION ALL
SELECT
  'faded red bags contain 4 striped lavender bags, 4 posh red bags.' AS rule
UNION ALL
SELECT
  'mirrored brown bags contain 3 dim salmon bags, 4 drab chartreuse bags, 1 wavy tomato bag.' AS rule
UNION ALL
SELECT
  'dark gray bags contain 1 muted tan bag, 4 faded blue bags, 2 dim chartreuse bags.' AS rule
UNION ALL
SELECT
  'dark white bags contain 4 vibrant lime bags, 4 pale olive bags.' AS rule
UNION ALL
SELECT
  'striped silver bags contain 4 dim cyan bags.' AS rule
UNION ALL
SELECT
  'clear salmon bags contain 5 pale magenta bags, 1 mirrored salmon bag.' AS rule
UNION ALL
SELECT
  'pale white bags contain 5 wavy crimson bags, 4 plaid indigo bags, 5 striped crimson bags, 3 drab violet bags.' AS rule
UNION ALL
SELECT
  'vibrant indigo bags contain 1 mirrored gold bag, 1 striped turquoise bag, 3 posh beige bags.' AS rule
UNION ALL
SELECT
  'drab aqua bags contain 5 faded crimson bags, 3 wavy gold bags, 3 striped tomato bags.' AS rule
UNION ALL
SELECT
  'clear brown bags contain 5 bright lavender bags.' AS rule
UNION ALL
SELECT
  'posh indigo bags contain 5 mirrored red bags, 5 clear coral bags.' AS rule
UNION ALL
SELECT
  'posh black bags contain 4 dim fuchsia bags, 5 muted olive bags, 3 mirrored red bags.' AS rule
UNION ALL
SELECT
  'shiny lavender bags contain 2 muted aqua bags, 3 striped black bags, 3 wavy salmon bags, 3 mirrored purple bags.' AS rule
UNION ALL
SELECT
  'vibrant bronze bags contain 1 bright tan bag, 5 faded beige bags, 5 pale red bags, 1 plaid cyan bag.' AS rule
UNION ALL
SELECT
  'clear chartreuse bags contain 2 shiny gold bags, 1 wavy turquoise bag, 2 muted crimson bags.' AS rule
UNION ALL
SELECT
  'drab tan bags contain no other bags.' AS rule
UNION ALL
SELECT
  'posh gold bags contain 5 dotted beige bags, 1 striped crimson bag, 5 drab purple bags, 1 bright gray bag.' AS rule
UNION ALL
SELECT
  'clear olive bags contain 3 dark tomato bags.' AS rule
UNION ALL
SELECT
  'dim aqua bags contain 4 wavy black bags, 5 clear chartreuse bags, 5 clear aqua bags.' AS rule
UNION ALL
SELECT
  'pale coral bags contain 2 shiny orange bags, 5 dark black bags, 3 vibrant coral bags.' AS rule
UNION ALL
SELECT
  'drab blue bags contain 5 dull salmon bags.' AS rule
UNION ALL
SELECT
  'vibrant white bags contain 2 mirrored yellow bags.' AS rule
UNION ALL
SELECT
  'faded indigo bags contain 5 clear aqua bags.' AS rule
UNION ALL
SELECT
  'posh turquoise bags contain 1 light purple bag, 4 mirrored salmon bags.' AS rule
UNION ALL
SELECT
  'dotted orange bags contain 5 dark blue bags, 1 shiny lavender bag, 2 dim plum bags, 3 clear violet bags.' AS rule
UNION ALL
SELECT
  'muted crimson bags contain 4 wavy crimson bags, 1 light magenta bag, 3 clear plum bags.' AS rule
UNION ALL
SELECT
  'dim coral bags contain 1 vibrant red bag, 2 vibrant magenta bags.' AS rule
UNION ALL
SELECT
  'mirrored plum bags contain 5 light olive bags.' AS rule
UNION ALL
SELECT
  'dull violet bags contain 2 dim aqua bags.' AS rule
UNION ALL
SELECT
  'faded violet bags contain 5 clear violet bags, 5 muted indigo bags, 3 clear red bags, 1 posh tan bag.' AS rule
UNION ALL
SELECT
  'vibrant crimson bags contain 1 shiny crimson bag.' AS rule
UNION ALL
SELECT
  'muted plum bags contain 3 drab beige bags, 4 posh maroon bags.' AS rule
UNION ALL
SELECT
  'dim orange bags contain 5 bright salmon bags.' AS rule
UNION ALL
SELECT
  'dim blue bags contain 1 mirrored black bag, 3 faded blue bags.' AS rule
UNION ALL
SELECT
  'mirrored tan bags contain 5 plaid plum bags.' AS rule
UNION ALL
SELECT
  'pale crimson bags contain 4 dim green bags, 2 pale fuchsia bags.' AS rule
UNION ALL
SELECT
  'bright white bags contain 2 drab gold bags, 2 shiny maroon bags, 5 mirrored lime bags.' AS rule
UNION ALL
SELECT
  'dim indigo bags contain 1 mirrored cyan bag, 1 wavy purple bag, 1 drab brown bag.' AS rule
UNION ALL
SELECT
  'dotted violet bags contain 4 bright teal bags, 2 vibrant plum bags.' AS rule
UNION ALL
SELECT
  'wavy indigo bags contain 2 drab silver bags, 1 muted chartreuse bag, 1 drab aqua bag, 3 mirrored teal bags.' AS rule
UNION ALL
SELECT
  'dark cyan bags contain 1 muted magenta bag, 3 vibrant violet bags, 4 mirrored aqua bags, 5 drab violet bags.' AS rule
UNION ALL
SELECT
  'posh maroon bags contain 5 muted chartreuse bags, 4 dark olive bags.' AS rule
UNION ALL
SELECT
  'drab tomato bags contain 2 plaid tan bags, 2 posh purple bags, 2 posh beige bags.' AS rule
UNION ALL
SELECT
  'wavy tan bags contain 5 light cyan bags, 5 muted brown bags, 5 mirrored coral bags, 5 light chartreuse bags.' AS rule
UNION ALL
SELECT
  'faded bronze bags contain 4 dotted magenta bags.' AS rule
UNION ALL
SELECT
  'pale blue bags contain 5 pale purple bags.' AS rule
UNION ALL
SELECT
  'dim magenta bags contain 5 posh aqua bags, 5 dim crimson bags, 4 wavy gold bags, 2 shiny orange bags.' AS rule
UNION ALL
SELECT
  'dark fuchsia bags contain 2 drab silver bags.' AS rule
UNION ALL
SELECT
  'wavy white bags contain 4 vibrant turquoise bags, 2 clear violet bags, 1 dull salmon bag.' AS rule
UNION ALL
SELECT
  'drab maroon bags contain 3 pale tomato bags, 2 dim chartreuse bags, 5 mirrored orange bags, 4 drab violet bags.' AS rule
UNION ALL
SELECT
  'muted fuchsia bags contain 4 muted bronze bags, 4 plaid brown bags, 1 faded white bag.' AS rule
UNION ALL
SELECT
  'plaid gold bags contain 3 vibrant bronze bags, 5 striped chartreuse bags.' AS rule
UNION ALL
SELECT
  'faded green bags contain 2 dull cyan bags, 5 posh purple bags.' AS rule
UNION ALL
SELECT
  'light indigo bags contain 5 mirrored tomato bags.' AS rule
UNION ALL
SELECT
  'striped white bags contain 5 clear plum bags.' AS rule
UNION ALL
SELECT
  'posh magenta bags contain 5 wavy crimson bags, 3 striped coral bags.' AS rule
UNION ALL
SELECT
  'drab olive bags contain 4 striped orange bags.' AS rule
UNION ALL
SELECT
  'plaid indigo bags contain 1 plaid turquoise bag.' AS rule
UNION ALL
SELECT
  'dark brown bags contain 2 faded tan bags, 5 wavy green bags.' AS rule
UNION ALL
SELECT
  'faded cyan bags contain 2 bright violet bags, 3 mirrored salmon bags.' AS rule
UNION ALL
SELECT
  'dim lavender bags contain 2 mirrored fuchsia bags, 3 pale magenta bags, 2 dotted tan bags, 4 posh bronze bags.' AS rule
UNION ALL
SELECT
  'dull maroon bags contain 3 dark silver bags, 5 dim plum bags.' AS rule
UNION ALL
SELECT
  'dull teal bags contain 3 pale green bags.' AS rule
UNION ALL
SELECT
  'shiny yellow bags contain 4 dotted fuchsia bags.' AS rule
UNION ALL
SELECT
  'mirrored crimson bags contain 5 dotted plum bags.' AS rule
UNION ALL
SELECT
  'drab beige bags contain 3 faded orange bags, 3 dark orange bags, 4 clear orange bags.' AS rule
UNION ALL
SELECT
  'dull olive bags contain 2 vibrant bronze bags, 4 shiny chartreuse bags.' AS rule
UNION ALL
SELECT
  'wavy red bags contain 2 wavy brown bags, 1 wavy olive bag, 3 striped cyan bags.' AS rule
UNION ALL
SELECT
  'light gray bags contain 1 pale salmon bag, 2 plaid bronze bags, 5 dull yellow bags.' AS rule
UNION ALL
SELECT
  'faded gray bags contain 4 muted green bags, 5 faded red bags, 3 muted magenta bags, 5 bright magenta bags.' AS rule
UNION ALL
SELECT
  'drab indigo bags contain 1 posh gold bag, 2 dull lime bags, 1 pale orange bag.' AS rule
UNION ALL
SELECT
  'bright yellow bags contain 4 posh red bags, 4 shiny gold bags.' AS rule
UNION ALL
SELECT
  'drab bronze bags contain 4 dark indigo bags.' AS rule
UNION ALL
SELECT
  'striped gold bags contain 3 faded yellow bags, 2 mirrored tomato bags, 1 bright lime bag.' AS rule
UNION ALL
SELECT
  'muted gold bags contain 4 dim violet bags.' AS rule
UNION ALL
SELECT
  'plaid olive bags contain 3 wavy fuchsia bags.' AS rule
UNION ALL
SELECT
  'bright gray bags contain 4 bright bronze bags, 1 plaid white bag, 1 pale bronze bag.' AS rule
UNION ALL
SELECT
  'clear turquoise bags contain 2 mirrored purple bags, 2 light gold bags, 4 dim cyan bags, 5 wavy olive bags.' AS rule
UNION ALL
SELECT
  'wavy plum bags contain 4 bright yellow bags.' AS rule
UNION ALL
SELECT
  'dull blue bags contain 4 dotted lavender bags.' AS rule
UNION ALL
SELECT
  'posh gray bags contain 4 faded blue bags, 2 dull brown bags, 1 clear cyan bag.' AS rule
UNION ALL
SELECT
  'pale black bags contain 5 dim cyan bags, 4 bright white bags.' AS rule
UNION ALL
SELECT
  'wavy blue bags contain 3 faded olive bags, 5 bright lavender bags, 1 wavy black bag, 2 posh magenta bags.' AS rule
UNION ALL
SELECT
  'posh beige bags contain 2 light cyan bags, 1 wavy violet bag, 1 muted olive bag.' AS rule
UNION ALL
SELECT
  'clear plum bags contain 3 dull cyan bags.' AS rule
UNION ALL
SELECT
  'drab cyan bags contain 5 plaid green bags.' AS rule
UNION ALL
SELECT
  'vibrant aqua bags contain 5 posh maroon bags.' AS rule
UNION ALL
SELECT
  'dim silver bags contain 5 shiny gold bags, 5 posh magenta bags, 1 light white bag.' AS rule
UNION ALL
SELECT
  'posh brown bags contain 4 plaid salmon bags, 2 vibrant blue bags, 2 posh olive bags.' AS rule
UNION ALL
SELECT
  'dark teal bags contain 1 faded brown bag.' AS rule
UNION ALL
SELECT
  'clear white bags contain 5 vibrant tan bags, 5 light purple bags, 3 posh tan bags, 4 faded beige bags.' AS rule
UNION ALL
SELECT
  'dim maroon bags contain 2 plaid chartreuse bags, 1 dim gray bag, 2 drab gold bags, 5 light white bags.' AS rule
UNION ALL
SELECT
  'dull salmon bags contain 5 striped teal bags, 3 dark blue bags, 3 drab tan bags, 5 wavy crimson bags.' AS rule
UNION ALL
SELECT
  'dull coral bags contain 1 faded red bag, 2 shiny teal bags, 3 bright gray bags, 1 pale brown bag.' AS rule
UNION ALL
SELECT
  'dark violet bags contain 1 clear cyan bag, 4 mirrored beige bags, 2 vibrant turquoise bags.' AS rule
UNION ALL
SELECT
  'vibrant maroon bags contain 1 muted magenta bag, 3 muted olive bags, 2 shiny turquoise bags.' AS rule
UNION ALL
SELECT
  'posh orange bags contain 5 dark black bags, 3 pale maroon bags, 5 dull plum bags.' AS rule
UNION ALL
SELECT
  'clear indigo bags contain 4 faded tan bags, 3 clear orange bags, 1 vibrant aqua bag.' AS rule
UNION ALL
SELECT
  'clear gray bags contain 4 dull salmon bags, 5 dark magenta bags.' AS rule
UNION ALL
SELECT
  'shiny turquoise bags contain 4 muted green bags, 4 vibrant beige bags, 5 mirrored cyan bags, 4 striped blue bags.' AS rule
UNION ALL
SELECT
  'pale salmon bags contain 1 dark silver bag, 4 dim green bags.' AS rule
UNION ALL
SELECT
  'striped gray bags contain 3 dark lavender bags.' AS rule
UNION ALL
SELECT
  'dull yellow bags contain 2 dark blue bags, 4 striped tomato bags, 2 striped red bags, 3 pale brown bags.' AS rule
UNION ALL
SELECT
  'posh yellow bags contain 1 dull green bag, 1 dull plum bag.' AS rule
UNION ALL
SELECT
  'plaid white bags contain 3 plaid turquoise bags, 4 dotted cyan bags, 3 shiny gold bags, 5 clear plum bags.' AS rule
UNION ALL
SELECT
  'faded orange bags contain 1 dull silver bag, 4 clear gray bags, 1 posh tomato bag, 2 wavy yellow bags.' AS rule
UNION ALL
SELECT
  'dim violet bags contain 4 drab silver bags, 1 dull yellow bag, 3 faded blue bags.' AS rule
UNION ALL
SELECT
  'light green bags contain 3 drab gold bags, 4 wavy purple bags.' AS rule
UNION ALL
SELECT
  'dark magenta bags contain 2 light gold bags, 5 drab violet bags.' AS rule
UNION ALL
SELECT
  'dark purple bags contain 5 plaid beige bags.' AS rule
UNION ALL
SELECT
  'mirrored blue bags contain 2 plaid tan bags.' AS rule
UNION ALL
SELECT
  'dim lime bags contain 1 dotted beige bag, 2 striped white bags, 5 dim blue bags, 5 wavy blue bags.' AS rule
UNION ALL
SELECT
  'bright chartreuse bags contain 3 clear orange bags.' AS rule
UNION ALL
SELECT
  'vibrant brown bags contain 3 mirrored violet bags, 5 dull green bags, 2 pale magenta bags.' AS rule
UNION ALL
SELECT
  'drab salmon bags contain 4 muted magenta bags.' AS rule
UNION ALL
SELECT
  'muted teal bags contain 5 dark black bags, 5 light gold bags.' AS rule
UNION ALL
SELECT
  'striped lime bags contain 1 dim orange bag.' AS rule
UNION ALL
SELECT
  'plaid crimson bags contain 4 dim teal bags, 3 dull salmon bags.' AS rule
UNION ALL
SELECT
  'posh plum bags contain 5 pale gray bags.' AS rule
UNION ALL
SELECT
  'light maroon bags contain 4 drab violet bags, 2 faded brown bags, 2 striped black bags, 3 striped coral bags.' AS rule
UNION ALL
SELECT
  'pale gray bags contain 1 dark aqua bag, 3 mirrored tomato bags.' AS rule
UNION ALL
SELECT
  'light chartreuse bags contain no other bags.' AS rule
UNION ALL
SELECT
  'dim crimson bags contain 5 faded blue bags, 1 dark blue bag, 2 striped teal bags.' AS rule
UNION ALL
SELECT
  'dim beige bags contain 5 wavy silver bags, 1 wavy orange bag, 1 dim lime bag, 2 mirrored lime bags.' AS rule
UNION ALL
SELECT
  'bright teal bags contain 1 dull violet bag, 1 faded beige bag, 3 faded orange bags.' AS rule
UNION ALL
SELECT
  'striped green bags contain 2 drab gold bags, 5 posh olive bags, 4 light indigo bags, 1 clear yellow bag.' AS rule
UNION ALL
SELECT
  'striped black bags contain 4 striped crimson bags, 1 pale red bag.' AS rule
UNION ALL
SELECT
  'plaid beige bags contain 3 pale tomato bags.' AS rule
UNION ALL
SELECT
  'drab plum bags contain 4 striped coral bags, 3 dotted crimson bags.' AS rule
UNION ALL
SELECT
  'plaid orange bags contain 4 bright aqua bags.' AS rule
UNION ALL
SELECT
  'wavy maroon bags contain 1 dim orange bag, 1 dim violet bag, 4 posh chartreuse bags, 5 plaid tan bags.' AS rule
UNION ALL
SELECT
  'dim purple bags contain 1 mirrored black bag, 1 plaid plum bag, 4 striped teal bags, 1 posh aqua bag.' AS rule
UNION ALL
SELECT
  'mirrored red bags contain 2 shiny salmon bags, 3 bright salmon bags, 1 vibrant salmon bag.' AS rule
UNION ALL
SELECT
  'striped brown bags contain 3 light lime bags, 1 drab black bag, 2 dull white bags, 5 drab lavender bags.' AS rule
UNION ALL
SELECT
  'dim red bags contain 2 mirrored black bags.' AS rule
UNION ALL
SELECT
  'clear lavender bags contain 5 pale fuchsia bags.' AS rule
UNION ALL
SELECT
  'bright bronze bags contain 2 striped teal bags, 4 clear plum bags, 3 dim crimson bags, 5 faded black bags.' AS rule
UNION ALL
SELECT
  'shiny violet bags contain 2 dark gold bags, 3 posh maroon bags.' AS rule
UNION ALL
SELECT
  'bright lime bags contain 2 clear magenta bags, 3 dark blue bags, 4 striped lavender bags, 1 dull crimson bag.' AS rule
UNION ALL
SELECT
  'mirrored silver bags contain 1 vibrant tomato bag, 4 dull salmon bags, 5 plaid green bags, 4 wavy brown bags.' AS rule
UNION ALL
SELECT
  'dotted olive bags contain 5 faded beige bags.' AS rule
UNION ALL
SELECT
  'posh tomato bags contain 2 faded purple bags.' AS rule
UNION ALL
SELECT
  'posh teal bags contain 2 drab tan bags, 3 striped red bags, 3 dull salmon bags, 1 striped lavender bag.' AS rule
UNION ALL
SELECT
  'shiny tomato bags contain 3 posh indigo bags.' AS rule
UNION ALL
SELECT
  'dotted crimson bags contain 1 pale gray bag.' AS rule
UNION ALL
SELECT
  'shiny indigo bags contain 1 pale beige bag.' AS rule
UNION ALL
SELECT
  'plaid lime bags contain 1 light maroon bag.' AS rule
UNION ALL
SELECT
  'mirrored turquoise bags contain 5 faded bronze bags.' AS rule
UNION ALL
SELECT
  'drab crimson bags contain 1 vibrant plum bag.' AS rule
UNION ALL
SELECT
  'dim black bags contain 3 muted tan bags, 3 drab silver bags, 4 dull white bags.' AS rule
UNION ALL
SELECT
  'faded yellow bags contain 5 faded black bags.' AS rule
UNION ALL
SELECT
  'faded white bags contain 2 wavy lavender bags, 1 shiny orange bag.' AS rule
UNION ALL
SELECT
  'plaid tomato bags contain 2 shiny brown bags, 3 clear red bags.' AS rule
UNION ALL
SELECT
  'drab white bags contain 5 dark yellow bags.' AS rule
UNION ALL
SELECT
  'mirrored tomato bags contain 2 light gold bags, 1 mirrored gold bag, 4 dim plum bags.' AS rule
UNION ALL
SELECT
  'plaid maroon bags contain 2 mirrored lime bags, 3 plaid salmon bags, 2 shiny chartreuse bags.' AS rule
UNION ALL
SELECT
  'drab gold bags contain 1 dim plum bag, 2 mirrored violet bags.' AS rule
UNION ALL
SELECT
  'muted orange bags contain 3 mirrored lime bags, 1 muted maroon bag, 5 drab violet bags, 2 posh green bags.' AS rule
UNION ALL
SELECT
  'mirrored fuchsia bags contain 3 dim plum bags, 2 muted olive bags, 2 wavy white bags, 1 dotted cyan bag.' AS rule
UNION ALL
SELECT
  'plaid silver bags contain 3 pale violet bags, 5 striped purple bags, 5 dull purple bags.' AS rule
UNION ALL
SELECT
  'dotted silver bags contain 2 vibrant coral bags.' AS rule
UNION ALL
SELECT
  'shiny cyan bags contain 4 mirrored teal bags, 4 faded magenta bags, 4 bright lime bags, 1 vibrant teal bag.' AS rule
UNION ALL
SELECT
  'clear yellow bags contain 1 muted brown bag, 5 wavy lime bags.' AS rule
UNION ALL
SELECT
  'muted red bags contain 5 muted coral bags, 2 light violet bags, 2 muted indigo bags, 4 dotted tan bags.' AS rule
UNION ALL
SELECT
  'dull beige bags contain 5 plaid black bags, 2 pale white bags, 2 light violet bags, 1 pale crimson bag.' AS rule
UNION ALL
SELECT
  'vibrant lavender bags contain 3 dark chartreuse bags, 4 bright lavender bags.' AS rule
UNION ALL
SELECT
  'posh lime bags contain 1 shiny cyan bag, 4 dotted blue bags, 3 mirrored chartreuse bags.' AS rule
UNION ALL
SELECT
  'shiny blue bags contain 1 dotted magenta bag.' AS rule
UNION ALL
SELECT
  'muted yellow bags contain 4 plaid salmon bags, 4 dull tomato bags.' AS rule
UNION ALL
SELECT
  'muted blue bags contain 5 wavy magenta bags, 3 vibrant gray bags.' AS rule
UNION ALL
SELECT
  'dotted tan bags contain 1 wavy green bag, 1 dim plum bag.' AS rule
UNION ALL
SELECT
  'drab red bags contain 2 dark olive bags, 5 mirrored tan bags, 3 dull coral bags, 4 plaid yellow bags.' AS rule
UNION ALL
SELECT
  'dull tomato bags contain 2 clear aqua bags, 2 dark fuchsia bags, 2 light teal bags.' AS rule
UNION ALL
SELECT
  'bright salmon bags contain 5 dark blue bags.' AS rule
UNION ALL
SELECT
  'pale olive bags contain 1 light violet bag, 3 shiny bronze bags, 2 dotted magenta bags, 4 posh silver bags.' AS rule
UNION ALL
SELECT
  'mirrored teal bags contain 4 posh chartreuse bags, 5 vibrant bronze bags.' AS rule
UNION ALL
SELECT
  'mirrored chartreuse bags contain 3 striped olive bags, 3 mirrored maroon bags, 5 faded black bags, 3 pale plum bags.' AS rule
UNION ALL
SELECT
  'pale orange bags contain 4 mirrored gold bags, 3 faded brown bags, 2 dark olive bags.' AS rule
UNION ALL
SELECT
  'dark olive bags contain no other bags.' AS rule
UNION ALL
SELECT
  'faded plum bags contain 5 bright green bags, 5 shiny beige bags, 2 vibrant indigo bags, 1 mirrored orange bag.' AS rule
UNION ALL
SELECT
  'drab magenta bags contain 5 dark fuchsia bags, 5 striped salmon bags.' AS rule
UNION ALL
SELECT
  'dark lavender bags contain 5 mirrored red bags, 4 vibrant aqua bags, 2 dotted tan bags.' AS rule
UNION ALL
SELECT
  'shiny bronze bags contain 2 clear aqua bags, 2 dull salmon bags, 1 plaid turquoise bag, 3 plaid bronze bags.' AS rule
UNION ALL
SELECT
  'faded magenta bags contain 2 mirrored gold bags, 5 dim orange bags.' AS rule
UNION ALL
SELECT
  'light lavender bags contain 3 striped magenta bags, 5 light yellow bags.' AS rule
UNION ALL
SELECT
  'clear tomato bags contain 3 dark bronze bags, 5 plaid aqua bags, 2 faded lime bags, 2 bright salmon bags.' AS rule
UNION ALL
SELECT
  'clear lime bags contain 1 mirrored lavender bag, 3 bright silver bags, 3 pale teal bags.' AS rule
UNION ALL
SELECT
  'light lime bags contain 4 dim crimson bags, 2 vibrant tomato bags, 4 posh red bags.' AS rule
UNION ALL
SELECT
  'wavy yellow bags contain 3 muted chartreuse bags, 3 drab teal bags, 4 striped tomato bags.' AS rule
UNION ALL
SELECT
  'dark silver bags contain 5 posh magenta bags, 1 plaid black bag, 3 faded brown bags.' AS rule
UNION ALL
SELECT
  'bright maroon bags contain 5 dotted turquoise bags, 3 wavy silver bags, 2 dotted lime bags.' AS rule
UNION ALL
SELECT
  'striped orange bags contain 5 striped coral bags, 3 posh teal bags.' AS rule
UNION ALL
SELECT
  'bright silver bags contain 3 mirrored violet bags, 5 striped gold bags, 1 striped white bag, 4 clear chartreuse bags.' AS rule
UNION ALL
SELECT
  'mirrored olive bags contain 4 light silver bags, 1 muted crimson bag.' AS rule
UNION ALL
SELECT
  'dim gold bags contain 3 clear magenta bags.' AS rule
UNION ALL
SELECT
  'shiny plum bags contain 5 muted olive bags, 5 dark turquoise bags, 2 dull green bags, 1 plaid magenta bag.' AS rule
UNION ALL
SELECT
  'mirrored green bags contain 5 striped magenta bags, 1 light lime bag, 2 dim cyan bags.' AS rule
UNION ALL
SELECT
  'wavy aqua bags contain 4 dull tan bags, 5 vibrant beige bags.' AS rule
UNION ALL
SELECT
  'posh lavender bags contain 4 muted black bags.' AS rule
UNION ALL
SELECT
  'dull lime bags contain 2 plaid black bags.' AS rule
UNION ALL
SELECT
  'dim chartreuse bags contain 4 bright red bags.' AS rule
UNION ALL
SELECT
  'muted lavender bags contain 5 faded red bags, 5 drab brown bags, 5 clear bronze bags.' AS rule
UNION ALL
SELECT
  'muted coral bags contain 4 clear red bags, 3 vibrant maroon bags.' AS rule
 ;;
    sql_trigger_value: SELECT 1 ;;
  }
  #You'll probably want to build some Derived Tables? Maybe. Anyways, there's the data source ^

  dimension: rule {
    type: string
    sql: ${TABLE}.rule ;;
  }
}



#Part Two: Once you've completed the first part, submit your work at https://adventofcode.com/2020/day/7 and get Part 2.
