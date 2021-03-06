function Art {
    if [[ $1 == "grab" ]]; then
        command Art $@ --ignorePanics
    elif [[ $1 == "sanitize" ]]; then
        command Art $@ --swiVariant=International --skipOutdatedSwiCheck
    else
        command Art $@
    fi
}

function dut-list {
    local available=$(Art list | grep \<free\>)
    if ! [ -z "$1" ]
    then
        local available=$(echo "$available" | grep $1)
    fi
    echo "$available"
}

function dut-random {
    local available=$(dut-list $1)
    local chosen_dut=$(echo "$available" | shuf -n 1)
    echo "$chosen_dut"
}

function dut-random-grab {
    local dut=$(dut-random $1)
    local dut_name=$(echo "$dut" | word 0)
    Art grab $dut_name
}

function dut-random-grab-sanitize {
    dut-random-grab $1
    Art sanitize
}

function dut-random-grab-sanitize-update {
    dut-random-grab-sanitize $@
    Art update
}

function dut-release {
    Art release $@
}

function dut-release-all {
    if [ $(dut-number) -gt 0 ]
    then
        local grabbed_duts=$(Art grabbed)
        for grabbed_dut in ${grabbed_duts//\\n/ }
        do
            $(dut-release $grabbed_dut)
        done
    else
        echo "No duts are grabbed."
    fi
}

function dut-ssh {
    Art ssh -u root $@
}

function dut-cli {
    Art attach
}

function duts {
    Art grabbed
}

function dut-number {    
    local duts=$(duts)
    if [ "$duts" == "No duts grabbed" ]
    then
        local count=0
    else
        local count=$(echo "$duts" | wc -l)
    fi
    echo $count
}

function dut {
    if [ $(dut-number) -eq 1 ]
    then
        local start=7
        local maximum_length=64
        local full_dut=$(duts)
        local dut=${full_dut:start:maximum_length}
        echo $dut
    else
        echo "This command only works with 1 dut grabbed."
    fi
}

function dut-upload {
    if [ $(dut-number) -eq 1 ]
    then
        if ! [ -z "$1" ]
        then
            local source=$1
            local destination=$(dut):/tmp/$(basename $source)
            Art scp $source $destination
        else
            echo "Please provide a path to the file."
        fi
    else
        echo "This command only works with 1 dut grabbed."
    fi
}
