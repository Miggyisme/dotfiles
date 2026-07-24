export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(git)

source $ZSH/oh-my-zsh.sh

export GOPRIVATE=github.com/NuVidio/*


alias obsidian_start='rsync -avzP --delete miguel@192.168.15.150:/mnt/storage/miguel/ "/Users/miguel/Documents/Obsidian Vault/" && open -a "Obsidian"'
alias obsidian_sync='rsync -avzP --delete "/Users/miguel/Documents/Obsidian Vault/" miguel@192.168.15.150:/mnt/storage/miguel/'



work() {
    echo "starting work"

    # browser
    open -a "Firefox" \
        "https://github.com/orgs/NuVidio/repositories" \
        "https://nuvidio.atlassian.net/jira/software/c/projects/TISY/boards/674/backlog" \
        "https://calendar.google.com/calendar/u/1/r" \
        "https://chat.google.com/u/1/app/home"

    # apps
    open -a "Docker"
    open -a "GatherV2"
    open -a "pgAdmin 4"
    open -a "FortiClient"
    open -a "Notion"
}
export PATH="$HOME/.local/bin:$PATH"

[[ -f "$HOME/.zshrc.private" ]] && source "$HOME/.zshrc.private"
