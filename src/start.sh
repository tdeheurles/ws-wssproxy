# from => https://github.com/GoogleCloudPlatform/nginx-ssl-proxy/blob/master/start.sh

# # If the SERVICE_HOST_ENV_NAME and SERVICE_PORT_ENV_NAME vars are provided,
# # they point to the env vars set by Kubernetes that contain the actual
# # target address and port. Override the default with them.
# if [ -n "${SERVICE_HOST_ENV_NAME+1}" ]; then
#   TARGET_SERVICE=${!SERVICE_HOST_ENV_NAME}
# fi
# if [ -n "${SERVICE_PORT_ENV_NAME+1}" ]; then
#   TARGET_SERVICE="$TARGET_SERVICE:${!SERVICE_PORT_ENV_NAME}"
# fi
#
# # Tell nginx the address and port of the service to proxy to
# sed -i "s/{{TARGET_SERVICE}}/${TARGET_SERVICE}/g;" /etc/nginx/conf.d/site.conf

echo "Starting nginx..."
nginx -g 'daemon off;'
