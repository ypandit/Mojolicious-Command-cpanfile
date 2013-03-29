
use Test::Exception;
use Test::File;
use Test::More tests => 7;

BEGIN { use_ok('Mojolicious::Command::generate::cpanfile'); }

my $test = new_ok(Mojolicious::Command::generate::cpanfile);
ok( $test->description, 'has description' );
ok( $test->usage,       'has usage' );
can_ok( $test, 'run' );
lives_ok { $test->run };
file_exists_ok('cpanfile');
unlink('cpanfile');

done_testing;
