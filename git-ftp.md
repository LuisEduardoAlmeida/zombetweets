README of git-ftp

    This application is licenced under GNU General Public License, Version 3.0

Summary

Git powered FTP client written as shell script.
About

I use git-ftp for my script based projects, mostly PHP. Most of the low-cost web hosting companies do not provide SSH or git support, but only FTP.

That is why I needed an easy way to deploy my git tracked projects. Instead of transfering the whole project, I thought, why not only transfer the files that changed since the last time, git can tell me those files.

Even if you are playing with different branches, git-ftp knows which files are different. No ordinary FTP client can do that.
Usage

$ cd my_git_tracked_project
$ git ftp push --user <user> --passwd <password> ftp://host.example.com/public_html

For interactive password prompt use:

$ git ftp push -u <user> -p - ftp://host.example.com/public_html

Pushing for the first time:

$ git ftp init -u <user> -p - ftp://host.example.com/public_html
