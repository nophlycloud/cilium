**These commands will jump start your Cilium installation and initial application deployment**

Install: `cilium install`

Check installation status: `cilium status`

Check cilium components: `kubectl rollout status -n kube-system daemonset/cilium`

Deploy an application: `kubectl apply -f https://raw.githubusercontent.com/cilium/cilium/HEAD/examples/minikube/http-sw-app.yaml`

Check pods: `kubectl get pods,svc`

List all endpoints: `kubectl get cep --all-namespaces`
