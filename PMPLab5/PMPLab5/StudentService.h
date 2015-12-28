//
//  StudentService.h
//  Laba5UnitTests
//
//  Created by Vladimir Obrizan on 19.12.13.
//  Copyright (c) 2013 Design and Test Lab. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface StudentService : NSObject


/// Массив оценок (объекты типа NSNumber).
@property (nonatomic, readonly) NSArray *marks;


/** Инициализирует новый объек со ссылкой на оценки студента.
 * @param	marks	Массив оценок (объекты типа NSNumber).
 * @return	Проинициализированный объект.
 */
-(instancetype)initWithMarks:(NSArray *)marks;


/** Проверяет, валидные ли у студента оценки.
 * @return	YES, если все оценки в диапазоне от 3 до 5.
 */
-(BOOL)isValidMarks;


/** Проверяет, допущен ли студент к сессии.
 * @return	YES, если количество оценок = 5. NO, если оценок меньше, значит, какой-то предмет не выставлен.
 */
-(BOOL)isPermittedToSession;


/// YES, если средний бал выше или равен 4.
-(BOOL)isStipendia;


@end
