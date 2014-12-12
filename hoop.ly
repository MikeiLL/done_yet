\version "2.18.2"

\header {
  title = "The Hoop"
  composer = "Words and Music by Rivka and Mike iLL"
  tagline = "Copyright R. and M. Kilmer Creative Commons Attribution-NonCommercial, BMI"
}

\paper{ print-page-number = ##f }

melody = \relative c' {
  \clef treble
  \key a \minor
  \time 4/4
  \set Score.voltaSpannerDuration = #(ly:make-moment 4/4)
  \repeat volta 2 {
  % CHORUS
  e8 ees e r e ees e r | e ees e r e16 e ees8 e r |
  e ees e ees e ees e r | e e e4 e8 e e4 |
  d8 d d d d d d4 | d8 d d4 d8 d d4 |
  e8 c c c c r b d | 
  }
  \alternative {

		{
		c4 r2 r8 e8 |

		% Verse 1
		e8. e16 e8 e4 a e8 | \times 2/3 { g4 g g } e2~ |
		e4 r2. | \times 2/3 { r4 ees ees } \times 2/3 { ees e f } |
		\times 2/3 { e4 e c } \times 2/3 { e4 e c } | b1 |
		| r1 | r1 |
		} 
		{
		c4 r2. | r1 | r1 |

		% Verse 2
		e16 e ees ees e8 r16 ees e8 ees16 ees e8 r16 ees | e8 ees16 e~ e8 r16 ees e8 ees16 e~ e e e e |
		| e4 e16 e r8 e e e4 | e8 e e e e8 e16 e~ e e e8 | % hearts ... cycles cycles ... flow
		d4 r8 e e e16 d8 d16 e8 | d4 r d8 d d8. d16 | % incomprehensible ... Isis saves. De
		e8 e16 e e8 e e16 e e8 e4 | e8 e e e e e e e~ |
		e4 r2. | r2. r8 e16 e | % to the
		e8 ees e r e ees e r | e ees e r e g4. | % right stop
		r8 e ees e f4 e8 r | r8 e ees e f4 e8 d16 d | % and to the
		d8 c d r d c d r | d c d r d b4. | % left stop
		r8 e ees e f4 e8 r | r8 e ees e f4 e8 r | % and 

		%CHORUS
		\repeat volta 2 {
		e4. e8 a2 | g8 g g g4 f4 r8 | % hoop ... me
		e e e e d d4 r8 | c c c c b b4 r8 |
		e4. e8 g2 | r8 f4. f8. e16 e8 r | % in the hoop in destiny
		r d4. d8. c16 c4 | c b2. |
			}
		} 
    	}
  }


text =  \lyricmode {
 Swing that hoop. Twist that hoop.
 Whip that hoop. Wig -- gle that hoop.
 Bump that, hump that, jump that hoop.
 Step -- pin' right through it, now.
 Show me how to do it now. Give it up. Turn it out.
 Give it what you got. That's e -- nough. Deep

 Depths of our long -- ing can not be ex -- pressed.
 Oc -- cu -- pied by dis -- trac -- tion for -- get they ex -- ist.

 nough.  God -- dess gi -- ving birth. She's
 down with the Earth. Her girls de -- cide to cut or ride. We need our
 hearts in it, tim -- ing right, cy -- cles cy -- cles ir -- re -- sist -- a -- ble
 flow, in -- com -- pre -- hen -- si -- ble waves. Is -- is saves. De --
 struc -- tion cre -- a -- tion mi -- nute by hour. Ei -- ther shoice is birth -- ing pow -- er.

 To the right, don't stop. Right, don't stop. Right, don't stop. Right, stop!
 Keep co -- min' round and keep co -- min 'round and to the
 left, don't stop, left don't stop left don't stop, left stop!
 Keep co -- min 'round and keep co -- min 'round and_(the)

 Hoop is back. God -- dess sur -- round me. 
 Ol -- der than in -- no -- cence, tru -- er than ho -- nes -- ty 
 In the hoop. In des -- ti -- ny
 In my -- ste -- ry, hoo -- pin' 
}

ajam = \chordmode { a2:m a2:m/bes }
ejam = \chordmode { e1:7 }
jusa = \chordmode { a1:m }
test = \chordmode { c1 }

harmonies =  {
  \ajam \ajam \ajam \ajam
  \ejam \ejam \ajam \jusa
  
  \ajam \ajam \ajam \ajam
  \ejam \ejam \ajam \jusa
  
  \ajam \ajam
  \jusa

  \ajam \ajam \ajam \ajam
  \ejam \ejam \ajam \jusa

  \ajam \ajam

  \ajam \ajam \ajam \ajam
  \ejam \ejam \ajam \jusa

  \ajam \ajam \ajam \ajam
  \ejam \ejam \ajam \jusa
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

%Additional Verses
    \markup \fill-line {
	\column {
	"More verses:"
	" "
	"The rapid fire section:"
	" "
	"Arms out, head back. Ready for the sunrise."
	"Wind speaks from the East, come to the feast."
	"Quarter turn clockwise, hands to the sky"
	"Sing from the South, never burn out"
	"Turn another forty-five, finger wave energize,"
	"Love from the west, medicine chest"
	"Rotate once more, palms to the dry floor"
	"Hands from the North, seeds to the Earth."
	" "
	"Earring, nose ring, lip ring, wedding ring."
	"Weather men guess what clouds and winds bring"
	"Monacle, bracelet, arm band handcuff"
	"And I can’t get enough of watching hooping looping"
	"And all surprises bringing"
	"No beginning and there was no end"
	"That’s why I’m singing"
	" "
	"Melodic verse:"
	" "
	"Through four renunciations, attain perfection"
	"Leave life without regret, expect no reward"
	" "
	"Keep comin’ round and repeat repeat repeat"
	}
}
