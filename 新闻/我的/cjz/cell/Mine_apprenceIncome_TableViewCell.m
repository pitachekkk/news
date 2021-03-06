//
//  Mine_apprenceIncome_TableViewCell.m
//  新闻
//
//  Created by chenjinzhi on 2018/3/22.
//  Copyright © 2018年 apple. All rights reserved.
//

#import "Mine_apprenceIncome_TableViewCell.h"

@implementation Mine_apprenceIncome_TableViewCell{
    UILabel*        m_date;
    UILabel*        m_money;
}

+(instancetype)cellForTableView:(UITableView *)tabelView{
    NSString* str_id = @"Mine_apprenceIncome_cell";
    Mine_apprenceIncome_TableViewCell* cell = [tabelView dequeueReusableCellWithIdentifier:str_id];
    if(!cell){
        cell = [[Mine_apprenceIncome_TableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:str_id];
    }
    return cell;
}

+(CGFloat)HightForCell{
    return kWidth(48);
}

-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if(self){
        [self initView];
    }
    return self;
}

-(void)initView{
    CGFloat cellHeight = kWidth(48);
    
    m_date = [[UILabel alloc] initWithFrame:CGRectMake(kWidth(16), cellHeight/2-kWidth(12)/2, kWidth(120), kWidth(12))];
    m_date.textColor = RGBA(135, 138, 138, 1);
    m_date.textAlignment = NSTextAlignmentLeft;
    m_date.font = kFONT(12);
    [self addSubview:m_date];
    [m_date mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.mas_left).with.offset(kWidth(16));
        make.top.equalTo(self.mas_top).with.offset(kWidth(18));
        make.height.mas_offset(kWidth(12));
    }];
    
    m_money = [[UILabel alloc] initWithFrame:CGRectMake(SCREEN_WIDTH-kWidth(16)-kWidth(100), cellHeight/2-kWidth(12)/2, kWidth(100), kWidth(12))];
    m_money.textColor = RGBA(135, 138, 138, 1);
    m_money.textAlignment = NSTextAlignmentRight;
    m_money.font = kFONT(12);
    [self addSubview:m_money];
    [m_money mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(self.mas_right).with.offset(-kWidth(16));
        make.top.equalTo(self.mas_top).with.offset(kWidth(18));
        make.height.mas_offset(kWidth(12));
    }];
    
    UIView* line = [[UIView alloc] initWithFrame:CGRectMake(0, cellHeight-1, SCREEN_WIDTH, 1)];
    line.backgroundColor = RGBA(242, 242, 242, 1);
    [self addSubview:line];
}

-(void)setModel:(Mine_apprenceInfo_model *)model{
    m_date.text = [[TimeHelper share] GetDateFromString_YYYYMMDD:model.date];
    m_money.text = [NSString stringWithFormat:@"%.2f元",[model.income floatValue]];
}

@end
