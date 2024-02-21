function tmp
  if test $argv[1]
    set -l dir "/tmp/$argv[1]"
    if not test -d $dir
      mkdir $dir
    end
    builtin cd $dir
  else
    builtin cd /tmp
  end
end
