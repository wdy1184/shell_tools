# 同步 git
syncGit() {
    git pull
    # 有修改的文件
    change_files=`git st -s | awk '{print $2}'`
    for file in $change_files
    do
        echo $file
        git add $file
    done
    git ci -m 'daily_push'
    git push
}

echo `pwd`
syncGit
cd ../
base_dir=`pwd`

# 包含 study 或者是 dot-file 文件夹都提交
dirs=`ls -l | grep -E "study|dot-file" | awk '{print $9;}'`
for dir in $dirs
do
    echo '+++++'
    cd ${base_dir}/${dir}
    pwd
    syncGit
    echo '+++++'
done
