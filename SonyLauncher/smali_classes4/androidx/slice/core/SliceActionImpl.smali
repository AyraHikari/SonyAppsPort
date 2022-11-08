.class public Landroidx/slice/core/SliceActionImpl;
.super Ljava/lang/Object;
.source "SliceActionImpl.java"

# interfaces
.implements Landroidx/slice/core/SliceAction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/slice/core/SliceActionImpl$ActionType;
    }
.end annotation


# instance fields
.field private mAction:Landroid/app/PendingIntent;

.field private mActionItem:Landroidx/slice/SliceItem;

.field private mActionKey:Ljava/lang/String;

.field private mActionType:Landroidx/slice/core/SliceActionImpl$ActionType;

.field private mContentDescription:Ljava/lang/CharSequence;

.field private mDateTimeMillis:J

.field private mIcon:Landroidx/core/graphics/drawable/IconCompat;

.field private mImageMode:I

.field private mIsActivity:Z

.field private mIsChecked:Z

.field private mPriority:I

.field private mSliceItem:Landroidx/slice/SliceItem;

.field private mTitle:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;ILjava/lang/CharSequence;)V
    .locals 2
    .param p1, "action"    # Landroid/app/PendingIntent;
    .param p2, "actionIcon"    # Landroidx/core/graphics/drawable/IconCompat;
    .param p3, "imageMode"    # I
    .param p4, "actionTitle"    # Ljava/lang/CharSequence;

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const/4 v0, 0x5

    iput v0, p0, Landroidx/slice/core/SliceActionImpl;->mImageMode:I

    .line 73
    sget-object v0, Landroidx/slice/core/SliceActionImpl$ActionType;->DEFAULT:Landroidx/slice/core/SliceActionImpl$ActionType;

    iput-object v0, p0, Landroidx/slice/core/SliceActionImpl;->mActionType:Landroidx/slice/core/SliceActionImpl$ActionType;

    .line 75
    const/4 v0, -0x1

    iput v0, p0, Landroidx/slice/core/SliceActionImpl;->mPriority:I

    .line 76
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroidx/slice/core/SliceActionImpl;->mDateTimeMillis:J

    .line 139
    iput-object p1, p0, Landroidx/slice/core/SliceActionImpl;->mAction:Landroid/app/PendingIntent;

    .line 140
    iput-object p2, p0, Landroidx/slice/core/SliceActionImpl;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    .line 141
    iput-object p4, p0, Landroidx/slice/core/SliceActionImpl;->mTitle:Ljava/lang/CharSequence;

    .line 142
    iput p3, p0, Landroidx/slice/core/SliceActionImpl;->mImageMode:I

    .line 143
    return-void
.end method

.method public constructor <init>(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "action"    # Landroid/app/PendingIntent;
    .param p2, "actionIcon"    # Landroidx/core/graphics/drawable/IconCompat;
    .param p3, "actionTitle"    # Ljava/lang/CharSequence;

    .line 99
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Landroidx/slice/core/SliceActionImpl;-><init>(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;ILjava/lang/CharSequence;)V

    .line 100
    return-void
.end method

.method public constructor <init>(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Z)V
    .locals 1
    .param p1, "action"    # Landroid/app/PendingIntent;
    .param p2, "actionIcon"    # Landroidx/core/graphics/drawable/IconCompat;
    .param p3, "actionTitle"    # Ljava/lang/CharSequence;
    .param p4, "isChecked"    # Z

    .line 157
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Landroidx/slice/core/SliceActionImpl;-><init>(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;ILjava/lang/CharSequence;)V

    .line 158
    iput-boolean p4, p0, Landroidx/slice/core/SliceActionImpl;->mIsChecked:Z

    .line 159
    sget-object v0, Landroidx/slice/core/SliceActionImpl$ActionType;->TOGGLE:Landroidx/slice/core/SliceActionImpl$ActionType;

    iput-object v0, p0, Landroidx/slice/core/SliceActionImpl;->mActionType:Landroidx/slice/core/SliceActionImpl$ActionType;

    .line 160
    return-void
.end method

.method public constructor <init>(Landroid/app/PendingIntent;Ljava/lang/CharSequence;JZ)V
    .locals 2
    .param p1, "action"    # Landroid/app/PendingIntent;
    .param p2, "actionTitle"    # Ljava/lang/CharSequence;
    .param p3, "dateTimeMillis"    # J
    .param p5, "isDatePicker"    # Z

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const/4 v0, 0x5

    iput v0, p0, Landroidx/slice/core/SliceActionImpl;->mImageMode:I

    .line 73
    sget-object v0, Landroidx/slice/core/SliceActionImpl$ActionType;->DEFAULT:Landroidx/slice/core/SliceActionImpl$ActionType;

    iput-object v0, p0, Landroidx/slice/core/SliceActionImpl;->mActionType:Landroidx/slice/core/SliceActionImpl$ActionType;

    .line 75
    const/4 v0, -0x1

    iput v0, p0, Landroidx/slice/core/SliceActionImpl;->mPriority:I

    .line 76
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroidx/slice/core/SliceActionImpl;->mDateTimeMillis:J

    .line 113
    iput-object p1, p0, Landroidx/slice/core/SliceActionImpl;->mAction:Landroid/app/PendingIntent;

    .line 114
    iput-object p2, p0, Landroidx/slice/core/SliceActionImpl;->mTitle:Ljava/lang/CharSequence;

    .line 115
    if-eqz p5, :cond_0

    sget-object v0, Landroidx/slice/core/SliceActionImpl$ActionType;->DATE_PICKER:Landroidx/slice/core/SliceActionImpl$ActionType;

    goto :goto_0

    :cond_0
    sget-object v0, Landroidx/slice/core/SliceActionImpl$ActionType;->TIME_PICKER:Landroidx/slice/core/SliceActionImpl$ActionType;

    :goto_0
    iput-object v0, p0, Landroidx/slice/core/SliceActionImpl;->mActionType:Landroidx/slice/core/SliceActionImpl$ActionType;

    .line 116
    iput-wide p3, p0, Landroidx/slice/core/SliceActionImpl;->mDateTimeMillis:J

    .line 117
    return-void
.end method

.method public constructor <init>(Landroid/app/PendingIntent;Ljava/lang/CharSequence;Z)V
    .locals 2
    .param p1, "action"    # Landroid/app/PendingIntent;
    .param p2, "actionTitle"    # Ljava/lang/CharSequence;
    .param p3, "isChecked"    # Z

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const/4 v0, 0x5

    iput v0, p0, Landroidx/slice/core/SliceActionImpl;->mImageMode:I

    .line 73
    sget-object v0, Landroidx/slice/core/SliceActionImpl$ActionType;->DEFAULT:Landroidx/slice/core/SliceActionImpl$ActionType;

    iput-object v0, p0, Landroidx/slice/core/SliceActionImpl;->mActionType:Landroidx/slice/core/SliceActionImpl$ActionType;

    .line 75
    const/4 v0, -0x1

    iput v0, p0, Landroidx/slice/core/SliceActionImpl;->mPriority:I

    .line 76
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroidx/slice/core/SliceActionImpl;->mDateTimeMillis:J

    .line 172
    iput-object p1, p0, Landroidx/slice/core/SliceActionImpl;->mAction:Landroid/app/PendingIntent;

    .line 173
    iput-object p2, p0, Landroidx/slice/core/SliceActionImpl;->mTitle:Ljava/lang/CharSequence;

    .line 174
    sget-object v0, Landroidx/slice/core/SliceActionImpl$ActionType;->TOGGLE:Landroidx/slice/core/SliceActionImpl$ActionType;

    iput-object v0, p0, Landroidx/slice/core/SliceActionImpl;->mActionType:Landroidx/slice/core/SliceActionImpl$ActionType;

    .line 175
    iput-boolean p3, p0, Landroidx/slice/core/SliceActionImpl;->mIsChecked:Z

    .line 176
    return-void
.end method

.method public constructor <init>(Landroidx/slice/SliceItem;)V
    .locals 9
    .param p1, "slice"    # Landroidx/slice/SliceItem;

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const/4 v0, 0x5

    iput v0, p0, Landroidx/slice/core/SliceActionImpl;->mImageMode:I

    .line 73
    sget-object v0, Landroidx/slice/core/SliceActionImpl$ActionType;->DEFAULT:Landroidx/slice/core/SliceActionImpl$ActionType;

    iput-object v0, p0, Landroidx/slice/core/SliceActionImpl;->mActionType:Landroidx/slice/core/SliceActionImpl$ActionType;

    .line 75
    const/4 v0, -0x1

    iput v0, p0, Landroidx/slice/core/SliceActionImpl;->mPriority:I

    .line 76
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Landroidx/slice/core/SliceActionImpl;->mDateTimeMillis:J

    .line 189
    iput-object p1, p0, Landroidx/slice/core/SliceActionImpl;->mSliceItem:Landroidx/slice/SliceItem;

    .line 190
    const-string v1, "action"

    invoke-static {p1, v1}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/SliceItem;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v1

    .line 191
    .local v1, "actionItem":Landroidx/slice/SliceItem;
    if-nez v1, :cond_0

    .line 193
    return-void

    .line 195
    :cond_0
    iput-object v1, p0, Landroidx/slice/core/SliceActionImpl;->mActionItem:Landroidx/slice/SliceItem;

    .line 196
    invoke-virtual {v1}, Landroidx/slice/SliceItem;->getAction()Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Landroidx/slice/core/SliceActionImpl;->mAction:Landroid/app/PendingIntent;

    .line 197
    invoke-virtual {v1}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v2

    const-string v3, "image"

    invoke-static {v2, v3}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/Slice;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v2

    .line 198
    .local v2, "iconItem":Landroidx/slice/SliceItem;
    if-eqz v2, :cond_1

    .line 199
    invoke-virtual {v2}, Landroidx/slice/SliceItem;->getIcon()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v3

    iput-object v3, p0, Landroidx/slice/core/SliceActionImpl;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    .line 200
    invoke-static {v2}, Landroidx/slice/core/SliceActionImpl;->parseImageMode(Landroidx/slice/SliceItem;)I

    move-result v3

    iput v3, p0, Landroidx/slice/core/SliceActionImpl;->mImageMode:I

    .line 202
    :cond_1
    invoke-virtual {v1}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "text"

    const-string v6, "title"

    invoke-static {v3, v5, v6, v4}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v3

    .line 204
    .local v3, "titleItem":Landroidx/slice/SliceItem;
    if-eqz v3, :cond_2

    .line 205
    invoke-virtual {v3}, Landroidx/slice/SliceItem;->getSanitizedText()Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Landroidx/slice/core/SliceActionImpl;->mTitle:Ljava/lang/CharSequence;

    .line 207
    :cond_2
    invoke-virtual {v1}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v4

    const-string v6, "content_description"

    invoke-static {v4, v5, v6}, Landroidx/slice/core/SliceQuery;->findSubtype(Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v4

    .line 209
    .local v4, "cdItem":Landroidx/slice/SliceItem;
    if-eqz v4, :cond_3

    .line 210
    invoke-virtual {v4}, Landroidx/slice/SliceItem;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, p0, Landroidx/slice/core/SliceActionImpl;->mContentDescription:Ljava/lang/CharSequence;

    .line 212
    :cond_3
    invoke-virtual {v1}, Landroidx/slice/SliceItem;->getSubType()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_4

    .line 213
    sget-object v6, Landroidx/slice/core/SliceActionImpl$ActionType;->DEFAULT:Landroidx/slice/core/SliceActionImpl$ActionType;

    iput-object v6, p0, Landroidx/slice/core/SliceActionImpl;->mActionType:Landroidx/slice/core/SliceActionImpl$ActionType;

    goto :goto_2

    .line 215
    :cond_4
    invoke-virtual {v1}, Landroidx/slice/SliceItem;->getSubType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    :cond_5
    goto :goto_0

    :sswitch_0
    const-string v7, "date_picker"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/4 v6, 0x1

    goto :goto_1

    :sswitch_1
    const-string v7, "time_picker"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/4 v6, 0x2

    goto :goto_1

    :sswitch_2
    const-string v7, "toggle"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/4 v6, 0x0

    goto :goto_1

    :goto_0
    move v6, v0

    :goto_1
    const-string v7, "millis"

    const-string v8, "long"

    packed-switch v6, :pswitch_data_0

    .line 237
    sget-object v6, Landroidx/slice/core/SliceActionImpl$ActionType;->DEFAULT:Landroidx/slice/core/SliceActionImpl$ActionType;

    iput-object v6, p0, Landroidx/slice/core/SliceActionImpl;->mActionType:Landroidx/slice/core/SliceActionImpl$ActionType;

    goto :goto_2

    .line 229
    :pswitch_0
    sget-object v6, Landroidx/slice/core/SliceActionImpl$ActionType;->TIME_PICKER:Landroidx/slice/core/SliceActionImpl$ActionType;

    iput-object v6, p0, Landroidx/slice/core/SliceActionImpl;->mActionType:Landroidx/slice/core/SliceActionImpl$ActionType;

    .line 230
    invoke-static {v1, v8, v7}, Landroidx/slice/core/SliceQuery;->findSubtype(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v6

    .line 232
    .local v6, "timeItem":Landroidx/slice/SliceItem;
    if-eqz v6, :cond_6

    .line 233
    invoke-virtual {v6}, Landroidx/slice/SliceItem;->getLong()J

    move-result-wide v7

    iput-wide v7, p0, Landroidx/slice/core/SliceActionImpl;->mDateTimeMillis:J

    goto :goto_2

    .line 221
    .end local v6    # "timeItem":Landroidx/slice/SliceItem;
    :pswitch_1
    sget-object v6, Landroidx/slice/core/SliceActionImpl$ActionType;->DATE_PICKER:Landroidx/slice/core/SliceActionImpl$ActionType;

    iput-object v6, p0, Landroidx/slice/core/SliceActionImpl;->mActionType:Landroidx/slice/core/SliceActionImpl$ActionType;

    .line 222
    invoke-static {v1, v8, v7}, Landroidx/slice/core/SliceQuery;->findSubtype(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v6

    .line 224
    .local v6, "dateItem":Landroidx/slice/SliceItem;
    if-eqz v6, :cond_6

    .line 225
    invoke-virtual {v6}, Landroidx/slice/SliceItem;->getLong()J

    move-result-wide v7

    iput-wide v7, p0, Landroidx/slice/core/SliceActionImpl;->mDateTimeMillis:J

    goto :goto_2

    .line 217
    .end local v6    # "dateItem":Landroidx/slice/SliceItem;
    :pswitch_2
    sget-object v6, Landroidx/slice/core/SliceActionImpl$ActionType;->TOGGLE:Landroidx/slice/core/SliceActionImpl$ActionType;

    iput-object v6, p0, Landroidx/slice/core/SliceActionImpl;->mActionType:Landroidx/slice/core/SliceActionImpl$ActionType;

    .line 218
    const-string v6, "selected"

    invoke-virtual {v1, v6}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Landroidx/slice/core/SliceActionImpl;->mIsChecked:Z

    .line 219
    nop

    .line 240
    :cond_6
    :goto_2
    iget-object v6, p0, Landroidx/slice/core/SliceActionImpl;->mSliceItem:Landroidx/slice/SliceItem;

    const-string v7, "activity"

    invoke-virtual {v6, v7}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Landroidx/slice/core/SliceActionImpl;->mIsActivity:Z

    .line 241
    invoke-virtual {v1}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v6

    const-string v7, "int"

    const-string v8, "priority"

    invoke-static {v6, v7, v8}, Landroidx/slice/core/SliceQuery;->findSubtype(Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v6

    .line 243
    .local v6, "priority":Landroidx/slice/SliceItem;
    if-eqz v6, :cond_7

    invoke-virtual {v6}, Landroidx/slice/SliceItem;->getInt()I

    move-result v0

    :cond_7
    iput v0, p0, Landroidx/slice/core/SliceActionImpl;->mPriority:I

    .line 244
    invoke-virtual {v1}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v0

    const-string v7, "action_key"

    invoke-static {v0, v5, v7}, Landroidx/slice/core/SliceQuery;->findSubtype(Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v0

    .line 246
    .local v0, "actionKeyItem":Landroidx/slice/SliceItem;
    if-eqz v0, :cond_8

    .line 247
    invoke-virtual {v0}, Landroidx/slice/SliceItem;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroidx/slice/core/SliceActionImpl;->mActionKey:Ljava/lang/String;

    .line 249
    :cond_8
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x33c144ac -> :sswitch_2
        0x2d3f6240 -> :sswitch_1
        0x4a87b63f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private buildSliceContent(Landroidx/slice/Slice$Builder;)Landroidx/slice/Slice$Builder;
    .locals 6
    .param p1, "builder"    # Landroidx/slice/Slice$Builder;

    .line 422
    new-instance v0, Landroidx/slice/Slice$Builder;

    invoke-direct {v0, p1}, Landroidx/slice/Slice$Builder;-><init>(Landroidx/slice/Slice$Builder;)V

    .line 423
    .local v0, "sb":Landroidx/slice/Slice$Builder;
    iget-object v1, p0, Landroidx/slice/core/SliceActionImpl;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 425
    iget v4, p0, Landroidx/slice/core/SliceActionImpl;->mImageMode:I

    const/4 v5, 0x6

    if-ne v4, v5, :cond_0

    .line 426
    const-string v4, "show_label"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    .local v4, "hints":[Ljava/lang/String;
    goto :goto_1

    .line 428
    .end local v4    # "hints":[Ljava/lang/String;
    :cond_0
    if-nez v4, :cond_1

    .line 429
    new-array v4, v3, [Ljava/lang/String;

    goto :goto_0

    .line 430
    :cond_1
    const-string v4, "no_tint"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    :goto_0
    nop

    .line 432
    .restart local v4    # "hints":[Ljava/lang/String;
    :goto_1
    invoke-virtual {v0, v1, v2, v4}, Landroidx/slice/Slice$Builder;->addIcon(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    .line 434
    .end local v4    # "hints":[Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Landroidx/slice/core/SliceActionImpl;->mTitle:Ljava/lang/CharSequence;

    if-eqz v1, :cond_3

    .line 435
    const-string v4, "title"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v4}, Landroidx/slice/Slice$Builder;->addText(Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    .line 437
    :cond_3
    iget-object v1, p0, Landroidx/slice/core/SliceActionImpl;->mContentDescription:Ljava/lang/CharSequence;

    if-eqz v1, :cond_4

    .line 438
    new-array v2, v3, [Ljava/lang/String;

    const-string v4, "content_description"

    invoke-virtual {v0, v1, v4, v2}, Landroidx/slice/Slice$Builder;->addText(Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    .line 440
    :cond_4
    iget-wide v1, p0, Landroidx/slice/core/SliceActionImpl;->mDateTimeMillis:J

    const-wide/16 v4, -0x1

    cmp-long v4, v1, v4

    if-eqz v4, :cond_5

    .line 441
    new-array v4, v3, [Ljava/lang/String;

    const-string v5, "millis"

    invoke-virtual {v0, v1, v2, v5, v4}, Landroidx/slice/Slice$Builder;->addLong(JLjava/lang/String;[Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    .line 443
    :cond_5
    iget-object v1, p0, Landroidx/slice/core/SliceActionImpl;->mActionType:Landroidx/slice/core/SliceActionImpl$ActionType;

    sget-object v2, Landroidx/slice/core/SliceActionImpl$ActionType;->TOGGLE:Landroidx/slice/core/SliceActionImpl$ActionType;

    if-ne v1, v2, :cond_6

    iget-boolean v1, p0, Landroidx/slice/core/SliceActionImpl;->mIsChecked:Z

    if-eqz v1, :cond_6

    .line 444
    const-string v1, "selected"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/slice/Slice$Builder;->addHints([Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    .line 446
    :cond_6
    iget v1, p0, Landroidx/slice/core/SliceActionImpl;->mPriority:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_7

    .line 447
    new-array v2, v3, [Ljava/lang/String;

    const-string v4, "priority"

    invoke-virtual {v0, v1, v4, v2}, Landroidx/slice/Slice$Builder;->addInt(ILjava/lang/String;[Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    .line 449
    :cond_7
    iget-object v1, p0, Landroidx/slice/core/SliceActionImpl;->mActionKey:Ljava/lang/String;

    if-eqz v1, :cond_8

    .line 450
    new-array v2, v3, [Ljava/lang/String;

    const-string v3, "action_key"

    invoke-virtual {v0, v1, v3, v2}, Landroidx/slice/Slice$Builder;->addText(Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    .line 452
    :cond_8
    iget-boolean v1, p0, Landroidx/slice/core/SliceActionImpl;->mIsActivity:Z

    if-eqz v1, :cond_9

    .line 453
    const-string v1, "activity"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/slice/Slice$Builder;->addHints([Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    .line 455
    :cond_9
    return-object v0
.end method

.method public static parseImageMode(Landroidx/slice/SliceItem;)I
    .locals 2
    .param p0, "iconItem"    # Landroidx/slice/SliceItem;

    .line 484
    const-string v0, "show_label"

    invoke-virtual {p0, v0}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 485
    const/4 v0, 0x6

    return v0

    .line 487
    :cond_0
    const-string v0, "no_tint"

    invoke-virtual {p0, v0}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 488
    const/4 v0, 0x0

    return v0

    .line 490
    :cond_1
    const-string v0, "raw"

    invoke-virtual {p0, v0}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "large"

    if-eqz v0, :cond_3

    .line 491
    invoke-virtual {p0, v1}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    :goto_0
    return v0

    .line 493
    :cond_3
    invoke-virtual {p0, v1}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 494
    const/4 v0, 0x2

    return v0

    .line 496
    :cond_4
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public buildPrimaryActionSlice(Landroidx/slice/Slice$Builder;)Landroidx/slice/Slice;
    .locals 3
    .param p1, "builder"    # Landroidx/slice/Slice$Builder;

    .line 416
    invoke-direct {p0, p1}, Landroidx/slice/core/SliceActionImpl;->buildSliceContent(Landroidx/slice/Slice$Builder;)Landroidx/slice/Slice$Builder;

    move-result-object v0

    const-string v1, "shortcut"

    const-string v2, "title"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/slice/Slice$Builder;->addHints([Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/slice/Slice$Builder;->build()Landroidx/slice/Slice;

    move-result-object v0

    return-object v0
.end method

.method public buildSlice(Landroidx/slice/Slice$Builder;)Landroidx/slice/Slice;
    .locals 4
    .param p1, "builder"    # Landroidx/slice/Slice$Builder;

    .line 405
    const-string v0, "shortcut"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/slice/Slice$Builder;->addHints([Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    move-result-object v0

    iget-object v1, p0, Landroidx/slice/core/SliceActionImpl;->mAction:Landroid/app/PendingIntent;

    .line 406
    invoke-direct {p0, p1}, Landroidx/slice/core/SliceActionImpl;->buildSliceContent(Landroidx/slice/Slice$Builder;)Landroidx/slice/Slice$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/slice/Slice$Builder;->build()Landroidx/slice/Slice;

    move-result-object v2

    invoke-virtual {p0}, Landroidx/slice/core/SliceActionImpl;->getSubtype()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroidx/slice/Slice$Builder;->addAction(Landroid/app/PendingIntent;Landroidx/slice/Slice;Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    move-result-object v0

    .line 407
    invoke-virtual {v0}, Landroidx/slice/Slice$Builder;->build()Landroidx/slice/Slice;

    move-result-object v0

    .line 405
    return-object v0
.end method

.method public getAction()Landroid/app/PendingIntent;
    .locals 1

    .line 296
    iget-object v0, p0, Landroidx/slice/core/SliceActionImpl;->mAction:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/slice/core/SliceActionImpl;->mActionItem:Landroidx/slice/SliceItem;

    invoke-virtual {v0}, Landroidx/slice/SliceItem;->getAction()Landroid/app/PendingIntent;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getActionItem()Landroidx/slice/SliceItem;
    .locals 1

    .line 304
    iget-object v0, p0, Landroidx/slice/core/SliceActionImpl;->mActionItem:Landroidx/slice/SliceItem;

    return-object v0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 1

    .line 332
    iget-object v0, p0, Landroidx/slice/core/SliceActionImpl;->mContentDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getIcon()Landroidx/core/graphics/drawable/IconCompat;
    .locals 1

    .line 314
    iget-object v0, p0, Landroidx/slice/core/SliceActionImpl;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    return-object v0
.end method

.method public getImageMode()I
    .locals 1

    .line 373
    iget v0, p0, Landroidx/slice/core/SliceActionImpl;->mImageMode:I

    return v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 349
    iget-object v0, p0, Landroidx/slice/core/SliceActionImpl;->mActionKey:Ljava/lang/String;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .line 340
    iget v0, p0, Landroidx/slice/core/SliceActionImpl;->mPriority:I

    return v0
.end method

.method public getSliceItem()Landroidx/slice/SliceItem;
    .locals 1

    .line 390
    iget-object v0, p0, Landroidx/slice/core/SliceActionImpl;->mSliceItem:Landroidx/slice/SliceItem;

    return-object v0
.end method

.method public getSubtype()Ljava/lang/String;
    .locals 2

    .line 463
    sget-object v0, Landroidx/slice/core/SliceActionImpl$1;->$SwitchMap$androidx$slice$core$SliceActionImpl$ActionType:[I

    iget-object v1, p0, Landroidx/slice/core/SliceActionImpl;->mActionType:Landroidx/slice/core/SliceActionImpl$ActionType;

    invoke-virtual {v1}, Landroidx/slice/core/SliceActionImpl$ActionType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 471
    const/4 v0, 0x0

    return-object v0

    .line 469
    :pswitch_0
    const-string v0, "time_picker"

    return-object v0

    .line 467
    :pswitch_1
    const-string v0, "date_picker"

    return-object v0

    .line 465
    :pswitch_2
    const-string v0, "toggle"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 323
    iget-object v0, p0, Landroidx/slice/core/SliceActionImpl;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public isActivity()Z
    .locals 1

    .line 395
    iget-boolean v0, p0, Landroidx/slice/core/SliceActionImpl;->mIsActivity:Z

    return v0
.end method

.method public isChecked()Z
    .locals 1

    .line 365
    iget-boolean v0, p0, Landroidx/slice/core/SliceActionImpl;->mIsChecked:Z

    return v0
.end method

.method public isDefaultToggle()Z
    .locals 2

    .line 381
    iget-object v0, p0, Landroidx/slice/core/SliceActionImpl;->mActionType:Landroidx/slice/core/SliceActionImpl$ActionType;

    sget-object v1, Landroidx/slice/core/SliceActionImpl$ActionType;->TOGGLE:Landroidx/slice/core/SliceActionImpl$ActionType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroidx/slice/core/SliceActionImpl;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isToggle()Z
    .locals 2

    .line 357
    iget-object v0, p0, Landroidx/slice/core/SliceActionImpl;->mActionType:Landroidx/slice/core/SliceActionImpl$ActionType;

    sget-object v1, Landroidx/slice/core/SliceActionImpl$ActionType;->TOGGLE:Landroidx/slice/core/SliceActionImpl$ActionType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setActivity(Z)V
    .locals 0
    .param p1, "isActivity"    # Z

    .line 476
    iput-boolean p1, p0, Landroidx/slice/core/SliceActionImpl;->mIsActivity:Z

    .line 477
    return-void
.end method

.method public bridge synthetic setChecked(Z)Landroidx/slice/core/SliceAction;
    .locals 0

    .line 64
    invoke-virtual {p0, p1}, Landroidx/slice/core/SliceActionImpl;->setChecked(Z)Landroidx/slice/core/SliceActionImpl;

    move-result-object p1

    return-object p1
.end method

.method public setChecked(Z)Landroidx/slice/core/SliceActionImpl;
    .locals 0
    .param p1, "isChecked"    # Z

    .line 267
    iput-boolean p1, p0, Landroidx/slice/core/SliceActionImpl;->mIsChecked:Z

    .line 268
    return-object p0
.end method

.method public bridge synthetic setContentDescription(Ljava/lang/CharSequence;)Landroidx/slice/core/SliceAction;
    .locals 0

    .line 64
    invoke-virtual {p0, p1}, Landroidx/slice/core/SliceActionImpl;->setContentDescription(Ljava/lang/CharSequence;)Landroidx/slice/core/SliceActionImpl;

    move-result-object p1

    return-object p1
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)Landroidx/slice/core/SliceActionImpl;
    .locals 0
    .param p1, "description"    # Ljava/lang/CharSequence;

    .line 257
    iput-object p1, p0, Landroidx/slice/core/SliceActionImpl;->mContentDescription:Ljava/lang/CharSequence;

    .line 258
    return-object p0
.end method

.method public bridge synthetic setKey(Ljava/lang/String;)Landroidx/slice/core/SliceAction;
    .locals 0

    .line 64
    invoke-virtual {p0, p1}, Landroidx/slice/core/SliceActionImpl;->setKey(Ljava/lang/String;)Landroidx/slice/core/SliceActionImpl;

    move-result-object p1

    return-object p1
.end method

.method public setKey(Ljava/lang/String;)Landroidx/slice/core/SliceActionImpl;
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .line 286
    iput-object p1, p0, Landroidx/slice/core/SliceActionImpl;->mActionKey:Ljava/lang/String;

    .line 287
    return-object p0
.end method

.method public bridge synthetic setPriority(I)Landroidx/slice/core/SliceAction;
    .locals 0

    .line 64
    invoke-virtual {p0, p1}, Landroidx/slice/core/SliceActionImpl;->setPriority(I)Landroidx/slice/core/SliceActionImpl;

    move-result-object p1

    return-object p1
.end method

.method public setPriority(I)Landroidx/slice/core/SliceActionImpl;
    .locals 0
    .param p1, "priority"    # I

    .line 276
    iput p1, p0, Landroidx/slice/core/SliceActionImpl;->mPriority:I

    .line 277
    return-object p0
.end method
