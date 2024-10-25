# Navigate to your project directory (change this path as needed)

# Run the build command
npm run build

# Add all changes
git add -A
git add dist -f
# Commit the changes

# Define the branch name
$branchName = "gh-pages"



# Push the dist folder to gh-pages branch
git subtree push --prefix dist origin $branchName

git rm -r dist
git commit -m 'Auto deploy.'
git push