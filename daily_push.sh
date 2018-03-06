base_dir=`pwd`
dirs=`ls -l | grep -E "study|dot-file" | awk '{print $9;}'`
for dir in $dirs
do
    echo '+++++'
    cd ${base_dir}/${dir}
    pwd
    git add .
    git ci -m 'daily_push'
    git pull
    git push
    echo '+++++'
done
