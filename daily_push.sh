syncGit() {
    # git pull
    # 有修改的文件
    change_files=`git st -s | awk '{print $2}'`
    echo 3
    for file in $change_files
    do
        echo 1
        echo $file
        git add $file
        echo 2
    done
    echo 4
    git ci -m 'daily_push'
    git push
}

echo `pwd`
syncGit
cd ../
base_dir=`pwd`
dirs=`ls -l | grep -E "study|dot-file" | awk '{print $9;}'`
for dir in $dirs
do
    echo '+++++'
    cd ${base_dir}/${dir}
    pwd
    syncGit
    echo '+++++'
done
