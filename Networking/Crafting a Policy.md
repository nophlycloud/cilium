**Creating a network policy commands and syntax**

1. Restrict access to a specific class:

```
spec:
  description: "L3-L4 policy to restrict deathstar access to empire ships only"
  endpointSelector:
    matchLabels:
      org: empire
      class: deathstar
```

2. Restrict ingress from endpoint to a specific label and allow specific port access:

```
  ingress:
  - fromEndpoints:
    - matchLabels:
        org: empire
    toPorts:
    - ports:
      - port: "80"
        protocol: TCP
```

3. Create rule for specific endpoint:

```
rules:
  http:
  - method: "POST"
    path: "/v1/request-landing"
```

4. Entire policy sample:
```
apiVersion: cilium.io/v2
kind: CiliumNetworkPolicy
metadata:
  name: rule1
spec:
  endpointSelector:
    matchLabels:
      org: empire
      class: deathstar
  ingress:
    - fromEndpoints:
        - matchLabels:
            org: empire
            class: tiefighter
      toPorts:
        - ports:
            - port: "80"
```
