## a sane set of defaults for mutt

1. git clone
2. `deploy.sh`
3. `$ emacs -daemon`

## the boring stuff below 
This is based on three files:

1. `.muttrc`
2. `.muttrc_account`
3. `.muttpass_account.gpg`

It features gpg encryption and you can easily backup your config to a public repo, can you say `github`?

1. add the following to your `.gitignore` file:

```
 .muttpass*
 *.gpg
#------ publish your config safely
```

2. make a shellscript or copy your `.mutt*` files to a `mutt_bootstrap` directory of the like and `push` that repo.

3. familiarize yourself with the codebase

```
#-------.muttrc & .muttrc_account & .muttpass_account sane defaults solution--------------------------------#
#------ howto
#------ files required:
#------ 1. .muttrc
#------ 2. .muttrc_account
#------ 3. .muttpass_account.gpg
#------ 4. OPTIONAL: repeat 2 & 3 for many accounts and do kbd shortcuts
#-----------------------------------------------------------------------------------------------------#
#------ .gitignore
#------ .muttpass*
#------ *.gpg
#------ publish your config safely


#---- on load (chose account)
source ~/.muttrc_gmail

#-----------------------------------------------------------------------------------------------------#
#---- .muttrc_gmail
#---- 1. sets imap
#---- 2. loads secrets

#---- in secrets file-------------------------------------------------------------------------------#
#set realname = "your sent from name"
#set from = "youremail@gmail.com"
#set smtp_url = "smtps://youremail@gmail.com@smtp.gmail.com:465/"
#set imap_user = "youremail@gmail.com"
#set smtp_pass="pass"
#set imap_pass="pass"
#---- end secrets file----------------------------------------------------------------------------#
```
