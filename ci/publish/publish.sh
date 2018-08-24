npm install
npm run build
npm run beforepublish
./node_modules/.bin/lerna publish --repo-version $1 --skip-git --yes
node ./ci/publish/publishExamples.js
git add .
git commit -m "version bumped to $1"
git push
