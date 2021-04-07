
import sys
from configurator import load_config
from loadmat import read_mat
import numpy as np


def main():
    """Main Script

    Returns: 0

    """
    # Load the system's physical parameters.
    tp = load_config("parameters.yml")
    print(tp["Tank_Parameters"]["k"])

    # Load the external datasets
    # This script imports datasets of solar irradiation,
    # ambient temperature and
    # DHW usage profile
    # Day of the year(1 to 365)
    Day = 20
    # Solar irradiation data[W / m2]:
    # Hourly values for one year(Source KNMI)
    irr_dict = read_mat('SolarIrradiationData.mat')
    irradiation = irr_dict["Irr"].flatten()
    print(irr_dict)

    # Hourly data for a period of one day:
    start = 24 * Day
    end = start + 23
    G = irradiation[start:end]
    # Data per minute:
    G_sim = np.kron(G, np.ones(60))

    # Ambient temperature data[C]:
    # Hourly values for one year(Source KNMI)
    amb_dict = read_mat('AmbientTempData.mat')
    temperature = amb_dict["Tamb"].flatten()
    Tambient = temperature[24 * Day:24 * Day + 23]
    Tambient_sim = np.kron(Tambient, np.ones(60))
    # time = 0:60: (24 * 60 * 60) - 60
    time = np.linspace(0, 24 * 3600, 24*60, endpoint=False)
    # time = time'
    # Hot water tapping profile[l / h]:
    # DHW = importdata('DHW0001_DHW.txt')
    DHW = np.loadtxt('DHW0001_DHW.txt')
    print(DHW)
    # Configure the model predictive Controller:
    # MPC_settings

    # Simulate the system:

    # Report the results:



if __name__ == "__main__":
    sys.exit(main())