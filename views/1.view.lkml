# --- Day 1: Report Repair ---
# After saving Christmas five years in a row, you've decided to take a vacation at a nice resort on a tropical island. Surely, Christmas will go on without you.

# The tropical island has its own currency and is entirely cash-only. The gold coins used there have a little picture of a starfish; the locals just call them stars. None of the currency exchanges seem to have heard of them, but somehow, you'll need to find fifty of these coins by the time you arrive so you can pay the deposit on your room.

# To save your vacation, you need to get all fifty stars by December 25th.

# Collect stars by solving puzzles. Two puzzles will be made available on each day in the Advent calendar; the second puzzle is unlocked when you complete the first. Each puzzle grants one star. Good luck!

# Before you leave, the Elves in accounting just need you to fix your expense report (your puzzle input); apparently, something isn't quite adding up.

# Specifically, they need you to find the two entries that sum to 2020 and then multiply those two numbers together.

# For example, suppose your expense report contained the following:

# 1721
# 979
# 366
# 299
# 675
# 1456
# In this list, the two entries that sum to 2020 are 1721 and 299. Multiplying them together produces 1721 * 299 = 514579, so the correct answer is 514579.

# Of course, your expense report is much larger. Find the two entries that sum to 2020; what do you get if you multiply them together?

# The data for this activity lives in lookerdata.adventofcode20.1

view: one {
 derived_table: {
  #I used https://csv-sql.web.app/ to take the input data from https://adventofcode.com/2020/day/1/input
  # and convert it into the below derived table. You can easily do the same!
  sql:
      SELECT
        1411 AS expense
      UNION ALL
      SELECT
        1802 AS expense
      UNION ALL
      SELECT
        1773 AS expense
      UNION ALL
      SELECT
        1775 AS expense
      UNION ALL
      SELECT
        1442 AS expense
      UNION ALL
      SELECT
        1471 AS expense
      UNION ALL
      SELECT
        1048 AS expense
      UNION ALL
      SELECT
        1403 AS expense
      UNION ALL
      SELECT
        1881 AS expense
      UNION ALL
      SELECT
        1930 AS expense
      UNION ALL
      SELECT
        1710 AS expense
      UNION ALL
      SELECT
        1717 AS expense
      UNION ALL
      SELECT
        685 AS expense
      UNION ALL
      SELECT
        1255 AS expense
      UNION ALL
      SELECT
        1451 AS expense
      UNION ALL
      SELECT
        1870 AS expense
      UNION ALL
      SELECT
        208 AS expense
      UNION ALL
      SELECT
        1725 AS expense
      UNION ALL
      SELECT
        1879 AS expense
      UNION ALL
      SELECT
        143 AS expense
      UNION ALL
      SELECT
        1372 AS expense
      UNION ALL
      SELECT
        1726 AS expense
      UNION ALL
      SELECT
        1357 AS expense
      UNION ALL
      SELECT
        1624 AS expense
      UNION ALL
      SELECT
        1378 AS expense
      UNION ALL
      SELECT
        1993 AS expense
      UNION ALL
      SELECT
        1721 AS expense
      UNION ALL
      SELECT
        1712 AS expense
      UNION ALL
      SELECT
        1867 AS expense
      UNION ALL
      SELECT
        1355 AS expense
      UNION ALL
      SELECT
        1743 AS expense
      UNION ALL
      SELECT
        1942 AS expense
      UNION ALL
      SELECT
        114 AS expense
      UNION ALL
      SELECT
        407 AS expense
      UNION ALL
      SELECT
        1892 AS expense
      UNION ALL
      SELECT
        1937 AS expense
      UNION ALL
      SELECT
        2001 AS expense
      UNION ALL
      SELECT
        1466 AS expense
      UNION ALL
      SELECT
        1461 AS expense
      UNION ALL
      SELECT
        1770 AS expense
      UNION ALL
      SELECT
        1441 AS expense
      UNION ALL
      SELECT
        1410 AS expense
      UNION ALL
      SELECT
        1915 AS expense
      UNION ALL
      SELECT
        1482 AS expense
      UNION ALL
      SELECT
        1512 AS expense
      UNION ALL
      SELECT
        1631 AS expense
      UNION ALL
      SELECT
        1954 AS expense
      UNION ALL
      SELECT
        1632 AS expense
      UNION ALL
      SELECT
        1788 AS expense
      UNION ALL
      SELECT
        1971 AS expense
      UNION ALL
      SELECT
        1989 AS expense
      UNION ALL
      SELECT
        1427 AS expense
      UNION ALL
      SELECT
        1684 AS expense
      UNION ALL
      SELECT
        1749 AS expense
      UNION ALL
      SELECT
        1795 AS expense
      UNION ALL
      SELECT
        1839 AS expense
      UNION ALL
      SELECT
        1358 AS expense
      UNION ALL
      SELECT
        1354 AS expense
      UNION ALL
      SELECT
        1591 AS expense
      UNION ALL
      SELECT
        1924 AS expense
      UNION ALL
      SELECT
        1456 AS expense
      UNION ALL
      SELECT
        2002 AS expense
      UNION ALL
      SELECT
        1746 AS expense
      UNION ALL
      SELECT
        1323 AS expense
      UNION ALL
      SELECT
        1946 AS expense
      UNION ALL
      SELECT
        1889 AS expense
      UNION ALL
      SELECT
        296 AS expense
      UNION ALL
      SELECT
        1908 AS expense
      UNION ALL
      SELECT
        1959 AS expense
      UNION ALL
      SELECT
        1944 AS expense
      UNION ALL
      SELECT
        1655 AS expense
      UNION ALL
      SELECT
        1602 AS expense
      UNION ALL
      SELECT
        1768 AS expense
      UNION ALL
      SELECT
        1666 AS expense
      UNION ALL
      SELECT
        1465 AS expense
      UNION ALL
      SELECT
        1782 AS expense
      UNION ALL
      SELECT
        1739 AS expense
      UNION ALL
      SELECT
        1472 AS expense
      UNION ALL
      SELECT
        1576 AS expense
      UNION ALL
      SELECT
        645 AS expense
      UNION ALL
      SELECT
        1496 AS expense
      UNION ALL
      SELECT
        1538 AS expense
      UNION ALL
      SELECT
        1761 AS expense
      UNION ALL
      SELECT
        1353 AS expense
      UNION ALL
      SELECT
        1639 AS expense
      UNION ALL
      SELECT
        1904 AS expense
      UNION ALL
      SELECT
        1765 AS expense
      UNION ALL
      SELECT
        1519 AS expense
      UNION ALL
      SELECT
        1948 AS expense
      UNION ALL
      SELECT
        1900 AS expense
      UNION ALL
      SELECT
        1376 AS expense
      UNION ALL
      SELECT
        1918 AS expense
      UNION ALL
      SELECT
        1950 AS expense
      UNION ALL
      SELECT
        667 AS expense
      UNION ALL
      SELECT
        1976 AS expense
      UNION ALL
      SELECT
        1925 AS expense
      UNION ALL
      SELECT
        1939 AS expense
      UNION ALL
      SELECT
        1319 AS expense
      UNION ALL
      SELECT
        1895 AS expense
      UNION ALL
      SELECT
        1510 AS expense
      UNION ALL
      SELECT
        1480 AS expense
      UNION ALL
      SELECT
        735 AS expense
      UNION ALL
      SELECT
        1674 AS expense
      UNION ALL
      SELECT
        1997 AS expense
      UNION ALL
      SELECT
        1868 AS expense
      UNION ALL
      SELECT
        1728 AS expense
      UNION ALL
      SELECT
        1893 AS expense
      UNION ALL
      SELECT
        1500 AS expense
      UNION ALL
      SELECT
        1363 AS expense
      UNION ALL
      SELECT
        1840 AS expense
      UNION ALL
      SELECT
        1905 AS expense
      UNION ALL
      SELECT
        1361 AS expense
      UNION ALL
      SELECT
        1894 AS expense
      UNION ALL
      SELECT
        1558 AS expense
      UNION ALL
      SELECT
        1369 AS expense
      UNION ALL
      SELECT
        1922 AS expense
      UNION ALL
      SELECT
        1367 AS expense
      UNION ALL
      SELECT
        1463 AS expense
      UNION ALL
      SELECT
        1365 AS expense
      UNION ALL
      SELECT
        1504 AS expense
      UNION ALL
      SELECT
        1898 AS expense
      UNION ALL
      SELECT
        1343 AS expense
      UNION ALL
      SELECT
        1436 AS expense
      UNION ALL
      SELECT
        1700 AS expense
      UNION ALL
      SELECT
        1911 AS expense
      UNION ALL
      SELECT
        1811 AS expense
      UNION ALL
      SELECT
        1829 AS expense
      UNION ALL
      SELECT
        1984 AS expense
      UNION ALL
      SELECT
        1444 AS expense
      UNION ALL
      SELECT
        1806 AS expense
      UNION ALL
      SELECT
        1455 AS expense
      UNION ALL
      SELECT
        1778 AS expense
      UNION ALL
      SELECT
        1835 AS expense
      UNION ALL
      SELECT
        1817 AS expense
      UNION ALL
      SELECT
        1668 AS expense
      UNION ALL
      SELECT
        1907 AS expense
      UNION ALL
      SELECT
        1748 AS expense
      UNION ALL
      SELECT
        2007 AS expense
      UNION ALL
      SELECT
        1534 AS expense
      UNION ALL
      SELECT
        1269 AS expense
      UNION ALL
      SELECT
        1473 AS expense
      UNION ALL
      SELECT
        1572 AS expense
      UNION ALL
      SELECT
        2006 AS expense
      UNION ALL
      SELECT
        1651 AS expense
      UNION ALL
      SELECT
        1853 AS expense
      UNION ALL
      SELECT
        1943 AS expense
      UNION ALL
      SELECT
        1968 AS expense
      UNION ALL
      SELECT
        1969 AS expense
      UNION ALL
      SELECT
        1437 AS expense
      UNION ALL
      SELECT
        1692 AS expense
      UNION ALL
      SELECT
        1955 AS expense
      UNION ALL
      SELECT
        1964 AS expense
      UNION ALL
      SELECT
        1821 AS expense
      UNION ALL
      SELECT
        1805 AS expense
      UNION ALL
      SELECT
        1999 AS expense
      UNION ALL
      SELECT
        1614 AS expense
      UNION ALL
      SELECT
        1754 AS expense
      UNION ALL
      SELECT
        1888 AS expense
      UNION ALL
      SELECT
        1832 AS expense
      UNION ALL
      SELECT
        1623 AS expense
      UNION ALL
      SELECT
        1723 AS expense
      UNION ALL
      SELECT
        1678 AS expense
      UNION ALL
      SELECT
        2008 AS expense
      UNION ALL
      SELECT
        1819 AS expense
      UNION ALL
      SELECT
        1595 AS expense
      UNION ALL
      SELECT
        1972 AS expense
      UNION ALL
      SELECT
        1229 AS expense
      UNION ALL
      SELECT
        1703 AS expense
      UNION ALL
      SELECT
        1762 AS expense
      UNION ALL
      SELECT
        1818 AS expense
      UNION ALL
      SELECT
        1062 AS expense
      UNION ALL
      SELECT
        1599 AS expense
      UNION ALL
      SELECT
        1996 AS expense
      UNION ALL
      SELECT
        2000 AS expense
      UNION ALL
      SELECT
        1960 AS expense
      UNION ALL
      SELECT
        1927 AS expense
      UNION ALL
      SELECT
        1407 AS expense
      UNION ALL
      SELECT
        1414 AS expense
      UNION ALL
      SELECT
        1923 AS expense
      UNION ALL
      SELECT
        1685 AS expense
      UNION ALL
      SELECT
        1998 AS expense
      UNION ALL
      SELECT
        1497 AS expense
      UNION ALL
      SELECT
        1687 AS expense
      UNION ALL
      SELECT
        1416 AS expense
      UNION ALL
      SELECT
        1757 AS expense
      UNION ALL
      SELECT
        1470 AS expense
      UNION ALL
      SELECT
        1810 AS expense
      UNION ALL
      SELECT
        2010 AS expense
      UNION ALL
      SELECT
        1553 AS expense
      UNION ALL
      SELECT
        1379 AS expense
      UNION ALL
      SELECT
        1495 AS expense
      UNION ALL
      SELECT
        1565 AS expense
      UNION ALL
      SELECT
        1796 AS expense
      UNION ALL
      SELECT
        2004 AS expense
      UNION ALL
      SELECT
        1899 AS expense
      UNION ALL
      SELECT
        2009 AS expense
      UNION ALL
      SELECT
        1395 AS expense
      UNION ALL
      SELECT
        1388 AS expense
      UNION ALL
      SELECT
        1902 AS expense
      UNION ALL
      SELECT
        1741 AS expense
      ;;
      sql_trigger_value: SELECT 1 ;;
}

  dimension: expense {
    type: number
    sql: ${TABLE}.expense ;;
  }

  measure: count {
    type: count
  }

  measure: sum_expenses {
    type: sum
    sql: ${expense} ;;
  }

  dimension: sums_to_2020 {
    type: yesno
    sql: ${one.expense} + ${one_self.expense} = 2020 ;;
  }

  dimension: part_two_sum {
    type: yesno
    sql: ${one.expense} + ${one_self.expense} + ${one_self_again.expense} = 2020 ;;
  }

}
