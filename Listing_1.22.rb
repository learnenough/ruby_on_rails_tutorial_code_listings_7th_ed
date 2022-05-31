
To prepare the system for deployment to production, we first run a special \kode{bundle config} command to prevent the local installation of any production gems (which in this case consists of the \texttt{pg}~gem), as shown in Listing~\ref{code:bundle_without_production}. We've also included a line to add the Linux deployment platform, which is required on some systems.

\begin{codelisting}
\label{code:bundle_without_production}
\codecaption{Bundling without production gems.}
%= lang:console
\begin{code}
$ bundle _2.3.14_ config set --local without 'production'
$ bundle _2.3.14_ install
$ bundle _2.3.14_ lock --add-platform x86_64-linux
