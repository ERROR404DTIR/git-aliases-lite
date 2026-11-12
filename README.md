<p align="center">
  <img src="assets/banner.svg" alt="git aliases lite" width="100%">
</p>

# git-aliases-lite

A small, dependency-free set of git aliases that save keystrokes every day.

## Install (one line)

```sh
curl -fsSL https://raw.githubusercontent.com/ERROR404DTIR/git-aliases-lite/main/install.sh | sh
```

This downloads `aliases.gitconfig` to `~/.gitconfig-aliases` and includes it from your global git config. Nothing else is touched. To remove it, delete that include line and the file.

## Aliases

| Alias | What it does |
|-------|--------------|
| `git st` | short status with branch info |
| `git lg` | pretty graph of the last 20 commits |
| `git last` | last commit with changed files |
| `git swc NAME` | create and switch to a branch |
| `git br` | branches with upstream info |
| `git recent` | 10 most recently used branches |
| `git cm "msg"` | commit with message |
| `git ca` | amend last commit, keep the message |
| `git undo` | undo last commit, keep changes staged |
| `git unstage FILE` | remove a file from the index |
| `git discard FILE` | throw away local changes in a file |
| `git wip` | stage everything and commit as "wip" |
| `git sync` | pull with rebase and autostash |
| `git pf` | safer force push (`--force-with-lease`) |
| `git cleanup` | delete local branches already merged |
| `git contributors` | commit counts per author |
| `git aliases` | list all aliases |

## Notes

`git cleanup` uses `xargs -r` (GNU). On macOS, install GNU findutils or run the pipeline manually.

## License

MIT
