\version "2.18.2"

\header {
  title = "Heaven Better Be All That"
  composer = "Words and Music by Rivka & Mike iLL"
  tagline = "Copyright R. and M. Kilmer Creative Commons Attribution-NonCommercial, BMI"
}

\paper{ print-page-number = ##f bottom-margin = 0.5\in }

melody = \relative c'' {
  \clef treble
  \key d \major
  \time 6/8 
  
  r4. d( | e8) r d4 b8 g16 a~ | a4( b8 g4) e8 | r8 a,4 b8( d e) |
  g4 a8 b4( d8 | a g) a4 r | r b,8 cis e g | a4 g8 e4 r8 |
  r4 g,4. a8 | \tuplet 5/3 { b4 cis e g a~ } | a4 b8( g e) d'~ |
  d4 b8( a g4 ) |
  
  \new Voice = "lyrics" {
  	d'8( e4) e8. e | d8( b g4) r8 a | % bye bye by air. In
  	a b g e g4~ | g4. e8 r4 | % In body i endure but
  	a4 b8 a g d'~ | d4 b8 a g e~ | e4( g8) r4. | r4 g4. e8~ | % But why I abide by a burden. Bye bye, 
	e4 d8 g4 b8~ | b4 a8( g) a4~ | % bye, but that bye bye bye
	a b8 d4 e16 g~ | g4 a b | a( g) e8 g8~ | g2.~ | % With that put but bye bye abide
	g2~ g8( a8 | b8) r8 r2 | % abide
	
	r2. | fis8 fis fis fis fis4~ | fis2. | g4 e2 | % Heaven better
	r2. | fis8 fis fis fis fis4~ | fis2. | g4 e2 |
	r2. | fis8 fis fis fis fis4~ | fis2. | g4 e2 |
	d4 e d | r2. | cis4 d8 e4. | r4 a,8 cis4 b8 | % That's a lot ... a lot to
	b4 r2 |
	
	r4 b, d8 e | g a4 b4 g8~ | g4 e r |  % Offering a bowl of warm milk
	r2 a4 | b8 d4 b8 a g | e8. g r4. | r4 a4. g8 | % Pair of handcuffs as a decoration
	r4 a g8 r | r b4 e, r8 |% Fancy bracelets
	r4. a4 g8~ | g4 b e,8 g~ | % Tie up. Why ab- 
	g4 a4 e | r d'8.( b16) a8( g) | g4 a8 e4 d8~ | d4 e'4 d8( b~ ) | % andon us. Why abandon all our praises.
	b4 r8 e4 d16( a | % 

	g4) r8 e'4 d16( a | g8) r8. e'4 d16( a g~)  | % I am, I am,
	g8 r g'4. e16 d | a8. g a16 b e,4 |  % I am ever your servant,
	g4.( a8 b4) | r4. a8 b4 | %  Mother of light. A' right?
	r2. | 
	g,4.( a8 b16 c d e~ | e8. g8. a8 b16 g8.~ | % High- 
	g8) e8 r4 d'~ | d8 b8 g e r g~ | % er. Higher than a fl-
	g4 e8 r4 e'8~ | e8. d16 b g r g8.( a8 | % ier. Lighter than a fi-
	bes4. a4 g8~ | g4 e8) r4. | % __ 
	r4. g8( a b~ | b4 a8 g4 e8 | % I
	a,4.\trill b8. d | e8. g a8 a4 | % __
	a4. a8. a8 g16) | e4 g2~ | g2~ g8 e8~ | e4 r2 | % re fly. Yeah.

	% CHORUS
	r2. | fis'8 fis fis fis fis4~ | fis2. | g4 e2 | % Heaven better
	r2. | fis8 fis fis fis fis4~ | fis2. | g4 e2 |
	r2. | fis8 fis fis fis fis4~ | fis2. | g4 e2 |
	d4 e d | r2. | cis4 d8 e4. | r4 a,8 cis4 b8 | % That's a lot ... a lot to
	b4 r2 | % ask.
  }
  
  r4 b' a | g2.~ | g4 cis, g | 
  b4 r2 | r4 b' a | g2.~ | g4 cis, g | 
	
  \new Voice = "verseThree" {
  	\set associatedVoice = "text"
  	r2. | r4 e8 fis g4 | g8 r a r a16( b) r8 | b r b4( a~)  | % Fa la la la I I I I
	a2 r4 | r2. | e4 fis8. g fis8~ | fis4. e8 e b | % mBorn by a tribe I like and 
	e8. r r4. | r8. g' a b | a8 r g a g4 | a8( b) e,4 g~ | % love. Bold trends I try, would not defy tra-
	g4. e4 d8~ | d8. b a g | b,2. | r2 r8 b~ |  % dition, but let me be clear. Her-.

	b4.( d4 e8)~ | e r4 a,8.( b~ | b4. d4 e8)~ | e4 r8 a,4( b8~) | b4. d4 e8~ | e r4 b'4 a8~ | a4. % Her. Our. All our us combined 
	g8 r b~ | b4.( e8) r e~ | e4. d4 b8~ | b4. g4 a8~ | a4 r2 | r g'4 | % right here. Ever come what lie. Ah.
	r4 g,8 g g g | r4 d'8( e) d( e) | % Holler holler. Hip hip.
	r4 d8 d d d | r4 e8 r b r | % Hell of hell of hip hip.
	r4 d8 d d d | r4 g8 r e r | % Halleluja hip hip.
	r4 d8 d d d | e r e r b r | % Halleluja hip hip. What-

	c8( d4 b8) a( g) | r4. g16~ g4( a16) | b8( d b g \startTrillSpan e4~ | e4.)  g4\stopTrillSpan r8 | % ever nobody
	r4 g( a~ | a8) b4 d8( b a | g8.) e8. e4. | e4 g b,8 r | % Yeah, Ay Yai Yai I I pray with
	r4 b2~ | b8 d e g a b | a8. g d4 e16( fis) | e4.( fis4) r8 | % all and every tiny corner of my mind

	r4 b2 | d8. b a e | g4. a8 g e | g( e4.) e4  | % High, why I ever Why I ever lie yeah
	r8. e'(d16 e4 d16 | e4) d8. b8 e,8. | g4. a8 b g~ | g4 e2 | % Hey it’s such a game we are playing. 
	d2.( | b4 d e) | g4.( a8 e4~ | e8) r e' r e r | % Yeah. Hey. Hey hey

	e r d r b r | \tuplet 3/2 {a4( b8)} g4 e | % hey hip hip by us say
	g8 r \tuplet 3/2 {a4( b8)} g4 | r \tuplet 3/2 {g4 r8} \tuplet 3/2 {a4( b8)} | % what by us what said
	g4 e g | \tuplet 3/2 {a4( b8)} g4 e | % tru all of my yodel 
	\tuplet 3/2 {e'4 r8} \tuplet 3/2 {d4 r8} \tuplet 3/2 {a4( b8)} | g4 \tuplet 3/2 {e4 r8} g4 | % Hip hip my yodel goin’ 
	
	% CHORUS
  	\tuplet 3/2 {a4( b8)} r2 | fis'8 fis fis fis fis4~ | fis2. | g4 e2 | % up. Heaven better
  	r2. | fis8 fis fis fis fis4~ | fis2. | g4 e2 |
  	r2. | fis8 fis fis fis fis4~ | fis2. | g4 e2 |
  	d4 e d | r2. | cis4 d8 e4. | r4 a,8 cis4 b8 | % That's a lot ... a lot to
  	b4 r2 | % ask.
 }
    
 r4 b' a | g2.~ | g4 cis, g | 
 b4 r2 | r4 b' a | g2.~ | g4 cis, g | 
 \new Voice = "verseFour" {
	% 
	r2. | r8. a8( b8.) cis8 r | e8 r g r a8.( b16 | a4) g e | % In that spot, that mind that got 
	r4 b8. d8.~ d8~ | d4. e8 r4 | % desire less
	r8 b d2~ | d4. e8 r b' | % Be on that great
	r4 b b8. d16~ | d4. b8 a g | % land that feels better than 
	a b g2( | e8) e8 r4. d'8~ | % heaven ever
	d8 r b a g a~ | a8 b r g4.~ | g4( e8) e4. | r2. | % Softly as a landing feather
	a,8. b d e | g8 a16( b) a16( b8.) a16( b8.) | % Gently by a well adroit sweet 
	a8 g a g e g~ | g2 r4 | % nimble finger of sky
	%  
	r4 e,8 c b a | r4 b8 a g fis | r4 e8 fis g a | b d b4 a8 r | % Rolling and a tum-ba-ling a-Round about above a mother
	r4 fis'8 e d b | r4 e8 d b g | % Ready ever. Any weather.
	r4 e8 fis g a | b d b4. a8 |% Guided by complete surrender.
	% 
	r4 d2~ | d16 e8. r4 g~ | g4 b a16( b8.~) | b4( fis8) fis4 fis8~ | % Man and woman, human
	fis4. d4 e8~ | e8. g a b | d4 e8 d b a~ | a4. g4 r8 | % kind we all got deep and deeper into trouble
	r8 a4 a4~ a16( g~) | g8 g r a4 g8 | r4 d'8 a8. b8.~ | b4. b8 r4 | % Mmm Build that build that Babel Tower up
	% 
	\tuplet 4/6 { r8 a16 a a r g g } | \tuplet 4/6 { g r8 e16 e e r8 } | % Za ba bap za ba bap
	d16 d d d r8 \tuplet 3/2 { e8 e e } r8  | \tuplet 4/6 { g16 g g r a a a r } | % Za ba bap ba ba ba bap Ba ba bap ba ba bap 
	\tuplet 4/6 { b16 b b b b b8 b16~ } | \tuplet 4/6 { b16 d8 d d g16~ } | % ba ba bap Ba ba ba bop bop bop bap ba bap
	% 
	g4. a8 e4 | d8 r4 g4.~ | % Higher higher high-
	g8. a8 r16 e8. d~ | d8 r g a4 r8 | % er higher Higher
	e4 d b'~ | b2 (\glissando b,4) | %  higher wow!

	% CHORUS
  	r2. | fis'8 fis fis fis fis4~ | fis2. | g4 e2 | % up. Heaven better
  	r2. | fis8 fis fis fis fis4~ | fis2. | g4 e2 |
  	r2. | fis8 fis fis fis fis4~ | fis2. | g4 e2 |
  	d4 e d | r2. | cis4 d8 e4. | r4 a,8 cis4 b8 | % That's a lot ... a lot to
  	b4 r2 | % ask.
 }
    
 r4 b' a | g2.~ | g4 cis, g | 
 b4 r2 | r4 b' a | g2.~ | g4 cis, g |
  \new Voice = "verseFive" {
	% 
	r2. | r4 g,8 a a bes | b r fis r e4 | b'8 r fis r e4 | % Got it in our blood, papa. Good, papa.
	r2. | r4 g'8 a a bes | b r fis r e4 | b'8 r fis r e4 | % Ma was in the wood cut pile up up our
	r2. | r4 g8 a a bes | b r fis r e4 | b'8 r fis r e4\glissando | % Thought I understood what the thought was for
	d'8 r b r g4 | e d b8 e~ | e4 g r | r d'8 d d d |% How ‘bout by lunch I forget it? Every day I 
	% 
	e4 b r | r4. d,4 r8 | e4. g4 r8 | a r d d d d | % wake up So far. What for? But I lie a-
	e g d r b r | a4 g d8 r | e2 r4 | r2. | % wake a lot late ask not what for
	r2 \tuplet 3/2 { d'8 d d } | \tuplet 3/2 { d4 g8~ } g2( | g4 \tuplet 3/2 {fis4 g8} fis4 | \tuplet 3/2 {e4 fis8} e2~ | % Walking on a wi-
	e8 d~ \tuplet 3/2 { d4 e8 } d4 | \tuplet 3/2 { b4 d8 } b4) \tuplet 3/2 { a4 b8 } | a4. g8 a b | g4 e8 d b e | % de On a wide foot-pounded ground network of trails
	% 
	r4. g,8 a a | b b c d e g | \tuplet 4/3 { a8 r a a4 a a8 } | % Every time we think that we’ve found some peace and some peace and 
	a8 r a r \tuplet 3/2 { a r a } | a4 g8 e4 r8 | % some peace and security
	a4 a8 a \tuplet 3/2 { a a a } | a8. a a8 a a | r8 a4 g8 e4 | % Well buddy babe you can bet bet bet that the media: 
	r4 a g8 d | b'4 g8 e a4 | g8 e4 r8 b'4 | g8 e4 b'8 g e| % Audio, video, billboard and radio
	e'4. d8 b4 | a4 g a | e4 g2 | r2. | % Grabbing ahold of my mind and my wallet
	r4. \tuplet 4/3 {e8 e e e} | \tuplet 4/3 { g g g g } \tuplet 4/3 { a a a a } | % Benny after Benny and a Billion and a 
	d d d d e e | e8. e \tuplet 4/3 { g8 fis g a } | % billion and a Zillion you would think we’re buying
	\tuplet 4/3 { b4 b b b } | % La la la la 
	b32 b b b 
	b b b b 
	b b b b 
	b b b b 
	b b b b
	b b b b | % lax32 
	a4 g e | g2. | % life after life
	
	% CHORUS
  	r2. | fis8 fis fis fis fis4~ | fis2. | g4 e2 | % up. Heaven better
  	r2. | fis8 fis fis fis fis4~ | fis2. | g4 e2 |
  	r2. | fis8 fis fis fis fis4~ | fis2. | g4 e2 |
  	d4 e d | r2. | cis4 d8 e4. | r4 a,8 cis4 b8 | % That's a lot ... a lot to
  	b4 r2 | % ask.
 }
    
 r4 b'8 a g4 | cis,4 cis g | b 
	
}
  
text = \lyricmode {
 Bye bye by air. In bo -- dy I en -- dure, but
 But why I a -- bide by a bur -- den
 Bye bye, but that bye bye bye
 With that put but by bye bye a -- bide
 
 Hea -- ven bet -- ter be all that.
 Hea -- ven bet -- ter be all that.
 Hea -- ven bet -- ter be all that.
 More than this? That's a lot. A lot to ask.
 
 Of -- fer -- ing a bowl of warm milk
 Pair of hand -- cuffs as a de -- co- ra -- tion
 Fan -- cy brace -- lets
 Tie up. Why a -- ban -- don us?
 Why ab -- an -- don all our prai -- ses.
 
 I am, I am, I am e -- ver your ser -- vant, 
 Mo -- ther of light. A -- ight?
 High -- er. High -- er than a fli -- er.
 Light -- er than a fi__ ah -- re  fly__. Yeah.
 
 Hea -- ven bet -- ter be all that.
 Hea -- ven bet -- ter be all that.
 Hea -- ven bet -- ter be all that.
 More than this? That's a lot. A lot to ask.
}

faLaLa = \lyricmode {
 Fa la la la I I I I
 Born by a tribe I like and love.
 Bold trends I try, would not de -- fy tra -- di -- tion,
 but let me be clear.
 
 Her. Our. All our us com -- bined right here.
 E -- ver come what lie. Ah.
 Hol -- ler hol -- ler. Hip hip.
 Hell of hell of hip hip.
 Hal -- le -- lu -- ja hip hip.
 Hal -- le -- lu -- ja hip hip. What -- 
 
 e -- ver no -- bo -- dy
 Yeah, Ay Yai Yai I I pray with
 all and eve -- ry ti -- ny cor -- ner of my mind
 
 High, why I e -- ver; why I e -- ver lie yeah
 Hey it’s such a game we are play -- ing. Yeah. Hey.
 
 Hey hey hey hip hip by us say what by us what said tru all of my yo -- del 
 Hip hip my yo -- del goin’ up.
 
 Hea -- ven bet -- ter be all that.
 Hea -- ven bet -- ter be all that.
 Hea -- ven bet -- ter be all that.
 More than this? That's a lot. A lot to ask.

}

inThatSpot = \lyricmode {
 In that spot, that mind that got de -- sire less
 Be on that
 Great land that feels
 Bet -- ter than hea -- ven e -- ver
 Soft -- ly as a land -- ing fea -- ther
 Gent -- ly by a well ad -- roit, sweet, nim -- ble fin -- ger of sky
  
 Rol -- ling and a tum- ba- ling a --
 round a -- bout a -- bove a mo -- ther
 Rea -- dy e -- ver. A -- ny wea -- ther.
 Gui -- ded by com -- plete sur -- ren -- der.
 
 Man and wo -- man, hum -- an -- kind we
 All got deep and deep -- er in -- to trou -- ble
 Mmm Build that build that Ba -- bel Tower up
 
 Za ba bap za ba bap
 Za ba bap ba ba ba bap
 Ba ba bap ba ba bap ba ba bap
 Ba ba ba ba bop bop bop bap ba bap
 
 High -- er high -- er high -- er high -- er 
 High -- er high -- er wow!
 
 Hea -- ven bet -- ter be all that.
 Hea -- ven bet -- ter be all that.
 Hea -- ven bet -- ter be all that.
 More than this? That's a lot. A lot to ask.

}

gotItInOurBlood = \lyricmode {
 
 Got it in our blood, pa -- pa. Good, pa -- pa.
 Ma was in the wood cut pile up up far
 Thought I un -- der -- stood what the thought was for
 How ‘bout by lunch I for -- get it?
 
 Eve -- ry day I wake up
 So far. What for?
 But I lie a -- wake a lot late ask not what for
 Walk -- ing on a wide__
 On a wide foot- pound -- ed ground net -- work of trails
 
 Eve -- ry time we think that we’ve found some peace and some
 Peace and some peace and se -- cu -- ri -- ty
 Well bud -- dy babe you can bet bet bet that the me -- di -- a.
 Au -- di -- o, vi -- de -- o, bill -- board and ra -- di -- o
 Grab -- bing a -- hold of my mind and my wal -- let
 Ben -- ny af -- ter Ben -- ny and a
 Bil -- lion and a bil -- lion and a
 Zil -- lion you would think that we’re buy -- ing
 La la la la 
 la la la la 
 la la la la 
 la la la la 
 la la la la 
 la la la la 
 la la la 
 life af -- ter life
 
 Hea -- ven bet -- ter be all that.
 Hea -- ven bet -- ter be all that.
 Hea -- ven bet -- ter be all that.
 More than this? That's a lot. A lot to ask.

}
 


harmonies = \chordmode {
	g2. | g | e:min | e:min | g | g | e:min | e:min |
	g | g | e:min | e:min | g | g | e:min | e:min |
	g | g | e:min | e:min | g | g | e:min | e:min |
	g | g | e:min | e:min |
	
	% Chorus
	b2.:min | b:min | e:min | e:min |
	b2.:min | b:min | e:min | e:min |
	b2.:min | b:min | e:min | e:min |
	g | g | a | a |
	g | g | e:min | e:min 
	
	g2. | g | e:min | e:min | g | g | e:min | e:min |
	g | g | e:min | e:min | g | g | e:min | e:min |
	g | g | e:min | e:min | g | g | e:min | e:min |
	g | g | e:min | e:min | g | g | e:min | e:min |
	g | g | e:min | e:min |
	
	% Chorus
	b2.:min | b:min | e:min | e:min |
	b2.:min | b:min | e:min | e:min |
	b2.:min | b:min | e:min | e:min |
	g | g | a | a |
	b2.:min | b:min | e:min | e:min |
	b2.:min | b:min | e:min | e:min |
	
	g | g | e:min | e:min | g | g | e:min | e:min |
	g | g | e:min | e:min | g | g | e:min | e:min |
	g | g | e:min | e:min | g | g | e:min | e:min |
	g | g | e:min | e:min | g | g | e:min | e:min |
	g | g | e:min | e:min | g | g | e:min | e:min |
	g | g | e:min | e:min | g | g | e:min | e:min |
	g | g | e:min | e:min | g | g | e:min | e:min |
	g | g | e:min | e:min | g | g | e:min | e:min |
	g | g | e:min | e:min | 
	
	% Chorus
	b2.:min | b:min | e:min | e:min |
	b2.:min | b:min | e:min | e:min |
	b2.:min | b:min | e:min | e:min |
	g | g | a | a |
	b2.:min | b:min | e:min | e:min |
	b2.:min | b:min | e:min | e:min |
	
	g | g | e:min | e:min | g | g | e:min | e:min |
	g | g | e:min | e:min | g | g | e:min | e:min |
	g | g | e:min | e:min | g | g | e:min | e:min |
	g | g | e:min | e:min | g | g | e:min | e:min |
	g | g | e:min | e:min | g | g | e:min | e:min |
	g | g | e:min | e:min | g | g | e:min | e:min |
	g | g | e:min | e:min | 
	
	% Chorus
	b2.:min | b:min | e:min | e:min |
	b2.:min | b:min | e:min | e:min |
	b2.:min | b:min | e:min | e:min |
	g | g | a | a |
	b2.:min | b:min | e:min | e:min |
	b2.:min | b:min | e:min | e:min |
	
	g | g | e:min | e:min | g | g | e:min | e:min |
	g | g | e:min | e:min | g | g | e:min | e:min |
	g | g | e:min | e:min | g | g | e:min | e:min |
	g | g | e:min | e:min | g | g | e:min | e:min |
	g | g | e:min | e:min | g | g | e:min | e:min |
	g | g | e:min | e:min | g | g | e:min | e:min |
	g | g | e:min | e:min | g | g | e:min | e:min | 
	
	% Chorus
	b2.:min | b:min | e:min | e:min |
	b2.:min | b:min | e:min | e:min |
	b2.:min | b:min | e:min | e:min |
	g | g | a | a |
	b2.:min | b:min | 
}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \harmonies
    }
  	\new Voice = "voice" { \melody  }
  	\new Lyrics \lyricsto "lyrics" \text
  	\new Lyrics \lyricsto "verseThree" \faLaLa
  	\new Lyrics \lyricsto "verseFour" \inThatSpot 
  	\new Lyrics \lyricsto "verseFive" \gotItInOurBlood 
  >>
  
  \layout { }
  \midi { }
}

%Additional Notes
\markup \fill-line {
\column {
" "
" "
" "
" "
" "
  }
}
