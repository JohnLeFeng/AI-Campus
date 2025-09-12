:<<BATCH
    @echo off
    echo **** OpenVINO GenAI Environment Setup started **** 
    python -m pip install virtualenv | find /V "already satisfied"
    python -m venv openvino_genai_env
    echo ---- activating python venv   -----------------------------------------------------------------
    call "openvino_genai_env\Scripts\activate"
    python -m pip install --upgrade pip
    pip install -r "requirements.txt"
    pip install "openvino>=2025.2.0" "openvino-tokenizers>=2025.2.0" "openvino-genai>=2025.2.0"
    pip install "transformers>=4.45,<4.50" --extra-index-url https://download.pytorch.org/whl/cpu
    pip install "optimum-intel[nncf]>=1.25.2" --extra-index-url https://download.pytorch.org/whl/cpu
    pip install "huggingface-hub>=0.26.5" "datasets<4.0.0" "einops" "transformers_stream_generator"
    pip install "accelerate" "gradio>=4.19" "tiktoken" "bitsandbytes"
    pip install "Pillow" "diffusers>=0.30.3" "gradio>=4.19" "typing_extensions>=4.9" "tqdm"
    pip install "mcp-server-time" "mcp-server-fetch" "modelscope_studio==1.0.0-beta.8"
    echo ---- deactivating python venv -----------------------------------------------------------------
    call deactivate
    echo **** OpenVINO GenAI Environment Setup completed ****
    exit /b
BATCH
