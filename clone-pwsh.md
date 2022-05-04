# clone-pwsh

[WIP] A command to clone all the repos from one user in github, written in Powershell.

So far I made this:

```
curl -s https://api.github.com/users/rocketbot-cl/repos | Out-File rocket-repos.json
```

## The command explained

The `curl` command will grab a JSON of GitHub which has all the information.

The problem is that displays only 40 per page, and with no limit indication:

```
curl -s https://api.github.com/users/rocketbot-cl/repos?per_page=200
```

...only brings the first 100 repos.

The second part:

```
Out-File rocket-repos.json
```

writes a file with the output of the fist part to a file named `rocket-repos.json`

# References

I made this script with the help of the folowing pages:

[fist](https://gist.github.com/milanboers/f34cdfc3e1ad9ba02ee8e44dae8e093f)

[second](https://kevinsimper.medium.com/how-to-clone-all-repositories-in-a-github-organization-8ccc6c4bd9df)

[third](https://dev.to/letmypeoplecode/clone-all-github-repos-for-a-user-on-windows-2ie1)
