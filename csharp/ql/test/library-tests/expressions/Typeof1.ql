/**
 * @name Test for typeof expressions
 */

import csharp

from Method m, TypeofExpr e
where
  m.hasName("PrintTypes") and
  e.getEnclosingCallable() = m and
  e.getTypeAccess().getTarget() instanceof VoidType
select m, e
