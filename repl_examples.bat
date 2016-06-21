@echo off
for /r %%F in (*.sql) do (
  type "%%F"|repl "C:\" "E:\" LI >"%%F.new"
  move /y "%%F.new" "%%F" >nul
)
:: OR
echo %%F
for /r %%F in (*.sql) do (
  type "%%F"|repl "C:\" "E:\" LI >"%%F.new"
  move /y "%%F.new" "%%F" >nul
)
