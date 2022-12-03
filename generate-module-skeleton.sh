#!/usr/bin/env bash

create_module() {
  MODULE_DIR=$1
  MODULE_NAME=$2
  echo "[INFO]: Creating module directory"
  mkdir -p $MODULE_DIR

  echo "[INFO]: Copying module files"
  cp -r terraform-azurerm-module-skeleton $MODULE_DIR/$MODULE_NAME

  echo "[INFO]: Module directory created as below:"
  tree $MODULE_DIR/$MODULE_NAME

  echo "[INFO]: Please do not forget to initialize a git repository"
}


read -p "[INFO]: Enter module directory: " module_dir
read -p "[INFO]: Enter module name: " module_name

# Ask approval from user
while true; do
  echo "[INFO]: Module will be created under ${module_dir}/${module_name}"
  read -p "[INFO]: Do you agree? (Y|N)" user_decision
  case $user_decision in
      [Yy]* )
        create_module $module_dir $module_name
        break
        ;;
      [Nn]* ) 
        echo "[INFO]: Exiting"
        exit 0
        ;;
      * ) 
        echo "[INFO]: Please answer yes or no."
        ;;
  esac
done
