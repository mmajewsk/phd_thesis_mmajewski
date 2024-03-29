


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
\setcounter{secnumdepth}{4}

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

\RequirePackage{mathspec}%


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
	{Size={13.01-19.9}, Font=*-RegularSubhead,  Contextuals={Swash,Alternate}},
	{Size={19.91-},Font=*-RegularDisplay,  Contextuals={Swash,Alternate}}},
UprightFont=ArnoPro-Regular,
BoldFont=ArnoPro-Bold,
ItalicFont=ArnoPro-Italic,
BoldItalicFont=ArnoPro-BoldItalic
]{ArnoPro} %

%\RequirePackage[labelfont={bf,sf,footnotesize,onehalfspacing},
%								textfont={sf,footnotesize,onehalfspacing},
%								justification={justified,RaggedRight},
%								singlelinecheck=false,
%								margin=0pt,
%								figurewithin=chapter,
%								tablewithin=chapter]{caption}
\RequirePackage[labelfont={sf,bf,small},textfont={sf,small},justification=RaggedRight,margin=0pt, figurewithin=section, tablewithin=section]{caption}

% \renewcommand{\thefootnote}{\fnsymbol{footnote}}

\onehalfspacing
%\doublespacing

% an environment for paragraph-style section
\providecommand\newthought[1]{%
   \addvspace{1.0\baselineskip plus 0.5ex minus 0.2ex}%
   \noindent\textsc{#1}%
}

\renewcommand{\abstractpage}{
	\newpage
	\pagenumbering{roman}
	\setcounter{page}{5}
	\pagestyle{fancy}
	% \lhead{Thesis advisor: \@advisor} \rhead{\@author}
	\renewcommand{\headrulewidth}{0.0pt}
	\begin{center}
	\vspace*{1pt}
	\Large \textcolor{SchoolColor}{\textit{Application of machine learning methods for the analysis of the calibration of the LHCb VELO detector, studies of irradiated silicon pixel sensors and reconstruction of the neutrino interaction in LARTPC detector}} \normalsize\\
	\vspace*{15pt}
	\sc Abstract (Polish Version) \\ \rm
	\end{center}
	\doublespace %Harvard registrar requests that abstract is double spaced
	\input{frontmatter/abstract}

	\doublespace %Harvard registrar requests that abstract is double spaced
	\begin{center}
    \sc Abstract (English Version) \\ \rm
	\end{center}
	\input{frontmatter/abstract_en}
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
\newgeometry{hmargin={2cm, 2cm}, height=10.0in, left=3.5cm, right=1.5cm}     % use whatever margins you want for left, right, top and bottom.

\thispagestyle{empty}
%% ------------------------ NAGLOWEK STRONY ---------------------------------
\hspace*{-3cm}
\noindent
\vspace{3ex}
\begin{center}
\includegraphics[height=52.5mm]{./figures/logo2.jpg}\\
\vspace{8ex}
{\large \bf FIELD OF SCIENCE: Natural sciences}\\
\vspace{3ex}
{SCIENTIFIC DISCIPLINE: Physical sciences}\\
\vspace{10ex}
{\Huge \bf DOCTORAL THESIS}\\
\vspace{8ex}



	% --------------------------- IMIE I NAZWISKO -------------------------------
\setstretch{2}
{\LARGE Application of machine learning methods for the analysis of the calibration of the LHCb VELO detector, studies of irradiated silicon pixel sensors and reconstruction of the neutrino interaction in LARTPC detector}\\
\onehalfspacing
\vspace{12ex} 	%\vspace{10ex}
	%% ------------------------ TYTUL PRACY --------------------------------------
{\large Author: Maciej Witold Majewski}\\
\vspace{12ex}

%___________________________________________
%Supervisors
{\large First supervisor: prof. dr hab. inż. Tomasz Szumlak}\\
\vspace{1ex}
{\large Assisting supervisor: dr inż. Bartłomiej Rachwał }\\



\vspace{12ex}
{\large Completed in: AGH University of Science and Technology,  Department of Particle Interactions and Detection Techniques,}
{\large Kraków, 2022}
\end{center}
%% =====  STRONA TYTULOWA PRACY doktorskiej====
\thispagestyle{empty}
\newpage
% @TODO

%% =====  TYL STRONY TYTULOWEJ PRACY DOKTORSKIEJ====
\thispagestyle{empty}
\setcounter{page}{3}
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
\renewcommand{\copyrightpage}{
	\newpage \thispagestyle{empty} \vspace*{\fill}
	\sc \noindent \copyright~\textit{\@degreeyear \hspace{3pt}~- \theauthor} \\
	\noindent All rights reserved.
	\vspace*{\fill} \newpage \rm
}
