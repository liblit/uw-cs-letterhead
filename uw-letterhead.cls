%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%  customization via package options
%

\RequirePackage{kvoptions}
\SetupKeyvalOptions{prefix=uw@}

\DeclareBoolOption{preprinted}
\DeclareStringOption{username}
\DeclareStringOption[2-1204]{extension}

\DeclareDefaultOption{%
  \PassOptionsToClass{\CurrentOption}{letter}%
}

\ProcessKeyvalOptions*

\LoadClass{letter}

\RequirePackage{etoolbox}
\RequirePackage{fancyhdr}
\RequirePackage[margin=1in]{geometry}
\RequirePackage{graphicx}
\RequirePackage{hyperref}
\RequirePackage{textcomp}
\RequirePackage{xstring}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%  footer
%

\newcommand{\uw@mailto}[1]{\href{mailto:#1@cs.wisc.edu}{#1@cs.wisc.edu}}

\newcommand{\uw@footer}[0]{
  \begin{minipage}[b]{\textwidth}
    \sffamily

    \begin{center}

      \fontsize{11}{13}\selectfont

      \textbf{%
        \ifcsempty{fromname}{}{\fromname, }%
        Computer Sciences Department}

      \fontsize{10}{12}\selectfont

      University of Wisconsin--Madison \quad
      1210 W. Dayton Street \quad
      Madison, Wisconsin 53706

      \href{tel:+1-(608)-26\uw@extension}{608/26\uw@extension} \quad
      Fax: \href{fax:+1-(608)-262-9777}{608/262-9777} \quad
      E-mail: \uw@mailto{\ifcsempty{uw@username}{chair}{\uw@username}} \quad
      \ifcsempty{uw@username}{%
        \href{http://www.cs.wisc.edu/}{www.cs.wisc.edu}}{%
        \href{http://pages.cs.wisc.edu/~\uw@username/}{pages.cs.wisc.edu/\texttildelow\uw@username}}

    \end{center}
  \end{minipage}}

\fancypagestyle{firstpage}{%
  \renewcommand{\headrulewidth}{0pt}
  \setlength{\footskip}{50pt}
  \fancyhf{}
  \notbool{uw@preprinted}{\fancyfoot[C]{\uw@footer}}{}}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%  top logo
%

\newsavebox{\uwlogo}
\savebox{\uwlogo}{\includegraphics[width=114pt]{uw-logo}}

\newlength{\uwlogoheight}
\settoheight{\uwlogoheight}{\usebox{\uwlogo}}

\apptocmd{\letter}{%
  \begin{center}%
    \ifbool{uw@preprinted}{\rule{0pt}{\uwlogoheight}}{\usebox{\uwlogo}}%
  \end{center}}{}{}
