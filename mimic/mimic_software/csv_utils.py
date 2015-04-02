import csv
import os
import numpy as np
import pdb

class elev_data:
    main_cards = []
    int_cards = []
    frequencies = []
    phases = []
    elevations = []
    beams = []


def create_elevcsv(directory, main_cards, int_cards, freqs, phases, beams):
    if not os.path.exists(directory):
        print "directory does not exist: %s" % (directory)
        return
    
    if not os.path.isdir(directory):
        print "Not a directory: %s" % (directory)
        return

    filename = 'main' + str(main_cards) + 'back' + str(int_cards) + 'beams' + str(beams) + '.csv'
    filename = os.path.join(directory, filename)
    csv_file = open(filename, 'w')

    csv_writer = csv.writer(csv_file, delimiter='\t')
    header = ['main array: ', str(main_cards)]
    csv_writer.writerow(header)

    header = ['back array: ', str(int_cards)]
    csv_writer.writerow(header)

    header = ['frequencies: '] + list(freqs)
    csv_writer.writerow(header)

    header = ['phases: '] + list(phases)
    csv_writer.writerow(header)

    header = ['beams: '] + list(beams)
    csv_writer.writerow(header)

    header = ['frequency', 'phase', 'elevation', 'beam', 'phi0']
    csv_writer.writerow(header)

    return csv_file

def close_elevcsv(csv_file):
    csv_file.close()
    
def append_elevcsvfile(csv_file, freq, phase, elev, beam, phi0, verbose = True):
    csv_writer = csv.writer(csv_file, delimiter='\t')
    if verbose:
        print 'freq: ' + str(freq) + ' phase: ' + str(phase) + ' beam: ' + str(beam) + ' elv: ' + str(elev) + ' phi0: ' + str(phi0)
    csv_writer.writerow([str(freq), str(phase), str(elev), str(beam), str(phi0)])
    return csv_file

def read_elevcsv(directory, filename):
    data = elev_data()

    filename = os.path.join(directory, filename)
    csv_file = open(filename, 'r')
    reader = csv.reader(csv_file,delimiter="\t")

    header = reader.next()
    data.main_cards = eval(header[1])

    header = reader.next()
    data.int_cards = eval(header[1])

    header = reader.next()
    data.frequencies = [float(k) for k in header[1:]]
    
    header = reader.next()
    data.phases = [float(k) for k in header[1:]]
 
    header = reader.next()
    data.beams = [int(float(k)) for k in header[1:]]

    header = reader.next()
    # column description row
    elevs = -1 * np.ones([len(data.frequencies), len(data.beams), len(data.phases)])
    
    for i,f in enumerate(data.frequencies):
        for k, b in enumerate(data.beams):
            for j,p in enumerate(data.phases):
                line = reader.next()
                if eval(line[0]) != f:
                    print 'error: frequency mismatch'
                if eval(line[1]) != p:
                    print 'error: phase mismatch' 

                elevs[i, k, j] = eval(line[2])

    data.elevations = elevs

    return data

if __name__ == '__main__':
    data = read_elevcsv('elevdata', 'main[6]back[16].csv')
    pdb.set_trace()
