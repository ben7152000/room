set -e
npm run build
cd dist
git init
git add .
git commit -m 'deploy'
git push -f https://github.com/ben7152000/room.git master:gh-pages
cd -
