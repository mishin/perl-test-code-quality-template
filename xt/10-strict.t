#!/usr/bin/perl -w
# test for syntax, strict and warnings

use strict;
use warnings;
use Test::More;

eval 'use Test::Strict';    ## no critic
plan skip_all => 'Test::Strict required' if $@;

{
    no warnings 'once';
    $Test::Strict::TEST_WARNINGS = 1;
}

all_perl_files_ok(qw/ lib t xt /);

