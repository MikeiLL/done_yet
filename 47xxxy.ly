\version "2.18.2"

\header {
  title = "47XXXY"
  composer = "Words and Music by Rivka and Mike iLL"
  tagline = "Copyright Rivka and Mike iLL Kilmer Creative Commons Attribution-NonCommercial BMI - Engraving by Lilypond"
}

\paper{ print-page-number = ##f bottom-margin = 0.5\in }

melody = \relative c'' {
  \clef treble
  \key des \major
  \time 4/4
  \set Score.voltaSpannerDuration = #(ly:make-moment 4/4)
  c4 r8 c4. beses4 | c8 beses4 aes8~ aes2 |
  c4 r8 c4. beses4 | c8 beses4 aes8~ aes2 |
  c4 r8 c4. beses4 | c8 r beses r c4( des8) r |
  r aes aes aes4 aes aes8 | aes4 aes8 r aes2 |
\repeat volta 2 { 
	\new Voice = "words" {
		aes8 aes aes r aes4 aes | beses4 g aes c8 beses |% flower ... toys they are
		c4 c8 beses c r beses c | beses4 beses beses8 aes4. | % used to ... transmissions
		ees'4 ees8 ees4 ees ees8 | des8 r ees ees4.~ ees4 | % plastic .. corral
		ees8 ees ees4 ees ees8 ges~ | ges aes8 aes4 aes r | % crazy ... now
		
		aes,8 aes aes4 ees' ees8 ees | des4 b8 ces4( beses4.) | % neighborhood ... noon
		}
	  aes4 r8 aes4. c4 | des8 r c r des4( ees) | 

	\new Voice = "wordsb" {
		des8 des des4 des des | c beses8 beses4( aes4.) | % dynomite ... doom
		}
	  ees'8 r4 ees4. des4 | c8 r beses4 beses( aes) |

	\new Voice = "wordsc" {
		ees'8 ees ees4 ees ees | des8 des b4 a8 a a4 | % prissy ... battle ground
		d8 ees ees ees ees ees ees4 | d4 ees8 fes4 ees4. | % everybody ... side

		aes,4 aes aes aes8 beses~ | beses beses c4 ees ges8 ges | % kid farside ... makin'
		aes4 aes aes aes8 aes | ges4 fes fes8( ees4.) | % all day ... wood
		des4 ees8 ees4 ees ees8 | des4 ees ees2 | % walked ... class
		des8 ees ees ees ees ees ees ees | ges aes4 beses2( b16 beses | % dancin' ... dress
		aes2)
		}
	  aes4( ees) | fes8 ees des fes ees4( c8) r |
	  des c bes des c4( aes8) r | c r beses r aes2 |
	  aes'4( ees) aes4( ees) | fes8 ees des fes ees4( c8) r |
	  des c bes des c4( aes8) r | c r beses r aes2 |

	\new Voice = "wordsd" {
		aes4 ges8 aes4.~ aes4 | aes ges8 aes4.~ aes4 | % estrogen
		aes4 ges8 aes4. beses4 | aes4 ges aes2 |% doctors came and ... him
		ees'4 ees8 ees4. ees4 | des4 ees8 ees4. ees4 | % testing ... in-
		ees4 ees8 ees4. ees4 | ges aes8 aes4.~ aes4 | % jecting in testosterone

		ges8 aes aes aes aes4 aes8 aes | ges aes aes aes aes4 aes8 aes |
		aes4 aes8 aes aes4 aes8 aes | ges4 fes ees2 | % prods and ... hard looks
		des4 ees ees2 | des8 ees ees ees ees4 ees8 ees | % hushed ... while we
		ees4 ees8 ees ees ees ees ees | ges4 aes aes2 |

		aes8 aes aes aes aes4 aes4 | ges8 aes aes aes aes2 | % soon ... train
		aes4 aes8 aes4 aes8 aes4 | ges4 fes8 ees4.~ ees4 | % don't ... reigns
		des8 ees ees ees ees4 ees8 ees | des ees ees ees ees4 ees8 ees | % heard if ya ... in the
		ees ees ees4 ees8 ees ees ges~ | ges ges aes4 beses2 |
		}
	 
	  aes4( ees) aes4( ees) | fes8 ees des fes ees4( c8) r |
	  des c bes des c4( aes8) r | c r beses r aes2 |

	\new Voice = "chorus" {
		c8 c c c c4 c4 | r des c2 | % callin' rewrite
		c8 c4 c c8 c4 | c des c beses8 beses | % girl and guy it's a
		c4. c4 c8 c4 | c des c2 | % wide ... by
		aes8 aes aes4 aes8 aes aes4 | aes8 aes beses4 beses8( aes4.) |
		}
	}
	  aes4( ees) aes4( ees) | fes8 ees des fes ees4( c8) r |
	  des c bes des c4( aes8) r | c r beses r aes2 |
	  aes'4( ees) aes4( ees) | fes8 ees des fes ees4( c8) r |
	  des c bes des c4( aes8) r | c r4. beses8 r4. | aes1~ | aes \bar "|."
}

text =  \lyricmode {
	Flo -- wer pot boys these | dolls ain't toys. They are |
	used to re -- ceive wa -- king | dream trans -- mis -- sions |
	Plas -- tic hor -- ses es -- | cape cor -- ral |
	Cra -- zy glued horns they're u -- | ni -- corns now |

	Neigh -- bor hood pests in the af -- | ter -- noon |
}

textb = \lyricmode {
	Dy -- ni -- mite mind sets bent | for doom
}

textc = \lyricmode {
	Pris -- sy boy nick name | ric -- o -- chet bat -- tle -- ground |
	Ev -- ery -- bo -- dy rat -- tled out | hide your soft side |

	Kid far -- side a -- lone | if he couldi, ma -- kin' |
	all day trips to the | west side wood. |
	Walked up on by the | eighth grade class |
	Dan -- cin' by the ri -- ver in a | wed -- ding dress.
	}

textd = \lyricmode {
	Es -- tro -- gen | es -- tro -- gen |
	Doc -- tors came and | ques -- tioned him. |
	Tes -- tin blood and | chro -- mo -- somes, in -- |
	jec -- ting in tes -- |tos -- te -- rone.

	Tell us what you want and we'll | tell you why it's wrong with our |
	prods and our pokes and our | long hard looks. |
	Hush tone talks, | ho -- ney take a walk while we |
	chart your con -- di -- tion in our | clip board books. |

	Soon as he was a -- ble | hea -- ded for the trains |
	Don't com -- plain you just | grab the reigns. |
	Heard if you can make it there's | al -- ways been a place at the |
	heart of Fringe Ci -- ty for boys | who rock lace. |
}

chorus = \lyricmode {
	Cal -- lin' for a rule book | re -- write |
	No hard line be -- tween | girl and guy. It's a |
	wide spec -- trum as | pro -- ven by |
	chro -- mo -- some for -- ty -- six | trip -- ple X Y |
}

choruschrds = \chordmode {
	aes1 | aes | aes | aes |
	ges:m | ges:m | ges:m | aes |
	}

aaaa = \chordmode { aes1 | aes | aes | aes | }
ggga = \chordmode { ges1:m | ges:m | ges:m | aes | }
aggg = \chordmode { aes1 | ges:m | ges:m | ges:m | }
gaaa = \chordmode { ges1:m | aes | aes | aes | }
agga = \chordmode { aes1 | ges:m | ges:m | aes | }
aaag = \chordmode { aes1 | aes | aes | ges:m | }
% agaa = \chordmode { aes1 | ges:m | aes | aes | }
gggg = \chordmode { ges1:m | ges:m | ges:m | ges:m | }
inst = \chordmode { aes1 | ges:m | ges:m | ges2:m aes | }
ending = \chordmode { aes1 | ges:m | ges:m | ges:m |  aes | aes | }
test = \chordmode { c1 | }

harmonies = {
	\choruschrds
	\aaaa % flower ... transmissions 
	\ggga % plastic ... now
	\aggg % neighbornood ... afternoon
	\gaaa % dynomite ... doom
	\agga % prissy ... soft side
	\aaag % kid ... wood
	\gggg % walked ... dress
	\inst
	\inst
	\aaaa % estrogen ... questioned him
	\ggga % testin' ... testosterone
	\aaag % tell ... looks
	\ggga % hushed ... books
	\aaag % soon ... reigns
	\gggg % heard ... lace
	\choruschrds
	\inst
	\inst
	\ending
}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \harmonies
    }
    \new Voice = "one" { \melody }
    \new Lyrics \lyricsto "words" \text
    \new Lyrics \lyricsto "wordsb" \textb
    \new Lyrics \lyricsto "wordsc" \textc
    \new Lyrics \lyricsto "wordsd" \textd
    \new Lyrics \lyricsto "chorus" \chorus
  >>
  \layout { }
  \midi { }
}

\markup \fill-line {
	\column {
		" "
		"Additional 47XXXY verses:"
		"  "
	}
}

%Additional Verses
\markup \fill-line {
\column {	
	    " "

	    "Nest-headed girl rude lip, hard ball"

	    "Dirty hands, bloody knees and a broke tooth smile"

	    "BMX-ing construction piles."
	    "		Dares that she barely just survives."

	    "Hits the trail, hits her moon,"

	    "Ditch routines that you can’t resume"

	    "Made it to the coast with the wits she had"

	    "Dying brake pads, thousand mile ride."

	    "Seized-up fried and dies, but all good,"

	    "One last stretch she can make by foot."

	    "Work boots stomp stink-weed glass,"

	    "Results to deliver in a welding mask."
	}
\column {
	    "  "
	    "Nitrogen, glycerine, substitute for estrogen"

	    "Super-octane testosterone"

	    "Distilled by the mother of the one-eyed crone."

	    "Androgynous secrets under told"

	    "Provide the fuel to re-cast the mold."

	    "She is of the ilk that’s wild and bold,"

	    "Whos endeavors have enabled us all to unfold."

	    "Games don’t tell the boys from the girls."

	    "Looks don’t tell the women from the men."

	    "Been that way since the end of the world,"

	    "It’ll be that way ’till we start again."
	}
}
