package cn.joymates.erp.domain;

import java.util.Map;

import com.google.common.collect.ImmutableMap;

import cn.joymates.erp.domain.base.BaseSellDetail;

public class SellDetail extends BaseSellDetail {
	public static final String AUDIT = "0";
	public static final String PASS = "1";
	public static final String NOTPASS = "2";
	public static Map<String, String> STATUS = ImmutableMap.of(AUDIT,"δ���",PASS, "���ͨ��",
			NOTPASS, "���δͨ��");
}
