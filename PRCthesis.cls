%%
%% This is file `PRCthesis.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% PRCthesis.dtx  (with options: `cls')
%% 
%% This is a generated file.
%% 
%% Copyright (C) 2016-2016 by Zhennan Li <i@nanmu.me>
%% This file may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License, either
%% version 1.3 of this license or (at your option) any later
%% version. The latest version of this license is in:
%% 
%% http://www.latex-project.org/lppl.txt
%% 
%% and version 1.3 or later is part of all distributions of
%% LaTeX version 2005/12/01 or later.
%% 
\NeedsTeXFormat{LaTeX2e}[1999/12/01]
\ProvidesClass{PRCthesis}
[2016/12/07 v1.16 Chongqing University Thesis Template]
\hyphenation{Cqu-Thesis}
\newcommand{\PRCthesis}{\textsc{CquThesis}}
\def\version{1.16}
\RequirePackage{kvoptions}
\SetupKeyvalOptions{
family=PRC,
prefix=PRC@,
setkeys=\kvsetkeys}
\newif\ifPRC@bachelor
\newif\ifPRC@master
\newif\ifPRC@doctor
\PRC@bachelorfalse\PRC@masterfalse\PRC@doctorfalse
\define@key{PRC}{type}{%
\expandafter\csname PRC@#1true\endcsname}
\DeclareBoolOption{liberalformat}
\DeclareBoolOption[true]{academic}
\DeclareComplementaryOption{proffesionalmaster}{academic}
\DeclareBoolOption[true]{openany}
\DeclareComplementaryOption{openright}{openany}
\DeclareBoolOption[false]{abstractopenright}
\newif\if@onesideprint
\newif\if@twosideprint
\newif\if@autoprint
\@onesideprintfalse\@twosideprintfalse\@autoprintfalse
\define@key{PRC}{printmode}{%
\expandafter\csname @#1printtrue\endcsname}
\DeclareBoolOption[false]{secret}
\DeclareBoolOption[false]{seriftoc}
\DeclareBoolOption{continuoustoc}
\newif\if@bioff
\newif\if@bicombined
\newif\if@biapart
\@biofffalse\@bicombinedfalse\@biapartfalse
\define@key{PRC}{bilinguallist}{%
\@biofffalse\@bicombinedfalse\@biapartfalse
\expandafter\csname @bi#1true\endcsname}
\DeclareDefaultOption{\PassOptionsToClass{\CurrentOption}{ctexbook}}
\kvsetkeys{PRC}{}
\ProcessKeyvalOptions*
\PassOptionsToPackage{no-math}{fontspec}
\ifPRC@openany
\LoadClass[openany,a4paper,oneside,UTF8,zihao=-4,scheme=plain,linespread=1.39,space=auto]{ctexbook}
\else
\LoadClass[openright,a4paper,oneside,UTF8,zihao=-4,scheme=plain,linespread=1.39,space=auto]{ctexbook}
\fi
\ifPRC@bachelor\relax\else
\ifPRC@master\relax\else
\ifPRC@doctor\relax\else
\ClassError{PRCthesis}%
{Specified thesis type is obligatory: \MessageBreak
type=[bachelor|master|doctor]}{}
\fi
\fi
\fi
\if@autoprint\relax\else
\if@onesideprint\relax\else
\if@twosideprint\relax\else
\ClassWarning{PRCthesis}%
{Unexpected or missing print mode, processing with AUTO: \MessageBreak
printmode=[oneside|twoside|auto]}{}
\@autoprinttrue
\fi
\fi
\fi
\if@bioff\relax\else
\if@bicombined\relax\else
\if@biapart\relax\else
\kvsetkeys{PRC}{bilinguallist=off,}
\ClassWarning{PRCthesis}%
{Unexpected or missing bilingual list mode, processing with OFF: \MessageBreak
bilinguallist=[off|combined|apart]}{}
\fi
\fi
\fi
\RequirePackage{etoolbox}
\RequirePackage{xparse}
\RequirePackage{environ}
\RequirePackage{calc}
\RequirePackage{ifxetex}
\RequirePackage{fontspec}
\RequirePackage{amsmath}
\RequirePackage[defaultsups]{newtxtext}
\RequirePackage{newtxmath}
\RequirePackage{pifont}
\RequirePackage{CJKfntef}
\RequirePackage{newfloat}
\RequirePackage{caption}
\RequirePackage[labelformat=simple]{subcaption}
\RequirePackage{bicaption}
\RequirePackage{array}
\RequirePackage{tabularx}
\RequirePackage{booktabs}
\RequirePackage{longtable}
\RequirePackage{multirow}
\RequirePackage{diagbox}
\RequirePackage{tabu}
\RequirePackage{courier}
\RequirePackage{graphicx}
\RequirePackage{pdfpages}
\RequirePackage[shortlabels,inline]{enumitem}
\RequirePackage[amsmath,thmmarks,hyperref]{ntheorem}
\RequirePackage{changepage}
\RequirePackage{afterpage}
\RequirePackage[bottom,perpage,hang,symbol*]{footmisc}
\raggedbottom
\RequirePackage{varwidth}
\RequirePackage{xcolor}
\RequirePackage{metalogo}
\RequirePackage{xspace}
\RequirePackage[numbers,square,comma,super,sort&compress]{natbib}
\patchcmd{\@chapter}{\addtocontents{lof}{\protect\addvspace{10\p@}}}{}{}{} % lof
\patchcmd{\@chapter}{\addtocontents{lot}{\protect\addvspace{10\p@}}}{}{}{} % lot
\RequirePackage[hyperfootnotes=false,]{hyperref}
\hypersetup{%
linktoc=all,
bookmarksnumbered=true,
bookmarksopen=true,
bookmarksopenlevel=1,
breaklinks=true,
colorlinks=false,
plainpages=false,
pdfborder=0 0 0}
\urlstyle{same}
\ifxetex
\def\CJK@null{\kern\CJKnullspace\Unicode{48}{7}\kern\CJKnullspace}
\defaultfontfeatures{Mapping=tex-text}
\fi
\RequirePackage{tocloft}
\ifxetex
\hypersetup{%
CJKbookmarks=true}
\else
\hypersetup{%
unicode=true,
CJKbookmarks=false}
\fi
\let\PRC@cleardoublepage\cleardoublepage
\renewcommand{\cleardoublepage}{%
\clearpage{\pagestyle{style@empty}\PRC@cleardoublepage}
}%\cleardoublepage
\newcommand\PRC@addblankpage{%
\afterpage{%
{\null\pagestyle{style@empty}\clearpage}}}
\newif\if@backmatter
\renewcommand{\frontmatter}{%
\@backmatterfalse
\cleardoublepage
\pagenumbering{Roman}
\pagestyle{style@normal}
\ctexset{chapter/numbering = false,}
}
\renewcommand{\mainmatter}{%
\@backmatterfalse
\cleardoublepage
\pagenumbering{arabic}
\pagestyle{style@normal}
\ctexset{chapter/numbering = true,}
}
\renewcommand{\backmatter}{%
\@backmattertrue
\cleardoublepage
\ctexset{chapter/numbering = false,
section/number  = \Alph{section},
section/name  = {,.},
subsection/number = \CTEXthesection{}\arabic{subsection},}%
\setcounter{chapter}{0}
}
\RequirePackage{geometry}
\geometry{
a4paper, ignoreall, nomarginpar,
inner=25mm, outer=25mm, top=30mm, bottom=25mm,
bindingoffset=10mm, head=16mm, headsep=5mm, foot=15mm, footnotesep=5mm}
\RequirePackage{totcount}
\regtotcounter[auxfile=maxpage.aux]{page}
\if@autoprint
\ifPRC@bachelor
\ifnum\totvalue{page}>70 \@twosideprinttrue\else\@onesideprinttrue\fi
\else
\ifnum \totvalue{page}>60 \@twosideprinttrue\else\@onesideprinttrue\fi
\fi
\fi
\if@onesideprint
\ClassWarning{PRCthesis}{Printing under oneside mode.}{}
\else
\if@twosideprint
\geometry{twoside}
\ClassWarning{PRCthesis}{Printing under twoside mode.}{}
\fi
\fi
\RequirePackage{fancyhdr}
\fancypagestyle{style@empty}{%
\fancyhf{}
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}}
\fancypagestyle{style@fixhead}{%
\fancyhead{}
\fancyhead[C]{\zihao{-5}\songti\leftmark}
\fancyfoot{}
\fancyfoot[C]{\zihao{-5}\thepage}
\renewcommand{\headrulewidth}{0.4pt}
\renewcommand{\footrulewidth}{0pt}}
\fancypagestyle{style@normal}{%
\fancyhead{}
\if@twosideprint
\fancyhead[EC]{\zihao{-5}\songti\PRC@thesisname}
\fancyhead[OC]{\zihao{-5}\songti\leftmark}
\else
\fancyhead[L]{\zihao{-5}\songti\PRC@thesisname}
\fancyhead[R]{\zihao{-5}\songti\leftmark}
\fi
\fancyfoot{}
\fancyfoot[C]{\zihao{-5}\thepage}
\renewcommand{\headrulewidth}{0.4pt}
\renewcommand{\footrulewidth}{0pt}}
\newcommand{\PRC@fixhead}{%
\if@twosideprint %仅双页打印需要修正
\checkoddpage
\ifoddpage\relax\else
\thispagestyle{style@fixhead}
\fi
\fi
}%\PRC@fixhead
\AtBeginDocument{%
\pagestyle{style@empty}
\renewcommand{\chaptermark}[1]{%
\ifnum\value{chapter}>0%
\@mkboth{\CTEXthechapter\hskip\ccwd#1}{}%
\else
\@mkboth{#1}{}%
\fi}}%\chaptermark
\let\@afterindentfalse\@afterindenttrue
\@afterindenttrue
\setlength{\parskip}{0.1\baselineskip}
\ctexset{%
punct=quanjiao,
autoindent=true,
space=auto}
\setlist{
nosep,
itemjoin = {{；}}
}%setlist
\def\@circlenum#1{%
\ifnum \value{#1} >10
\ClassError{PRCthesis}%
{More than 10 subsubsections in a subsection cannot be handled.}{}
\fi
\ding{\the\numexpr\value{#1}+171\relax}%
}
\def\footnoterule{\vskip-3\p@\hrule\@width0.3\textwidth\@height0.4\p@\vskip2.6\p@}
\let\PRC@footnotesize\footnotesize
\renewcommand{\footnotesize}{\PRC@footnotesize\zihao{-5}}
\footnotemargin1.5em\relax
\let\PRC@makefnmark\@makefnmark
\def\PRC@@makefnmark{\mbox{{\normalfont\@thefnmark}}}
\pretocmd{\@makefntext}{\let\@makefnmark\PRC@@makefnmark}{}{}
\apptocmd{\@makefntext}{\let\@makefnmark\PRC@makefnmark}{}{}
\allowdisplaybreaks[4]
\let\PRC@tagform@\tagform@
\renewcommand{\eqref}[1]{\PRCeqshortname\textup{(\ref{#1})}}
\theorembodyfont{\rmfamily\songti}
\theoremheaderfont{\rmfamily\heiti}
\RequirePackage[version=4]{mhchem}
\AtBeginDocument{\pretocmd{\ce}{{ }}{}{}}
\newcommand{\cec}[1]{\cesplit{{\,\ }{\0}}{#1}}
\RequirePackage{siunitx}
\RequirePackage{upgreek}
\ifxetex
\sisetup{%
math-micro = {\upmu},
text-micro = {\textmu},
}%\sisetup
\fi
\setlength{\floatsep}{20bp plus2bp minus2bp}
\setlength{\intextsep}{20bp plus2bp minus2bp}
\setlength{\textfloatsep}{20bp plus2bp minus2bp}
\setlength{\@fptop}{6bp plus2bp}
\setlength{\@fpsep}{12bp plus2bp}
\setlength{\@fpbot}{6bp plus2bp}
\renewcommand{\textfraction}{0.15}
\renewcommand{\topfraction}{0.85}
\renewcommand{\bottomfraction}{0.65}
\renewcommand{\floatpagefraction}{0.60}
\AtBeginDocument{%
\renewcommand{\thefigure}{%
\if@backmatter
\CTEXthesection \@arabic \c@figure
\else
\ifnum \c@chapter >\z@ \thechapter .\fi \@arabic \c@figure
\fi}
\renewcommand{\thetable}{%
\if@backmatter
\CTEXthesection \@arabic \c@table
\else
\ifnum \c@chapter >\z@ \thechapter .\fi \@arabic \c@table
\fi}
\renewcommand{\theequation}{%
\if@backmatter
\CTEXthesection \@arabic \c@equation
\else
\ifnum \c@chapter >\z@ \thechapter .\fi \@arabic \c@equation
\fi}
}
\def\PRC@tabular{\zihao{5}\@tabular}
\DeclareCaptionLabelFormat{PRC}{{\zihao{5}\rmfamily\songti #1~#2}}
\DeclareCaptionLabelSeparator{PRC}{\hspace{\ccwd}}
\DeclareCaptionFont{PRC}{\zihao{5}\rmfamily\songti}
\captionsetup{labelformat=PRC,labelsep=PRC,font=PRC}
\captionsetup[table]{position=top,belowskip=6bp,aboveskip=0bp}
\captionsetup[figure]{position=bottom,belowskip=0bp,aboveskip=6bp}
\captionsetup[sub]{font=PRC,skip=6bp}
\renewcommand{\thesubfigure}{(\alph{subfigure})}
\renewcommand{\thesubtable}{(\alph{subtable})}
\captionsetup[bi-first]{bi-first}
\captionsetup[bi-second]{bi-second}
\DeclareCaptionOption{bi-first}[]{%
\def\tablename{\shorttablename}
\def\figurename{\shortfigurename}
}%bi-first
\DeclareCaptionOption{bi-second}[]{%
\def\tablename{\shorttablenameEN}
\def\figurename{\shortfigurenameEN}
}%bi-second
\DeclareFloatingEnvironment[fileext=lofEN]{figuresEN}[\shortfigurenameEN][\listoffiguresnameEN]
\DeclareFloatingEnvironment[fileext=lotEN]{tablesEN}[\shorttablenameEN][\listoftablesnameEN]
\if@bicombined\relax
\else
\captionsetup[bi-second]{listtype+=sEN}
\fi
\if@biapart\relax
\else
\AtBeginDocument{%
\let\listoffiguresEN\relax
\let\listoftablesEN\relax
\let\listofequationsEN\relax
}%AtBeginDocument
\fi
\AtBeginEnvironment{tabularx}{\begingroup\zihao{5}}
\AtEndEnvironment{tabularx}{\endgroup}
\setlength{\tabcolsep}{12pt}
\renewcommand{\tabularxcolumn}[1]{m{#1}}
\newcommand{\bigcell}[1]{\vspace{6pt}\begin{varwidth}{\linewidth}#1\end{varwidth}\vspace{6pt}}
\newcommand{\headcell}[1]{\multicolumn{1}{c}{\heiti #1}}
\newcommand{\colsep}[1][12pt]{\setlength{\tabcolsep}{#1}}
\setlength{\LTpre}{\bigskipamount}
\setlength{\LTpost}{\bigskipamount}
\let\PRC@LT@array\LT@array
\def\LT@array{\zihao{5}\PRC@LT@array}
\RequirePackage{listings}
\lstdefinestyle{lstStyleBase}{%
basicstyle=\footnotesize\ttfamily,
aboveskip=\medskipamount,
belowskip=\medskipamount,
lineskip=0pt,
boxpos=c,
showlines=false,
extendedchars=true,
upquote=true,
tabsize=2,
showtabs=false,
showspaces=false,
showstringspaces=false,
numbers=left,
numberstyle=\tiny,
linewidth=\linewidth,
xleftmargin=4pt,
xrightmargin=0pt,
resetmargins=false,
breaklines=true,
breakatwhitespace=false,
breakindent=0pt,
breakautoindent=true,
columns=flexible,
keepspaces=true,
framesep=3pt,
rulesep=2pt,
framerule=1pt,
backgroundcolor=\color{gray!5},
stringstyle=\color{green!40!black!100},
keywordstyle=\bfseries\color{blue!50!black},
commentstyle=\slshape\color{black!60}}
\lstdefinestyle{lstStyleCplus}{%
style=lstStyleBase,
frame=l,
rulecolor=\color{blue},
language=C++}
\lstdefinestyle{lstStylePython}{%
style=lstStyleBase,
frame=l,
rulecolor=\color{cyan},
language=Python}
\lstnewenvironment{C++}{\lstset{style=lstStyleCplus}}{}
\lstnewenvironment{Cplus}{\lstset{style=lstStyleCplus}}{}
\lstnewenvironment{Python}{\lstset{style=lstStylePython}}{}
\newcounter{PRCXuHao}
\newcounter{PRCXuHaoType}
\setcounter{PRCXuHaoType}{1}
\newcommand{\xuhaoseparator}{}
\newcommand{\xuhaotype}[1][1]{
\ifnum #1>6 \ClassError{PRCthesis}%
{Available choices from 1-6.}{}%
\fi
\setcounter{PRCXuHaoType}{#1}
}%\xuhaotype
\newcommand{\output@xuhao}{%
\ifcase\value{PRCXuHaoType}
\or \arabic{PRCXuHao} %1
\or \Alph{PRCXuHao} %2
\or \alph{PRCXuHao} %3
\or \Roman{PRCXuHao} %4
\or \roman{PRCXuHao} %5
\or \ifnum\value{PRCXuHao}>9\ClassError{PRCthesis}%
{Xuhao(rownum) of type-6 must be under 10.}{}%
\else\fnsymbol{PRCXuHao}
\fi %6
\fi
}%\output@xuhao
\newcommand{\xuhao}[1][0]{
\ifcase #1
\stepcounter{PRCXuHao} %0
\output@xuhao\xuhaoseparator\xspace
\or \resetxuhao\stepcounter{PRCXuHao} %1
\output@xuhao\xuhaoseparator\xspace
\fi
}%\xuhao
\newcommand{\resetxuhao}{\setcounter{PRCXuHao}{0}}
\let\rownum\xuhao
\let\resetrownum\resetxuhao
\let\rownumtype\xuhaotype
\let\setxuhao\xuhaotype
\let\rownumseparator\xuhaoseparator
\def\PRC@def@term #1{%
\define@key{PRC}{#1}{\csname #1\endcsname{##1}}
\expandafter\gdef\csname #1\endcsname##1{%
\expandafter\gdef\csname PRC@#1\endcsname{##1}}
\csname #1\endcsname{}}
\PRC@def@term{ctitle}
\PRC@def@term{etitle}
\PRC@def@term{cauthor}
\PRC@def@term{eauthor}
\PRC@def@term{studentid}
\PRC@def@term{csupervisor}
\PRC@def@term{esupervisor}
\PRC@def@term{cassistsupervisor}
\PRC@def@term{cextrasupervisor}
\PRC@def@term{eassistsupervisor}
\PRC@def@term{cpsupervisor}
\PRC@def@term{epsupervisor}
\PRC@def@term{cmajor}
\PRC@def@term{emajor}
\PRC@def@term{cclass}
\PRC@def@term{edgree}
\PRC@def@term{cdepartment}
\PRC@def@term{edepartment}
\PRC@def@term{mycdate}
\PRC@def@term{myedate}
\def\PRC@parse@keywords#1{
\define@key{PRC}{#1}{\csname #1\endcsname{##1}}
\expandafter\gdef\csname PRC@#1\endcsname{}
\expandafter\gdef\csname #1\endcsname##1{
\@for\reserved@a:=##1\do{
\expandafter\ifx\csname PRC@#1\endcsname\@empty\else
\expandafter\g@addto@macro\csname PRC@#1\endcsname{%
\ignorespaces\csname PRC@#1@separator\endcsname}
\fi
\expandafter\expandafter\expandafter\g@addto@macro%
\expandafter\csname PRC@#1\expandafter\endcsname\expandafter{\reserved@a}}}}
\PRC@parse@keywords{ckeywords}
\PRC@parse@keywords{ekeywords}
\def\PRCsetup{\kvsetkeys{PRC}}
\newcommand{\make@cover@CN}{%
\thispagestyle{style@empty}
\begin{center}
\rule{0mm}{15mm}
\sffamily\heiti
\ifPRC@bachelor
\zihao{-2}\PRC@thesistypenameCN
\\ \vspace{\stretch{1}}
\zihao{2}\PRC@ctitle
\\ \vspace{\stretch{2}}
\includegraphics[width=6cm]{CQUbadge.pdf}
\\ \vspace{\stretch{2}}
\else
\zihao{2}\PRC@ctitle
\\ \vspace{\stretch{1}}
\includegraphics[width=6cm]{CQUbadge.pdf}
\\ \vspace{\stretch{1}}
\zihao{-2}\PRC@thesistypenameCN
\ifPRC@master{}\\\PRC@mastertype\fi
\\ \vspace{\stretch{2}}
\fi
\ifPRC@bachelor
\zihao{3}
\begin{varwidth}{\textwidth}
\begin{CJKfilltwosides}{4.5\ccwd}
\PRC@studentCN\PRC@title@separatorCN\\
\PRC@studentnumCN\PRC@title@separatorCN\\
\PRC@supervisorCN\PRC@title@separatorCN\\
\ifdefstring{\PRC@cassistsupervisor}{}{\relax}{{\zihao{5}\begin{CJKfilltwosides}{66bp}\PRC@assistsupervisorCN\end{CJKfilltwosides}}\hfill\PRC@title@separatorCN\\}
\ifdefstring{\PRC@cextrasupervisor}{}{\relax}{{\zihao{5}\begin{CJKfilltwosides}{66bp}\PRC@extrasupervisorCN\end{CJKfilltwosides}}\hfill\PRC@title@separatorCN\\}
\PRC@majorCN\PRC@title@separatorCN
\end{CJKfilltwosides}
\end{varwidth}
\else
\zihao{3}
\begin{varwidth}{\textwidth}
\begin{CJKfilltwosides}{4.5\ccwd}
\PRC@studentCN\PRC@title@separatorCN\\
\PRC@supervisorCN\PRC@title@separatorCN\\
\ifPRC@academic
\PRC@majorCN\PRC@title@separatorCN\\
\else
\PRC@psupervisorCN\PRC@title@separatorCN\\
\fi
\PRC@majorclassCN\PRC@title@separatorCN
\end{CJKfilltwosides}
\end{varwidth}
\fi
\hskip.5\ccwd
\zihao{3}
\begin{varwidth}{\textwidth}%
\mbox{\PRC@cauthor}\\
\ifPRC@bachelor\PRC@studentid\\\fi
\PRC@csupervisor\\ %不要放在盒子里
\ifPRC@academic %这里有点复杂
\ifPRC@bachelor
\ifdefstring{\PRC@cassistsupervisor}{}{\relax}{\PRC@cassistsupervisor\\}
\ifdefstring{\PRC@cextrasupervisor}{}{\relax}{\PRC@cextrasupervisor\\}
\fi
\mbox{\PRC@cmajor}
\ifPRC@bachelor\relax\else\\\PRC@cclass\fi
\else
\PRC@cpsupervisor\\
\PRC@cclass
\fi
\end{varwidth}
\\ \vspace{\stretch{2}}
\zihao{-2}\PRC@universitynameCN\PRC@cdepartment\\[1mm]
\zihao{3}\ifdefempty{\PRC@mycdate}{\cdate}{\PRC@mycdate}
\vspace{10mm}
\end{center}}
\newcommand{\make@cover@EN}{%
\cleardoublepage
\thispagestyle{style@empty}
\begin{center}
\rule{0mm}{15mm}
\sffamily
\ifPRC@bachelor
\zihao{-2}\PRC@thesistypenameEN
\\ \vspace{\stretch{2}}
\zihao{-1}\textbf{\PRC@etitle}
\\ \vspace{\stretch{1}}
\includegraphics[width=5cm]{CQUbadge.pdf}
\\ \vspace{\stretch{2}}
\zihao{3}\textbf{\PRC@studentEN\PRC@title@separatorEN\mbox{\PRC@eauthor}}\\
\PRC@supervisorEN\mbox{\PRC@esupervisor}\\
\ifdefstring{\PRC@eassistsupervisor}{}{\relax}{\PRC@assistsupervisorEN\PRC@title@separatorEN\mbox{\PRC@eassistsupervisor}\\}
\PRC@majorEN\PRC@title@separatorEN\mbox{\PRC@emajor}
\else
\zihao{-1}\textbf{\PRC@etitle}
\\ \vspace{\stretch{2}}
\includegraphics[width=5cm]{CQUbadge.pdf}
\\ \vspace{\stretch{2}}
\zihao{3}\PRC@thesistypenameEN
\\[1mm]
\textbf{\PRC@workby}
\\[2mm]
\zihao{3}\mbox{\textbf{\PRC@eauthor}}
\\ \vspace{\stretch{1}}
\textbf{\PRC@supervisorEN}\textbf{\PRC@esupervisor}\\
\ifPRC@academic\relax\else\textbf{\PRC@psupervisorEN\PRC@title@separatorEN\PRC@epsupervisor}\\\fi
\textbf{\PRC@majorEN\PRC@title@separatorEN}\mbox{\textbf{\PRC@emajor}}
\fi
\\ \vspace{\stretch{2}}
\zihao{-2}\PRC@edepartment\\\PRC@universitynameEN\\[1mm]
\ifdefempty{\PRC@myedate}{\textbf{\edate}}{\textbf{\PRC@myedate}}
\vspace{10mm}
\end{center}}
\def\makecover{%
\hypersetup{%
pdftitle = {\PRC@ctitle},
pdfauthor = {\PRC@cauthor},
pdfsubject = {\PRC@thesistypenameCN},
pdfkeywords = {\PRC@ckeywords},
pdfcreator = {CQUThesis--v\version, a LaTeX template.}
}
\phantomsection
\pdfbookmark[-1]{\PRC@ctitle}{ctitle}
\make@cover@CN
\make@cover@EN
}%makecover
\newcommand{\PRC@@cabstract}[1]{\long\gdef\PRC@cabstract{#1}}
\newenvironment{cabstract}{\Collect@Body\PRC@@cabstract}{}
\newcommand{\PRC@@eabstract}[1]{\long\gdef\PRC@eabstract{#1}}
\newenvironment{eabstract}{\Collect@Body\PRC@@eabstract}{}
\def\makeabstract{%
\cleardoublepage
\normalsize
\PRC@makeabstract
}%makeabstract
\newcommand{\PRC@makeabstract}{%
\clearpage
\chapter[\PRC@cabstract@tocname]{\PRC@cabstract@name}
\pagestyle{style@normal}
\PRC@fixhead
\pagenumbering{Roman}
\PRC@cabstract
\vskip12bp
\PRC@put@kw{\heiti\PRC@ckw@title\PRC@title@separatorCN}{\PRC@ckeywords}
\if@twosideprint\ifPRC@openany\ifPRC@abstractopenright\PRC@addblankpage\fi\fi\fi
\chapter[\PRC@eabstract@tocname]{\sffamily\textbf{\PRC@eabstract@name}}
\PRC@fixhead
\PRC@eabstract
\vskip12bp
\PRC@put@kw{\textbf{\PRC@ekw@title\PRC@title@separatorEN}}{\PRC@ekeywords}
}
\newbox\PRC@kw
\newcommand{\PRC@put@kw}[2]{%
\begingroup
\setbox\PRC@kw=\hbox{#1}
\noindent\hangindent\wd\PRC@kw\hangafter1
\box\PRC@kw#2\par
\endgroup}
\NewDocumentCommand{\PRC@makeauth}{o}{%
\clearpage
\thispagestyle{style@empty}
\IfNoValueTF{#1}{%
\rule{0mm}{5mm}
\begin{center}
\zihao{3}
\begin{CJKfilltwosides}{6\ccwd}
\heiti{}\PRC@innotitle
\end{CJKfilltwosides}
\end{center}
\vspace{2mm}
\zihao{-4}
\par\PRC@innobody
\\[5mm]
\par\PRC@innosignature\hfill\PRC@signdate
\vspace{15mm}
\begin{center}
\zihao{3}\heiti
\PRC@authtitle
\end{center}
\vspace{2mm}
\zihao{-4}
\par\PRC@authbody
\\[15mm]
\begin{minipage}{\textwidth}
\begin{minipage}{15\ccwd}
\PRC@authsignaturestu\\[10mm]
\PRC@signdate
\end{minipage}
\hfill
\begin{minipage}{15\ccwd}
\PRC@authsignaturesup\\[10mm]
\PRC@signdate
\end{minipage}
\end{minipage}
}{
\includepdf{#1}
}
}%\PRC@makeauth
\let\PRCauthpage\PRC@makeauth
\newlist{PRC@denotation}{description}{1}
\setlist[PRC@denotation]{%
nosep,
font = \normalfont,
align = left,
leftmargin = !,
labelindent = 0mm,
labelwidth = 25mm,
labelsep* = 5mm,
itemindent = 0mm,
}%\setlist
\NewDocumentEnvironment{denotation}{O{20mm} O{30mm}}{%
\chapter*{\PRC@denotation@name}
\chaptermark{\PRC@denotation@name}\PRC@fixhead
\zihao{-4}\begin{PRC@denotation}[labelindent = #1,labelwidth=#2,]
}{
\end{PRC@denotation}}%\denotation
\setcounter{tocdepth}{2}
\setcounter{secnumdepth}{3}
\setlength{\cftbeforechapskip}{1mm}
\ifPRC@liberalformat
\cftsetindents{chapter}{0em}{1.5em}
\cftsetindents{section}{1.9em}{0.9em}
\cftsetindents{subsection}{4.0em}{1.5em}
\else
\cftsetindents{chapter}{0em}{1.5em}
\cftsetindents{section}{1.5em}{2.2em}
\cftsetindents{subsection}{3.7em}{2.9em}
\fi
\ifPRC@seriftoc
\renewcommand{\cftchapleader}{\cftdotfill{\cftdotsep}}
\renewcommand{\cftchapfont}{\zihao{4}\sffamily\heiti}
\renewcommand{\cftsecfont}{\zihao{5}\sffamily\heiti}
\renewcommand{\cftsubsecfont}{\zihao{5}}
\fi
\newlistof[chapter]{equations}{equ}{\listofequationsname}
\newlistof[chapter]{equationsEN}{equEN}{\listofequationsnameEN}
\DeclareDocumentCommand{\listeq}{ m o }{%
\addcontentsline{equ}{equations}{\protect\numberline{\theequation}#1}\par
\IfNoValueTF{#2}{%
\relax
}{%
\if@bicombined
\addcontentsline{equ}{equations}{\protect\numberline{\theequation}#2}\par
\else
\if@biapart
\addcontentsline{equEN}{equationsEN}{\protect\numberline{\theequation}#2}\par
\fi
\fi
}
}%listeq
\setlength{\cftequationsnumwidth}{2.5em}
\setlength{\cftequationsENnumwidth}{2.5em}
\let\eqlist\listeq
\tocloftpagestyle{style@normal}
\renewcommand{\cfttoctitlefont}{%
\phantomsection\pdfbookmark[0]{\PRC@tocnameinbkmark}{toc}\PRC@fixhead\hfill\bfseries\sffamily\heiti\zihao{3}}
\renewcommand{\cftloftitlefont}{\PRC@fixhead\hfill\sffamily\heiti\zihao{3}}
\renewcommand{\cftlottitlefont}{\PRC@fixhead\hfill\sffamily\heiti\zihao{3}}
\renewcommand{\cftequtitlefont}{\PRC@fixhead\hfill\sffamily\heiti\zihao{3}}
\renewcommand{\cftequENtitlefont}{\PRC@fixhead\hfill\sffamily\heiti\zihao{3}}
\renewcommand{\cftaftertoctitle}{\hfill}
\renewcommand{\cftafterloftitle}{\hfill}
\renewcommand{\cftafterlottitle}{\hfill}
\renewcommand{\cftafterequtitle}{\hfill}
\renewcommand{\cftafterequENtitle}{\hfill}
\ifPRC@continuoustoc\relax\else
\renewcommand{\@cfttocstart}{\clearpage}
\renewcommand{\@cfttocfinish}{\clearpage}
\fi
\newcommand{\chapterstar}[1]{%
\chapter*{#1}%
\phantomsection
\@mkboth{#1}{}
\addcontentsline{toc}{chapter}{#1}}
\bibpunct{[}{]}{,}{s}{}{,}
\renewcommand\NAT@citesuper[3]{\ifNAT@swa%
\unskip\kern\p@\textsuperscript{\NAT@@open #1\NAT@@close}%
\if*#3*\else\ (#3)\fi\else #1\fi\endgroup}
\DeclareRobustCommand\inlinecite{\@inlinecite}
\def\@inlinecite#1{\begingroup\let\@cite\NAT@citenum\citep{#1}\endgroup}
\let\onlinecite\inlinecite
\pretocmd{\bibliography}{%
\clearpage\phantomsection\addcontentsline{toc}{chapter}{\PRC@bib@name}}{}{}
\AtBeginDocument{%
\pretocmd{\bibliography}{\begingroup\zihao{5}}{}{}
\apptocmd{\bibliography}{\endgroup}{}{}
}%AtBeginDocument
\renewcommand\@biblabel[1]{\zihao{5}[#1]}
\renewenvironment{thebibliography}[1]
{\chapter*{\PRC@bib@name
\@mkboth{\PRC@bib@name}{}}%
\list{\@biblabel{\@arabic\c@enumiv}}%
{\settowidth\labelwidth{\@biblabel{#1}}%
\leftmargin\labelwidth
\advance\leftmargin\labelsep
\setlength{\parsep}{1mm}
\setlength{\labelsep}{0.5em}
\setlength{\itemsep}{0.05pc}
\setlength{\listparindent}{0in}
\setlength{\itemindent}{0in}
\setlength{\rightmargin}{0in}
\@openbib@code
\usecounter{enumiv}%
\let\p@enumiv\@empty
\renewcommand\theenumiv{\@arabic\c@enumiv}}%
\sloppy
\clubpenalty4000
\@clubpenalty\clubpenalty
\widowpenalty4000%
\sfcode`\.\@m
}{%
\def\@noitemerr
{\@latex@warning{Empty `thebibliography' environment}}%
\endlist \vskip.2in}
\AtEndOfClass{\input{PRCthesis.cfg}}
\endinput
%%
%% End of file `PRCthesis.cls'.
