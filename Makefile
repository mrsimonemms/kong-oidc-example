K3D_CONFIG ?= './k3d.config.yaml'

all: destroy provision

destroy:
	k3d cluster delete --config ${K3D_CONFIG} || true
.PHONY: destroy

provision:
	k3d cluster create --config ${K3D_CONFIG} --wait
.PHONY: provision
