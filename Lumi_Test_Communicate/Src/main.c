/*******************************************************************************
 *				 _ _                                             _ _
				|   |                                           (_ _)
				|   |        _ _     _ _   _ _ _ _ _ _ _ _ _ _   _ _
				|   |       |   |   |   | |    _ _     _ _    | |   |
				|   |       |   |   |   | |   |   |   |   |   | |   |
				|   |       |   |   |   | |   |   |   |   |   | |   |
				|   |_ _ _  |   |_ _|   | |   |   |   |   |   | |   |
				|_ _ _ _ _| |_ _ _ _ _ _| |_ _|   |_ _|   |_ _| |_ _|
								(C)2021 Lumi
 * Copyright (c) 2021
 * Lumi, JSC.
 * All Rights Reserved
 *
 * File name: main.c
 *
 *
 * Author: trungNT
 *
 * Last Changed By:  $Author: trungnt $
 * Revision:         $Revision: $
 * Last Changed:     $Date: $April 15, 2022
 *
 ******************************************************************************/
/******************************************************************************/
/*                              INCLUDE FILES                                 */
/******************************************************************************/
#include <stdint.h>
#include <typedefs.h>
#include <stm32f401re_exti.h>
#include <stm32f401re_gpio.h>
#include <stm32f401re_rcc.h>
#include <testbutton.h>
#include <testLed.h>
/******************************************************************************/
/*                     EXPORTED TYPES and DEFINITIONS                         */
/******************************************************************************/


/******************************************************************************/
/*                              PRIVATE DATA                                  */
/******************************************************************************/

/******************************************************************************/
/*                              EXPORTED DATA                                 */
/******************************************************************************/

/******************************************************************************/
/*                            PRIVATE FUNCTIONS                               */
/******************************************************************************/
static void AppCommonInit(void);
/******************************************************************************/
/*                            EXPORTED FUNCTIONS                              */
/******************************************************************************/

/******************************************************************************/



int main(void)
{
	AppCommonInit();

    /* Loop forever */
	while(1)
	{

	}
}

static void AppCommonInit(void)
{
	LED_Init();
	buttonStart();
	buttonTest();
	buttonRayIn();
	buttonRayOut();
}


/**
 * @func   EXTI4_IRQHandler
 * @brief  Interrupt line 4
 * @param  None
 * @retval None
 */
void EXTI4_IRQHandler(void) {

	if (EXTI_GetFlagStatus(EXTI_Line4) == SET)
	{
		if (GPIO_ReadInputDataBit(BUTTON_GPIO_PORTA,BUTTON_START)== GPIO_PIN_RESET) {
			BlinkLed(LED_1_2_3_4_6_PORT, LED_1_PIN, 4);
		}
		//x??a c??? ng???t sau khi th???c hi???n xong ch????ng tr??nh ng???t.
		EXTI_ClearITPendingBit(EXTI_Line4);
	}
}

/**
 * @brief  EXTI9_5_IRQHandler
 * @param  None
 * @retval None
 */
void EXTI9_5_IRQHandler(void)
{
	if(EXTI_GetITStatus(EXTI_Line5) != RESET)
	{

		BlinkLed(LED_1_2_3_4_6_PORT, LED_2_PIN, 4);
		BlinkLed(LED_1_2_3_4_6_PORT, LED_3_PIN, 4);
		/* Clear the EXTI line 5 pending bit */
		EXTI_ClearITPendingBit(EXTI_Line5);
	}

	if(EXTI_GetITStatus(EXTI_Line6) != RESET)
	{
		BlinkLed(LED_1_2_3_4_6_PORT, LED_4_PIN, 4);
		/* Clear the EXTI line 6 pending bit */
		EXTI_ClearITPendingBit(EXTI_Line6);
	}

	if(EXTI_GetITStatus(EXTI_Line7) != RESET)
	{
		BlinkLed(LED_5_PORT, LED_5_PIN, 4);
		BlinkLed(LED_1_2_3_4_6_PORT, LED_6_PIN, 4);
		/* Clear the EXTI line 7 pending bit */
		EXTI_ClearITPendingBit(EXTI_Line7);
	}
}
