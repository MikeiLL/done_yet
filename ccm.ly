\version "2.18.2"
% First lilypond endeavor.

% first, define a variable to hold the formatted date:
date = #(strftime "%d-%m-%Y" (localtime (current-time)))

\header {
  title = "Chocolate Covered Marshmallows"
  composer = "Rivka and Mike iLL"
  copyright = "copyright R and M Kilmer"
  instrument = "unaccompanied vocal"
  tagline = "Copyright R. and M. Kilmer Creative Commons Attribution-NonCommercial, BMI"
}

\paper{ print-page-number = ##f bottom-margin = 0.5\in }

\markup {
  \date
}

melody = \relative c' {
  \clef treble
  \key des \major
  \time 5/4

  ees4 ees16 f ees des ees8-> ees16 des bes4 des8 f 
  ges4 ges16 aes ges f ges8-> ges16 f des4 f8 aes 
  bes4 bes16 c bes aes bes8-> bes16 aes f4 aes8 f 
}

harmonies = \chordmode {
  ees2.:m bes2:m |
  ees2.:m bes2:m |ees2.:m bes2:m |
}


\markup {
    \vspace #2
     \wordwrap {
        The \italic {Nigunum} are wordless melodies. According to Hassidish lore,
        certain spiritual concepts can be not be fully expressed when limited by
        a verbal language. 

        Each measure can be repeated arbitrarily, and also works interestingly as a round.
        }
  }
\markup { \vspace #2 }   
 
\score {    
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \harmonies
    }
    \new Voice = "one" { \melody }
  >>
  \layout { }
  \midi { }
}



