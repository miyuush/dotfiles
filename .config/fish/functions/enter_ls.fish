function enter_ls
    # コマンドラインの内容をcmd変数にセット
    set -l cmd (commandline)
    # コマンドラインが空の場合にtrue
    if test -z $cmd
        echo
        ls -hF --color=auto
    end
    commandline -f execute
end
