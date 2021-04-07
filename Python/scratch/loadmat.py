import matplotlib
import numpy as np

matplotlib.use('Qt5Agg')
from scipy import io
import matplotlib.pyplot as plt
from pathlib import Path
# from file_tools import find_files


def read_mat(filename: str):
    """read Matlab *.mat file

     https://docs.scipy.org/doc/scipy/reference/generated/scipy.io.loadmat.html
     Notes: v4 (Level 1.0), v6 and v7 to 7.2 matfiles are supported.
     You will need an HDF5 Python library to read MATLAB 7.3 format mat files.
     Because SciPy does not supply one, we do not implement the HDF5 / 7.3 interface here.

    Args:
        filename: string with the full path and name of the *.mat file

    Returns:
        dictionary with the contents from the *.mat file
    """
    matdict = io.loadmat(filename)
    return matdict


if __name__ == '__main__':
    file_path = r'\\10.77.55.1\ProjectFolder\SU1002_MMIP_WP_TESTCENTRUM\EMULATOR DATA\Hybrid_daikin'
    parent_dir = Path(file_path)

    file_list = find_files(file_path, '*.mat')
    for f in file_list:
        print(f)
    dfdk = read_mat(str(file_list[0]))  # or file_list[1] etc.

    t_h = dfdk['TrnTime'].flatten()

    #FIGUUR 1-KARAKTERISTIEK WARMTEPOMP
    fig, (ax1, ax2, ax3) = plt.subplots(3, 1, sharex=True)  # 3 rijen en 1 kolom. x-axis will be shared among all subplots.
    ax1.plot(t_h, dfdk['Ph1_Voltage'].flatten(), 'b', label='Ph1 Voltage')
    ax1.set_ylabel('V')
    ax1.set_ylim(200, 300)
    ax2.plot(t_h, dfdk['Ph1_Current'].flatten(), 'r', label='Ph1 Current')
    ax2.set_ylabel('A')
    ax2.set_ylim(0, 10)
    ax3.plot(t_h, dfdk['Ph1_Power'].flatten(), 'g', label='Ph1 Power')
    ax3.set_ylabel('W')
    ax3.set_ylim(0, 2000)
    ax1.set_title(file_list[0].name + ' [P_Heatpump]')
    ax3.set_xlabel('time (h)')
    ax1.set_xlim(96, 120)
    ax1.legend()
    ax2.legend()
    ax3.legend()
    plt.show()

    #FIGUUR 2-KARAKTERISTIEK BOILER
    fig2, (ax1, ax2, ax3) = plt.subplots(3, 1, sharex=True)
    ax1.plot(t_h, dfdk['Ph2_Voltage'].flatten(), 'b', label='Ph2_Voltage')
    ax1.set_ylabel('V')
    ax1.set_ylim(200, 300)
    ax2.plot(t_h, dfdk['Ph2_Current'].flatten(), 'r', label='Ph2_Current')
    ax2.set_ylabel('A')
    ax2.set_ylim(0, 1)
    ax3.plot(t_h, dfdk['Ph2_Power'].flatten(), 'g', label='Ph2_Power')
    ax3.set_ylabel('W')
    ax3.set_ylim(0, 200)
    ax1.set_title(file_list[0].name + ' [P_boiler]')
    ax3.set_xlabel('time (h)')
    ax1.set_xlim(96, 120)
    ax1.legend()
    ax2.legend()
    ax3.legend()
    plt.show()

    #FIGUUR 3-2PLOT:INLET/OUTLETTEMP
    fig3, (ax1, ax2) = plt.subplots(2, 1, sharex=True)
    ax1.plot(t_h, dfdk['LWT'].flatten(), 'b', label='Inlettemp. [\xb0C]')
    ax1.set_ylabel('Temp. \xb0C')
    ax1.set_ylim(0, 50)
    ax2.plot(t_h, dfdk['EWT'].flatten(), 'g', label='Outlettemp. [\xb0C]')
    ax2.set_ylabel('Temp. \xb0C')
    ax2.set_ylim(0, 50)
    ax1.set_title(file_list[0].name + ' [Inlet_Outlet Temperature]')
    ax2.set_xlabel('time (h)')
    ax1.set_xlim(96, 120)
    ax1.legend()
    ax2.legend()
    ax3.legend()
    plt.show()

    #FIGUUR 4-3 PLOT:THERMISCHE VERMOGENS SEND EN RETOUR, INLET/OUTLETTEMP EN KAMERTEMP
    fig4, (ax1, ax2, ax3) = plt.subplots(3, 1, sharex=True)
    ax1.plot(t_h, dfdk['Q_HP'].flatten(), 'black', label='Thermisch vermogen HP [kW]')
    ax1.plot(t_h, dfdk['Q_boiler'].flatten(), 'limegreen', label='Thermisch vermogen Boiler [kW]')
    ax1.plot(t_h, dfdk['ENB_Q_Rad_Room'], 'orange', label='Thermisch vermogen retour afgiftesysteem [kW]')
    ax1.set_ylabel('P [kW]')
    ax1.set_ylim(0, 8)
    ax1.set_ylabel('P [kW]')
    ax1.legend()

    ax2.plot(t_h, dfdk['Toperative'].flatten(), 'lightblue', label='Temp.sensor thermostaat [\xb0C]')
    ax2.set_ylabel('Temp. \xb0C')
    ax2.set_ylim(15, 22)
    ax2.legend()

    ax3.plot(t_h, dfdk['LWT'].flatten(), 'r', label='Inlettemp. [\xb0C]')
    ax3.plot(t_h, dfdk['EWT'].flatten(), 'b', label='Outlettemp. [\xb0C]')
    ax3.set_ylim(10, 50)
    ax3.set_ylabel('Temp. \xb0C')
    ax3.legend()

    ax1.set_title(file_list[0].name + ' [Thermisch vermogen]')
    ax3.set_xlabel('time (h)')
    ax1.set_xlim(96, 120)
    plt.show()


    #FIGUUR 5- 1 PLOT:INLET/OUTLETTEMP
    fig5, ax4 = plt.subplots()
    ax4.plot(t_h, dfdk['LWT'].flatten(), 'b', label='Inlettemp. [\xb0C]')
    ax4.plot(t_h, dfdk['EWT'].flatten(), 'g', label='Outlettemp. [\xb0C]')
    ax4.set_xlim(96, 120)
    ax4.set_ylim(10, 50)
    ax4.set_xlabel('time (h)')
    ax4.set_ylabel('Temp. \xb0C')
    ax4.legend()
    ax4.set_title(file_list[0].name + ' [Inlet_Outlet Temperature]')
    plt.show()

    #FIGUUR 5-4 PLOT: THERMISCH EN ELEKTRISCH VERMOGEN WARMTEPOMP,THERMISCHE VERMOGEN BOILER, REFERENTIETEMP. EN FLOW
    Ph1_Power_Kw = dfdk['Ph1_Power'] /1000 # eenheid vermogen warmtepomp van W naar kW
    #print(Ph1_Power_Kw)
    COP = dfdk['Q_HP'] / dfdk['Ph1_Power']
    COP = COP *1000
    #print (COP)
    fig5, (ax1, ax2, ax3, ax4) = plt.subplots(4, 1, sharex=True)
    ax1.plot(t_h, dfdk['Q_HP'].flatten(), 'black', label='Thermisch vermogen HP [kW]')
    ax1.plot(t_h, Ph1_Power_Kw, 'blueviolet', label='Elektrisch vermogen Heatpump [kW]')
    #ax1.plot(t_h, COP, 'gold', label='COP')
    ax1.set_ylabel('P [kW]')
    ax1.set_ylim(0, 10)

    ax2.plot(t_h, dfdk['Q_boiler'].flatten(), 'limegreen', label='Thermisch vermogen Boiler [kW]')
    ax2.set_ylabel('P [kW]')
    ax2.set_ylim(0, 7)

    ax3.plot(t_h, dfdk['Toperative'].flatten(), 'lightblue', label='Temp.sensor thermostaat [\xb0C]')
    ax3.plot(t_h, dfdk['Tamb'].flatten(), 'black', label = 'Ambient temperature [\xb0C]')
    ax3.set_ylabel('Temp. \xb0C')
    ax3.set_ylim(5, 25)

    Flowrate_analog_lmin = dfdk['Flowrate_analog'] *16.67
    #print(Flowrate_analog_lmin)
    ax4.plot(t_h, Flowrate_analog_lmin, 'tomato', label='Flow [l/min]')
    ax4.set_ylabel('Q [l/min]')
    ax4.set_ylim(0, 40)

    ax1.set_title(file_list[0].name + ' [Thermisch vermogen]')
    ax3.set_xlabel('time (h)')
    ax1.set_xlim(96, 120)

    ax1.legend()
    ax2.legend()
    ax3.legend()
    ax4.legend()
    plt.show()

    #FIGUUR 6-2 PLOT: THERMISCH VERMOGEN SEND EN RETOUR, KAMERTEMP
    #Thermisch_totaal = sum(dfdk['Q_HP'], dfdk['Q_boiler'])
    #print(Thermisch_totaal)
    fig6, (ax1, ax2) = plt.subplots(2, 1, sharex=True)
    ax1.plot(t_h, dfdk['Q_HP'].flatten(), 'black', label='Thermisch vermogen HP [kW]')
    ax1.plot(t_h, dfdk['Q_boiler'].flatten(), 'limegreen', label='Thermisch vermogen Boiler [kW]')
    ax1.plot(t_h, dfdk['ENB_Q_Rad_Room'], 'orange', label='Thermisch vermogen retour afgiftesysteem [kW]')
    ax1.set_ylabel('P [kW]')
    ax1.set_ylim(0, 8)
    ax1.set_ylabel('P [kW]')
    ax1.legend()

    ax2.plot(t_h, dfdk['Toperative'].flatten(), 'lightblue', label='Temp.sensor thermostaat [\xb0C]')
    ax2.set_ylabel('Temp. \xb0C')
    ax2.set_ylim(15, 22)
    ax2.legend()

    ax1.set_title(file_list[0].name + ' [Thermisch vermogen]')
    ax2.set_xlabel('time (h)')
    ax1.set_xlim(96, 120)
    plt.show()