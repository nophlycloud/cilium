module clerk

go 1.21

// Packages that we pin versions to so we compile with only one version
replace golang.org/x/net => golang.org/x/net v0.25.0

require (
	cloud.google.com/go/logging v1.7.0
	cloud.google.com/go/profiler v0.3.0
	cloud.google.com/go/pubsub v1.33.0
	cloud.google.com/go/storage v1.34.0
	firebase.google.com/go/v4 v4.6.0
	github.com/Aoang/firebase-scrypt v1.1.0
	github.com/BurntSushi/toml v1.3.2
	github.com/alexsergivan/transliterator v1.0.0
	github.com/aymerick/raymond v2.0.3-0.20180322193309-b565731e1464+incompatible
	github.com/brianvoe/gofakeit/v6 v6.19.0
	github.com/clerk/clerk-sdk-go/v2 v2.0.4
	github.com/cloudflare/cloudflare-go v0.79.0
	github.com/crewjam/saml v0.4.14
	github.com/dnsimple/dnsimple-go v0.70.1
	github.com/dongri/phonenumber v0.1.2
	github.com/dustinkirkland/golang-petname v0.0.0-20191129215211-8e5a1ed0cff0
	github.com/ethereum/go-ethereum v1.13.15
	github.com/fatih/color v1.15.0
	github.com/friendsofgo/errors v0.9.2
	github.com/gavv/httpexpect/v2 v2.3.0
	github.com/gertd/go-pluralize v0.2.1
	github.com/getkin/kin-openapi v0.107.0
	github.com/getsentry/sentry-go v0.27.0
	github.com/go-chi/chi/v5 v5.0.10
	github.com/go-chi/cors v1.2.0
	github.com/go-chi/hostrouter v0.2.0
	github.com/go-errors/errors v1.4.2
	github.com/go-jose/go-jose/v3 v3.0.3
	github.com/go-oauth2/oauth2/v4 v4.5.2
	github.com/go-playground/form v3.1.4+incompatible
	github.com/go-playground/validator/v10 v10.15.1
	github.com/google/go-github/v55 v55.0.0
	github.com/hashicorp/go-cleanhttp v0.5.2
	github.com/hashicorp/go-hclog v1.5.0
	github.com/hashicorp/go-retryablehttp v0.7.4
	github.com/hashicorp/go-version v1.6.0
	github.com/jackc/pgtype v1.7.0 // indirect
	github.com/jaytaylor/html2text v0.0.0-20211105163654-bc68cce691ba
	github.com/jonboulle/clockwork v0.2.2
	github.com/json-iterator/go v1.1.12
	github.com/kat-co/vala v0.0.0-20170210184112-42e1d8b61f12
	github.com/lib/pq v1.10.9
	github.com/mattevans/postmark-go v0.1.5
	github.com/mrjones/oauth v0.0.0-20180629183705-f4e24b6d100c
	github.com/mssola/user_agent v0.5.3
	github.com/oklog/ulid/v2 v2.1.0
	github.com/pganalyze/pg_query_go/v4 v4.2.3
	github.com/pquerna/otp v1.3.0
	github.com/redis/go-redis/v9 v9.4.0
	github.com/rubenv/sql-migrate v1.5.2
	github.com/segmentio/analytics-go/v3 v3.2.1
	github.com/segmentio/ksuid v1.0.3
	github.com/sendgrid/rest v2.6.4+incompatible
	github.com/sendgrid/sendgrid-go v3.10.0+incompatible
	github.com/spf13/viper v1.16.0
	github.com/stretchr/testify v1.8.4
	github.com/stripe/stripe-go/v72 v72.122.0
	github.com/svix/svix-webhooks v0.64.1
	github.com/team-plain/go-sdk v0.0.1
	github.com/tidwall/gjson v1.16.0
	github.com/twilio/twilio-go v1.4.0
	github.com/urfave/cli/v2 v2.25.7
	github.com/vgarvardt/backoff v1.0.0
	github.com/vgarvardt/gue/v2 v2.2.1
	github.com/volatiletech/null/v8 v8.1.2
	github.com/volatiletech/randomize v0.0.1
	github.com/volatiletech/sqlboiler/v4 v4.15.1-0.20231018073809-849adb0d9172
	github.com/volatiletech/strmangle v0.0.5
	github.com/weppos/publicsuffix-go v0.30.2
	golang.org/x/crypto v0.23.0
	golang.org/x/net v0.25.0
	golang.org/x/oauth2 v0.16.0
	golang.org/x/sync v0.6.0
	golang.org/x/text v0.15.0
	google.golang.org/api v0.146.0
	gopkg.in/DataDog/dd-trace-go.v1 v1.59.1
	mvdan.cc/xurls/v2 v2.5.0 // when upgrading this module, remember to confirm that it still redirects to github

)

require (
	github.com/DataDog/datadog-go/v5 v5.5.0
	github.com/alicebob/miniredis/v2 v2.32.1
	github.com/go-webauthn/webauthn v0.10.1
	github.com/google/go-cmp v0.6.0
	github.com/google/uuid v1.6.0
	github.com/microcosm-cc/bluemonday v1.0.26
	github.com/pkg/errors v0.9.1
	golang.org/x/sys v0.20.0
	golang.org/x/tools v0.15.0
	google.golang.org/grpc v1.60.0-dev
)

require (
	cloud.google.com/go v0.110.10 // indirect
	cloud.google.com/go/compute v1.23.2 // indirect
	cloud.google.com/go/compute/metadata v0.2.3 // indirect
	cloud.google.com/go/firestore v1.14.0 // indirect
	cloud.google.com/go/iam v1.1.4 // indirect
	cloud.google.com/go/longrunning v0.5.3 // indirect
	github.com/DataDog/appsec-internal-go v1.4.0 // indirect
	github.com/DataDog/datadog-agent/pkg/obfuscate v0.48.0 // indirect
	github.com/DataDog/datadog-agent/pkg/remoteconfig/state v0.48.1 // indirect
	github.com/DataDog/go-libddwaf/v2 v2.2.3 // indirect
	github.com/DataDog/go-tuf v1.0.2-0.5.2 // indirect
	github.com/DataDog/sketches-go v1.4.2 // indirect
	github.com/Microsoft/go-winio v0.6.1 // indirect
	github.com/ProtonMail/go-crypto v0.0.0-20230217124315-7d5c6f04bbb8 // indirect
	github.com/ajg/form v1.5.1 // indirect
	github.com/alicebob/gopher-json v0.0.0-20200520072559-a9ecdc9d1d3a // indirect
	github.com/andybalholm/brotli v1.0.6 // indirect
	github.com/aymerick/douceur v0.2.0 // indirect
	github.com/beevik/etree v1.2.0 // indirect
	github.com/bits-and-blooms/bitset v1.10.0 // indirect
	github.com/bmizerany/assert v0.0.0-20160611221934-b7ed37b82869 // indirect
	github.com/boombuler/barcode v1.0.1-0.20190219062509-6c824513bacc // indirect
	github.com/btcsuite/btcd/btcec/v2 v2.2.0 // indirect
	github.com/cespare/xxhash/v2 v2.2.0 // indirect
	github.com/cloudflare/circl v1.3.7 // indirect
	github.com/consensys/bavard v0.1.13 // indirect
	github.com/consensys/gnark-crypto v0.12.1 // indirect
	github.com/cpuguy83/go-md2man/v2 v2.0.2 // indirect
	github.com/crate-crypto/go-kzg-4844 v0.7.0 // indirect
	github.com/crewjam/httperr v0.2.0 // indirect
	github.com/davecgh/go-spew v1.1.2-0.20180830191138-d8f796af33cc // indirect
	github.com/decred/dcrd/dcrec/secp256k1/v4 v4.0.1 // indirect
	github.com/dgryski/go-rendezvous v0.0.0-20200823014737-9f7001d12a5f // indirect
	github.com/dustin/go-humanize v1.0.1 // indirect
	github.com/ebitengine/purego v0.5.2 // indirect
	github.com/ericlagergren/decimal v0.0.0-20211103172832-aca2edc11f73 // indirect
	github.com/ethereum/c-kzg-4844 v0.4.0 // indirect
	github.com/fatih/structs v1.1.0 // indirect
	github.com/fsnotify/fsnotify v1.6.0 // indirect
	github.com/fxamacker/cbor/v2 v2.5.0 // indirect
	github.com/gabriel-vasile/mimetype v1.4.2 // indirect
	github.com/go-openapi/jsonpointer v0.19.5 // indirect
	github.com/go-openapi/swag v0.19.5 // indirect
	github.com/go-playground/locales v0.14.1 // indirect
	github.com/go-playground/universal-translator v0.18.1 // indirect
	github.com/go-webauthn/x v0.1.8 // indirect
	github.com/goccy/go-json v0.10.2 // indirect
	github.com/gofrs/uuid v4.4.0+incompatible // indirect
	github.com/golang-jwt/jwt v3.2.2+incompatible // indirect
	github.com/golang-jwt/jwt/v4 v4.5.0 // indirect
	github.com/golang-jwt/jwt/v5 v5.2.0 // indirect
	github.com/golang/groupcache v0.0.0-20210331224755-41bb18bfe9da // indirect
	github.com/golang/mock v1.6.0 // indirect
	github.com/golang/protobuf v1.5.3 // indirect
	github.com/google/go-querystring v1.1.0 // indirect
	github.com/google/go-tpm v0.9.0 // indirect
	github.com/google/pprof v0.0.0-20230817174616-7a8ec2ada47b // indirect
	github.com/google/s2a-go v0.1.7 // indirect
	github.com/googleapis/enterprise-certificate-proxy v0.3.2 // indirect
	github.com/googleapis/gax-go/v2 v2.12.0 // indirect
	github.com/gorilla/css v1.0.0 // indirect
	github.com/gorilla/mux v1.8.0 // indirect
	github.com/gorilla/websocket v1.5.0 // indirect
	github.com/hashicorp/errwrap v1.1.0 // indirect
	github.com/hashicorp/go-multierror v1.1.1 // indirect
	github.com/hashicorp/hcl v1.0.1-vault-5 // indirect
	github.com/holiman/uint256 v1.2.4 // indirect
	github.com/imkira/go-interpol v1.1.0 // indirect
	github.com/invopop/yaml v0.1.0 // indirect
	github.com/jackc/pgio v1.0.0 // indirect
	github.com/josharian/intern v1.0.0 // indirect
	github.com/klauspost/compress v1.17.1 // indirect
	github.com/leodido/go-urn v1.2.4 // indirect
	github.com/magiconair/properties v1.8.7 // indirect
	github.com/mailru/easyjson v0.7.7 // indirect
	github.com/mattermost/xml-roundtrip-validator v0.1.0 // indirect
	github.com/mattn/go-colorable v0.1.13 // indirect
	github.com/mattn/go-isatty v0.0.20 // indirect
	github.com/mattn/go-runewidth v0.0.15 // indirect
	github.com/mitchellh/mapstructure v1.5.0 // indirect
	github.com/mmcloughlin/addchain v0.4.0 // indirect
	github.com/modern-go/concurrent v0.0.0-20180306012644-bacd9c7ef1dd // indirect
	github.com/modern-go/reflect2 v1.0.2 // indirect
	github.com/mohae/deepcopy v0.0.0-20170929034955-c48cc78d4826 // indirect
	github.com/olekukonko/tablewriter v0.0.5 // indirect
	github.com/onsi/ginkgo v1.16.4 // indirect
	github.com/onsi/gomega v1.20.0 // indirect
	github.com/outcaste-io/ristretto v0.2.3 // indirect
	github.com/pelletier/go-toml/v2 v2.1.0 // indirect
	github.com/philhofer/fwd v1.1.2 // indirect
	github.com/pmezard/go-difflib v1.0.1-0.20181226105442-5d4384ee4fb2 // indirect
	github.com/rivo/uniseg v0.4.4 // indirect
	github.com/russellhaering/goxmldsig v1.4.0 // indirect
	github.com/russross/blackfriday/v2 v2.1.0 // indirect
	github.com/secure-systems-lab/go-securesystemslib v0.7.0 // indirect
	github.com/segmentio/backo-go v1.0.1 // indirect
	github.com/sergi/go-diff v1.2.0 // indirect
	github.com/spf13/afero v1.9.5 // indirect
	github.com/spf13/cast v1.5.1 // indirect
	github.com/spf13/jwalterweatherman v1.1.0 // indirect
	github.com/spf13/pflag v1.0.5 // indirect
	github.com/ssor/bom v0.0.0-20170718123548-6386211fdfcf // indirect
	github.com/stretchr/objx v0.5.1 // indirect
	github.com/subosito/gotenv v1.6.0 // indirect
	github.com/supranational/blst v0.3.11 // indirect
	github.com/tidwall/btree v1.6.0 // indirect
	github.com/tidwall/buntdb v1.3.0 // indirect
	github.com/tidwall/grect v0.1.4 // indirect
	github.com/tidwall/match v1.1.1 // indirect
	github.com/tidwall/pretty v1.2.1 // indirect
	github.com/tidwall/rtred v0.1.2 // indirect
	github.com/tidwall/tinyqueue v0.1.1 // indirect
	github.com/tinylib/msgp v1.1.8 // indirect
	github.com/valyala/bytebufferpool v1.0.0 // indirect
	github.com/valyala/fasthttp v1.50.0 // indirect
	github.com/volatiletech/inflect v0.0.1 // indirect
	github.com/x448/float16 v0.8.4 // indirect
	github.com/xeipuuv/gojsonpointer v0.0.0-20190905194746-02993c407bfb // indirect
	github.com/xeipuuv/gojsonreference v0.0.0-20180127040603-bd5ef7bd5415 // indirect
	github.com/xeipuuv/gojsonschema v1.2.0 // indirect
	github.com/xrash/smetrics v0.0.0-20201216005158-039620a65673 // indirect
	github.com/yalp/jsonpath v0.0.0-20180802001716-5cc68e5049a0 // indirect
	github.com/yudai/gojsondiff v1.0.0 // indirect
	github.com/yudai/golcs v0.0.0-20170316035057-ecda9a501e82 // indirect
	github.com/yuin/gopher-lua v1.1.1 // indirect
	github.com/zenazn/goji v1.0.1 // indirect
	go.opencensus.io v0.24.0 // indirect
	go.uber.org/atomic v1.11.0 // indirect
	go4.org/intern v0.0.0-20230525184215-6c62f75575cb // indirect
	go4.org/unsafe/assume-no-moving-gc v0.0.0-20231121144256-b99613f794b6 // indirect
	golang.org/x/exp v0.0.0-20231110203233-9a3e6036ecaa // indirect
	golang.org/x/mod v0.14.0 // indirect
	golang.org/x/time v0.5.0 // indirect
	golang.org/x/xerrors v0.0.0-20220907171357-04be3eba64a2 // indirect
	google.golang.org/appengine v1.6.8 // indirect
	google.golang.org/genproto v0.0.0-20230913181813-007df8e322eb // indirect
	google.golang.org/genproto/googleapis/api v0.0.0-20230913181813-007df8e322eb // indirect
	google.golang.org/genproto/googleapis/rpc v0.0.0-20230920204549-e6e6cdab5c13 // indirect
	google.golang.org/protobuf v1.33.0 // indirect
	gopkg.in/go-playground/assert.v1 v1.2.1 // indirect
	gopkg.in/ini.v1 v1.67.0 // indirect
	gopkg.in/yaml.v2 v2.4.0 // indirect
	gopkg.in/yaml.v3 v3.0.1 // indirect
	inet.af/netaddr v0.0.0-20230525184311-b8eac61e914a // indirect
	moul.io/http2curl v1.0.1-0.20190925090545-5cd742060b0e // indirect
	rsc.io/tmplfunc v0.0.3 // indirect
)
