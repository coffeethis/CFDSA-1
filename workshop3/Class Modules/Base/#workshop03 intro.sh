#workshop03 intro

#helm repo list
#helm install ingress-nginx ingress-nginx/ingress-nginx -n ingress-nginx --create-namespace

#watch kctl get all -n ingress-nginx

#helm ls -A

#kctl get /secret/sealed-secrets-keyxxxx -n sealed-secrets -oyaml

# cat cert.crt | base64 -d 
#openssl x509 -in ss.cert -noout -text | less

# within the layer folder
#kctl apply -k . oyaml --dry-run=client

#traffic gen
#siege -c20 -v URL