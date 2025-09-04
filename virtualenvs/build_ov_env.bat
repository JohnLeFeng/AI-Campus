:<<BATCH
    @echo off
    echo **** OpenVINO Environment Setup started **** 
    python -m pip install --upgrade pip virtualenv | find /V "already satisfied"
    python -m venv openvino_env
    echo ---- activating python venv   -----------------------------------------------------------------
    call "openvino_env\Scripts\activate"
    pip install -r requirements.txt
    pip install openvino>=2025.2.0 huggingface_hub
    pip install nncf==2.17.0
    pip install torch>=2.1 torchvision>=0.16 --extra-index-url https://download.pytorch.org/whl/cpu
    pip install onnx tqdm opencv-python ultralytics==8.3.59
    echo ---- deactivating python venv -----------------------------------------------------------------
    call deactivate
    echo **** OpenVINO Environment Setup completed ****
    exit /b
BATCH
