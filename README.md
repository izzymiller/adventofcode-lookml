# Advent of LookML (and SQL) ((and table calcs))
**PSA: You won't get the latest activity lookml each day if you do not pull from production in your dev mode**

I'm following along with the [Advent Of Code 2020](https://adventofcode.com/2020) in Looker!

I'll try and keep the production version of this project updated with each day's activity and data instructions/examples by 11am Pacific, but I might not always make it fast enough— Feel free to start in on new days yourself. Before pinging me, **make sure you've pulled from production**!

There is *example* data for each day in a public BigQuery sandbox (Standard SQL). Each day's data (once I've uploaded it) will be available at `lookerdata.adventofcode20.<daynumber>`.
**HOWEVER: Each user's data is different. When you click "Get Input" on the advent of code activity, you will get a different dataset than I will. Hence, each day's view file has a set of *instructions* on how to load the days input into Looker, usually using a nifty tool called [csv-sql](https://csv-sql.web.app/). Make sure to read those instructions, they're helpful.**

## How to participate

The [adventofcode project](https://explorersguild.cloud.looker.com/projects/adventofcode/files/README.md) contains a model `advent` and view files for each day. Note that the view file names are numeric but the actual view name is the string (ie: `1.view` contains `view: one{}``). Just keeps the ordering pretty.

The production version of this project will never have answers, and only ever have the base for each activity.

To work on an activity, *enter your dev mode* and complete the activity in your dev mode.
![devmode](https://i.imgur.com/5sUHTNs.png)

## Rules? Other Stuff?
There's no real rules, but I'm trying to be as Looker-y as possible— I'm sure SQL use will be extremely heavy on more complex challenges, but where possible I want to rely on built-in LookML, Looker UI capabilities, and table calculations. You can go your own way :)

Once you've got a solution for a day's activity, head to [https://adventofcode.com/2020/day/<daynumber>](https://adventofcode.com/2020/) and input your solution. That'll unlock Part 2 of the activity, which you can come back and complete!

I recommend saving a Look of each completed solution to your personal folder, in the format Day x Part x. It won't work for others who don't have the same LookML as you, but it's nice to refer back to.

**I really, really want to see how you think through these. PLEASE please share your work!**

**Post your solutions in the [Advent of LookML group](https://community.looker.com/groups/advent-of-lookml-1015) in the Looker Community. And/or tweet your work #adventofcode #adventoflookml.**

*Stuck? post on [community.looker.com](https://community.looker.com/groups/advent-of-lookml-1015) and/or tweet @isidoremiller*
