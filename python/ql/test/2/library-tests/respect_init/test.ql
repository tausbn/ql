import python

//select count(Module m | not m.isPackage()),
//       count(Module m | m.isPackage())

from Container c
where
    py_module_path(_, c)
select c

/*from string s1, string s2, Container c
where c.getName() = s1 and c.getBaseName() = s2
select s1, s2
*/

//select any(Folder f)