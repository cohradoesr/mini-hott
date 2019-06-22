Another library for Univalent Foundations in Agda
-------------------------------------------------

The goal of this library is to provide the basis to learn and to use homotopy
type theory to formalize mathematics. For instance, we are using this library to
formalize planar graphs as we showed in TYPES2019. There are many other
libraries in which we have based this developed, so we don't  claim any credit
unless we state it. The complete list of references are on the website at the
end, the section References.


### Agda style

Definitions are presented in the following way using always unicode as much as
possible for readability. Very often, we presented them as rules using before the
main conclusion (or output) a line forms with hyphens.

```
\begin{code}
termName
  :  {...} {t1 : type1}
  → (t2 : type2)
  → ...
  ---------------------
  → ... (t1 t2)

termName = definition

-- infix precedence
infix X termName
\end{code}

\begin{code}
Synonyms:
...
\end{code}
```

Any further comment is very welcomed.
