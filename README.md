Bug in intero working with TH file paths

In order to see it:

```
# works fine
stack build
# also works fine
stack ghci
:load Main
^D
# In emacs, load ghci with `C-c C-l` while Main.hs is opened:
Starting:
  stack ghci --with-ghc intero "--docker-run-args=--interactive=true --tty=false" --no-build --no-load --ghci-options -odir=/Users/kb/tmp/intero63840OoG --ghci-options -hidir=/Users/kb/tmp/intero63840OoG th-utils-intero-test
Intero 0.1.20 (GHC 8.0.1)
Type :intro and press enter for an introduction of the standard commands.

 [1 of 2] Compiling Utils            ( /Users/kb/workspace/playground/th-utils-intero-test/src/Utils.hs, /Users/kb/tmp/intero63840OoG/Utils.o )
[2 of 2] Compiling Main             ( /Users/kb/tmp/intero638401Hn.hs, /Users/kb/tmp/intero63840OoG/Main.o )

/Users/kb/tmp/intero638401Hn.hs:15:14: error:
    • Exception when trying to run compile-time code:
        /Users/kb/data/foo.hamlet: openFile: does not exist (No such file or directory)
      Code: shamletFileRelative "data/foo.hamlet"
    • In the untyped splice: $(shamletFileRelative "data/foo.hamlet")
Failed, modules loaded: Utils.
```
