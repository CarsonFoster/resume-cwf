\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{resume-cwf}[2021/11/04 CWF Resume Class]

\RequirePackage[letterpaper, margin=0.5in]{geometry}
\RequirePackage{etoolbox}

% set up font family and sizes
\renewcommand{\familydefault}{\sfdefault} % use sans-serif font family
\renewcommand{\normalsize}{\fontsize{11}{13.2}\selectfont}
\newcommand{\namesize}{\fontsize{17.28}{20.736}\selectfont}
\newcommand{\contactsize}{\fontsize{12}{14.4}\selectfont}

\newcommand{\labelitemi}{$\bullet$ }
\newcommand{\labelitemii}{$\cdot$ }
\newcommand{\labelitemiii}{$\diamond$ }
\newcommand{\labelitemiv}{$\ast$ }
\setlength{\leftmargin}{10mm}

\newcommand{\sep}{ $\bullet$ }

\makeatletter
\newcommand{\website}[1]{\renewcommand\@website{#1}}
\newcommand{\@website}{}
\newcommand{\phone}[1]{\renewcommand\@phone{#1}}
\newcommand{\@phone}{}
\newcommand{\email}[1]{\renewcommand\@email{#1}}
\newcommand{\@email}{}
\newcommand{\address}[1]{\renewcommand\@address{#1}}
\newcommand{\@address}{}
\newcommand{\linkedin}[1]{\renewcommand\@linkedin{#1}}
\newcommand{\@linkedin}{}

\newcommand{\makeinfo}{%
	\begin{center}%
		{\namesize \textbf{\@author}}\\
		\hrulefill\\
		{\contactsize \ifdefempty{\@website}{}{\@website}\ifdefempty{\@address}{}{\sep\@address}\ifdefempty{\@phone}{}{\sep\@phone}\ifdefempty{\@email}{}{\sep\@email}\ifdefempty{\@linkedin}{}{\sep\@linkedin}}\\
		\vspace{5mm}
	\end{center}%
}

\newcommand{\shortlist}[2]{\textbf{#1:} #2\@checkitemscwf}
\newcommand{\@checkitemscwf}{\@ifnextchar\bgroup{\@processitemcwf}{\hfill \break}}
\newcommand{\@processitemcwf}[1]{, #1\@ifnextchar\bgroup{\@processitemcwf}{\hfill \break}} 

\newenvironment{rsection}[1]{%
	% before rsection
	\newcommand{\from}[1]{\renewcommand\@from{##1}}
	\newcommand{\@from}{}
	\renewcommand{\to}[1]{\renewcommand\@to{##1}}
	\newcommand{\@to}{}
	\newenvironment{rsubsection}[2]{%
		% before rsubsection
		\noindent {\textbf{##1}, ##2} \hfill {\ifdefempty{\@from}{}{\@from\ifdefempty{\@to}{}{ - \@to}}}%

	}%
	{%
		% after rsubsection
		%\hfill \break
	}%
	\noindent \textbf{\MakeUppercase{#1}}\\
}%
{%
	% after rsection
	%\hfill \break
}

\pagestyle{empty} % No page numbers, headers, or footers
\makeatother
