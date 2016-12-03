\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{cv}[2016/01/01 My custom CV class]

\LoadClass{article}

% UTF8
\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}

% For neater titles
\RequirePackage{titlesec}

% For page layout
\RequirePackage{geometry}

% For icons
\RequirePackage{fontawesome}

% For links
\RequirePackage{hyperref}

% For colors
\RequirePackage{xcolor}
\definecolor{orange}{RGB}{255,127,0}
\definecolor{green}{RGB}{0,102,51}

% For images
\RequirePackage{graphicx}

% Remove page numbering
\pagenumbering{gobble}

% Margins
\geometry{
    left=20mm,
    right=20mm,
    top=24mm,
    bottom=24mm
}

% Customize \section
\titleformat{\section}
    % Large, small capitals, left aligned
    {\large\scshape\raggedright}
    {}{0em}
    % No numbering
    {}
    % Horizontal line after the heading
    [\titlerule]

% Customize \subsection
\titleformat{\subsection}
    {\large\bfseries\raggedright}
    {}{0em}
    {}

% Possibility to add a date to a subsection
\newcommand{\datedsubsection}[2]{
    \subsection[#1]{#1 \hfill \textsl{\small{#2}}}
}

% Name
\newcommand{\name}[1]{
    \centerline{\textbf{\textit{\Huge{#1}}}}
    \vspace{2mm}
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
