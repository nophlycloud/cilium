const m = require('escape-string-regexp');
import escapeStringRegexp from 'escape-string-regexp';

import { Request, Response, NextFunction } from 'express'

module.exports = function search () {
  return (req: Request, res: Response, next: NextFunction) => {
    let criteria = req.query.foo
     // ok: regexp-redos
     new RegExp(m(criteria))
     // ok: regexp-redos
     new RegExp(escapeStringRegexp(criteria))
     // ruleid: regexp-redos
     new RegExp(criteria)
    // ruleid: regexp-redos
     new RegExp(`ree.*${criteria}`)
    // ok: regexp-redos
     new RegExp(res.session)  
    // ruleid: regexp-redos
    source.match(`ree.*${criteria}`)
    // ok: regexp-redos
    source.match(`ree.*${escapeStringRegexp(criteria)}`)
  }
}
