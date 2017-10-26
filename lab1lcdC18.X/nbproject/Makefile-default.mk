#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=cof
DEBUGGABLE_SUFFIX=cof
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/lab1lcdC18.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=cof
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/lab1lcdC18.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=lab1lcd.c "lcd files/busyxlcd.c" "lcd files/openxlcd.c" "lcd files/putrxlcd.c" "lcd files/putsxlcd.c" "lcd files/readaddr.c" "lcd files/readdata.c" "lcd files/setcgram.c" "lcd files/setddram.c" "lcd files/wcmdxlcd.c" "lcd files/writdata.c"

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/lab1lcd.o "${OBJECTDIR}/lcd files/busyxlcd.o" "${OBJECTDIR}/lcd files/openxlcd.o" "${OBJECTDIR}/lcd files/putrxlcd.o" "${OBJECTDIR}/lcd files/putsxlcd.o" "${OBJECTDIR}/lcd files/readaddr.o" "${OBJECTDIR}/lcd files/readdata.o" "${OBJECTDIR}/lcd files/setcgram.o" "${OBJECTDIR}/lcd files/setddram.o" "${OBJECTDIR}/lcd files/wcmdxlcd.o" "${OBJECTDIR}/lcd files/writdata.o"
POSSIBLE_DEPFILES=${OBJECTDIR}/lab1lcd.o.d "${OBJECTDIR}/lcd files/busyxlcd.o.d" "${OBJECTDIR}/lcd files/openxlcd.o.d" "${OBJECTDIR}/lcd files/putrxlcd.o.d" "${OBJECTDIR}/lcd files/putsxlcd.o.d" "${OBJECTDIR}/lcd files/readaddr.o.d" "${OBJECTDIR}/lcd files/readdata.o.d" "${OBJECTDIR}/lcd files/setcgram.o.d" "${OBJECTDIR}/lcd files/setddram.o.d" "${OBJECTDIR}/lcd files/wcmdxlcd.o.d" "${OBJECTDIR}/lcd files/writdata.o.d"

# Object Files
OBJECTFILES=${OBJECTDIR}/lab1lcd.o ${OBJECTDIR}/lcd\ files/busyxlcd.o ${OBJECTDIR}/lcd\ files/openxlcd.o ${OBJECTDIR}/lcd\ files/putrxlcd.o ${OBJECTDIR}/lcd\ files/putsxlcd.o ${OBJECTDIR}/lcd\ files/readaddr.o ${OBJECTDIR}/lcd\ files/readdata.o ${OBJECTDIR}/lcd\ files/setcgram.o ${OBJECTDIR}/lcd\ files/setddram.o ${OBJECTDIR}/lcd\ files/wcmdxlcd.o ${OBJECTDIR}/lcd\ files/writdata.o

# Source Files
SOURCEFILES=lab1lcd.c lcd files/busyxlcd.c lcd files/openxlcd.c lcd files/putrxlcd.c lcd files/putsxlcd.c lcd files/readaddr.c lcd files/readdata.c lcd files/setcgram.c lcd files/setddram.c lcd files/wcmdxlcd.c lcd files/writdata.c


CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/lab1lcdC18.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=18F452
MP_PROCESSOR_OPTION_LD=18f452
MP_LINKER_DEBUG_OPTION=-r=ROM@0x7DC0:0x7FFF -r=RAM@GPR:0x5F4:0x5FF -u_DEBUGSTACK
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/lab1lcd.o: lab1lcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/lab1lcd.o.d 
	@${RM} ${OBJECTDIR}/lab1lcd.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/lab1lcd.o   lab1lcd.c 
	@${DEP_GEN} -d ${OBJECTDIR}/lab1lcd.o 
	@${FIXDEPS} "${OBJECTDIR}/lab1lcd.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/lcd\ files/busyxlcd.o: lcd\ files/busyxlcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/lcd files" 
	@${RM} "${OBJECTDIR}/lcd files/busyxlcd.o".d 
	@${RM} "${OBJECTDIR}/lcd files/busyxlcd.o" 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo "${OBJECTDIR}/lcd files/busyxlcd.o"   "lcd files/busyxlcd.c" 
	@${DEP_GEN} -d "${OBJECTDIR}/lcd files/busyxlcd.o" 
	@${FIXDEPS} "${OBJECTDIR}/lcd files/busyxlcd.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/lcd\ files/openxlcd.o: lcd\ files/openxlcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/lcd files" 
	@${RM} "${OBJECTDIR}/lcd files/openxlcd.o".d 
	@${RM} "${OBJECTDIR}/lcd files/openxlcd.o" 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo "${OBJECTDIR}/lcd files/openxlcd.o"   "lcd files/openxlcd.c" 
	@${DEP_GEN} -d "${OBJECTDIR}/lcd files/openxlcd.o" 
	@${FIXDEPS} "${OBJECTDIR}/lcd files/openxlcd.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/lcd\ files/putrxlcd.o: lcd\ files/putrxlcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/lcd files" 
	@${RM} "${OBJECTDIR}/lcd files/putrxlcd.o".d 
	@${RM} "${OBJECTDIR}/lcd files/putrxlcd.o" 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo "${OBJECTDIR}/lcd files/putrxlcd.o"   "lcd files/putrxlcd.c" 
	@${DEP_GEN} -d "${OBJECTDIR}/lcd files/putrxlcd.o" 
	@${FIXDEPS} "${OBJECTDIR}/lcd files/putrxlcd.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/lcd\ files/putsxlcd.o: lcd\ files/putsxlcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/lcd files" 
	@${RM} "${OBJECTDIR}/lcd files/putsxlcd.o".d 
	@${RM} "${OBJECTDIR}/lcd files/putsxlcd.o" 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo "${OBJECTDIR}/lcd files/putsxlcd.o"   "lcd files/putsxlcd.c" 
	@${DEP_GEN} -d "${OBJECTDIR}/lcd files/putsxlcd.o" 
	@${FIXDEPS} "${OBJECTDIR}/lcd files/putsxlcd.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/lcd\ files/readaddr.o: lcd\ files/readaddr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/lcd files" 
	@${RM} "${OBJECTDIR}/lcd files/readaddr.o".d 
	@${RM} "${OBJECTDIR}/lcd files/readaddr.o" 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo "${OBJECTDIR}/lcd files/readaddr.o"   "lcd files/readaddr.c" 
	@${DEP_GEN} -d "${OBJECTDIR}/lcd files/readaddr.o" 
	@${FIXDEPS} "${OBJECTDIR}/lcd files/readaddr.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/lcd\ files/readdata.o: lcd\ files/readdata.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/lcd files" 
	@${RM} "${OBJECTDIR}/lcd files/readdata.o".d 
	@${RM} "${OBJECTDIR}/lcd files/readdata.o" 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo "${OBJECTDIR}/lcd files/readdata.o"   "lcd files/readdata.c" 
	@${DEP_GEN} -d "${OBJECTDIR}/lcd files/readdata.o" 
	@${FIXDEPS} "${OBJECTDIR}/lcd files/readdata.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/lcd\ files/setcgram.o: lcd\ files/setcgram.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/lcd files" 
	@${RM} "${OBJECTDIR}/lcd files/setcgram.o".d 
	@${RM} "${OBJECTDIR}/lcd files/setcgram.o" 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo "${OBJECTDIR}/lcd files/setcgram.o"   "lcd files/setcgram.c" 
	@${DEP_GEN} -d "${OBJECTDIR}/lcd files/setcgram.o" 
	@${FIXDEPS} "${OBJECTDIR}/lcd files/setcgram.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/lcd\ files/setddram.o: lcd\ files/setddram.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/lcd files" 
	@${RM} "${OBJECTDIR}/lcd files/setddram.o".d 
	@${RM} "${OBJECTDIR}/lcd files/setddram.o" 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo "${OBJECTDIR}/lcd files/setddram.o"   "lcd files/setddram.c" 
	@${DEP_GEN} -d "${OBJECTDIR}/lcd files/setddram.o" 
	@${FIXDEPS} "${OBJECTDIR}/lcd files/setddram.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/lcd\ files/wcmdxlcd.o: lcd\ files/wcmdxlcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/lcd files" 
	@${RM} "${OBJECTDIR}/lcd files/wcmdxlcd.o".d 
	@${RM} "${OBJECTDIR}/lcd files/wcmdxlcd.o" 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo "${OBJECTDIR}/lcd files/wcmdxlcd.o"   "lcd files/wcmdxlcd.c" 
	@${DEP_GEN} -d "${OBJECTDIR}/lcd files/wcmdxlcd.o" 
	@${FIXDEPS} "${OBJECTDIR}/lcd files/wcmdxlcd.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/lcd\ files/writdata.o: lcd\ files/writdata.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/lcd files" 
	@${RM} "${OBJECTDIR}/lcd files/writdata.o".d 
	@${RM} "${OBJECTDIR}/lcd files/writdata.o" 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo "${OBJECTDIR}/lcd files/writdata.o"   "lcd files/writdata.c" 
	@${DEP_GEN} -d "${OBJECTDIR}/lcd files/writdata.o" 
	@${FIXDEPS} "${OBJECTDIR}/lcd files/writdata.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
else
${OBJECTDIR}/lab1lcd.o: lab1lcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/lab1lcd.o.d 
	@${RM} ${OBJECTDIR}/lab1lcd.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/lab1lcd.o   lab1lcd.c 
	@${DEP_GEN} -d ${OBJECTDIR}/lab1lcd.o 
	@${FIXDEPS} "${OBJECTDIR}/lab1lcd.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/lcd\ files/busyxlcd.o: lcd\ files/busyxlcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/lcd files" 
	@${RM} "${OBJECTDIR}/lcd files/busyxlcd.o".d 
	@${RM} "${OBJECTDIR}/lcd files/busyxlcd.o" 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo "${OBJECTDIR}/lcd files/busyxlcd.o"   "lcd files/busyxlcd.c" 
	@${DEP_GEN} -d "${OBJECTDIR}/lcd files/busyxlcd.o" 
	@${FIXDEPS} "${OBJECTDIR}/lcd files/busyxlcd.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/lcd\ files/openxlcd.o: lcd\ files/openxlcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/lcd files" 
	@${RM} "${OBJECTDIR}/lcd files/openxlcd.o".d 
	@${RM} "${OBJECTDIR}/lcd files/openxlcd.o" 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo "${OBJECTDIR}/lcd files/openxlcd.o"   "lcd files/openxlcd.c" 
	@${DEP_GEN} -d "${OBJECTDIR}/lcd files/openxlcd.o" 
	@${FIXDEPS} "${OBJECTDIR}/lcd files/openxlcd.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/lcd\ files/putrxlcd.o: lcd\ files/putrxlcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/lcd files" 
	@${RM} "${OBJECTDIR}/lcd files/putrxlcd.o".d 
	@${RM} "${OBJECTDIR}/lcd files/putrxlcd.o" 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo "${OBJECTDIR}/lcd files/putrxlcd.o"   "lcd files/putrxlcd.c" 
	@${DEP_GEN} -d "${OBJECTDIR}/lcd files/putrxlcd.o" 
	@${FIXDEPS} "${OBJECTDIR}/lcd files/putrxlcd.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/lcd\ files/putsxlcd.o: lcd\ files/putsxlcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/lcd files" 
	@${RM} "${OBJECTDIR}/lcd files/putsxlcd.o".d 
	@${RM} "${OBJECTDIR}/lcd files/putsxlcd.o" 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo "${OBJECTDIR}/lcd files/putsxlcd.o"   "lcd files/putsxlcd.c" 
	@${DEP_GEN} -d "${OBJECTDIR}/lcd files/putsxlcd.o" 
	@${FIXDEPS} "${OBJECTDIR}/lcd files/putsxlcd.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/lcd\ files/readaddr.o: lcd\ files/readaddr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/lcd files" 
	@${RM} "${OBJECTDIR}/lcd files/readaddr.o".d 
	@${RM} "${OBJECTDIR}/lcd files/readaddr.o" 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo "${OBJECTDIR}/lcd files/readaddr.o"   "lcd files/readaddr.c" 
	@${DEP_GEN} -d "${OBJECTDIR}/lcd files/readaddr.o" 
	@${FIXDEPS} "${OBJECTDIR}/lcd files/readaddr.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/lcd\ files/readdata.o: lcd\ files/readdata.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/lcd files" 
	@${RM} "${OBJECTDIR}/lcd files/readdata.o".d 
	@${RM} "${OBJECTDIR}/lcd files/readdata.o" 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo "${OBJECTDIR}/lcd files/readdata.o"   "lcd files/readdata.c" 
	@${DEP_GEN} -d "${OBJECTDIR}/lcd files/readdata.o" 
	@${FIXDEPS} "${OBJECTDIR}/lcd files/readdata.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/lcd\ files/setcgram.o: lcd\ files/setcgram.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/lcd files" 
	@${RM} "${OBJECTDIR}/lcd files/setcgram.o".d 
	@${RM} "${OBJECTDIR}/lcd files/setcgram.o" 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo "${OBJECTDIR}/lcd files/setcgram.o"   "lcd files/setcgram.c" 
	@${DEP_GEN} -d "${OBJECTDIR}/lcd files/setcgram.o" 
	@${FIXDEPS} "${OBJECTDIR}/lcd files/setcgram.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/lcd\ files/setddram.o: lcd\ files/setddram.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/lcd files" 
	@${RM} "${OBJECTDIR}/lcd files/setddram.o".d 
	@${RM} "${OBJECTDIR}/lcd files/setddram.o" 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo "${OBJECTDIR}/lcd files/setddram.o"   "lcd files/setddram.c" 
	@${DEP_GEN} -d "${OBJECTDIR}/lcd files/setddram.o" 
	@${FIXDEPS} "${OBJECTDIR}/lcd files/setddram.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/lcd\ files/wcmdxlcd.o: lcd\ files/wcmdxlcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/lcd files" 
	@${RM} "${OBJECTDIR}/lcd files/wcmdxlcd.o".d 
	@${RM} "${OBJECTDIR}/lcd files/wcmdxlcd.o" 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo "${OBJECTDIR}/lcd files/wcmdxlcd.o"   "lcd files/wcmdxlcd.c" 
	@${DEP_GEN} -d "${OBJECTDIR}/lcd files/wcmdxlcd.o" 
	@${FIXDEPS} "${OBJECTDIR}/lcd files/wcmdxlcd.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/lcd\ files/writdata.o: lcd\ files/writdata.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/lcd files" 
	@${RM} "${OBJECTDIR}/lcd files/writdata.o".d 
	@${RM} "${OBJECTDIR}/lcd files/writdata.o" 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo "${OBJECTDIR}/lcd files/writdata.o"   "lcd files/writdata.c" 
	@${DEP_GEN} -d "${OBJECTDIR}/lcd files/writdata.o" 
	@${FIXDEPS} "${OBJECTDIR}/lcd files/writdata.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/lab1lcdC18.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    lab1_i.lkr
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_LD} $(MP_EXTRA_LD_PRE) "lab1_i.lkr"  -p$(MP_PROCESSOR_OPTION_LD)  -w -x -u_DEBUG -m"${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map"  -z__MPLAB_BUILD=1  -u_CRUNTIME -z__MPLAB_DEBUG=1 -z__MPLAB_DEBUGGER_PK3=1 $(MP_LINKER_DEBUG_OPTION) -l ${MP_CC_DIR}\\..\\lib  -o dist/${CND_CONF}/${IMAGE_TYPE}/lab1lcdC18.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}   
else
dist/${CND_CONF}/${IMAGE_TYPE}/lab1lcdC18.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   lab1_i.lkr
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_LD} $(MP_EXTRA_LD_PRE) "lab1_i.lkr"  -p$(MP_PROCESSOR_OPTION_LD)  -w  -m"${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map"  -z__MPLAB_BUILD=1  -u_CRUNTIME -l ${MP_CC_DIR}\\..\\lib  -o dist/${CND_CONF}/${IMAGE_TYPE}/lab1lcdC18.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}   
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
