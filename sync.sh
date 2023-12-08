echo "Setting up Authentication..."
# Disable Authorization header which overrides all
git config --unset-all http.https://github.com/.extraheader
git config user.name "Phoenix-Starlight"
git config user.email ${LOGIN_EMAIL}

echo "Pushing to wiki..."
git remote add wiki https://${ACCESS_TOKEN}@github.com/Phoenix-Starlight/WikiExperiment.wiki.git
# Github Wiki lies about its commit history
git push --force wiki