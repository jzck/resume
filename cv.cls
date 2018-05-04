\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{cv}[2016/01/01 My custom CV class]

\LoadClass{article}

% UTF8
\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}
\RequirePackage[frenchb]{babel}

\RequirePackage{mdframed}
\RequirePackage{multicol}
\RequirePackage{vwcol}
\RequirePackage{movie15}
\RequirePackage{titlesec} % For neater titles
\RequirePackage{geometry} % For page layout
\RequirePackage{fontawesome} % For icons
\RequirePackage{hyperref} % For links
\RequirePackage{xcolor} % For colors
\RequirePackage{graphicx} % For images
\pagenumbering{gobble} % Remove page numbering
\RequirePackage{adforn} % For decorations

\definecolor{orange}{RGB}{255,127,0}
\definecolor{green}{RGB}{0,102,51}

% Margins
\geometry{
	left=10mm,
	right=10mm,
	top=10mm,
	bottom=15mm,
}

% Customize \section
\renewcommand{\section}[1]{
	\noindent
	\begin{mdframed}
		\large\scshape\raggedright #1
	\end{mdframed}
}

% Customize \subsection
\titleformat{\subsection}
{\large\bfseries\raggedright}
{}{0em}
{}

% Possibility to add a date to a subsection
\newcommand{\datedsubsection}[2]{
	\subsection[#1]{#1 \hfill \textsl{\small{#2}}}
}

\newenvironment{cv_content}
{
	\begin{flushright}
		\begin{minipage}{.95\textwidth}
		}
			{
		\end{minipage}
	\end{flushright}
}

% Name
\newcommand{\name}[1]{
	\centerline{\textbf{\textit{\Huge{#1}}}}
	\vspace{2mm}
	\centerline{\Huge{\adforn{54}}}
}

% Contact information

% Skill title
\newcommand{\skilltitle}[1]{
	\vspace{2mm}
	\textbf{#1} \\
}

% Skill description
\newcommand{\skilldesc}[1]{
	\vspace{2mm}
#1 \\
}
