## vimtask2.vim


## installation
```vim
NeoBundle "NoahOrberg/vimtask2.vim"
```

## Usage
- Make TODO-ITEM
```vim
:MakeTODO {COMMENT MARKER} {TODO_ITEM}
```
FOR INSTANCE(`C`):
```vim
:MakeTODO // CHECK_DB_SCHEMA
```
FOR INSTANCE(`Ruby`):
```vim
:MakeTODO # CHECK_DB_SCHEMA
```
FOR INSTANCE(`Haskell`):
```vim
:MakeTODO -- CHECK_DB_SCHEMA
```
- Toggle `Do` and `Undo`
  - select TODO-ITEM-line, use `td` command
- Delete TODO-ITEM
  - use `dd` command
