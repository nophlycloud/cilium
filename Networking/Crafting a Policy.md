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
