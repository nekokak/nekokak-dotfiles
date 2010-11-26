use inc::Module::Install;
name '[% dist %]';
all_from 'lib/[% module_unix_path %].pm';

#requires '';

test_requires 'Test::More' => '0.94';

tests 't/*.t t/*/*.t';
author_tests('xt');

auto_set_repository;

WriteAll;
