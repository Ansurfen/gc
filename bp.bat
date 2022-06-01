@echo off

set cnt = 0

for %%x in (%*) do Set /A cnt+=1

if %cnt% equ 1 (
    docker build -t ansurfen/gix:%1 .
    docker push ansurfen/gix:%1
) else (
    echo "argument must is 1"
)

