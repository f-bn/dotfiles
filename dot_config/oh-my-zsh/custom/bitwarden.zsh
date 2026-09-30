# Custom helpers for Bitwarden CLI

bwunlock() {
    bw unlock --raw | read -r BW_SESSION
    export BW_SESSION
}

bwlock() {
    bw lock
    unset BW_SESSION
}