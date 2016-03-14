#! /usr/bin/perl
use strict;
use warnings;
use Dreamhack::Solitaire::Medici;

# Пример использования колоды в 52 карты (полная колода без джокеров).
my @layout = qw(
    2п 3п 4п 5п
);

my $sol = Dreamhack::Solitaire::Medici->new(
    lang=>'ru_RU.utf8',
    valence => ['2','3','4','5','6','7','8','9','10', 'В','Д','К','Т']
);
$sol->init_layout(\@layout);
$sol->process(attempts=>500000) or die 'Упс! Не удалось выстроить цепочку, количество попыток: ', $sol->{'attempts'};

print $sol->format();
print "Количество попыток: ", $sol->{'attempts'}, "\n";
