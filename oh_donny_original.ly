\version "2.18.2"

\header {
  title = "Oh Donny Original Version over instrumental for panhandler"
  composer = "Words and Music by Mike iLL"
  tagline = "Copyright R. and M. Kilmer Creative Commons Attribution-NonCommercial, BMI"
}

\paper{ print-page-number = ##f bottom-margin = 0.5\in }

melody = \relative f'' {
  \clef treble
  \key c \major
  \time 4/4
  \set Score.voltaSpannerDuration = #(ly:make-moment 4/4)
  \partial 4 g~
  \repeat volta 2 {
	  g2 e8. c g'8~ | g2 e8 c4 a8~ | a4 r c4. d g,8~ |
	  g1~ | g | r | r |
	  r4 g'4. e8. c | g'2 e c~ | c1 | a4. c d4 |
	  \tuplet 3/2 { d8( e d e~)} e2.~ | e1 | r | r |
	}

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
" "
" xxx."
" xxx."
" Jeweled scepter, crown and thrown"
" Living on your world alone."
}

