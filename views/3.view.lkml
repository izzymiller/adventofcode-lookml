# --- Day 3: Toboggan Trajectory ---
# With the toboggan login problems resolved, you set off toward the airport. While travel by toboggan might be easy, it's certainly not safe: there's very minimal steering and the area is covered in trees. You'll need to see which angles will take you near the fewest trees.

# Due to the local geology, trees in this area only grow on exact integer coordinates in a grid. You make a map (your puzzle input) of the open squares (.) and trees (#) you can see. For example:

# ..##.......
# #...#...#..
# .#....#..#.
# ..#.#...#.#
# .#...##..#.
# ..#.##.....
# .#.#.#....#
# .#........#
# #.##...#...
# #...##....#
# .#..#...#.#
# These aren't the only trees, though; due to something you read about once involving arboreal genetics and biome stability, the same pattern repeats to the right many times:

# ..##.........##.........##.........##.........##.........##.......  --->
# #...#...#..#...#...#..#...#...#..#...#...#..#...#...#..#...#...#..
# .#....#..#..#....#..#..#....#..#..#....#..#..#....#..#..#....#..#.
# ..#.#...#.#..#.#...#.#..#.#...#.#..#.#...#.#..#.#...#.#..#.#...#.#
# .#...##..#..#...##..#..#...##..#..#...##..#..#...##..#..#...##..#.
# ..#.##.......#.##.......#.##.......#.##.......#.##.......#.##.....  --->
# .#.#.#....#.#.#.#....#.#.#.#....#.#.#.#....#.#.#.#....#.#.#.#....#
# .#........#.#........#.#........#.#........#.#........#.#........#
# #.##...#...#.##...#...#.##...#...#.##...#...#.##...#...#.##...#...
# #...##....##...##....##...##....##...##....##...##....##...##....#
# .#..#...#.#.#..#...#.#.#..#...#.#.#..#...#.#.#..#...#.#.#..#...#.#  --->
# You start on the open square (.) in the top-left corner and need to reach the bottom (below the bottom-most row on your map).

# The toboggan can only follow a few specific slopes (you opted for a cheaper model that prefers rational numbers); start by counting all the trees you would encounter for the slope right 3, down 1:

# From your starting position at the top-left, check the position that is right 3 and down 1. Then, check the position that is right 3 and down 1 from there, and so on until you go past the bottom of the map.

# The locations you'd check in the above example are marked here with O where there was an open square and X where there was a tree:

# ..##.........##.........##.........##.........##.........##.......  --->
# #..O#...#..#...#...#..#...#...#..#...#...#..#...#...#..#...#...#..
# .#....X..#..#....#..#..#....#..#..#....#..#..#....#..#..#....#..#.
# ..#.#...#O#..#.#...#.#..#.#...#.#..#.#...#.#..#.#...#.#..#.#...#.#
# .#...##..#..X...##..#..#...##..#..#...##..#..#...##..#..#...##..#.
# ..#.##.......#.X#.......#.##.......#.##.......#.##.......#.##.....  --->
# .#.#.#....#.#.#.#.O..#.#.#.#....#.#.#.#....#.#.#.#....#.#.#.#....#
# .#........#.#........X.#........#.#........#.#........#.#........#
# #.##...#...#.##...#...#.X#...#...#.##...#...#.##...#...#.##...#...
# #...##....##...##....##...#X....##...##....##...##....##...##....#
# .#..#...#.#.#..#...#.#.#..#...X.#.#..#...#.#.#..#...#.#.#..#...#.#  --->
# In this example, traversing the map using this slope would cause you to encounter 7 trees.

# Starting at the top-left corner of your map and following a slope of right 3 and down 1, how many trees would you encounter?


view: three {
  #THis one is going to be difficult to do using csv-sql. My recommendation:
  #Fire up a new google sheet, add headers to two columns: rownum, forest_row.
  #Copy and paste your input from https://adventofcode.com/2020/day/3/input into forest_row column
  #Set rownum equal to =ROW() so each row has its row number in it. You want that so you can preserve the ordering in SQL later.
  # Download that file as a csv, load it into https://csv-sql.web.app/, and then construct your derived table like below:
  derived_table: {
    sql: SELECT
  2 AS rownum, '.....#.##......#..##..........#' AS forest_row
UNION ALL
SELECT
  3 AS rownum, '##.#.##..#............##....#..' AS forest_row
UNION ALL
SELECT
  4 AS rownum, '......###...#..............#.##' AS forest_row
UNION ALL
SELECT
  5 AS rownum, '.....#..##.#..#......#.#.#..#..' AS forest_row
UNION ALL
SELECT
  6 AS rownum, '..#.......###..#..........#.#..' AS forest_row
UNION ALL
SELECT
  7 AS rownum, '..#..#.##.......##.....#....#..' AS forest_row
UNION ALL
SELECT
  8 AS rownum, '.##....##....##.###.....###..#.' AS forest_row
UNION ALL
SELECT
  9 AS rownum, '..##....#...##..#....#.#.#.....' AS forest_row
UNION ALL
SELECT
  10 AS rownum, '.....##..###.##...............#' AS forest_row
UNION ALL
SELECT
  11 AS rownum, '#.....#..#....#.##...####..#...' AS forest_row
UNION ALL
SELECT
  12 AS rownum, '#......#.#....#..#.##....#..#.#' AS forest_row
UNION ALL
SELECT
  13 AS rownum, '##.#...#.#............#......#.' AS forest_row
UNION ALL
SELECT
  14 AS rownum, '.#####.......#..#.#....#......#' AS forest_row
UNION ALL
SELECT
  15 AS rownum, '..#.#....#.#.##...#.##...##....' AS forest_row
UNION ALL
SELECT
  16 AS rownum, '.....#.#...#..####.##..#.......' AS forest_row
UNION ALL
SELECT
  17 AS rownum, '#....#...##.#.#.##.#..##.....#.' AS forest_row
UNION ALL
SELECT
  18 AS rownum, '##.##...#....#...#......#..##..' AS forest_row
UNION ALL
SELECT
  19 AS rownum, '....##...#..#.#...#.#.#.....##.' AS forest_row
UNION ALL
SELECT
  20 AS rownum, '..#....##......##....#.#....#..' AS forest_row
UNION ALL
SELECT
  21 AS rownum, '#..#....#....###..#.##....#.#.#' AS forest_row
UNION ALL
SELECT
  22 AS rownum, '..#.#####..##....#....#.....##.' AS forest_row
UNION ALL
SELECT
  23 AS rownum, '.#...##.......#...#....#.#...##' AS forest_row
UNION ALL
SELECT
  24 AS rownum, '#.#.#.##.......#.....#.#.#....#' AS forest_row
UNION ALL
SELECT
  25 AS rownum, '.#.#.....#.......#.......##....' AS forest_row
UNION ALL
SELECT
  26 AS rownum, '.#......#....#....#.......##...' AS forest_row
UNION ALL
SELECT
  27 AS rownum, '#......#.....#......#..#..#....' AS forest_row
UNION ALL
SELECT
  28 AS rownum, '#.#...#...#....##....#.#...#..#' AS forest_row
UNION ALL
SELECT
  29 AS rownum, '....#.....##...#...#..#.#......' AS forest_row
UNION ALL
SELECT
  30 AS rownum, '..#......#..........#...#.#....' AS forest_row
UNION ALL
SELECT
  31 AS rownum, '..#..#......####..##...###.....' AS forest_row
UNION ALL
SELECT
  32 AS rownum, '.#.....#...##...#.##........###' AS forest_row
UNION ALL
SELECT
  33 AS rownum, '#.#....#..#....#..#.....#.#..#.' AS forest_row
UNION ALL
SELECT
  34 AS rownum, '...##.##.#.#.##...#.....#......' AS forest_row
UNION ALL
SELECT
  35 AS rownum, '##....#.#.#...####.#.#.#.#.....' AS forest_row
UNION ALL
SELECT
  36 AS rownum, '.##.........#..#..###..........' AS forest_row
UNION ALL
SELECT
  37 AS rownum, '..##.###.#..#..#....##.....#...' AS forest_row
UNION ALL
SELECT
  38 AS rownum, '##........#..###....#.#..#..#..' AS forest_row
UNION ALL
SELECT
  39 AS rownum, '....#.#.......##..#.#.#.#......' AS forest_row
UNION ALL
SELECT
  40 AS rownum, '....##.....#.........##.......#' AS forest_row
UNION ALL
SELECT
  41 AS rownum, '..#........##.#.........###..##' AS forest_row
UNION ALL
SELECT
  42 AS rownum, '....#..................##..#...' AS forest_row
UNION ALL
SELECT
  43 AS rownum, '#...#.#..###..#.....#..#..#...#' AS forest_row
UNION ALL
SELECT
  44 AS rownum, '..#..#.##..#..#.......#.......#' AS forest_row
UNION ALL
SELECT
  45 AS rownum, '.....#..##..#....##...........#' AS forest_row
UNION ALL
SELECT
  46 AS rownum, '..##...#........#...#.#.......#' AS forest_row
UNION ALL
SELECT
  47 AS rownum, '.........#.#..#.#..#.##.#.###..' AS forest_row
UNION ALL
SELECT
  48 AS rownum, '....#...#..#..#......##....#.#.' AS forest_row
UNION ALL
SELECT
  49 AS rownum, '..#..#.#....#....#..#.####..##.' AS forest_row
UNION ALL
SELECT
  50 AS rownum, '##....#.....#......##.###.#..#.' AS forest_row
UNION ALL
SELECT
  51 AS rownum, '#..#..##..###......#.#.#.#...#.' AS forest_row
UNION ALL
SELECT
  52 AS rownum, '.......#..##..##...#...#..#....' AS forest_row
UNION ALL
SELECT
  53 AS rownum, '..#.###.#...#....#.##.#.....##.' AS forest_row
UNION ALL
SELECT
  54 AS rownum, '.#.#.......##...##...##....#...' AS forest_row
UNION ALL
SELECT
  55 AS rownum, '#...#.#.#...#.####..#..##......' AS forest_row
UNION ALL
SELECT
  56 AS rownum, '###..#.##..#..........#...#....' AS forest_row
UNION ALL
SELECT
  57 AS rownum, '##.#.........#..##......####...' AS forest_row
UNION ALL
SELECT
  58 AS rownum, '..##.#..#....#.##..............' AS forest_row
UNION ALL
SELECT
  59 AS rownum, '...#....#.......###............' AS forest_row
UNION ALL
SELECT
  60 AS rownum, '...#.....##....#.#.#.#.......##' AS forest_row
UNION ALL
SELECT
  61 AS rownum, '###.###...#...#...###.##...##..' AS forest_row
UNION ALL
SELECT
  62 AS rownum, '#.#....#.##..#.....#.....##.#..' AS forest_row
UNION ALL
SELECT
  63 AS rownum, '...#....#....#.........#....#.#' AS forest_row
UNION ALL
SELECT
  64 AS rownum, '##.#....#........#..#..##.#....' AS forest_row
UNION ALL
SELECT
  65 AS rownum, '.#.#..#.......#...##.......#...' AS forest_row
UNION ALL
SELECT
  66 AS rownum, '.##...##........#....#.#..#....' AS forest_row
UNION ALL
SELECT
  67 AS rownum, '....#..#.##.###.....#.#........' AS forest_row
UNION ALL
SELECT
  68 AS rownum, '.#.#...#.#..#.....#.........#..' AS forest_row
UNION ALL
SELECT
  69 AS rownum, '.......#.#.#..##....#.........#' AS forest_row
UNION ALL
SELECT
  70 AS rownum, '.##...#....#..#...#........#..#' AS forest_row
UNION ALL
SELECT
  71 AS rownum, '....#....#..#.#..#.#.#....##.##' AS forest_row
UNION ALL
SELECT
  72 AS rownum, '..##....#.....##..#.#...#...#..' AS forest_row
UNION ALL
SELECT
  73 AS rownum, '#.##.........#.....#.......#.##' AS forest_row
UNION ALL
SELECT
  74 AS rownum, '...#...##.#.#..........#......#' AS forest_row
UNION ALL
SELECT
  75 AS rownum, '###...#.....#..#.......#####..#' AS forest_row
UNION ALL
SELECT
  76 AS rownum, '#.####...##.#.#..#...#.........' AS forest_row
UNION ALL
SELECT
  77 AS rownum, '.##.....#.....##..#...##.##....' AS forest_row
UNION ALL
SELECT
  78 AS rownum, '.........###...#......##....###' AS forest_row
UNION ALL
SELECT
  79 AS rownum, '.#....##...###.#..#...##..#.#.#' AS forest_row
UNION ALL
SELECT
  80 AS rownum, '.......#.......#.#...##.#......' AS forest_row
UNION ALL
SELECT
  81 AS rownum, '.....#.#........#..##.....##...' AS forest_row
UNION ALL
SELECT
  82 AS rownum, '....#.#.........##.#...##..#.#.' AS forest_row
UNION ALL
SELECT
  83 AS rownum, '#..#..#.##..#.##.##.....##.###.' AS forest_row
UNION ALL
SELECT
  84 AS rownum, '..##.........###...#....#....#.' AS forest_row
UNION ALL
SELECT
  85 AS rownum, '.###...#..#.##...........#.....' AS forest_row
UNION ALL
SELECT
  86 AS rownum, '#..##..........#..........#....' AS forest_row
UNION ALL
SELECT
  87 AS rownum, '.....#.#....#..##..#...#.#....#' AS forest_row
UNION ALL
SELECT
  88 AS rownum, '..#.....#.#....#...##.##.......' AS forest_row
UNION ALL
SELECT
  89 AS rownum, '##.....##........#....#..##....' AS forest_row
UNION ALL
SELECT
  90 AS rownum, '.#..#.#.........#..#..#........' AS forest_row
UNION ALL
SELECT
  91 AS rownum, '.............##....#....#..#...' AS forest_row
UNION ALL
SELECT
  92 AS rownum, '....##....#..#.#.##....###.##.#' AS forest_row
UNION ALL
SELECT
  93 AS rownum, '.###..#.....#..#..##..#..##..#.' AS forest_row
UNION ALL
SELECT
  94 AS rownum, '...#..###.......#.#....#..###..' AS forest_row
UNION ALL
SELECT
  95 AS rownum, '#.#..#.....#...#......#........' AS forest_row
UNION ALL
SELECT
  96 AS rownum, '#..#..............###.#......#.' AS forest_row
UNION ALL
SELECT
  97 AS rownum, '..#....##.#....#.##.#.#...#....' AS forest_row
UNION ALL
SELECT
  98 AS rownum, '.........##..#...#.#.......#...' AS forest_row
UNION ALL
SELECT
  99 AS rownum, '........#...#.#....#.....##..#.' AS forest_row
UNION ALL
SELECT
  100 AS rownum, '...#.##..#..#..###..#..#......#' AS forest_row
UNION ALL
SELECT
  101 AS rownum, '.....####......#...#....#...#.#' AS forest_row
UNION ALL
SELECT
  102 AS rownum, '...###.#.#......#....#.......#.' AS forest_row
UNION ALL
SELECT
  103 AS rownum, '#...##.#....#....##....##.###..' AS forest_row
UNION ALL
SELECT
  104 AS rownum, '.......##...##.....#.##.#..#..#' AS forest_row
UNION ALL
SELECT
  105 AS rownum, '.....#.#............##...#.####' AS forest_row
UNION ALL
SELECT
  106 AS rownum, '.##..#.#.#.#..#.#.#.....#.##...' AS forest_row
UNION ALL
SELECT
  107 AS rownum, '.#..####...#.#....#.....#..#...' AS forest_row
UNION ALL
SELECT
  108 AS rownum, '....##..#.#...#..#....#.#......' AS forest_row
UNION ALL
SELECT
  109 AS rownum, '...#......###..#..###..#.....#.' AS forest_row
UNION ALL
SELECT
  110 AS rownum, '.#.#.#..##....#...##..#.....#..' AS forest_row
UNION ALL
SELECT
  111 AS rownum, '###....#....#...##.....#...#...' AS forest_row
UNION ALL
SELECT
  112 AS rownum, '#.##....#......#...###.........' AS forest_row
UNION ALL
SELECT
  113 AS rownum, '.#..#.#...#..#....#....#....#..' AS forest_row
UNION ALL
SELECT
  114 AS rownum, '...............##...####..#..#.' AS forest_row
UNION ALL
SELECT
  115 AS rownum, '#.#...........####..#...##.....' AS forest_row
UNION ALL
SELECT
  116 AS rownum, '##.#....#........#......#...##.' AS forest_row
UNION ALL
SELECT
  117 AS rownum, '......#...#...#....#....#.....#' AS forest_row
UNION ALL
SELECT
  118 AS rownum, '#......#.............#....###..' AS forest_row
UNION ALL
SELECT
  119 AS rownum, '.#...#...##.....#...##.##..#...' AS forest_row
UNION ALL
SELECT
  120 AS rownum, '..#.#......#.#........#........' AS forest_row
UNION ALL
SELECT
  121 AS rownum, '.......#..#.#...##..#.#.#......' AS forest_row
UNION ALL
SELECT
  122 AS rownum, '..##...#.##........#....#.#...#' AS forest_row
UNION ALL
SELECT
  123 AS rownum, '.....#..#..#........#.#......##' AS forest_row
UNION ALL
SELECT
  124 AS rownum, '....#.#...##............##....#' AS forest_row
UNION ALL
SELECT
  125 AS rownum, '.#.#....#.#.#...#...#.##.....#.' AS forest_row
UNION ALL
SELECT
  126 AS rownum, '#.#.##...#....#.#.#..#.##..#.#.' AS forest_row
UNION ALL
SELECT
  127 AS rownum, '.........####..#...#...#.......' AS forest_row
UNION ALL
SELECT
  128 AS rownum, '#..#..####......#..##..#...#...' AS forest_row
UNION ALL
SELECT
  129 AS rownum, '.........##..................#.' AS forest_row
UNION ALL
SELECT
  130 AS rownum, '.....##.#..##.#.#...#......##..' AS forest_row
UNION ALL
SELECT
  131 AS rownum, '...#....#....#.#.....#...#..#.#' AS forest_row
UNION ALL
SELECT
  132 AS rownum, '#...##.#...##...........#..#...' AS forest_row
UNION ALL
SELECT
  133 AS rownum, '#..........#.#..#..#.##..#..#.#' AS forest_row
UNION ALL
SELECT
  134 AS rownum, '.#...#.##...#.#.#..#.......##..' AS forest_row
UNION ALL
SELECT
  135 AS rownum, '.........#...........#..#..#...' AS forest_row
UNION ALL
SELECT
  136 AS rownum, '.##...##....#.#......#........#' AS forest_row
UNION ALL
SELECT
  137 AS rownum, '#.#...........#....#.......#...' AS forest_row
UNION ALL
SELECT
  138 AS rownum, '##.#.#.......#...###......##..#' AS forest_row
UNION ALL
SELECT
  139 AS rownum, '...###..#.##..##.#.#.......#...' AS forest_row
UNION ALL
SELECT
  140 AS rownum, '.#...#..##.#...#........#.....#' AS forest_row
UNION ALL
SELECT
  141 AS rownum, '...#.......#..#..........#.#...' AS forest_row
UNION ALL
SELECT
  142 AS rownum, '..#.#.#.#.....#.#.......#..#..#' AS forest_row
UNION ALL
SELECT
  143 AS rownum, '#.##.....#..##...#..###.#....#.' AS forest_row
UNION ALL
SELECT
  144 AS rownum, '.......#...........#...#....###' AS forest_row
UNION ALL
SELECT
  145 AS rownum, '.......#..#...#.............#..' AS forest_row
UNION ALL
SELECT
  146 AS rownum, '#.....###.......#...#........#.' AS forest_row
UNION ALL
SELECT
  147 AS rownum, '.#..#..#..#...........#........' AS forest_row
UNION ALL
SELECT
  148 AS rownum, '....#.#...#.#.##.#.#....#.##..#' AS forest_row
UNION ALL
SELECT
  149 AS rownum, '.......#..##...##...#...#......' AS forest_row
UNION ALL
SELECT
  150 AS rownum, '...#.....##.###...#.#...##....#' AS forest_row
UNION ALL
SELECT
  151 AS rownum, '#..#....#...##......#....##....' AS forest_row
UNION ALL
SELECT
  152 AS rownum, '#.#.......#....#.###.##..#..#..' AS forest_row
UNION ALL
SELECT
  153 AS rownum, '..##...........#...#....#......' AS forest_row
UNION ALL
SELECT
  154 AS rownum, '.#........#.....#..#..#...#..##' AS forest_row
UNION ALL
SELECT
  155 AS rownum, '.....#.#.#..#.......#....#.....' AS forest_row
UNION ALL
SELECT
  156 AS rownum, '#..#.#......#......##....#.....' AS forest_row
UNION ALL
SELECT
  157 AS rownum, '##.....................##......' AS forest_row
UNION ALL
SELECT
  158 AS rownum, '.##........###..#.........#...#' AS forest_row
UNION ALL
SELECT
  159 AS rownum, '........#.........#..#.........' AS forest_row
UNION ALL
SELECT
  160 AS rownum, '.#.##....#.....#...#.........##' AS forest_row
UNION ALL
SELECT
  161 AS rownum, '....##......#.........#........' AS forest_row
UNION ALL
SELECT
  162 AS rownum, '...#.#..#...##.##.#.#..####....' AS forest_row
UNION ALL
SELECT
  163 AS rownum, '..##...........##.#.#....#.....' AS forest_row
UNION ALL
SELECT
  164 AS rownum, '.#.....#.#...#..#.......#....#.' AS forest_row
UNION ALL
SELECT
  165 AS rownum, '....#...#......##...#...##.#..#' AS forest_row
UNION ALL
SELECT
  166 AS rownum, '....#..##....#..#.........##.#.' AS forest_row
UNION ALL
SELECT
  167 AS rownum, '..##...##.##....#....##.###...#' AS forest_row
UNION ALL
SELECT
  168 AS rownum, '..#....##..##.#.#.#...#......#.' AS forest_row
UNION ALL
SELECT
  169 AS rownum, '##...#.........#...........#...' AS forest_row
UNION ALL
SELECT
  170 AS rownum, '.##....##.#.....#...#.......#..' AS forest_row
UNION ALL
SELECT
  171 AS rownum, '..........##.###.##....###....#' AS forest_row
UNION ALL
SELECT
  172 AS rownum, '..........#..##..#....#.#.##.##' AS forest_row
UNION ALL
SELECT
  173 AS rownum, '........##.#...#.#.#.#...###.#.' AS forest_row
UNION ALL
SELECT
  174 AS rownum, '.#......#.#.#...###.#.#.#......' AS forest_row
UNION ALL
SELECT
  175 AS rownum, '.........#......#......#...#..#' AS forest_row
UNION ALL
SELECT
  176 AS rownum, '......#.....#.##....##.#####..#' AS forest_row
UNION ALL
SELECT
  177 AS rownum, '..#..##...###.#..........#.#.#.' AS forest_row
UNION ALL
SELECT
  178 AS rownum, '.#..#....###.#...#..#....#...##' AS forest_row
UNION ALL
SELECT
  179 AS rownum, '...................#..........#' AS forest_row
UNION ALL
SELECT
  180 AS rownum, '....###.....#...##......#.....#' AS forest_row
UNION ALL
SELECT
  181 AS rownum, '#.....#..##.....#.#..........#.' AS forest_row
UNION ALL
SELECT
  182 AS rownum, '..#.......##.#....#..#.##.#...#' AS forest_row
UNION ALL
SELECT
  183 AS rownum, '........##.#..###..#......##...' AS forest_row
UNION ALL
SELECT
  184 AS rownum, '#...........##.#...###..#....#.' AS forest_row
UNION ALL
SELECT
  185 AS rownum, '....#...........#.....#.#...#..' AS forest_row
UNION ALL
SELECT
  186 AS rownum, '.##..#.#...#...#.##...#..#.....' AS forest_row
UNION ALL
SELECT
  187 AS rownum, '#........#.#.#.#.#.#...........' AS forest_row
UNION ALL
SELECT
  188 AS rownum, '#..#.....#..#..#.##....#....#.#' AS forest_row
UNION ALL
SELECT
  189 AS rownum, '..#............##....#.#.##...#' AS forest_row
UNION ALL
SELECT
  190 AS rownum, '.....###.#....#.#......#.###...' AS forest_row
UNION ALL
SELECT
  191 AS rownum, '...#.....#.#.................#.' AS forest_row
UNION ALL
SELECT
  192 AS rownum, '..#...##..#.#...#...#...#.....#' AS forest_row
UNION ALL
SELECT
  193 AS rownum, '.##.#........#..#....##..#..##.' AS forest_row
UNION ALL
SELECT
  194 AS rownum, '.#..........#...#.#..#..#.#....' AS forest_row
UNION ALL
SELECT
  195 AS rownum, '#.......##.........#.##..#.####' AS forest_row
UNION ALL
SELECT
  196 AS rownum, '.#..............#.......##.....' AS forest_row
UNION ALL
SELECT
  197 AS rownum, '#......#.##..........#..#......' AS forest_row
UNION ALL
SELECT
  198 AS rownum, '..##...#...#.#...#............#' AS forest_row
UNION ALL
SELECT
  199 AS rownum, '.##.##..##..##........##.....#.' AS forest_row
UNION ALL
SELECT
  200 AS rownum, '.....#..#.....##...............' AS forest_row
UNION ALL
SELECT
  201 AS rownum, '.#..#...##...#...#.....#.......' AS forest_row
UNION ALL
SELECT
  202 AS rownum, '#......#...#.......#..##.###.##' AS forest_row
UNION ALL
SELECT
  203 AS rownum, '###..##......##......###....#..' AS forest_row
UNION ALL
SELECT
  204 AS rownum, '....#..........#...#.##.#.....#' AS forest_row
UNION ALL
SELECT
  205 AS rownum, '.........#....#..#..#.#..##....' AS forest_row
UNION ALL
SELECT
  206 AS rownum, '.....#.....#...........#......#' AS forest_row
UNION ALL
SELECT
  207 AS rownum, '.#.......#...#....##...#.##...#' AS forest_row
UNION ALL
SELECT
  208 AS rownum, '..##.#..............#..#...#.#.' AS forest_row
UNION ALL
SELECT
  209 AS rownum, '.#..####.#.........#....#....#.' AS forest_row
UNION ALL
SELECT
  210 AS rownum, '..###.#...#..#......#.......###' AS forest_row
UNION ALL
SELECT
  211 AS rownum, '.#.#..##...###...#...#.#...#.#.' AS forest_row
UNION ALL
SELECT
  212 AS rownum, '...#..##..###.#..#.....#.##....' AS forest_row
UNION ALL
SELECT
  213 AS rownum, '#...###.#...##.....####.....#..' AS forest_row
UNION ALL
SELECT
  214 AS rownum, '.#.##...#..#.#..##.....#.......' AS forest_row
UNION ALL
SELECT
  215 AS rownum, '...#.##.....##.....#....#......' AS forest_row
UNION ALL
SELECT
  216 AS rownum, '.#...##.....#..###..#..........' AS forest_row
UNION ALL
SELECT
  217 AS rownum, '..........#...#.....#....##.#..' AS forest_row
UNION ALL
SELECT
  218 AS rownum, '.......#...#...#...#........#..' AS forest_row
UNION ALL
SELECT
  219 AS rownum, '#....##..#...#..##.#.#.....#...' AS forest_row
UNION ALL
SELECT
  220 AS rownum, '.#.#..............#..#....#....' AS forest_row
UNION ALL
SELECT
  221 AS rownum, '.####.#.#.###......#...#.#....#' AS forest_row
UNION ALL
SELECT
  222 AS rownum, '.#...#...##.#...............#.#' AS forest_row
UNION ALL
SELECT
  223 AS rownum, '...#.......##...#...#....##....' AS forest_row
UNION ALL
SELECT
  224 AS rownum, '#..........###.##..........##.#' AS forest_row
UNION ALL
SELECT
  225 AS rownum, '.......#...#....#.#..#.#....#..' AS forest_row
UNION ALL
SELECT
  226 AS rownum, '....#.##.#...###..#..##.##.....' AS forest_row
UNION ALL
SELECT
  227 AS rownum, '..#.#.#......#.#.......###.....' AS forest_row
UNION ALL
SELECT
  228 AS rownum, '#..................#.##....#...' AS forest_row
UNION ALL
SELECT
  229 AS rownum, '#.....#..#.#.#..#...#.........#' AS forest_row
UNION ALL
SELECT
  230 AS rownum, '..#..#...#.#.##........#.......' AS forest_row
UNION ALL
SELECT
  231 AS rownum, '#..#.#..#..........###...#.#...' AS forest_row
UNION ALL
SELECT
  232 AS rownum, '.......#.##....#........##.#...' AS forest_row
UNION ALL
SELECT
  233 AS rownum, '.####.#.#...#.#...##.##.....###' AS forest_row
UNION ALL
SELECT
  234 AS rownum, '........#.#...#.#..##...##.....' AS forest_row
UNION ALL
SELECT
  235 AS rownum, '....##.##......#.##.........#..' AS forest_row
UNION ALL
SELECT
  236 AS rownum, '.#..#...#.#...........#........' AS forest_row
UNION ALL
SELECT
  237 AS rownum, '.......#..........#....#...#...' AS forest_row
UNION ALL
SELECT
  238 AS rownum, '..###.#.###..#..#.....#..##....' AS forest_row
UNION ALL
SELECT
  239 AS rownum, '.#..........#.......##...#.....' AS forest_row
UNION ALL
SELECT
  240 AS rownum, '.#.....#...#........#...#.##..#' AS forest_row
UNION ALL
SELECT
  241 AS rownum, '.#..#.......#..#.......#.#.#...' AS forest_row
UNION ALL
SELECT
  242 AS rownum, '....#..##.#...##...#.#....#....' AS forest_row
UNION ALL
SELECT
  243 AS rownum, '.....#.........#..#..#....#....' AS forest_row
UNION ALL
SELECT
  244 AS rownum, '..#.#..##....#..#..##.#.#.....#' AS forest_row
UNION ALL
SELECT
  245 AS rownum, '........#.#...###....#.#.#.....' AS forest_row
UNION ALL
SELECT
  246 AS rownum, '.#.....#.......#..###.#........' AS forest_row
UNION ALL
SELECT
  247 AS rownum, '.......#...#.#...#...##........' AS forest_row
UNION ALL
SELECT
  248 AS rownum, '##.............#.#.....#.#..#..' AS forest_row
UNION ALL
SELECT
  249 AS rownum, '.#....#.......#.#.......#..##..' AS forest_row
UNION ALL
SELECT
  250 AS rownum, '#.....#........#..##..##.......' AS forest_row
UNION ALL
SELECT
  251 AS rownum, '...........#.........###......#' AS forest_row
UNION ALL
SELECT
  252 AS rownum, '....#.##...#.#...#...#....#..##' AS forest_row
UNION ALL
SELECT
  253 AS rownum, '......#..##......#......#.##.#.' AS forest_row
UNION ALL
SELECT
  254 AS rownum, '......##....####...###...#.....' AS forest_row
UNION ALL
SELECT
  255 AS rownum, '#....#..........#.#.##.....#..#' AS forest_row
UNION ALL
SELECT
  256 AS rownum, '....#.#...........#.#.#.#.#...#' AS forest_row
UNION ALL
SELECT
  257 AS rownum, '....####.....##...#..##..#...#.' AS forest_row
UNION ALL
SELECT
  258 AS rownum, '#....#.###..###.....#..###.....' AS forest_row
UNION ALL
SELECT
  259 AS rownum, '..##.........#......#...##.#...' AS forest_row
UNION ALL
SELECT
  260 AS rownum, '..#.....#.#...#.##.#...#..###.#' AS forest_row
UNION ALL
SELECT
  261 AS rownum, '..#.##..##........#.......#.###' AS forest_row
UNION ALL
SELECT
  262 AS rownum, '.....#..........#.....#....#...' AS forest_row
UNION ALL
SELECT
  263 AS rownum, '.......##..##..###.......#####.' AS forest_row
UNION ALL
SELECT
  264 AS rownum, '..###......#.#....###....##...#' AS forest_row
UNION ALL
SELECT
  265 AS rownum, '#..##.....#..###...#.....##.##.' AS forest_row
UNION ALL
SELECT
  266 AS rownum, '#..#..##.##.###.####.##.#......' AS forest_row
UNION ALL
SELECT
  267 AS rownum, '.#.#......#.##......#..#......#' AS forest_row
UNION ALL
SELECT
  268 AS rownum, '..###.....#.#......#.#.####....' AS forest_row
UNION ALL
SELECT
  269 AS rownum, '#..............#..#.#...#.###..' AS forest_row
UNION ALL
SELECT
  270 AS rownum, '...#..#.##..........##.#...#.##' AS forest_row
UNION ALL
SELECT
  271 AS rownum, '.#.#.#.........#....#.#..#.....' AS forest_row
UNION ALL
SELECT
  272 AS rownum, '..#.##..#...#..#...#......#....' AS forest_row
UNION ALL
SELECT
  273 AS rownum, '.......#...#.##.#.#..#...##..#.' AS forest_row
UNION ALL
SELECT
  274 AS rownum, '..........#.####...#........#.#' AS forest_row
UNION ALL
SELECT
  275 AS rownum, '....#...#....##.#.........#.#..' AS forest_row
UNION ALL
SELECT
  276 AS rownum, '##.#..#.......###....#..#..#.#.' AS forest_row
UNION ALL
SELECT
  277 AS rownum, '..##.....#..#.#.#.####......#..' AS forest_row
UNION ALL
SELECT
  278 AS rownum, '.#.....#..........#..#..#.#....' AS forest_row
UNION ALL
SELECT
  279 AS rownum, '......#.#.......#.#...#..#..#..' AS forest_row
UNION ALL
SELECT
  280 AS rownum, '...#...............#....#...#..' AS forest_row
UNION ALL
SELECT
  281 AS rownum, '##.......#.........#.......#...' AS forest_row
UNION ALL
SELECT
  282 AS rownum, '...#.......###...#.#...#.......' AS forest_row
UNION ALL
SELECT
  283 AS rownum, '#...###....#....##....#....#...' AS forest_row
UNION ALL
SELECT
  284 AS rownum, '...#....##..#.#.............##.' AS forest_row
UNION ALL
SELECT
  285 AS rownum, '.....#.#.#..#......#...#.#..#..' AS forest_row
UNION ALL
SELECT
  286 AS rownum, '.##....#..##..#####..##.....##.' AS forest_row
UNION ALL
SELECT
  287 AS rownum, '....##.#.#..#.....#.#...#......' AS forest_row
UNION ALL
SELECT
  288 AS rownum, '...#.....##.#.#..##..#.#.......' AS forest_row
UNION ALL
SELECT
  289 AS rownum, '.......#..#..#..........#......' AS forest_row
UNION ALL
SELECT
  290 AS rownum, '.......#...#..#.........#.##...' AS forest_row
UNION ALL
SELECT
  291 AS rownum, '..#..#..#...##..#.#....#......#' AS forest_row
UNION ALL
SELECT
  292 AS rownum, '..#....#...#.#......#........#.' AS forest_row
UNION ALL
SELECT
  293 AS rownum, '.#...#..#...#.#..........#.....' AS forest_row
UNION ALL
SELECT
  294 AS rownum, '#..#...####..#......##.##.#.#..' AS forest_row
UNION ALL
SELECT
  295 AS rownum, '.#...#.#...#.#.....#..##.#.....' AS forest_row
UNION ALL
SELECT
  296 AS rownum, '..#.##.#......#.........##...#.' AS forest_row
UNION ALL
SELECT
  297 AS rownum, '###..............#.............' AS forest_row
UNION ALL
SELECT
  298 AS rownum, '...#...###....#..#.............' AS forest_row
UNION ALL
SELECT
  299 AS rownum, '.##....#......#..#.....#..#..#.' AS forest_row
UNION ALL
SELECT
  300 AS rownum, '.#..........#.....##...#..#....' AS forest_row
UNION ALL
SELECT
  301 AS rownum, '....##..#.#......###.##......#.' AS forest_row
UNION ALL
SELECT
  302 AS rownum, '.#..##.#.##.#...##.#......###.#' AS forest_row
UNION ALL
SELECT
  303 AS rownum, '#..###.#...###..#........#.#...' AS forest_row
UNION ALL
SELECT
  304 AS rownum, '#..#.#.#..#...###.##.##..#..#..' AS forest_row
UNION ALL
SELECT
  305 AS rownum, '#.#..#....#.........##......#..' AS forest_row
UNION ALL
SELECT
  306 AS rownum, '....###.....###....#...........' AS forest_row
UNION ALL
SELECT
  307 AS rownum, '....#..##.##....##..#.....#....' AS forest_row
UNION ALL
SELECT
  308 AS rownum, '.#.....#....####...#..##.#..###' AS forest_row
UNION ALL
SELECT
  309 AS rownum, '.........##..#......#.#...##...' AS forest_row
UNION ALL
SELECT
  310 AS rownum, '.##.......#.....#.###.#..#.#..#' AS forest_row
UNION ALL
SELECT
  311 AS rownum, '.....#.#...###.....#......####.' AS forest_row
UNION ALL
SELECT
  312 AS rownum, '##.#...#......#.#.#..#.####...#' AS forest_row
UNION ALL
SELECT
  313 AS rownum, '.#.##.....#..#..#.............#' AS forest_row
UNION ALL
SELECT
  314 AS rownum, '.#..###..#..#......#..##......#' AS forest_row
UNION ALL
SELECT
  315 AS rownum, '.......#.#........##.....#.#...' AS forest_row
UNION ALL
SELECT
  316 AS rownum, '#....#...#..###..#.#.....#.##..' AS forest_row
UNION ALL
SELECT
  317 AS rownum, '.##.....#.#....###..#.....##...' AS forest_row
UNION ALL
SELECT
  318 AS rownum, '...##....#....#...#....#.#.#...' AS forest_row
UNION ALL
SELECT
  319 AS rownum, '#####..#...........###....#...#' AS forest_row
UNION ALL
SELECT
  320 AS rownum, '.#.......##.##.....#....#......' AS forest_row
UNION ALL
SELECT
  321 AS rownum, '.#..#.#...#..#......#...#..#.#.' AS forest_row
UNION ALL
SELECT
  322 AS rownum, '....#.....##...#####..#...#...#' AS forest_row
UNION ALL
SELECT
  323 AS rownum, '###.##...#.#............#....#.' AS forest_row
UNION ALL
SELECT
  324 AS rownum, '.....#...#........##.........#.' AS forest_row
 ;;
    sql_trigger_value: SELECT 1 ;;
  }

  #This table contains row formatted data on the forests. You might want to alter it significantly.

  dimension: forest_row {
    type: string
    sql: ${TABLE}.forest_row ;;
  }
}


#Part Two: Once you've completed the first part, submit your work at https://adventofcode.com/2020/day/3 and get Part 2.
