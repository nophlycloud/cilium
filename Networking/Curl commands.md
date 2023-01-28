**Curls commands to test API functionality and access to certain endpoints**

1. Attempt to access certain endpoint:
```
kubectl exec tiefighter -- curl -s -XPUT deathstar.default.svc.cluster.local/v1/exhaust-port
```
