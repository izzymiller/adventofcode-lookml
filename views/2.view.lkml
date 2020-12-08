# --- Day 2: Password Philosophy ---
# Your flight departs in a few days from the coastal airport; the easiest way down to the coast from here is via toboggan.

# The shopkeeper at the North Pole Toboggan Rental Shop is having a bad day. "Something's wrong with our computers; we can't log in!" You ask if you can take a look.

# Their password database seems to be a little corrupted: some of the passwords wouldn't have been allowed by the Official Toboggan Corporate Policy that was in effect when they were chosen.

# To try to debug the problem, they have created a list (your puzzle input) of passwords (according to the corrupted database) and the corporate policy when that password was set.

# For example, suppose you have the following list:

# 1-3 a: abcde
# 1-3 b: cdefg
# 2-9 c: ccccccccc
# Each line gives the password policy and then the password. The password policy indicates the lowest and highest number of times a given letter must appear for the password to be valid. For example, 1-3 a means that the password must contain a at least 1 time and at most 3 times.

# In the above example, 2 passwords are valid. The middle password, cdefg, is not; it contains no instances of b, but needs at least 1. The first and third passwords are valid: they contain one a or nine c, both within the limits of their respective policies.

# How many passwords are valid according to their policies?

view: two {
  derived_table: {
    #I used https://csv-sql.web.app/ to take the input data from https://adventofcode.com/2020/day/2/input
    # and convert it into the below derived table. You can easily do the same!
    # Just set the separator to : and add a column at the top "policy: pass"
    sql: SELECT
  '1-9 x' AS policy, ' xwjgxtmrzxzmkx' AS _pass
UNION ALL
SELECT
  '4-6 r' AS policy, ' rrrkrgr' AS _pass
UNION ALL
SELECT
  '4-5 v' AS policy, ' vvfvvvn' AS _pass
UNION ALL
SELECT
  '5-16 m' AS policy, ' pxmrtmbmqmcldmmm' AS _pass
UNION ALL
SELECT
  '15-16 s' AS policy, ' bsshsszslssssslqdsss' AS _pass
UNION ALL
SELECT
  '10-12 g' AS policy, ' gggggggggzgvg' AS _pass
UNION ALL
SELECT
  '2-7 n' AS policy, ' dntnrng' AS _pass
UNION ALL
SELECT
  '11-14 j' AS policy, ' xrjflbmjszzjbjjh' AS _pass
UNION ALL
SELECT
  '2-6 r' AS policy, ' frxrrrfjnmr' AS _pass
UNION ALL
SELECT
  '6-7 h' AS policy, ' hplhgcsphh' AS _pass
UNION ALL
SELECT
  '4-5 w' AS policy, ' wwwwz' AS _pass
UNION ALL
SELECT
  '1-6 g' AS policy, ' ggdggnggg' AS _pass
UNION ALL
SELECT
  '3-4 c' AS policy, ' cccc' AS _pass
UNION ALL
SELECT
  '5-8 k' AS policy, ' kjgmkkfwxkwqkkgfnv' AS _pass
UNION ALL
SELECT
  '14-15 h' AS policy, ' xpwhdjhhjhrdjkhfh' AS _pass
UNION ALL
SELECT
  '6-7 g' AS policy, ' vgggggdhgsp' AS _pass
UNION ALL
SELECT
  '1-3 r' AS policy, ' rtdcrthphrkzxh' AS _pass
UNION ALL
SELECT
  '15-16 j' AS policy, ' jjjjjjstjjjjhjjjjj' AS _pass
UNION ALL
SELECT
  '8-10 k' AS policy, ' kkkkpkkqkv' AS _pass
UNION ALL
SELECT
  '1-4 s' AS policy, ' sssssj' AS _pass
UNION ALL
SELECT
  '2-3 d' AS policy, ' hdbmbpswddwkkr' AS _pass
UNION ALL
SELECT
  '6-7 s' AS policy, ' ssscssnss' AS _pass
UNION ALL
SELECT
  '8-9 z' AS policy, ' zzzzzzzftz' AS _pass
UNION ALL
SELECT
  '7-8 t' AS policy, ' glwvkgtn' AS _pass
UNION ALL
SELECT
  '3-10 n' AS policy, ' nnnnnnnnnnn' AS _pass
UNION ALL
SELECT
  '5-7 z' AS policy, ' lzzzzfhj' AS _pass
UNION ALL
SELECT
  '8-9 l' AS policy, ' llllllltn' AS _pass
UNION ALL
SELECT
  '1-2 p' AS policy, ' dpcppp' AS _pass
UNION ALL
SELECT
  '2-5 d' AS policy, ' hcfdltbgt' AS _pass
UNION ALL
SELECT
  '13-16 r' AS policy, ' rrdrrqrrrrrsbrrr' AS _pass
UNION ALL
SELECT
  '7-16 l' AS policy, ' lllltllllllllllllrll' AS _pass
UNION ALL
SELECT
  '9-14 z' AS policy, ' vzzzpzfzdzzzzzzfczz' AS _pass
UNION ALL
SELECT
  '3-5 f' AS policy, ' ffffb' AS _pass
UNION ALL
SELECT
  '6-8 s' AS policy, ' csssssjrbdsgs' AS _pass
UNION ALL
SELECT
  '9-18 r' AS policy, ' rrrrrrbrrrjzdrrrcrr' AS _pass
UNION ALL
SELECT
  '2-5 d' AS policy, ' fdzxdj' AS _pass
UNION ALL
SELECT
  '13-14 c' AS policy, ' cclcccccccccmc' AS _pass
UNION ALL
SELECT
  '9-10 z' AS policy, ' zzvszszjbnzzz' AS _pass
UNION ALL
SELECT
  '5-9 s' AS policy, ' ssqshwsss' AS _pass
UNION ALL
SELECT
  '4-11 x' AS policy, ' hxxxxjvdxcqplp' AS _pass
UNION ALL
SELECT
  '4-6 t' AS policy, ' mxtrtttttttttt' AS _pass
UNION ALL
SELECT
  '3-8 w' AS policy, ' wmwwwnbmtw' AS _pass
UNION ALL
SELECT
  '5-6 x' AS policy, ' xsczxd' AS _pass
UNION ALL
SELECT
  '2-7 w' AS policy, ' pwvtgkwwwrpjr' AS _pass
UNION ALL
SELECT
  '7-9 w' AS policy, ' wwwwwwwwj' AS _pass
UNION ALL
SELECT
  '3-9 h' AS policy, ' hhhhbhhhschhh' AS _pass
UNION ALL
SELECT
  '1-4 p' AS policy, ' tlwx' AS _pass
UNION ALL
SELECT
  '4-5 w' AS policy, ' lhzjwwwwmv' AS _pass
UNION ALL
SELECT
  '6-7 p' AS policy, ' ppppglprp' AS _pass
UNION ALL
SELECT
  '2-16 m' AS policy, ' jqmmmmmzmmmmmjmbxmw' AS _pass
UNION ALL
SELECT
  '8-10 g' AS policy, ' zhggpgrrlctggg' AS _pass
UNION ALL
SELECT
  '7-18 z' AS policy, ' pltbcznlvtzgzczzchbz' AS _pass
UNION ALL
SELECT
  '10-11 t' AS policy, ' jttttgtttttt' AS _pass
UNION ALL
SELECT
  '3-8 k' AS policy, ' kkkkkkkkkkk' AS _pass
UNION ALL
SELECT
  '19-20 x' AS policy, ' xxxxxxxxxxxxxxxxxxwr' AS _pass
UNION ALL
SELECT
  '9-16 l' AS policy, ' llllllflllllxpllzl' AS _pass
UNION ALL
SELECT
  '10-12 m' AS policy, ' mmjmmmmmmvms' AS _pass
UNION ALL
SELECT
  '1-4 c' AS policy, ' cdxvxczcc' AS _pass
UNION ALL
SELECT
  '7-10 n' AS policy, ' nnnnfnvpncn' AS _pass
UNION ALL
SELECT
  '10-17 z' AS policy, ' zszzzrzczxzfzzzzlz' AS _pass
UNION ALL
SELECT
  '4-9 k' AS policy, ' kkkdkkkkfk' AS _pass
UNION ALL
SELECT
  '12-13 m' AS policy, ' mmgmmqfgmmtmm' AS _pass
UNION ALL
SELECT
  '4-6 s' AS policy, ' tdmmcs' AS _pass
UNION ALL
SELECT
  '10-16 n' AS policy, ' nkfpnncncnnntmtc' AS _pass
UNION ALL
SELECT
  '2-3 w' AS policy, ' vwhwf' AS _pass
UNION ALL
SELECT
  '7-17 w' AS policy, ' wwfwwwqhwwwwcwwww' AS _pass
UNION ALL
SELECT
  '5-8 q' AS policy, ' tkqrtqqsqkwq' AS _pass
UNION ALL
SELECT
  '9-10 p' AS policy, ' ptpppppppd' AS _pass
UNION ALL
SELECT
  '1-5 f' AS policy, ' cnncnmnf' AS _pass
UNION ALL
SELECT
  '2-9 k' AS policy, ' kkjdsnsqkgprtqb' AS _pass
UNION ALL
SELECT
  '9-11 n' AS policy, ' nplnnnnnnnmnn' AS _pass
UNION ALL
SELECT
  '4-6 r' AS policy, ' rrkrzrr' AS _pass
UNION ALL
SELECT
  '3-5 z' AS policy, ' zzzzsq' AS _pass
UNION ALL
SELECT
  '17-18 r' AS policy, ' rrrrrrrrrrrrrrrrrx' AS _pass
UNION ALL
SELECT
  '5-8 c' AS policy, ' rcccdcclc' AS _pass
UNION ALL
SELECT
  '1-9 c' AS policy, ' vcccccccbc' AS _pass
UNION ALL
SELECT
  '9-10 x' AS policy, ' xxxxcbxxxm' AS _pass
UNION ALL
SELECT
  '2-5 c' AS policy, ' cccfn' AS _pass
UNION ALL
SELECT
  '8-9 c' AS policy, ' cccccnctc' AS _pass
UNION ALL
SELECT
  '4-8 l' AS policy, ' flrhfzwllm' AS _pass
UNION ALL
SELECT
  '1-5 l' AS policy, ' fllfllrklx' AS _pass
UNION ALL
SELECT
  '5-10 j' AS policy, ' jrjkrjjjjxgjqj' AS _pass
UNION ALL
SELECT
  '5-10 v' AS policy, ' dsxvmvvjtsc' AS _pass
UNION ALL
SELECT
  '4-6 v' AS policy, ' bsqvdghvnzdfvjcfvvv' AS _pass
UNION ALL
SELECT
  '6-11 m' AS policy, ' mmmmmmmmmmpm' AS _pass
UNION ALL
SELECT
  '6-9 q' AS policy, ' qqgqkcccsgqqjspj' AS _pass
UNION ALL
SELECT
  '2-5 n' AS policy, ' nvsrc' AS _pass
UNION ALL
SELECT
  '14-15 n' AS policy, ' nnnnnnnnnnnbnms' AS _pass
UNION ALL
SELECT
  '3-4 m' AS policy, ' mmbm' AS _pass
UNION ALL
SELECT
  '3-11 h' AS policy, ' hhbhhhhhhhhhhhhhhhh' AS _pass
UNION ALL
SELECT
  '7-9 k' AS policy, ' kkkkbknkjv' AS _pass
UNION ALL
SELECT
  '11-15 g' AS policy, ' ggvgggfgbgvvzjgxghgg' AS _pass
UNION ALL
SELECT
  '3-4 z' AS policy, ' zzzz' AS _pass
UNION ALL
SELECT
  '2-5 w' AS policy, ' wwwhww' AS _pass
UNION ALL
SELECT
  '9-14 j' AS policy, ' jjjjjjjjtjjjjw' AS _pass
UNION ALL
SELECT
  '2-4 j' AS policy, ' jjbljsj' AS _pass
UNION ALL
SELECT
  '6-9 w' AS policy, ' bwtkbttwqvwk' AS _pass
UNION ALL
SELECT
  '1-3 l' AS policy, ' lllpjl' AS _pass
UNION ALL
SELECT
  '9-10 g' AS policy, ' ggfmggggsrggggg' AS _pass
UNION ALL
SELECT
  '3-5 t' AS policy, ' ttwzxl' AS _pass
UNION ALL
SELECT
  '5-7 k' AS policy, ' kkwtbckkk' AS _pass
UNION ALL
SELECT
  '9-11 r' AS policy, ' rbgrrhrrrrrr' AS _pass
UNION ALL
SELECT
  '9-12 g' AS policy, ' ggggggsggglnggg' AS _pass
UNION ALL
SELECT
  '1-5 b' AS policy, ' bbbwjs' AS _pass
UNION ALL
SELECT
  '6-7 m' AS policy, ' xkjmdmm' AS _pass
UNION ALL
SELECT
  '6-8 g' AS policy, ' gggggwgw' AS _pass
UNION ALL
SELECT
  '12-15 v' AS policy, ' vrvvvqvvpvzvvvvrhqv' AS _pass
UNION ALL
SELECT
  '15-17 s' AS policy, ' hsnjsrsdxpjswsxsss' AS _pass
UNION ALL
SELECT
  '9-12 r' AS policy, ' rnhnrrsrrrrr' AS _pass
UNION ALL
SELECT
  '1-3 d' AS policy, ' ddnd' AS _pass
UNION ALL
SELECT
  '1-11 m' AS policy, ' mmtxkcdrvcmx' AS _pass
UNION ALL
SELECT
  '1-18 k' AS policy, ' kxkkkskkkkkktkkmkc' AS _pass
UNION ALL
SELECT
  '5-9 h' AS policy, ' vfxhhshhvhhbhr' AS _pass
UNION ALL
SELECT
  '2-3 k' AS policy, ' wtrcckttcqrj' AS _pass
UNION ALL
SELECT
  '2-7 q' AS policy, ' wnqcqqxw' AS _pass
UNION ALL
SELECT
  '1-9 s' AS policy, ' sqsssslsssssssssss' AS _pass
UNION ALL
SELECT
  '4-6 p' AS policy, ' mwvpppzp' AS _pass
UNION ALL
SELECT
  '1-4 v' AS policy, ' qlvnvv' AS _pass
UNION ALL
SELECT
  '10-11 z' AS policy, ' lzzzzzzzznt' AS _pass
UNION ALL
SELECT
  '2-14 q' AS policy, ' qwqqqqqqqqqqqfqqr' AS _pass
UNION ALL
SELECT
  '15-20 d' AS policy, ' dddddzddddddddlddddt' AS _pass
UNION ALL
SELECT
  '11-15 m' AS policy, ' fvsqwbnqmbnmgcm' AS _pass
UNION ALL
SELECT
  '3-4 c' AS policy, ' fncnfdjzcxwbpcrn' AS _pass
UNION ALL
SELECT
  '4-7 z' AS policy, ' jsxzzszzqtwzmcznfs' AS _pass
UNION ALL
SELECT
  '5-6 x' AS policy, ' glxxxxrxfxxwl' AS _pass
UNION ALL
SELECT
  '5-13 b' AS policy, ' pdbvhwjwnbdwbrbbjwf' AS _pass
UNION ALL
SELECT
  '7-8 h' AS policy, ' hhthhhvvt' AS _pass
UNION ALL
SELECT
  '8-11 f' AS policy, ' pfffffxffpbf' AS _pass
UNION ALL
SELECT
  '5-6 n' AS policy, ' ndtlxnnnqdmcnv' AS _pass
UNION ALL
SELECT
  '10-12 s' AS policy, ' sssssswssdshssss' AS _pass
UNION ALL
SELECT
  '15-16 s' AS policy, ' ssssssssssqsssss' AS _pass
UNION ALL
SELECT
  '4-5 s' AS policy, ' sssss' AS _pass
UNION ALL
SELECT
  '3-4 g' AS policy, ' ggggg' AS _pass
UNION ALL
SELECT
  '3-4 c' AS policy, ' ccjv' AS _pass
UNION ALL
SELECT
  '7-12 v' AS policy, ' rrrngfwhslsbpvbmwnn' AS _pass
UNION ALL
SELECT
  '4-10 n' AS policy, ' nxnbnnnbxnnn' AS _pass
UNION ALL
SELECT
  '7-15 d' AS policy, ' fggdddpgslqgdwhdndw' AS _pass
UNION ALL
SELECT
  '6-10 h' AS policy, ' hhzzghhfdchhjnm' AS _pass
UNION ALL
SELECT
  '8-9 c' AS policy, ' cccccccnc' AS _pass
UNION ALL
SELECT
  '9-10 h' AS policy, ' hhhhhhhhll' AS _pass
UNION ALL
SELECT
  '2-16 w' AS policy, ' nwfwwwzwvrbmwwww' AS _pass
UNION ALL
SELECT
  '10-13 k' AS policy, ' kkkksjkkskqtkkmkknks' AS _pass
UNION ALL
SELECT
  '4-9 f' AS policy, ' fffwfffbkc' AS _pass
UNION ALL
SELECT
  '4-11 v' AS policy, ' gcfkvvvvfvv' AS _pass
UNION ALL
SELECT
  '2-5 l' AS policy, ' llflftlmlglc' AS _pass
UNION ALL
SELECT
  '7-10 l' AS policy, ' llldljllgsbl' AS _pass
UNION ALL
SELECT
  '10-19 g' AS policy, ' svcsnlshppvrxzghhzg' AS _pass
UNION ALL
SELECT
  '3-8 d' AS policy, ' dddwdzvmddd' AS _pass
UNION ALL
SELECT
  '3-5 m' AS policy, ' kpmmjpmmmdz' AS _pass
UNION ALL
SELECT
  '13-14 n' AS policy, ' nnnnnnnnnnnnns' AS _pass
UNION ALL
SELECT
  '3-8 b' AS policy, ' bkbbbbbbbbbbbbbd' AS _pass
UNION ALL
SELECT
  '2-4 g' AS policy, ' jghfggh' AS _pass
UNION ALL
SELECT
  '8-11 m' AS policy, ' mmmmmmrmmmm' AS _pass
UNION ALL
SELECT
  '9-12 j' AS policy, ' pbjjpjnjxjjfsjzsjps' AS _pass
UNION ALL
SELECT
  '6-7 r' AS policy, ' rrrrrrrr' AS _pass
UNION ALL
SELECT
  '8-13 v' AS policy, ' vvvvvvvbbvvvvvw' AS _pass
UNION ALL
SELECT
  '4-17 p' AS policy, ' tpppppprzpspbpplppr' AS _pass
UNION ALL
SELECT
  '2-3 h' AS policy, ' wbhhzxhllh' AS _pass
UNION ALL
SELECT
  '2-15 c' AS policy, ' nvbcckcpccrtccwccsc' AS _pass
UNION ALL
SELECT
  '12-13 j' AS policy, ' jjjjjjjjjjjzhj' AS _pass
UNION ALL
SELECT
  '4-10 p' AS policy, ' dznzpnxzppl' AS _pass
UNION ALL
SELECT
  '5-8 r' AS policy, ' jrrrsrrrrr' AS _pass
UNION ALL
SELECT
  '7-10 q' AS policy, ' gjqjcqqqqsqfqqq' AS _pass
UNION ALL
SELECT
  '8-12 k' AS policy, ' kkkkkkkkkkkg' AS _pass
UNION ALL
SELECT
  '3-14 m' AS policy, ' mmtmmmmmmmmmmmmmm' AS _pass
UNION ALL
SELECT
  '3-12 t' AS policy, ' khgttqtcltshttwqgt' AS _pass
UNION ALL
SELECT
  '14-15 b' AS policy, ' bbbbbbbbbbbbbqb' AS _pass
UNION ALL
SELECT
  '14-15 f' AS policy, ' fffqfmffpnffffg' AS _pass
UNION ALL
SELECT
  '5-16 j' AS policy, ' jlghwmmrbdvdfjbj' AS _pass
UNION ALL
SELECT
  '7-8 v' AS policy, ' vvkbvvrv' AS _pass
UNION ALL
SELECT
  '2-11 m' AS policy, ' qmcgxcshgwmfm' AS _pass
UNION ALL
SELECT
  '11-12 m' AS policy, ' cmmmzfmcmmzmmmmjmr' AS _pass
UNION ALL
SELECT
  '6-7 n' AS policy, ' hnnbnnnw' AS _pass
UNION ALL
SELECT
  '4-8 m' AS policy, ' mvdtmstm' AS _pass
UNION ALL
SELECT
  '4-7 m' AS policy, ' bcrmmjbpmmmsdnrmm' AS _pass
UNION ALL
SELECT
  '1-4 w' AS policy, ' wwwww' AS _pass
UNION ALL
SELECT
  '12-14 j' AS policy, ' jjjjjjjjjjjrjhj' AS _pass
UNION ALL
SELECT
  '2-9 h' AS policy, ' ghhczbhblx' AS _pass
UNION ALL
SELECT
  '2-11 v' AS policy, ' vmvvvvvggvjpvchvvpc' AS _pass
UNION ALL
SELECT
  '6-7 f' AS policy, ' ffwfflghpwfl' AS _pass
UNION ALL
SELECT
  '3-14 k' AS policy, ' krkmjkgkzcckjbkkk' AS _pass
UNION ALL
SELECT
  '1-2 c' AS policy, ' cfcp' AS _pass
UNION ALL
SELECT
  '15-17 z' AS policy, ' ztzzzdzzzzzzzzzzt' AS _pass
UNION ALL
SELECT
  '4-13 p' AS policy, ' bmrpdwphzqvppktz' AS _pass
UNION ALL
SELECT
  '4-5 j' AS policy, ' jjvjtj' AS _pass
UNION ALL
SELECT
  '14-20 h' AS policy, ' hvchvhhhhbhthlhhhhhh' AS _pass
UNION ALL
SELECT
  '1-3 j' AS policy, ' kqjp' AS _pass
UNION ALL
SELECT
  '9-13 x' AS policy, ' fsxxxkxxbpkxmhlrdtfx' AS _pass
UNION ALL
SELECT
  '13-14 w' AS policy, ' wwpxwwwwwwgtwwcwwww' AS _pass
UNION ALL
SELECT
  '2-5 p' AS policy, ' wppxkq' AS _pass
UNION ALL
SELECT
  '13-15 x' AS policy, ' xxxzxxxbxxxxxxvxs' AS _pass
UNION ALL
SELECT
  '5-11 q' AS policy, ' qvqqqqxqqqqfqqq' AS _pass
UNION ALL
SELECT
  '8-12 q' AS policy, ' qqqqqqqvqqqq' AS _pass
UNION ALL
SELECT
  '8-10 m' AS policy, ' mmmmmmmjmn' AS _pass
UNION ALL
SELECT
  '17-18 t' AS policy, ' ttttrttttsttttttttt' AS _pass
UNION ALL
SELECT
  '9-13 h' AS policy, ' hhhhhqhjlvhhqhhwh' AS _pass
UNION ALL
SELECT
  '8-9 s' AS policy, ' ssssshsst' AS _pass
UNION ALL
SELECT
  '9-10 v' AS policy, ' qvvtvsvcmzvvnpgvv' AS _pass
UNION ALL
SELECT
  '7-12 d' AS policy, ' djcpndppsdddfdsdd' AS _pass
UNION ALL
SELECT
  '2-3 z' AS policy, ' dgzwvbrzzbgw' AS _pass
UNION ALL
SELECT
  '1-4 k' AS policy, ' kwkl' AS _pass
UNION ALL
SELECT
  '1-9 d' AS policy, ' dkdmdsdwdzvlpv' AS _pass
UNION ALL
SELECT
  '10-11 h' AS policy, ' hhhhhhhhhhh' AS _pass
UNION ALL
SELECT
  '9-10 f' AS policy, ' ffffffffff' AS _pass
UNION ALL
SELECT
  '4-7 d' AS policy, ' ssddddxp' AS _pass
UNION ALL
SELECT
  '18-19 j' AS policy, ' jjjjjjjjjjjjjjjjjsj' AS _pass
UNION ALL
SELECT
  '7-11 m' AS policy, ' mkmmrmmlrzsmgm' AS _pass
UNION ALL
SELECT
  '1-7 k' AS policy, ' kkkkkkknk' AS _pass
UNION ALL
SELECT
  '4-5 w' AS policy, ' wwwwj' AS _pass
UNION ALL
SELECT
  '6-13 s' AS policy, ' xslmsfgsssssmslsstqd' AS _pass
UNION ALL
SELECT
  '4-5 z' AS policy, ' zzzch' AS _pass
UNION ALL
SELECT
  '9-11 j' AS policy, ' jjjjjjjjjjj' AS _pass
UNION ALL
SELECT
  '4-7 h' AS policy, ' hjhhkdh' AS _pass
UNION ALL
SELECT
  '5-14 v' AS policy, ' vvvvglvvdvvvvv' AS _pass
UNION ALL
SELECT
  '5-6 q' AS policy, ' shqnjdqqq' AS _pass
UNION ALL
SELECT
  '1-5 q' AS policy, ' dqqqq' AS _pass
UNION ALL
SELECT
  '5-7 z' AS policy, ' zzznzzz' AS _pass
UNION ALL
SELECT
  '5-9 s' AS policy, ' vwsfsxssd' AS _pass
UNION ALL
SELECT
  '4-5 f' AS policy, ' sffffv' AS _pass
UNION ALL
SELECT
  '5-7 b' AS policy, ' xllbbdb' AS _pass
UNION ALL
SELECT
  '1-14 j' AS policy, ' rtzjqkpnkjlrhjcjqj' AS _pass
UNION ALL
SELECT
  '8-10 w' AS policy, ' wwwwwwwfwxz' AS _pass
UNION ALL
SELECT
  '3-6 g' AS policy, ' sggtlggswf' AS _pass
UNION ALL
SELECT
  '11-14 n' AS policy, ' nnbnnncnnsgnnmknn' AS _pass
UNION ALL
SELECT
  '6-15 c' AS policy, ' cclcnccctcrcxqmd' AS _pass
UNION ALL
SELECT
  '5-8 l' AS policy, ' lmllxwpl' AS _pass
UNION ALL
SELECT
  '4-11 p' AS policy, ' pppppppcpkdp' AS _pass
UNION ALL
SELECT
  '1-4 w' AS policy, ' zwwx' AS _pass
UNION ALL
SELECT
  '1-3 g' AS policy, ' nlfpgfzqkzn' AS _pass
UNION ALL
SELECT
  '11-12 w' AS policy, ' vbwwgwvwrwlwwmwwwjw' AS _pass
UNION ALL
SELECT
  '4-12 j' AS policy, ' vzfjgjrkzdrxqfh' AS _pass
UNION ALL
SELECT
  '1-2 r' AS policy, ' frrq' AS _pass
UNION ALL
SELECT
  '1-4 k' AS policy, ' vkkkkk' AS _pass
UNION ALL
SELECT
  '11-13 d' AS policy, ' pndlftgdpdhld' AS _pass
UNION ALL
SELECT
  '1-4 r' AS policy, ' prrvrrrrfrrrrr' AS _pass
UNION ALL
SELECT
  '8-9 m' AS policy, ' fmmxmmmmmmm' AS _pass
UNION ALL
SELECT
  '1-2 x' AS policy, ' xcpxc' AS _pass
UNION ALL
SELECT
  '4-16 n' AS policy, ' rhbndvjnnsnfnwnnm' AS _pass
UNION ALL
SELECT
  '2-10 g' AS policy, ' fkzwxtqmgm' AS _pass
UNION ALL
SELECT
  '11-19 p' AS policy, ' bpppqpppppplpppphpsr' AS _pass
UNION ALL
SELECT
  '9-13 g' AS policy, ' ggggthggggpjgqgslggq' AS _pass
UNION ALL
SELECT
  '4-5 m' AS policy, ' mzmmxcfwmdpz' AS _pass
UNION ALL
SELECT
  '2-13 t' AS policy, ' tttttttptttts' AS _pass
UNION ALL
SELECT
  '3-7 q' AS policy, ' qqvqqqcqq' AS _pass
UNION ALL
SELECT
  '6-9 j' AS policy, ' jsjjjjccjwjcjjj' AS _pass
UNION ALL
SELECT
  '7-10 r' AS policy, ' rdlrrrrrrr' AS _pass
UNION ALL
SELECT
  '9-12 r' AS policy, ' wrrzsrcrgcbrhqvrhlp' AS _pass
UNION ALL
SELECT
  '6-7 j' AS policy, ' jjxjjzhxj' AS _pass
UNION ALL
SELECT
  '6-7 m' AS policy, ' mmmmmmmm' AS _pass
UNION ALL
SELECT
  '1-3 m' AS policy, ' mldvdmxmbk' AS _pass
UNION ALL
SELECT
  '10-11 f' AS policy, ' ffffnffffkqf' AS _pass
UNION ALL
SELECT
  '5-17 f' AS policy, ' ffffsfffftfffkffn' AS _pass
UNION ALL
SELECT
  '4-5 b' AS policy, ' fbwbhvx' AS _pass
UNION ALL
SELECT
  '14-16 g' AS policy, ' ggggggggthgggggsvd' AS _pass
UNION ALL
SELECT
  '2-3 s' AS policy, ' cvsbw' AS _pass
UNION ALL
SELECT
  '5-10 g' AS policy, ' qltgnfghgcrgpnzdsvng' AS _pass
UNION ALL
SELECT
  '5-6 p' AS policy, ' ppjbpnppxg' AS _pass
UNION ALL
SELECT
  '3-8 j' AS policy, ' lgjrzwdvdnwvrnj' AS _pass
UNION ALL
SELECT
  '2-4 c' AS policy, ' cdcc' AS _pass
UNION ALL
SELECT
  '6-7 l' AS policy, ' llflrhlllgklh' AS _pass
UNION ALL
SELECT
  '1-2 p' AS policy, ' tppp' AS _pass
UNION ALL
SELECT
  '16-17 g' AS policy, ' gggggggvggggggggg' AS _pass
UNION ALL
SELECT
  '3-14 f' AS policy, ' fhfdffftfbggpkfgf' AS _pass
UNION ALL
SELECT
  '16-18 b' AS policy, ' bbbbbbbbbbbbbbbbbbbb' AS _pass
UNION ALL
SELECT
  '5-10 v' AS policy, ' thqvvkvlwvdvjzzst' AS _pass
UNION ALL
SELECT
  '13-14 p' AS policy, ' ppppppppppppptc' AS _pass
UNION ALL
SELECT
  '11-14 t' AS policy, ' tkttczttttsttmcnltm' AS _pass
UNION ALL
SELECT
  '3-4 w' AS policy, ' nvxl' AS _pass
UNION ALL
SELECT
  '4-6 f' AS policy, ' fpflfwftk' AS _pass
UNION ALL
SELECT
  '4-6 h' AS policy, ' xhhhhh' AS _pass
UNION ALL
SELECT
  '15-17 t' AS policy, ' tttttttttttttttlv' AS _pass
UNION ALL
SELECT
  '10-17 j' AS policy, ' jjjjjjjjjsjjjjjjd' AS _pass
UNION ALL
SELECT
  '2-4 s' AS policy, ' jcgs' AS _pass
UNION ALL
SELECT
  '7-9 q' AS policy, ' qsqqjhqndsqkqqpvqqr' AS _pass
UNION ALL
SELECT
  '2-3 p' AS policy, ' tnpplcmdpfn' AS _pass
UNION ALL
SELECT
  '2-5 c' AS policy, ' crvmk' AS _pass
UNION ALL
SELECT
  '1-7 d' AS policy, ' tsmzcgddnddddrdxsq' AS _pass
UNION ALL
SELECT
  '8-9 c' AS policy, ' rlfcpctpncv' AS _pass
UNION ALL
SELECT
  '6-9 f' AS policy, ' tkzfhffdf' AS _pass
UNION ALL
SELECT
  '13-15 s' AS policy, ' sssmsscfvsssdsg' AS _pass
UNION ALL
SELECT
  '6-8 s' AS policy, ' ssjsssjrscsss' AS _pass
UNION ALL
SELECT
  '7-10 f' AS policy, ' fffffffkfff' AS _pass
UNION ALL
SELECT
  '1-6 k' AS policy, ' jqtdhpknkkk' AS _pass
UNION ALL
SELECT
  '11-12 t' AS policy, ' tttttttttttf' AS _pass
UNION ALL
SELECT
  '9-16 d' AS policy, ' swjbddfpfbntmprdd' AS _pass
UNION ALL
SELECT
  '18-19 v' AS policy, ' dvvvvvvvvvvvvvvvkvvv' AS _pass
UNION ALL
SELECT
  '2-5 j' AS policy, ' kjjcqjj' AS _pass
UNION ALL
SELECT
  '11-12 d' AS policy, ' dddddddcddld' AS _pass
UNION ALL
SELECT
  '14-16 f' AS policy, ' fffffffffffffffk' AS _pass
UNION ALL
SELECT
  '4-7 x' AS policy, ' nxxxxxxn' AS _pass
UNION ALL
SELECT
  '10-18 p' AS policy, ' pppppppppppppppppr' AS _pass
UNION ALL
SELECT
  '8-9 k' AS policy, ' ktkjkkkkfvklkz' AS _pass
UNION ALL
SELECT
  '9-15 h' AS policy, ' hhhhhhhhchhhhhhhhh' AS _pass
UNION ALL
SELECT
  '18-19 v' AS policy, ' hvkvvvvvvvvvvvvvvqc' AS _pass
UNION ALL
SELECT
  '1-8 s' AS policy, ' xzbxgsxshgl' AS _pass
UNION ALL
SELECT
  '2-6 p' AS policy, ' ppsjpglptchpzbdhj' AS _pass
UNION ALL
SELECT
  '6-7 n' AS policy, ' nnnnnnnc' AS _pass
UNION ALL
SELECT
  '2-7 j' AS policy, ' jhtjjjjj' AS _pass
UNION ALL
SELECT
  '11-12 b' AS policy, ' vnblqbxkbbwb' AS _pass
UNION ALL
SELECT
  '4-5 z' AS policy, ' czzzcztsz' AS _pass
UNION ALL
SELECT
  '4-9 x' AS policy, ' wxpvxxxfxfxx' AS _pass
UNION ALL
SELECT
  '9-12 w' AS policy, ' wwwwwwwwwgwwww' AS _pass
UNION ALL
SELECT
  '2-5 k' AS policy, ' cntkkq' AS _pass
UNION ALL
SELECT
  '10-12 l' AS policy, ' vljplljlllllllll' AS _pass
UNION ALL
SELECT
  '1-4 t' AS policy, ' tfmvst' AS _pass
UNION ALL
SELECT
  '6-7 d' AS policy, ' rddddddwd' AS _pass
UNION ALL
SELECT
  '2-6 h' AS policy, ' bhvwhl' AS _pass
UNION ALL
SELECT
  '5-8 c' AS policy, ' ccsgccncwgjtcbhccckk' AS _pass
UNION ALL
SELECT
  '5-6 r' AS policy, ' rrrrmr' AS _pass
UNION ALL
SELECT
  '3-8 h' AS policy, ' hcrhhjrbhh' AS _pass
UNION ALL
SELECT
  '2-4 s' AS policy, ' xndshswk' AS _pass
UNION ALL
SELECT
  '2-7 m' AS policy, ' mmrqmmlp' AS _pass
UNION ALL
SELECT
  '7-9 n' AS policy, ' nnnbfpmnfnknxnndn' AS _pass
UNION ALL
SELECT
  '6-7 f' AS policy, ' fvffffb' AS _pass
UNION ALL
SELECT
  '6-8 h' AS policy, ' vhhhhhtk' AS _pass
UNION ALL
SELECT
  '6-7 j' AS policy, ' jjjjjwjjs' AS _pass
UNION ALL
SELECT
  '1-5 r' AS policy, ' rwrrrr' AS _pass
UNION ALL
SELECT
  '3-4 t' AS policy, ' tlzk' AS _pass
UNION ALL
SELECT
  '2-7 k' AS policy, ' kkkkkkk' AS _pass
UNION ALL
SELECT
  '6-11 q' AS policy, ' rqqqqqwflqqjqq' AS _pass
UNION ALL
SELECT
  '5-7 l' AS policy, ' llllglll' AS _pass
UNION ALL
SELECT
  '6-14 r' AS policy, ' rrkrrxrmrrrrrc' AS _pass
UNION ALL
SELECT
  '1-8 w' AS policy, ' lrwpzvhhcwtbrwwpwww' AS _pass
UNION ALL
SELECT
  '3-13 b' AS policy, ' kbjhskpbrwqpbcbbkb' AS _pass
UNION ALL
SELECT
  '6-9 d' AS policy, ' ddddbddhdddddddddmg' AS _pass
UNION ALL
SELECT
  '14-15 n' AS policy, ' nnnnnnnntnnnnhf' AS _pass
UNION ALL
SELECT
  '2-18 k' AS policy, ' cgjpktthdbfxrclqwzpl' AS _pass
UNION ALL
SELECT
  '5-14 w' AS policy, ' wwwwwbfwzwcwcwz' AS _pass
UNION ALL
SELECT
  '5-7 s' AS policy, ' tfhssgrsnbssfl' AS _pass
UNION ALL
SELECT
  '1-18 l' AS policy, ' wdkwkdlslbllllgzfm' AS _pass
UNION ALL
SELECT
  '1-17 h' AS policy, ' jhhhhhhhhhhhthhhhh' AS _pass
UNION ALL
SELECT
  '7-13 w' AS policy, ' wwvwwwwwrwwww' AS _pass
UNION ALL
SELECT
  '1-3 r' AS policy, ' rgrdrx' AS _pass
UNION ALL
SELECT
  '9-11 t' AS policy, ' dnxckkwpttv' AS _pass
UNION ALL
SELECT
  '2-12 c' AS policy, ' cgqxrszcckcd' AS _pass
UNION ALL
SELECT
  '4-13 q' AS policy, ' qkchpbqqtrtdztrq' AS _pass
UNION ALL
SELECT
  '2-9 d' AS policy, ' ddddsddddd' AS _pass
UNION ALL
SELECT
  '9-19 p' AS policy, ' pppppgppppqpppppppp' AS _pass
UNION ALL
SELECT
  '8-9 l' AS policy, ' lllhlllll' AS _pass
UNION ALL
SELECT
  '7-8 h' AS policy, ' hhhhhkhvwbhmh' AS _pass
UNION ALL
SELECT
  '11-12 w' AS policy, ' wwwwwwwwwwwnwwww' AS _pass
UNION ALL
SELECT
  '2-3 d' AS policy, ' jhcd' AS _pass
UNION ALL
SELECT
  '13-16 n' AS policy, ' nnnnnnnnnnnnndnnmnn' AS _pass
UNION ALL
SELECT
  '6-7 d' AS policy, ' dllpddkdd' AS _pass
UNION ALL
SELECT
  '6-7 n' AS policy, ' nnnnnkp' AS _pass
UNION ALL
SELECT
  '7-14 v' AS policy, ' vvbcvrvvkmvvsv' AS _pass
UNION ALL
SELECT
  '5-7 j' AS policy, ' jjjjcjs' AS _pass
UNION ALL
SELECT
  '4-10 l' AS policy, ' ldllllllll' AS _pass
UNION ALL
SELECT
  '4-5 x' AS policy, ' rxxxx' AS _pass
UNION ALL
SELECT
  '15-16 q' AS policy, ' qqqqqqqqqqqlqqqw' AS _pass
UNION ALL
SELECT
  '13-15 m' AS policy, ' mmmmmmmmmbmmzmbm' AS _pass
UNION ALL
SELECT
  '7-10 k' AS policy, ' skkkkkkkkq' AS _pass
UNION ALL
SELECT
  '9-15 m' AS policy, ' mghxpjzqdhjcbmdl' AS _pass
UNION ALL
SELECT
  '2-4 t' AS policy, ' ttsnwzbdj' AS _pass
UNION ALL
SELECT
  '6-7 s' AS policy, ' hqtkgtr' AS _pass
UNION ALL
SELECT
  '3-4 n' AS policy, ' twpknn' AS _pass
UNION ALL
SELECT
  '1-3 l' AS policy, ' wrldlsdl' AS _pass
UNION ALL
SELECT
  '5-6 l' AS policy, ' qlxncf' AS _pass
UNION ALL
SELECT
  '4-5 s' AS policy, ' dvsxs' AS _pass
UNION ALL
SELECT
  '7-9 t' AS policy, ' rktsrfwttttgwtzgft' AS _pass
UNION ALL
SELECT
  '1-3 l' AS policy, ' flsf' AS _pass
UNION ALL
SELECT
  '6-10 c' AS policy, ' cchczccccj' AS _pass
UNION ALL
SELECT
  '1-3 k' AS policy, ' bktw' AS _pass
UNION ALL
SELECT
  '2-4 h' AS policy, ' zdqxgrfkfhljhqhkgmfc' AS _pass
UNION ALL
SELECT
  '16-17 s' AS policy, ' sssssssssssssssvs' AS _pass
UNION ALL
SELECT
  '4-8 p' AS policy, ' plpfmnhsppnpwnx' AS _pass
UNION ALL
SELECT
  '5-10 k' AS policy, ' kkkkknkqkk' AS _pass
UNION ALL
SELECT
  '4-11 s' AS policy, ' nsqnssssvqsm' AS _pass
UNION ALL
SELECT
  '6-14 j' AS policy, ' jjjzjwczkjjjxjjcjjxj' AS _pass
UNION ALL
SELECT
  '3-7 t' AS policy, ' tnnbjjhtd' AS _pass
UNION ALL
SELECT
  '7-8 l' AS policy, ' llllllll' AS _pass
UNION ALL
SELECT
  '4-11 z' AS policy, ' cwsvrtszxrgh' AS _pass
UNION ALL
SELECT
  '2-11 x' AS policy, ' sxcxxxjxrxkxdxx' AS _pass
UNION ALL
SELECT
  '11-15 m' AS policy, ' mmxmbxmmdmmmmfmmfmm' AS _pass
UNION ALL
SELECT
  '10-13 l' AS policy, ' tllllwzlzlrbllllhnp' AS _pass
UNION ALL
SELECT
  '5-6 k' AS policy, ' kkkjkmkkkg' AS _pass
UNION ALL
SELECT
  '4-7 f' AS policy, ' wqqfmffffkp' AS _pass
UNION ALL
SELECT
  '1-9 b' AS policy, ' bbbbbmbbbbhbbdzbbtn' AS _pass
UNION ALL
SELECT
  '10-12 h' AS policy, ' hhhhdwbhhqrhhhdnxhr' AS _pass
UNION ALL
SELECT
  '1-8 r' AS policy, ' qfpnfrrrrz' AS _pass
UNION ALL
SELECT
  '16-20 b' AS policy, ' bbbbbbbbbbbbbbbbbbbb' AS _pass
UNION ALL
SELECT
  '1-5 c' AS policy, ' hwqccmwcctcnclcb' AS _pass
UNION ALL
SELECT
  '6-13 c' AS policy, ' clccccqqcccjczpgj' AS _pass
UNION ALL
SELECT
  '13-14 j' AS policy, ' jjjjjjjjjjjjjh' AS _pass
UNION ALL
SELECT
  '2-4 j' AS policy, ' jkfp' AS _pass
UNION ALL
SELECT
  '2-7 d' AS policy, ' qqxdcdjqg' AS _pass
UNION ALL
SELECT
  '5-6 r' AS policy, ' prrrrd' AS _pass
UNION ALL
SELECT
  '7-8 l' AS policy, ' llllllll' AS _pass
UNION ALL
SELECT
  '2-3 w' AS policy, ' nwlm' AS _pass
UNION ALL
SELECT
  '9-12 v' AS policy, ' vnknxncvgvrww' AS _pass
UNION ALL
SELECT
  '6-16 s' AS policy, ' sjnwfsksnszcglxs' AS _pass
UNION ALL
SELECT
  '5-17 z' AS policy, ' zzmkzzzzzntzjzbwpdjz' AS _pass
UNION ALL
SELECT
  '12-17 j' AS policy, ' ljjjjjjhjjwtjjjjdjwj' AS _pass
UNION ALL
SELECT
  '8-10 s' AS policy, ' dnnjlfkxls' AS _pass
UNION ALL
SELECT
  '2-6 m' AS policy, ' jmmqmdkjm' AS _pass
UNION ALL
SELECT
  '9-11 m' AS policy, ' mmmcmmmfsmmm' AS _pass
UNION ALL
SELECT
  '14-16 p' AS policy, ' ppppptpppphrpxpppp' AS _pass
UNION ALL
SELECT
  '4-15 d' AS policy, ' dfkfxdddldddddddlddp' AS _pass
UNION ALL
SELECT
  '12-14 q' AS policy, ' qqqqqqqqqqqwwgq' AS _pass
UNION ALL
SELECT
  '1-6 g' AS policy, ' tgggggmggggdg' AS _pass
UNION ALL
SELECT
  '10-18 w' AS policy, ' wwwwwwwwwbwjwwwwwt' AS _pass
UNION ALL
SELECT
  '8-9 t' AS policy, ' ttkttcttsrgrzlftpt' AS _pass
UNION ALL
SELECT
  '3-5 j' AS policy, ' jjjjjjjjjjjjjl' AS _pass
UNION ALL
SELECT
  '17-18 c' AS policy, ' ccccccczcccccccccs' AS _pass
UNION ALL
SELECT
  '4-9 d' AS policy, ' hjddddddddm' AS _pass
UNION ALL
SELECT
  '2-4 x' AS policy, ' lxjfp' AS _pass
UNION ALL
SELECT
  '11-12 v' AS policy, ' vvvvvvvvvvjv' AS _pass
UNION ALL
SELECT
  '1-4 z' AS policy, ' fmzblzvzm' AS _pass
UNION ALL
SELECT
  '4-5 h' AS policy, ' hhshhh' AS _pass
UNION ALL
SELECT
  '3-6 t' AS policy, ' ptvrtt' AS _pass
UNION ALL
SELECT
  '7-15 k' AS policy, ' kkkjzkckgckskpkk' AS _pass
UNION ALL
SELECT
  '12-15 w' AS policy, ' wwwwwwwwwwwftwdw' AS _pass
UNION ALL
SELECT
  '3-5 z' AS policy, ' jrhns' AS _pass
UNION ALL
SELECT
  '5-6 n' AS policy, ' pxmnzn' AS _pass
UNION ALL
SELECT
  '1-3 b' AS policy, ' bbbkbbbbbbwb' AS _pass
UNION ALL
SELECT
  '1-10 r' AS policy, ' rrjrqrrwrrrqv' AS _pass
UNION ALL
SELECT
  '11-12 w' AS policy, ' wwwwwwwwwwwwwww' AS _pass
UNION ALL
SELECT
  '5-6 j' AS policy, ' jsjjjp' AS _pass
UNION ALL
SELECT
  '6-11 h' AS policy, ' lhbbvmhwrhh' AS _pass
UNION ALL
SELECT
  '18-19 q' AS policy, ' qqqqqqqcxqqqqqqqqxwq' AS _pass
UNION ALL
SELECT
  '17-18 l' AS policy, ' llllllllllllllllxql' AS _pass
UNION ALL
SELECT
  '3-4 j' AS policy, ' jjljjn' AS _pass
UNION ALL
SELECT
  '8-10 z' AS policy, ' zzzzwnzlzggz' AS _pass
UNION ALL
SELECT
  '6-7 t' AS policy, ' tttttft' AS _pass
UNION ALL
SELECT
  '11-12 f' AS policy, ' ffffffffffnf' AS _pass
UNION ALL
SELECT
  '2-8 b' AS policy, ' hqbbbbbsbb' AS _pass
UNION ALL
SELECT
  '4-5 w' AS policy, ' stljwbxpw' AS _pass
UNION ALL
SELECT
  '1-2 z' AS policy, ' grxfpw' AS _pass
UNION ALL
SELECT
  '6-8 w' AS policy, ' wwwwpwwxw' AS _pass
UNION ALL
SELECT
  '8-14 z' AS policy, ' zqzzzzzvzzzzzzgz' AS _pass
UNION ALL
SELECT
  '4-11 b' AS policy, ' cckgrcmbpvbbw' AS _pass
UNION ALL
SELECT
  '2-9 d' AS policy, ' xqxbdddjds' AS _pass
UNION ALL
SELECT
  '3-6 x' AS policy, ' xxrxxx' AS _pass
UNION ALL
SELECT
  '15-16 n' AS policy, ' nnnnnnnnnnnnnndnn' AS _pass
UNION ALL
SELECT
  '6-11 x' AS policy, ' lqmxxxsxxfxxxxlx' AS _pass
UNION ALL
SELECT
  '1-12 s' AS policy, ' vssssshssmsk' AS _pass
UNION ALL
SELECT
  '1-16 m' AS policy, ' bmgkkmwmmzvmmmmmwflv' AS _pass
UNION ALL
SELECT
  '3-15 t' AS policy, ' thkvttsltnbgztt' AS _pass
UNION ALL
SELECT
  '9-17 z' AS policy, ' zzzzzzzzzzzzzzzzzz' AS _pass
UNION ALL
SELECT
  '4-6 f' AS policy, ' fjwfff' AS _pass
UNION ALL
SELECT
  '3-9 d' AS policy, ' ddddddddd' AS _pass
UNION ALL
SELECT
  '6-10 k' AS policy, ' kjkbkkckxkknqkkdc' AS _pass
UNION ALL
SELECT
  '6-7 n' AS policy, ' nsnckwnmn' AS _pass
UNION ALL
SELECT
  '7-13 t' AS policy, ' ptbtjqttwwtftpntdq' AS _pass
UNION ALL
SELECT
  '7-10 r' AS policy, ' wrhhrrrrrwrrrrvqrms' AS _pass
UNION ALL
SELECT
  '2-3 c' AS policy, ' zcrwhtccb' AS _pass
UNION ALL
SELECT
  '5-7 m' AS policy, ' nnwmmdmmmccv' AS _pass
UNION ALL
SELECT
  '3-5 j' AS policy, ' rtjjmjrjl' AS _pass
UNION ALL
SELECT
  '5-6 s' AS policy, ' dssjhsdmbksrks' AS _pass
UNION ALL
SELECT
  '16-18 c' AS policy, ' ccccclcccclccccccc' AS _pass
UNION ALL
SELECT
  '7-16 b' AS policy, ' qpzgqxdbssmzptrv' AS _pass
UNION ALL
SELECT
  '6-8 b' AS policy, ' bnsbbgdbggxbbszbm' AS _pass
UNION ALL
SELECT
  '1-10 h' AS policy, ' lrpstqvhhhhf' AS _pass
UNION ALL
SELECT
  '4-6 s' AS policy, ' tvssppwvss' AS _pass
UNION ALL
SELECT
  '3-4 g' AS policy, ' qqqhcd' AS _pass
UNION ALL
SELECT
  '4-7 c' AS policy, ' qxcqzccckxcpcxcw' AS _pass
UNION ALL
SELECT
  '1-13 m' AS policy, ' nbwdmspmmwbbmm' AS _pass
UNION ALL
SELECT
  '1-2 j' AS policy, ' xjrczrk' AS _pass
UNION ALL
SELECT
  '9-10 w' AS policy, ' wwwwwwwwwd' AS _pass
UNION ALL
SELECT
  '2-4 h' AS policy, ' hhhq' AS _pass
UNION ALL
SELECT
  '7-10 j' AS policy, ' bjmrrjsjthjnnjjxjjd' AS _pass
UNION ALL
SELECT
  '3-7 f' AS policy, ' srfwwfvf' AS _pass
UNION ALL
SELECT
  '3-4 b' AS policy, ' nbbzb' AS _pass
UNION ALL
SELECT
  '3-5 n' AS policy, ' nnnnn' AS _pass
UNION ALL
SELECT
  '7-8 f' AS policy, ' fxfnfffzpqffgdf' AS _pass
UNION ALL
SELECT
  '10-12 k' AS policy, ' kkpkkkpnkkmkjbkk' AS _pass
UNION ALL
SELECT
  '9-10 k' AS policy, ' jkkkkkkkwqk' AS _pass
UNION ALL
SELECT
  '4-6 z' AS policy, ' rzzzzs' AS _pass
UNION ALL
SELECT
  '4-7 v' AS policy, ' vvvtvvjq' AS _pass
UNION ALL
SELECT
  '6-12 z' AS policy, ' dzjnzczzpzgzzzx' AS _pass
UNION ALL
SELECT
  '6-8 s' AS policy, ' smsvbkswslssrdfjsc' AS _pass
UNION ALL
SELECT
  '5-7 b' AS policy, ' bwbbbbbbr' AS _pass
UNION ALL
SELECT
  '1-3 d' AS policy, ' kddbsmmbv' AS _pass
UNION ALL
SELECT
  '3-4 b' AS policy, ' bbbb' AS _pass
UNION ALL
SELECT
  '5-8 r' AS policy, ' rqrrdrrr' AS _pass
UNION ALL
SELECT
  '7-8 m' AS policy, ' mmmmmmzm' AS _pass
UNION ALL
SELECT
  '9-11 q' AS policy, ' xvnlfvhxqfql' AS _pass
UNION ALL
SELECT
  '3-4 w' AS policy, ' wfwj' AS _pass
UNION ALL
SELECT
  '1-3 q' AS policy, ' gqqcqg' AS _pass
UNION ALL
SELECT
  '1-2 q' AS policy, ' cqlxrq' AS _pass
UNION ALL
SELECT
  '6-12 s' AS policy, ' swwjjssjsstmqfssdh' AS _pass
UNION ALL
SELECT
  '2-4 q' AS policy, ' bqqq' AS _pass
UNION ALL
SELECT
  '5-6 c' AS policy, ' ccccbscgfc' AS _pass
UNION ALL
SELECT
  '14-15 x' AS policy, ' xxcxxxxxxxxxxxm' AS _pass
UNION ALL
SELECT
  '6-12 f' AS policy, ' fzfchfnrxfrdffhfl' AS _pass
UNION ALL
SELECT
  '14-17 g' AS policy, ' gggggggggggggjgpgg' AS _pass
UNION ALL
SELECT
  '5-8 n' AS policy, ' njkcngznn' AS _pass
UNION ALL
SELECT
  '10-13 d' AS policy, ' dddlqddddvddr' AS _pass
UNION ALL
SELECT
  '2-4 c' AS policy, ' xgcg' AS _pass
UNION ALL
SELECT
  '2-10 s' AS policy, ' sxsnsdmszwmsss' AS _pass
UNION ALL
SELECT
  '6-12 q' AS policy, ' qbcqspqqqkqrq' AS _pass
UNION ALL
SELECT
  '6-16 n' AS policy, ' xnnnnnnnnnnnnnnfnnn' AS _pass
UNION ALL
SELECT
  '6-12 s' AS policy, ' tssnssmsssssssssnhr' AS _pass
UNION ALL
SELECT
  '1-4 v' AS policy, ' vwvvv' AS _pass
UNION ALL
SELECT
  '8-10 h' AS policy, ' rzmhhjvqhht' AS _pass
UNION ALL
SELECT
  '1-4 t' AS policy, ' ttjdjftfctt' AS _pass
UNION ALL
SELECT
  '1-4 k' AS policy, ' nkkz' AS _pass
UNION ALL
SELECT
  '1-2 q' AS policy, ' vkvqkqq' AS _pass
UNION ALL
SELECT
  '9-19 n' AS policy, ' qxmjqxnxnblqnnqfgsrd' AS _pass
UNION ALL
SELECT
  '15-16 h' AS policy, ' hhhhhhhhhhhhhhghz' AS _pass
UNION ALL
SELECT
  '2-5 g' AS policy, ' jggpxdgwjpsrv' AS _pass
UNION ALL
SELECT
  '12-13 c' AS policy, ' xccccpccrcccc' AS _pass
UNION ALL
SELECT
  '1-13 g' AS policy, ' nfgbghqrljstggcgq' AS _pass
UNION ALL
SELECT
  '14-17 g' AS policy, ' gggggggggggggmggggg' AS _pass
UNION ALL
SELECT
  '4-14 s' AS policy, ' sssbsssssssssgs' AS _pass
UNION ALL
SELECT
  '1-10 d' AS policy, ' rcxvxcgddnhwd' AS _pass
UNION ALL
SELECT
  '4-14 g' AS policy, ' vccvdldqdgzltq' AS _pass
UNION ALL
SELECT
  '8-10 z' AS policy, ' zzdczzvrzzzzr' AS _pass
UNION ALL
SELECT
  '5-10 t' AS policy, ' ctgtttftqtrbt' AS _pass
UNION ALL
SELECT
  '3-5 v' AS policy, ' vvrvx' AS _pass
UNION ALL
SELECT
  '9-10 w' AS policy, ' wwwwwwwwwwwww' AS _pass
UNION ALL
SELECT
  '4-6 c' AS policy, ' hgccmcccc' AS _pass
UNION ALL
SELECT
  '16-18 s' AS policy, ' ssssssssssstssscsh' AS _pass
UNION ALL
SELECT
  '2-7 z' AS policy, ' zzflfrtdx' AS _pass
UNION ALL
SELECT
  '4-10 v' AS policy, ' vvlsvvvvkrc' AS _pass
UNION ALL
SELECT
  '10-16 d' AS policy, ' ddddwddddbdgdddwd' AS _pass
UNION ALL
SELECT
  '3-4 v' AS policy, ' gkbqbtrv' AS _pass
UNION ALL
SELECT
  '3-4 h' AS policy, ' cjdqvwhhththvx' AS _pass
UNION ALL
SELECT
  '3-5 b' AS policy, ' bbbkbrb' AS _pass
UNION ALL
SELECT
  '3-5 m' AS policy, ' ptkqdgsmbcmmblwp' AS _pass
UNION ALL
SELECT
  '4-17 q' AS policy, ' mlqqgsqqqfqkcqqxqq' AS _pass
UNION ALL
SELECT
  '6-17 m' AS policy, ' mdvqvmmxlmzmvmmdm' AS _pass
UNION ALL
SELECT
  '1-3 r' AS policy, ' hrrtrrrrrrrrrwlr' AS _pass
UNION ALL
SELECT
  '3-5 j' AS policy, ' jjjjhj' AS _pass
UNION ALL
SELECT
  '11-12 q' AS policy, ' dqpqqqqqqnzlqq' AS _pass
UNION ALL
SELECT
  '8-11 d' AS policy, ' dddnddnddtdddd' AS _pass
UNION ALL
SELECT
  '3-16 d' AS policy, ' dpddxtlqsqldrpddq' AS _pass
UNION ALL
SELECT
  '7-13 z' AS policy, ' szhzmmzzzzmzzzz' AS _pass
UNION ALL
SELECT
  '6-18 h' AS policy, ' mkxxqtbnnjgnvxnhhhc' AS _pass
UNION ALL
SELECT
  '4-5 n' AS policy, ' nknfrhpn' AS _pass
UNION ALL
SELECT
  '16-17 d' AS policy, ' dddddddgdddddddddd' AS _pass
UNION ALL
SELECT
  '14-16 w' AS policy, ' wwwwwwwwwwwwwwwww' AS _pass
UNION ALL
SELECT
  '2-3 t' AS policy, ' rttfdstqpdtg' AS _pass
UNION ALL
SELECT
  '3-4 s' AS policy, ' gghrfxbfshqssj' AS _pass
UNION ALL
SELECT
  '1-9 j' AS policy, ' bjjjjjjjhjjj' AS _pass
UNION ALL
SELECT
  '1-2 p' AS policy, ' xmpgppppppp' AS _pass
UNION ALL
SELECT
  '9-14 k' AS policy, ' vqpxrkmskfpnxq' AS _pass
UNION ALL
SELECT
  '1-5 x' AS policy, ' xxxxx' AS _pass
UNION ALL
SELECT
  '1-14 p' AS policy, ' bsxnwvpkphdppphpkwp' AS _pass
UNION ALL
SELECT
  '5-12 d' AS policy, ' xdddmzddfddc' AS _pass
UNION ALL
SELECT
  '9-10 v' AS policy, ' gvvvvvgvhnvw' AS _pass
UNION ALL
SELECT
  '2-7 x' AS policy, ' xxxxxwgsvmqnkxv' AS _pass
UNION ALL
SELECT
  '3-15 c' AS policy, ' ccscccccwccccccc' AS _pass
UNION ALL
SELECT
  '5-8 w' AS policy, ' nsvgwzdf' AS _pass
UNION ALL
SELECT
  '7-14 w' AS policy, ' wwwwwwwwwwwfwswcw' AS _pass
UNION ALL
SELECT
  '5-10 r' AS policy, ' qrrlwcrrwz' AS _pass
UNION ALL
SELECT
  '7-12 f' AS policy, ' hfnphfpjffstff' AS _pass
UNION ALL
SELECT
  '2-6 h' AS policy, ' hqjhmph' AS _pass
UNION ALL
SELECT
  '3-13 x' AS policy, ' cpxxxzcrbjxxxb' AS _pass
UNION ALL
SELECT
  '4-8 k' AS policy, ' kkkkktkkkkfkf' AS _pass
UNION ALL
SELECT
  '7-10 g' AS policy, ' gggghghsgwf' AS _pass
UNION ALL
SELECT
  '8-9 s' AS policy, ' sswswssggss' AS _pass
UNION ALL
SELECT
  '6-10 l' AS policy, ' qlllljllhlll' AS _pass
UNION ALL
SELECT
  '8-11 c' AS policy, ' cccwccrbcbccc' AS _pass
UNION ALL
SELECT
  '5-6 x' AS policy, ' xxxxxxg' AS _pass
UNION ALL
SELECT
  '1-3 w' AS policy, ' cwpww' AS _pass
UNION ALL
SELECT
  '8-11 v' AS policy, ' vvvvvvvvvwvv' AS _pass
UNION ALL
SELECT
  '1-2 b' AS policy, ' bbgl' AS _pass
UNION ALL
SELECT
  '7-10 b' AS policy, ' zbkbcbbbsbb' AS _pass
UNION ALL
SELECT
  '13-15 t' AS policy, ' tttttgtttttttktttt' AS _pass
UNION ALL
SELECT
  '12-14 x' AS policy, ' xxxxxxxxxxxxxqf' AS _pass
UNION ALL
SELECT
  '6-7 k' AS policy, ' kmrkkwmk' AS _pass
UNION ALL
SELECT
  '4-5 m' AS policy, ' mmxjmdrhzkmxxphjmz' AS _pass
UNION ALL
SELECT
  '2-3 t' AS policy, ' tnvtndw' AS _pass
UNION ALL
SELECT
  '4-5 x' AS policy, ' xxtxxtxzf' AS _pass
UNION ALL
SELECT
  '1-3 m' AS policy, ' nwmglfscmwrjtzp' AS _pass
UNION ALL
SELECT
  '10-11 c' AS policy, ' cnccckcckcwdc' AS _pass
UNION ALL
SELECT
  '14-19 b' AS policy, ' tvbmrqtchwblbqbbqbb' AS _pass
UNION ALL
SELECT
  '9-10 x' AS policy, ' fxxxxxxxjxx' AS _pass
UNION ALL
SELECT
  '4-5 g' AS policy, ' gggggkggx' AS _pass
UNION ALL
SELECT
  '8-12 k' AS policy, ' kkkkkfkpkqkwkkk' AS _pass
UNION ALL
SELECT
  '2-6 v' AS policy, ' chpvkvt' AS _pass
UNION ALL
SELECT
  '4-10 r' AS policy, ' rmbjmcrgrrfrtmblhw' AS _pass
UNION ALL
SELECT
  '4-6 n' AS policy, ' rnnwtn' AS _pass
UNION ALL
SELECT
  '3-10 v' AS policy, ' htclcjhjkdv' AS _pass
UNION ALL
SELECT
  '10-13 w' AS policy, ' wwwhhwwwrwwzww' AS _pass
UNION ALL
SELECT
  '18-20 w' AS policy, ' wwwwwwjwwwwwwwwvwtww' AS _pass
UNION ALL
SELECT
  '7-8 w' AS policy, ' phrwbwwmc' AS _pass
UNION ALL
SELECT
  '16-17 q' AS policy, ' qqqqqqqqqqqqqqqqx' AS _pass
UNION ALL
SELECT
  '2-5 k' AS policy, ' kzknsxkkgtvmwlfrmrg' AS _pass
UNION ALL
SELECT
  '3-4 b' AS policy, ' zbbbb' AS _pass
UNION ALL
SELECT
  '5-8 v' AS policy, ' hfclvvpc' AS _pass
UNION ALL
SELECT
  '3-15 t' AS policy, ' ctfthpmgznjnhgtth' AS _pass
UNION ALL
SELECT
  '1-6 t' AS policy, ' httttq' AS _pass
UNION ALL
SELECT
  '5-6 w' AS policy, ' wwxhgww' AS _pass
UNION ALL
SELECT
  '3-5 m' AS policy, ' fmtnmmm' AS _pass
UNION ALL
SELECT
  '11-17 n' AS policy, ' xnnchnzpsmcslvzcn' AS _pass
UNION ALL
SELECT
  '5-6 m' AS policy, ' mmmmcm' AS _pass
UNION ALL
SELECT
  '1-7 r' AS policy, ' rwsgcgvjmtxwkqtr' AS _pass
UNION ALL
SELECT
  '6-16 m' AS policy, ' mmmmmmmmmmmqmmmmmm' AS _pass
UNION ALL
SELECT
  '5-10 s' AS policy, ' sssggssssjsssmsss' AS _pass
UNION ALL
SELECT
  '9-14 p' AS policy, ' ppfppzppnvmpqdvpp' AS _pass
UNION ALL
SELECT
  '2-4 l' AS policy, ' wclwrlrdvh' AS _pass
UNION ALL
SELECT
  '6-17 g' AS policy, ' gggmkglggwgpgkmglt' AS _pass
UNION ALL
SELECT
  '5-7 z' AS policy, ' zzzbzpz' AS _pass
UNION ALL
SELECT
  '4-5 q' AS policy, ' qbqqlzpqg' AS _pass
UNION ALL
SELECT
  '10-19 h' AS policy, ' hhhhhhhhhrhhqhhhhhhh' AS _pass
UNION ALL
SELECT
  '6-7 m' AS policy, ' nfnxmsmhtmhsmmmmgmsl' AS _pass
UNION ALL
SELECT
  '2-3 m' AS policy, ' mkfmmm' AS _pass
UNION ALL
SELECT
  '8-10 j' AS policy, ' xrjdnjjjnjjcjjjjjj' AS _pass
UNION ALL
SELECT
  '3-6 x' AS policy, ' xwrjxhjxx' AS _pass
UNION ALL
SELECT
  '6-7 z' AS policy, ' zzzzzzzg' AS _pass
UNION ALL
SELECT
  '8-17 k' AS policy, ' kkkkkkkkkkkkkkkkk' AS _pass
UNION ALL
SELECT
  '6-9 n' AS policy, ' rnnxnnbwnsnnwn' AS _pass
UNION ALL
SELECT
  '6-8 m' AS policy, ' mkmmmsmm' AS _pass
UNION ALL
SELECT
  '4-6 q' AS policy, ' qqfxqqq' AS _pass
UNION ALL
SELECT
  '2-8 s' AS policy, ' hxmfbkszk' AS _pass
UNION ALL
SELECT
  '6-7 r' AS policy, ' rrrrrrr' AS _pass
UNION ALL
SELECT
  '2-5 h' AS policy, ' hhqzhhhh' AS _pass
UNION ALL
SELECT
  '5-15 b' AS policy, ' bhbvnrbrbblbbhh' AS _pass
UNION ALL
SELECT
  '12-13 d' AS policy, ' ddddddtdddvhddd' AS _pass
UNION ALL
SELECT
  '5-6 f' AS policy, ' fmfcfwf' AS _pass
UNION ALL
SELECT
  '4-7 j' AS policy, ' njqfxjjjqjjvdj' AS _pass
UNION ALL
SELECT
  '6-9 g' AS policy, ' fggkggzgghrv' AS _pass
UNION ALL
SELECT
  '9-12 b' AS policy, ' vbblbxpfrbjbgpwxb' AS _pass
UNION ALL
SELECT
  '1-8 s' AS policy, ' tzcdrktsqjsxssfsssh' AS _pass
UNION ALL
SELECT
  '10-14 f' AS policy, ' fffffffffcffffffffff' AS _pass
UNION ALL
SELECT
  '13-17 p' AS policy, ' pqpppppcpbwpppnprppk' AS _pass
UNION ALL
SELECT
  '16-17 n' AS policy, ' nnnmnnnnnnnnnnnsj' AS _pass
UNION ALL
SELECT
  '10-16 k' AS policy, ' kkkkkkkkkkkkkkktk' AS _pass
UNION ALL
SELECT
  '8-11 w' AS policy, ' wwwwwwwwwwm' AS _pass
UNION ALL
SELECT
  '2-5 q' AS policy, ' qqqqqq' AS _pass
UNION ALL
SELECT
  '2-7 m' AS policy, ' mmmmmxg' AS _pass
UNION ALL
SELECT
  '2-9 m' AS policy, ' mmvlggdmr' AS _pass
UNION ALL
SELECT
  '3-9 s' AS policy, ' wxdbmlcrlpnzmkfdfs' AS _pass
UNION ALL
SELECT
  '12-16 z' AS policy, ' zlxzgznqqfzsqtwc' AS _pass
UNION ALL
SELECT
  '6-7 f' AS policy, ' flvmfffjffbmgfzfgfp' AS _pass
UNION ALL
SELECT
  '2-3 g' AS policy, ' cgggqgxqgv' AS _pass
UNION ALL
SELECT
  '2-3 f' AS policy, ' rffvf' AS _pass
UNION ALL
SELECT
  '1-8 h' AS policy, ' vhhhhhhvhhvhhhhf' AS _pass
UNION ALL
SELECT
  '6-12 x' AS policy, ' vzdxxxgxtxzxxxqc' AS _pass
UNION ALL
SELECT
  '4-5 w' AS policy, ' rwwwwww' AS _pass
UNION ALL
SELECT
  '7-10 r' AS policy, ' brwrcrrkcsj' AS _pass
UNION ALL
SELECT
  '6-10 q' AS policy, ' jvqqqqqqqmq' AS _pass
UNION ALL
SELECT
  '5-18 v' AS policy, ' lvhvvwvvvvvlvlvvmv' AS _pass
UNION ALL
SELECT
  '6-9 z' AS policy, ' zzvzcwlzslhlzqsf' AS _pass
UNION ALL
SELECT
  '3-6 x' AS policy, ' sdknfxvwtcfcjgmv' AS _pass
UNION ALL
SELECT
  '8-9 l' AS policy, ' lqcwlllsllll' AS _pass
UNION ALL
SELECT
  '1-4 k' AS policy, ' dgklv' AS _pass
UNION ALL
SELECT
  '2-6 q' AS policy, ' qqqptfqqqqq' AS _pass
UNION ALL
SELECT
  '4-7 m' AS policy, ' mrmcmmmm' AS _pass
UNION ALL
SELECT
  '4-5 r' AS policy, ' rrrblg' AS _pass
UNION ALL
SELECT
  '1-8 c' AS policy, ' qcccccvntc' AS _pass
UNION ALL
SELECT
  '6-7 m' AS policy, ' mzbxmmmnhmqcmmqvbmcp' AS _pass
UNION ALL
SELECT
  '2-4 t' AS policy, ' ptvqx' AS _pass
UNION ALL
SELECT
  '9-10 s' AS policy, ' gpssssssgss' AS _pass
UNION ALL
SELECT
  '4-18 b' AS policy, ' bbbbbbbbbbbbbbbbbfb' AS _pass
UNION ALL
SELECT
  '4-5 f' AS policy, ' ffffgf' AS _pass
UNION ALL
SELECT
  '3-6 l' AS policy, ' lslglw' AS _pass
UNION ALL
SELECT
  '1-5 l' AS policy, ' ltzlllsdlmrllkvbztvr' AS _pass
UNION ALL
SELECT
  '15-19 l' AS policy, ' llllllllllllllnllll' AS _pass
UNION ALL
SELECT
  '10-11 j' AS policy, ' jjjjpjjjjjncj' AS _pass
UNION ALL
SELECT
  '2-3 w' AS policy, ' wfwgd' AS _pass
UNION ALL
SELECT
  '1-7 r' AS policy, ' vrrrzrr' AS _pass
UNION ALL
SELECT
  '3-7 k' AS policy, ' kkkjckkkgkbtvm' AS _pass
UNION ALL
SELECT
  '9-12 k' AS policy, ' kkkkkrckcrkk' AS _pass
UNION ALL
SELECT
  '1-6 b' AS policy, ' hpbjbvb' AS _pass
UNION ALL
SELECT
  '6-8 s' AS policy, ' ssssssvss' AS _pass
UNION ALL
SELECT
  '2-4 x' AS policy, ' mpxk' AS _pass
UNION ALL
SELECT
  '6-10 x' AS policy, ' xxxmrwhgxxxjx' AS _pass
UNION ALL
SELECT
  '7-8 x' AS policy, ' xxphxxxxx' AS _pass
UNION ALL
SELECT
  '6-19 n' AS policy, ' mdrlnnpnjndqgnkfwnnn' AS _pass
UNION ALL
SELECT
  '2-5 q' AS policy, ' qjwtbmkhtnxm' AS _pass
UNION ALL
SELECT
  '15-17 j' AS policy, ' xjjjjjbjqjjjjjjqjjjw' AS _pass
UNION ALL
SELECT
  '5-7 x' AS policy, ' pxxxxsxxsxx' AS _pass
UNION ALL
SELECT
  '3-6 t' AS policy, ' ttttrp' AS _pass
UNION ALL
SELECT
  '8-11 f' AS policy, ' fffffffffrkzf' AS _pass
UNION ALL
SELECT
  '6-8 r' AS policy, ' glsprkbp' AS _pass
UNION ALL
SELECT
  '10-12 m' AS policy, ' mmmmmmmmmmmsm' AS _pass
UNION ALL
SELECT
  '13-14 z' AS policy, ' zzszzzszzbzzzplzzz' AS _pass
UNION ALL
SELECT
  '19-20 c' AS policy, ' ccccchwccccccccccncb' AS _pass
UNION ALL
SELECT
  '7-12 z' AS policy, ' qzggglzlhshnrwt' AS _pass
UNION ALL
SELECT
  '12-14 z' AS policy, ' zzzzzzzzhzzwzc' AS _pass
UNION ALL
SELECT
  '1-2 s' AS policy, ' sssl' AS _pass
UNION ALL
SELECT
  '1-3 q' AS policy, ' fsqmwq' AS _pass
UNION ALL
SELECT
  '1-6 z' AS policy, ' zmzztzkzznmflqffz' AS _pass
UNION ALL
SELECT
  '9-11 b' AS policy, ' bwbbjbbbtlbbn' AS _pass
UNION ALL
SELECT
  '4-6 s' AS policy, ' nktszz' AS _pass
UNION ALL
SELECT
  '2-5 j' AS policy, ' nqjhjkb' AS _pass
UNION ALL
SELECT
  '7-16 l' AS policy, ' lrlllllllmllswlsl' AS _pass
UNION ALL
SELECT
  '2-3 f' AS policy, ' fjqvfff' AS _pass
UNION ALL
SELECT
  '7-15 w' AS policy, ' hwxghddqwwwwwww' AS _pass
UNION ALL
SELECT
  '2-4 z' AS policy, ' zgzfx' AS _pass
UNION ALL
SELECT
  '5-6 h' AS policy, ' vhhjhthh' AS _pass
UNION ALL
SELECT
  '13-14 h' AS policy, ' hhhhhhfhhhhhhhphhhh' AS _pass
UNION ALL
SELECT
  '16-17 k' AS policy, ' kkkkkkkkkkkkkkknx' AS _pass
UNION ALL
SELECT
  '7-15 l' AS policy, ' dllllllmlllfllf' AS _pass
UNION ALL
SELECT
  '2-6 w' AS policy, ' mtkwwwww' AS _pass
UNION ALL
SELECT
  '2-7 k' AS policy, ' zpkkgldk' AS _pass
UNION ALL
SELECT
  '7-9 d' AS policy, ' htmtjddddddqvddcd' AS _pass
UNION ALL
SELECT
  '4-9 v' AS policy, ' rvfbbwzdwcvvqv' AS _pass
UNION ALL
SELECT
  '6-11 m' AS policy, ' mmvmbvmmmsmmlmmm' AS _pass
UNION ALL
SELECT
  '3-8 p' AS policy, ' xpxppsgpbxp' AS _pass
UNION ALL
SELECT
  '2-6 f' AS policy, ' vffbszhvvrdfkxc' AS _pass
UNION ALL
SELECT
  '8-11 v' AS policy, ' lvrrlvvqqvr' AS _pass
UNION ALL
SELECT
  '5-17 h' AS policy, ' hdhhbhhzhhhhhhsbl' AS _pass
UNION ALL
SELECT
  '8-10 f' AS policy, ' fhgffgfrfqtf' AS _pass
UNION ALL
SELECT
  '9-12 s' AS policy, ' ssssfssdpssswf' AS _pass
UNION ALL
SELECT
  '9-12 m' AS policy, ' mmmmmmmmpzgmmm' AS _pass
UNION ALL
SELECT
  '7-9 l' AS policy, ' zlmllvwlllldl' AS _pass
UNION ALL
SELECT
  '8-11 m' AS policy, ' mmdmfmmdxbmxbmm' AS _pass
UNION ALL
SELECT
  '1-4 m' AS policy, ' fklssmffwzgqcvdpm' AS _pass
UNION ALL
SELECT
  '13-14 c' AS policy, ' cczcccccccccccc' AS _pass
UNION ALL
SELECT
  '5-9 f' AS policy, ' frtkfpffsfff' AS _pass
UNION ALL
SELECT
  '5-8 f' AS policy, ' ffffgffr' AS _pass
UNION ALL
SELECT
  '3-8 m' AS policy, ' mmxsmmmb' AS _pass
UNION ALL
SELECT
  '1-6 m' AS policy, ' mdmmmm' AS _pass
UNION ALL
SELECT
  '1-2 h' AS policy, ' hhdtmhwfpt' AS _pass
UNION ALL
SELECT
  '4-14 d' AS policy, ' dmrkdvddmdsdddbsgd' AS _pass
UNION ALL
SELECT
  '6-7 c' AS policy, ' cxccgcccc' AS _pass
UNION ALL
SELECT
  '6-12 v' AS policy, ' xcqvjvvsdvvvpv' AS _pass
UNION ALL
SELECT
  '11-14 d' AS policy, ' gltkjvddwjdkrln' AS _pass
UNION ALL
SELECT
  '2-13 f' AS policy, ' ggffllflfbfffqkfmf' AS _pass
UNION ALL
SELECT
  '10-13 c' AS policy, ' xkvcccccrmccccc' AS _pass
UNION ALL
SELECT
  '17-19 q' AS policy, ' qqsqqqqqqqqqqqqqfqmq' AS _pass
UNION ALL
SELECT
  '8-10 t' AS policy, ' ttttlttwtlt' AS _pass
UNION ALL
SELECT
  '4-5 f' AS policy, ' wffrd' AS _pass
UNION ALL
SELECT
  '2-16 v' AS policy, ' tvhvvqvrvvvvvvqvvf' AS _pass
UNION ALL
SELECT
  '2-4 c' AS policy, ' cccc' AS _pass
UNION ALL
SELECT
  '3-8 z' AS policy, ' zrzzpzlzzhsdxqqfx' AS _pass
UNION ALL
SELECT
  '6-10 k' AS policy, ' kkkkkkkkkk' AS _pass
UNION ALL
SELECT
  '5-7 r' AS policy, ' rvrrvrz' AS _pass
UNION ALL
SELECT
  '14-15 w' AS policy, ' wwwwwwwlwwwwncwvwjk' AS _pass
UNION ALL
SELECT
  '6-11 q' AS policy, ' qfhxqqgqqqsvcpr' AS _pass
UNION ALL
SELECT
  '4-7 f' AS policy, ' kflfffzff' AS _pass
UNION ALL
SELECT
  '2-14 t' AS policy, ' rtttttptlxsttt' AS _pass
UNION ALL
SELECT
  '11-15 t' AS policy, ' ttttttttttftbvqttt' AS _pass
UNION ALL
SELECT
  '6-10 c' AS policy, ' cckwlchltchcczgw' AS _pass
UNION ALL
SELECT
  '3-8 s' AS policy, ' ssssvsqnss' AS _pass
UNION ALL
SELECT
  '1-8 h' AS policy, ' mhhhhrhhh' AS _pass
UNION ALL
SELECT
  '13-15 b' AS policy, ' bbbbbbbbbbbbbbnb' AS _pass
UNION ALL
SELECT
  '15-17 p' AS policy, ' dpppppppppspppcps' AS _pass
UNION ALL
SELECT
  '5-12 l' AS policy, ' xbfjglklphtl' AS _pass
UNION ALL
SELECT
  '2-4 v' AS policy, ' vvvvbvwpvvvrv' AS _pass
UNION ALL
SELECT
  '3-5 k' AS policy, ' plhjkkqkskz' AS _pass
UNION ALL
SELECT
  '6-12 z' AS policy, ' zzzzzczzzzzk' AS _pass
UNION ALL
SELECT
  '2-3 j' AS policy, ' xvjljj' AS _pass
UNION ALL
SELECT
  '6-7 r' AS policy, ' rlrrrrrrzrrzrrr' AS _pass
UNION ALL
SELECT
  '1-12 t' AS policy, ' mqrkgpktbsqxg' AS _pass
UNION ALL
SELECT
  '10-13 z' AS policy, ' pzmzzxpnzxpgzzzhzz' AS _pass
UNION ALL
SELECT
  '5-13 s' AS policy, ' gslsskvgxssssnpj' AS _pass
UNION ALL
SELECT
  '10-14 m' AS policy, ' mmmmmmsmmmmmmk' AS _pass
UNION ALL
SELECT
  '2-5 b' AS policy, ' tnbdsfwdzxrkjdb' AS _pass
UNION ALL
SELECT
  '2-15 h' AS policy, ' hnxhzhmhhhhhwwb' AS _pass
UNION ALL
SELECT
  '1-4 c' AS policy, ' ccccccc' AS _pass
UNION ALL
SELECT
  '9-10 b' AS policy, ' bbbbbbbbbl' AS _pass
UNION ALL
SELECT
  '4-5 j' AS policy, ' jsjjj' AS _pass
UNION ALL
SELECT
  '3-6 n' AS policy, ' xmmnppbn' AS _pass
UNION ALL
SELECT
  '11-12 m' AS policy, ' mmmmmmmmmmmm' AS _pass
UNION ALL
SELECT
  '2-4 r' AS policy, ' jrgrcpvgctrrr' AS _pass
UNION ALL
SELECT
  '3-4 g' AS policy, ' gggr' AS _pass
UNION ALL
SELECT
  '14-17 n' AS policy, ' nhnpnnnnznnnnnnnknnm' AS _pass
UNION ALL
SELECT
  '4-5 k' AS policy, ' krkkf' AS _pass
UNION ALL
SELECT
  '11-17 h' AS policy, ' hhdhhhhhhhhghhkhx' AS _pass
UNION ALL
SELECT
  '5-19 q' AS policy, ' dqbcqqqqsqqzqqqqqqv' AS _pass
UNION ALL
SELECT
  '5-16 t' AS policy, ' ttrkttttstwttttqdt' AS _pass
UNION ALL
SELECT
  '11-18 h' AS policy, ' dhhhhhhhhjhtjhhhhhh' AS _pass
UNION ALL
SELECT
  '5-8 c' AS policy, ' ccccrccfc' AS _pass
UNION ALL
SELECT
  '1-3 v' AS policy, ' nvvnv' AS _pass
UNION ALL
SELECT
  '7-12 m' AS policy, ' prmmzmtmmmssdmmmmt' AS _pass
UNION ALL
SELECT
  '15-16 r' AS policy, ' rrrrrrrrrrrrrqfr' AS _pass
UNION ALL
SELECT
  '7-19 b' AS policy, ' djbbbbqjbdtbslbgbbmb' AS _pass
UNION ALL
SELECT
  '10-13 w' AS policy, ' wwwwwwwwwwwwww' AS _pass
UNION ALL
SELECT
  '5-15 p' AS policy, ' mbpcjqmmhpppkfmrbcww' AS _pass
UNION ALL
SELECT
  '2-4 n' AS policy, ' nxbjknms' AS _pass
UNION ALL
SELECT
  '5-11 s' AS policy, ' hxhcsldmxshdksvsss' AS _pass
UNION ALL
SELECT
  '12-16 q' AS policy, ' qqqqqqqpqcdqqtwkqvq' AS _pass
UNION ALL
SELECT
  '2-7 j' AS policy, ' tjlpcjjjjnj' AS _pass
UNION ALL
SELECT
  '6-7 s' AS policy, ' ssssskm' AS _pass
UNION ALL
SELECT
  '1-4 t' AS policy, ' tttttx' AS _pass
UNION ALL
SELECT
  '5-10 q' AS policy, ' pqmnqrlqchbjzqqvq' AS _pass
UNION ALL
SELECT
  '11-15 q' AS policy, ' qqqqqqqqqqhqrqqrqq' AS _pass
UNION ALL
SELECT
  '3-5 k' AS policy, ' jhkgkxkqfskg' AS _pass
UNION ALL
SELECT
  '14-15 f' AS policy, ' ffvffmfffffffsffqm' AS _pass
UNION ALL
SELECT
  '4-5 x' AS policy, ' xxfxhfxx' AS _pass
UNION ALL
SELECT
  '2-4 b' AS policy, ' ktbv' AS _pass
UNION ALL
SELECT
  '3-4 t' AS policy, ' wjtwxvxctrcttb' AS _pass
UNION ALL
SELECT
  '1-3 s' AS policy, ' shssg' AS _pass
UNION ALL
SELECT
  '8-12 z' AS policy, ' skkzbdpzdkzzz' AS _pass
UNION ALL
SELECT
  '1-3 f' AS policy, ' rlfffqft' AS _pass
UNION ALL
SELECT
  '5-8 s' AS policy, ' fsrcnjsgsmgs' AS _pass
UNION ALL
SELECT
  '7-17 v' AS policy, ' vvvvvvvvvvvvvvvvvvv' AS _pass
UNION ALL
SELECT
  '4-5 k' AS policy, ' kklmq' AS _pass
UNION ALL
SELECT
  '8-17 h' AS policy, ' hhhhhlvghwkhrfzhxh' AS _pass
UNION ALL
SELECT
  '17-18 n' AS policy, ' nnnnnnnnnnnnnnnnnn' AS _pass
UNION ALL
SELECT
  '3-10 h' AS policy, ' mhhhhrhznwvhh' AS _pass
UNION ALL
SELECT
  '8-9 x' AS policy, ' xmxxxxxxx' AS _pass
UNION ALL
SELECT
  '4-5 p' AS policy, ' ppppk' AS _pass
UNION ALL
SELECT
  '11-13 t' AS policy, ' tttttttttttjtcn' AS _pass
UNION ALL
SELECT
  '3-4 q' AS policy, ' qqvhz' AS _pass
UNION ALL
SELECT
  '3-8 l' AS policy, ' gbpqclnkwlhdlml' AS _pass
UNION ALL
SELECT
  '12-13 f' AS policy, ' fffffffffffrf' AS _pass
UNION ALL
SELECT
  '3-11 s' AS policy, ' ssjssssssslssss' AS _pass
UNION ALL
SELECT
  '6-7 b' AS policy, ' bbbbbwbb' AS _pass
UNION ALL
SELECT
  '7-9 r' AS policy, ' krrrrrfrj' AS _pass
UNION ALL
SELECT
  '13-14 b' AS policy, ' bbbbbbbbbvbbbp' AS _pass
UNION ALL
SELECT
  '2-4 x' AS policy, ' ltgbx' AS _pass
UNION ALL
SELECT
  '7-10 r' AS policy, ' smrrrrkjrrr' AS _pass
UNION ALL
SELECT
  '3-7 n' AS policy, ' vnqpngjdgrw' AS _pass
UNION ALL
SELECT
  '7-18 t' AS policy, ' ttltqtsktrjgxtqhtt' AS _pass
UNION ALL
SELECT
  '2-5 v' AS policy, ' dvvxbvvvnk' AS _pass
UNION ALL
SELECT
  '2-5 n' AS policy, ' nnnnnpn' AS _pass
UNION ALL
SELECT
  '1-3 t' AS policy, ' nttmtx' AS _pass
UNION ALL
SELECT
  '3-4 z' AS policy, ' zpszz' AS _pass
UNION ALL
SELECT
  '1-12 p' AS policy, ' pmpxphlpppppppqppp' AS _pass
UNION ALL
SELECT
  '3-4 v' AS policy, ' qvvvvvv' AS _pass
UNION ALL
SELECT
  '9-12 g' AS policy, ' gwgggggggtgqgg' AS _pass
UNION ALL
SELECT
  '2-4 n' AS policy, ' knpn' AS _pass
UNION ALL
SELECT
  '3-13 d' AS policy, ' hncbdrvpddddcfddd' AS _pass
UNION ALL
SELECT
  '5-9 s' AS policy, ' ssnspslslsfkpskss' AS _pass
UNION ALL
SELECT
  '1-2 s' AS policy, ' ssczgkvtlp' AS _pass
UNION ALL
SELECT
  '5-6 p' AS policy, ' pmvpzpppkm' AS _pass
UNION ALL
SELECT
  '1-4 j' AS policy, ' jjhr' AS _pass
UNION ALL
SELECT
  '5-6 s' AS policy, ' ssssxl' AS _pass
UNION ALL
SELECT
  '1-3 t' AS policy, ' ttrt' AS _pass
UNION ALL
SELECT
  '16-18 n' AS policy, ' nnpnnnnnnnnnnnnnnnn' AS _pass
UNION ALL
SELECT
  '4-5 n' AS policy, ' nnfnl' AS _pass
UNION ALL
SELECT
  '1-4 b' AS policy, ' bbbb' AS _pass
UNION ALL
SELECT
  '7-8 l' AS policy, ' nljlllkhl' AS _pass
UNION ALL
SELECT
  '11-12 n' AS policy, ' nnnnnsnnnnnnnpn' AS _pass
UNION ALL
SELECT
  '5-10 k' AS policy, ' kkkkckkkkhkkkkk' AS _pass
UNION ALL
SELECT
  '7-10 s' AS policy, ' zfsssfldxsvqsxdsqs' AS _pass
UNION ALL
SELECT
  '5-6 q' AS policy, ' qqqqqp' AS _pass
UNION ALL
SELECT
  '6-7 q' AS policy, ' qqqqqqq' AS _pass
UNION ALL
SELECT
  '14-16 w' AS policy, ' wwdhmwwjwwwwnwwlwwwv' AS _pass
UNION ALL
SELECT
  '8-9 l' AS policy, ' llllllldll' AS _pass
UNION ALL
SELECT
  '12-14 c' AS policy, ' ccrccccccccrcccccccc' AS _pass
UNION ALL
SELECT
  '1-3 n' AS policy, ' qnwnh' AS _pass
UNION ALL
SELECT
  '1-4 l' AS policy, ' mlll' AS _pass
UNION ALL
SELECT
  '1-3 s' AS policy, ' sssssss' AS _pass
UNION ALL
SELECT
  '4-15 h' AS policy, ' mhclhhhjllhhhgh' AS _pass
UNION ALL
SELECT
  '15-16 x' AS policy, ' xxxxxxtxxxxxtxttxx' AS _pass
UNION ALL
SELECT
  '2-4 r' AS policy, ' rmjh' AS _pass
UNION ALL
SELECT
  '6-9 z' AS policy, ' zzzzzpszt' AS _pass
UNION ALL
SELECT
  '17-18 n' AS policy, ' nnwnnnnnnnnnnnnnppnn' AS _pass
UNION ALL
SELECT
  '8-11 v' AS policy, ' vmvmvlvbvvvvv' AS _pass
UNION ALL
SELECT
  '7-8 b' AS policy, ' bbbbbbdf' AS _pass
UNION ALL
SELECT
  '2-5 k' AS policy, ' kkdkk' AS _pass
UNION ALL
SELECT
  '8-9 d' AS policy, ' dddsldddvxlhd' AS _pass
UNION ALL
SELECT
  '7-8 h' AS policy, ' hhhhkhxshxhn' AS _pass
UNION ALL
SELECT
  '12-14 c' AS policy, ' vcchpxcnmgkctpqcc' AS _pass
UNION ALL
SELECT
  '1-5 w' AS policy, ' wwwwww' AS _pass
UNION ALL
SELECT
  '1-2 x' AS policy, ' xdmk' AS _pass
UNION ALL
SELECT
  '1-9 p' AS policy, ' pbfvrdpqqn' AS _pass
UNION ALL
SELECT
  '2-4 s' AS policy, ' mtnvzhnzs' AS _pass
UNION ALL
SELECT
  '4-6 t' AS policy, ' cttxvtttx' AS _pass
UNION ALL
SELECT
  '4-8 t' AS policy, ' qttmtzttkwftrjk' AS _pass
UNION ALL
SELECT
  '7-9 c' AS policy, ' cccccccccc' AS _pass
UNION ALL
SELECT
  '2-18 j' AS policy, ' zjjqxjfqqlmjrjhjqx' AS _pass
UNION ALL
SELECT
  '2-5 q' AS policy, ' qmkqgq' AS _pass
UNION ALL
SELECT
  '5-11 k' AS policy, ' kkkkkkslzkkkkkrx' AS _pass
UNION ALL
SELECT
  '16-18 h' AS policy, ' hhhhhhhhhqhthhhvhh' AS _pass
UNION ALL
SELECT
  '5-13 h' AS policy, ' hhfhhhhhmhhshhhhhhh' AS _pass
UNION ALL
SELECT
  '10-12 r' AS policy, ' rkrrrrrmrrrrrr' AS _pass
UNION ALL
SELECT
  '8-10 n' AS policy, ' rnnckhmjnxmfggsgtnnn' AS _pass
UNION ALL
SELECT
  '19-20 c' AS policy, ' qsccznccccccnccccccq' AS _pass
UNION ALL
SELECT
  '1-4 k' AS policy, ' wtkck' AS _pass
UNION ALL
SELECT
  '7-8 s' AS policy, ' sssmssjssss' AS _pass
UNION ALL
SELECT
  '3-5 l' AS policy, ' llslv' AS _pass
UNION ALL
SELECT
  '3-7 t' AS policy, ' tvgjqgjbvtgpkt' AS _pass
UNION ALL
SELECT
  '13-15 b' AS policy, ' bbbbbbbbqbblrbbb' AS _pass
UNION ALL
SELECT
  '9-10 z' AS policy, ' zzzzzznzzb' AS _pass
UNION ALL
SELECT
  '6-16 c' AS policy, ' kpcnsccgccxfwccl' AS _pass
UNION ALL
SELECT
  '2-3 d' AS policy, ' ddbd' AS _pass
UNION ALL
SELECT
  '10-16 v' AS policy, ' vvvvqrvvsvvvvvvl' AS _pass
UNION ALL
SELECT
  '3-12 d' AS policy, ' dzdxxhddnlkddddk' AS _pass
UNION ALL
SELECT
  '8-9 b' AS policy, ' khbbbfbbbbb' AS _pass
UNION ALL
SELECT
  '11-12 z' AS policy, ' zzzzzzzzzzzz' AS _pass
UNION ALL
SELECT
  '5-15 n' AS policy, ' bnlvnnrjbnqlnnn' AS _pass
UNION ALL
SELECT
  '1-2 q' AS policy, ' mqqpzjc' AS _pass
UNION ALL
SELECT
  '11-13 h' AS policy, ' hhhhhhchhhhjhh' AS _pass
UNION ALL
SELECT
  '8-11 x' AS policy, ' nxfcxbjqxdlcxxxkxxx' AS _pass
UNION ALL
SELECT
  '14-18 v' AS policy, ' vvbqvvvvvvvvvvvvvvvv' AS _pass
UNION ALL
SELECT
  '7-8 f' AS policy, ' pgtlfffmjffnt' AS _pass
UNION ALL
SELECT
  '10-18 m' AS policy, ' mnkrmmmmmqmmmmmmmjm' AS _pass
UNION ALL
SELECT
  '1-4 l' AS policy, ' lghlhcnwprlgvw' AS _pass
UNION ALL
SELECT
  '3-4 p' AS policy, ' npxplpwl' AS _pass
UNION ALL
SELECT
  '12-15 s' AS policy, ' sfkwnvsssvssssfsssrp' AS _pass
UNION ALL
SELECT
  '3-7 z' AS policy, ' ztqnzlxjmzzbjfnxcw' AS _pass
UNION ALL
SELECT
  '17-18 q' AS policy, ' qqqqqqqqqqqqqqqqqq' AS _pass
UNION ALL
SELECT
  '3-6 z' AS policy, ' jczztzzbhmzzw' AS _pass
UNION ALL
SELECT
  '3-7 f' AS policy, ' skffttjffqfnchfrf' AS _pass
UNION ALL
SELECT
  '4-6 m' AS policy, ' hmqmcrmw' AS _pass
UNION ALL
SELECT
  '10-11 t' AS policy, ' dftttqttttttl' AS _pass
UNION ALL
SELECT
  '7-13 p' AS policy, ' spxnpgtzpppjpwppptp' AS _pass
UNION ALL
SELECT
  '8-9 q' AS policy, ' jqxqqqqxqq' AS _pass
UNION ALL
SELECT
  '3-4 h' AS policy, ' hhhh' AS _pass
UNION ALL
SELECT
  '10-13 z' AS policy, ' pgzxhxxpzzssj' AS _pass
UNION ALL
SELECT
  '5-9 x' AS policy, ' xfrdmjxmrxrqjpxbfxxx' AS _pass
UNION ALL
SELECT
  '8-17 d' AS policy, ' ddpddddddddsgddzddn' AS _pass
UNION ALL
SELECT
  '1-4 g' AS policy, ' vggdggggggggggggggg' AS _pass
UNION ALL
SELECT
  '10-12 m' AS policy, ' mmdqsmwvjjmv' AS _pass
UNION ALL
SELECT
  '2-7 s' AS policy, ' ssqsssk' AS _pass
UNION ALL
SELECT
  '13-14 n' AS policy, ' nnvnnnnnnnnnsgnn' AS _pass
UNION ALL
SELECT
  '2-16 k' AS policy, ' kkkkkkkkkkknkkkk' AS _pass
UNION ALL
SELECT
  '3-6 p' AS policy, ' dprphc' AS _pass
UNION ALL
SELECT
  '2-10 k' AS policy, ' mpkstkxkdb' AS _pass
UNION ALL
SELECT
  '2-3 s' AS policy, ' ssxs' AS _pass
UNION ALL
SELECT
  '9-19 t' AS policy, ' ttjttjttrtsqtmttttt' AS _pass
UNION ALL
SELECT
  '4-5 j' AS policy, ' jrjjtsjjd' AS _pass
UNION ALL
SELECT
  '6-7 x' AS policy, ' xxxpxjx' AS _pass
UNION ALL
SELECT
  '13-15 q' AS policy, ' fqfqqqqhqcqfqqbqqq' AS _pass
UNION ALL
SELECT
  '1-3 z' AS policy, ' zfgrzl' AS _pass
UNION ALL
SELECT
  '6-8 n' AS policy, ' nnnnnphm' AS _pass
UNION ALL
SELECT
  '1-8 b' AS policy, ' bbbbbbbbb' AS _pass
UNION ALL
SELECT
  '4-5 h' AS policy, ' thhgj' AS _pass
UNION ALL
SELECT
  '4-8 v' AS policy, ' vvvcvvvp' AS _pass
UNION ALL
SELECT
  '8-9 t' AS policy, ' ktttttttt' AS _pass
UNION ALL
SELECT
  '3-4 f' AS policy, ' wftbcfnmhkfdpjbns' AS _pass
UNION ALL
SELECT
  '6-7 v' AS policy, ' vvvvvlv' AS _pass
UNION ALL
SELECT
  '16-17 z' AS policy, ' zzzzhfzzzzzzkzzzwzzz' AS _pass
UNION ALL
SELECT
  '1-2 q' AS policy, ' qqqfq' AS _pass
UNION ALL
SELECT
  '10-11 p' AS policy, ' zpjzcppvcppppppppj' AS _pass
UNION ALL
SELECT
  '10-15 c' AS policy, ' vlccbcgcclcczfcfcc' AS _pass
UNION ALL
SELECT
  '11-17 t' AS policy, ' tsntktwzhsfttfwtx' AS _pass
UNION ALL
SELECT
  '1-7 h' AS policy, ' nhhhhhb' AS _pass
UNION ALL
SELECT
  '6-13 b' AS policy, ' bbbphnbbwbbbb' AS _pass
UNION ALL
SELECT
  '8-9 x' AS policy, ' xgxxxlxfxx' AS _pass
UNION ALL
SELECT
  '14-16 m' AS policy, ' mmmmmmmmmmmmmmmm' AS _pass
UNION ALL
SELECT
  '3-4 x' AS policy, ' xxbxx' AS _pass
UNION ALL
SELECT
  '6-9 c' AS policy, ' xkccsfccrccv' AS _pass
UNION ALL
SELECT
  '10-18 h' AS policy, ' jphhbshwghrxpnhnlhxh' AS _pass
UNION ALL
SELECT
  '6-10 f' AS policy, ' nlxbgvftfh' AS _pass
UNION ALL
SELECT
  '3-4 p' AS policy, ' ppwf' AS _pass
UNION ALL
SELECT
  '1-6 s' AS policy, ' kjwjwshcnqwxgwslvl' AS _pass
UNION ALL
SELECT
  '2-3 m' AS policy, ' mmlk' AS _pass
UNION ALL
SELECT
  '2-3 g' AS policy, ' gmgg' AS _pass
UNION ALL
SELECT
  '3-6 r' AS policy, ' rrrvrmr' AS _pass
UNION ALL
SELECT
  '1-6 s' AS policy, ' szgpksczqd' AS _pass
UNION ALL
SELECT
  '12-14 t' AS policy, ' ttttttpjvtqwtltt' AS _pass
UNION ALL
SELECT
  '1-2 r' AS policy, ' hrrrrvrrzj' AS _pass
UNION ALL
SELECT
  '1-13 m' AS policy, ' xmmmmmsmmmcsnmmmmfmm' AS _pass
UNION ALL
SELECT
  '10-11 f' AS policy, ' fffffffffsf' AS _pass
UNION ALL
SELECT
  '13-15 d' AS policy, ' ddddddddddddhdq' AS _pass
UNION ALL
SELECT
  '7-14 k' AS policy, ' jkkkkkkkrkmkkkk' AS _pass
UNION ALL
SELECT
  '6-9 g' AS policy, ' ggggggggg' AS _pass
UNION ALL
SELECT
  '14-16 l' AS policy, ' lllllllvlllllwtx' AS _pass
UNION ALL
SELECT
  '1-3 g' AS policy, ' ggggt' AS _pass
UNION ALL
SELECT
  '3-4 m' AS policy, ' mmkd' AS _pass
UNION ALL
SELECT
  '5-10 g' AS policy, ' jgsgvggwggj' AS _pass
UNION ALL
SELECT
  '17-18 p' AS policy, ' ppppppppppppppphpp' AS _pass
UNION ALL
SELECT
  '1-2 q' AS policy, ' qqjwhq' AS _pass
UNION ALL
SELECT
  '2-6 q' AS policy, ' qqgqqzk' AS _pass
UNION ALL
SELECT
  '11-16 t' AS policy, ' ttwttttttctttthgt' AS _pass
UNION ALL
SELECT
  '1-5 m' AS policy, ' zmmmsm' AS _pass
UNION ALL
SELECT
  '12-16 r' AS policy, ' rrrrrrrrrqrgrrrj' AS _pass
UNION ALL
SELECT
  '4-5 v' AS policy, ' xcvvghvrczpcgn' AS _pass
UNION ALL
SELECT
  '1-3 x' AS policy, ' xbfmxxfxxf' AS _pass
UNION ALL
SELECT
  '3-5 j' AS policy, ' hjbjm' AS _pass
UNION ALL
SELECT
  '5-14 l' AS policy, ' lllltlllllqllll' AS _pass
UNION ALL
SELECT
  '3-4 x' AS policy, ' xsxnxgtx' AS _pass
UNION ALL
SELECT
  '6-18 g' AS policy, ' gggggggggggggggggd' AS _pass
UNION ALL
SELECT
  '8-12 t' AS policy, ' tgttttqtcttttt' AS _pass
UNION ALL
SELECT
  '4-6 p' AS policy, ' pppppd' AS _pass
UNION ALL
SELECT
  '6-7 x' AS policy, ' xxxxxxx' AS _pass
UNION ALL
SELECT
  '3-4 c' AS policy, ' fdcclrccccvg' AS _pass
UNION ALL
SELECT
  '11-12 v' AS policy, ' vnvvvvzdvcrk' AS _pass
UNION ALL
SELECT
  '1-9 z' AS policy, ' zztzqzzzzcz' AS _pass
UNION ALL
SELECT
  '1-12 v' AS policy, ' vmvvvvvvvvvmvvvv' AS _pass
UNION ALL
SELECT
  '9-16 v' AS policy, ' vvvvvvvvvvvvvvvf' AS _pass
UNION ALL
SELECT
  '2-7 h' AS policy, ' xhtsfmvthhhrhdhhbbc' AS _pass
UNION ALL
SELECT
  '5-6 c' AS policy, ' qkccccd' AS _pass
UNION ALL
SELECT
  '8-12 z' AS policy, ' zzzzzzzjzzhbzz' AS _pass
UNION ALL
SELECT
  '2-4 n' AS policy, ' shlnnkxn' AS _pass
UNION ALL
SELECT
  '19-20 v' AS policy, ' vvvvvvvvvvvvvvvvvvcv' AS _pass
UNION ALL
SELECT
  '7-8 h' AS policy, ' hhkhhhkhh' AS _pass
UNION ALL
SELECT
  '5-19 p' AS policy, ' sxslgwvkszswqxtqpvf' AS _pass
UNION ALL
SELECT
  '5-8 m' AS policy, ' mmmmmrmbm' AS _pass
UNION ALL
SELECT
  '2-5 j' AS policy, ' jrnjjzjfhjdkjqjtkwk' AS _pass
UNION ALL
SELECT
  '7-13 f' AS policy, ' ffffffsfffffwfff' AS _pass
UNION ALL
SELECT
  '6-9 w' AS policy, ' wmwwdwwwsz' AS _pass
UNION ALL
SELECT
  '12-15 f' AS policy, ' nsffpfsdsjsfsffk' AS _pass
UNION ALL
SELECT
  '13-16 k' AS policy, ' kkkkkkkkkkkkkkhw' AS _pass
UNION ALL
SELECT
  '6-17 s' AS policy, ' ssssslssssssssssss' AS _pass
UNION ALL
SELECT
  '3-5 c' AS policy, ' srdscnncclqqcncsw' AS _pass
UNION ALL
SELECT
  '9-11 p' AS policy, ' pkppppppppp' AS _pass
UNION ALL
SELECT
  '5-10 q' AS policy, ' qqqqqqqqqpqq' AS _pass
UNION ALL
SELECT
  '12-14 n' AS policy, ' nnnnnnnnnnnnnn' AS _pass
UNION ALL
SELECT
  '6-11 h' AS policy, ' hhhhhqhhhhhvhhhh' AS _pass
UNION ALL
SELECT
  '2-12 f' AS policy, ' fgfrpzcstfffffxff' AS _pass
UNION ALL
SELECT
  '2-12 n' AS policy, ' nnxmnmnnnnknrpmnv' AS _pass
UNION ALL
SELECT
  '6-7 m' AS policy, ' jmmmmcnpkm' AS _pass
UNION ALL
SELECT
  '4-6 v' AS policy, ' mvkcwvmvvjvrvlv' AS _pass
UNION ALL
SELECT
  '18-20 h' AS policy, ' hhrmbrhhhhlhhvhmhhhb' AS _pass
UNION ALL
SELECT
  '9-13 g' AS policy, ' ggggggzgggsgfgxg' AS _pass
UNION ALL
SELECT
  '9-15 m' AS policy, ' pmmxmmmmmmmmmmm' AS _pass
UNION ALL
SELECT
  '1-7 l' AS policy, ' zlmsmlxpvvlzv' AS _pass
UNION ALL
SELECT
  '2-15 g' AS policy, ' sslggkdglqgxpgkx' AS _pass
UNION ALL
SELECT
  '17-18 c' AS policy, ' ccccccccccccccccmc' AS _pass
UNION ALL
SELECT
  '10-11 w' AS policy, ' wwwwwpcwwwpwwd' AS _pass
UNION ALL
SELECT
  '3-5 w' AS policy, ' wwwwk' AS _pass
UNION ALL
SELECT
  '8-9 f' AS policy, ' vfbvffsfcf' AS _pass
UNION ALL
SELECT
  '4-6 r' AS policy, ' rrrrrr' AS _pass
UNION ALL
SELECT
  '2-4 n' AS policy, ' nrnknn' AS _pass
UNION ALL
SELECT
  '1-4 l' AS policy, ' lxllllll' AS _pass
UNION ALL
SELECT
  '10-11 f' AS policy, ' qdfwvfffdfvwffgfkfgf' AS _pass
UNION ALL
SELECT
  '3-4 b' AS policy, ' xgxbdqxbfvzrl' AS _pass
UNION ALL
SELECT
  '2-8 b' AS policy, ' pbbkbbgbxr' AS _pass
UNION ALL
SELECT
  '1-2 d' AS policy, ' ddxdnv' AS _pass
UNION ALL
SELECT
  '4-8 d' AS policy, ' dndfcnhd' AS _pass
 ;;
sql_trigger_value: SELECT 1 ;;
  }

  dimension: pk {
    primary_key: yes
    type: string
    sql: CONCAT(${policy},${pass}) ;;
  }

  dimension: policy {
    type: string
    sql: ${TABLE}.policy ;;
  }

  dimension: pass {
    type: string
    sql: TRIM(${TABLE}._pass) ;;
  }
}



#Part Two: Once you've completed the first part, submit your work at https://adventofcode.com/2020/day/2 and get Part 2.
