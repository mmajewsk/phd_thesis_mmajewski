% -------------------------------------------------------------------
%  @LaTeX-class-file{
%     filename        = "Dissertate.cls",
%     version         = "1.0",
%     date            = "24 January 2014",
%     codetable       = "ISO/ASCII",
%     keywords        = "LaTeX, Dissertate",
%     supported       = "send email to suchow@post.harvard.edu",
%     docstring       = "Class for a dissertation."
% --------------------------------------------------------------------

\NeedsTeXFormat{LaTeX2e}
\RequirePackage[centertags]{amsmath}
\RequirePackage{amssymb}
\ProvidesClass{Dissertate}[2014/01/24 v1.0 Dissertate Class]
% \LoadClass[12pt, oneside, letterpaper]{book}
\LoadClass[12pt, a4paper, openany]{book}

% some definitions
\def\degreeyear#1{\gdef\@degreeyear{#1}}
\def\degreemonth#1{\gdef\@degreemonth{#1}}
\def\degree#1{\gdef\@degree{#1}}
\def\advisor#1{\gdef\@advisor{#1}}
\def\department#1{\gdef\@department{#1}}
\def\field#1{\gdef\@field{#1}}
\def\university#1{\gdef\@university{#1}}
\def\universitycity#1{\gdef\@universitycity{#1}}
\def\universitystate#1{\gdef\@universitystate{#1}}
\def\programname#1{\gdef\@programname{#1}}
\def\pdOneName#1{\gdef\@pdOneName{#1}}
\def\pdOneSchool#1{\gdef\@pdOneSchool{#1}}
\def\pdOneYear#1{\gdef\@pdOneYear{#1}}
\def\pdTwoName#1{\gdef\@pdTwoName{#1}}
\def\pdTwoSchool#1{\gdef\@pdTwoSchool{#1}}
\def\pdTwoYear#1{\gdef\@pdTwoYear{#1}}


\RequirePackage[centertags]{amsmath}
\RequirePackage{amssymb}
\RequirePackage{color}
\usepackage{hyperref}
\RequirePackage[tiny, md, sc]{titlesec}
\setlength{\headheight}{15pt}
\RequirePackage{titling}
\RequirePackage[palatino]{quotchap}

\RequirePackage{kvoptions}
\DeclareStringOption{School}[]
\ProcessKeyvalOptions*
\RequirePackage{packages/\Dissertate@School/style}

\RequirePackage{graphicx}
\RequirePackage{amssymb}
\RequirePackage{lettrine}
\RequirePackage[super,comma,numbers]{natbib}
\renewcommand{\bibnumfmt}[1]{[#1]}
% \RequirePackage[width=5.75in, letterpaper]{geometry}
\RequirePackage[lmargin=3.5cm, rmargin=1.5cm, height=10.0in, a4paper]{geometry}
\RequirePackage{fancyhdr}
\pagestyle{fancy}

\usepackage[titletoc]{appendix}
\renewcommand{\setthesection}{\arabic{chapter}.A\arabic{section}}

\RequirePackage{bm}
\RequirePackage{upgreek}

\RequirePackage{setspace}
\RequirePackage{booktabs}
\RequirePackage[tight,nice]{units}
\RequirePackage{verbatim}
\RequirePackage{afterpage}
\setcounter{tocdepth}{1}

\RequirePackage{url}
\usepackage[titles]{tocloft}
\renewcommand{\cftsecleader}{\cftdotfill{\cftdotsep}}
\renewcommand{\cftchapfont}{\normalsize \scshape}
% \usepackage{fixltx2e}
\usepackage{ragged2e}

\renewcommand\bibname{References}
\renewcommand\listfigurename{Listing of figures}

\onehalfspacing
\raggedright
\parindent 12pt
\RequirePackage{mathspec}

% use Arno Pro instead of standard LaTeX fonts
\setmathsfont(Digits,Latin,Greek)[
Path = fonts/,Extension = .otf,
UprightFont=ArnoPro-Regular,
BoldFont=ArnoPro-Bold,
ItalicFont=ArnoPro-Italic,
BoldItalicFont=ArnoPro-BoldItalic,
Numbers={Proportional}]{ArnoPro}
\setmathrm
[Path = fonts/,Extension = .otf,
UprightFont=ArnoPro-Regular,
BoldFont=ArnoPro-Bold,
ItalicFont=ArnoPro-Italic,
BoldItalicFont=ArnoPro-BoldItalic
]{ArnoPro}

\RequirePackage{xltxtra,xunicode}
\defaultfontfeatures{Mapping=tex-text}
\aliasfontfeatureoption{Ligatures}{Historic}{Historical}
\setromanfont
[Path = fonts/,
Extension = .otf,
Mapping=tex-text,
%Numbers=OldStyle,
Ligatures={Common},
SizeFeatures={%
	{Size={-10}, Font=*-RegularCaption},
	{Size={10-13.0}, Font=*},
	{Size={13.01-19.9}, Font=*-RegularSubhead, Ligatures=Rare, Contextuals={Swash,Alternate}},
	{Size={19.91-},Font=*-RegularDisplay, Ligatures=Rare, Contextuals={Swash,Alternate}}},
UprightFont=ArnoPro-Regular,
BoldFont=ArnoPro-Bold,
ItalicFont=ArnoPro-Italic,
BoldItalicFont=ArnoPro-BoldItalic
]{ArnoPro} %

\RequirePackage[labelfont={bf,sf,footnotesize,singlespacing},
								textfont={sf,footnotesize,singlespacing},
								justification=justified,
								singlelinecheck=false,
								margin=0pt,
								figurewithin=chapter,
								tablewithin=chapter]{caption}
% Undefined justification `justified,rggedright'

\renewcommand{\thefootnote}{\fnsymbol{footnote}}

%\onehalfspacing
%\doublespacing

% an environment for paragraph-style section
\providecommand\newthought[1]{%
   \addvspace{1.0\baselineskip plus 0.5ex minus 0.2ex}%
   \noindent\textsc{#1}%
}

\renewcommand{\abstractpage}{
	\newpage
	\pagenumbering{roman}
	\setcounter{page}{6}
	\pagestyle{fancy}
	\lhead{Thesis advisor: \@advisor} \rhead{\@author}
	\renewcommand{\headrulewidth}{0.0pt}
	\begin{center}
	\vspace*{1pt}
	\Large \textcolor{SchoolColor}{\textit{Machine learning based long-lived particle reconstruction algorithm for Run 2 and upgrade LHCb trigger and a flexible software platform for the UT detector read-out chip emulation }} \normalsize\\
	\vspace*{15pt}
	\sc Streszczenie \\ \rm
	\end{center}
	\doublespace %Harvard registrar requests that abstract is double spaced
	\input{frontmatter/abstract}
	\doublespace %Harvard registrar requests that abstract is double spaced
	\newpage \lhead{} \rhead{}
	\cfoot{\thepage}
	\onehalfspacing
}

\renewcommand{\dedicationpage}{
	\pagenumbering{roman}
	\setcounter{page}{5}
	\pagestyle{fancy}
	\newpage \thispagestyle{fancy} \vspace*{\fill}
	\sc \noindent \input{frontmatter/dedication}
	\vspace*{\fill} \newpage \rm
	}
\newcommand\blankpage{%
    \null
    \thispagestyle{empty}%
    \addtocounter{page}{-1}%
    \newpage}

\renewcommand{\maketitle}{
\newgeometry{hmargin={2cm, 2cm}, height=10.0in}     % use whatever margins you want for left, right, top and bottom.

\thispagestyle{empty}
%% ------------------------ NAGLOWEK STRONY ---------------------------------
\includegraphics[height=37.5mm]{figures/agh_nzw_a_en_1w_wbr_rgb_150ppi.jpg}\\
\rule{23.3mm}{0pt}
{\large \bf \sf Faculty of Physics and Applied Computer Science}\\
\rule{\textwidth}{3pt}\\
\rule[2ex]
{\textwidth}{1pt}\\
\vspace{7ex}
\begin{center}
	{\LARGE \bf Doctoral thesis}\\
	\vspace{13ex}
	% --------------------------- IMIE I NAZWISKO -------------------------------
	{\bf \Large Adam Dendek}\\
	\vspace{3ex}
	{\small \mbox{}}\\
	\vspace{1.5ex}
	{\small \mbox{}}\\
	%\vspace{10ex}
	%% ------------------------ TYTUL PRACY --------------------------------------
	{\bf \LARGE Machine learning based long-lived particle reconstruction algorithm for Run 2 and upgrade LHCb trigger}\\
	\vspace{6pt}
	{\bf \LARGE and a flexible software platform for the UT detector read-out chip emulation}\\
	\vspace{6pt}
\end{center}
\vspace{14ex}
%% ------------------------ PROMOTOR PRACY ------------------------------------
{\centering
	\begin{tabbing}
		{\large Supervisor: }{\large\bf dr hab. inż. Tomasz Szumlak}\\[2pt]
	\end{tabbing}
}

\begin{center}
\vspace*{12ex} {\sf \large \bf Cracow, January 2021}
\end{center}
%% =====  STRONA TYTULOWA PRACY doktorskiej====
\afterpage{\blankpage}
\newpage
\thispagestyle{empty}
\newpage
% @TODO

%% =====  TYL STRONY TYTULOWEJ PRACY DOKTORSKIEJ====
\thispagestyle{empty}

\vspace*{4ex}\noindent {\textbf{Declaration of the author of this dissertation:}}\\[2pt]
Aware of legal responsibility for making untrue statements I
hereby declare that I have written this dissertation myself and
all the contents of the dissertation
have been obtained by legal means.\\[8pt]

\vspace*{4ex}



\noindent {\textbf{Declaration of the  thesis
		Supervisor:}}\\[2pt]
This dissertation is ready to be reviewed.
\\[8pt]
\newpage
\thispagestyle{empty}
\ % The empty page

\newpage
\restoregeometry
}
% Align reference numbers so that they do not cause an indent
\newlength\mybibindent
\setlength\mybibindent{0pt}
\makeatletter
\renewenvironment{thebibliography}[1]
    {\chapter*{\bibname}%
     \@mkboth{\MakeUppercase\bibname}{\MakeUppercase\bibname}%
     \list{\@biblabel{\@arabic\c@enumiv}}
          {\settowidth\labelwidth{\@biblabel{999}}
           \leftmargin\labelwidth
            \advance\leftmargin\dimexpr\labelsep+\mybibindent\relax\itemindent-\mybibindent
           \@openbib@code
           \usecounter{enumiv}
           \let\p@enumiv\@empty
           \renewcommand\theenumiv{\@arabic\c@enumiv}}
     \sloppy
     \clubpenalty4000
     \@clubpenalty \clubpenalty
     \widowpenalty4000%
     \sfcode`\.\@m}
    {\def\@noitemerr
      {\@latex@warning{Empty `thebibliography' environment}}
     \endlist}
\makeatother
