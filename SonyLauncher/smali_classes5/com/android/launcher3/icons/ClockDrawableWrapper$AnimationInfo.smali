.class Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;
.super Ljava/lang/Object;
.source "ClockDrawableWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/icons/ClockDrawableWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnimationInfo"
.end annotation


# instance fields
.field public baseDrawableState:Landroid/graphics/drawable/Drawable$ConstantState;

.field public defaultHour:I

.field public defaultMinute:I

.field public defaultSecond:I

.field public hourLayerIndex:I

.field public minuteLayerIndex:I

.field public secondLayerIndex:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;-><init>()V

    return-void
.end method


# virtual methods
.method applyTime(Ljava/util/Calendar;Landroid/graphics/drawable/LayerDrawable;)Z
    .locals 9
    .param p1, "time"    # Ljava/util/Calendar;
    .param p2, "foregroundDrawable"    # Landroid/graphics/drawable/LayerDrawable;

    .line 266
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 269
    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget v2, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;->defaultHour:I

    const/16 v3, 0xc

    rsub-int/lit8 v2, v2, 0xc

    add-int/2addr v1, v2

    rem-int/2addr v1, v3

    .line 270
    .local v1, "convertedHour":I
    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget v4, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;->defaultMinute:I

    rsub-int/lit8 v4, v4, 0x3c

    add-int/2addr v2, v4

    rem-int/lit8 v2, v2, 0x3c

    .line 271
    .local v2, "convertedMinute":I
    const/16 v4, 0xd

    invoke-virtual {p1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    iget v5, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;->defaultSecond:I

    rsub-int/lit8 v5, v5, 0x3c

    add-int/2addr v4, v5

    rem-int/lit8 v4, v4, 0x3c

    .line 273
    .local v4, "convertedSecond":I
    const/4 v5, 0x0

    .line 274
    .local v5, "invalidate":Z
    iget v6, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;->hourLayerIndex:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    .line 275
    invoke-virtual {p2, v6}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 276
    .local v6, "hour":Landroid/graphics/drawable/Drawable;
    mul-int/lit8 v8, v1, 0x3c

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/2addr v8, v3

    invoke-virtual {v6, v8}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 277
    const/4 v5, 0x1

    .line 281
    .end local v6    # "hour":Landroid/graphics/drawable/Drawable;
    :cond_0
    iget v3, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;->minuteLayerIndex:I

    if-eq v3, v7, :cond_1

    .line 282
    invoke-virtual {p2, v3}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 283
    .local v3, "minute":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x3c

    add-int/2addr v0, v2

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 284
    const/4 v5, 0x1

    .line 288
    .end local v3    # "minute":Landroid/graphics/drawable/Drawable;
    :cond_1
    iget v0, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;->secondLayerIndex:I

    if-eq v0, v7, :cond_2

    .line 289
    invoke-virtual {p2, v0}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 290
    .local v0, "second":Landroid/graphics/drawable/Drawable;
    mul-int/lit8 v3, v4, 0xa

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 291
    const/4 v5, 0x1

    .line 295
    .end local v0    # "second":Landroid/graphics/drawable/Drawable;
    :cond_2
    return v5
.end method

.method public copyForIcon(Landroid/graphics/drawable/Drawable;)Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;
    .locals 2
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 254
    new-instance v0, Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;

    invoke-direct {v0}, Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;-><init>()V

    .line 255
    .local v0, "result":Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    iput-object v1, v0, Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;->baseDrawableState:Landroid/graphics/drawable/Drawable$ConstantState;

    .line 256
    iget v1, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;->defaultHour:I

    iput v1, v0, Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;->defaultHour:I

    .line 257
    iget v1, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;->defaultMinute:I

    iput v1, v0, Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;->defaultMinute:I

    .line 258
    iget v1, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;->defaultSecond:I

    iput v1, v0, Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;->defaultSecond:I

    .line 259
    iget v1, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;->hourLayerIndex:I

    iput v1, v0, Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;->hourLayerIndex:I

    .line 260
    iget v1, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;->minuteLayerIndex:I

    iput v1, v0, Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;->minuteLayerIndex:I

    .line 261
    iget v1, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;->secondLayerIndex:I

    iput v1, v0, Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;->secondLayerIndex:I

    .line 262
    return-object v0
.end method
