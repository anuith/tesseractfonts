#!/bin/bash

rm -rf train/*
/tesseract/src/training/tesstrain.sh \
	--fonts_dir fonts \
	--fontlist 'Noto Sans Thai' \
	--lang tha \
	--linedata_only \
	--langdata_dir langdata_lstm \
	--tessdata_dir /workspaces/tessdata \
	--save_box_tiff \
	--maxpages 1 \
	--output_dir train
