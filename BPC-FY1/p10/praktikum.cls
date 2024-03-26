%% Třída "protokol.cls" vychází ze souboru praktikum.cls
%% od Petra Sadovského (http://fyzika.feec.vutbr.cz/~petrsad/),
%% který v roce 2008 upravil Daniel Horák
%% (http://disk.jabbim.cz/horada@jabbim.cz/sablona_protokolu_univerzalni.zip).
%% V roce 2009 mírně upravil a převedl zpět do CP1250 Pavel Rajmic
%% V roce 2023 maličko upravili a přeedli na UTF8 Šťur a sandlerino
%% (http://latex.feec.vutbr.cz/)

%% Některé příkazy z původní třídy nejsou využity (například \ucitel{}
%% Hlavička je trochu upravena pro obecnější použití
%% (název školy, předmětu a ústavu se nastavují přímo v dokumentu
%% patřičnými příkazy)

%% Kódování se předpokládá CP1250, aby bylo možno pohodlně pracovat s TeXnicCenter.

%% Hlavička původního souboru  %%%%%%%%%%%%%%%%
%%
%% This is file `praktikum.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% praktikum.dtx  (with options: `class')
%% 
%% Copyright (C) 2004 
%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{praktikum}
    [2004/02/14 Document class for Physical Practicum Proceeding]
\LoadClass[a4paper,onecolumn,12pt]{article}
\usepackage[czech]{babel}
\usepackage[utf8]{inputenc}
\usepackage[T1]{fontenc}
\usepackage{calc}
\usepackage{layout}
\usepackage{graphicx}
\usepackage{ae}
\usepackage{amsmath}
%\setlength{\mathindent}{0pt}
\usepackage{amssymb}
\usepackage{tabularray}
\usepackage{icomma}
\usepackage{float}
\usepackage{upgreek}
\usepackage[export]{adjustbox}
\usepackage{multirow}
\usepackage{booktabs} 
\usepackage{caption}

%\catcode`\-=12


\setlength{\textwidth}{\paperwidth-5cm}
\setlength{\textheight}{\paperheight-5cm}
\setlength{\hoffset}{2.5cm-1in} 
\setlength{\voffset}{2.5cm-1in}
\setlength{\oddsidemargin}{0pt} 
\setlength{\evensidemargin}{0pt}
\setlength{\topmargin}{-1.2cm}
\setlength{\headsep}{-\topmargin-\headheight}
\setlength{\marginparsep}{5pt} 
\setlength{\marginparwidth}{2cm}
   
\setcounter{secnumdepth}{-1}

\pagestyle{empty}

\hfuzz = 1pt
\tolerance = 1000
\widowpenalty = 10000
\clubpenalty = 8000

\def\@jmeno{}
\def\@kod{}
\def\@rocnik{}
\def\@obor{}
\def\@skupina{}
\def\@labskup{}
\def\@spolupracoval{}
\def\@ucitel{}
\def\@merenodne{}
\def\@odevzdanodne{}
\def\@priprava{}
\def\@opravy{}
\def\@nazev{}
\def\@cislo{}

\def\jmeno #1{\def\@jmeno{#1}}
\def\kod #1{\def\@kod{#1}}
\def\rocnik #1{\def\@rocnik{#1}}
\def\obor #1{\def\@obor{#1}}
\def\skupina #1{\def\@skupina{#1}}
\def\labskup #1{\def\@labskup{#1}}
\def\spolupracoval #1{\def\@spolupracoval{#1}}
\def\ucitel #1{\def\@ucitel{#1}}
\def\merenodne #1{\def\@merenodne{#1}}
\def\odevzdanodne #1{\def\@odevzdanodne{#1}}
\def\priprava #1{\def\@priprava{#1}}
\def\opravy #1{\def\@opravy{#1}}
\def\nazev #1{\def\@nazev{#1}}
\def\cislo #1{\def\@cislo{#1}}

\def\hposuna{\hspace*{-2\fboxrule}}
\def\hposunb{\hspace*{-4\fboxrule}}
\def\hposunc{\hspace*{-1\fboxrule}}
\def\hposund{\hspace*{-5\fboxrule}}
\def\vposuna{\vspace*{-2\fboxrule}}
\def\vposunb{\vspace*{-1.25\fboxrule}}
\def\vposunc{\vspace*{+1.25\fboxrule}}

\renewcommand{\maketitle}{%
  \begin{center}%
  \fboxrule=1mm%
  \fbox{\parbox[t][5,4cm]{16cm}{%
    \vposuna\hposuna\fbox{\parbox[b][1,8cm][c]{7cm}{%
      \begin{center}%
      \large{\mbox{\textbf{FYZIKÁLNÍ PRAKTIKUM}}}\par\textbf{Ústav fyziky}\par FEKT VUT BRNO%
      \end{center}}}%
    \vposunb%
    \fboxrule=0.35mm%
    \hposunc%
    \fbox{\parbox[b][1,85cm][c]{8,675cm}{%
      \hposunb\fbox{\parbox[t][0,875cm]{6,675cm}{%
        \raggedright{\footnotesize{\textbf{Jméno}}}\par%
        \raggedleft{\textbf{\@jmeno}}}}%
      \hposunc\fbox{\parbox[t][0,875cm]{1,75cm}{%
        \raggedright{\footnotesize{Kód}}\par\raggedleft{\textbf{\@kod}}}}%
      \vposuna\par%
      \hposunb\vposuna\fbox{\parbox[t][0,75cm]{2,68cm}{%
        \raggedright{\footnotesize{Ročník}}\par\raggedleft{\@rocnik}}}%
      \hposunc\fbox{\parbox[t][0,75cm]{1,75cm}{%
        \raggedright{\footnotesize{Obor}}\par\raggedleft{\@obor}}}%
      \hposunc\fbox{\parbox[t][0,75cm]{1,75cm}{%
        \raggedright{\footnotesize{Skupina}}\par\raggedleft{\@skupina}}}%
      \hposunc\fbox{\parbox[t][0,75cm]{1,75cm}{%
        \raggedright{\footnotesize{Lab. skup.}}\par\raggedleft{\@labskup}}}%
    \par}}\\%
    \vposuna\hposunb\fbox{\parbox[b][1,8cm][c]{7,075cm}{%
      \hposunb\fbox{\parbox[t][0,8cm]{7,05cm}{%
        \raggedright{\footnotesize{Spolupracoval}}\par\raggedleft{\@spolupracoval}}}%
      \vposuna\par\hposunb\fbox{\parbox[t][0,8cm]{3,35cm}{%
        \raggedright{\footnotesize{Příprava}}\par\raggedleft{\@priprava}}}%
      \hposunc\fbox{\parbox[t][0,8cm]{3,45cm}{%
        \raggedright{\footnotesize{Opravy}}\par\raggedleft{\@opravy}}}}} %
    \hposunb\fbox{\parbox[b][1,8cm][c]{8,72cm}{%
      \vposunc\hposund\fbox{\parbox[t][0,79cm]{4,720cm}{%
        \raggedright{\footnotesize{Měřeno dne}}\par\raggedleft{\@merenodne}}}%
      \hposunc\fbox{\parbox[t][0,79cm]{3,75cm}{%
        \raggedright{\footnotesize{Odevzdáno dne}}\par\raggedleft{\@odevzdanodne}}}%
      \vposuna\par\hposund\fbox{\parbox[t][0,8cm]{4,720cm}{%
        \raggedright{\footnotesize{Učitel}}\par\raggedleft{\footnotesize\@ucitel}}}%
      \hposunc\fbox{\parbox[t][0,8cm]{3,75cm}{%
        \raggedright{\footnotesize{\textbf{Hodnocení}}}\par}}}}%
    \fboxrule=1mm%
    \par\hposuna\fbox{\parbox[b][1,2cm][t]{14cm}{%
      \raggedright{\footnotesize{Název úlohy}}\par\centering{\Large{\textbf{\@nazev}}}}}%
    \hposunc\fbox{\parbox[b][1,2cm][t]{1,675cm}{%
      \centering{\footnotesize{Č. úlohy}}\par\centering{\large{\textbf{\@cislo}}}}}\par%
  }}%
  \end{center}%
}
\captionsetup{labelformat=empty}
\addto\captionsczech{\renewcommand{\figurename}{}}
\catcode`\"=\active
\def"{\bgroup\quotedblbase\def"{\textquotedblleft\egroup}}


\AtBeginDocument{\catcode`\"=\active}
\endinput
%%
%% End of file `protokol.cls'. 