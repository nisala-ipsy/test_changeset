if git diff --name-only test main |
  grep -qE '^\.changeset(/|$)|^CHANGELOG\.md$'; then
  echo "✅ All good"
else
  echo "❌ Looks like you forgot to run changeset versioning"
  exit 1
fi
