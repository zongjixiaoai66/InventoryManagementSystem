package com.entity.model;

import com.entity.GongyinghsangEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;
import java.io.Serializable;


/**
 * 供应商
 * 接收传参的实体类
 *（实际开发中配合移动端接口开发手动去掉些没用的字段， 后端一般用entity就够用了）
 * 取自ModelAndView 的model名称
 */
public class GongyinghsangModel implements Serializable {
    private static final long serialVersionUID = 1L;




    /**
     * 主键
     */
    private Integer id;


    /**
     * 供应商名称
     */
    private String gongyinghsangName;


    /**
     * 供应商类型
     */
    private Integer gongyinghsangTypes;


    /**
     * 供应商信用等级名称
     */
    private Integer gongyinghsangXinyongTypes;


    /**
     * 添加时间
     */
    @JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat
    private Date insertTime;


    /**
     * 供应商详情
     */
    private String gongyinghsangContent;


    /**
     * 创建时间
     */
    @JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat
    private Date createTime;


    /**
	 * 获取：主键
	 */
    public Integer getId() {
        return id;
    }


    /**
	 * 设置：主键
	 */
    public void setId(Integer id) {
        this.id = id;
    }
    /**
	 * 获取：供应商名称
	 */
    public String getGongyinghsangName() {
        return gongyinghsangName;
    }


    /**
	 * 设置：供应商名称
	 */
    public void setGongyinghsangName(String gongyinghsangName) {
        this.gongyinghsangName = gongyinghsangName;
    }
    /**
	 * 获取：供应商类型
	 */
    public Integer getGongyinghsangTypes() {
        return gongyinghsangTypes;
    }


    /**
	 * 设置：供应商类型
	 */
    public void setGongyinghsangTypes(Integer gongyinghsangTypes) {
        this.gongyinghsangTypes = gongyinghsangTypes;
    }
    /**
	 * 获取：供应商信用等级名称
	 */
    public Integer getGongyinghsangXinyongTypes() {
        return gongyinghsangXinyongTypes;
    }


    /**
	 * 设置：供应商信用等级名称
	 */
    public void setGongyinghsangXinyongTypes(Integer gongyinghsangXinyongTypes) {
        this.gongyinghsangXinyongTypes = gongyinghsangXinyongTypes;
    }
    /**
	 * 获取：添加时间
	 */
    public Date getInsertTime() {
        return insertTime;
    }


    /**
	 * 设置：添加时间
	 */
    public void setInsertTime(Date insertTime) {
        this.insertTime = insertTime;
    }
    /**
	 * 获取：供应商详情
	 */
    public String getGongyinghsangContent() {
        return gongyinghsangContent;
    }


    /**
	 * 设置：供应商详情
	 */
    public void setGongyinghsangContent(String gongyinghsangContent) {
        this.gongyinghsangContent = gongyinghsangContent;
    }
    /**
	 * 获取：创建时间
	 */
    public Date getCreateTime() {
        return createTime;
    }


    /**
	 * 设置：创建时间
	 */
    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    }
