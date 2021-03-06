# -*- coding: utf-8 -*-

# Form implementation generated from reading ui file 'KCC.ui'
#
# Created: Sun May 18 09:08:27 2014
#      by: PyQt5 UI code generator 5.2.1
#
# WARNING! All changes made in this file will be lost!

from PyQt5 import QtCore, QtGui, QtWidgets

class Ui_KCC(object):
    def setupUi(self, KCC):
        KCC.setObjectName("KCC")
        KCC.resize(420, 397)
        KCC.setMinimumSize(QtCore.QSize(420, 397))
        KCC.setMaximumSize(QtCore.QSize(420, 397))
        font = QtGui.QFont()
        font.setPointSize(9)
        KCC.setFont(font)
        icon = QtGui.QIcon()
        icon.addPixmap(QtGui.QPixmap(":/Icon/icons/comic2ebook.png"), QtGui.QIcon.Normal, QtGui.QIcon.Off)
        KCC.setWindowIcon(icon)
        KCC.setLocale(QtCore.QLocale(QtCore.QLocale.C, QtCore.QLocale.AnyCountry))
        self.Form = QtWidgets.QWidget(KCC)
        self.Form.setObjectName("Form")
        self.OptionsAdvanced = QtWidgets.QFrame(self.Form)
        self.OptionsAdvanced.setEnabled(True)
        self.OptionsAdvanced.setGeometry(QtCore.QRect(10, 254, 421, 61))
        font = QtGui.QFont()
        font.setPointSize(9)
        self.OptionsAdvanced.setFont(font)
        self.OptionsAdvanced.setObjectName("OptionsAdvanced")
        self.gridLayout = QtWidgets.QGridLayout(self.OptionsAdvanced)
        self.gridLayout.setContentsMargins(9, -1, -1, -1)
        self.gridLayout.setObjectName("gridLayout")
        self.ProcessingBox = QtWidgets.QCheckBox(self.OptionsAdvanced)
        self.ProcessingBox.setFocusPolicy(QtCore.Qt.NoFocus)
        self.ProcessingBox.setObjectName("ProcessingBox")
        self.gridLayout.addWidget(self.ProcessingBox, 1, 0, 1, 1)
        self.UpscaleBox = QtWidgets.QCheckBox(self.OptionsAdvanced)
        self.UpscaleBox.setFocusPolicy(QtCore.Qt.NoFocus)
        self.UpscaleBox.setTristate(True)
        self.UpscaleBox.setObjectName("UpscaleBox")
        self.gridLayout.addWidget(self.UpscaleBox, 1, 1, 1, 1)
        self.WebtoonBox = QtWidgets.QCheckBox(self.OptionsAdvanced)
        self.WebtoonBox.setFocusPolicy(QtCore.Qt.NoFocus)
        self.WebtoonBox.setObjectName("WebtoonBox")
        self.gridLayout.addWidget(self.WebtoonBox, 3, 1, 1, 1)
        self.NoDitheringBox = QtWidgets.QCheckBox(self.OptionsAdvanced)
        self.NoDitheringBox.setFocusPolicy(QtCore.Qt.NoFocus)
        self.NoDitheringBox.setObjectName("NoDitheringBox")
        self.gridLayout.addWidget(self.NoDitheringBox, 3, 2, 1, 1)
        self.BorderBox = QtWidgets.QCheckBox(self.OptionsAdvanced)
        self.BorderBox.setFocusPolicy(QtCore.Qt.NoFocus)
        self.BorderBox.setTristate(True)
        self.BorderBox.setObjectName("BorderBox")
        self.gridLayout.addWidget(self.BorderBox, 3, 0, 1, 1)
        self.NoRotateBox = QtWidgets.QCheckBox(self.OptionsAdvanced)
        self.NoRotateBox.setFocusPolicy(QtCore.Qt.NoFocus)
        self.NoRotateBox.setObjectName("NoRotateBox")
        self.gridLayout.addWidget(self.NoRotateBox, 1, 2, 1, 1)
        self.DeviceBox = QtWidgets.QComboBox(self.Form)
        self.DeviceBox.setGeometry(QtCore.QRect(10, 200, 141, 31))
        font = QtGui.QFont()
        font.setPointSize(8)
        self.DeviceBox.setFont(font)
        self.DeviceBox.setFocusPolicy(QtCore.Qt.NoFocus)
        self.DeviceBox.setObjectName("DeviceBox")
        self.FormatBox = QtWidgets.QComboBox(self.Form)
        self.FormatBox.setGeometry(QtCore.QRect(260, 200, 151, 31))
        font = QtGui.QFont()
        font.setPointSize(8)
        self.FormatBox.setFont(font)
        self.FormatBox.setFocusPolicy(QtCore.Qt.NoFocus)
        self.FormatBox.setObjectName("FormatBox")
        self.ConvertButton = QtWidgets.QPushButton(self.Form)
        self.ConvertButton.setGeometry(QtCore.QRect(160, 200, 91, 32))
        font = QtGui.QFont()
        font.setPointSize(9)
        font.setBold(True)
        font.setWeight(75)
        self.ConvertButton.setFont(font)
        self.ConvertButton.setFocusPolicy(QtCore.Qt.NoFocus)
        icon1 = QtGui.QIcon()
        icon1.addPixmap(QtGui.QPixmap(":/Other/icons/convert.png"), QtGui.QIcon.Normal, QtGui.QIcon.Off)
        self.ConvertButton.setIcon(icon1)
        self.ConvertButton.setObjectName("ConvertButton")
        self.DirectoryButton = QtWidgets.QPushButton(self.Form)
        self.DirectoryButton.setGeometry(QtCore.QRect(10, 160, 141, 32))
        font = QtGui.QFont()
        font.setPointSize(8)
        self.DirectoryButton.setFont(font)
        self.DirectoryButton.setFocusPolicy(QtCore.Qt.NoFocus)
        icon2 = QtGui.QIcon()
        icon2.addPixmap(QtGui.QPixmap(":/Other/icons/folder_new.png"), QtGui.QIcon.Normal, QtGui.QIcon.Off)
        self.DirectoryButton.setIcon(icon2)
        self.DirectoryButton.setObjectName("DirectoryButton")
        self.FileButton = QtWidgets.QPushButton(self.Form)
        self.FileButton.setGeometry(QtCore.QRect(260, 160, 151, 32))
        font = QtGui.QFont()
        font.setPointSize(8)
        self.FileButton.setFont(font)
        self.FileButton.setFocusPolicy(QtCore.Qt.NoFocus)
        icon3 = QtGui.QIcon()
        icon3.addPixmap(QtGui.QPixmap(":/Other/icons/document_new.png"), QtGui.QIcon.Normal, QtGui.QIcon.Off)
        self.FileButton.setIcon(icon3)
        self.FileButton.setObjectName("FileButton")
        self.ClearButton = QtWidgets.QPushButton(self.Form)
        self.ClearButton.setGeometry(QtCore.QRect(160, 160, 91, 32))
        font = QtGui.QFont()
        font.setPointSize(8)
        self.ClearButton.setFont(font)
        self.ClearButton.setFocusPolicy(QtCore.Qt.NoFocus)
        icon4 = QtGui.QIcon()
        icon4.addPixmap(QtGui.QPixmap(":/Other/icons/clear.png"), QtGui.QIcon.Normal, QtGui.QIcon.Off)
        self.ClearButton.setIcon(icon4)
        self.ClearButton.setObjectName("ClearButton")
        self.OptionsBasic = QtWidgets.QFrame(self.Form)
        self.OptionsBasic.setGeometry(QtCore.QRect(10, 230, 421, 41))
        font = QtGui.QFont()
        font.setPointSize(9)
        self.OptionsBasic.setFont(font)
        self.OptionsBasic.setObjectName("OptionsBasic")
        self.MangaBox = QtWidgets.QCheckBox(self.OptionsBasic)
        self.MangaBox.setGeometry(QtCore.QRect(9, 10, 130, 18))
        self.MangaBox.setFocusPolicy(QtCore.Qt.NoFocus)
        self.MangaBox.setObjectName("MangaBox")
        self.QualityBox = QtWidgets.QCheckBox(self.OptionsBasic)
        self.QualityBox.setGeometry(QtCore.QRect(282, 10, 130, 18))
        self.QualityBox.setFocusPolicy(QtCore.Qt.NoFocus)
        self.QualityBox.setTristate(True)
        self.QualityBox.setObjectName("QualityBox")
        self.RotateBox = QtWidgets.QCheckBox(self.OptionsBasic)
        self.RotateBox.setGeometry(QtCore.QRect(145, 10, 130, 18))
        self.RotateBox.setFocusPolicy(QtCore.Qt.NoFocus)
        self.RotateBox.setObjectName("RotateBox")
        self.JobList = QtWidgets.QListWidget(self.Form)
        self.JobList.setGeometry(QtCore.QRect(10, 50, 401, 101))
        self.JobList.setFocusPolicy(QtCore.Qt.NoFocus)
        self.JobList.setStyleSheet("QListWidget#JobList {background:#ffffff;background-image:url(:/Other/icons/list_background.png);background-position:center center;background-repeat:no-repeat;}QScrollBar:vertical{border:1px solid #999;background:#FFF;width:5px;margin:0}QScrollBar::handle:vertical{background:DarkGray;min-height:0}QScrollBar::add-line:vertical{height:0;background:DarkGray;subcontrol-position:bottom;subcontrol-origin:margin}QScrollBar::sub-line:vertical{height:0;background:DarkGray;subcontrol-position:top;subcontrol-origin:margin}QScrollBar:horizontal{border:1px solid #999;background:#FFF;height:5px;margin:0}QScrollBar::handle:horizontal{background:DarkGray;min-width:0}QScrollBar::add-line:horizontal{width:0;background:DarkGray;subcontrol-position:bottom;subcontrol-origin:margin}QScrollBar::sub-line:horizontal{width:0;background:DarkGray;subcontrol-position:top;subcontrol-origin:margin}")
        self.JobList.setProperty("showDropIndicator", False)
        self.JobList.setSelectionMode(QtWidgets.QAbstractItemView.NoSelection)
        self.JobList.setVerticalScrollMode(QtWidgets.QAbstractItemView.ScrollPerPixel)
        self.JobList.setHorizontalScrollMode(QtWidgets.QAbstractItemView.ScrollPerPixel)
        self.JobList.setObjectName("JobList")
        self.BasicModeButton = QtWidgets.QPushButton(self.Form)
        self.BasicModeButton.setGeometry(QtCore.QRect(10, 10, 195, 32))
        font = QtGui.QFont()
        font.setPointSize(9)
        self.BasicModeButton.setFont(font)
        self.BasicModeButton.setFocusPolicy(QtCore.Qt.NoFocus)
        self.BasicModeButton.setObjectName("BasicModeButton")
        self.AdvModeButton = QtWidgets.QPushButton(self.Form)
        self.AdvModeButton.setGeometry(QtCore.QRect(217, 10, 195, 32))
        font = QtGui.QFont()
        font.setPointSize(9)
        self.AdvModeButton.setFont(font)
        self.AdvModeButton.setFocusPolicy(QtCore.Qt.NoFocus)
        self.AdvModeButton.setObjectName("AdvModeButton")
        self.OptionsAdvancedGamma = QtWidgets.QFrame(self.Form)
        self.OptionsAdvancedGamma.setEnabled(True)
        self.OptionsAdvancedGamma.setGeometry(QtCore.QRect(10, 305, 401, 41))
        font = QtGui.QFont()
        font.setPointSize(9)
        self.OptionsAdvancedGamma.setFont(font)
        self.OptionsAdvancedGamma.setObjectName("OptionsAdvancedGamma")
        self.GammaLabel = QtWidgets.QLabel(self.OptionsAdvancedGamma)
        self.GammaLabel.setGeometry(QtCore.QRect(15, 0, 100, 40))
        self.GammaLabel.setObjectName("GammaLabel")
        self.GammaSlider = QtWidgets.QSlider(self.OptionsAdvancedGamma)
        self.GammaSlider.setGeometry(QtCore.QRect(110, 10, 270, 22))
        self.GammaSlider.setFocusPolicy(QtCore.Qt.ClickFocus)
        self.GammaSlider.setMaximum(500)
        self.GammaSlider.setSingleStep(5)
        self.GammaSlider.setOrientation(QtCore.Qt.Horizontal)
        self.GammaSlider.setObjectName("GammaSlider")
        self.ProgressBar = QtWidgets.QProgressBar(self.Form)
        self.ProgressBar.setGeometry(QtCore.QRect(10, 10, 401, 31))
        font = QtGui.QFont()
        font.setPointSize(10)
        font.setBold(True)
        font.setWeight(75)
        self.ProgressBar.setFont(font)
        self.ProgressBar.setProperty("value", 0)
        self.ProgressBar.setAlignment(QtCore.Qt.AlignJustify|QtCore.Qt.AlignVCenter)
        self.ProgressBar.setFormat("")
        self.ProgressBar.setObjectName("ProgressBar")
        self.OptionsExpert = QtWidgets.QFrame(self.Form)
        self.OptionsExpert.setGeometry(QtCore.QRect(10, 337, 421, 41))
        font = QtGui.QFont()
        font.setPointSize(9)
        self.OptionsExpert.setFont(font)
        self.OptionsExpert.setObjectName("OptionsExpert")
        self.ColorBox = QtWidgets.QCheckBox(self.OptionsExpert)
        self.ColorBox.setGeometry(QtCore.QRect(9, 11, 130, 18))
        self.ColorBox.setFocusPolicy(QtCore.Qt.NoFocus)
        self.ColorBox.setObjectName("ColorBox")
        self.OptionsExpertInternal = QtWidgets.QFrame(self.OptionsExpert)
        self.OptionsExpertInternal.setGeometry(QtCore.QRect(100, 0, 295, 40))
        self.OptionsExpertInternal.setObjectName("OptionsExpertInternal")
        self.gridLayout_2 = QtWidgets.QGridLayout(self.OptionsExpertInternal)
        self.gridLayout_2.setObjectName("gridLayout_2")
        self.wLabel = QtWidgets.QLabel(self.OptionsExpertInternal)
        self.wLabel.setObjectName("wLabel")
        self.gridLayout_2.addWidget(self.wLabel, 0, 0, 1, 1)
        self.customWidth = QtWidgets.QLineEdit(self.OptionsExpertInternal)
        sizePolicy = QtWidgets.QSizePolicy(QtWidgets.QSizePolicy.Fixed, QtWidgets.QSizePolicy.Fixed)
        sizePolicy.setHorizontalStretch(0)
        sizePolicy.setVerticalStretch(0)
        sizePolicy.setHeightForWidth(self.customWidth.sizePolicy().hasHeightForWidth())
        self.customWidth.setSizePolicy(sizePolicy)
        self.customWidth.setMaximumSize(QtCore.QSize(40, 16777215))
        self.customWidth.setFocusPolicy(QtCore.Qt.ClickFocus)
        self.customWidth.setAcceptDrops(False)
        self.customWidth.setMaxLength(4)
        self.customWidth.setObjectName("customWidth")
        self.gridLayout_2.addWidget(self.customWidth, 0, 1, 1, 1)
        self.hLabel = QtWidgets.QLabel(self.OptionsExpertInternal)
        self.hLabel.setObjectName("hLabel")
        self.gridLayout_2.addWidget(self.hLabel, 0, 2, 1, 1)
        self.customHeight = QtWidgets.QLineEdit(self.OptionsExpertInternal)
        sizePolicy = QtWidgets.QSizePolicy(QtWidgets.QSizePolicy.Fixed, QtWidgets.QSizePolicy.Fixed)
        sizePolicy.setHorizontalStretch(0)
        sizePolicy.setVerticalStretch(0)
        sizePolicy.setHeightForWidth(self.customHeight.sizePolicy().hasHeightForWidth())
        self.customHeight.setSizePolicy(sizePolicy)
        self.customHeight.setMaximumSize(QtCore.QSize(40, 16777215))
        self.customHeight.setFocusPolicy(QtCore.Qt.ClickFocus)
        self.customHeight.setAcceptDrops(False)
        self.customHeight.setMaxLength(4)
        self.customHeight.setObjectName("customHeight")
        self.gridLayout_2.addWidget(self.customHeight, 0, 3, 1, 1)
        KCC.setCentralWidget(self.Form)
        self.statusBar = QtWidgets.QStatusBar(KCC)
        font = QtGui.QFont()
        font.setFamily("MS Shell Dlg 2")
        font.setPointSize(8)
        self.statusBar.setFont(font)
        self.statusBar.setSizeGripEnabled(False)
        self.statusBar.setObjectName("statusBar")
        KCC.setStatusBar(self.statusBar)
        self.ActionBasic = QtWidgets.QAction(KCC)
        self.ActionBasic.setCheckable(True)
        self.ActionBasic.setChecked(False)
        font = QtGui.QFont()
        font.setPointSize(9)
        self.ActionBasic.setFont(font)
        self.ActionBasic.setObjectName("ActionBasic")
        self.ActionAdvanced = QtWidgets.QAction(KCC)
        self.ActionAdvanced.setCheckable(True)
        self.ActionAdvanced.setObjectName("ActionAdvanced")

        self.retranslateUi(KCC)
        QtCore.QMetaObject.connectSlotsByName(KCC)
        KCC.setTabOrder(self.DirectoryButton, self.FileButton)
        KCC.setTabOrder(self.FileButton, self.ConvertButton)
        KCC.setTabOrder(self.ConvertButton, self.ClearButton)

    def retranslateUi(self, KCC):
        _translate = QtCore.QCoreApplication.translate
        KCC.setWindowTitle(_translate("KCC", "Kindle Comic Converter"))
        self.ProcessingBox.setToolTip(_translate("KCC", "<html><head/><body><p style=\'white-space:pre\'>Disable image optimizations.<br/>Input images must be already resized.</p></body></html>"))
        self.ProcessingBox.setText(_translate("KCC", "No optimisation"))
        self.UpscaleBox.setToolTip(_translate("KCC", "<html><head/><body><p><span style=\" font-weight:600; text-decoration: underline;\">Unchecked - Nothing<br/></span>Images smaller than device resolution will not be resized.</p><p><span style=\" font-weight:600; text-decoration: underline;\">Indeterminate - Stretching<br/></span>Images smaller than device resolution will be resized. Aspect ratio will be not preserved.</p><p><span style=\" font-weight:600; text-decoration: underline;\">Checked - Upscaling<br/></span>Images smaller than device resolution will be resized. Aspect ratio will be preserved.</p></body></html>"))
        self.UpscaleBox.setText(_translate("KCC", "Stretch/Upscale"))
        self.WebtoonBox.setToolTip(_translate("KCC", "<html><head/><body><p style=\"white-space:pre\">Enable auto-splitting of webtoons like <span style=\" font-style:italic;\">Tower of God</span> or <span style=\" font-style:italic;\">Noblesse</span>.<br/>This mode is created for pages with a low width, high height and vertical panel flow.</p></body></html>"))
        self.WebtoonBox.setText(_translate("KCC", "Webtoon mode"))
        self.NoDitheringBox.setToolTip(_translate("KCC", "<html><head/><body><p style=\'white-space:pre\'>Create PNG files instead JPEG.<br/>Quality increase is not noticeable on most of devices.<br/>Output files <span style=\" font-weight:600;\">might</span> be smaller.<br/><span style=\" font-weight:600;\">MOBI conversion will be much slower.</span></p></body></html>"))
        self.NoDitheringBox.setText(_translate("KCC", "PNG output"))
        self.BorderBox.setToolTip(_translate("KCC", "<html><head/><body><p><span style=\" font-weight:600; text-decoration: underline;\">Unchecked - Autodetection<br/></span>Color of margins fill will be detected automatically.</p><p><span style=\" font-weight:600; text-decoration: underline;\">Indeterminate - White<br/></span>Margins will be filled with white color.</p><p><span style=\" font-weight:600; text-decoration: underline;\">Checked - Black<br/></span>Margins will be filled with black color.</p></body></html>"))
        self.BorderBox.setText(_translate("KCC", "W/B margins"))
        self.NoRotateBox.setToolTip(_translate("KCC", "<html><head/><body><p style=\'white-space:pre\'>Disable splitting and rotation.</p></body></html>"))
        self.NoRotateBox.setText(_translate("KCC", "No split/rotate"))
        self.DeviceBox.setToolTip(_translate("KCC", "<html><head/><body><p style=\'white-space:pre\'>Target device.</p></body></html>"))
        self.FormatBox.setToolTip(_translate("KCC", "<html><head/><body><p style=\'white-space:pre\'>Output format.</p></body></html>"))
        self.ConvertButton.setToolTip(_translate("KCC", "<html><head/><body><p  style=\'white-space:pre\'>Shift+Click to select the output directory.</p></body></html>"))
        self.ConvertButton.setText(_translate("KCC", "Convert"))
        self.DirectoryButton.setText(_translate("KCC", "Add directory"))
        self.FileButton.setText(_translate("KCC", "Add file"))
        self.ClearButton.setText(_translate("KCC", "Clear list"))
        self.MangaBox.setToolTip(_translate("KCC", "<html><head/><body><p style=\'white-space:pre\'>Enable right-to-left reading.</p></body></html>"))
        self.MangaBox.setText(_translate("KCC", "Manga mode"))
        self.QualityBox.setToolTip(_translate("KCC", "<html><head/><body><p style=\"white-space:pre\"><span style=\" font-weight:600; text-decoration: underline;\">Unchecked - Normal quality mode<br/></span>Maximal quality of images but very poor magnification quality.<br/>Use it only when zoom is not needed or output files needs to be small.</p><p style=\"white-space:pre\"><span style=\" font-weight:600; text-decoration: underline;\">Indeterminate - High quality mode<br/></span>In most cases high quality of images and magnification.<br/>Overall quality highly depends on the resolution of source files.<br/>On Kindle models older than Paperwhite non-zoomed images might be a little blurred.</p><p style=\"white-space:pre\"><span style=\" font-weight:600; text-decoration: underline;\">Checked - Ultra quality mode<br/></span>Highest possible quality. Output files will be big.</p></body></html>"))
        self.QualityBox.setText(_translate("KCC", "High/Ultra quality"))
        self.RotateBox.setToolTip(_translate("KCC", "<html><head/><body><p style=\'white-space:pre\'>Disable splitting of two-page spreads.<br/>They will be rotated instead.</p></body></html>"))
        self.RotateBox.setText(_translate("KCC", "Horizontal mode"))
        self.BasicModeButton.setText(_translate("KCC", "Basic"))
        self.AdvModeButton.setText(_translate("KCC", "Advanced"))
        self.GammaLabel.setText(_translate("KCC", "Gamma: Auto"))
        self.ColorBox.setToolTip(_translate("KCC", "<html><head/><body><p style=\'white-space:pre\'>Don\'t convert images to grayscale.</p></body></html>"))
        self.ColorBox.setText(_translate("KCC", "Color mode"))
        self.wLabel.setToolTip(_translate("KCC", "<html><head/><body><p style=\'white-space:pre\'>Resolution of target device.</p></body></html>"))
        self.wLabel.setText(_translate("KCC", "Custom width: "))
        self.customWidth.setToolTip(_translate("KCC", "<html><head/><body><p style=\'white-space:pre\'>Resolution of target device.</p></body></html>"))
        self.customWidth.setInputMask(_translate("KCC", "0000"))
        self.hLabel.setToolTip(_translate("KCC", "<html><head/><body><p style=\'white-space:pre\'>Resolution of target device.</p></body></html>"))
        self.hLabel.setText(_translate("KCC", "Custom height: "))
        self.customHeight.setToolTip(_translate("KCC", "<html><head/><body><p style=\'white-space:pre\'>Resolution of target device.</p></body></html>"))
        self.customHeight.setInputMask(_translate("KCC", "0000"))
        self.ActionBasic.setText(_translate("KCC", "Basic"))
        self.ActionAdvanced.setText(_translate("KCC", "Advanced"))

from . import KCC_rc
