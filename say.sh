#!/bin/bash

EINGABE=$1
AUSGABE=${EINGABE// /+} #replace all spaces with +

#replace german umlauts
AUSGABE=${AUSGABE//ö/oe}
AUSGABE=${AUSGABE//Ö/oe}
AUSGABE=${AUSGABE//ä/ae}
AUSGABE=${AUSGABE//Ä/ae}
AUSGABE=${AUSGABE//ü/ue}
AUSGABE=${AUSGABE//Ü/ue}
AUSGABE=${AUSGABE//ß/ss}
AUSGABE=${AUSGABE//!/.} #needed for some rason.


URL='http://translate.google.com/translate_tts?tl=de&q='$AUSGABE'' #get the mp3 from google
mpg123 -q $URL #play mp3file

#echo $AUSGABE
#echo $URL

