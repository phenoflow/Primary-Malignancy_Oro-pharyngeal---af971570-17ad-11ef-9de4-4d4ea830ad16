# Kuan V, Denaxas S, Gonzalez-Izquierdo A, Direk K, Bhatti O, Husain S, Sutaria S, Hingorani M, Nitsch D, Parisinos C, Lumbers T, Mathur R, Sofat R, Casas JP, Wong I, Hemingway H, Hingorani A, 2024.

import sys, csv, re

codes = [{"code":"B001.00","system":"readv2"},{"code":"B001100","system":"readv2"},{"code":"B000100","system":"readv2"},{"code":"B003z00","system":"readv2"},{"code":"B004200","system":"readv2"},{"code":"B003200","system":"readv2"},{"code":"B002.00","system":"readv2"},{"code":"B006.00","system":"readv2"},{"code":"B003000","system":"readv2"},{"code":"B001z00","system":"readv2"},{"code":"B007.00","system":"readv2"},{"code":"B004000","system":"readv2"},{"code":"B002z00","system":"readv2"},{"code":"B004.00","system":"readv2"},{"code":"B005.00","system":"readv2"},{"code":"B00zz00","system":"readv2"},{"code":"B003300","system":"readv2"},{"code":"B002200","system":"readv2"},{"code":"B000z00","system":"readv2"},{"code":"B002300","system":"readv2"},{"code":"B00..00","system":"readv2"},{"code":"B000.00","system":"readv2"},{"code":"B003.00","system":"readv2"},{"code":"B00z100","system":"readv2"},{"code":"B004300","system":"readv2"},{"code":"C00","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('primary-malignancy_oro-pharyngeal-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["primary-malignancy_oro-pharyngeal-lipstick---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["primary-malignancy_oro-pharyngeal-lipstick---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["primary-malignancy_oro-pharyngeal-lipstick---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
