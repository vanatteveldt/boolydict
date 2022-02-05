
## here add documentation page with the query syntax.

#' @name query_syntax
#' @rdname query_syntax
#'
#' @title Query syntax
#' @description
#' Summary of the query language. Please consult vignette for more details.
#'
#' The following operators and modifiers are supported:
#' \itemize{
#'    \item{Boolean operators AND, OR and NOT. As a shorthand, an empty space can be used as an OR statement, so that -this that those- means -this OR that OR those-. NOT statements strictly mean 'AND NOT', so should only be used between terms (this NOT that).}
#'    \item{Parentheses for queries with multiple Boolean operators. e.g. '(spam AND eggs) NOT (fish AND (chips OR albatros))}
#'    \item{Wildcards ? and *. The questionmark can be used to match 1 unknown character or no character at all, e.g. "?at" would find "cat", "hat" and "at". The asterisk can be used to match any number of unknown characters. Both the asterisk and questionmark can be used at the start, end and within a term.}
#'    \item{Multitoken strings. Can be specified using quotes ("united states") or angle brackets (<united states>). Quotes are more common, but angle brackets are more flexible (and easier on the eyes when typing within a string).}
#'    \item{Proximity search. A max distance between words in a multitoken string can be specified by adding a tilde and number (~10) behind the quote or angle bracket (<climate change>~10)}
#'    \item{Boolean operators can be used within multitoken strings: <(corona OR covid) vaccin*>. }
#'    \item{Multitoken strings can be used within proximity search (requires using angle brackets): <<(corona OR covid) vaccin*> effective>~10}
#'    \item{Case sensitive queries. Add the ~s flag. e.g. COP~s only finds "COP" in uppercase. The ~s flag can also be used on parentheses or quotes to make all terms within case sensitive. e.g. "Marco Polo"~s or (Marco AND Polo)~s. This can be combined with the token proximity flag: <Marco Polo>~s10}
#'    \item{The ~g (ghost) flag can be used to mark a term (or all terms within parentheses/quotes) as a ghost term. This has two effects. Firstly, features that match the query term will not be in the results. This is usefull if a certain term is important for getting reliable search results, but not conceptually relevant. Secondly, ghost terms can be used multiple times, in different query hits (only relevant in unique_hits mode). For example, in the text "A B C", the query 'A~g AND (B C)' will return both B and C as separate hit, whereas 'A AND (B C)' will return A and B as a single hit.}
#'    \item{Aside from the feature column (specified with the feature argument) a query can include any column in the token data. To manually select a column, use 'columnname: ' at the start of a query or nested query (i.e. between parentheses or quotes). See examples for clarification.}
#'    }
NULL
