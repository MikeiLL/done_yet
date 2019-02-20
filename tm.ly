\version "2.18.2"

\header {
  title = "Transcendental Medication"
  composer = "Words and Music by Mike iLL"
  tag = "Copyright R. and M. Kilmer Creative Commons Attribution-NonCommercial, BMI"
}

\paper{ print-page-number = ##f bottom-margin = 0.5\in }

melody = \relative c'' {
  \clef treble
  \key c \major
  \time 4/4
  \repeat volta 2 {
  g4 r g8 a g e | g4 g e2 | % blues ... wide
  g4 r g8 a g e | g4 g b4.( a16 g ) | 
  g4 r g8 a g e | g4 g c2 |
  e4. e8 d d d e | d4( c) b( a) |
  }
  g8 a b c d r d, e | f g a r b b a b |
  a4 g8 c4.~ c4~ | c2 a8 a a a |
  a r g b4.~ b4~ | b2 f8 f f f |
  f r e a4.~ a4~ | a1 |
  
  \repeat volta 2 {
  g8 g g g g r g g | g g g r a a a a | % Do do do do do
  a a g c4.~ c4~ | c2~ c8 a a a |
  a4 g8 b4.~ b4~ | b2~ b8 f f f8~ |
  f8 e4 a8~ a2~ | a1 | } 
  
  g4 r g8 a g e | g4 g e2 | % White powder
  g4 r8 g8 g a g e | g4 g b4.( a16 g ) | 
  g4 r8 g g a g e | g4 g c2 |
  e4. e8 d d d e | d4( c) b( a) | 
}

text =  \lyricmode {
<<
 {
 \set stanza = #"1. " 
   Blues trail -- in' me a --  round this wide 
   world. Bor -- ders lie with --  in these white walls.
   Need a -- no -- ther  vic -- to --  ry: 
   Tran -- scen --  den -- tal med -- i --  ca -- tion
  }
 \new Lyrics {
   \set associatedVoice = "melody"
   \set stanza = #"2. "
   Bills trail -- in' me a --  round this cold 
   month. Days are blur -- ring  light and dark -- 
   ness. Some -- thing that can  set me free: 
   Tran -- scen --  den -- tal med -- i --  ca -- tion.
  }
>>
  Do do do do do do do  do do do wait -in' for the 
  grass to grow. See which way the  
  wind will blow. Keep it on the  
  quiet and low.  
  Got -- ta get a med- Got -- ta  get a med- Got -- ta get a 
  med -- i -- cal card so I can 
  trim the weeds in my 
  own back yard.  
<<
 {
 \set stanza = #"3. " 
   White pow -- der wants to  win my soul.
	Pull me up and down the  feel -- ing pole. 
	Please re -- move me from it's  cus -- to --  dy.
	Tran -- scen --  den -- tal med -- i --  ca -- tion.
  }
 \new Lyrics {
   \set associatedVoice = "melody"
   \set stanza = #"4. "
   Fines turn -- ing in -- to  sen -- ten -- ces. 
   Whoops. Did I for -- get to  check my mail. 
   Wow. They tell me they're pro --  tect -- ing me. 
   Tran -- scen --  den -- tal med -- i --  ca -- tion.
  }
>>
	
}


harmonies = \chordmode {
  g1 | e:m | g | e:m |
  g | e2:m c2 | c1 | c1 |
  g | g | c | c |
  g | g | d:m | d:m |
  g | g | c | c |
  g | g | d:m | d:m |
  g1 | e:m | g | e:m |
  g | e2:m c2 | c1 | c1 |
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
