use strict;
use Test::More 0.98;

eval "use Test::Pod 1.51";
plan skip_all => "Test::Pod 1.51 required for testing POD" if $@;
all_pod_files_ok();
