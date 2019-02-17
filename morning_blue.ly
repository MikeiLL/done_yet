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
  c4 d d8 e g | a4 g e8 d c | \time 4/4 f4 e \tuplet 3/2 { g a b } | 
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
		g'8 e g e g2 | r8 e g e g e c r |
		c a c a c2 r8 a c a c a g r |
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
	Sing so mor -- ning blue.  I slept in starts and fits.
	Sing so mor -- ning blue.  I slept in starts and fits.
	Sing so mor -- ning blue. 
	Sing so mor -- ning blue.  The sun came peeking in.
	Sing so mor -- ning blue.  The sun came peeking in.
	Sing so mor -- ning blue.  
}

harmonies = \chordmode {
  c2. c8 | c2. c8 | c1 | c | c |
  
  c | c | 
  f/c | f/c |
  f2/c | c1 | c | 

  c1 | c | 
  f/c | f/c |
  f2/c | c1 | c | 

  c1 | c | 
  f/c | f/c |
  f2/c | c1 | c | 

  c1 | c | 
  f/c | f/c |
  f2/c | c1 | c | 
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
	" "
	"5. Sing so morning blue... Inhale a breath or two."
	"6. Sing so morning blue... You drew me out of bed."
	"7. Sing so morning blue... Come take a walk with me."
	"8. Sing so morning blue... One foot before the next."
	"9. Sing so morning blue... You pull the shadow off."
	"10. Sing so morning blue... You lift my spirit up."
	"11. Sing so morning blue... I love this feeling when you..."
	}
}
