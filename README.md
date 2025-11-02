# Countlines


**Choose a text file, then print its name and number of lines differentiating cases in which it has zero, one, or >1 line?**
**Make it into a script countlines.sh that takes one file as argument, put it in your github repo.**

By typing `nano . countlines.sh`, I wrote:

```
#! /usr/bin/env bash

filename=$1
n=$(wc -l < "$filename")

if [[ ! -f "$filename" ]]; then
        echo "Error: $filename does not exist :("
        exit 2
fi

if [[ "$n" -eq 0 ]]; then
        echo " "$filename" has no lines"
elif [[ "$n" -eq 1 ]]; then
        echo " "$filename" has 1 line"
else
        echo " "$filename" has more than 1 line"
fi

```

And typing on the terminal:

`bash countlines.sh ../../dataset1/tables/target_prokaryotes.txt`

The output was:

` ../../dataset1/tables/target_prokaryotes.txt has more than 1 line`

Update the script so that the user may provide any number of files as arguments (may need autonomous learning!)

The only change I dit in the original script was adding a for loop, so the finals script is:

```
#! /usr/bin/env bash

filename=$1
n=$(wc -l < "$filename")

for file in "$@";do
	if [[ ! -f "$filename" ]]; then
	        echo "Error: $filename does not exist :("
	        exit 2
	fi
	
	if [[ "$n" -eq 0 ]]; then
	        echo " "$filename" has no lines"
	elif [[ "$n" -eq 1 ]]; then
	        echo " "$filename" has 1 line"
	else
	        echo " "$filename" has more than 1 line"
	fi
done

```

And typing: 

`bash countlines.sh ../../dataset1/tables/target_prokaryotes.txt ../../dataset1/misc/regexp_standards.txt ../../dataset1/f.txt `

The output is:

```
../../dataset1/tables/target_prokaryotes.txt has more than 1 line
 ../../dataset1/tables/target_prokaryotes.txt has more than 1 line
 ../../dataset1/tables/target_prokaryotes.txt has more than 1 line

```

Then, for uploading this script in a repo at GitHub, I followed the following steps:

1. In the terminal go into the folder you want to upload
2. Initialize git and make the first commit

```
git init
git add .
git commit -m "Initial commit, changes are..."

```
3. Create an EMPTY REPO on GitHub
4. Connect the local folder to the repo and push

```
git branch -M main
git remote add origin https://github.com/.....
git push -u origin main

```

5. Then, after push the local folder, add those files and push again:

```
echo "# My Project" > README.md
echo "MIT License" > LICENSE
git add README.md LICENSE
git commit -m "Add README and license"
git push

```

6. Las but not least, ` nano . README.md ` and write all the instructions or other stuff 

git add .
git commit -m " Changes"
git push 

And that's all :)


