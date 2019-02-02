%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% gipaper.cls
%
% INSTRUCTIONS FOR USE (Citations follow)
%
%
% END OF INSTRUCTIONS FOR USE
%
% LaTeX class file for Proceedings of Graphics Interface
% Rob Walker (walker@cs.ubc.ca)
% 24 Oct 1997
% Modified Feb 2000 by Michael McCool
%
% Modified from gi.sty:
%
% latex style for Proceedings of Graphics Interface
% Luiz Henrique de Figueiredo (lhf@csg.uwaterloo.ca) 
% 19 Feb 96
%
% and from article.cls:
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
%% This is file `article.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% classes.dtx  (with options: `article')
%% 
%% This is a generated file.
%% 
%% Copyright 1993 1994 1995 1996 1997
%% The LaTeX3 Project and any individual authors listed elsewhere
%% in this file.
%% 
%% For further copyright information, and conditions for modification
%% and distribution, see the file legal.txt, and any other copyright
%% notices in this file.
%% 
%% This file is part of the LaTeX2e system.
%% ----------------------------------------
%%   This system is distributed in the hope that it will be useful,
%%   but WITHOUT ANY WARRANTY; without even the implied warranty of
%%   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
%% 
%%   For error reports concerning UNCHANGED versions of this file no
%%   more than one year old, see bugs.txt.
%% 
%%   Please do not request updates from us directly.  Primary
%%   distribution is through the CTAN archives.
%% 
%% 
%% IMPORTANT COPYRIGHT NOTICE:
%% 
%% You are NOT ALLOWED to distribute this file alone.
%% 
%% You are allowed to distribute this file under the condition that it
%% is distributed together with all the files listed in manifest.txt.
%% 
%% If you receive only some of these files from someone, complain!
%% 
%% 
%% Permission is granted to copy this file to another file with a
%% clearly different name and to customize the declarations in that
%% copy to serve the needs of your installation, provided that you
%% comply with the conditions in the file legal.txt.
%% 
%% However, NO PERMISSION is granted to generate or to distribute a
%% modified version of this file under its original name.
%% 
%% You are NOT ALLOWED to change this file.
%% 
%% 
%% MODIFICATION ADVICE:
%% 
%% If you want to customize this file, it is best to make a copy of
%% the source file(s) from which it was produced.  Use a different
%% name for your copy(ies) and modify the copy(ies); this will ensure
%% that your modifications do not get overwritten when you install a
%% new release of the standard system.  You should also ensure that
%% your modified source file does not generate any modified file with
%% the same name as a standard file.
%% 
%% You can then easily distribute your modifications by distributing
%% the modified and renamed copy of the source file, taking care to
%% observe the conditions in legal.txt; this will ensure that other
%% users can safely use your modifications.
%% 
%% You will also need to produce your own, suitably named, .ins file to
%% control the generation of files from your source file; this file
%% should contain your own preambles for the files it generates, not
%% those in the standard .ins files.
%% 
%% The names of the source files used are shown above.
%% 
%% 
%% 
%% \CharacterTable
%%  {Upper-case    \A\B\C\D\E\F\G\H\I\J\K\L\M\N\O\P\Q\R\S\T\U\V\W\X\Y\Z
%%   Lower-case    \a\b\c\d\e\f\g\h\i\j\k\l\m\n\o\p\q\r\s\t\u\v\w\x\y\z
%%   Digits        \0\1\2\3\4\5\6\7\8\9
%%   Exclamation   \!     Double quote  \"     Hash (number) \#
%%   Dollar        \$     Percent       \%     Ampersand     \&
%%   Acute accent  \'     Left paren    \(     Right paren   \)
%%   Asterisk      \*     Plus          \+     Comma         \,
%%   Minus         \-     Point         \.     Solidus       \/
%%   Colon         \:     Semicolon     \;     Less than     \<
%%   Equals        \=     Greater than  \>     Question mark \?
%%   Commercial at \@     Left bracket  \[     Backslash     \\
%%   Right bracket \]     Circumflex    \^     Underscore    \_
%%   Grave accent  \`     Left brace    \{     Vertical bar  \|
%%   Right brace   \}     Tilde         \~}

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{gipaper}[2000/02/14]

% GI papers are of two types: submitted and accepted; these are options, and
% the default is accepted
%
% Submitted papers are doublespaced and single-columned, there is a titlepage 
% with identifying information and the title (without author) is repeated
% on the first page.
%
% Accepted papers are singlespaced and double-columned, with no titlepage.

\renewcommand{\familydefault}{ptm}

\let\gi@pagestyle=\pagestyle
\let\pagestyle=\@gobble
\let\gi@thispagestyle=\thispagestyle
\let\thispagestyle=\@gobble
\let\gi@twocolumn=\twocolumn
\let\gi@onecolumn=\onecolumn
\let\twocolumn=\relax
\let\onecolumn=\relax
\let\gi@thanks=\thanks
\let\thanks=\@gobble
\let\gi@bibliographystyle=\bibliographystyle
\let\bibliographystyle=\@gobble
\let\maketitle=\relax

\@twosidetrue
\newif\if@restonecol
\newif\if@submission
\@submissionfalse
\newif\if@showauthors
\@showauthorstrue
\gi@pagestyle{empty}
\newif\if@ffilstyleoneeach
\newif\if@ffilstylesingle
\@ffilstyleoneeachtrue
\@ffilstylesinglefalse

\if@compatibility\else
\DeclareOption{submission}{%
  \gi@pagestyle{plain}%
  \@submissiontrue%
  \@showauthorsfalse%
  \setlength\overfullrule{5pt}%
  \AtEndOfPackage{\RequirePackage{doublespace}}%
}
\DeclareOption{accepted}{%
  \gi@pagestyle{empty}%
  \@submissionfalse%
  \@showauthorstrue%
  \setlength\overfullrule{0pt}%
}
\DeclareOption{single}{%
  \@ffilstyleoneeachfalse
  \@ffilstylesingletrue
}
\DeclareOption{oneeach}{%
  \@ffilstyleoneeachtrue
  \@ffilstylesinglefalse
}
\DeclareOption{multiple}{%
  \@ffilstyleoneeachfalse
  \@ffilstylesinglefalse
}
\ProcessOptions
\fi

\input{size10.clo}
\setlength\lineskip{1\p@}
\setlength\normallineskip{1\p@}
\renewcommand\baselinestretch{}
\setlength\parskip{0\p@ \@plus \p@}
\@lowpenalty   51
\@medpenalty  151
\@highpenalty 301
\setcounter{topnumber}{2}
\renewcommand\topfraction{.7}
\setcounter{bottomnumber}{1}
\renewcommand\bottomfraction{.3}
\setcounter{totalnumber}{3}
\renewcommand\textfraction{.2}
\renewcommand\floatpagefraction{.5}
\setcounter{dbltopnumber}{2}
\renewcommand\dbltopfraction{.7}
\renewcommand\dblfloatpagefraction{.5}

\def\@innertitle{%
  \null\vskip 6mm
  \begin{center}%
   {\Large\bf \@title \par}%
   \vskip 1.5em
   {\if@showauthors%
      \normalsize\authors
      \if@ffilstyleoneeach\else
        \par\vskip 0.5em
        \affiliations
      \fi
    \fi}%
  \end{center}%
  \par
  \vskip 1.5em}

\if@submission%
  \newcommand\gi@maketitle{%
    \begingroup
      \renewcommand\thefootnote{\@fnsymbol\c@footnote}%
      \begingroup
        \renewcommand{\baselinestretch}{1.0}\normalsize%
        \gi@thispagestyle{empty}%
        \let\footnotesize\small
        \let\footnoterule\relax
        \let \footnote \thanks
        \null\vfil
        {\@showauthorstrue
         \lineskip .75em
         \@innertitle}
        {\centerline{\it\abstractname}\noindent\@abstract\par}
        \ifx\@resume\@empty
        \else
          \medskip
          {\frenchspacing\centerline{\it R\'esum\'e}\noindent\@resume\par}
        \fi
        \@thanks
        \vfil\null
        \cleardoublepage
        \setcounter{page}\@ne
      \endgroup%
      \@innertitle
      {\centerline{\it\abstractname}\noindent\@abstract\par}
      \ifx\@resume\@empty
      \else
        \medskip
        {\frenchspacing\centerline{\it R\'esum\'e}\noindent\@resume\par}
      \fi
      \setcounter{footnote}{0}%
      \global\let\thanks\relax
      \global\let\gi@maketitle\relax
      \global\let\@thanks\@empty
      \global\let\@author\@empty
      \global\let\@date\@empty
      \global\let\@title\@empty
      \global\let\title\relax
      \global\let\author\relax
      \global\let\date\relax
      \global\let\and\relax
    \endgroup
  }
\else
  \newcommand\gi@maketitle{%
    \par
    \begingroup
    \renewcommand\thefootnote{\@fnsymbol\c@footnote}%
    \def\@makefnmark{\rlap{\@textsuperscript{\normalfont\@thefnmark}}}%
    \long\def\@makefntext##1{\parindent 1em\noindent
            \hb@xt@1.8em{%
                \hss\@textsuperscript{\normalfont\@thefnmark}}##1}%
    \ifnum \col@number=\@ne
      \@maketitle
      {\centerline{\it\abstractname}\noindent\@abstract\par}
      \ifx\@resume\@empty
      \else
        \medskip
        {\frenchspacing\centerline{\it R\'esum\'e}\noindent\@resume\par}
      \fi
    \else
      \gi@twocolumn[\@maketitle]%
      {\centerline{\it\abstractname}\noindent\@abstract\par}
      \ifx\@resume\@empty
      \else
        \medskip
        {\frenchspacing\centerline{\it R\'esum\'e}\noindent\@resume\par}
      \fi
    \fi
    %\@thanks
    \endgroup
    \setcounter{footnote}{0}%
    \global\let\thanks\relax
    \global\let\gi@maketitle\relax
    \global\let\@maketitle\relax
    \global\let\@thanks\@empty
    \global\let\@author\@empty
    \global\let\@date\@empty
    \global\let\@title\@empty
    \global\let\title\relax
    \global\let\author\relax
    \global\let\date\relax
    %\global\let\and\relax
  }
  \def\@maketitle{\newpage\@innertitle}
\fi

% Should we eliminate part, paragraph, and subparagraph?
\setcounter{secnumdepth}{3}
\newcounter{part}
\newcounter{section}
\newcounter{subsection}[section]
\newcounter{subsubsection}[subsection]
\newcounter{paragraph}[subsubsection]
\newcounter{subparagraph}[paragraph]
\renewcommand\thepart{\@Roman\c@part}
\renewcommand\thesection{\@arabic\c@section}
\renewcommand\thesubsection{\thesection.\@arabic\c@subsection}
\renewcommand\thesubsubsection{\thesubsection .\@arabic\c@subsubsection}
\renewcommand\theparagraph{\thesubsubsection.\@arabic\c@paragraph}
\renewcommand\thesubparagraph{\theparagraph.\@arabic\c@subparagraph}
\newcommand\part{\par
   \addvspace{4ex}%
   \@afterindentfalse
   \secdef\@part\@spart}

\def\@part[#1]#2{%
    \ifnum \c@secnumdepth >\m@ne
      \refstepcounter{part}%
      \addcontentsline{toc}{part}{\thepart\hspace{1em}#1}%
    \else
      \addcontentsline{toc}{part}{#1}%
    \fi
    {\parindent \z@ \raggedright
     \interlinepenalty \@M
     \normalfont
     \ifnum \c@secnumdepth >\m@ne
       \Large\bfseries \partname~\thepart
       \par\nobreak
     \fi
     \huge \bfseries #2%
     \markboth{}{}\par}%
    \nobreak
    \vskip 3ex
    \@afterheading}
\def\@spart#1{%
    {\parindent \z@ \raggedright
     \interlinepenalty \@M
     \normalfont
     \huge \bfseries #1\par}%
     \nobreak
     \vskip 3ex
     \@afterheading}

\newcommand\section{\@startsection {section}{1}{\z@}%
  {-2ex}%
  {0.6ex}%
  {\normalfont\normalsize\bfseries}}
\newcommand\subsection{\@startsection{subsection}{2}{\z@}%
  {-1ex}%
  {0.3ex}%
  {\normalfont\normalsize\bfseries}}
\newcommand\subsubsection@{\@startsection{subsubsection}{3}{\z@}%
  {-1ex}%
  {0.3ex}%
  {\normalfont\normalsize\bfseries}}
\long\def\subsubsection#1{\subsubsection@*{#1}}

\newcommand\paragraph{\@startsection{paragraph}{4}{\z@}%
  {-\bigskipamount}%
  {0.01mm}%
  {\normalsize\bf}}
\newcommand\subparagraph{\@startsection{subparagraph}{5}{\parindent}%
  {-\bigskipamount}%
  {0.01mm}%
  {\normalsize\bf}}

\if@submission
  \setlength\leftmargini  {2.5em}
\else
  \setlength\leftmargini  {2em}
\fi
\leftmargin               \leftmargini
\setlength\leftmarginii   {2.2em}
\setlength\leftmarginiii  {1.87em}
\setlength\leftmarginiv   {1.7em}
\if@submission
  \setlength\leftmarginv  {1em}
  \setlength\leftmarginvi {1em}
\else
  \setlength\leftmarginv  {.5em}
  \setlength\leftmarginvi {.5em}
\fi
\setlength\labelsep       {.5em}
\setlength\labelwidth     {\leftmargini}
\addtolength\labelwidth   {-\labelsep}

\@beginparpenalty         -\@lowpenalty
\@endparpenalty           -\@lowpenalty
\@itempenalty             -\@lowpenalty

\renewcommand\theenumi{\@arabic\c@enumi}
\renewcommand\theenumii{\@alph\c@enumii}
\renewcommand\theenumiii{\@roman\c@enumiii}
\renewcommand\theenumiv{\@Alph\c@enumiv}
\newcommand\labelenumi{\theenumi.}
\newcommand\labelenumii{(\theenumii)}
\newcommand\labelenumiii{\theenumiii.}
\newcommand\labelenumiv{\theenumiv.}
\renewcommand\p@enumii{\theenumi}
\renewcommand\p@enumiii{\theenumi(\theenumii)}
\renewcommand\p@enumiv{\p@enumiii\theenumiii}
\newcommand\labelitemi{\textbullet}
\newcommand\labelitemii{\normalfont\bfseries \textendash}
\newcommand\labelitemiii{\textasteriskcentered}
\newcommand\labelitemiv{\textperiodcentered}
\newenvironment{description}
               {\list{}{\labelwidth\z@ \itemindent-\leftmargin
                        \let\makelabel\descriptionlabel}}
               {\endlist}
\newcommand*\descriptionlabel[1]{\hspace\labelsep
                                \normalfont\bfseries #1}

\def\@abstract{}
\long\def\abstract#1{\long\gdef\@abstract{#1}}
\def\@resume{}
\long\def\resume#1{\long\gdef\@resume{#1}}

\newenvironment{verse}
               {\let\\\@centercr
                \list{}{\itemsep      \z@
                        \itemindent   -1.5em%
                        \listparindent\itemindent
                        \rightmargin  \leftmargin
                        \advance\leftmargin 1.5em}%
                \item\relax}
               {\endlist}
\newenvironment{quotation}
               {\list{}{\listparindent 1.5em%
                        \itemindent    \listparindent
                        \rightmargin   \leftmargin
                        \parsep        \z@ \@plus\p@}%
                \item\relax}
               {\endlist}
\newenvironment{quote}
               {\list{}{\rightmargin\leftmargin}%
                \item\relax}
               {\endlist}

\newcommand\appendix{\par
  \setcounter{section}{0}%
  \setcounter{subsection}{0}%
  \renewcommand\thesection{\@Alph\c@section}}

\setlength\arraycolsep{5\p@}
\setlength\tabcolsep{6\p@}
\setlength\arrayrulewidth{.4\p@}
\setlength\doublerulesep{2\p@}
\setlength\tabbingsep{\labelsep}
\skip\@mpfootins = \skip\footins
\setlength\fboxsep{3\p@}
\setlength\fboxrule{.4\p@}
\renewcommand\theequation{\@arabic\c@equation}

\newcounter{figure}
\renewcommand\thefigure{\@arabic\c@figure}
\def\fps@figure{tbp}
\def\ftype@figure{1}
\def\ext@figure{lof}
\def\fnum@figure{\figurename~\thefigure}
\newenvironment{figure}
               {\@float{figure}}
               {\end@float}
\newenvironment{figure*}
               {\@dblfloat{figure}}
               {\end@dblfloat}
\newcounter{table}
\renewcommand\thetable{\@arabic\c@table}
\def\fps@table{tbp}
\def\ftype@table{2}
\def\ext@table{lot}
\def\fnum@table{\tablename~\thetable}
\newenvironment{table}
               {\@float{table}}
               {\end@float}
\newenvironment{table*}
               {\@dblfloat{table}}
               {\end@dblfloat}
\newlength\abovecaptionskip
\newlength\belowcaptionskip
\setlength\abovecaptionskip{10\p@}
\setlength\belowcaptionskip{0\p@}
\long\def\@makecaption#1#2{%
  \vskip\abovecaptionskip\sl
  \sbox\@tempboxa{#1: #2}%
  \ifdim \wd\@tempboxa >\hsize
    #1: #2\par
  \else
    \global \@minipagefalse
    \hb@xt@\hsize{\hfil\box\@tempboxa\hfil}%
  \fi
  \vskip\belowcaptionskip}

\DeclareOldFontCommand{\rm}{\normalfont\rmfamily}{\mathrm}
\DeclareOldFontCommand{\sf}{\normalfont\sffamily}{\mathsf}
\DeclareOldFontCommand{\tt}{\normalfont\ttfamily}{\mathtt}
\DeclareOldFontCommand{\bf}{\normalfont\bfseries}{\mathbf}
\DeclareOldFontCommand{\it}{\normalfont\itshape}{\mathit}
\DeclareOldFontCommand{\sl}{\normalfont\slshape}{\@nomath\sl}
\DeclareOldFontCommand{\sc}{\normalfont\scshape}{\@nomath\sc}
\DeclareRobustCommand*\cal{\@fontswitch\relax\mathcal}
\DeclareRobustCommand*\mit{\@fontswitch\relax\mathnormal}

\newcommand\@pnumwidth{1.55em}
\newcommand\@tocrmarg{2.55em}
\newcommand\@dotsep{4.5}
\setcounter{tocdepth}{3}
\newcommand\tableofcontents\relax
\newcommand*\l@part[2]{%
  \ifnum \c@tocdepth >-2\relax
    \addpenalty\@secpenalty
    \addvspace{2.25em \@plus\p@}%
    \begingroup
      \setlength\@tempdima{3em}%
      \parindent \z@ \rightskip \@pnumwidth
      \parfillskip -\@pnumwidth
      {\leavevmode
       \large \bfseries #1\hfil \hb@xt@\@pnumwidth{\hss #2}}\par
       \nobreak
       \if@compatibility
         \global\@nobreaktrue
         \everypar{\global\@nobreakfalse\everypar{}}%
      \fi
    \endgroup
  \fi}
\newcommand*\l@section[2]{%
  \ifnum \c@tocdepth >\z@
    \addpenalty\@secpenalty
    \addvspace{1.0em \@plus\p@}%
    \setlength\@tempdima{1.5em}%
    \begingroup
      \parindent \z@ \rightskip \@pnumwidth
      \parfillskip -\@pnumwidth
      \leavevmode \bfseries
      \advance\leftskip\@tempdima
      \hskip -\leftskip
      #1\nobreak\hfil \nobreak\hb@xt@\@pnumwidth{\hss #2}\par
    \endgroup
  \fi}
\newcommand*\l@subsection{\@dottedtocline{2}{1.5em}{2.3em}}
\newcommand*\l@subsubsection{\@dottedtocline{3}{3.8em}{3.2em}}
\newcommand*\l@paragraph{\@dottedtocline{4}{7.0em}{4.1em}}
\newcommand*\l@subparagraph{\@dottedtocline{5}{10em}{5em}}
\newcommand\listoffigures\relax
\newcommand*\l@figure{\@dottedtocline{1}{1.5em}{2.3em}}
\newcommand\listoftables\relax
\let\l@table\l@figure

\newdimen\bibindent
\setlength\bibindent{1.5em}
\newenvironment{thebibliography}[1]
     {\section*{\refname
        \@mkboth{\MakeUppercase\refname}{\MakeUppercase\refname}}%
      \list{\@biblabel{\@arabic\c@enumiv}}%
           {\settowidth\labelwidth{\@biblabel{#1}}%
            \leftmargin\labelwidth
            \advance\leftmargin\labelsep
            \@openbib@code
            \parsep \z@
            \usecounter{enumiv}%
            \let\p@enumiv\@empty
            \renewcommand\theenumiv{\@arabic\c@enumiv}}%
      \sloppy
      \clubpenalty4000
      \@clubpenalty \clubpenalty
      \widowpenalty4000%
      \sfcode`\.\@m}
     {\def\@noitemerr
       {\@latex@warning{Empty `thebibliography' environment}}%
      \endlist}
\newcommand\newblock{\hskip .11em\@plus.33em\@minus.07em}
\let\@openbib@code\@empty

\newenvironment{theindex}
               {\if@submission
                  \@restonecoltrue
                \else
                  \@restonecolfalse
                \fi
                \columnseprule \z@
                \columnsep 35\p@
                \gi@twocolumn[\section{\indexname}]%
                \@mkboth{\MakeUppercase\indexname}%
                        {\MakeUppercase\indexname}%
                %\gi@thispagestyle{empty}%
                \parindent\z@
                \parskip\z@ \@plus .3\p@\relax
                \let\item\@idxitem}
               {\if@restonecol\gi@onecolumn\else\clearpage\fi}
\newcommand\@idxitem{\par\hangindent 40\p@}
\newcommand\subitem{\@idxitem \hspace*{20\p@}}
\newcommand\subsubitem{\@idxitem \hspace*{30\p@}}
\newcommand\indexspace{\par \vskip 10\p@ \@plus5\p@ \@minus3\p@\relax}
\renewcommand\footnoterule{%
  \kern-3\p@
  \hrule\@width.4\columnwidth
  \kern2.6\p@}
\newcommand\@makefntext[1]{%
    \parindent 1em%
    \noindent
    \hb@xt@1.8em{\hss\@makefnmark}#1}

\newcommand\contentsname{Contents}
\newcommand\listfigurename{List of Figures}
\newcommand\listtablename{List of Tables}
\newcommand\refname{References}
\newcommand\indexname{Index}
\newcommand\figurename{Figure}
\newcommand\tablename{Table}
\newcommand\partname{Part}
\newcommand\appendixname{Appendix}
\newcommand\abstractname{Abstract}
\newcommand\today{}
\edef\today{\ifcase\month\or
  January\or February\or March\or April\or May\or June\or
  July\or August\or September\or October\or November\or December\fi
  \space\number\day, \number\year}
\setlength\columnsep{10\p@}
\setlength\columnseprule{0\p@}
\pagenumbering{arabic}

\if@twoside
\else
  \raggedbottom
\fi
\if@submission
  \gi@onecolumn
\else
  \gi@twocolumn
\fi
\sloppy
\flushbottom
\parindent 1em

% page size
\oddsidemargin   -0.4mm  % 25mm
\evensidemargin  -0.4mm  % 25mm
\topmargin       -0.4mm  % 25mm
\textheight       222mm
\textwidth        165mm  % 2 80mm columns plus 5mm gutter
\columnsep          5mm
\columnseprule      0pt
\headheight         0pt
\headsep            0pt

% Keywords environment
\newenvironment{keywords}{

\medskip\noindent\it Key words:}{}

% Acknowledgements
% It would be better if this were an environment, but I can't figure out how
% to group everything in it and discard it, without having a warning printed.
\if@submission
  \long\def\acknowledgements#1{}
\else
  \long\def\acknowledgements#1{\section*{Acknowledgements}#1}%\medskip\centerline{\bf Acknowledgements}\parindent=0pt#1\par}%
\fi

% Here's the affiliation system
\if@ffilstylesingle
  \def\affiliations{}
  \def\affiliation#1{\gdef\affiliations{#1}}
\else
  \if@ffilstyleoneeach\else%

    \newcounter{@ffilcount}

    % \newaffiliation takes id-string and affiliation info as args
    \newcommand{\newaffiliation}[2]{%
      \addtocounter{@ffilcount}{1}%
      \expandafter\xdef\csname affilid@#1\expandafter\endcsname\expandafter{\the@ffilcount}%
        \expandafter\gdef\csname affilname@\the@ffilcount\expandafter\endcsname\expandafter{#2}%
      \if@submission\else%
        \expandafter\gdef\csname affilletter@\the@ffilcount\expandafter\endcsname\expandafter{\@empty}%
        \global\newcounter{affilcount@\the@ffilcount}%
      \fi
    }
  \fi
\fi

\newcounter{@uthorcount}

% \newauthor takes id-string, author full-name, and
% mailing address (incl. telephone number, fax number, and email if desired)
% as args
\newcommand{\newauthor}[3]{%
  \addtocounter{@uthorcount}{1}%
  \expandafter\xdef\csname authorid@#1\expandafter\endcsname\expandafter{\the@uthorcount}%
  % Not being used --- \expandafter\gdef\csname authorsurname@\the@uthorcount\expandafter\endcsname\expandafter{#2}%
  \expandafter\gdef\csname authorfullname@\the@uthorcount\expandafter\endcsname\expandafter{#2}%
  \expandafter\gdef\csname authoraddress@\the@uthorcount\expandafter\endcsname\expandafter{#3}%
  \if@submission%
    \expandafter\gdef\csname authoraffils@\the@uthorcount\expandafter\endcsname\expandafter{}%
  \else%
    \global\newcounter{authoraffilcount@\the@uthorcount}
    \expandafter\gdef\csname authoraffils@\the@uthorcount\expandafter\endcsname\expandafter{}%
  \fi%
}

\def\this@uthnum#1{\csname authorid@#1\endcsname}

\def\@contact@uth{1}
\def\contactauthor#1{\xdef\@contact@uth{\this@uthnum{#1}}}

\if@ffilstylesingle\else
  \if@ffilstyleoneeach\else
    
    \def\this@ffilnum#1{\csname affilid@#1\endcsname}
    % \affiliate takes author-id and affiliation-id
    \if@submission
      \newcommand{\affiliate}[2]{%
        \def\\{\noexpand\\}%
        \edef\temp@uth{\this@uthnum{#1}}%
        \edef\old@ffil{\csname authoraffils@\temp@uth\endcsname}%
        \edef\mynum{\this@ffilnum{#2}}
        \edef\temp@ffil{\csname affilname@\mynum\endcsname}%
        \ifx%
          \old@ffil\@empty%
          \expandafter\xdef\csname authoraffils@\temp@uth\expandafter\endcsname\expandafter{\temp@ffil}%
        \fi%
      }
    \else
      \newcommand{\affiliate}[2]{%
        \edef\temp@uth{\this@uthnum{#1}}%
        \edef\mynum{\this@ffilnum{#2}}
        \global\stepcounter{affilcount@\mynum}
        \global\stepcounter{authoraffilcount@\temp@uth}
        \edef\@uthaffilcount{\csname theauthoraffilcount@\temp@uth\endcsname}
        \expandafter\xdef\csname authoraffils@\temp@uth @\@uthaffilcount\expandafter\endcsname\expandafter{\mynum}%
      }
    \fi

    \if@submission\else%
      \def\convert@ffils{%
        \addtocounter{@ffilcount}{1}%
        \addtocounter{@uthorcount}{1}%
        \newcounter{tempconv@ffils}%
        \newcounter{tempconvnum@ffils}%
        \setcounter{tempconv@ffils}{1}%
        \convert@ffilshelper%
        \setcounter{tempconv@ffils}{1}%
        \setcounter{tempconvnum@ffils}{1}%
        \assign@ffilsletters%
        \addtocounter{@ffilcount}{-1}%
        \addtocounter{@uthorcount}{-1}%
      }
      \def\convert@ffilshelper{%
        \ifnum\the@ffilcount>\thetempconv@ffils%
          \edef\mycount{\csname theaffilcount@\thetempconv@ffils\endcsname}%
          \ifnum\mycount>0%
            \global\addtocounter{tempconvnum@ffils}{1}%
            \expandafter\xdef\csname affilletter@\thetempconv@ffils\expandafter\endcsname\expandafter{\ifcase\thetempconvnum@ffils\or a\or b\or c\or d\or e\or f\or g\or h\or i\or j\or k\or l\or m\or n\or o\or p\or q\or r\or s\or t\or u\or v\or w\or x\or y\or z\else\fi}%
          \fi%
          \global\addtocounter{tempconv@ffils}{1}%
          \convert@ffilshelper%
        \fi%
      }
      \def\assign@ffilsletters{%
        \ifnum\the@uthorcount>\thetempconv@ffils%
          \edef\@uthaffilcount{\csname theauthoraffilcount@\thetempconv@ffils\endcsname}%
          \ifnum\@uthaffilcount>0
            \edef\old@ffil{\csname authoraffils@\thetempconv@ffils\endcsname}%
            \expandafter\xdef\csname temp@ffil\expandafter\endcsname\expandafter{\csname authoraffils@\thetempconv@ffils @\thetempconvnum@ffils\expandafter\endcsname}%
            \ifx\old@ffil\@empty%
              \expandafter\xdef\csname authoraffils@\thetempconv@ffils\expandafter\endcsname\expandafter{\csname affilletter@\temp@ffil\endcsname}%
            \else%
              \expandafter\xdef\csname authoraffils@\thetempconv@ffils\expandafter\endcsname\expandafter{\old@ffil, \csname affilletter@\temp@ffil\endcsname}%
            \fi%
          \fi%
          \global\addtocounter{tempconvnum@ffils}{1}%
          \ifnum\@uthaffilcount<\thetempconvnum@ffils%
            \global\setcounter{tempconvnum@ffils}{1}%
            \global\addtocounter{tempconv@ffils}{1}%
          \fi%
          \assign@ffilsletters%
        \fi%
      }
    \fi%
  \fi%
\fi

\newcounter{@uthtempcount}
\def\authors{%
  \if@submission\else%
    \if@ffilstylesingle\else%
      \if@ffilstyleoneeach\else%
        \convert@ffils
      \fi%
    \fi%
  \fi%
  \renewcommand{\thefootnote}{\fnsymbol{footnote}}
  \begin{tabular}[t]{c}%
    \csname authorfullname@1\endcsname%
    \if@submission\else%
      \if@ffilstyleoneeach%
        \\%
        \csname authoraddress@1\endcsname%
      \fi%
    \fi%
    \if@submission%
      \ifnum\@contact@uth=\@ne%
        \gi@thanks{Contact author}%
      \fi%
      \\%
      {\let\\=\relax%
       \xdef\temp@affils{\csname authoraffils@1\endcsname}}%
      \ifx\temp@affils\@empty%
        \errmessage{Every author must have at least one affiliation}
      \else%
        \csname authoraffils@1\endcsname\\%
      \fi%
      {\let\\=\relax%
       \xdef\temp@address{\csname authoraddress@1\endcsname}}%
      \ifx\temp@address\@empty%
      \else%
        \csname authoraddress@1\endcsname\\%
      \fi%
    \else%
      \if@ffilstylesingle\else%
        \if@ffilstyleoneeach\else%
          \ifnum\the@ffilcount>\@ne%
            $^{\csname authoraffils@1\endcsname}$%
          \fi%
        \fi%
      \fi%
    \fi%
  \end{tabular}%
  \ifnum\the@uthorcount>\@ne%
    \setcounter{@uthtempcount}{2}%
    \addtocounter{@uthorcount}{1}%
    \@authors%
    \addtocounter{@uthorcount}{-1}%
  \fi%
}

\def\@authors{%
  \ifnum\the@uthorcount>\the@uthtempcount%
    \hskip 1em \@plus .17fil%
    \begin{tabular}[t]{c}%
      \csname authorfullname@\the@uthtempcount\endcsname%
      \if@submission\else%
        \if@ffilstyleoneeach%
          \\%
          \csname authoraddress@\the@uthtempcount\endcsname%
        \fi%
      \fi%
      \if@submission%
        \ifnum\@contact@uth=\the@uthtempcount%
          \gi@thanks{Contact author}%
        \fi%
        \\%
        \csname authoraffils@\the@uthtempcount\endcsname\\%
        {\let\\=\relax%
         \xdef\temp@address{\csname authoraddress@\the@uthtempcount\endcsname}}%
        \ifx\temp@address\@empty%
        \else%
          \csname authoraddress@\the@uthtempcount\endcsname\\%
        \fi%
      \else%
        \if@ffilstylesingle\else%
          \if@ffilstyleoneeach\else%
            \ifnum\the@ffilcount>\@ne%
              $^{\csname authoraffils@\the@uthtempcount\endcsname}$%
            \fi%
          \fi%
        \fi%
      \fi%
    \end{tabular}%
    \addtocounter{@uthtempcount}{1}%
    \@authors%
  \fi%
}

\newcounter{@ffiltempcount}
\if@submission
  \def\affiliations{}
\else
  \def\affiliations{%
    \begin{tabular}[t]{c}%
      \if@ffilstylesingle\else%
        \if@ffilstyleoneeach\else%
          \ifnum\the@ffilcount>\@ne%
            $^{\csname affilletter@1\endcsname}$%
          \fi%
        \fi%
      \fi%
      \csname affilname@1\endcsname%
    \end{tabular}%
    \ifnum\the@ffilcount>\@ne%
      \setcounter{@ffiltempcount}{2}%
      \addtocounter{@ffilcount}{1}%
      \@affils%
      \addtocounter{@ffilcount}{-1}%
    \fi%
  }
\fi

\def\@affils{%
  \ifnum\the@ffilcount>\the@ffiltempcount%
    \hskip 1em \@plus .17fil%
    \begin{tabular}[t]{c}%
      \if@ffilstylesingle\else%
        \if@ffilstyleoneeach\else%
          \ifnum\the@ffilcount>\@ne%
            $^{\csname affilletter@\the@ffiltempcount\endcsname}$%
          \fi%
        \fi%
      \fi%
      \csname affilname@\the@ffiltempcount\endcsname%
    \end{tabular}%
    \addtocounter{@ffiltempcount}{1}%
    \@affils%
  \fi%
}

\gi@bibliographystyle{plain}

\let\gi@document=\document
\def\document{\gi@document
\gi@maketitle}

% Future projects: 
%  (a) fix the distance between the top of the page and the baseline of 
%      ``Abstract'' to be 90mm

%       \newlength{\@aftertitleskip}
%       \settoheight{\@titleheight}{\@innertitle}
%	\setlength{\@aftertitleskip}{90mm}
%	\addtolength{\@aftertitleskip}{-25.4mm}
%	\addtolength{\@aftertitleskip}{-\topmargin}
%	\addtolength{\@aftertitleskip}{-\@titleheight}
%	\addtolength{\@aftertitleskip}{-\baselinestretch\baselineskip}
%	\vspace{\@aftertitleskip}

\endinput
%%
%% End of file `gipaper.cls'.
