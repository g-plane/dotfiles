function xy
  if test $https_proxy; or test $http_proxy
    set -e https_proxy http_proxy
  else
    set -gx https_proxy "http://127.0.0.1:2081"
    set -gx http_proxy "http://127.0.0.1:2081"
  end
end
