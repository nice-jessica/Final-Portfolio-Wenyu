\documentclass[12pt]{article}
\usepackage[margin=1in]{geometry}
\usepackage{setspace}
\usepackage{hyperref}
\usepackage{verbatim}
\usepackage{lmodern}

\setlength{\parindent}{0em}
\setlength{\parskip}{1em}

\title{Comprehensive Analysis Repository}
\author{}
\date{}

\begin{document}
\maketitle

\section{Projects Overview}

\subsection{Project 1: Marathon Performance Analysis}

\subsubsection*{Overview}
This project analyzes the effects of age, sex, and environmental conditions on marathon performance, utilizing data from major marathons over the past 15--20 years. By leveraging historical data from five major marathons, the analyses focus on how these variables impact athletic outcomes.

\subsubsection*{Prerequisites}
Before you begin the analysis, ensure that \texttt{R} is installed on your machine along with the following packages:

\begin{itemize}
    \item \texttt{ggplot2}
    \item \texttt{randomForest}
    \item \texttt{dplyr}
    \item \texttt{xgboost}
    \item \texttt{corrplot}
\end{itemize}

You can install these required packages using R commands:

\begin{verbatim}
install.packages("ggplot2")
install.packages("randomForest")
install.packages("dplyr")
install.packages("xgboost")
install.packages("corrplot")
\end{verbatim}

\subsection{Project 2: Smoking Cessation and Psychological Influences in MDD}

\subsubsection*{Overview}
This project explores how baseline psychological and behavioral characteristics affect the success rates of smoking cessation interventions, specifically in individuals with Major Depressive Disorder (MDD). The study aims to enhance personalized treatment strategies to improve cessation success rates by investigating interactions between psychological profiles, treatment types, and pharmacotherapy.

\subsubsection*{Prerequisites}
Before you begin the analysis, ensure that \texttt{R} is installed on your machine along with the necessary packages for statistical modeling and data visualization:

\begin{itemize}
    \item \texttt{ggplot2}
    \item \texttt{caret}
    \item \texttt{e1071}
    \item \texttt{nnet}
    \item \texttt{MASS}
\end{itemize}

You can install these required packages using the following R commands:

\begin{verbatim}
install.packages("ggplot2")
install.packages("caret")
install.packages("e1071")
install.packages("nnet")
install.packages("MASS")
\end{verbatim}

\subsection{Project 3: Statistical Simulation Study}

\subsubsection*{Overview}
This project focuses on running statistical simulations to determine the optimal study design under budget constraints. The simulations compare normal and Poisson distributions using a variety of cost parameters. The project includes multiple simulations aimed at:

\begin{itemize}
    \item Estimating the mean squared error (MSE) of beta estimates under normal and Poisson models.
    \item Optimizing the study design by adjusting the number of clusters and observations per cluster to stay within a set budget.
    \item Comparing the impact of cost ratios on MSE.
\end{itemize}

\subsubsection*{Prerequisites}
Before you begin the simulations, ensure that \texttt{R} is installed on your machine along with the following packages:

\begin{itemize}
    \item \texttt{ggplot2}
    \item \texttt{plotly}
    \item \texttt{gt}
    \item \texttt{dplyr}
    \item \texttt{lme4}
    \item \texttt{tidyverse}
\end{itemize}

\end{document}

