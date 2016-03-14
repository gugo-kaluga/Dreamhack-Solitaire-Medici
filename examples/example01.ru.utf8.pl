#! /usr/bin/perl
use strict;
use warnings;
use Dreamhack::Solitaire::Medici;

# Начальный расклад, не более 36 карт. Меньше - можно, отсчет всегда идет с первой карты.
# Вопросик означает любую карту на этом месте.
my @layout = qw(
    Вп 9к Тп ? ? Дб
    ?  ?  ?  ? ? ?
    7к ?  6ч
);

my $sol = Dreamhack::Solitaire::Medici->new(lang=>'ru_RU.utf8');
$sol->init_layout(\@layout);
$sol->process(attempts=>500000) or die 'Упс! Не удалось выстроить цепочку, количество попыток: ', $sol->{'attempts'};

print $sol->format();
print "Количество попыток: ", $sol->{'attempts'}, "\n";
