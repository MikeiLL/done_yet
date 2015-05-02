\version "2.18.2"
% First lilypond endeavor.

% first, define a variable to hold the formatted date:
date = #(strftime "%d-%m-%Y" (localtime (current-time)))

\header {
  title = "The Money"
  composer = "Rivka and Mike iLL"
  instrument = "voice and wallet"
  tagline = "Copyright R. and M. Kilmer Creative Commons Attribution-NonCommercial, BMI"
}

\paper{ print-page-number = ##f bottom-margin = 0.5\in }

\markup {
  \date
}

melody = \relative c'' {
  \clef treble
  \key g \minor
  \time 4/4
  \repeat volta 2 {
  g8 r g r g( a g fis | g) r g r bes2( |
  g8) r g r g( a g fis | g1) |
  }
  \repeat volta 2 {
  g'2 f4 ees | d8 ( ees d c) d4 bes |
  c8( d ees c d bes c) g | a4( bes8 c d2) |
  }
  \repeat volta 2 {
  f2. \times 2/3 { ees8( f ees) } | d8( ees d c d4) bes |
  c8( bes a bes c4) d, | fis( g8 a bes2) |
  }
  \repeat volta 2 {
  g2 \times 2/3 { g4 g a } | bes2 c |
  g2 \times 2/3 { g4 g a } | bes2 c |
  g2 \times 2/3 { g4 g a } | g2 ees~ | ees1 |
  }
}

ddgg = \chordmode { d1:7 | g:m | }
bridge = \chordmode {
  ees1:7 | ees:7 | c:m7 | c:m7 |
  ees:7 | g:m | c:m |
  }

harmonies = {
  \ddgg \ddgg
  \ddgg \ddgg
  \ddgg \ddgg
  \bridge
}



\markup {
    \vspace #2
     \wordwrap {
	It is only wordless melodies that can most closely unite with the heart of
	The One Who Does Not Exist in prayer.
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



