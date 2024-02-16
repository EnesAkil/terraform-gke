
# ================================================================================
# optional modules
# ================================================================================


# nginx ingress controller
# ================================================================================
module "ingress-nginx" {
  source = "./modules/ingress-nginx/"

  depends_on = [ 
    google_container_node_pool.primary_dt
   ]
}

# cert manager (letsencrypt)
# ================================================================================
module "certmanager" {
  source = "./modules/cert-manager/"

  depends_on = [ 
    google_container_node_pool.primary_dt
   ]
}

# simple nginx container with an ingress
# (point your hostname / dns to the public ip of gke cluster 'ingress-loadbalancer-ip')
# ================================================================================
module "test_app" {
  source   = "./modules/testapp/"
  hostname = "test.test.opensight.ch"

  depends_on = [
    module.ingress-nginx,
    module.certmanager
  ]
}

