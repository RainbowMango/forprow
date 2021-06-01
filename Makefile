
# Images management
REGISTRY?=""
REGISTRY_PASSWORD?=""
REGISTRY_SERVER_ADDRESS?=""
REGISTRY_USER_NAME?=""
LITERAL_ENV?=""
VERSION?=""

upload-images:
	@echo " SWR_REGISTRY= $(REGISTRY)"
	@echo " SWR_REGISTRY_PASSWORD= $(REGISTRY_PASSWORD)"
	@echo " SWR_REGISTRY_SERVER_ADDRESS= $(REGISTRY_SERVER_ADDRESS)"
	@echo " SWR_REGISTRY_USER_NAME= $(REGISTRY_USER_NAME)"
	@echo " LITERAL_ENV= $(LITERAL_ENV)"
	@echo " VERSION= $(VERSION)"
ifneq ($(REGISTRY_USER_NAME), "")
	@echo " Docker logining"
	docker login -u ${REGISTRY_USER_NAME} -p ${REGISTRY_PASSWORD} ${REGISTRY_SERVER_ADDRESS}
endif
	@echo " Image pushing"