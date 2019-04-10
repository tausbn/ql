import python

Import top_level_import() {
    result = any(Module m).getAStmt()
}

predicate is_unresolved(Import i) {
    not i.getAName().getAsname().refersTo(_)
}

from Import i, string status
where
    i = top_level_import() and
    (
    status = "good" and
    not is_unresolved(i)
    or
    status = "bad"
    and
    is_unresolved(i)
    )
select status, i

//from Module m
//select m