.class Landroidx/constraintlayout/motion/widget/TouchResponse;
.super Ljava/lang/Object;
.source "TouchResponse.java"


# static fields
.field private static final DEBUG:Z = false

.field static final FLAG_DISABLE_POST_SCROLL:I = 0x1

.field static final FLAG_DISABLE_SCROLL:I = 0x2

.field private static final SIDE_BOTTOM:I = 0x3

.field private static final SIDE_END:I = 0x6

.field private static final SIDE_LEFT:I = 0x1

.field private static final SIDE_MIDDLE:I = 0x4

.field private static final SIDE_RIGHT:I = 0x2

.field private static final SIDE_START:I = 0x5

.field private static final SIDE_TOP:I = 0x0

.field private static final TAG:Ljava/lang/String; = "TouchResponse"

.field private static final TOUCH_DIRECTION:[[F

.field private static final TOUCH_DOWN:I = 0x1

.field private static final TOUCH_END:I = 0x5

.field private static final TOUCH_LEFT:I = 0x2

.field private static final TOUCH_RIGHT:I = 0x3

.field private static final TOUCH_SIDES:[[F

.field private static final TOUCH_START:I = 0x4

.field private static final TOUCH_UP:I


# instance fields
.field private mAnchorDpDt:[F

.field private mDragScale:F

.field private mDragStarted:Z

.field private mFlags:I

.field private mLastTouchX:F

.field private mLastTouchY:F

.field private mLimitBoundsTo:I

.field private mMaxAcceleration:F

.field private mMaxVelocity:F

.field private final mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

.field private mMoveWhenScrollAtTop:Z

.field private mOnTouchUp:I

.field private mTouchAnchorId:I

.field private mTouchAnchorSide:I

.field private mTouchAnchorX:F

.field private mTouchAnchorY:F

.field private mTouchDirectionX:F

.field private mTouchDirectionY:F

.field private mTouchRegionId:I

.field private mTouchSide:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 59
    const/4 v0, 0x7

    new-array v0, v0, [[F

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_1

    const/4 v4, 0x1

    aput-object v2, v0, v4

    new-array v2, v1, [F

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    new-array v2, v1, [F

    fill-array-data v2, :array_3

    const/4 v5, 0x3

    aput-object v2, v0, v5

    new-array v2, v1, [F

    fill-array-data v2, :array_4

    const/4 v6, 0x4

    aput-object v2, v0, v6

    new-array v2, v1, [F

    fill-array-data v2, :array_5

    const/4 v7, 0x5

    aput-object v2, v0, v7

    new-array v2, v1, [F

    fill-array-data v2, :array_6

    const/4 v8, 0x6

    aput-object v2, v0, v8

    sput-object v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->TOUCH_SIDES:[[F

    .line 68
    new-array v0, v8, [[F

    new-array v2, v1, [F

    fill-array-data v2, :array_7

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_8

    aput-object v2, v0, v4

    new-array v2, v1, [F

    fill-array-data v2, :array_9

    aput-object v2, v0, v1

    new-array v2, v1, [F

    fill-array-data v2, :array_a

    aput-object v2, v0, v5

    new-array v2, v1, [F

    fill-array-data v2, :array_b

    aput-object v2, v0, v6

    new-array v1, v1, [F

    fill-array-data v1, :array_c

    aput-object v1, v0, v7

    sput-object v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->TOUCH_DIRECTION:[[F

    return-void

    :array_0
    .array-data 4
        0x3f000000    # 0.5f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f000000    # 0.5f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
    .end array-data

    :array_3
    .array-data 4
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data

    :array_4
    .array-data 4
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x3f000000    # 0.5f
    .end array-data

    :array_6
    .array-data 4
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
    .end array-data

    :array_7
    .array-data 4
        0x0
        -0x40800000    # -1.0f
    .end array-data

    :array_8
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_9
    .array-data 4
        -0x40800000    # -1.0f
        0x0
    .end array-data

    :array_a
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_b
    .array-data 4
        -0x40800000    # -1.0f
        0x0
    .end array-data

    :array_c
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method constructor <init>(Landroid/content/Context;Landroidx/constraintlayout/motion/widget/MotionLayout;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layout"    # Landroidx/constraintlayout/motion/widget/MotionLayout;
    .param p3, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorSide:I

    .line 46
    iput v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchSide:I

    .line 47
    iput v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mOnTouchUp:I

    .line 48
    const/4 v1, -0x1

    iput v1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorId:I

    .line 49
    iput v1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchRegionId:I

    .line 50
    iput v1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mLimitBoundsTo:I

    .line 51
    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorY:F

    .line 52
    iput v1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorX:F

    .line 53
    const/4 v1, 0x0

    iput v1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionX:F

    .line 54
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionY:F

    .line 55
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragStarted:Z

    .line 56
    const/4 v2, 0x2

    new-array v2, v2, [F

    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    .line 92
    const/high16 v2, 0x40800000    # 4.0f

    iput v2, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMaxVelocity:F

    .line 93
    const v2, 0x3f99999a    # 1.2f

    iput v2, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMaxAcceleration:F

    .line 94
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMoveWhenScrollAtTop:Z

    .line 95
    iput v1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragScale:F

    .line 96
    iput v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mFlags:I

    .line 101
    iput-object p2, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 102
    invoke-static {p3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroidx/constraintlayout/motion/widget/TouchResponse;->fillFromAttributeList(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 103
    return-void
.end method

.method private fill(Landroid/content/res/TypedArray;)V
    .locals 7
    .param p1, "a"    # Landroid/content/res/TypedArray;

    .line 129
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    .line 130
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_b

    .line 131
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    .line 132
    .local v2, "attr":I
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->OnSwipe_touchAnchorId:I

    if-ne v2, v3, :cond_0

    .line 133
    iget v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorId:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorId:I

    goto/16 :goto_1

    .line 134
    :cond_0
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->OnSwipe_touchAnchorSide:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v2, v3, :cond_1

    .line 135
    iget v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorSide:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorSide:I

    .line 136
    sget-object v6, Landroidx/constraintlayout/motion/widget/TouchResponse;->TOUCH_SIDES:[[F

    aget-object v3, v6, v3

    aget v5, v3, v5

    iput v5, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorX:F

    .line 137
    aget v3, v3, v4

    iput v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorY:F

    goto/16 :goto_1

    .line 138
    :cond_1
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->OnSwipe_dragDirection:I

    if-ne v2, v3, :cond_2

    .line 139
    iget v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchSide:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchSide:I

    .line 140
    sget-object v6, Landroidx/constraintlayout/motion/widget/TouchResponse;->TOUCH_DIRECTION:[[F

    aget-object v3, v6, v3

    aget v5, v3, v5

    iput v5, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionX:F

    .line 141
    aget v3, v3, v4

    iput v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionY:F

    goto :goto_1

    .line 142
    :cond_2
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->OnSwipe_maxVelocity:I

    if-ne v2, v3, :cond_3

    .line 143
    iget v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMaxVelocity:F

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMaxVelocity:F

    goto :goto_1

    .line 144
    :cond_3
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->OnSwipe_maxAcceleration:I

    if-ne v2, v3, :cond_4

    .line 145
    iget v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMaxAcceleration:F

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMaxAcceleration:F

    goto :goto_1

    .line 146
    :cond_4
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->OnSwipe_moveWhenScrollAtTop:I

    if-ne v2, v3, :cond_5

    .line 147
    iget-boolean v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMoveWhenScrollAtTop:Z

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMoveWhenScrollAtTop:Z

    goto :goto_1

    .line 148
    :cond_5
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->OnSwipe_dragScale:I

    if-ne v2, v3, :cond_6

    .line 149
    iget v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragScale:F

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragScale:F

    goto :goto_1

    .line 150
    :cond_6
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->OnSwipe_touchRegionId:I

    if-ne v2, v3, :cond_7

    .line 151
    iget v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchRegionId:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchRegionId:I

    goto :goto_1

    .line 152
    :cond_7
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->OnSwipe_onTouchUp:I

    if-ne v2, v3, :cond_8

    .line 153
    iget v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mOnTouchUp:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mOnTouchUp:I

    goto :goto_1

    .line 154
    :cond_8
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->OnSwipe_nestedScrollFlags:I

    if-ne v2, v3, :cond_9

    .line 155
    invoke-virtual {p1, v2, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mFlags:I

    goto :goto_1

    .line 156
    :cond_9
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->OnSwipe_limitBoundsTo:I

    if-ne v2, v3, :cond_a

    .line 157
    invoke-virtual {p1, v2, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mLimitBoundsTo:I

    .line 130
    .end local v2    # "attr":I
    :cond_a
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 161
    .end local v1    # "i":I
    :cond_b
    return-void
.end method

.method private fillFromAttributeList(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 123
    sget-object v0, Landroidx/constraintlayout/widget/R$styleable;->OnSwipe:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 124
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v0}, Landroidx/constraintlayout/motion/widget/TouchResponse;->fill(Landroid/content/res/TypedArray;)V

    .line 125
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 126
    return-void
.end method


# virtual methods
.method dot(FF)F
    .locals 2
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .line 522
    iget v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionX:F

    mul-float/2addr v0, p1

    iget v1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionY:F

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    return v0
.end method

.method public getAnchorId()I
    .locals 1

    .line 427
    iget v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorId:I

    return v0
.end method

.method public getFlags()I
    .locals 1

    .line 534
    iget v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mFlags:I

    return v0
.end method

.method getLimitBoundsTo(Landroid/view/ViewGroup;Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 5
    .param p1, "layout"    # Landroid/view/ViewGroup;
    .param p2, "rect"    # Landroid/graphics/RectF;

    .line 508
    iget v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mLimitBoundsTo:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 509
    return-object v1

    .line 511
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 512
    .local v0, "view":Landroid/view/View;
    if-nez v0, :cond_1

    .line 513
    return-object v1

    .line 515
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p2, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 516
    return-object p2
.end method

.method getLimitBoundsToId()I
    .locals 1

    .line 519
    iget v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mLimitBoundsTo:I

    return v0
.end method

.method getMaxAcceleration()F
    .locals 1

    .line 462
    iget v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMaxAcceleration:F

    return v0
.end method

.method public getMaxVelocity()F
    .locals 1

    .line 472
    iget v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMaxVelocity:F

    return v0
.end method

.method getMoveWhenScrollAtTop()Z
    .locals 1

    .line 476
    iget-boolean v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMoveWhenScrollAtTop:Z

    return v0
.end method

.method getProgressDirection(FF)F
    .locals 7
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .line 317
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    move-result v0

    .line 318
    .local v0, "pos":F
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v2, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorId:I

    iget v4, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorX:F

    iget v5, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorY:F

    iget-object v6, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    move v3, v0

    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getAnchorDpDt(IFFF[F)V

    .line 320
    iget v1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionX:F

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    const v4, 0x33d6bf95    # 1.0E-7f

    if-eqz v3, :cond_1

    .line 321
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    const/4 v5, 0x0

    aget v6, v3, v5

    cmpl-float v2, v6, v2

    if-nez v2, :cond_0

    .line 322
    aput v4, v3, v5

    .line 324
    :cond_0
    mul-float/2addr v1, p1

    aget v2, v3, v5

    div-float/2addr v1, v2

    .local v1, "velocity":F
    goto :goto_0

    .line 326
    .end local v1    # "velocity":F
    :cond_1
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    const/4 v3, 0x1

    aget v5, v1, v3

    cmpl-float v2, v5, v2

    if-nez v2, :cond_2

    .line 327
    aput v4, v1, v3

    .line 329
    :cond_2
    iget v2, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionY:F

    mul-float/2addr v2, p2

    aget v1, v1, v3

    div-float v1, v2, v1

    .line 331
    .restart local v1    # "velocity":F
    :goto_0
    return v1
.end method

.method getTouchRegion(Landroid/view/ViewGroup;Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 5
    .param p1, "layout"    # Landroid/view/ViewGroup;
    .param p2, "rect"    # Landroid/graphics/RectF;

    .line 487
    iget v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchRegionId:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 488
    return-object v1

    .line 490
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 491
    .local v0, "view":Landroid/view/View;
    if-nez v0, :cond_1

    .line 492
    return-object v1

    .line 494
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p2, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 495
    return-object p2
.end method

.method getTouchRegionId()I
    .locals 1

    .line 498
    iget v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchRegionId:I

    return v0
.end method

.method processTouchEvent(Landroid/view/MotionEvent;Landroidx/constraintlayout/motion/widget/MotionLayout$MotionTracker;ILandroidx/constraintlayout/motion/widget/MotionScene;)V
    .locals 19
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "velocityTracker"    # Landroidx/constraintlayout/motion/widget/MotionLayout$MotionTracker;
    .param p3, "currentState"    # I
    .param p4, "motionScene"    # Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 180
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    invoke-interface {v1, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout$MotionTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 181
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, -0x1

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_6

    .line 188
    :pswitch_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    iget v10, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mLastTouchY:F

    sub-float/2addr v3, v10

    .line 189
    .local v3, "dy":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v10

    iget v11, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mLastTouchX:F

    sub-float/2addr v10, v11

    .line 190
    .local v10, "dx":F
    iget v11, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionX:F

    mul-float/2addr v11, v10

    iget v12, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionY:F

    mul-float/2addr v12, v3

    add-float/2addr v11, v12

    .line 195
    .local v11, "drag":F
    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v12

    const/high16 v13, 0x41200000    # 10.0f

    cmpl-float v12, v12, v13

    if-gtz v12, :cond_0

    iget-boolean v12, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragStarted:Z

    if-eqz v12, :cond_b

    .line 199
    :cond_0
    iget-object v12, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v12}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    move-result v12

    .line 200
    .local v12, "pos":F
    iget-boolean v13, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragStarted:Z

    if-nez v13, :cond_1

    .line 201
    iput-boolean v8, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragStarted:Z

    .line 202
    iget-object v13, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v13, v12}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    .line 207
    :cond_1
    iget v14, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorId:I

    if-eq v14, v4, :cond_2

    .line 209
    iget-object v13, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v4, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorX:F

    iget v15, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorY:F

    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    move/from16 v17, v15

    move v15, v12

    move/from16 v16, v4

    move-object/from16 v18, v5

    invoke-virtual/range {v13 .. v18}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getAnchorDpDt(IFFF[F)V

    goto :goto_0

    .line 217
    :cond_2
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getWidth()I

    move-result v4

    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v5}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    int-to-float v4, v4

    .line 218
    .local v4, "minSize":F
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    iget v13, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionY:F

    mul-float/2addr v13, v4

    aput v13, v5, v8

    .line 219
    iget v13, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionX:F

    mul-float/2addr v13, v4

    aput v13, v5, v9

    .line 222
    .end local v4    # "minSize":F
    :goto_0
    iget v4, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionX:F

    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    aget v13, v5, v9

    mul-float/2addr v4, v13

    iget v13, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionY:F

    aget v5, v5, v8

    mul-float/2addr v13, v5

    add-float/2addr v4, v13

    .line 230
    .local v4, "movmentInDir":F
    iget v5, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragScale:F

    mul-float/2addr v4, v5

    .line 232
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-double v13, v5

    const-wide v15, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v5, v13, v15

    if-gez v5, :cond_3

    .line 233
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    const v13, 0x3c23d70a    # 0.01f

    aput v13, v5, v9

    .line 234
    aput v13, v5, v8

    .line 238
    :cond_3
    iget v5, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionX:F

    cmpl-float v5, v5, v7

    if-eqz v5, :cond_4

    .line 239
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    aget v5, v5, v9

    div-float v5, v10, v5

    .local v5, "change":F
    goto :goto_1

    .line 241
    .end local v5    # "change":F
    :cond_4
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    aget v5, v5, v8

    div-float v5, v3, v5

    .line 246
    .restart local v5    # "change":F
    :goto_1
    add-float v13, v12, v5

    invoke-static {v13, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 248
    .end local v12    # "pos":F
    .local v6, "pos":F
    iget-object v12, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v12}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    move-result v12

    cmpl-float v12, v6, v12

    if-eqz v12, :cond_6

    .line 249
    iget-object v12, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v12, v6}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    .line 253
    const/16 v12, 0x3e8

    invoke-interface {v1, v12}, Landroidx/constraintlayout/motion/widget/MotionLayout$MotionTracker;->computeCurrentVelocity(I)V

    .line 254
    invoke-interface/range {p2 .. p2}, Landroidx/constraintlayout/motion/widget/MotionLayout$MotionTracker;->getXVelocity()F

    move-result v12

    .line 255
    .local v12, "tvx":F
    invoke-interface/range {p2 .. p2}, Landroidx/constraintlayout/motion/widget/MotionLayout$MotionTracker;->getYVelocity()F

    move-result v13

    .line 256
    .local v13, "tvy":F
    iget v14, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionX:F

    cmpl-float v7, v14, v7

    if-eqz v7, :cond_5

    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    aget v7, v7, v9

    div-float v7, v12, v7

    goto :goto_2

    :cond_5
    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    aget v7, v7, v8

    div-float v7, v13, v7

    .line 257
    .local v7, "velocity":F
    :goto_2
    iget-object v8, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iput v7, v8, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastVelocity:F

    .line 258
    .end local v7    # "velocity":F
    .end local v12    # "tvx":F
    .end local v13    # "tvy":F
    goto :goto_3

    .line 259
    :cond_6
    iget-object v8, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iput v7, v8, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastVelocity:F

    .line 261
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v7

    iput v7, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mLastTouchX:F

    .line 262
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    iput v7, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mLastTouchY:F

    .line 263
    .end local v4    # "movmentInDir":F
    .end local v5    # "change":F
    .end local v6    # "pos":F
    goto/16 :goto_6

    .line 266
    .end local v3    # "dy":F
    .end local v10    # "dx":F
    .end local v11    # "drag":F
    :pswitch_1
    iput-boolean v9, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragStarted:Z

    .line 267
    const/16 v3, 0x3e8

    invoke-interface {v1, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout$MotionTracker;->computeCurrentVelocity(I)V

    .line 268
    invoke-interface/range {p2 .. p2}, Landroidx/constraintlayout/motion/widget/MotionLayout$MotionTracker;->getXVelocity()F

    move-result v3

    .line 269
    .local v3, "tvx":F
    invoke-interface/range {p2 .. p2}, Landroidx/constraintlayout/motion/widget/MotionLayout$MotionTracker;->getYVelocity()F

    move-result v5

    .line 270
    .local v5, "tvy":F
    iget-object v10, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v10}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    move-result v10

    .line 274
    .local v10, "pos":F
    iget v12, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorId:I

    if-eq v12, v4, :cond_7

    .line 275
    iget-object v11, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v14, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorX:F

    iget v15, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorY:F

    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    move v13, v10

    move-object/from16 v16, v4

    invoke-virtual/range {v11 .. v16}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getAnchorDpDt(IFFF[F)V

    goto :goto_4

    .line 277
    :cond_7
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getWidth()I

    move-result v4

    iget-object v11, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v11}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getHeight()I

    move-result v11

    invoke-static {v4, v11}, Ljava/lang/Math;->min(II)I

    move-result v4

    int-to-float v4, v4

    .line 278
    .local v4, "minSize":F
    iget-object v11, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    iget v12, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionY:F

    mul-float/2addr v12, v4

    aput v12, v11, v8

    .line 279
    iget v12, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionX:F

    mul-float/2addr v12, v4

    aput v12, v11, v9

    .line 282
    .end local v4    # "minSize":F
    :goto_4
    iget v4, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionX:F

    iget-object v11, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    aget v9, v11, v9

    mul-float v12, v4, v9

    iget v13, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionY:F

    aget v8, v11, v8

    mul-float/2addr v13, v8

    add-float/2addr v12, v13

    .line 284
    .local v12, "movmentInDir":F
    cmpl-float v4, v4, v7

    if-eqz v4, :cond_8

    .line 285
    div-float v4, v3, v9

    .local v4, "velocity":F
    goto :goto_5

    .line 287
    .end local v4    # "velocity":F
    :cond_8
    div-float v4, v5, v8

    .line 295
    .restart local v4    # "velocity":F
    :goto_5
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v8

    if-nez v8, :cond_9

    .line 296
    const/high16 v8, 0x40400000    # 3.0f

    div-float v8, v4, v8

    add-float/2addr v10, v8

    .line 298
    :cond_9
    cmpl-float v8, v10, v7

    if-eqz v8, :cond_b

    cmpl-float v8, v10, v6

    if-eqz v8, :cond_b

    iget v8, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mOnTouchUp:I

    const/4 v9, 0x3

    if-eq v8, v9, :cond_b

    .line 299
    iget-object v9, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    float-to-double v13, v10

    const-wide/high16 v15, 0x3fe0000000000000L    # 0.5

    cmpg-double v11, v13, v15

    if-gez v11, :cond_a

    move v6, v7

    :cond_a
    invoke-virtual {v9, v8, v6, v4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->touchAnimateTo(IFF)V

    goto :goto_6

    .line 183
    .end local v3    # "tvx":F
    .end local v4    # "velocity":F
    .end local v5    # "tvy":F
    .end local v10    # "pos":F
    .end local v12    # "movmentInDir":F
    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    iput v3, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mLastTouchX:F

    .line 184
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    iput v3, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mLastTouchY:F

    .line 185
    iput-boolean v9, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragStarted:Z

    .line 186
    nop

    .line 303
    :cond_b
    :goto_6
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method scrollMove(FF)V
    .locals 11
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .line 356
    iget v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionX:F

    mul-float/2addr v0, p1

    iget v1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionY:F

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    .line 358
    .local v0, "drag":F
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    move-result v1

    .line 359
    .local v1, "pos":F
    iget-boolean v2, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragStarted:Z

    const/4 v8, 0x1

    if-nez v2, :cond_0

    .line 360
    iput-boolean v8, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragStarted:Z

    .line 361
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v2, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    .line 363
    :cond_0
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorId:I

    iget v5, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorX:F

    iget v6, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorY:F

    iget-object v7, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    move v4, v1

    invoke-virtual/range {v2 .. v7}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getAnchorDpDt(IFFF[F)V

    .line 364
    iget v2, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionX:F

    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    const/4 v4, 0x0

    aget v5, v3, v4

    mul-float/2addr v2, v5

    iget v5, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionY:F

    aget v3, v3, v8

    mul-float/2addr v5, v3

    add-float/2addr v2, v5

    .line 366
    .local v2, "movmentInDir":F
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-double v5, v3

    const-wide v9, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v3, v5, v9

    if-gez v3, :cond_1

    .line 367
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    const v5, 0x3c23d70a    # 0.01f

    aput v5, v3, v4

    .line 368
    aput v5, v3, v8

    .line 372
    :cond_1
    iget v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionX:F

    const/4 v5, 0x0

    cmpl-float v6, v3, v5

    if-eqz v6, :cond_2

    .line 373
    mul-float/2addr v3, p1

    iget-object v6, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    aget v4, v6, v4

    div-float/2addr v3, v4

    .local v3, "change":F
    goto :goto_0

    .line 375
    .end local v3    # "change":F
    :cond_2
    iget v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionY:F

    mul-float/2addr v3, p2

    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    aget v4, v4, v8

    div-float/2addr v3, v4

    .line 377
    .restart local v3    # "change":F
    :goto_0
    add-float v4, v1, v3

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v4, v6}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 379
    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    move-result v4

    cmpl-float v4, v1, v4

    if-eqz v4, :cond_3

    .line 380
    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v4, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    .line 387
    .end local v1    # "pos":F
    .end local v2    # "movmentInDir":F
    .end local v3    # "change":F
    :cond_3
    return-void
.end method

.method scrollUp(FF)V
    .locals 13
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .line 335
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragStarted:Z

    .line 337
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    move-result v1

    .line 338
    .local v1, "pos":F
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorId:I

    iget v5, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorX:F

    iget v6, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorY:F

    iget-object v7, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    move v4, v1

    invoke-virtual/range {v2 .. v7}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getAnchorDpDt(IFFF[F)V

    .line 339
    iget v2, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionX:F

    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    aget v4, v3, v0

    mul-float v5, v2, v4

    iget v6, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionY:F

    const/4 v7, 0x1

    aget v3, v3, v7

    mul-float v8, v6, v3

    add-float/2addr v5, v8

    .line 341
    .local v5, "movmentInDir":F
    const/4 v8, 0x0

    cmpl-float v9, v2, v8

    if-eqz v9, :cond_0

    .line 342
    mul-float/2addr v2, p1

    div-float/2addr v2, v4

    .local v2, "velocity":F
    goto :goto_0

    .line 344
    .end local v2    # "velocity":F
    :cond_0
    mul-float/2addr v6, p2

    div-float v2, v6, v3

    .line 346
    .restart local v2    # "velocity":F
    :goto_0
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_1

    .line 347
    const/high16 v3, 0x40400000    # 3.0f

    div-float v3, v2, v3

    add-float/2addr v1, v3

    .line 349
    :cond_1
    cmpl-float v3, v1, v8

    if-eqz v3, :cond_5

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v4, v1, v3

    if-eqz v4, :cond_2

    move v4, v7

    goto :goto_1

    :cond_2
    move v4, v0

    :goto_1
    iget v6, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mOnTouchUp:I

    const/4 v9, 0x3

    if-eq v6, v9, :cond_3

    move v0, v7

    :cond_3
    and-int/2addr v0, v4

    if-eqz v0, :cond_5

    .line 350
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    float-to-double v9, v1

    const-wide/high16 v11, 0x3fe0000000000000L    # 0.5

    cmpg-double v4, v9, v11

    if-gez v4, :cond_4

    goto :goto_2

    :cond_4
    move v8, v3

    :goto_2
    invoke-virtual {v0, v6, v8, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->touchAnimateTo(IFF)V

    .line 352
    :cond_5
    return-void
.end method

.method public setAnchorId(I)V
    .locals 0
    .param p1, "id"    # I

    .line 418
    iput p1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorId:I

    .line 419
    return-void
.end method

.method setDown(FF)V
    .locals 0
    .param p1, "lastTouchX"    # F
    .param p2, "lastTouchY"    # F

    .line 306
    iput p1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mLastTouchX:F

    .line 307
    iput p2, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mLastTouchY:F

    .line 308
    return-void
.end method

.method public setMaxAcceleration(F)V
    .locals 0
    .param p1, "acceleration"    # F

    .line 458
    iput p1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMaxAcceleration:F

    .line 459
    return-void
.end method

.method public setMaxVelocity(F)V
    .locals 0
    .param p1, "velocity"    # F

    .line 448
    iput p1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMaxVelocity:F

    .line 449
    return-void
.end method

.method public setRTL(Z)V
    .locals 8
    .param p1, "rtl"    # Z

    .line 106
    const/4 v0, 0x6

    const/4 v1, 0x3

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x5

    const/4 v5, 0x2

    if-eqz p1, :cond_0

    .line 107
    sget-object v6, Landroidx/constraintlayout/motion/widget/TouchResponse;->TOUCH_DIRECTION:[[F

    aget-object v1, v6, v1

    aput-object v1, v6, v2

    .line 108
    aget-object v1, v6, v5

    aput-object v1, v6, v4

    .line 109
    sget-object v1, Landroidx/constraintlayout/motion/widget/TouchResponse;->TOUCH_SIDES:[[F

    aget-object v2, v1, v5

    aput-object v2, v1, v4

    .line 110
    aget-object v2, v1, v3

    aput-object v2, v1, v0

    goto :goto_0

    .line 112
    :cond_0
    sget-object v6, Landroidx/constraintlayout/motion/widget/TouchResponse;->TOUCH_DIRECTION:[[F

    aget-object v7, v6, v5

    aput-object v7, v6, v2

    .line 113
    aget-object v1, v6, v1

    aput-object v1, v6, v4

    .line 114
    sget-object v1, Landroidx/constraintlayout/motion/widget/TouchResponse;->TOUCH_SIDES:[[F

    aget-object v2, v1, v3

    aput-object v2, v1, v4

    .line 115
    aget-object v2, v1, v5

    aput-object v2, v1, v0

    .line 117
    :goto_0
    sget-object v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->TOUCH_SIDES:[[F

    iget v1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorSide:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    aget v2, v0, v1

    iput v2, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorX:F

    .line 118
    aget v0, v0, v3

    iput v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorY:F

    .line 119
    sget-object v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->TOUCH_DIRECTION:[[F

    iget v2, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchSide:I

    aget-object v0, v0, v2

    aget v1, v0, v1

    iput v1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionX:F

    .line 120
    aget v0, v0, v3

    iput v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionY:F

    .line 121
    return-void
.end method

.method public setTouchAnchorLocation(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 437
    iput p1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorX:F

    .line 438
    iput p2, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorY:F

    .line 439
    return-void
.end method

.method setUpTouchEvent(FF)V
    .locals 1
    .param p1, "lastTouchX"    # F
    .param p2, "lastTouchY"    # F

    .line 164
    iput p1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mLastTouchX:F

    .line 165
    iput p2, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mLastTouchY:F

    .line 166
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragStarted:Z

    .line 167
    return-void
.end method

.method setupTouch()V
    .locals 3

    .line 390
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorId:I

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 391
    .local v0, "view":Landroid/view/View;
    if-nez v0, :cond_0

    .line 392
    const-string v1, "TouchResponse"

    const-string v2, " cannot find view to handle touch"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    :cond_0
    instance-of v1, v0, Landroidx/core/widget/NestedScrollView;

    if-eqz v1, :cond_1

    .line 395
    move-object v1, v0

    check-cast v1, Landroidx/core/widget/NestedScrollView;

    .line 396
    .local v1, "sv":Landroidx/core/widget/NestedScrollView;
    new-instance v2, Landroidx/constraintlayout/motion/widget/TouchResponse$1;

    invoke-direct {v2, p0}, Landroidx/constraintlayout/motion/widget/TouchResponse$1;-><init>(Landroidx/constraintlayout/motion/widget/TouchResponse;)V

    invoke-virtual {v1, v2}, Landroidx/core/widget/NestedScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 402
    new-instance v2, Landroidx/constraintlayout/motion/widget/TouchResponse$2;

    invoke-direct {v2, p0}, Landroidx/constraintlayout/motion/widget/TouchResponse$2;-><init>(Landroidx/constraintlayout/motion/widget/TouchResponse;)V

    invoke-virtual {v1, v2}, Landroidx/core/widget/NestedScrollView;->setOnScrollChangeListener(Landroidx/core/widget/NestedScrollView$OnScrollChangeListener;)V

    .line 410
    .end local v1    # "sv":Landroidx/core/widget/NestedScrollView;
    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 526
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " , "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
