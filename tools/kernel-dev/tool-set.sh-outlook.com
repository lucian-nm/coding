mv ~/.vimrc ~/.vimrc-`date "+%Y%m%d%H%M"`
cd ~
cat <<-EOF > .vimrc
syntax on
set title
filetype plugin indent on
set tabstop=8
set softtabstop=8
set shiftwidth=8
set noexpandtab
EOF

#cat <<-EOF >.esmtprc
#identity "niuxilei@outlook.com"
#hostname smtp.office365.com:587
#username "niuxilei@outlook.com"
#password "aZE2YYLQXdUm"
#starttls required
#EOF
#
#cat <<-EOF >.muttrc
#set sendmail="/usr/bin/esmtp"
#set envelope_from=yes
#set from="Niu Xilei <niuxilei@outlook.com>"
#set use_from=yes
#set edit_headers=yes
#EOF

# SNEDING MAIL
cat <<-EOF >.muttrc
set envelope_from=yes
set from="Niu Xilei  <niuxilei@outlook.com>"
set use_from=yes
set edit_headers=yes
set smtp_url="smtp://niuxilei@outlook.com@smtp.office365.com/:587/"
set smtp_pass="aZE2YYLQXdUm"
set ssl_force_tls = yes
set spoolfile = "=INBOX"
set record = "=Sent Items"
set postponed = "=Drafts"
set sort = threads
set header_cache = ~/.mutt/headercache
set message_cachedir = ~/.mutt/messagecache
set imap_check_subscribed
set imap_keepalive = 300
set mail_check = 60
set ssl_starttls = yes
set ssl_force_tls = yes
# RECEIVING MAIL
set imap_user = "niuxilei@outlook.com"
set imap_pass = "aZE2YYLQXdUm"
set folder = "imaps://niuxilei@outlook.com@outlook.office365.com:993"
set spoolfile="imaps://outlook.com/INBOX"
set postponed="imaps://outlook.com/Drafts"
set record="imaps://outlook.com/Sent"
set header_cache=~/.mutt/cache/headers
set message_cachedir=~/.mutt/cache/bodies
set certificate_file=~/.mutt/certificates
set move = no
EOF

cp .gitconfig  .gitconfig-`date "+%Y%m%d%H%M"`
cat <<-EOF > .gitconfig
[user]
  name  = Niu Xilei
  email = niuxilei@outlook.com 
[core]
        editor = vim
[color]
          diff = auto
                interactive = auto
                  ui = true
        pager = true
[color "status"]
          added = green
            changed = red bold
              untracked = magenta bold
[color "branch"]
          remote = yellow
[sendemail]
        confirm = auto
        from = Niu Xilei <niuxilei@outlook.com>
        chainreplyto = false
        smtpencryption = tls
        smtppass = aZE2YYLQXdUm
        smtpserver = smtp.office365.com
        smtpserverport = 587
        smtpuser = niuxilei@outlook.com
EOF
