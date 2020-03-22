%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Medium Length Professional CV - RESUME CLASS FILE
%
% This template has been downloaded from:
% http://www.LaTeXTemplates.com
%
% This class file defines the structure and design of the template.
%
% Original header:
% Copyright (C) 2010 by Trey Hunner
%
% Copying and distribution of this file, with or without modification,
% are permitted in any medium without royalty provided the copyright
% notice and this notice are preserved. This file is offered as-is,
% without any warranty.
%
% Created by Trey Hunner and modified by www.latextemplates.com
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\ProvidesClass{resume}[2010/07/10 v0.9 Resume class]

\LoadClass[11pt,letterpaper]{article} % Font size and paper type

\usepackage[parfill]{parskip} % Remove paragraph indentation
\usepackage{array} % Required for boldface (\bf and \bfseries) tabular columns
\usepackage{ifthen} % Required for ifthenelse statements

\pagestyle{empty} % Suppress page numbers

%----------------------------------------------------------------------------------------
%	RESUME HEADER FORMATTING
%----------------------------------------------------------------------------------------

\newcommand{\rName}[1]{
    \hfil{\MakeUppercase{\namesize{\bf #1}}}\hfil
    \break
}

\newcommand{\rAddress}[1]{
    \centerline{#1}
}

%----------------------------------------------------------------------------------------
%	SECTION FORMATTING
%----------------------------------------------------------------------------------------

% Defines the rSection environment for the large sections within the CV
\newenvironment{rSection}[1]{ % 1 input argument - section name
  %\sectionskip
  \MakeUppercase{\bf #1} % Section title
  \sectionlineskip
  \hrule % Horizontal line
  \begin{list}{}{ % List for each individual item in the section
    \setlength{\leftmargin}{1.0em} % Margin within the section
  }
  \item[]
}{
  \end{list}
}

%----------------------------------------------------------------------------------------
%	WORK EXPERIENCE FORMATTING
%----------------------------------------------------------------------------------------

\newenvironment{rSubsection}[4]{ % 4 input arguments - company name, year(s) employed, job title and location
 {\bf #1} \hfill {#2} % Bold company name and date on the right
 \ifthenelse{\equal{#3}{}}{}{ % If the third argument is not specified, don't print the job title and location line
  \\
  {#3} \hfill {#4}
  }\smallskip
  \begin{list}{$\cdot$}{\leftmargin=0em} % \cdot used for bullets, no indentation
   \itemsep -0.6em \vspace{-0.6em} % Compress items in list together for aesthetics
  }{
  \end{list}
  \vspace{0.20em} % Some space after the list of bullet points
}

%----------------------------------------------------------------------------------------
%	SMALL SECTION FORMATTING
%----------------------------------------------------------------------------------------

\newcommand{\rSmallsectionnl}[4]{ % 4 input arguments - organization, year(s) employed, job title and location
    {\bf #1} -- {#2} -- {#3} -- {#4}}

% This environment has a list inside, the other doesn't.
\newenvironment{rSmallsection}[4]{% 4 input arguments - organization, year(s) employed, job title and location
    \rSmallsectionnl{#1}{#2}{#3}{#4}
    \begin{list}{$\cdot$}{\leftmargin=0em} % \cdot used for bullets, no indentation
        \itemsep -0.6em \vspace{-0.6em} % Compress items in list together for aesthetics
    }{
    \end{list}
    \vspace{0.20em} % Some space after the list of bullet points
}


% The below commands define the whitespace after certain things in the document - they can be \smallskip, \medskip or \bigskip
\def\namesize{\large} % Size of the name at the top of the document (ORIGINAL \huge)
%\def\addressskip{\smallskip} % The space between the two address (or phone/email) lines
\def\sectionlineskip{\smallskip} % The space above the horizontal line for each section
%\def\nameskip{\smallskip} % The space after your name at the top
%\def\sectionskip{\smallskip} % The space after the heading section
