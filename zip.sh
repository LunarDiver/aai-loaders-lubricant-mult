ignores='
    -x!zip.sh
    -x!.gitignore
    '
name=$(grep -woP '(?<="name": ")(.+)(?=",)' info.json)
version=$(grep -woP '(?<="version": ")(\d+.\d+.\d+)' info.json)
filename="$name"_"$version".zip

rm -f $filename
7z a $filename * $ignores