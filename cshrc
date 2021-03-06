umask 022
cd $HOME

alias cd.. "cd .."
alias l "/usr/bin/last \!* | less"
alias less "/usr/bin/less -EmrSw"
alias g "grep --color --mmap"
alias ssh "/usr/bin/ssh -4 -C -e none"
alias SYNC "/bin/sync; /bin/sync; /bin/sync"
alias HEAD "/usr/local/bin/lwp-request"
alias POST "/usr/local/bin/lwp-request"
alias GET "/usr/local/bin/lwp-request"

complete sudo       p/1/c/
complete which      p/1/c/
complete set        'c/*=/f/' 'p/1/s/=' 'n/=/f/'
complete unset      n/\*/s/
complete alias      p/1/a/          # only aliases are valid
complete unalias    n/\*/a/
complete cd         p/1/d/          # Directories only
complete chdir      p/1/d/
complete pushd      p/1/d/
complete popd       p/1/d/
complete man        p/1/c/
complete svn        'p/1/(add blame cat checkout co cleanup commit ci copy cp \
        delete rm diff di export help import list ls log \
        merge mkdir move mv revert status st update up)/'
complete hg 'p/1/(add addremove annotate blame archive backout bisect branch branches bundle \
        cat clone commit ci copy cp diff export glog grep heads help identify id import patch incoming in \
        init locate log history manifest merge outgoing out parents paths pull push recover \
        remove rm rename mv revert rollback root serve showconfig status st tag tags \
        tip unbundle update up checkout co verify version)/'
complete git 'p/1/(add bisect branch checkout clone commit diff fetch grep init log merge mv pull push rebase reset rm show status tag cherry-pick revert)/'
complete apachectl  'c/*/(start stop restart fullstatus status graceful configtest help)/'

set autoexpand
set autolist
set dspmbyte="big5"
set history = 5000
set mail = (1 /var/mail/$USER)
set manpath = (/usr/local/man /usr/X11R6/man /usr/man)
set path = (~/bin ~)
set path = ($path /usr/local/ruby-1.9.1/bin)
set path = ($path /usr/local/pgsql/bin /net/account/admin/srwang/local/bin)
set path = ($path /usr/local/bin /usr/local/sbin /usr/X11R6/bin /usr/bin)
set path = ($path /usr/sbin /usr/games /bin /sbin /stand)


if ( ! $?WINDOW ) then
  set prompt = "%{^[[32m%}%n%{^[[0m%}@%{^[[36m%}%m%{^[[0m%} [%{^[[32m%}%~%{^[[0m%}] (%{^[[36m%}%T%{^[[0m%}) "
else
  set prompt = "%{^[[32m%}%n%{^[[0m%}@%{^[[36m%}%m%{^[[0m%} [%{^[[32m%}%~%{^[[0m%}] [%{^[[36m%}%T%{^[[0m%}/%{^[[36m%}W$WINDOW%{^[[0m%}] "
endif
set savehist = 5000



setenv BLOCKSIZE "k"
setenv TERM "screen"
setenv CLICOLOR_FORCE
setenv ENABLE_STARTUP_LOCALE "zh_TW.UTF-8"
setenv LANG "zh_TW.UTF-8"
setenv LC_ALL "zh_TW.UTF-8"
setenv LESS "-EmrSw"
setenv LESSCHARDEF "8bcccbcc18b95.."
setenv LSCOLORS "gxfxcxdxbxegedabagacad"
setenv PAGER "/usr/bin/less"


if ( $OSTYPE == FreeBSD ) then
  alias colorls "/bin/ls -FGg"
  alias ls "ls-F -FGg"
  alias n "/usr/sbin/nslookup"
  alias top "/usr/bin/top -s1"
  setenv EDITOR "/usr/local/bin/vim"
  setenv VISUAL $EDITOR
  set HOSTLIST = `ypcat hosts | awk '{ FS="\t*"; ORS = " "; print $2 }'`
  set HOSTLIST = ($HOSTLIST nospam.tw)
  setenv HOSTLIST "$HOSTLIST"
  complete ssh "p/1/($HOSTLIST pixoffice@office)/" 'c/-/(l)/' 'p/1/(pixnet root)/'
  complete ping 'p/1/$HOSTLIST/'
  complete telnet 'p/1/$HOSTLIST/'
  complete pmachine 'p/1/$HOSTLIST/'
  complete mytop 'c/-/(h)/' 'n/-h/$HOSTLIST/'
else
  alias colorls "/bin/ls -aF --color=always"
  alias ls "ls-F -F --color=always"
  alias n "/usr/bin/nslookup"
  alias top "/usr/bin/top -d1"
  setenv EDITOR "/usr/bin/vim"
  setenv VISUAL $EDITOR
  set path = ($path /home/services/mysql/bin/ /srv/mysql/bin/)
endif                                              
