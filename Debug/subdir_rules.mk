################################################################################
# Automatically-generated file. Do not edit!
################################################################################

SHELL = cmd.exe

# Each subdirectory must supply rules for building sources it contributes
ISRs.obj: ../ISRs.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: "$<"'
	@echo 'Invoking: C6000 Compiler'
	"C:/ti/ccsv7/tools/compiler/ti-cgt-c6000_8.2.2/bin/cl6x" -mv6740 --include_path="C:/Users/vulev/Desktop/School/EECS 152B/Lab4/adaptive_lms" --include_path="C:/ti/ccsv7/tools/compiler/ti-cgt-c6000_8.2.2/include" -g --diag_warning=225 --diag_wrap=off --display_error_number --preproc_with_compile --preproc_dependency="ISRs.d_raw" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

LCDK_Support_DSP.obj: ../LCDK_Support_DSP.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: "$<"'
	@echo 'Invoking: C6000 Compiler'
	"C:/ti/ccsv7/tools/compiler/ti-cgt-c6000_8.2.2/bin/cl6x" -mv6740 --include_path="C:/Users/vulev/Desktop/School/EECS 152B/Lab4/adaptive_lms" --include_path="C:/ti/ccsv7/tools/compiler/ti-cgt-c6000_8.2.2/include" -g --diag_warning=225 --diag_wrap=off --display_error_number --preproc_with_compile --preproc_dependency="LCDK_Support_DSP.d_raw" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

main.obj: ../main.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: "$<"'
	@echo 'Invoking: C6000 Compiler'
	"C:/ti/ccsv7/tools/compiler/ti-cgt-c6000_8.2.2/bin/cl6x" -mv6740 --include_path="C:/Users/vulev/Desktop/School/EECS 152B/Lab4/adaptive_lms" --include_path="C:/ti/ccsv7/tools/compiler/ti-cgt-c6000_8.2.2/include" -g --diag_warning=225 --diag_wrap=off --display_error_number --preproc_with_compile --preproc_dependency="main.d_raw" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

vectors.obj: ../vectors.asm $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: "$<"'
	@echo 'Invoking: C6000 Compiler'
	"C:/ti/ccsv7/tools/compiler/ti-cgt-c6000_8.2.2/bin/cl6x" -mv6740 --include_path="C:/Users/vulev/Desktop/School/EECS 152B/Lab4/adaptive_lms" --include_path="C:/ti/ccsv7/tools/compiler/ti-cgt-c6000_8.2.2/include" -g --diag_warning=225 --diag_wrap=off --display_error_number --preproc_with_compile --preproc_dependency="vectors.d_raw" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '


