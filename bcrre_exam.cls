%-------------------
%
% TEMPLATE SETUP
%
%-------------------
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{bcrre_exam}
\LoadClass[11pt]{exam}
%-------------------
%
% GENERAL PACKAGES
%
%-------------------
\RequirePackage{amsmath}
\RequirePackage{ragged2e}
\RequirePackage{lipsum}
\RequirePackage{amsmath}
\RequirePackage[utf8]{inputenc}
\RequirePackage[english]{babel}
\RequirePackage{booktabs}
\RequirePackage{siunitx}
\RequirePackage{caption}
\RequirePackage{subcaption}
\RequirePackage[acronym]{glossaries}
%-------------------
%
% PAGE GEOMETRY
%
%-------------------
\RequirePackage[]{geometry}
% Typographic rules,
% a4 paper; text block height = width of page; inner/top:outer/bottom margin ratio = golden ratio
\geometry{
  a4paper,
  inner=25.9mm,  % x
  outer=41.9mm,  % 1.618x
  top=25.9mm,    % x
  bottom=41.9mm  % 1.618x
}
%-------------------
%
% GRAPHICS
%
%-------------------
\RequirePackage{graphicx}
\graphicspath{ {images/} }
%-------------------
%
% FONTS
%
%-------------------
\RequirePackage{fontspec}
\setmainfont{Manrope}[ % serif font (title page and headings)
    Path=font/manrope/,
    Scale=1,
    UprightFont=*-Regular.ttf,
    BoldFont=*-Bold.ttf,
    ItalicFont=*-LightItalic.otf,
    BoldItalicFont=*-BoldItalic.otf
]
%-------------------
%
% Section Formatting
%
%-------------------
\RequirePackage{etoolbox}

\patchcmd{\questions}{10.}{\thequestion.}{}{}% fix left margin