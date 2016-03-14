#! /usr/bin/perl
use strict;
use warnings;
use Dreamhack::Solitaire::Medici;

# Пример использования гипотетической колоды с пятью мастями: пики, крести, бубны, черви, царские (45 карт)
my @layout = qw(
    6п 7к 8б 9ч 10ц
);

my $sol = Dreamhack::Solitaire::Medici->new(
    lang    =>'ru_RU.utf8',
    suits   => ['п', 'к', 'б', 'ч', 'ц'],
    valence => ['6','7','8','9','10', 'В','Д','К','Т']
);
$sol->init_layout(\@layout);
$sol->process(attempts=>500000) or die 'Упс! Не удалось выстроить цепочку, количество попыток: ', $sol->{'attempts'};

print $sol->format();
print "Количество попыток: ", $sol->{'attempts'}, "\n";
