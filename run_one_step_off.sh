TRAIN_PATH="$HOME/verl/data/gsm8k/train.parquet"
[[ -f "$TRAIN_PATH" ]] || python ./examples/data_preprocess/gsm8k.py --local_save_dir "$(dirname "$TRAIN_PATH")"
RAY_DEDUP_LOGS=0 bash ./recipe/one_step_off_policy/grpo_0.6b_gsm8k_fsdp2_2_6.sh
