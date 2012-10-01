function batch_sync_profile()
{
    # tar the private setting.
    tar czvf profile.tar.gz .bash_profile .bash_svn_completion .vimrc .ssh .dir_colors .xtail >/dev/null

    #cmatch devel and testing.
    #group_sync_profile cmdev 1 3 .corp.cnb
    #group_sync_profile cmtest 2 3 .corp.cnb

    # imatch test.
    #group_sync_profile imtest 1 3 .corp.cnb

    # bsdb and p4pqa.
    #sync_profile $p4pqa
    #sync_profile $bsdb
    #sync_profile $wangcs
    #sync_profile $settle
    sync_profile test8.corp.alimama.com

    # alimama testing.
    #group_sync_profile test 1 6 .corp.alimama.com
    #group_sync_profile test 8 9 .corp.alimama.com
    #group_sync_profile dev 1 5 .corp.alimama.com
    #group_sync_profile db 1 2 .corp.alimama.com

    #sync_profile $mm3vm1
    #sync_profile $mm3vm2
    #sync_profile $mm3vm3
    #sync_profile $mm3vm4
    #sync_profile $mm8vm1
    #sync_profile $mm8vm2
    #sync_profile $mm8vm3
    #sync_profile $mm8vm4
    
    # imatch test.
    #group_sync_profile imtest 1 3 .corp.cnb
    rm profile.tar.gz
}

# sync a group of machines.
function group_sync_profile()
{
    hostPrefix=$1
    hostMin=$2
    hostMax=$3
    hostPostfix=$4

    for((i=${hostMin}; i<=${hostMax}; i++)); do
        local host=${hostPrefix}${i}${hostPostfix}
        sync_profile $host
    done    
}

# sync one machine.
function sync_profile()
{
    host=$1
    echo $host
    scp profile.tar.gz $host:~/
    ssh $host tar zxvf ~/profile.tar.gz >/dev/null
    ssh $host rm ~/profile.tar.gz
    echo
}
