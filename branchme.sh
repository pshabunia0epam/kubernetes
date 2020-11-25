#/bin/sh

id=$(uuid)

git checkout master
git checkout -b experiment_${id}

echo ${id} >> experiment.uuid
git add .
git commit -m "experiment #{$id}"
git push --set-upstream origin experiment_${id}
