\version "2.18.2"

\header {
  title = "Morning Blue"
  composer = "Words and Music by Mike iLL"
  tagline = "Copyright R. and M. Kilmer Creative Commons Attribution-NonCommercial, BMI"
}

\paper{ print-page-number = ##f bottom-margin = 0.5\in }

melody = \relative c' {
  \clef treble
  \key c \major
  \time 7/8
  c4 d d8 e g | a4 g e8 d c | f4 e g,8 a b | \time 4/4
  c1~ | c |
 \new Voice = "words" {
	\repeat volta 2 { 
		g'8 e g e g2 | r4 g16 g e8 g e c r |
		c a c a c2 r4 c16 c a8 c a g r |
		\time 2/4 g e' d d | 
		\time 4/4 c1~ | c2 r |
		g'8 e g e g2 | r8 e g e g e c r |
		c a c a c2 r8 a c a c a g r |
		\time 2/4 g e' d d | 
		\time 4/4 c1~ | c2 r |
		} 
	}
}

text =  \lyricmode {
	Sing so mor -- ning blue. Did -- n't go out last night.
	Sing so mor -- ning blue. Did -- n't go out last night.
	Sing so mor -- ning blue.
	Sing so mor -- ning blue.  The night was black as pitch.
	Sing so mor -- ning blue.  The night was black as pitch.
	Sing so mor -- ning blue.  
}

harmonies = \chordmode {
  c2. c8 | c2. c8 | c2. c8 | c1 | c |
  c1 | c | 
  f/c | f2/c c |
  f/c
}

\score {
  
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \harmonies
    }

    \new Voice = "one" { \melody }
    \new Lyrics \lyricsto "words" \text
  >>
  \layout { }
  \midi { }
}

%Additional Verses
\markup \fill-line {
\column {

  }
}
