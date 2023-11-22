'use strict';

const _ = require('lodash');

module.exports = function (client, redirectURI, user, ares, areq, locals, done) {

  sample.function(
    client.tenant,
    { client },
    (error, _sample) => {
      if (error) {
        return done(error);
      }
      const oauthContext = contextNormalizer.oauth2.code.grant(
        client,
        redirectURI,
        user,
        ares,
        areq,
        locals
      );
      const oidcContext = contextNormalizer.oidc.code.grant(client, areq, locals);
      let context = _.merge(
        {
          transactionID: locals.transactionID,
          transactionLinkingID: locals.transactionLinkingID,
        },
        oauthContext,
        oidcContext
      );
    }
  );
};