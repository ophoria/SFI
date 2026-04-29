#!/bin/bash
# Setup script for pushing SFI wiki to GitHub

echo "=== SFI Wiki GitHub Setup ==="
echo ""

# Get GitHub username
read -p "Enter your GitHub username: " USERNAME

# Update remote URL
git remote set-url origin "https://github.com/$USERNAME/SFI.git"

# Rename branch to main
git branch -m main

echo ""
echo "=== Creating GitHub repo '$USERNAME/SFI' ==="
echo "(You'll be prompted for your GitHub password or token)"
echo ""

# Try to create repo via API first
curl -u "$USERNAME" https://api.github.com/user/repos -d '{"name":"SFI","description":"SFI - Svenska för invandrare - Kunskapsbas","private":false,"has_pages":true}'

echo ""
echo "=== Pushing to GitHub ==="
git push -u origin main

echo ""
echo "=== Done! ==="
echo "Your wiki is now at: https://github.com/$USERNAME/SFI"
echo ""
echo "Next step: Enable GitHub Pages:"
echo "1. Go to: https://github.com/$USERNAME/SFI/settings/pages"
echo "2. Under 'Build and deployment' -> Source: select 'GitHub Actions'"
echo "3. The site will be published at: https://$USERNAME.github.io/SFI/"
