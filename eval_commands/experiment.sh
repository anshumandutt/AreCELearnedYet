
python3.7 csvtopkl.py 

./just power2postgres original power7

python3.7  -m lecarb dataset table -dpower7 -voriginal --overwrite

python3.7 -m lecarb workload gen -dpower7 -voriginal -wbase --params         "{'attr': {'pred_number': 1.0}, 
        'center': {'distribution': 0.9, 'vocab_ood': 0.1}, \
        'width': {'uniform': 0.5, 'exponential': 0.5}, \
        'number': {'train': 100000, 'valid': 10000, 'test': 10000}}"

python3.7 -m lecarb train -s123 -dpower7 -voriginal -wbase -elw_tree --params  "{'trees': 16, 'bins': 200, 'train_num': 100000}" --sizelimit 0