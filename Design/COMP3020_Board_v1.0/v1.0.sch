<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="6.2">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="6" fill="9" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="atmel">
<description>&lt;b&gt;AVR Devices&lt;/b&gt;&lt;p&gt;
Configurable logic, microcontrollers, nonvolatile memories&lt;p&gt;
Based on the following sources:&lt;p&gt;
&lt;ul&gt;
&lt;li&gt;www.atmel.com
&lt;li&gt;CD-ROM : Configurable Logic Microcontroller Nonvolatile Memory
&lt;li&gt;CadSoft download site, www.cadsoft.de or www.cadsoftusa.com , file at90smcu_v400.zip
&lt;li&gt;avr.lbr
&lt;/ul&gt;
&lt;author&gt;Revised by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="DIL40">
<description>&lt;B&gt;Dual In Line&lt;/B&gt;</description>
<wire x1="-26.416" y1="-1.27" x2="-26.416" y2="-6.604" width="0.1524" layer="21"/>
<wire x1="-26.416" y1="1.27" x2="-26.416" y2="-1.27" width="0.1524" layer="21" curve="-180"/>
<wire x1="26.416" y1="-6.604" x2="26.416" y2="6.604" width="0.1524" layer="21"/>
<wire x1="-26.416" y1="6.604" x2="-26.416" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-26.416" y1="6.604" x2="26.416" y2="6.604" width="0.1524" layer="21"/>
<wire x1="-26.416" y1="-6.604" x2="26.416" y2="-6.604" width="0.1524" layer="21"/>
<pad name="1" x="-24.13" y="-7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="2" x="-21.59" y="-7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="3" x="-19.05" y="-7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="4" x="-16.51" y="-7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="5" x="-13.97" y="-7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="6" x="-11.43" y="-7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="7" x="-8.89" y="-7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="8" x="-6.35" y="-7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="9" x="-3.81" y="-7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="10" x="-1.27" y="-7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="11" x="1.27" y="-7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="12" x="3.81" y="-7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="13" x="6.35" y="-7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="14" x="8.89" y="-7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="15" x="11.43" y="-7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="16" x="13.97" y="-7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="17" x="16.51" y="-7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="18" x="19.05" y="-7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="19" x="21.59" y="-7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="20" x="24.13" y="-7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="21" x="24.13" y="7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="22" x="21.59" y="7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="23" x="19.05" y="7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="24" x="16.51" y="7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="25" x="13.97" y="7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="26" x="11.43" y="7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="27" x="8.89" y="7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="28" x="6.35" y="7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="29" x="3.81" y="7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="30" x="1.27" y="7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="31" x="-1.27" y="7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="32" x="-3.81" y="7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="33" x="-6.35" y="7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="34" x="-8.89" y="7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="35" x="-11.43" y="7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="36" x="-13.97" y="7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="37" x="-16.51" y="7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="38" x="-19.05" y="7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="39" x="-21.59" y="7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="40" x="-24.13" y="7.62" drill="0.8128" shape="long" rot="R90"/>
<text x="-26.67" y="-6.35" size="1.778" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="-21.59" y="-2.2352" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
</package>
</packages>
<symbols>
<symbol name="ATMEGA644-20PU">
<wire x1="-27.94" y1="-27.94" x2="27.94" y2="-27.94" width="0.254" layer="94"/>
<wire x1="27.94" y1="-27.94" x2="27.94" y2="25.4" width="0.254" layer="94"/>
<wire x1="27.94" y1="25.4" x2="-27.94" y2="25.4" width="0.254" layer="94"/>
<wire x1="-27.94" y1="25.4" x2="-27.94" y2="-27.94" width="0.254" layer="94"/>
<text x="-27.94" y="26.67" size="1.778" layer="95">&gt;NAME</text>
<text x="-27.94" y="-30.48" size="1.778" layer="96">&gt;VALUE</text>
<pin name="PCINT8/XCK0/T0_PB0" x="-30.48" y="22.86" length="short"/>
<pin name="PCINT9/CLKO/T1_PB1" x="-30.48" y="20.32" length="short"/>
<pin name="PCINT10/INT2/AIN0_PB2" x="-30.48" y="17.78" length="short"/>
<pin name="PCINT11/OC0A/AIN1_PB3" x="-30.48" y="15.24" length="short"/>
<pin name="PCINT12/OC0B/SS_PB4" x="-30.48" y="12.7" length="short"/>
<pin name="PCINT13/MOSI_PB5" x="-30.48" y="10.16" length="short"/>
<pin name="PCINT14/MISO_PB6" x="-30.48" y="7.62" length="short"/>
<pin name="PCINT15/SCK_PB7" x="-30.48" y="5.08" length="short"/>
<pin name="!RESET" x="-30.48" y="2.54" length="short" direction="in"/>
<pin name="VCC" x="-30.48" y="0" length="short" direction="pwr"/>
<pin name="GND" x="-30.48" y="-2.54" length="short" direction="pwr"/>
<pin name="XTAL2" x="-30.48" y="-5.08" length="short" direction="out"/>
<pin name="XTAL1" x="-30.48" y="-7.62" length="short" direction="in"/>
<pin name="PCINT24/RXD0_PD0" x="-30.48" y="-10.16" length="short"/>
<pin name="PCINT25/TXD0_PD1" x="-30.48" y="-12.7" length="short"/>
<pin name="PCINT26/INT0_PD2" x="-30.48" y="-15.24" length="short"/>
<pin name="PCINT27/INT1_PD3" x="-30.48" y="-17.78" length="short"/>
<pin name="PCINT28/OC1B_PD4" x="-30.48" y="-20.32" length="short"/>
<pin name="PCINT29/OC1A_PD5" x="-30.48" y="-22.86" length="short"/>
<pin name="PCINT30/OC2B/ICP_PD6" x="-30.48" y="-25.4" length="short"/>
<pin name="PCINT31/OC2A_PD7" x="30.48" y="-25.4" length="short" rot="R180"/>
<pin name="PCINT16/SCL_PC0" x="30.48" y="-22.86" length="short" rot="R180"/>
<pin name="PCINT17/SDA_PC1" x="30.48" y="-20.32" length="short" rot="R180"/>
<pin name="PCINT18/TCK_PC2" x="30.48" y="-17.78" length="short" rot="R180"/>
<pin name="PCINT19/TMS_PC3" x="30.48" y="-15.24" length="short" rot="R180"/>
<pin name="PCINT20/TDO_PC4" x="30.48" y="-12.7" length="short" rot="R180"/>
<pin name="PCINT21/TDI_PC5" x="30.48" y="-10.16" length="short" rot="R180"/>
<pin name="PCINT22/TOSC1_PC6" x="30.48" y="-7.62" length="short" rot="R180"/>
<pin name="PCINT23/TOSC2_PC7" x="30.48" y="-5.08" length="short" rot="R180"/>
<pin name="AVCC" x="30.48" y="-2.54" length="short" direction="pwr" rot="R180"/>
<pin name="GND@1" x="30.48" y="0" length="short" direction="pwr" rot="R180"/>
<pin name="AREF" x="30.48" y="2.54" length="short" direction="pas" rot="R180"/>
<pin name="PCINT7/ADC7_PA7" x="30.48" y="5.08" length="short" rot="R180"/>
<pin name="PCINT6/ADC6_PA6" x="30.48" y="7.62" length="short" rot="R180"/>
<pin name="PCINT5/ADC5_PA5" x="30.48" y="10.16" length="short" rot="R180"/>
<pin name="PCINT4/ADC4_PA4" x="30.48" y="12.7" length="short" rot="R180"/>
<pin name="PCINT3/ADC3_PA3" x="30.48" y="15.24" length="short" rot="R180"/>
<pin name="PCINT2/ADC2_PA2" x="30.48" y="17.78" length="short" rot="R180"/>
<pin name="PCINT1/ADC1_PA1" x="30.48" y="20.32" length="short" rot="R180"/>
<pin name="PCINT0/ADC0_PA0" x="30.48" y="22.86" length="short" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="ATMEGA644-*PU" prefix="IC">
<description>&lt;b&gt;8-bit Microcontroller with 64K Bytes In-System Programmable Flash&lt;/b&gt;&lt;p&gt;
Auto generated by &lt;i&gt;make-symbol-device-package-bsdl.ulp Rev. 34&lt;/i&gt;&lt;br&gt;
Source: http://www.atmel.com/dyn/resources/prod_documents/doc2593.pdf</description>
<gates>
<gate name="G$1" symbol="ATMEGA644-20PU" x="0" y="0"/>
</gates>
<devices>
<device name="" package="DIL40">
<connects>
<connect gate="G$1" pin="!RESET" pad="9"/>
<connect gate="G$1" pin="AREF" pad="32"/>
<connect gate="G$1" pin="AVCC" pad="30"/>
<connect gate="G$1" pin="GND" pad="11"/>
<connect gate="G$1" pin="GND@1" pad="31"/>
<connect gate="G$1" pin="PCINT0/ADC0_PA0" pad="40"/>
<connect gate="G$1" pin="PCINT1/ADC1_PA1" pad="39"/>
<connect gate="G$1" pin="PCINT10/INT2/AIN0_PB2" pad="3"/>
<connect gate="G$1" pin="PCINT11/OC0A/AIN1_PB3" pad="4"/>
<connect gate="G$1" pin="PCINT12/OC0B/SS_PB4" pad="5"/>
<connect gate="G$1" pin="PCINT13/MOSI_PB5" pad="6"/>
<connect gate="G$1" pin="PCINT14/MISO_PB6" pad="7"/>
<connect gate="G$1" pin="PCINT15/SCK_PB7" pad="8"/>
<connect gate="G$1" pin="PCINT16/SCL_PC0" pad="22"/>
<connect gate="G$1" pin="PCINT17/SDA_PC1" pad="23"/>
<connect gate="G$1" pin="PCINT18/TCK_PC2" pad="24"/>
<connect gate="G$1" pin="PCINT19/TMS_PC3" pad="25"/>
<connect gate="G$1" pin="PCINT2/ADC2_PA2" pad="38"/>
<connect gate="G$1" pin="PCINT20/TDO_PC4" pad="26"/>
<connect gate="G$1" pin="PCINT21/TDI_PC5" pad="27"/>
<connect gate="G$1" pin="PCINT22/TOSC1_PC6" pad="28"/>
<connect gate="G$1" pin="PCINT23/TOSC2_PC7" pad="29"/>
<connect gate="G$1" pin="PCINT24/RXD0_PD0" pad="14"/>
<connect gate="G$1" pin="PCINT25/TXD0_PD1" pad="15"/>
<connect gate="G$1" pin="PCINT26/INT0_PD2" pad="16"/>
<connect gate="G$1" pin="PCINT27/INT1_PD3" pad="17"/>
<connect gate="G$1" pin="PCINT28/OC1B_PD4" pad="18"/>
<connect gate="G$1" pin="PCINT29/OC1A_PD5" pad="19"/>
<connect gate="G$1" pin="PCINT3/ADC3_PA3" pad="37"/>
<connect gate="G$1" pin="PCINT30/OC2B/ICP_PD6" pad="20"/>
<connect gate="G$1" pin="PCINT31/OC2A_PD7" pad="21"/>
<connect gate="G$1" pin="PCINT4/ADC4_PA4" pad="36"/>
<connect gate="G$1" pin="PCINT5/ADC5_PA5" pad="35"/>
<connect gate="G$1" pin="PCINT6/ADC6_PA6" pad="34"/>
<connect gate="G$1" pin="PCINT7/ADC7_PA7" pad="33"/>
<connect gate="G$1" pin="PCINT8/XCK0/T0_PB0" pad="1"/>
<connect gate="G$1" pin="PCINT9/CLKO/T1_PB1" pad="2"/>
<connect gate="G$1" pin="VCC" pad="10"/>
<connect gate="G$1" pin="XTAL1" pad="13"/>
<connect gate="G$1" pin="XTAL2" pad="12"/>
</connects>
<technologies>
<technology name="10">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="ATMEGA644V-10PU" constant="no"/>
<attribute name="OC_FARNELL" value="1288342" constant="no"/>
<attribute name="OC_NEWARK" value="23M5062" constant="no"/>
</technology>
<technology name="20">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="ATMEGA644-20PU" constant="no"/>
<attribute name="OC_FARNELL" value="1288340" constant="no"/>
<attribute name="OC_NEWARK" value="23M5060" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="IC1" library="atmel" deviceset="ATMEGA644-*PU" device="" technology="20"/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="IC1" gate="G$1" x="68.58" y="50.8"/>
</instances>
<busses>
</busses>
<nets>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
</eagle>
