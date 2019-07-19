\version "2.18.2"

\header {
  title = "Oh Donny"
  composer = "Words and Music by Mike iLL"
  tagline = "Copyright R. and M. Kilmer Creative Commons Attribution-NonCommercial, BMI"
}

\paper{ print-page-number = ##f bottom-margin = 0.5\in }

melody = \relative f'' {
  \clef treble
  \key g \minor
  \time 4/4
  \set Score.voltaSpannerDuration = #(ly:make-moment 4/4)
  \repeat volta 2 {
	  r8 c4. a8 f4 c'8~ | c2 a8 f4 d8~ |
	  d1~ | d4 f4. g4. |
	  c,1~ | c1~ | c1~ | c4 r2. |
	  r8 c'4. a8 f4 d'8~ | d8 c4. a8 f4.~ |
	  f2 r | d4. f g4 |
	  g8( a16 g f2.~) | f1~ |
	  f1 | r |
	}
  f'8 f4 f4. c4 | d c c2~ |
  c1~ | c1 |
  c8 c4 c4. a4 | g f f2~ |
  f1~ | f1 |
  f'8 f4 f4. c4 | d c c2~ |
  c1~ | c1 |
  c8 c4 c4. a4 | g f f2~ |
  f1~ | f1 |
}



text =  \lyricmode {
  Oh Don -- ny, oh Don -- ny what
  have you done?
  Oh Don -- ny, oh oh Don -- ny what
  have you done__?
  
  Spin -- ning tales can't be un -- spun.
  Spin -- ning tales can't be un -- spun.
  Now you got to jus -- ti -- fy.
  Tell your -- self a -- noth -- er lie.
}



harmonies = {

}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \harmonies
    }
    \new Voice = "one" { \melody }
    \new Lyrics \lyricsto "one" \text
  >>
  \layout { }
  \midi { }
}

% Additional Notes
\markup \fill-line {
" "
" All my love, I gave you free."
" All my love, I gave you free."
" Just because you were afraid,"
" Took my love and ran away."
}

