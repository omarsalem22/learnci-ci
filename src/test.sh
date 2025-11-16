EXPECTED="Hello , test"
OUTPUT=$(node -e "console.log(require('./src/app')(TEST'))")
if["$OUTPUT"=="$EXPECTED"];then
echo "test passed"
exit 0
else
echo "Failed"
exit 1
fi