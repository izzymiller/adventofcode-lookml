# --- Day 4: Passport Processing ---
# You arrive at the airport only to realize that you grabbed your North Pole Credentials instead of your passport. While these documents are extremely similar, North Pole Credentials aren't issued by a country and therefore aren't actually valid documentation for travel in most of the world.

# It seems like you're not the only one having problems, though; a very long line has formed for the automatic passport scanners, and the delay could upset your travel itinerary.

# Due to some questionable network security, you realize you might be able to solve both of these problems at the same time.

# The automatic passport scanners are slow because they're having trouble detecting which passports have all required fields. The expected fields are as follows:

# byr (Birth Year)
# iyr (Issue Year)
# eyr (Expiration Year)
# hgt (Height)
# hcl (Hair Color)
# ecl (Eye Color)
# pid (Passport ID)
# cid (Country ID)
# Passport data is validated in batch files (your puzzle input). Each passport is represented as a sequence of key:value pairs separated by spaces or newlines. Passports are separated by blank lines.

# Here is an example batch file containing four passports:

# ecl:gry pid:860033327 eyr:2020 hcl:#fffffd
# byr:1937 iyr:2017 cid:147 hgt:183cm

# iyr:2013 ecl:amb cid:350 eyr:2023 pid:028048884
# hcl:#cfa07d byr:1929

# hcl:#ae17e1 iyr:2013
# eyr:2024
# ecl:brn pid:760753108 byr:1931
# hgt:179cm

# hcl:#cfa07d eyr:2025 pid:166559648
# iyr:2011 ecl:brn hgt:59in
# The first passport is valid - all eight fields are present. The second passport is invalid - it is missing hgt (the Height field).

# The third passport is interesting; the only missing field is cid, so it looks like data from North Pole Credentials, not a passport at all! Surely, nobody would mind if you made the system temporarily ignore missing cid fields. Treat this "passport" as valid.

# The fourth passport is missing two fields, cid and byr. Missing cid is fine, but missing any other field is not, so this passport is invalid.

# According to the above rules, your improved system would report 2 valid passports.

# Count the number of valid passports - those that have all required fields. Treat cid as optional. In your batch file, how many passports are valid?

#Data: https://adventofcode.com/2020/day/4/input

view: four {
  #Do a similar thing to day 3's data— Open that spreadsheet,
  # replace the data in forest_row with the header passportdata and copy in this week's data.
  # Then download as csv, into csv-sql, and up to here.
  # It's kind of cheating since it auto-groups them, but whatever. I'll take it.
  derived_table: {
    sql: SELECT
  2 AS rownum, 'hgt:176cm' AS passportdata
UNION ALL
SELECT
  3 AS rownum, 'iyr:2013' AS passportdata
UNION ALL
SELECT
  4 AS rownum, 'hcl:#fffffd ecl:amb' AS passportdata
UNION ALL
SELECT
  5 AS rownum, 'byr:2000' AS passportdata
UNION ALL
SELECT
  6 AS rownum, 'eyr:2034' AS passportdata
UNION ALL
SELECT
  7 AS rownum, 'cid:89 pid:934693255' AS passportdata
UNION ALL
SELECT
  8 AS rownum, 'hcl:#b5c3db ecl:grn hgt:155cm pid:#baec97 iyr:2017' AS passportdata
UNION ALL
SELECT
  9 AS rownum, 'byr:1939' AS passportdata
UNION ALL
SELECT
  10 AS rownum, 'eyr:2020' AS passportdata
UNION ALL
SELECT
  11 AS rownum, 'pid:526669252 eyr:1972' AS passportdata
UNION ALL
SELECT
  12 AS rownum, 'hgt:152cm ecl:dne byr:1960 hcl:z iyr:2023' AS passportdata
UNION ALL
SELECT
  13 AS rownum, 'eyr:2028 hcl:#c0946f hgt:73in byr:1926 ecl:#473aaf iyr:2016 pid:565318180' AS passportdata
UNION ALL
SELECT
  14 AS rownum, 'pid:472686027 ecl:oth iyr:2019' AS passportdata
UNION ALL
SELECT
  15 AS rownum, 'cid:277 byr:1940' AS passportdata
UNION ALL
SELECT
  16 AS rownum, 'eyr:2030 hgt:170cm' AS passportdata
UNION ALL
SELECT
  17 AS rownum, 'hcl:#62e117' AS passportdata
UNION ALL
SELECT
  18 AS rownum, 'ecl:oth' AS passportdata
UNION ALL
SELECT
  19 AS rownum, 'iyr:2017' AS passportdata
UNION ALL
SELECT
  20 AS rownum, 'pid:938461813 hcl:#733820 byr:1959 hgt:159cm eyr:2022' AS passportdata
UNION ALL
SELECT
  21 AS rownum, 'iyr:2011 eyr:2021 hcl:z' AS passportdata
UNION ALL
SELECT
  22 AS rownum, 'ecl:hzl byr:2002 pid:17324328 cid:140' AS passportdata
UNION ALL
SELECT
  23 AS rownum, 'hgt:186cm' AS passportdata
UNION ALL
SELECT
  24 AS rownum, 'byr:2022 pid:3164234967 iyr:1984' AS passportdata
UNION ALL
SELECT
  25 AS rownum, 'hgt:76cm hcl:6b3837' AS passportdata
UNION ALL
SELECT
  26 AS rownum, 'ecl:#fa362b' AS passportdata
UNION ALL
SELECT
  27 AS rownum, 'eyr:2037' AS passportdata
UNION ALL
SELECT
  28 AS rownum, 'hcl:z eyr:1945' AS passportdata
UNION ALL
SELECT
  29 AS rownum, 'pid:9247286687 hgt:75cm' AS passportdata
UNION ALL
SELECT
  30 AS rownum, 'iyr:1934 cid:326 ecl:zzz' AS passportdata
UNION ALL
SELECT
  31 AS rownum, 'byr:2005' AS passportdata
UNION ALL
SELECT
  32 AS rownum, 'byr:2005' AS passportdata
UNION ALL
SELECT
  33 AS rownum, 'ecl:lzr' AS passportdata
UNION ALL
SELECT
  34 AS rownum, 'eyr:2021 pid:152cm' AS passportdata
UNION ALL
SELECT
  35 AS rownum, 'cid:254 iyr:2020 hcl:z hgt:157cm' AS passportdata
UNION ALL
SELECT
  36 AS rownum, 'iyr:2020 eyr:2020 hcl:#18171d ecl:gry pid:914128753 hgt:168cm' AS passportdata
UNION ALL
SELECT
  37 AS rownum, 'byr:2002' AS passportdata
UNION ALL
SELECT
  38 AS rownum, 'hcl:#7d3b0c hgt:160cm eyr:2020 iyr:2015' AS passportdata
UNION ALL
SELECT
  39 AS rownum, 'pid:054067854 ecl:brn byr:2023' AS passportdata
UNION ALL
SELECT
  40 AS rownum, 'hcl:#cfa07d hgt:157cm' AS passportdata
UNION ALL
SELECT
  41 AS rownum, 'byr:1994 eyr:2027 pid:344443856' AS passportdata
UNION ALL
SELECT
  42 AS rownum, 'iyr:2016' AS passportdata
UNION ALL
SELECT
  43 AS rownum, 'pid:762423097' AS passportdata
UNION ALL
SELECT
  44 AS rownum, 'iyr:2014 hcl:#a97842 ecl:brn hgt:180cm byr:1927 eyr:2021' AS passportdata
UNION ALL
SELECT
  45 AS rownum, 'pid:6645616064 hcl:#ceb3a1 byr:2030' AS passportdata
UNION ALL
SELECT
  46 AS rownum, 'eyr:2032 hgt:158cm iyr:2012' AS passportdata
UNION ALL
SELECT
  47 AS rownum, 'ecl:#e9619e' AS passportdata
UNION ALL
SELECT
  48 AS rownum, 'eyr:2022' AS passportdata
UNION ALL
SELECT
  49 AS rownum, 'ecl:brn' AS passportdata
UNION ALL
SELECT
  50 AS rownum, 'byr:1986' AS passportdata
UNION ALL
SELECT
  51 AS rownum, 'hgt:161cm cid:99 pid:288726584 hcl:#6b5442 iyr:2019' AS passportdata
UNION ALL
SELECT
  52 AS rownum, 'cid:75' AS passportdata
UNION ALL
SELECT
  53 AS rownum, 'pid:117771843' AS passportdata
UNION ALL
SELECT
  54 AS rownum, 'hgt:184cm byr:1937 ecl:brn' AS passportdata
UNION ALL
SELECT
  55 AS rownum, 'hcl:#d88fd9' AS passportdata
UNION ALL
SELECT
  56 AS rownum, 'iyr:2015 eyr:2027' AS passportdata
UNION ALL
SELECT
  57 AS rownum, 'iyr:2016 hcl:#fffffd hgt:170cm eyr:2022 ecl:oth pid:629454113' AS passportdata
UNION ALL
SELECT
  58 AS rownum, 'byr:1952' AS passportdata
UNION ALL
SELECT
  59 AS rownum, 'hcl:#c0946f iyr:2018 hgt:189cm' AS passportdata
UNION ALL
SELECT
  60 AS rownum, 'byr:1971 ecl:oth eyr:2029' AS passportdata
UNION ALL
SELECT
  61 AS rownum, 'pid:800207810' AS passportdata
UNION ALL
SELECT
  62 AS rownum, 'eyr:2022 hcl:#7d3b0c pid:969986413' AS passportdata
UNION ALL
SELECT
  63 AS rownum, 'byr:1978 iyr:2020 hgt:186cm' AS passportdata
UNION ALL
SELECT
  64 AS rownum, 'ecl:gry' AS passportdata
UNION ALL
SELECT
  65 AS rownum, 'hgt:171cm byr:1949 hcl:#341e13' AS passportdata
UNION ALL
SELECT
  66 AS rownum, 'ecl:amb eyr:2030 pid:359107274 iyr:2013' AS passportdata
UNION ALL
SELECT
  67 AS rownum, 'pid:839751525 eyr:2024 byr:1921' AS passportdata
UNION ALL
SELECT
  68 AS rownum, 'iyr:2012 ecl:amb hcl:#b0ed6f hgt:154cm' AS passportdata
UNION ALL
SELECT
  69 AS rownum, 'pid:32592758' AS passportdata
UNION ALL
SELECT
  70 AS rownum, 'byr:2009' AS passportdata
UNION ALL
SELECT
  71 AS rownum, 'hgt:107 iyr:2019 hcl:#866857' AS passportdata
UNION ALL
SELECT
  72 AS rownum, 'eyr:2036 ecl:amb' AS passportdata
UNION ALL
SELECT
  73 AS rownum, 'eyr:2040 hcl:#733820 cid:199' AS passportdata
UNION ALL
SELECT
  74 AS rownum, 'byr:2027' AS passportdata
UNION ALL
SELECT
  75 AS rownum, 'pid:7791792988 ecl:blu iyr:2026' AS passportdata
UNION ALL
SELECT
  76 AS rownum, 'hgt:63cm' AS passportdata
UNION ALL
SELECT
  77 AS rownum, 'iyr:2011 cid:119 pid:344693475' AS passportdata
UNION ALL
SELECT
  78 AS rownum, 'ecl:grn hgt:160cm eyr:2029 hcl:#346973 byr:1996' AS passportdata
UNION ALL
SELECT
  79 AS rownum, 'hgt:161in byr:2025 cid:167 iyr:2024 eyr:2040 pid:034804648' AS passportdata
UNION ALL
SELECT
  80 AS rownum, 'hcl:#efcc98 ecl:oth' AS passportdata
UNION ALL
SELECT
  81 AS rownum, 'ecl:#ba14f0 iyr:1935' AS passportdata
UNION ALL
SELECT
  82 AS rownum, 'hgt:60cm' AS passportdata
UNION ALL
SELECT
  83 AS rownum, 'byr:2003 eyr:1987' AS passportdata
UNION ALL
SELECT
  84 AS rownum, 'hcl:8e509b pid:161cm' AS passportdata
UNION ALL
SELECT
  85 AS rownum, 'iyr:2018 pid:620508652 ecl:amb eyr:2023 hgt:183cm hcl:#a97842' AS passportdata
UNION ALL
SELECT
  86 AS rownum, 'byr:1967 cid:117' AS passportdata
UNION ALL
SELECT
  87 AS rownum, 'eyr:2022 ecl:amb' AS passportdata
UNION ALL
SELECT
  88 AS rownum, 'pid:476049089 iyr:2012' AS passportdata
UNION ALL
SELECT
  89 AS rownum, 'hgt:165cm' AS passportdata
UNION ALL
SELECT
  90 AS rownum, 'byr:1955 hcl:#602927' AS passportdata
UNION ALL
SELECT
  91 AS rownum, 'byr:2014 hcl:z iyr:2029 cid:279 pid:28914607 hgt:75cm ecl:xry' AS passportdata
UNION ALL
SELECT
  92 AS rownum, 'hgt:156cm eyr:2023 iyr:2011 ecl:oth hcl:#7d3b0c pid:561313217 byr:1952' AS passportdata
UNION ALL
SELECT
  93 AS rownum, 'iyr:2011 byr:1935' AS passportdata
UNION ALL
SELECT
  94 AS rownum, 'hcl:#cfa07d ecl:oth pid:830614209' AS passportdata
UNION ALL
SELECT
  95 AS rownum, 'eyr:2028 hgt:173cm' AS passportdata
UNION ALL
SELECT
  96 AS rownum, 'iyr:2012 cid:210 eyr:2022' AS passportdata
UNION ALL
SELECT
  97 AS rownum, 'pid:652810130 hcl:#18171d ecl:grn byr:1960 hgt:152cm' AS passportdata
UNION ALL
SELECT
  98 AS rownum, 'eyr:2026 pid:815848563 hgt:75in iyr:2019 ecl:gry byr:1947' AS passportdata
UNION ALL
SELECT
  99 AS rownum, 'hcl:#cfa07d' AS passportdata
UNION ALL
SELECT
  100 AS rownum, 'cid:181 iyr:2012' AS passportdata
UNION ALL
SELECT
  101 AS rownum, 'eyr:2024 byr:1934 hcl:#c0946f' AS passportdata
UNION ALL
SELECT
  102 AS rownum, 'hgt:165cm ecl:oth pid:232944581' AS passportdata
UNION ALL
SELECT
  103 AS rownum, 'cid:135 iyr:2020' AS passportdata
UNION ALL
SELECT
  104 AS rownum, 'byr:1971 hcl:#733820 pid:531877857 hgt:179cm eyr:2027 ecl:amb' AS passportdata
UNION ALL
SELECT
  105 AS rownum, 'byr:1987 hcl:936807 eyr:2032 ecl:#4bec4a pid:605628619 cid:180 hgt:150in' AS passportdata
UNION ALL
SELECT
  106 AS rownum, 'iyr:2015' AS passportdata
UNION ALL
SELECT
  107 AS rownum, 'hcl:b62ef0 ecl:#092141' AS passportdata
UNION ALL
SELECT
  108 AS rownum, 'pid:876635399 byr:1944 hgt:158cm iyr:2017 eyr:1924' AS passportdata
UNION ALL
SELECT
  109 AS rownum, 'iyr:2016 pid:7039815301 byr:2014 hgt:150 eyr:2032 ecl:blu hcl:z' AS passportdata
UNION ALL
SELECT
  110 AS rownum, 'byr:1979 eyr:2030 iyr:1978 hgt:63 pid:1554613758 hcl:z ecl:amb' AS passportdata
UNION ALL
SELECT
  111 AS rownum, 'hgt:70cm hcl:e45897 iyr:2020 eyr:1977 ecl:dne pid:2878189427 byr:1973' AS passportdata
UNION ALL
SELECT
  112 AS rownum, 'iyr:2003' AS passportdata
UNION ALL
SELECT
  113 AS rownum, 'hcl:#cfa07d' AS passportdata
UNION ALL
SELECT
  114 AS rownum, 'pid:260517078' AS passportdata
UNION ALL
SELECT
  115 AS rownum, 'byr:2030 hgt:175cm eyr:2020' AS passportdata
UNION ALL
SELECT
  116 AS rownum, 'ecl:brn' AS passportdata
UNION ALL
SELECT
  117 AS rownum, 'pid:460604681 eyr:2022' AS passportdata
UNION ALL
SELECT
  118 AS rownum, 'cid:138 iyr:2016 hgt:163cm' AS passportdata
UNION ALL
SELECT
  119 AS rownum, 'byr:1922' AS passportdata
UNION ALL
SELECT
  120 AS rownum, 'hcl:#ceb3a1 ecl:oth' AS passportdata
UNION ALL
SELECT
  121 AS rownum, 'hgt:167cm byr:2009 eyr:1975 cid:295 pid:174cm iyr:2029' AS passportdata
UNION ALL
SELECT
  122 AS rownum, 'hcl:z' AS passportdata
UNION ALL
SELECT
  123 AS rownum, 'hgt:67in ecl:grn' AS passportdata
UNION ALL
SELECT
  124 AS rownum, 'eyr:2023' AS passportdata
UNION ALL
SELECT
  125 AS rownum, 'cid:122 pid:281246917 byr:1990 iyr:2011 hcl:#866857' AS passportdata
UNION ALL
SELECT
  126 AS rownum, 'ecl:#ed7ddc byr:1922 cid:234 hcl:e61b1e iyr:1932 eyr:1996 pid:31344005 hgt:62cm' AS passportdata
UNION ALL
SELECT
  127 AS rownum, 'byr:1949' AS passportdata
UNION ALL
SELECT
  128 AS rownum, 'cid:275 iyr:2017 ecl:grn' AS passportdata
UNION ALL
SELECT
  129 AS rownum, 'hgt:164cm eyr:2027 hcl:#18171d' AS passportdata
UNION ALL
SELECT
  130 AS rownum, 'pid:751342937' AS passportdata
UNION ALL
SELECT
  131 AS rownum, 'ecl:blu hgt:162cm' AS passportdata
UNION ALL
SELECT
  132 AS rownum, 'pid:432600613 byr:1923 eyr:2029 iyr:2011 hcl:#623a2f cid:315' AS passportdata
UNION ALL
SELECT
  133 AS rownum, 'iyr:2020' AS passportdata
UNION ALL
SELECT
  134 AS rownum, 'hcl:#b2bb11 pid:055891584 ecl:grn' AS passportdata
UNION ALL
SELECT
  135 AS rownum, 'hgt:67in' AS passportdata
UNION ALL
SELECT
  136 AS rownum, 'eyr:2029 byr:1937' AS passportdata
UNION ALL
SELECT
  137 AS rownum, 'iyr:2012' AS passportdata
UNION ALL
SELECT
  138 AS rownum, 'hcl:#a97842 pid:325640714 ecl:blu hgt:185cm eyr:2024 byr:1971' AS passportdata
UNION ALL
SELECT
  139 AS rownum, 'hcl:#b6652a pid:485327267' AS passportdata
UNION ALL
SELECT
  140 AS rownum, 'ecl:brn hgt:155cm eyr:2028' AS passportdata
UNION ALL
SELECT
  141 AS rownum, 'iyr:2019' AS passportdata
UNION ALL
SELECT
  142 AS rownum, 'pid:902164867 hgt:77 cid:283 eyr:2027' AS passportdata
UNION ALL
SELECT
  143 AS rownum, 'iyr:2020 ecl:hzl byr:1935 hcl:#efcc98' AS passportdata
UNION ALL
SELECT
  144 AS rownum, 'ecl:grn' AS passportdata
UNION ALL
SELECT
  145 AS rownum, 'hcl:#ceb3a1 byr:1977 hgt:165cm' AS passportdata
UNION ALL
SELECT
  146 AS rownum, 'pid:850700221 eyr:2030' AS passportdata
UNION ALL
SELECT
  147 AS rownum, 'iyr:2012' AS passportdata
UNION ALL
SELECT
  148 AS rownum, 'byr:1989 ecl:brn eyr:2026 pid:919138357 iyr:2016' AS passportdata
UNION ALL
SELECT
  149 AS rownum, 'hcl:#623a2f cid:319 hgt:161cm' AS passportdata
UNION ALL
SELECT
  150 AS rownum, 'iyr:2017' AS passportdata
UNION ALL
SELECT
  151 AS rownum, 'byr:1973 pid:293382118 hcl:#341e13 cid:143 ecl:hzl' AS passportdata
UNION ALL
SELECT
  152 AS rownum, 'hgt:166cm eyr:2022' AS passportdata
UNION ALL
SELECT
  153 AS rownum, 'pid:517102798' AS passportdata
UNION ALL
SELECT
  154 AS rownum, 'hcl:f9d9dd' AS passportdata
UNION ALL
SELECT
  155 AS rownum, 'eyr:1933 iyr:2019 hgt:164cm' AS passportdata
UNION ALL
SELECT
  156 AS rownum, 'byr:2017 ecl:utc' AS passportdata
UNION ALL
SELECT
  157 AS rownum, 'eyr:2023 pid:757868802 hcl:#18171d cid:244' AS passportdata
UNION ALL
SELECT
  158 AS rownum, 'hgt:156cm' AS passportdata
UNION ALL
SELECT
  159 AS rownum, 'ecl:blu iyr:2015 byr:1926' AS passportdata
UNION ALL
SELECT
  160 AS rownum, 'eyr:2022' AS passportdata
UNION ALL
SELECT
  161 AS rownum, 'iyr:2020' AS passportdata
UNION ALL
SELECT
  162 AS rownum, 'hgt:158cm ecl:grn' AS passportdata
UNION ALL
SELECT
  163 AS rownum, 'byr:1988' AS passportdata
UNION ALL
SELECT
  164 AS rownum, 'pid:979194751 hcl:#888785' AS passportdata
UNION ALL
SELECT
  165 AS rownum, 'eyr:2039' AS passportdata
UNION ALL
SELECT
  166 AS rownum, 'pid:3867868142 byr:1936 ecl:dne iyr:2022 hcl:4b43b8' AS passportdata
UNION ALL
SELECT
  167 AS rownum, 'hgt:115 cid:241' AS passportdata
UNION ALL
SELECT
  168 AS rownum, 'iyr:2015 eyr:2026' AS passportdata
UNION ALL
SELECT
  169 AS rownum, 'hcl:#ceb3a1 pid:539099924' AS passportdata
UNION ALL
SELECT
  170 AS rownum, 'cid:234' AS passportdata
UNION ALL
SELECT
  171 AS rownum, 'ecl:brn' AS passportdata
UNION ALL
SELECT
  172 AS rownum, 'byr:1920 hgt:163cm' AS passportdata
UNION ALL
SELECT
  173 AS rownum, 'cid:259 iyr:2020' AS passportdata
UNION ALL
SELECT
  174 AS rownum, 'pid:949453818 eyr:2022 hgt:181cm' AS passportdata
UNION ALL
SELECT
  175 AS rownum, 'byr:1997 ecl:blu hcl:#18171d' AS passportdata
UNION ALL
SELECT
  176 AS rownum, 'byr:2016' AS passportdata
UNION ALL
SELECT
  177 AS rownum, 'iyr:2012' AS passportdata
UNION ALL
SELECT
  178 AS rownum, 'ecl:utc' AS passportdata
UNION ALL
SELECT
  179 AS rownum, 'hgt:68in eyr:1993' AS passportdata
UNION ALL
SELECT
  180 AS rownum, 'pid:1542134802 hcl:486699' AS passportdata
UNION ALL
SELECT
  181 AS rownum, 'cid:239' AS passportdata
UNION ALL
SELECT
  182 AS rownum, 'iyr:2018' AS passportdata
UNION ALL
SELECT
  183 AS rownum, 'hgt:154cm ecl:brn byr:1970' AS passportdata
UNION ALL
SELECT
  184 AS rownum, 'eyr:2021 pid:581775861 hcl:#888785' AS passportdata
UNION ALL
SELECT
  185 AS rownum, 'iyr:2012' AS passportdata
UNION ALL
SELECT
  186 AS rownum, 'eyr:2027 hgt:67cm hcl:#efcc98 ecl:zzz pid:312104916 byr:2020' AS passportdata
UNION ALL
SELECT
  187 AS rownum, 'hcl:#b6652a ecl:hzl eyr:2023 iyr:2012 pid:513268492' AS passportdata
UNION ALL
SELECT
  188 AS rownum, 'hgt:159cm' AS passportdata
UNION ALL
SELECT
  189 AS rownum, 'hgt:162in hcl:z' AS passportdata
UNION ALL
SELECT
  190 AS rownum, 'byr:2029' AS passportdata
UNION ALL
SELECT
  191 AS rownum, 'eyr:2023 ecl:#e2e7ab iyr:2016 pid:65979982' AS passportdata
UNION ALL
SELECT
  192 AS rownum, 'cid:84 hgt:71in ecl:blu pid:982719716' AS passportdata
UNION ALL
SELECT
  193 AS rownum, 'eyr:2020 iyr:2014' AS passportdata
UNION ALL
SELECT
  194 AS rownum, 'eyr:2028 hgt:181cm' AS passportdata
UNION ALL
SELECT
  195 AS rownum, 'ecl:hzl pid:255796693 hcl:#341e13 byr:1994 iyr:2011 cid:218' AS passportdata
UNION ALL
SELECT
  196 AS rownum, 'ecl:blu' AS passportdata
UNION ALL
SELECT
  197 AS rownum, 'byr:2029 iyr:2017 pid:468504566 eyr:2020 hcl:z hgt:163cm' AS passportdata
UNION ALL
SELECT
  198 AS rownum, 'hgt:158cm' AS passportdata
UNION ALL
SELECT
  199 AS rownum, 'eyr:2025 ecl:hzl cid:295 pid:601339484' AS passportdata
UNION ALL
SELECT
  200 AS rownum, 'hcl:#7d3b0c byr:1991 iyr:2013' AS passportdata
UNION ALL
SELECT
  201 AS rownum, 'eyr:2028' AS passportdata
UNION ALL
SELECT
  202 AS rownum, 'iyr:2018 pid:2236240873' AS passportdata
UNION ALL
SELECT
  203 AS rownum, 'hgt:172cm' AS passportdata
UNION ALL
SELECT
  204 AS rownum, 'ecl:#0e337e hcl:#b6652a cid:108 byr:1930' AS passportdata
UNION ALL
SELECT
  205 AS rownum, 'ecl:gry hcl:#888785' AS passportdata
UNION ALL
SELECT
  206 AS rownum, 'eyr:2020 pid:442479017 iyr:2016' AS passportdata
UNION ALL
SELECT
  207 AS rownum, 'iyr:2014 ecl:grn' AS passportdata
UNION ALL
SELECT
  208 AS rownum, 'cid:313 eyr:2023' AS passportdata
UNION ALL
SELECT
  209 AS rownum, 'hgt:183cm' AS passportdata
UNION ALL
SELECT
  210 AS rownum, 'byr:1976' AS passportdata
UNION ALL
SELECT
  211 AS rownum, 'pid:499580308 hcl:#53efe6' AS passportdata
UNION ALL
SELECT
  212 AS rownum, 'eyr:2034' AS passportdata
UNION ALL
SELECT
  213 AS rownum, 'cid:235 hcl:8f3cf5' AS passportdata
UNION ALL
SELECT
  214 AS rownum, 'byr:2027' AS passportdata
UNION ALL
SELECT
  215 AS rownum, 'hgt:161in pid:3259965094 ecl:xry iyr:2026' AS passportdata
UNION ALL
SELECT
  216 AS rownum, 'eyr:1978 byr:1925 iyr:2018 hgt:170cm ecl:#0c94e8' AS passportdata
UNION ALL
SELECT
  217 AS rownum, 'pid:562699017 hcl:#816949' AS passportdata
UNION ALL
SELECT
  218 AS rownum, 'eyr:2023 hcl:#866857 hgt:179cm' AS passportdata
UNION ALL
SELECT
  219 AS rownum, 'pid:785862442 iyr:2014 cid:165 ecl:amb byr:1939' AS passportdata
UNION ALL
SELECT
  220 AS rownum, 'hgt:187cm' AS passportdata
UNION ALL
SELECT
  221 AS rownum, 'pid:64469711 ecl:gry eyr:2023 cid:225 hcl:#341e13 iyr:2011 byr:1958' AS passportdata
UNION ALL
SELECT
  222 AS rownum, 'hgt:162cm byr:2028 ecl:#37e345' AS passportdata
UNION ALL
SELECT
  223 AS rownum, 'eyr:2037 hcl:19fb3d' AS passportdata
UNION ALL
SELECT
  224 AS rownum, 'iyr:2021' AS passportdata
UNION ALL
SELECT
  225 AS rownum, 'pid:#87921a' AS passportdata
UNION ALL
SELECT
  226 AS rownum, 'eyr:2027 hcl:#18171d' AS passportdata
UNION ALL
SELECT
  227 AS rownum, 'byr:2002 ecl:gry iyr:2014' AS passportdata
UNION ALL
SELECT
  228 AS rownum, 'pid:561506850 hgt:177cm' AS passportdata
UNION ALL
SELECT
  229 AS rownum, 'hgt:64cm pid:#a92686' AS passportdata
UNION ALL
SELECT
  230 AS rownum, 'eyr:2029 cid:122' AS passportdata
UNION ALL
SELECT
  231 AS rownum, 'byr:2026' AS passportdata
UNION ALL
SELECT
  232 AS rownum, 'iyr:2017 hcl:z ecl:grn' AS passportdata
UNION ALL
SELECT
  233 AS rownum, 'eyr:2028 byr:2007 hgt:155cm ecl:#86fa1b hcl:#733820 pid:562889497' AS passportdata
UNION ALL
SELECT
  234 AS rownum, 'iyr:2019' AS passportdata
UNION ALL
SELECT
  235 AS rownum, 'pid:880698787' AS passportdata
UNION ALL
SELECT
  236 AS rownum, 'byr:1992' AS passportdata
UNION ALL
SELECT
  237 AS rownum, 'hcl:#7d3b0c hgt:163cm ecl:hzl' AS passportdata
UNION ALL
SELECT
  238 AS rownum, 'iyr:2011 eyr:2021' AS passportdata
UNION ALL
SELECT
  239 AS rownum, 'eyr:2020 byr:1994 iyr:2011 hgt:186cm pid:841855425 hcl:#cfa07d ecl:gry' AS passportdata
UNION ALL
SELECT
  240 AS rownum, 'byr:1923 iyr:2015 ecl:amb pid:414655744' AS passportdata
UNION ALL
SELECT
  241 AS rownum, 'hcl:#b6652a' AS passportdata
UNION ALL
SELECT
  242 AS rownum, 'hgt:159cm' AS passportdata
UNION ALL
SELECT
  243 AS rownum, 'eyr:2026' AS passportdata
UNION ALL
SELECT
  244 AS rownum, 'hgt:171cm ecl:amb pid:363065723 iyr:2020' AS passportdata
UNION ALL
SELECT
  245 AS rownum, 'cid:66 hcl:#b6652a eyr:2021' AS passportdata
UNION ALL
SELECT
  246 AS rownum, 'byr:1960' AS passportdata
UNION ALL
SELECT
  247 AS rownum, 'eyr:2002' AS passportdata
UNION ALL
SELECT
  248 AS rownum, 'hcl:2627b2 ecl:#1bf21d pid:168cm byr:2024 iyr:2020' AS passportdata
UNION ALL
SELECT
  249 AS rownum, 'hgt:186in' AS passportdata
UNION ALL
SELECT
  250 AS rownum, 'iyr:2011 byr:1924 eyr:2024' AS passportdata
UNION ALL
SELECT
  251 AS rownum, 'hcl:#b6652a ecl:brn' AS passportdata
UNION ALL
SELECT
  252 AS rownum, 'pid:794477411 hgt:162in' AS passportdata
UNION ALL
SELECT
  253 AS rownum, 'hcl:z hgt:67cm' AS passportdata
UNION ALL
SELECT
  254 AS rownum, 'byr:2025' AS passportdata
UNION ALL
SELECT
  255 AS rownum, 'pid:582569979' AS passportdata
UNION ALL
SELECT
  256 AS rownum, 'iyr:2013' AS passportdata
UNION ALL
SELECT
  257 AS rownum, 'ecl:oth eyr:2025' AS passportdata
UNION ALL
SELECT
  258 AS rownum, 'cid:50 hcl:931e2c' AS passportdata
UNION ALL
SELECT
  259 AS rownum, 'hgt:172in eyr:1994 iyr:2023' AS passportdata
UNION ALL
SELECT
  260 AS rownum, 'ecl:#cd2204' AS passportdata
UNION ALL
SELECT
  261 AS rownum, 'byr:2015' AS passportdata
UNION ALL
SELECT
  262 AS rownum, 'pid:157cm' AS passportdata
UNION ALL
SELECT
  263 AS rownum, 'hgt:173cm eyr:2028' AS passportdata
UNION ALL
SELECT
  264 AS rownum, 'ecl:amb pid:569607283' AS passportdata
UNION ALL
SELECT
  265 AS rownum, 'byr:1942' AS passportdata
UNION ALL
SELECT
  266 AS rownum, 'iyr:2019' AS passportdata
UNION ALL
SELECT
  267 AS rownum, 'cid:228' AS passportdata
UNION ALL
SELECT
  268 AS rownum, 'hcl:#866857' AS passportdata
UNION ALL
SELECT
  269 AS rownum, 'cid:109' AS passportdata
UNION ALL
SELECT
  270 AS rownum, 'ecl:oth eyr:1933 byr:1982 pid:173cm hcl:#b6652a hgt:174cm' AS passportdata
UNION ALL
SELECT
  271 AS rownum, 'iyr:2023' AS passportdata
UNION ALL
SELECT
  272 AS rownum, 'cid:69 hcl:#9ad05b pid:341135641' AS passportdata
UNION ALL
SELECT
  273 AS rownum, 'byr:1968 ecl:brn' AS passportdata
UNION ALL
SELECT
  274 AS rownum, 'iyr:2012 hgt:156cm' AS passportdata
UNION ALL
SELECT
  275 AS rownum, 'eyr:2020' AS passportdata
UNION ALL
SELECT
  276 AS rownum, 'hgt:176cm' AS passportdata
UNION ALL
SELECT
  277 AS rownum, 'byr:1954 ecl:blu' AS passportdata
UNION ALL
SELECT
  278 AS rownum, 'eyr:2020' AS passportdata
UNION ALL
SELECT
  279 AS rownum, 'pid:478462637 iyr:2019' AS passportdata
UNION ALL
SELECT
  280 AS rownum, 'hcl:#888785' AS passportdata
UNION ALL
SELECT
  281 AS rownum, 'iyr:2026 hgt:193in' AS passportdata
UNION ALL
SELECT
  282 AS rownum, 'byr:2018 pid:162cm hcl:605e7f eyr:1948 ecl:utc' AS passportdata
UNION ALL
SELECT
  283 AS rownum, 'byr:1962' AS passportdata
UNION ALL
SELECT
  284 AS rownum, 'eyr:2022 pid:445346117 iyr:2019 hgt:158cm hcl:#623a2f ecl:hzl' AS passportdata
UNION ALL
SELECT
  285 AS rownum, 'cid:278 hgt:187cm eyr:2024 iyr:2016 byr:1964' AS passportdata
UNION ALL
SELECT
  286 AS rownum, 'ecl:grn pid:450739552 hcl:#733820' AS passportdata
UNION ALL
SELECT
  287 AS rownum, 'ecl:grn byr:2000 eyr:2023' AS passportdata
UNION ALL
SELECT
  288 AS rownum, 'pid:344489911 hcl:#7d3b0c iyr:2011 hgt:177cm' AS passportdata
UNION ALL
SELECT
  289 AS rownum, 'iyr:2015 hgt:180cm cid:190 hcl:#a97842 pid:359774842 eyr:2029 byr:2002 ecl:amb' AS passportdata
UNION ALL
SELECT
  290 AS rownum, 'eyr:2027 iyr:2015 ecl:hzl' AS passportdata
UNION ALL
SELECT
  291 AS rownum, 'pid:082733109' AS passportdata
UNION ALL
SELECT
  292 AS rownum, 'byr:1975 hgt:191cm cid:251 hcl:#888785' AS passportdata
UNION ALL
SELECT
  293 AS rownum, 'hcl:#c0946f iyr:2015' AS passportdata
UNION ALL
SELECT
  294 AS rownum, 'hgt:167cm byr:1990 ecl:amb pid:168cm eyr:2023' AS passportdata
UNION ALL
SELECT
  295 AS rownum, 'ecl:gry eyr:2028' AS passportdata
UNION ALL
SELECT
  296 AS rownum, 'byr:1934 iyr:2013 hcl:#6b5442' AS passportdata
UNION ALL
SELECT
  297 AS rownum, 'pid:424412120 hgt:173cm' AS passportdata
UNION ALL
SELECT
  298 AS rownum, 'pid:273352568' AS passportdata
UNION ALL
SELECT
  299 AS rownum, 'eyr:2024' AS passportdata
UNION ALL
SELECT
  300 AS rownum, 'iyr:2013 byr:1926 hcl:#602927' AS passportdata
UNION ALL
SELECT
  301 AS rownum, 'ecl:brn hgt:180cm' AS passportdata
UNION ALL
SELECT
  302 AS rownum, 'hcl:#7d3b0c hgt:70in ecl:amb iyr:2019' AS passportdata
UNION ALL
SELECT
  303 AS rownum, 'byr:1937' AS passportdata
UNION ALL
SELECT
  304 AS rownum, 'eyr:2030 pid:309011548' AS passportdata
UNION ALL
SELECT
  305 AS rownum, 'ecl:grn' AS passportdata
UNION ALL
SELECT
  306 AS rownum, 'hgt:64in pid:796889811 hcl:#18171d' AS passportdata
UNION ALL
SELECT
  307 AS rownum, 'byr:1929 eyr:2027' AS passportdata
UNION ALL
SELECT
  308 AS rownum, 'ecl:amb hcl:#888785' AS passportdata
UNION ALL
SELECT
  309 AS rownum, 'pid:412449028 cid:316 byr:1982' AS passportdata
UNION ALL
SELECT
  310 AS rownum, 'iyr:2019 eyr:2030 hgt:193cm' AS passportdata
UNION ALL
SELECT
  311 AS rownum, 'eyr:1927' AS passportdata
UNION ALL
SELECT
  312 AS rownum, 'hcl:z hgt:158cm byr:1930' AS passportdata
UNION ALL
SELECT
  313 AS rownum, 'ecl:lzr iyr:2018' AS passportdata
UNION ALL
SELECT
  314 AS rownum, 'cid:197' AS passportdata
UNION ALL
SELECT
  315 AS rownum, 'pid:0906120002' AS passportdata
UNION ALL
SELECT
  316 AS rownum, 'ecl:grn byr:1970 hgt:181cm' AS passportdata
UNION ALL
SELECT
  317 AS rownum, 'pid:376212702 eyr:2030 iyr:2017 cid:266 hcl:#f8b0f5' AS passportdata
UNION ALL
SELECT
  318 AS rownum, 'iyr:2018 hgt:73in pid:652356158 hcl:#c0946f' AS passportdata
UNION ALL
SELECT
  319 AS rownum, 'ecl:grn byr:1973' AS passportdata
UNION ALL
SELECT
  320 AS rownum, 'cid:170 hcl:#b6652a byr:2011' AS passportdata
UNION ALL
SELECT
  321 AS rownum, 'ecl:gry iyr:2025 pid:#b6e567 hgt:67cm eyr:2016' AS passportdata
UNION ALL
SELECT
  322 AS rownum, 'hgt:192cm ecl:amb eyr:2026 pid:201824712 hcl:#888785 byr:1966 iyr:2019' AS passportdata
UNION ALL
SELECT
  323 AS rownum, 'iyr:2013 byr:1995 eyr:2028 hcl:#b6652a ecl:brn cid:53 pid:705606447 hgt:176cm' AS passportdata
UNION ALL
SELECT
  324 AS rownum, 'hcl:#341e13 byr:1951' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'hgt:161cm pid:231973770 iyr:2015 ecl:hzl' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'eyr:2030' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'cid:210 ecl:brn iyr:2017 eyr:2030' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'hgt:176cm hcl:#efcc98' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'byr:1965' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'eyr:2020 hcl:#7d3b0c' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'pid:872088079 ecl:oth iyr:2017 byr:1920' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'hgt:180cm' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'hcl:#0b540c iyr:2019' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'byr:1938' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'hgt:153cm ecl:gry pid:236785988' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'eyr:2020' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'eyr:2020 hgt:184cm iyr:2019' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'pid:673186642 ecl:oth byr:1977 hcl:#866857' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'eyr:2025' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'ecl:gry hcl:#341e13 byr:1970 iyr:2010 pid:972122542 hgt:184cm' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'ecl:grn byr:1992 hgt:71in' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'iyr:2014 cid:254 hcl:#fffffd pid:749733013' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'eyr:2026' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'cid:98 ecl:amb eyr:2022' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'hgt:169cm pid:022677680' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'byr:1937 iyr:2014 hcl:#e62c71' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'hgt:192cm' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'iyr:2015' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'eyr:2028 ecl:oth pid:6000619833 hcl:#c0946f' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'byr:1930' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'byr:1938 hcl:#efcc98 hgt:178cm iyr:1953 eyr:2038' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'ecl:brn pid:#cdc55a' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'hgt:66in byr:1951 iyr:2016 hcl:#18171d' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'eyr:2027' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'ecl:lzr pid:834188980' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'iyr:2012 eyr:2025' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'hcl:#7d3b0c pid:330325803 cid:166 hgt:186cm byr:1938' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'ecl:amb' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'iyr:2015 hcl:#602927 cid:268 eyr:2021' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'ecl:amb hgt:186cm pid:318676962' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'hcl:#3d6f3c iyr:2014 pid:665730784 cid:191 hgt:150cm byr:1981 ecl:oth eyr:2024' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'ecl:grn hcl:#733820' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'eyr:2028 iyr:2010' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'hgt:162cm byr:1944 pid:872962499' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'eyr:2028 byr:1974' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'ecl:brn' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'iyr:2010 hcl:#18171d hgt:160cm' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'hcl:#602927' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'byr:1959 eyr:2027 iyr:2016 ecl:brn hgt:169cm pid:078503025' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'hcl:#623a2f pid:326300051 hgt:153cm' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'byr:1973 iyr:2012' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'ecl:gry eyr:2026' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'hgt:151cm' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'byr:1966 eyr:2029 pid:026952622 hcl:#18171d ecl:gry iyr:2010' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'hcl:#7d3b0c byr:1974 pid:444713591 iyr:2017 eyr:2030' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'hgt:165cm ecl:oth' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'iyr:2026 pid:184cm' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'ecl:gmt hcl:z hgt:71cm' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'eyr:2029' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'cid:310 hcl:#fffffd byr:1998' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'pid:450705840 iyr:2015' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'ecl:grn eyr:2021 hgt:165cm' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'byr:1939 hcl:#623a2f ecl:gry hgt:69in pid:539812641 eyr:2027 iyr:2013' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'pid:207645014' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'iyr:2015' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'cid:314 ecl:oth' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'byr:1942' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'eyr:2027 hgt:186cm hcl:#fffffd' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'ecl:#fb7e3d eyr:2031 iyr:1956' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'hgt:188 pid:160cm hcl:z byr:2027' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'byr:1972 iyr:2020 eyr:2026 hcl:#b6652a pid:289088329 hgt:65in ecl:gry' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'eyr:2027' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'hgt:59cm' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'byr:2022' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'pid:938063769 ecl:zzz iyr:2028 hcl:23c762' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'byr:2004 hgt:74 iyr:2017' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'eyr:2040 ecl:blu pid:4611117799 cid:73 hcl:z' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'ecl:brn byr:1962 cid:321' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'iyr:2019 eyr:2026' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'hgt:159cm' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'hcl:#667310 pid:439864945' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'iyr:2026 eyr:2039 pid:633263851 cid:321 ecl:lzr hgt:166cm' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'byr:2023 hcl:fc3c63' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'byr:1961 iyr:2010 ecl:blu' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'eyr:2023 pid:245858010' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'hgt:193cm pid:821303249 eyr:2020 hcl:#6b5442 cid:130 byr:1946' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'eyr:2026 ecl:brn' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'hcl:#733820 byr:1983 hgt:182cm pid:727380954 cid:188 iyr:2015' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'hgt:152cm cid:206 iyr:2012 byr:1947 hcl:#888785 ecl:gry' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'pid:720312394 eyr:2023' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'hgt:150cm ecl:gry pid:863712648' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'iyr:2019 cid:349 byr:1976 hcl:#602927 eyr:2022' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'hgt:164in pid:953500867' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'eyr:2021' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'iyr:2014' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'hcl:z cid:343 ecl:amb' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'byr:1981 pid:529710230 iyr:2013 eyr:2023' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'hcl:#c0946f ecl:amb' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'hgt:151cm' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'pid:706204190 hgt:154cm cid:317' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'hcl:#602927 byr:1949 ecl:blu iyr:2010 eyr:2028' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'iyr:2019 hcl:#0219e6' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'pid:850093151 ecl:gry' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'eyr:2030' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'byr:1938 hgt:177cm' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'ecl:brn hcl:#efcc98 eyr:2029 byr:1963' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'hgt:185cm pid:611279647 iyr:2011' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'ecl:blu eyr:2022 byr:1941 hgt:167cm' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'iyr:2012 hcl:#7d3b0c pid:415739564' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'cid:193' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'eyr:2027 ecl:blu byr:1968 pid:479994566' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'hcl:#733820 hgt:151cm' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'iyr:2011' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'pid:263729839 hgt:189cm eyr:2030 ecl:gry byr:2001 hcl:#602927' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'byr:1985' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'ecl:amb pid:672663977 cid:139' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'hgt:159cm hcl:#733820 iyr:2018 eyr:2020' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'byr:1998' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'hcl:#cfa07d eyr:2023 pid:255046063 iyr:2011 ecl:blu hgt:177cm' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'ecl:oth' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'byr:1980 pid:253747166 eyr:2029' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'hcl:#6b5442 hgt:186cm' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'eyr:2030 hcl:#866857' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'hgt:165cm' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'ecl:amb' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'iyr:2017 pid:241240220 cid:164 byr:2001' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'byr:1994 hcl:#b6652a iyr:2015' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'pid:753831241' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'hgt:175cm' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'eyr:2027 ecl:blu' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'hcl:#b6652a pid:471594512' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'byr:1961 ecl:hzl hgt:175cm' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'iyr:2020 eyr:2025' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'byr:1987 pid:112366159' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'eyr:2028 hcl:22b2d7' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'hgt:64in cid:222' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'ecl:#b40dca iyr:2019' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'iyr:2015 hcl:e1ed55 hgt:160in ecl:utc byr:2015 eyr:2036' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'byr:1935' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'hcl:#7d3b0c hgt:152cm ecl:gry' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'pid:160090332 iyr:2020 eyr:2020' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'pid:552779024 byr:1998 hgt:185cm ecl:gry eyr:2026 iyr:2013 hcl:#d46cd6' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'ecl:oth pid:311860969' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'cid:57' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'hgt:60in' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'eyr:2026' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'hcl:#ceb3a1' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'byr:1961 iyr:2011' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'eyr:2021 hgt:162cm cid:240' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'pid:259997995' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'hcl:#efcc98' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'ecl:gry byr:1962 iyr:2017' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'hcl:#866857' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'iyr:2016' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'eyr:2029' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'ecl:blu byr:1927 cid:249 pid:665324615 hgt:65in' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'byr:1931' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'cid:331' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'hgt:66in' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'ecl:grn iyr:2020 hcl:#efcc98 eyr:2025 pid:175780921' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'hgt:98' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'eyr:2040 ecl:blu byr:2029' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'iyr:1967 hcl:0d76e9' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'pid:#c9053a cid:296' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'pid:370918950' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'hcl:#602927' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'byr:1938' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'hgt:178cm iyr:2018 eyr:2030' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'ecl:oth' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'hgt:185cm' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'eyr:1984 ecl:oth pid:851080398' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'hcl:z byr:2027 iyr:2017' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'pid:095078224 byr:1957 hcl:#45bcf4 ecl:#f643f9 hgt:63cm eyr:2036 iyr:1978' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'hcl:z' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'eyr:2023 ecl:oth hgt:162cm' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'iyr:2016 byr:1938 pid:#fdcddf' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'hcl:#341e13 iyr:2013 hgt:189cm' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'pid:982271041 ecl:brn' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'byr:1930 eyr:2030' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'eyr:2026' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'iyr:2012 hcl:#cfa07d cid:59 pid:105862717 ecl:blu' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'hgt:159cm byr:1943' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'ecl:hzl' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'pid:604172804 iyr:2016 hgt:174cm cid:79 eyr:2025' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'hcl:#733820 byr:1994' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'iyr:2011 pid:452628771 ecl:gry hgt:182cm hcl:#623a2f' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'eyr:2023' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'byr:1986' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'hcl:#341e13 iyr:2010 byr:1946 eyr:2021' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'cid:350 pid:049684494 hgt:180cm' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'ecl:grn' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'iyr:2020' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'hgt:173cm pid:384503937' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'byr:1986' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'hcl:#341e13' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'cid:113' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'eyr:2025 ecl:amb' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'hgt:180cm byr:1949' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'hcl:#733820 iyr:2010 eyr:2030' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'cid:123 pid:065609606 ecl:oth' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'iyr:2010 eyr:2028' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'pid:231750173' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'hgt:63in ecl:brn' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'byr:1948 hcl:#18171d' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'iyr:2020 hcl:#623a2f' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'ecl:gry' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'byr:1922 pid:961213634 eyr:2022 hgt:177cm' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'hcl:#18171d eyr:2020 iyr:2014 byr:1983' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'pid:183568344 hgt:72in' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'ecl:gry' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'eyr:2023 pid:102781246 ecl:brn' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'hcl:#888785 byr:1929 hgt:167cm iyr:2010' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'pid:362873066 byr:1994 hcl:#de545f iyr:2018 hgt:177cm ecl:blu cid:86' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'eyr:2024' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'hcl:842f2d iyr:1983' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'byr:1954 eyr:2037' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'ecl:lzr pid:3915492573 hgt:166cm' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'ecl:grn' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'hcl:#fffffd iyr:2014' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'hgt:173cm' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'byr:1939' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'pid:930650489' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'eyr:2025' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'eyr:2028 ecl:brn hcl:#7d3b0c hgt:166cm byr:1938 pid:992958531 iyr:2011' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'pid:101149939 eyr:2024 iyr:2018 hgt:165cm' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'ecl:hzl' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'hcl:#ceb3a1 cid:176' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'cid:62' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'pid:651390352 hcl:#efcc98' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'iyr:2018' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'eyr:2027' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'ecl:brn' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'hgt:66in byr:1953' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'hcl:#623a2f byr:1978' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'iyr:2013' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'hgt:180cm eyr:2027 ecl:amb pid:836425641' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'pid:557464096 hgt:155cm ecl:blu cid:142 byr:1936 iyr:2010' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'hcl:#cfa07d eyr:2027' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'ecl:gry iyr:2024 hcl:#341e13 pid:442593279 cid:314 hgt:186cm byr:1960' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'eyr:2022' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'cid:123 iyr:2014' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'byr:2000' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'pid:878733390 eyr:2021 ecl:hzl hgt:162cm' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'byr:1959 cid:259' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'pid:722895016' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'ecl:brn iyr:2018 eyr:2027 hgt:185cm' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'pid:163697814 ecl:hzl' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'iyr:2013 byr:1932' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'hgt:68in cid:286 eyr:2025 hcl:#efcc98' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'byr:1927' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'hgt:72cm ecl:oth' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'eyr:2021 hcl:#99e959' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'pid:669724466 iyr:2010' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'byr:1943 iyr:2011 eyr:2024 pid:384419879 ecl:hzl hcl:#7d3b0c hgt:170cm' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'pid:137944386 ecl:gry' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'byr:1953 hcl:#733820 iyr:2013 eyr:2025 hgt:184cm' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'iyr:2017 eyr:2023 pid:288078785' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'hgt:179cm' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'byr:1993 hcl:#602927 ecl:hzl' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'ecl:brn' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'hgt:187cm eyr:2024 byr:1971 iyr:2020 hcl:#b6652a pid:622975646' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'cid:290' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'pid:371817422 ecl:blu byr:1964' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'iyr:2018' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'eyr:2021 cid:176' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'hgt:153cm hcl:#888785' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'byr:2002' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'cid:256 iyr:2014 eyr:2024 ecl:blu hcl:#18171d hgt:187cm' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'pid:050022911' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'hgt:178cm pid:211144001 eyr:2027 iyr:2013' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'byr:1947' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'hcl:#7d3b0c ecl:grn' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'eyr:2025 ecl:blu pid:046417901 byr:1950' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'iyr:2015 hgt:165cm' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'hcl:#7d3b0c cid:128' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'ecl:hzl eyr:2029' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'iyr:2015' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'hgt:171cm hcl:#341e13' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'pid:561680375 byr:1997' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'byr:1948 iyr:2023 pid:17288381 hcl:6a34a3 ecl:#671ece eyr:2001' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'cid:152' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'eyr:2036 hgt:141 iyr:1957 byr:1987 hcl:z' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'pid:86986187 ecl:utc' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'eyr:2024 hcl:#b6652a iyr:2017 ecl:blu byr:1988 cid:348 hgt:152cm pid:068684272' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'iyr:2011 pid:989825275' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'cid:78 hcl:#341e13 byr:1983 ecl:blu hgt:158cm eyr:2020' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'ecl:grn hgt:187cm eyr:2027 iyr:2015' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'hcl:#866857 pid:240650427' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'byr:1940' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'cid:91' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'hcl:#888785 cid:185 byr:1925' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'hgt:155cm iyr:2015 ecl:blu eyr:2027 pid:851697441' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'iyr:2016 ecl:oth pid:056439470 byr:1985 eyr:2026' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'hgt:154cm hcl:#282539' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'ecl:hzl hcl:#a97842' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'iyr:1944' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'pid:118846711 eyr:2026 byr:1922 hgt:185cm' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'iyr:2020 hcl:#733820' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'pid:854531642 hgt:165cm' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'ecl:hzl eyr:2022' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'iyr:2014' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'byr:1957 hcl:#7fa674 hgt:189cm' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'eyr:2023 pid:740871941 ecl:brn' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'ecl:amb cid:349 hgt:170cm' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'byr:1952 hcl:#ceb3a1 iyr:2020' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'eyr:2026' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'pid:730499325' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'eyr:2027 ecl:amb' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'byr:1975 pid:985687961' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'hcl:z hgt:157cm' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'iyr:2013' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'cid:133' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'ecl:blu' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'hgt:193cm iyr:2015 hcl:#10f2ba byr:1989 pid:939704495 eyr:2021' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'ecl:oth eyr:2025 hgt:69in iyr:2014 cid:258 pid:477970733 byr:1984 hcl:#b6652a' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'hcl:z byr:2013' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'ecl:zzz' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'pid:1904741884 hgt:180 cid:138 eyr:1985 iyr:1935' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'eyr:2025' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'iyr:2026 hgt:190in pid:#43ca33' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'ecl:#3e1ef1 hcl:#7d3b0c byr:2030' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'eyr:2029 hgt:191cm' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'byr:1986 hcl:#ceb3a1 cid:327 pid:795060714 iyr:2012 ecl:hzl' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'eyr:2025 iyr:2017 ecl:grn' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'hcl:z' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'pid:8886398 hgt:174cm byr:2016' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'hcl:#a97842' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'eyr:2021 ecl:grn iyr:2013 pid:565234133 byr:1998' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'hgt:161cm' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'eyr:2029 hgt:163cm byr:1933 cid:86 iyr:2011' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'ecl:grn' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'hcl:#fffffd' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'pid:818769307' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'hgt:190cm eyr:2030 hcl:#af5b5d iyr:2011 ecl:brn pid:359524299 byr:1969' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'ecl:amb iyr:2011 eyr:2022' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'cid:141' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'byr:1978 hgt:69in hcl:#fffffd pid:013006109' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'ecl:blu hgt:164cm iyr:2019 eyr:2027 pid:899103430 hcl:#cfa07d' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'byr:1976' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'eyr:1938' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'ecl:#a03c41 pid:708735698' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'iyr:2030' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'hgt:184cm hcl:#b6652a byr:2013' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'ecl:hzl byr:1997 hcl:#a97842 cid:60 pid:172cm' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'eyr:2023 hgt:161in iyr:1936' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'ecl:hzl' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'byr:1938 pid:094889181' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'hgt:162cm iyr:2020' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'eyr:2028' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'hcl:#623a2f' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'hgt:162cm cid:86' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'hcl:#623a2f pid:738174580 ecl:brn byr:1980 eyr:2028 iyr:2014' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'byr:2007 hgt:150in hcl:z' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'eyr:2032' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'ecl:#114f3b' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'iyr:2030 pid:5129772' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'ecl:hzl iyr:2017' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'hcl:#18171d' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'pid:696283412 byr:1976 hgt:168cm' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'eyr:2028' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'eyr:1922 ecl:#84b0d4 byr:2013 hcl:#ceb3a1 pid:150cm iyr:2030' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'hgt:71cm' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'hgt:164cm byr:1949 ecl:gry eyr:2026' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'hcl:#623a2f' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'ecl:oth' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'iyr:2013 hgt:166cm hcl:#50e385' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'pid:478852286' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'eyr:2030 byr:1930' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'cid:129' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'iyr:2020 byr:1978 pid:907580992 eyr:1955' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'hcl:#602927' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'ecl:grn hgt:165cm' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'ecl:blu iyr:2018 byr:1953' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'hgt:177cm pid:126681706 eyr:2025 hcl:#c0946f' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'byr:1984 pid:275799917' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'ecl:oth hcl:#623a2f cid:348 iyr:2020' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'hgt:189cm eyr:2024' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'iyr:2016' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'ecl:hzl byr:1954' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'hcl:#623a2f pid:810508839 eyr:2026' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'hgt:185cm' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'byr:1967' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'eyr:2021 hcl:#ceb3a1' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'pid:406634908 hgt:158cm iyr:2018 ecl:hzl' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'iyr:2019 eyr:2030 pid:995681076 hcl:#341e13' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'cid:101 hgt:162cm ecl:blu byr:1925' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'eyr:2026 pid:272513479 hcl:#b6652a byr:1973 iyr:2016 ecl:amb hgt:182cm' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'pid:298704871 eyr:2024 hcl:#efcc98 byr:1959' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'iyr:2014 hgt:191cm ecl:grn' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'hgt:193cm pid:750729809 ecl:oth' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'cid:324' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'iyr:2011 hcl:#efcc98 byr:1954 eyr:2020' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'byr:1966 iyr:2019 eyr:2025 ecl:#2df4b6' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'hgt:184cm pid:#fc17f4 cid:161 hcl:#602927' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'byr:1955 hcl:299464 ecl:amb' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'hgt:157cm iyr:2017 eyr:2021' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'pid:239450987' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'hgt:172cm' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'ecl:hzl' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'pid:839804598' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'hcl:#341e13 eyr:2030 byr:1964 iyr:2013' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'iyr:2018 hgt:152cm byr:1948 hcl:#623a2f pid:400121515' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'ecl:blu' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'eyr:2020' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'cid:296' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'ecl:grn' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'byr:1960 iyr:2028 pid:#1f4b95 eyr:2033 hcl:#602927' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'hgt:66cm' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'iyr:1933 ecl:#232e20 pid:#d03ca7' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'eyr:2030 hcl:598ed6 hgt:154in byr:2011' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'cid:247 ecl:grn iyr:2014' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'hgt:178cm' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'byr:1992 hcl:#602927 eyr:2021' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'pid:678964478' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'iyr:2010 pid:623705680' AS passportdata
UNION ALL
SELECT
  NULL AS rownum, 'ecl:hzl hgt:181cm byr:1980 hcl:#341e13 eyr:2028' AS passportdata
 ;;
    sql_trigger_value: SELECT 1 ;;
  }
  dimension: rownum {
    type: number
    sql: ${TABLE}.rownum ;;
  }

  dimension: passportdata {
    type: string
    sql: ${TABLE}.passportdata ;;
    order_by_field: rownum
  }

}



#Part Two: Once you've completed the first part, submit your work at https://adventofcode.com/2020/day/4 and get Part 2.
