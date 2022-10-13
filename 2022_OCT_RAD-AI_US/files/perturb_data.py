import json
import os
import re

import fire
import numpy as np
import pysbd

SEGMENTER = pysbd.Segmenter(language='en', clean=False)

def duplicate_sentence(text):
    items = text.split('[item]')
    items = [x.strip() for x in items]
    items = [x for x in items if x]

    i = np.random.randint(len(items))
    sentences = SEGMENTER.segment(items[i])
    j = np.random.randint(len(sentences))
    words = sentences[j].split()
    k = np.random.randint(len(words))
    words[k] = words[-2]
    perturbed_sentence = ' '.join(words)
    sentences.insert(j + 1, perturbed_sentence)
    items[i] = ' '.join(sentences)
    
    return ' '.join('[item] ' + x.strip() for x in items)

def obscure_item_tags(impression):
    items = impression.split('[item]')
    items = [re.sub(r'\[[^\[\]]+\]', '', x) for x in items]
    items = [x.strip() for x in items]
    items = [x for x in items if x]
    if len(items) > 1:
        if np.random.random() < 0.3:
            items = [str(i + 1) + '.' + x for i, x in enumerate(items)]
        else:
            items = [str(i + 1) + '. ' + x for i, x in enumerate(items)]
    return '\n'.join(items).strip()


def call_report():
    last_name = np.random.choice(['Smith', 'Ellison', 'Morgan',
                                  'Whitman'])
    hour = np.random.randint(12)
    minute = np.random.randint(60)
    month = np.random.randint(1, 13)
    day = np.random.randint(1, 30)
    year = 2020
    ampm = np.random.choice(['am', 'pm', 'AM', 'PM'])
    if np.random.random() < 0.3:
        return 'Critical Value/emergent results were called by telephone at the time of interpretation on %d/%d/%d at %d:%02d %s to Dr. %s, who verbally acknowledged these results.' % (month, day, year, hour, minute, ampm, last_name)
    else:
        return 'These results were called by telephone at the time of interpretation on %d/%d/%d at %d:%02d %s to Dr. %s, who verbally acknowledged these results.' % (month, day, year, hour, minute, ampm, last_name)


def perturb(text):
    print(text)
    text = duplicate_sentence(text)
    print(text)
    
    text = obscure_item_tags(text)
    nspaces_to_insert = len(text) // 10
    for i in range(nspaces_to_insert):
        j = np.random.randint(len(text))
        text = text[:j] + ' ' + text[j:]

    text = text + ' ' + call_report()        
    text = text.replace('.', ' . ', 2)
    text = text.replace('.', '..', 3)

    return text
    
def main(in_dir, out_dir):
    os.makedirs(out_dir, exist_ok=True)
    for split in 'train test'.split():
        os.makedirs(os.path.join(out_dir, split), exist_ok=True)
        for filename in os.listdir(os.path.join(in_dir, split)):
            with open(os.path.join(in_dir, split, filename)) as fin:
                with open(os.path.join(out_dir, split, filename), 'w') as fout:
                    input_json = json.load(fin)
                    input_text = input_json['impression']
                    output_text = perturb(input_text)
                    output_json = json.dumps(dict(impression=output_text))
                    fout.write(output_json)


if __name__ == '__main__':
    fire.Fire(main)
