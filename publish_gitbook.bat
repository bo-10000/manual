git add .

git commit -a -m "Update docs"

git push origin master

gitbook install && gitbook build

git checkout gh-pages

git pull origin gh-pages --rebase

xcopy /s /y _book\* .

git clean -fx node_modules
git clean -fx _book

git add .

git commit -a -m "Update docs"

git push origin gh-pages

git checkout master