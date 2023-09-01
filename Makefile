.PHONY: conda pip clean

conda:
	conda env create -f environment.yaml

update:
	conda env update --file environment.yaml --prune

pip:
	pip install opencv-python
	pip install nibabel
	pip install tk

clean:
	rm -rf __pycache__
	rm -rf .ipynb_checkpoints
	conda env remove -n xe-mri-stats
