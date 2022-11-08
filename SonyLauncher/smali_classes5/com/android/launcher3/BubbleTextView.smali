.class public Lcom/android/launcher3/BubbleTextView;
.super Landroid/widget/TextView;
.source "BubbleTextView.java"

# interfaces
.implements Lcom/android/launcher3/icons/IconCache$ItemInfoUpdateReceiver;
.implements Lcom/android/launcher3/views/IconLabelDotView;
.implements Lcom/android/launcher3/dragndrop/DraggableView;
.implements Lcom/android/launcher3/Reorderable;


# static fields
.field private static final DISPLAY_ALL_APPS:I = 0x1

.field private static final DISPLAY_FOLDER:I = 0x2

.field private static final DISPLAY_SEARCH_RESULT:I = 0x6

.field private static final DISPLAY_SEARCH_RESULT_SMALL:I = 0x7

.field protected static final DISPLAY_TASKBAR:I = 0x5

.field private static final DISPLAY_WORKSPACE:I = 0x0

.field private static final DOT_SCALE_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/android/launcher3/BubbleTextView;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAX_SEARCH_LOOP_COUNT:I = 0x14

.field private static final MIN_LETTER_SPACING:F = -0.05f

.field private static final STATE_PRESSED:[I

.field public static final TEXT_ALPHA_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/android/launcher3/BubbleTextView;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mActivity:Lcom/android/launcher3/views/ActivityContext;

.field private mBadgeColor:I

.field private mBadgeText:Ljava/lang/String;

.field private mCenterVertically:Z

.field private mDisableRelayout:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "launcher"
    .end annotation
.end field

.field protected final mDisplay:I

.field private mDotInfo:Lcom/android/launcher3/dot/DotInfo;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "launcher"
    .end annotation
.end field

.field protected mDotParams:Lcom/android/launcher3/icons/DotRenderer$DrawParams;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "launcher"
        deepExport = true
    .end annotation
.end field

.field private mDotRenderer:Lcom/android/launcher3/icons/DotRenderer;

.field private mDotScaleAnim:Landroid/animation/Animator;

.field private mEnableIconUpdateAnimation:Z

.field private mForceHideBadge:Z

.field private mForceHideDot:Z

.field private mHideBadge:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "launcher"
    .end annotation
.end field

.field private mIcon:Lcom/android/launcher3/icons/FastBitmapDrawable;

.field private mIconLoadRequest:Lcom/android/launcher3/icons/cache/HandlerRunnable;

.field private final mIconSize:I

.field private mIgnorePressedStateChange:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "launcher"
    .end annotation
.end field

.field private mIsIconVisible:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "launcher"
    .end annotation
.end field

.field private final mIsRtl:Z

.field private final mLayoutHorizontal:Z

.field private final mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

.field private mScaleForReorderBounce:F

.field private mSetToInvisibleOnDragEnd:Z

.field private mSonyBadgeInfo:Lcom/sonymobile/launcher/badge/SonyBadgeInfo;

.field private mSonyBadgeRenderer:Lcom/sonymobile/launcher/badge/SonyBadgeRenderer;

.field private mStayPressed:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "launcher"
    .end annotation
.end field

.field private mTempIconBounds:Landroid/graphics/Rect;

.field private mTextAlpha:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "launcher"
    .end annotation
.end field

.field private mTextColor:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "launcher"
    .end annotation
.end field

.field private mTextColorStateList:Landroid/content/res/ColorStateList;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "launcher"
    .end annotation
.end field

.field private final mTranslationForMoveFromCenterAnimation:Landroid/graphics/PointF;

.field private final mTranslationForReorderBounce:Landroid/graphics/PointF;

.field private final mTranslationForReorderPreview:Landroid/graphics/PointF;

.field private mTranslationXForTaskbarAlignmentAnimation:F


# direct methods
.method static bridge synthetic -$$Nest$fgetmSonyBadgeInfo(Lcom/android/launcher3/BubbleTextView;)Lcom/sonymobile/launcher/badge/SonyBadgeInfo;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/BubbleTextView;->mSonyBadgeInfo:Lcom/sonymobile/launcher/badge/SonyBadgeInfo;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTextAlpha(Lcom/android/launcher3/BubbleTextView;)F
    .locals 0

    iget p0, p0, Lcom/android/launcher3/BubbleTextView;->mTextAlpha:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmBadgeText(Lcom/android/launcher3/BubbleTextView;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/BubbleTextView;->mBadgeText:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmDotScaleAnim(Lcom/android/launcher3/BubbleTextView;Landroid/animation/Animator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/BubbleTextView;->mDotScaleAnim:Landroid/animation/Animator;

    return-void
.end method

.method static bridge synthetic -$$Nest$msetTextAlpha(Lcom/android/launcher3/BubbleTextView;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/BubbleTextView;->setTextAlpha(F)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 108
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a7

    aput v2, v0, v1

    sput-object v0, Lcom/android/launcher3/BubbleTextView;->STATE_PRESSED:[I

    .line 119
    new-instance v0, Lcom/android/launcher3/BubbleTextView$1;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-string v2, "dotScale"

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/BubbleTextView$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher3/BubbleTextView;->DOT_SCALE_PROPERTY:Landroid/util/Property;

    .line 136
    new-instance v0, Lcom/android/launcher3/BubbleTextView$2;

    const-class v1, Ljava/lang/Float;

    const-string v2, "textAlpha"

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/BubbleTextView$2;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher3/BubbleTextView;->TEXT_ALPHA_PROPERTY:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 200
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher3/BubbleTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 201
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 204
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/BubbleTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 205
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 208
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 110
    new-instance v1, Landroid/graphics/PointF;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v1, v0, Lcom/android/launcher3/BubbleTextView;->mTranslationForReorderBounce:Landroid/graphics/PointF;

    .line 111
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, v2, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v1, v0, Lcom/android/launcher3/BubbleTextView;->mTranslationForReorderPreview:Landroid/graphics/PointF;

    .line 113
    iput v2, v0, Lcom/android/launcher3/BubbleTextView;->mTranslationXForTaskbarAlignmentAnimation:F

    .line 115
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, v2, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v1, v0, Lcom/android/launcher3/BubbleTextView;->mTranslationForMoveFromCenterAnimation:Landroid/graphics/PointF;

    .line 117
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Lcom/android/launcher3/BubbleTextView;->mScaleForReorderBounce:F

    .line 161
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/launcher3/BubbleTextView;->mHideBadge:Z

    .line 163
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/android/launcher3/BubbleTextView;->mIsIconVisible:Z

    .line 169
    iput v1, v0, Lcom/android/launcher3/BubbleTextView;->mTextAlpha:F

    .line 182
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, v0, Lcom/android/launcher3/BubbleTextView;->mTempIconBounds:Landroid/graphics/Rect;

    .line 190
    iput-boolean v2, v0, Lcom/android/launcher3/BubbleTextView;->mDisableRelayout:Z

    .line 195
    iput-boolean v2, v0, Lcom/android/launcher3/BubbleTextView;->mEnableIconUpdateAnimation:Z

    .line 209
    invoke-static/range {p1 .. p1}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/views/ActivityContext;

    iput-object v4, v0, Lcom/android/launcher3/BubbleTextView;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    .line 211
    sget-object v5, Lcom/android/launcher3/R$styleable;->BubbleTextView:[I

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move/from16 v8, p3

    invoke-virtual {v6, v7, v5, v8, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 213
    .local v5, "a":Landroid/content/res/TypedArray;
    sget v9, Lcom/android/launcher3/R$styleable;->BubbleTextView_layoutHorizontal:I

    invoke-virtual {v5, v9, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    iput-boolean v9, v0, Lcom/android/launcher3/BubbleTextView;->mLayoutHorizontal:Z

    .line 214
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/BubbleTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v9

    if-ne v9, v3, :cond_0

    move v9, v3

    goto :goto_0

    :cond_0
    move v9, v2

    :goto_0
    iput-boolean v9, v0, Lcom/android/launcher3/BubbleTextView;->mIsRtl:Z

    .line 216
    invoke-interface {v4}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v9

    .line 218
    .local v9, "grid":Lcom/android/launcher3/DeviceProfile;
    sget v10, Lcom/android/launcher3/R$styleable;->BubbleTextView_iconDisplay:I

    invoke-virtual {v5, v10, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v10

    iput v10, v0, Lcom/android/launcher3/BubbleTextView;->mDisplay:I

    .line 220
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/BubbleTextView;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v11

    iget v11, v11, Landroid/content/res/Configuration;->fontScale:F

    .line 221
    .local v11, "fontScale":F
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/BubbleTextView;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v12

    iget v12, v12, Landroid/content/res/Configuration;->densityDpi:I

    .line 222
    .local v12, "densityDpi":I
    float-to-double v13, v11

    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    cmpg-double v13, v13, v15

    if-gtz v13, :cond_1

    sget v13, Landroid/util/DisplayMetrics;->DENSITY_DEVICE_STABLE:I

    if-gt v12, v13, :cond_1

    iget-boolean v13, v9, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    if-nez v13, :cond_1

    iget-boolean v13, v9, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    if-nez v13, :cond_1

    move v13, v3

    goto :goto_1

    :cond_1
    move v13, v2

    .line 226
    .local v13, "isMaxTwolinesEnable":Z
    :goto_1
    const/4 v14, 0x2

    if-nez v10, :cond_3

    .line 227
    if-eqz v13, :cond_2

    .line 228
    invoke-virtual {v0, v14}, Lcom/android/launcher3/BubbleTextView;->setLines(I)V

    .line 230
    :cond_2
    iget v3, v9, Lcom/android/launcher3/DeviceProfile;->iconTextSizePx:I

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/BubbleTextView;->setTextSize(IF)V

    .line 231
    iget v3, v9, Lcom/android/launcher3/DeviceProfile;->iconDrawablePaddingPx:I

    invoke-virtual {v0, v3}, Lcom/android/launcher3/BubbleTextView;->setCompoundDrawablePadding(I)V

    .line 232
    iget v3, v9, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    .line 233
    .local v3, "defaultIconSize":I
    iget-boolean v10, v9, Lcom/android/launcher3/DeviceProfile;->isScalableGrid:Z

    invoke-virtual {v0, v10}, Lcom/android/launcher3/BubbleTextView;->setCenterVertically(Z)V

    goto :goto_2

    .line 234
    .end local v3    # "defaultIconSize":I
    :cond_3
    if-ne v10, v3, :cond_5

    .line 235
    if-eqz v13, :cond_4

    .line 236
    invoke-virtual {v0, v14}, Lcom/android/launcher3/BubbleTextView;->setLines(I)V

    .line 238
    :cond_4
    iget v3, v9, Lcom/android/launcher3/DeviceProfile;->allAppsIconTextSizePx:F

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/BubbleTextView;->setTextSize(IF)V

    .line 239
    iget v3, v9, Lcom/android/launcher3/DeviceProfile;->allAppsIconDrawablePaddingPx:I

    invoke-virtual {v0, v3}, Lcom/android/launcher3/BubbleTextView;->setCompoundDrawablePadding(I)V

    .line 240
    iget v3, v9, Lcom/android/launcher3/DeviceProfile;->allAppsIconSizePx:I

    .restart local v3    # "defaultIconSize":I
    goto :goto_2

    .line 241
    .end local v3    # "defaultIconSize":I
    :cond_5
    if-ne v10, v14, :cond_7

    .line 242
    if-eqz v13, :cond_6

    .line 243
    invoke-virtual {v0, v14}, Lcom/android/launcher3/BubbleTextView;->setLines(I)V

    .line 245
    :cond_6
    iget v3, v9, Lcom/android/launcher3/DeviceProfile;->folderChildTextSizePx:I

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/BubbleTextView;->setTextSize(IF)V

    .line 246
    iget v3, v9, Lcom/android/launcher3/DeviceProfile;->folderChildDrawablePaddingPx:I

    invoke-virtual {v0, v3}, Lcom/android/launcher3/BubbleTextView;->setCompoundDrawablePadding(I)V

    .line 247
    iget v3, v9, Lcom/android/launcher3/DeviceProfile;->folderChildIconSizePx:I

    .restart local v3    # "defaultIconSize":I
    goto :goto_2

    .line 248
    .end local v3    # "defaultIconSize":I
    :cond_7
    const/4 v3, 0x6

    if-ne v10, v3, :cond_8

    .line 249
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/BubbleTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v10, Lcom/android/launcher3/R$dimen;->search_row_icon_size:I

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .restart local v3    # "defaultIconSize":I
    goto :goto_2

    .line 250
    .end local v3    # "defaultIconSize":I
    :cond_8
    const/4 v3, 0x7

    if-ne v10, v3, :cond_9

    .line 251
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/BubbleTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v10, Lcom/android/launcher3/R$dimen;->search_row_small_icon_size:I

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .restart local v3    # "defaultIconSize":I
    goto :goto_2

    .line 253
    .end local v3    # "defaultIconSize":I
    :cond_9
    const/4 v3, 0x5

    if-ne v10, v3, :cond_a

    .line 254
    iget v3, v9, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    .restart local v3    # "defaultIconSize":I
    goto :goto_2

    .line 257
    .end local v3    # "defaultIconSize":I
    :cond_a
    iget v3, v9, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    .line 260
    .restart local v3    # "defaultIconSize":I
    :goto_2
    sget v10, Lcom/android/launcher3/R$styleable;->BubbleTextView_centerVertically:I

    invoke-virtual {v5, v10, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/launcher3/BubbleTextView;->mCenterVertically:Z

    .line 262
    sget v2, Lcom/android/launcher3/R$styleable;->BubbleTextView_iconSizeOverride:I

    invoke-virtual {v5, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, v0, Lcom/android/launcher3/BubbleTextView;->mIconSize:I

    .line 264
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 266
    new-instance v2, Lcom/android/launcher3/CheckLongPressHelper;

    invoke-direct {v2, v0}, Lcom/android/launcher3/CheckLongPressHelper;-><init>(Landroid/view/View;)V

    iput-object v2, v0, Lcom/android/launcher3/BubbleTextView;->mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

    .line 268
    new-instance v2, Lcom/android/launcher3/icons/DotRenderer$DrawParams;

    invoke-direct {v2}, Lcom/android/launcher3/icons/DotRenderer$DrawParams;-><init>()V

    iput-object v2, v0, Lcom/android/launcher3/BubbleTextView;->mDotParams:Lcom/android/launcher3/icons/DotRenderer$DrawParams;

    .line 270
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/BubbleTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 271
    invoke-interface {v4}, Lcom/android/launcher3/views/ActivityContext;->getAccessibilityDelegate()Landroid/view/View$AccessibilityDelegate;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/launcher3/BubbleTextView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 272
    invoke-direct {v0, v1}, Lcom/android/launcher3/BubbleTextView;->setTextAlpha(F)V

    .line 273
    return-void
.end method

.method private adjustScale(ZZZZF)V
    .locals 2
    .param p1, "wasDotted"    # Z
    .param p2, "isDotted"    # Z
    .param p3, "wasSonyBadged"    # Z
    .param p4, "isSonyBadged"    # Z
    .param p5, "newScale"    # F

    .line 936
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p5, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_2

    .line 937
    if-eqz p1, :cond_0

    if-nez p3, :cond_0

    if-nez p4, :cond_1

    :cond_0
    if-eqz p3, :cond_2

    if-eqz p2, :cond_2

    if-nez p4, :cond_2

    .line 939
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mDotParams:Lcom/android/launcher3/icons/DotRenderer$DrawParams;

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/launcher3/icons/DotRenderer$DrawParams;->scale:F

    .line 942
    :cond_2
    return-void
.end method

.method private varargs animateDotScale([F)V
    .locals 2
    .param p1, "dotScales"    # [F

    .line 314
    invoke-direct {p0}, Lcom/android/launcher3/BubbleTextView;->cancelDotScaleAnim()V

    .line 315
    sget-object v0, Lcom/android/launcher3/BubbleTextView;->DOT_SCALE_PROPERTY:Landroid/util/Property;

    invoke-static {p0, v0, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mDotScaleAnim:Landroid/animation/Animator;

    .line 316
    new-instance v1, Lcom/android/launcher3/BubbleTextView$3;

    invoke-direct {v1, p0}, Lcom/android/launcher3/BubbleTextView$3;-><init>(Lcom/android/launcher3/BubbleTextView;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 322
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mDotScaleAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 323
    return-void
.end method

.method private applyLabel(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)V
    .locals 5
    .param p1, "info"    # Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    .line 432
    iget-object v0, p1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->title:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/BubbleTextView;->setText(Ljava/lang/CharSequence;)V

    .line 433
    iget-object v0, p1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->contentDescription:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 434
    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->isDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 435
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/launcher3/R$string;->disabled_app_label:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->contentDescription:Ljava/lang/CharSequence;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 436
    :cond_0
    iget-object v0, p1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->contentDescription:Ljava/lang/CharSequence;

    .line 434
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/launcher3/BubbleTextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 438
    :cond_1
    return-void
.end method

.method private cancelDotScaleAnim()V
    .locals 1

    .line 308
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mDotScaleAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 309
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 311
    :cond_0
    return-void
.end method

.method private checkForEllipsis()V
    .locals 5

    .line 542
    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_ICON_LABEL_AUTO_SCALING:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 543
    return-void

    .line 545
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getCompoundPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getCompoundPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    .line 546
    .local v0, "width":F
    const/4 v1, 0x0

    cmpg-float v2, v0, v1

    if-gtz v2, :cond_1

    .line 547
    return-void

    .line 549
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/launcher3/BubbleTextView;->setLetterSpacing(F)V

    .line 551
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 552
    .local v2, "text":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    .line 553
    .local v3, "paint":Landroid/text/TextPaint;
    invoke-virtual {v3, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v4

    cmpg-float v4, v4, v0

    if-gez v4, :cond_2

    .line 554
    return-void

    .line 557
    :cond_2
    const v4, -0x42b33333    # -0.05f

    invoke-direct {p0, v3, v2, v0, v4}, Lcom/android/launcher3/BubbleTextView;->findBestSpacingValue(Landroid/text/TextPaint;Ljava/lang/String;FF)F

    move-result v4

    .line 559
    .local v4, "spacing":F
    invoke-virtual {v3, v1}, Landroid/text/TextPaint;->setLetterSpacing(F)V

    .line 560
    invoke-virtual {p0, v4}, Lcom/android/launcher3/BubbleTextView;->setLetterSpacing(F)V

    .line 561
    return-void
.end method

.method private findBestSpacingValue(Landroid/text/TextPaint;Ljava/lang/String;FF)F
    .locals 5
    .param p1, "paint"    # Landroid/text/TextPaint;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "allowedWidthPx"    # F
    .param p4, "minSpacingEm"    # F

    .line 575
    invoke-virtual {p1, p4}, Landroid/text/TextPaint;->setLetterSpacing(F)V

    .line 576
    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    cmpl-float v0, v0, p3

    if-lez v0, :cond_0

    .line 578
    return p4

    .line 581
    :cond_0
    const/4 v0, 0x0

    .line 582
    .local v0, "lowLimit":F
    move v1, p4

    .line 584
    .local v1, "highLimit":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v3, 0x14

    if-ge v2, v3, :cond_2

    .line 585
    add-float v3, v0, v1

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    .line 586
    .local v3, "value":F
    invoke-virtual {p1, v3}, Landroid/text/TextPaint;->setLetterSpacing(F)V

    .line 587
    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v4

    cmpg-float v4, v4, p3

    if-gez v4, :cond_1

    .line 588
    move v1, v3

    goto :goto_1

    .line 590
    :cond_1
    move v0, v3

    .line 584
    .end local v3    # "value":F
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 595
    .end local v2    # "i":I
    :cond_2
    return v1
.end method

.method private getAppLabelPluralString(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .param p1, "appName"    # Ljava/lang/String;
    .param p2, "notificationCount"    # I

    .line 1176
    new-instance v0, Landroid/icu/text/MessageFormat;

    .line 1177
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/launcher3/R$string;->dotted_app_label:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1178
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/icu/text/MessageFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1179
    .local v0, "icuCountFormat":Landroid/icu/text/MessageFormat;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1180
    .local v1, "args":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "app_name"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1181
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "count"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1182
    invoke-virtual {v0, v1}, Landroid/icu/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getModifiedColor()I
    .locals 3

    .line 754
    iget v0, p0, Lcom/android/launcher3/BubbleTextView;->mTextAlpha:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 756
    const/4 v0, 0x0

    return v0

    .line 758
    :cond_0
    iget v0, p0, Lcom/android/launcher3/BubbleTextView;->mTextColor:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/launcher3/BubbleTextView;->mTextAlpha:F

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/launcher3/icons/GraphicsUtils;->setColorAlphaBound(II)I

    move-result v0

    return v0
.end method

.method private hasBadge()Z
    .locals 1

    .line 671
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mSonyBadgeInfo:Lcom/sonymobile/launcher/badge/SonyBadgeInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private hasDot()Z
    .locals 1

    .line 664
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mDotInfo:Lcom/android/launcher3/dot/DotInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isBadgeStateChanged(ZZZZ)Z
    .locals 1
    .param p1, "wasDotted"    # Z
    .param p2, "isDotted"    # Z
    .param p3, "wasSonyBadged"    # Z
    .param p4, "isSonyBadged"    # Z

    .line 960
    if-nez p1, :cond_0

    if-nez p3, :cond_0

    if-nez p2, :cond_0

    if-eqz p4, :cond_2

    :cond_0
    if-eqz p1, :cond_1

    if-nez p3, :cond_1

    if-eqz p2, :cond_1

    if-eqz p4, :cond_2

    :cond_1
    if-eqz p3, :cond_3

    if-nez p4, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method static synthetic lambda$prepareDrawDragView$0()V
    .locals 0

    .line 1158
    return-void
.end method

.method private resetIconScale()V
    .locals 1

    .line 1162
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mIcon:Lcom/android/launcher3/icons/FastBitmapDrawable;

    if-eqz v0, :cond_0

    .line 1163
    invoke-virtual {v0}, Lcom/android/launcher3/icons/FastBitmapDrawable;->resetScale()V

    .line 1165
    :cond_0
    return-void
.end method

.method private setDownloadStateContentDescription(Lcom/android/launcher3/model/data/ItemInfoWithIcon;I)V
    .locals 7
    .param p1, "info"    # Lcom/android/launcher3/model/data/ItemInfoWithIcon;
    .param p2, "progressLevel"    # I

    .line 909
    iget v0, p1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->runtimeStatusFlags:I

    and-int/lit16 v0, v0, 0xc00

    if-eqz v0, :cond_1

    .line 911
    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v0

    int-to-double v1, p2

    const-wide v3, 0x3f847ae147ae147bL    # 0.01

    mul-double/2addr v1, v3

    .line 912
    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    .line 913
    .local v0, "percentageString":Ljava/lang/String;
    iget v1, p1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->runtimeStatusFlags:I

    and-int/lit16 v1, v1, 0x400

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eqz v1, :cond_0

    .line 914
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v5, Lcom/android/launcher3/R$string;->app_installing_title:I

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v6, p1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->title:Ljava/lang/CharSequence;

    aput-object v6, v4, v3

    aput-object v0, v4, v2

    .line 915
    invoke-virtual {v1, v5, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 914
    invoke-virtual {p0, v1}, Lcom/android/launcher3/BubbleTextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 917
    :cond_0
    iget v1, p1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->runtimeStatusFlags:I

    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_1

    .line 919
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v5, Lcom/android/launcher3/R$string;->app_downloading_title:I

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v6, p1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->title:Ljava/lang/CharSequence;

    aput-object v6, v4, v3

    aput-object v0, v4, v2

    .line 920
    invoke-virtual {v1, v5, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 919
    invoke-virtual {p0, v1}, Lcom/android/launcher3/BubbleTextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 924
    .end local v0    # "percentageString":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void
.end method

.method private setTextAlpha(F)V
    .locals 1
    .param p1, "alpha"    # F

    .line 745
    iput p1, p0, Lcom/android/launcher3/BubbleTextView;->mTextAlpha:F

    .line 746
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mTextColorStateList:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    .line 747
    invoke-virtual {p0, v0}, Lcom/android/launcher3/BubbleTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 749
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/BubbleTextView;->getModifiedColor()I

    move-result v0

    invoke-super {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 751
    :goto_0
    return-void
.end method

.method private updateIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "newIcon"    # Landroid/graphics/drawable/Drawable;

    .line 1168
    iget-boolean v0, p0, Lcom/android/launcher3/BubbleTextView;->mLayoutHorizontal:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1169
    invoke-virtual {p0, p1, v1, v1, v1}, Lcom/android/launcher3/BubbleTextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1171
    :cond_0
    invoke-virtual {p0, v1, p1, v1, v1}, Lcom/android/launcher3/BubbleTextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1173
    :goto_0
    return-void
.end method

.method private updateProgressBarUi(Z)V
    .locals 1
    .param p1, "maybePerformFinishedAnimation"    # Z

    .line 798
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->applyProgressLevel()Lcom/android/launcher3/graphics/PreloadIconDrawable;

    move-result-object v0

    .line 799
    .local v0, "preloadDrawable":Lcom/android/launcher3/graphics/PreloadIconDrawable;
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 800
    invoke-virtual {v0}, Lcom/android/launcher3/graphics/PreloadIconDrawable;->maybePerformFinishedAnimation()V

    .line 802
    :cond_0
    return-void
.end method

.method private updateTranslation()V
    .locals 2

    .line 1076
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mTranslationForReorderBounce:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/android/launcher3/BubbleTextView;->mTranslationForReorderPreview:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/launcher3/BubbleTextView;->mTranslationForMoveFromCenterAnimation:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/android/launcher3/BubbleTextView;->mTranslationXForTaskbarAlignmentAnimation:F

    add-float/2addr v0, v1

    invoke-super {p0, v0}, Landroid/widget/TextView;->setTranslationX(F)V

    .line 1079
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mTranslationForReorderBounce:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget-object v1, p0, Lcom/android/launcher3/BubbleTextView;->mTranslationForReorderPreview:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/launcher3/BubbleTextView;->mTranslationForMoveFromCenterAnimation:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    add-float/2addr v0, v1

    invoke-super {p0, v0}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 1081
    return-void
.end method


# virtual methods
.method protected applyCompoundDrawables(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 993
    if-nez p1, :cond_0

    .line 995
    return-void

    .line 1000
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mIcon:Lcom/android/launcher3/icons/FastBitmapDrawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/launcher3/BubbleTextView;->mDisableRelayout:Z

    .line 1002
    iget v0, p0, Lcom/android/launcher3/BubbleTextView;->mIconSize:I

    invoke-virtual {p1, v1, v1, v0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1004
    invoke-direct {p0, p1}, Lcom/android/launcher3/BubbleTextView;->updateIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1007
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mIcon:Lcom/android/launcher3/icons/FastBitmapDrawable;

    if-eqz v0, :cond_2

    instance-of v0, v0, Lcom/android/launcher3/icons/PlaceHolderIconDrawable;

    if-eqz v0, :cond_2

    .line 1009
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->iconUpdateAnimationEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1010
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mIcon:Lcom/android/launcher3/icons/FastBitmapDrawable;

    check-cast v0, Lcom/android/launcher3/icons/PlaceHolderIconDrawable;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/icons/PlaceHolderIconDrawable;->animateIconUpdate(Landroid/graphics/drawable/Drawable;)V

    .line 1013
    :cond_2
    iput-boolean v1, p0, Lcom/android/launcher3/BubbleTextView;->mDisableRelayout:Z

    .line 1014
    return-void
.end method

.method public applyDotState(Lcom/android/launcher3/model/data/ItemInfo;Z)V
    .locals 13
    .param p1, "itemInfo"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p2, "animate"    # Z

    .line 858
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mIcon:Lcom/android/launcher3/icons/FastBitmapDrawable;

    instance-of v0, v0, Lcom/android/launcher3/icons/FastBitmapDrawable;

    if-eqz v0, :cond_d

    .line 859
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mDotInfo:Lcom/android/launcher3/dot/DotInfo;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 860
    .local v0, "wasDotted":Z
    :goto_0
    iget-object v3, p0, Lcom/android/launcher3/BubbleTextView;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v3, p1}, Lcom/android/launcher3/views/ActivityContext;->getDotInfoForItem(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/dot/DotInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher3/BubbleTextView;->mDotInfo:Lcom/android/launcher3/dot/DotInfo;

    .line 861
    if-eqz v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    move v9, v3

    .line 863
    .local v9, "isDotted":Z
    iget v3, p0, Lcom/android/launcher3/BubbleTextView;->mDisplay:I

    if-ne v3, v2, :cond_2

    .line 864
    iget-object v3, p0, Lcom/android/launcher3/BubbleTextView;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v3}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v3

    iget-object v3, v3, Lcom/android/launcher3/DeviceProfile;->mDotRendererAllApps:Lcom/android/launcher3/icons/DotRenderer;

    iput-object v3, p0, Lcom/android/launcher3/BubbleTextView;->mDotRenderer:Lcom/android/launcher3/icons/DotRenderer;

    goto :goto_2

    .line 866
    :cond_2
    iget-object v3, p0, Lcom/android/launcher3/BubbleTextView;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v3}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v3

    iget-object v3, v3, Lcom/android/launcher3/DeviceProfile;->mDotRendererWorkSpace:Lcom/android/launcher3/icons/DotRenderer;

    iput-object v3, p0, Lcom/android/launcher3/BubbleTextView;->mDotRenderer:Lcom/android/launcher3/icons/DotRenderer;

    .line 868
    :goto_2
    iget-object v3, p0, Lcom/android/launcher3/BubbleTextView;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v3}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v3

    iget-object v3, v3, Lcom/android/launcher3/DeviceProfile;->mSonyBadgeRenderer:Lcom/sonymobile/launcher/badge/SonyBadgeRenderer;

    iput-object v3, p0, Lcom/android/launcher3/BubbleTextView;->mSonyBadgeRenderer:Lcom/sonymobile/launcher/badge/SonyBadgeRenderer;

    .line 870
    iget-object v3, p0, Lcom/android/launcher3/BubbleTextView;->mSonyBadgeInfo:Lcom/sonymobile/launcher/badge/SonyBadgeInfo;

    if-eqz v3, :cond_3

    move v3, v2

    goto :goto_3

    :cond_3
    move v3, v1

    :goto_3
    move v10, v3

    .line 871
    .local v10, "wasSonyBadged":Z
    iget-object v3, p0, Lcom/android/launcher3/BubbleTextView;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v3, p1}, Lcom/android/launcher3/views/ActivityContext;->getSonyBadgeInfoForItem(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/sonymobile/launcher/badge/SonyBadgeInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher3/BubbleTextView;->mSonyBadgeInfo:Lcom/sonymobile/launcher/badge/SonyBadgeInfo;

    .line 872
    if-eqz v3, :cond_4

    move v3, v2

    goto :goto_4

    :cond_4
    move v3, v1

    :goto_4
    move v11, v3

    .line 873
    .local v11, "isSonyBadged":Z
    if-nez v9, :cond_6

    if-eqz v11, :cond_5

    goto :goto_5

    :cond_5
    const/4 v3, 0x0

    goto :goto_6

    :cond_6
    :goto_5
    const/high16 v3, 0x3f800000    # 1.0f

    :goto_6
    move v12, v3

    .line 874
    .local v12, "newDotScale":F
    move-object v3, p0

    move v4, v0

    move v5, v9

    move v6, v10

    move v7, v11

    move v8, v12

    invoke-direct/range {v3 .. v8}, Lcom/android/launcher3/BubbleTextView;->adjustScale(ZZZZF)V

    .line 876
    iget-object v3, p0, Lcom/android/launcher3/BubbleTextView;->mSonyBadgeInfo:Lcom/sonymobile/launcher/badge/SonyBadgeInfo;

    if-eqz v3, :cond_7

    .line 877
    invoke-virtual {v3}, Lcom/sonymobile/launcher/badge/SonyBadgeInfo;->getTotalCount()I

    move-result v3

    .line 878
    .local v3, "badgeCount":I
    nop

    .line 879
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 878
    invoke-static {v4, v3}, Lcom/sonymobile/launcher/badge/SonyBadgeManager;->getBadgeTextFromCountLocalized(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher3/BubbleTextView;->mBadgeText:Ljava/lang/String;

    .line 882
    .end local v3    # "badgeCount":I
    :cond_7
    if-nez v0, :cond_8

    if-nez v9, :cond_8

    if-nez v10, :cond_8

    if-eqz v11, :cond_a

    .line 884
    :cond_8
    if-eqz p2, :cond_9

    invoke-direct {p0, v0, v9, v10, v11}, Lcom/android/launcher3/BubbleTextView;->isBadgeStateChanged(ZZZZ)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 885
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->isShown()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 886
    new-array v3, v2, [F

    aput v12, v3, v1

    invoke-direct {p0, v3}, Lcom/android/launcher3/BubbleTextView;->animateDotScale([F)V

    goto :goto_7

    .line 888
    :cond_9
    invoke-direct {p0}, Lcom/android/launcher3/BubbleTextView;->cancelDotScaleAnim()V

    .line 889
    iget-object v3, p0, Lcom/android/launcher3/BubbleTextView;->mDotParams:Lcom/android/launcher3/icons/DotRenderer$DrawParams;

    iput v12, v3, Lcom/android/launcher3/icons/DotRenderer$DrawParams;->scale:F

    .line 890
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->invalidate()V

    .line 893
    :cond_a
    :goto_7
    iget-object v3, p1, Lcom/android/launcher3/model/data/ItemInfo;->contentDescription:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 894
    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->isDisabled()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 895
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/android/launcher3/R$string;->disabled_app_label:I

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v5, p1, Lcom/android/launcher3/model/data/ItemInfo;->contentDescription:Ljava/lang/CharSequence;

    aput-object v5, v2, v1

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/BubbleTextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_8

    .line 897
    :cond_b
    invoke-direct {p0}, Lcom/android/launcher3/BubbleTextView;->hasDot()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 898
    iget-object v1, p0, Lcom/android/launcher3/BubbleTextView;->mDotInfo:Lcom/android/launcher3/dot/DotInfo;

    invoke-virtual {v1}, Lcom/android/launcher3/dot/DotInfo;->getNotificationCount()I

    move-result v1

    .line 899
    .local v1, "count":I
    iget-object v2, p1, Lcom/android/launcher3/model/data/ItemInfo;->contentDescription:Ljava/lang/CharSequence;

    .line 900
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/BubbleTextView;->getAppLabelPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 899
    invoke-virtual {p0, v2}, Lcom/android/launcher3/BubbleTextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 901
    .end local v1    # "count":I
    goto :goto_8

    .line 902
    :cond_c
    iget-object v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->contentDescription:Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Lcom/android/launcher3/BubbleTextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 906
    .end local v0    # "wasDotted":Z
    .end local v9    # "isDotted":Z
    .end local v10    # "wasSonyBadged":Z
    .end local v11    # "isSonyBadged":Z
    .end local v12    # "newDotScale":F
    :cond_d
    :goto_8
    return-void
.end method

.method public applyFromApplicationInfo(Lcom/android/launcher3/model/data/AppInfo;)V
    .locals 1
    .param p1, "info"    # Lcom/android/launcher3/model/data/AppInfo;

    .line 379
    invoke-virtual {p0, p1}, Lcom/android/launcher3/BubbleTextView;->applyIconAndLabel(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)V

    .line 382
    invoke-virtual {p0, p1}, Lcom/android/launcher3/BubbleTextView;->setItemInfo(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)V

    .line 386
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->verifyHighRes()V

    .line 388
    iget v0, p1, Lcom/android/launcher3/model/data/AppInfo;->runtimeStatusFlags:I

    and-int/lit16 v0, v0, 0xc00

    if-eqz v0, :cond_0

    .line 389
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->applyProgressLevel()Lcom/android/launcher3/graphics/PreloadIconDrawable;

    .line 391
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/BubbleTextView;->applyDotState(Lcom/android/launcher3/model/data/ItemInfo;Z)V

    .line 392
    invoke-virtual {p1}, Lcom/android/launcher3/model/data/AppInfo;->getProgressLevel()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/BubbleTextView;->setDownloadStateContentDescription(Lcom/android/launcher3/model/data/ItemInfoWithIcon;I)V

    .line 393
    return-void
.end method

.method public applyFromItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)V
    .locals 1
    .param p1, "info"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 326
    instance-of v0, p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz v0, :cond_0

    .line 327
    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/BubbleTextView;->applyFromWorkspaceItem(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    goto :goto_0

    .line 328
    :cond_0
    instance-of v0, p1, Lcom/android/launcher3/model/data/AppInfo;

    if-eqz v0, :cond_1

    .line 329
    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/model/data/AppInfo;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/BubbleTextView;->applyFromApplicationInfo(Lcom/android/launcher3/model/data/AppInfo;)V

    .line 331
    :cond_1
    :goto_0
    return-void
.end method

.method public applyFromItemInfoWithIcon(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)V
    .locals 1
    .param p1, "info"    # Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    .line 400
    invoke-virtual {p0, p1}, Lcom/android/launcher3/BubbleTextView;->applyIconAndLabel(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)V

    .line 402
    invoke-virtual {p0, p1}, Lcom/android/launcher3/BubbleTextView;->setItemInfo(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)V

    .line 405
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->verifyHighRes()V

    .line 407
    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->getProgressLevel()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/BubbleTextView;->setDownloadStateContentDescription(Lcom/android/launcher3/model/data/ItemInfoWithIcon;I)V

    .line 408
    return-void
.end method

.method public applyFromWorkspaceItem(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V
    .locals 1
    .param p1, "info"    # Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    .line 335
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/android/launcher3/BubbleTextView;->applyFromWorkspaceItem(Lcom/android/launcher3/model/data/WorkspaceItemInfo;ZI)V

    .line 336
    return-void
.end method

.method public applyFromWorkspaceItem(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Z)V
    .locals 1
    .param p1, "info"    # Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    .param p2, "promiseStateChanged"    # Z

    .line 370
    invoke-virtual {p0, p1}, Lcom/android/launcher3/BubbleTextView;->applyIconAndLabel(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)V

    .line 371
    invoke-virtual {p0, p1}, Lcom/android/launcher3/BubbleTextView;->setItemInfo(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)V

    .line 372
    invoke-virtual {p0, p2}, Lcom/android/launcher3/BubbleTextView;->applyLoadingState(Z)V

    .line 373
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/BubbleTextView;->applyDotState(Lcom/android/launcher3/model/data/ItemInfo;Z)V

    .line 374
    invoke-virtual {p1}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getProgressLevel()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/BubbleTextView;->setDownloadStateContentDescription(Lcom/android/launcher3/model/data/ItemInfoWithIcon;I)V

    .line 375
    return-void
.end method

.method public applyFromWorkspaceItem(Lcom/android/launcher3/model/data/WorkspaceItemInfo;ZI)V
    .locals 1
    .param p1, "info"    # Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    .param p2, "animate"    # Z
    .param p3, "staggerIndex"    # I

    .line 340
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/BubbleTextView;->applyFromWorkspaceItem(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Z)V

    .line 341
    return-void
.end method

.method protected applyIconAndLabel(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)V
    .locals 7
    .param p1, "info"    # Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    .line 416
    iget v0, p0, Lcom/android/launcher3/BubbleTextView;->mDisplay:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 v3, 0x5

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    .line 418
    .local v0, "useTheme":Z
    :goto_1
    if-eqz v0, :cond_2

    move v1, v2

    .line 419
    .local v1, "flags":I
    :cond_2
    iget-boolean v2, p0, Lcom/android/launcher3/BubbleTextView;->mHideBadge:Z

    if-eqz v2, :cond_3

    .line 420
    or-int/lit8 v1, v1, 0x2

    .line 422
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1, v2, v1}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->newIcon(Landroid/content/Context;I)Lcom/android/launcher3/icons/FastBitmapDrawable;

    move-result-object v2

    .line 423
    .local v2, "iconDrawable":Lcom/android/launcher3/icons/FastBitmapDrawable;
    iget-object v3, p0, Lcom/android/launcher3/BubbleTextView;->mDotParams:Lcom/android/launcher3/icons/DotRenderer$DrawParams;

    invoke-virtual {v2}, Lcom/android/launcher3/icons/FastBitmapDrawable;->getIconColor()I

    move-result v4

    iput v4, v3, Lcom/android/launcher3/icons/DotRenderer$DrawParams;->appColor:I

    .line 424
    iget-object v3, p0, Lcom/android/launcher3/BubbleTextView;->mDotParams:Lcom/android/launcher3/icons/DotRenderer$DrawParams;

    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1060055

    .line 425
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v4

    iput v4, v3, Lcom/android/launcher3/icons/DotRenderer$DrawParams;->dotColor:I

    .line 426
    invoke-virtual {p0, v2}, Lcom/android/launcher3/BubbleTextView;->setIcon(Lcom/android/launcher3/icons/FastBitmapDrawable;)V

    .line 427
    invoke-direct {p0, p1}, Lcom/android/launcher3/BubbleTextView;->applyLabel(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)V

    .line 428
    return-void
.end method

.method public applyLoadingState(Z)V
    .locals 3
    .param p1, "promiseStateChanged"    # Z

    .line 785
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    if-eqz v0, :cond_3

    .line 786
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    .line 787
    .local v0, "info":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    iget v1, v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->runtimeStatusFlags:I

    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_1

    .line 789
    invoke-virtual {v0}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getProgressLevel()I

    move-result v1

    const/16 v2, 0x64

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0, v1}, Lcom/android/launcher3/BubbleTextView;->updateProgressBarUi(Z)V

    goto :goto_1

    .line 790
    :cond_1
    invoke-virtual {v0}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->hasPromiseIconUi()Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->runtimeStatusFlags:I

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_3

    .line 792
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/launcher3/BubbleTextView;->updateProgressBarUi(Z)V

    .line 795
    .end local v0    # "info":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    :cond_3
    :goto_1
    return-void
.end method

.method public applyProgressLevel()Lcom/android/launcher3/graphics/PreloadIconDrawable;
    .locals 9

    .line 807
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 808
    return-object v1

    .line 811
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    .line 812
    .local v0, "info":Lcom/android/launcher3/model/data/ItemInfoWithIcon;
    invoke-virtual {v0}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->getProgressLevel()I

    move-result v2

    .line 813
    .local v2, "progressLevel":I
    const/16 v3, 0x64

    const/4 v4, 0x1

    if-lt v2, v3, :cond_2

    .line 814
    iget-object v3, v0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->contentDescription:Ljava/lang/CharSequence;

    if-eqz v3, :cond_1

    .line 815
    iget-object v3, v0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->contentDescription:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_1
    const-string v3, ""

    .line 814
    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/launcher3/BubbleTextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 816
    :cond_2
    if-lez v2, :cond_3

    .line 817
    invoke-direct {p0, v0, v2}, Lcom/android/launcher3/BubbleTextView;->setDownloadStateContentDescription(Lcom/android/launcher3/model/data/ItemInfoWithIcon;I)V

    goto :goto_1

    .line 819
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v5, Lcom/android/launcher3/R$string;->app_waiting_download_title:I

    new-array v6, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, v0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->title:Ljava/lang/CharSequence;

    aput-object v8, v6, v7

    .line 820
    invoke-virtual {v3, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 819
    invoke-virtual {p0, v3}, Lcom/android/launcher3/BubbleTextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 822
    :goto_1
    iget-object v3, p0, Lcom/android/launcher3/BubbleTextView;->mIcon:Lcom/android/launcher3/icons/FastBitmapDrawable;

    if-eqz v3, :cond_5

    .line 824
    instance-of v1, v3, Lcom/android/launcher3/graphics/PreloadIconDrawable;

    if-eqz v1, :cond_4

    .line 825
    move-object v1, v3

    check-cast v1, Lcom/android/launcher3/graphics/PreloadIconDrawable;

    .line 826
    .local v1, "preloadIconDrawable":Lcom/android/launcher3/graphics/PreloadIconDrawable;
    invoke-virtual {v1, v2}, Lcom/android/launcher3/graphics/PreloadIconDrawable;->setLevel(I)Z

    .line 827
    invoke-virtual {v0}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->isAppStartable()Z

    move-result v3

    xor-int/2addr v3, v4

    invoke-virtual {v1, v3}, Lcom/android/launcher3/graphics/PreloadIconDrawable;->setIsDisabled(Z)V

    goto :goto_2

    .line 829
    .end local v1    # "preloadIconDrawable":Lcom/android/launcher3/graphics/PreloadIconDrawable;
    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->makePreloadIcon()Lcom/android/launcher3/graphics/PreloadIconDrawable;

    move-result-object v1

    .line 830
    .restart local v1    # "preloadIconDrawable":Lcom/android/launcher3/graphics/PreloadIconDrawable;
    invoke-virtual {p0, v1}, Lcom/android/launcher3/BubbleTextView;->setIcon(Lcom/android/launcher3/icons/FastBitmapDrawable;)V

    .line 832
    :goto_2
    return-object v1

    .line 834
    .end local v1    # "preloadIconDrawable":Lcom/android/launcher3/graphics/PreloadIconDrawable;
    :cond_5
    return-object v1
.end method

.method public canShowLongPressPopup()Z
    .locals 1

    .line 1197
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {v0}, Lcom/android/launcher3/util/ShortcutUtil;->supportsShortcuts(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public cancelLongPress()V
    .locals 1

    .line 773
    invoke-super {p0}, Landroid/widget/TextView;->cancelLongPress()V

    .line 774
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/CheckLongPressHelper;->cancelLongPress()V

    .line 775
    return-void
.end method

.method public clearPressedBackground()V
    .locals 1

    .line 513
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/BubbleTextView;->setPressed(Z)V

    .line 514
    invoke-virtual {p0, v0}, Lcom/android/launcher3/BubbleTextView;->setStayPressed(Z)V

    .line 515
    return-void
.end method

.method public createTextAlphaAnimator(Z)Landroid/animation/ObjectAnimator;
    .locals 4
    .param p1, "fadeIn"    # Z

    .line 767
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->shouldTextBeVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 768
    .local v0, "toAlpha":F
    :goto_0
    sget-object v1, Lcom/android/launcher3/BubbleTextView;->TEXT_ALPHA_PROPERTY:Landroid/util/Property;

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v0, v2, v3

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    return-object v1
.end method

.method protected drawBadgeIfNecessary(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 636
    iget-boolean v0, p0, Lcom/android/launcher3/BubbleTextView;->mForceHideDot:Z

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/launcher3/BubbleTextView;->hasBadge()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mDotParams:Lcom/android/launcher3/icons/DotRenderer$DrawParams;

    iget v0, v0, Lcom/android/launcher3/icons/DotRenderer$DrawParams;->scale:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 637
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mDotParams:Lcom/android/launcher3/icons/DotRenderer$DrawParams;

    iget-object v0, v0, Lcom/android/launcher3/icons/DotRenderer$DrawParams;->iconBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/BubbleTextView;->getIconBounds(Landroid/graphics/Rect;)V

    .line 638
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mDotParams:Lcom/android/launcher3/icons/DotRenderer$DrawParams;

    iget-object v0, v0, Lcom/android/launcher3/icons/DotRenderer$DrawParams;->iconBounds:Landroid/graphics/Rect;

    invoke-static {}, Lcom/android/launcher3/graphics/IconShape;->getNormalizationScale()F

    move-result v1

    invoke-static {v0, v1}, Lcom/android/launcher3/Utilities;->scaleRectAboutCenter(Landroid/graphics/Rect;F)V

    .line 639
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getScrollX()I

    move-result v0

    .line 640
    .local v0, "scrollX":I
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getScrollY()I

    move-result v1

    .line 641
    .local v1, "scrollY":I
    int-to-float v2, v0

    int-to-float v3, v1

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 642
    iget-object v2, p0, Lcom/android/launcher3/BubbleTextView;->mBadgeText:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 643
    iget-object v3, p0, Lcom/android/launcher3/BubbleTextView;->mSonyBadgeRenderer:Lcom/sonymobile/launcher/badge/SonyBadgeRenderer;

    iget-object v4, p0, Lcom/android/launcher3/BubbleTextView;->mDotParams:Lcom/android/launcher3/icons/DotRenderer$DrawParams;

    invoke-virtual {v3, p1, v4, v2}, Lcom/sonymobile/launcher/badge/SonyBadgeRenderer;->draw(Landroid/graphics/Canvas;Lcom/android/launcher3/icons/DotRenderer$DrawParams;Ljava/lang/String;)V

    .line 645
    :cond_1
    neg-int v2, v0

    int-to-float v2, v2

    neg-int v3, v1

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 647
    .end local v0    # "scrollX":I
    .end local v1    # "scrollY":I
    :cond_2
    return-void
.end method

.method protected drawDotIfNecessary(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 619
    iget-boolean v0, p0, Lcom/android/launcher3/BubbleTextView;->mForceHideDot:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/launcher3/BubbleTextView;->hasDot()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mDotParams:Lcom/android/launcher3/icons/DotRenderer$DrawParams;

    iget v0, v0, Lcom/android/launcher3/icons/DotRenderer$DrawParams;->scale:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 620
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mDotParams:Lcom/android/launcher3/icons/DotRenderer$DrawParams;

    iget-object v0, v0, Lcom/android/launcher3/icons/DotRenderer$DrawParams;->iconBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/BubbleTextView;->getIconBounds(Landroid/graphics/Rect;)V

    .line 621
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mDotParams:Lcom/android/launcher3/icons/DotRenderer$DrawParams;

    iget-object v0, v0, Lcom/android/launcher3/icons/DotRenderer$DrawParams;->iconBounds:Landroid/graphics/Rect;

    .line 622
    invoke-static {}, Lcom/android/launcher3/graphics/IconShape;->getNormalizationScale()F

    move-result v1

    .line 621
    invoke-static {v0, v1}, Lcom/android/launcher3/Utilities;->scaleRectAboutCenter(Landroid/graphics/Rect;F)V

    .line 623
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getScrollX()I

    move-result v0

    .line 624
    .local v0, "scrollX":I
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getScrollY()I

    move-result v1

    .line 625
    .local v1, "scrollY":I
    int-to-float v2, v0

    int-to-float v3, v1

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 626
    iget-object v2, p0, Lcom/android/launcher3/BubbleTextView;->mDotRenderer:Lcom/android/launcher3/icons/DotRenderer;

    iget-object v3, p0, Lcom/android/launcher3/BubbleTextView;->mDotParams:Lcom/android/launcher3/icons/DotRenderer$DrawParams;

    invoke-virtual {v2, p1, v3}, Lcom/android/launcher3/icons/DotRenderer;->draw(Landroid/graphics/Canvas;Lcom/android/launcher3/icons/DotRenderer$DrawParams;)V

    .line 627
    neg-int v2, v0

    int-to-float v2, v2

    neg-int v3, v1

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 629
    .end local v0    # "scrollX":I
    .end local v1    # "scrollY":I
    :cond_1
    return-void
.end method

.method protected drawWithoutDot(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 600
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 601
    return-void
.end method

.method public getIcon()Lcom/android/launcher3/icons/FastBitmapDrawable;
    .locals 1

    .line 465
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mIcon:Lcom/android/launcher3/icons/FastBitmapDrawable;

    return-object v0
.end method

.method public getIconBounds(ILandroid/graphics/Rect;)V
    .locals 2
    .param p1, "iconSize"    # I
    .param p2, "outBounds"    # Landroid/graphics/Rect;

    .line 682
    invoke-static {p0, p1, p2}, Lcom/android/launcher3/Utilities;->setRectToViewCenter(Landroid/view/View;ILandroid/graphics/Rect;)V

    .line 683
    iget-boolean v0, p0, Lcom/android/launcher3/BubbleTextView;->mLayoutHorizontal:Z

    if-eqz v0, :cond_1

    .line 684
    iget-boolean v0, p0, Lcom/android/launcher3/BubbleTextView;->mIsRtl:Z

    if-eqz v0, :cond_0

    .line 685
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getWidth()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_0

    .line 687
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getPaddingLeft()I

    move-result v0

    iget v1, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_0

    .line 690
    :cond_1
    iget v0, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getPaddingTop()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 692
    :goto_0
    return-void
.end method

.method public getIconBounds(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "outBounds"    # Landroid/graphics/Rect;

    .line 675
    iget v0, p0, Lcom/android/launcher3/BubbleTextView;->mIconSize:I

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/BubbleTextView;->getIconBounds(ILandroid/graphics/Rect;)V

    .line 676
    return-void
.end method

.method public getIconSize()I
    .locals 1

    .line 1072
    iget v0, p0, Lcom/android/launcher3/BubbleTextView;->mIconSize:I

    return v0
.end method

.method public getReorderBounceOffset(Landroid/graphics/PointF;)V
    .locals 1
    .param p1, "offset"    # Landroid/graphics/PointF;

    .line 1089
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mTranslationForReorderBounce:Landroid/graphics/PointF;

    invoke-virtual {p1, v0}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 1090
    return-void
.end method

.method public getReorderBounceScale()F
    .locals 1

    .line 1110
    iget v0, p0, Lcom/android/launcher3/BubbleTextView;->mScaleForReorderBounce:F

    return v0
.end method

.method public getReorderPreviewOffset(Landroid/graphics/PointF;)V
    .locals 1
    .param p1, "offset"    # Landroid/graphics/PointF;

    .line 1100
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mTranslationForReorderPreview:Landroid/graphics/PointF;

    invoke-virtual {p1, v0}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 1101
    return-void
.end method

.method public getSourceVisualDragBounds(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 1151
    iget v0, p0, Lcom/android/launcher3/BubbleTextView;->mIconSize:I

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/BubbleTextView;->getIconBounds(ILandroid/graphics/Rect;)V

    .line 1152
    return-void
.end method

.method public getTranslationXForTaskbarAlignmentAnimation()F
    .locals 1

    .line 1133
    iget v0, p0, Lcom/android/launcher3/BubbleTextView;->mTranslationXForTaskbarAlignmentAnimation:F

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    .line 1137
    return-object p0
.end method

.method public getViewType()I
    .locals 1

    .line 1142
    const/4 v0, 0x0

    return v0
.end method

.method public getWorkspaceVisualDragBounds(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 1147
    iget v0, p0, Lcom/android/launcher3/BubbleTextView;->mIconSize:I

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/BubbleTextView;->getIconBounds(ILandroid/graphics/Rect;)V

    .line 1148
    return-void
.end method

.method protected iconUpdateAnimationEnabled()Z
    .locals 1

    .line 989
    iget-boolean v0, p0, Lcom/android/launcher3/BubbleTextView;->mEnableIconUpdateAnimation:Z

    return v0
.end method

.method public makePreloadIcon()Lcom/android/launcher3/graphics/PreloadIconDrawable;
    .locals 4

    .line 843
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    if-nez v0, :cond_0

    .line 844
    const/4 v0, 0x0

    return-object v0

    .line 847
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    .line 848
    .local v0, "info":Lcom/android/launcher3/model/data/ItemInfoWithIcon;
    invoke-virtual {v0}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->getProgressLevel()I

    move-result v1

    .line 849
    .local v1, "progressLevel":I
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/android/launcher3/graphics/PreloadIconDrawable;->newPendingIcon(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfoWithIcon;)Lcom/android/launcher3/graphics/PreloadIconDrawable;

    move-result-object v2

    .line 851
    .local v2, "preloadDrawable":Lcom/android/launcher3/graphics/PreloadIconDrawable;
    invoke-virtual {v2, v1}, Lcom/android/launcher3/graphics/PreloadIconDrawable;->setLevel(I)Z

    .line 852
    invoke-virtual {v0}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->isAppStartable()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/launcher3/graphics/PreloadIconDrawable;->setIsDisabled(Z)V

    .line 854
    return-object v2
.end method

.method protected onCreateDrawableState(I)[I
    .locals 2
    .param p1, "extraSpace"    # I

    .line 456
    add-int/lit8 v0, p1, 0x1

    invoke-super {p0, v0}, Landroid/widget/TextView;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 457
    .local v0, "drawableState":[I
    iget-boolean v1, p0, Lcom/android/launcher3/BubbleTextView;->mStayPressed:Z

    if-eqz v1, :cond_0

    .line 458
    sget-object v1, Lcom/android/launcher3/BubbleTextView;->STATE_PRESSED:[I

    invoke-static {v0, v1}, Lcom/android/launcher3/BubbleTextView;->mergeDrawableStates([I[I)[I

    .line 460
    :cond_0
    return-object v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 605
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 606
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mBadgeText:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 607
    invoke-virtual {p0, p1}, Lcom/android/launcher3/BubbleTextView;->drawBadgeIfNecessary(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 609
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/launcher3/BubbleTextView;->drawDotIfNecessary(Landroid/graphics/Canvas;)V

    .line 611
    :goto_0
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1
    .param p1, "focused"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .line 278
    if-eqz p1, :cond_0

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/launcher3/BubbleTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 279
    invoke-super {p0, p1, p2, p3}, Landroid/widget/TextView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 280
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 522
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/BubbleTextView;->mIgnorePressedStateChange:Z

    .line 523
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 524
    .local v0, "result":Z
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher3/BubbleTextView;->mIgnorePressedStateChange:Z

    .line 525
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->refreshDrawableState()V

    .line 526
    return v0
.end method

.method protected onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 703
    iget-boolean v0, p0, Lcom/android/launcher3/BubbleTextView;->mCenterVertically:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->shouldTextBeVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 704
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 705
    .local v0, "fm":Landroid/graphics/Paint$FontMetrics;
    iget v1, p0, Lcom/android/launcher3/BubbleTextView;->mIconSize:I

    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getCompoundDrawablePadding()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v3, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v2, v3

    float-to-double v2, v2

    .line 706
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    add-int/2addr v1, v2

    .line 707
    .local v1, "cellHeightPx":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 708
    .local v2, "height":I
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getPaddingLeft()I

    move-result v3

    sub-int v4, v2, v1

    div-int/lit8 v4, v4, 0x4

    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getPaddingRight()I

    move-result v5

    .line 709
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getPaddingBottom()I

    move-result v6

    .line 708
    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/android/launcher3/BubbleTextView;->setPadding(IIII)V

    .line 711
    .end local v0    # "fm":Landroid/graphics/Paint$FontMetrics;
    .end local v1    # "cellHeightPx":I
    .end local v2    # "height":I
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 712
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 531
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onSizeChanged(IIII)V

    .line 532
    invoke-direct {p0}, Lcom/android/launcher3/BubbleTextView;->checkForEllipsis()V

    .line 533
    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "lengthBefore"    # I
    .param p4, "lengthAfter"    # I

    .line 537
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 538
    invoke-direct {p0}, Lcom/android/launcher3/BubbleTextView;->checkForEllipsis()V

    .line 539
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 471
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 472
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/BubbleTextView;->shouldIgnoreTouchDown(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 473
    const/4 v0, 0x0

    return v0

    .line 475
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->isLongClickable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 476
    invoke-super {p0, p1}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 477
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/CheckLongPressHelper;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 479
    const/4 v0, 0x1

    return v0

    .line 481
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onVisibilityAggregated(Z)V
    .locals 2
    .param p1, "isVisible"    # Z

    .line 506
    invoke-super {p0, p1}, Landroid/widget/TextView;->onVisibilityAggregated(Z)V

    .line 507
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mIcon:Lcom/android/launcher3/icons/FastBitmapDrawable;

    if-eqz v0, :cond_0

    .line 508
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher3/icons/FastBitmapDrawable;->setVisible(ZZ)Z

    .line 510
    :cond_0
    return-void
.end method

.method public prepareDrawDragView()Lcom/android/launcher3/util/SafeCloseable;
    .locals 1

    .line 1156
    invoke-direct {p0}, Lcom/android/launcher3/BubbleTextView;->resetIconScale()V

    .line 1157
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/BubbleTextView;->setForceHideDot(Z)V

    .line 1158
    new-instance v0, Lcom/android/launcher3/BubbleTextView$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/launcher3/BubbleTextView$$ExternalSyntheticLambda0;-><init>()V

    return-object v0
.end method

.method public reapplyItemInfo(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)V
    .locals 1
    .param p1, "info"    # Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    .line 1028
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_3

    .line 1029
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mIconLoadRequest:Lcom/android/launcher3/icons/cache/HandlerRunnable;

    .line 1030
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/BubbleTextView;->mDisableRelayout:Z

    .line 1031
    iput-boolean v0, p0, Lcom/android/launcher3/BubbleTextView;->mEnableIconUpdateAnimation:Z

    .line 1034
    iget-object v0, p1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    iget-object v0, v0, Lcom/android/launcher3/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->prepareToDraw()V

    .line 1036
    instance-of v0, p1, Lcom/android/launcher3/model/data/AppInfo;

    if-eqz v0, :cond_0

    .line 1037
    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/model/data/AppInfo;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/BubbleTextView;->applyFromApplicationInfo(Lcom/android/launcher3/model/data/AppInfo;)V

    goto :goto_0

    .line 1038
    :cond_0
    instance-of v0, p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz v0, :cond_1

    .line 1039
    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/BubbleTextView;->applyFromWorkspaceItem(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    .line 1040
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0, p1}, Lcom/android/launcher3/views/ActivityContext;->invalidateParent(Lcom/android/launcher3/model/data/ItemInfo;)V

    goto :goto_0

    .line 1041
    :cond_1
    if-eqz p1, :cond_2

    .line 1042
    invoke-virtual {p0, p1}, Lcom/android/launcher3/BubbleTextView;->applyFromItemInfoWithIcon(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)V

    .line 1045
    :cond_2
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/BubbleTextView;->mDisableRelayout:Z

    .line 1046
    iput-boolean v0, p0, Lcom/android/launcher3/BubbleTextView;->mEnableIconUpdateAnimation:Z

    .line 1048
    :cond_3
    return-void
.end method

.method public refreshDrawableState()V
    .locals 1

    .line 449
    iget-boolean v0, p0, Lcom/android/launcher3/BubbleTextView;->mIgnorePressedStateChange:Z

    if-nez v0, :cond_0

    .line 450
    invoke-super {p0}, Landroid/widget/TextView;->refreshDrawableState()V

    .line 452
    :cond_0
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .line 1018
    iget-boolean v0, p0, Lcom/android/launcher3/BubbleTextView;->mDisableRelayout:Z

    if-nez v0, :cond_0

    .line 1019
    invoke-super {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 1021
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 4

    .line 290
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mDotInfo:Lcom/android/launcher3/dot/DotInfo;

    .line 291
    iget-object v1, p0, Lcom/android/launcher3/BubbleTextView;->mDotParams:Lcom/android/launcher3/icons/DotRenderer$DrawParams;

    const/4 v2, 0x0

    iput v2, v1, Lcom/android/launcher3/icons/DotRenderer$DrawParams;->dotColor:I

    .line 292
    iget-object v1, p0, Lcom/android/launcher3/BubbleTextView;->mDotParams:Lcom/android/launcher3/icons/DotRenderer$DrawParams;

    iput v2, v1, Lcom/android/launcher3/icons/DotRenderer$DrawParams;->appColor:I

    .line 293
    iput-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mSonyBadgeInfo:Lcom/sonymobile/launcher/badge/SonyBadgeInfo;

    .line 294
    iput-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mBadgeText:Ljava/lang/String;

    .line 295
    invoke-direct {p0}, Lcom/android/launcher3/BubbleTextView;->cancelDotScaleAnim()V

    .line 296
    iget-object v1, p0, Lcom/android/launcher3/BubbleTextView;->mDotParams:Lcom/android/launcher3/icons/DotRenderer$DrawParams;

    const/4 v3, 0x0

    iput v3, v1, Lcom/android/launcher3/icons/DotRenderer$DrawParams;->scale:F

    .line 297
    iput-boolean v2, p0, Lcom/android/launcher3/BubbleTextView;->mForceHideDot:Z

    .line 298
    invoke-virtual {p0, v0}, Lcom/android/launcher3/BubbleTextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 300
    invoke-virtual {p0, v0}, Lcom/android/launcher3/BubbleTextView;->setTag(Ljava/lang/Object;)V

    .line 301
    iget-object v1, p0, Lcom/android/launcher3/BubbleTextView;->mIconLoadRequest:Lcom/android/launcher3/icons/cache/HandlerRunnable;

    if-eqz v1, :cond_0

    .line 302
    invoke-virtual {v1}, Lcom/android/launcher3/icons/cache/HandlerRunnable;->cancel()V

    .line 303
    iput-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mIconLoadRequest:Lcom/android/launcher3/icons/cache/HandlerRunnable;

    .line 305
    :cond_0
    return-void
.end method

.method public setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V
    .locals 1
    .param p1, "delegate"    # Landroid/view/View$AccessibilityDelegate;

    .line 358
    instance-of v0, p1, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;

    if-eqz v0, :cond_0

    .line 359
    invoke-super {p0, p1}, Landroid/widget/TextView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 366
    :cond_0
    return-void
.end method

.method public setCenterVertically(Z)V
    .locals 0
    .param p1, "centerVertically"    # Z

    .line 698
    iput-boolean p1, p0, Lcom/android/launcher3/BubbleTextView;->mCenterVertically:Z

    .line 699
    return-void
.end method

.method public setForceHideDot(Z)V
    .locals 1
    .param p1, "forceHideDot"    # Z

    .line 651
    iget-boolean v0, p0, Lcom/android/launcher3/BubbleTextView;->mForceHideDot:Z

    if-ne v0, p1, :cond_0

    .line 652
    return-void

    .line 654
    :cond_0
    iput-boolean p1, p0, Lcom/android/launcher3/BubbleTextView;->mForceHideDot:Z

    .line 656
    if-eqz p1, :cond_1

    .line 657
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->invalidate()V

    goto :goto_0

    .line 658
    :cond_1
    invoke-direct {p0}, Lcom/android/launcher3/BubbleTextView;->hasDot()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/launcher3/BubbleTextView;->hasBadge()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 659
    :cond_2
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-direct {p0, v0}, Lcom/android/launcher3/BubbleTextView;->animateDotScale([F)V

    .line 661
    :cond_3
    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public setHideBadge(Z)V
    .locals 0
    .param p1, "hideBadge"    # Z

    .line 283
    iput-boolean p1, p0, Lcom/android/launcher3/BubbleTextView;->mHideBadge:Z

    .line 284
    return-void
.end method

.method protected setIcon(Lcom/android/launcher3/icons/FastBitmapDrawable;)V
    .locals 2
    .param p1, "icon"    # Lcom/android/launcher3/icons/FastBitmapDrawable;

    .line 969
    iget-boolean v0, p0, Lcom/android/launcher3/BubbleTextView;->mIsIconVisible:Z

    if-eqz v0, :cond_0

    .line 970
    invoke-virtual {p0, p1}, Lcom/android/launcher3/BubbleTextView;->applyCompoundDrawables(Landroid/graphics/drawable/Drawable;)V

    .line 972
    :cond_0
    iput-object p1, p0, Lcom/android/launcher3/BubbleTextView;->mIcon:Lcom/android/launcher3/icons/FastBitmapDrawable;

    .line 973
    if-eqz p1, :cond_2

    .line 974
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getWindowVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    invoke-virtual {p1, v0, v1}, Lcom/android/launcher3/icons/FastBitmapDrawable;->setVisible(ZZ)Z

    .line 976
    :cond_2
    return-void
.end method

.method public setIconVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .line 980
    iput-boolean p1, p0, Lcom/android/launcher3/BubbleTextView;->mIsIconVisible:Z

    .line 981
    if-nez p1, :cond_0

    .line 982
    invoke-direct {p0}, Lcom/android/launcher3/BubbleTextView;->resetIconScale()V

    .line 984
    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mIcon:Lcom/android/launcher3/icons/FastBitmapDrawable;

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 985
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/launcher3/BubbleTextView;->applyCompoundDrawables(Landroid/graphics/drawable/Drawable;)V

    .line 986
    return-void
.end method

.method protected setItemInfo(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)V
    .locals 0
    .param p1, "itemInfo"    # Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    .line 411
    invoke-virtual {p0, p1}, Lcom/android/launcher3/BubbleTextView;->setTag(Ljava/lang/Object;)V

    .line 412
    return-void
.end method

.method public setLongPressTimeoutFactor(F)V
    .locals 1
    .param p1, "longPressTimeoutFactor"    # F

    .line 444
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/CheckLongPressHelper;->setLongPressTimeoutFactor(F)V

    .line 445
    return-void
.end method

.method public setReorderBounceOffset(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 1084
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mTranslationForReorderBounce:Landroid/graphics/PointF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    .line 1085
    invoke-direct {p0}, Lcom/android/launcher3/BubbleTextView;->updateTranslation()V

    .line 1086
    return-void
.end method

.method public setReorderBounceScale(F)V
    .locals 0
    .param p1, "scale"    # F

    .line 1104
    iput p1, p0, Lcom/android/launcher3/BubbleTextView;->mScaleForReorderBounce:F

    .line 1105
    invoke-super {p0, p1}, Landroid/widget/TextView;->setScaleX(F)V

    .line 1106
    invoke-super {p0, p1}, Landroid/widget/TextView;->setScaleY(F)V

    .line 1107
    return-void
.end method

.method public setReorderPreviewOffset(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 1094
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mTranslationForReorderPreview:Landroid/graphics/PointF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    .line 1095
    invoke-direct {p0}, Lcom/android/launcher3/BubbleTextView;->updateTranslation()V

    .line 1096
    return-void
.end method

.method setStayPressed(Z)V
    .locals 0
    .param p1, "stayPressed"    # Z

    .line 500
    iput-boolean p1, p0, Lcom/android/launcher3/BubbleTextView;->mStayPressed:Z

    .line 501
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->refreshDrawableState()V

    .line 502
    return-void
.end method

.method public setTextColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 716
    iput p1, p0, Lcom/android/launcher3/BubbleTextView;->mTextColor:I

    .line 717
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mTextColorStateList:Landroid/content/res/ColorStateList;

    .line 718
    invoke-direct {p0}, Lcom/android/launcher3/BubbleTextView;->getModifiedColor()I

    move-result v0

    invoke-super {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 719
    return-void
.end method

.method public setTextColor(Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p1, "colors"    # Landroid/content/res/ColorStateList;

    .line 723
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/BubbleTextView;->mTextColor:I

    .line 724
    iput-object p1, p0, Lcom/android/launcher3/BubbleTextView;->mTextColorStateList:Landroid/content/res/ColorStateList;

    .line 725
    iget v0, p0, Lcom/android/launcher3/BubbleTextView;->mTextAlpha:F

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    .line 726
    invoke-super {p0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 728
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/BubbleTextView;->getModifiedColor()I

    move-result v0

    invoke-super {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 730
    :goto_0
    return-void
.end method

.method public setTextVisibility(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .line 741
    if-eqz p1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/launcher3/BubbleTextView;->setTextAlpha(F)V

    .line 742
    return-void
.end method

.method public setToInvisibleOnDragEnd(Z)V
    .locals 0
    .param p1, "invisible"    # Z

    .line 1205
    iput-boolean p1, p0, Lcom/android/launcher3/BubbleTextView;->mSetToInvisibleOnDragEnd:Z

    .line 1206
    return-void
.end method

.method public setTranslationForMoveFromCenterAnimation(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 1117
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mTranslationForMoveFromCenterAnimation:Landroid/graphics/PointF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    .line 1118
    invoke-direct {p0}, Lcom/android/launcher3/BubbleTextView;->updateTranslation()V

    .line 1119
    return-void
.end method

.method public setTranslationXForTaskbarAlignmentAnimation(F)V
    .locals 0
    .param p1, "translationX"    # F

    .line 1125
    iput p1, p0, Lcom/android/launcher3/BubbleTextView;->mTranslationXForTaskbarAlignmentAnimation:F

    .line 1126
    invoke-direct {p0}, Lcom/android/launcher3/BubbleTextView;->updateTranslation()V

    .line 1127
    return-void
.end method

.method public shouldAnimateIconChange(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Z
    .locals 5
    .param p1, "newInfo"    # Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    .line 347
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz v0, :cond_0

    .line 348
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    goto :goto_0

    .line 349
    :cond_0
    const/4 v0, 0x0

    :goto_0
    nop

    .line 350
    .local v0, "oldInfo":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 351
    invoke-virtual {p1}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 352
    invoke-virtual {v0}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    .line 353
    .local v3, "changedIcons":Z
    :goto_1
    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->isShown()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    return v1
.end method

.method public shouldBeSetToInvisibleOnDragEnd()Z
    .locals 1

    .line 1201
    iget-boolean v0, p0, Lcom/android/launcher3/BubbleTextView;->mSetToInvisibleOnDragEnd:Z

    return v0
.end method

.method protected shouldIgnoreTouchDown(FF)Z
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 489
    iget v0, p0, Lcom/android/launcher3/BubbleTextView;->mDisplay:I

    const/4 v1, 0x0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_0

    .line 491
    return v1

    .line 493
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getPaddingTop()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-ltz v0, :cond_1

    .line 494
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_1

    .line 495
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-gtz v0, :cond_1

    .line 496
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    .line 493
    :cond_2
    return v1
.end method

.method public shouldTextBeVisible()Z
    .locals 4

    .line 734
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/folder/FolderIcon;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 735
    .local v0, "tag":Ljava/lang/Object;
    :goto_0
    instance-of v1, v0, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/android/launcher3/model/data/ItemInfo;

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 736
    .local v1, "info":Lcom/android/launcher3/model/data/ItemInfo;
    :goto_1
    if-eqz v1, :cond_3

    iget v2, v1, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 v3, -0x65

    if-eq v2, v3, :cond_2

    iget v2, v1, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 v3, -0x67

    if-eq v2, v3, :cond_2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v2, 0x1

    :goto_3
    return v2
.end method

.method public startLongPressAction()Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;
    .locals 2

    .line 1189
    invoke-static {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->showForIcon(Lcom/android/launcher3/BubbleTextView;)Lcom/android/launcher3/popup/PopupContainerWithArrow;

    move-result-object v0

    .line 1190
    .local v0, "popup":Lcom/android/launcher3/popup/PopupContainerWithArrow;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->createPreDragCondition(Z)Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public verifyHighRes()V
    .locals 3

    .line 1054
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mIconLoadRequest:Lcom/android/launcher3/icons/cache/HandlerRunnable;

    if-eqz v0, :cond_0

    .line 1055
    invoke-virtual {v0}, Lcom/android/launcher3/icons/cache/HandlerRunnable;->cancel()V

    .line 1056
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mIconLoadRequest:Lcom/android/launcher3/icons/cache/HandlerRunnable;

    .line 1058
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    if-eqz v0, :cond_2

    .line 1059
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    .line 1060
    .local v0, "info":Lcom/android/launcher3/model/data/ItemInfoWithIcon;
    const/4 v1, 0x0

    .line 1061
    .local v1, "launcher":Lcom/android/launcher3/Launcher;
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getContext()Landroid/content/Context;

    move-result-object v2

    instance-of v2, v2, Lcom/android/launcher3/Launcher;

    if-eqz v2, :cond_1

    .line 1062
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v1

    .line 1064
    :cond_1
    invoke-virtual {v0}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->usingLowResIcon()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1065
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/icons/IconCache;

    move-result-object v2

    .line 1066
    invoke-virtual {v2, p0, v0, v1}, Lcom/android/launcher3/icons/IconCache;->updateIconInBackgroundWithFolderIcon(Lcom/android/launcher3/icons/IconCache$ItemInfoUpdateReceiver;Lcom/android/launcher3/model/data/ItemInfoWithIcon;Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/icons/cache/HandlerRunnable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/BubbleTextView;->mIconLoadRequest:Lcom/android/launcher3/icons/cache/HandlerRunnable;

    .line 1069
    .end local v0    # "info":Lcom/android/launcher3/model/data/ItemInfoWithIcon;
    .end local v1    # "launcher":Lcom/android/launcher3/Launcher;
    :cond_2
    return-void
.end method
