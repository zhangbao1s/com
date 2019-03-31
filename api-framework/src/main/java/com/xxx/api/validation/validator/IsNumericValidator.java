package com.xxx.api.validation.validator;

import com.xxx.api.util.StringUtil;
import com.xxx.api.validation.IsNumeric;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

/**
 * 数字注解验证器
 *
 * @author huangyong
 * @since 1.0.0
 */
public class IsNumericValidator implements ConstraintValidator<IsNumeric, String> {

    @Override
    public void initialize(IsNumeric constraintAnnotation) {
    }

    @Override
    public boolean isValid(String value, ConstraintValidatorContext context) {
        return StringUtil.isNumeric(value);
    }
}
