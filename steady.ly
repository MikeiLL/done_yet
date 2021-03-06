\version "2.18.2"

\header {
  title = "Steady Roll"
  composer = "Words and Music by Mike iLL"
  tagline = "Copyright R. and M. Kilmer Creative Commons Attribution-NonCommercial, BMI"
}

\paper{ print-page-number = ##f bottom-margin = 0.5\in }

melody = \relative c' {
  \clef treble
  \key bes \major
  \repeat volta 2 {
  \time 9/8 e4. fis g | a g bes |
  \time 6/8
    \new Voice = "words" {
  r4 f4 d | r f f | % first i rubber her
  f4. f8 f4 | r8 f4 f8 f ees8~ | % thighs 'till they turned to butter
  \time 3/8 ees4 r8 | \time 6/8
  r4 ees c | r ees ees | % then i rubbed her
  ees4. ees8 ees4 | r8 ees8~ ees16 d16 d4. | % lips 'till they turned to bread
  r4 d bes | r d d | % let's just say i
  r4. des8. des8. | c4 bes8 a4 c8 | % layed us out a fancy 
  c16( bes16~) bes4. r4 | r4 aes' ges | % spread steady 
  ges16( f~) f4. r4 |
  	}
  }
  \alternative { 
    { 
     r1*6/8 |
    }
    { 
     r1*6/8 |
    }
  }
  % CHORUS
  \new Voice = "chorus"	{
  g4. a | bes g4 r8 |
  r1*6/8 | r1*6/8 |
  g4. a | bes g4 r8 |
  r1*6/8 | r1*6/8 |
  g4. a | bes d4 r8 |
  r2 r8 des8~ | des4. c8 bes bes~ |
  bes2. | r4 aes' ges | ges16( f~) f4. r4 | r1*6/8 |
	}
  
}

text =  \lyricmode {
  <<
	{
	    \set stanza = #"1. "
		First I | rubbed her |
		thighs 'till they |
		turned | to but -- ter. | 
		| |
		Then I | rubbed her |
		lips 'till they | turned to bread |
		Let's just | say I | 
		layed us out | a fan -- cy |
		spread |
		stea -- dy | roll |  |
	}
    \new Lyrics {
      	    \set associatedVoice = "words"
	    \set stanza = #"2. " 
		First I | tapped his |
		chest 'till it |
		beat | a rhy -- thm. |
		| |
		Then I | pressed his |
		hips 'till they | rang a tone. |
		Let's just | say I |
		played the night | a love -- ly |
		song |
		stea -- dy | roll | |
		}
  >>
	
}
chorus = \lyricmode {
    All I | want is |
	 | |
	All I | need is |
	 | |
	All night | e -- ven |
	Long | stea -- dy roll |
	 | Stea -- dy | Roll. | |
	 }

harmonies = \chordmode {
  e1:m7.5-~ e8:m7.5- | bes1~ bes8 |
  bes2. | g:m7 | c:7sus4/g | f:7 | f4.:7 |
  c2.:m7/g | f:7 | c:7sus4/g | ees4.:/bes bes |
  ees2.:maj7 | c:m7 | ees:m | f:7 |
  bes | f:m | bes | c:7/e |
  c4.:7 d:7 |
  g2.:m | g:m | c:m | f:7 |
  g:m | g:m | c:7 | f:7 |
  g:m | g:m | ees:m | f:7 |
  bes | ees:m | bes | c:7/e |
}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \harmonies
    }
    \new Voice = "one" { \melody }
    \new Lyrics \lyricsto "words" \text
    \new Lyrics \lyricsto "chorus" \chorus
  >>
  \layout { }
  \midi { }
}
%Additional Verses
\markup \fill-line {
    \column {
    "First we pressed our luck 'till it turned to reason."
    "Then we said our prayers 'till it cast a spell."
    "Let's just say we turned ourselves our pretty well."
    "Steady roll."
    }
}
