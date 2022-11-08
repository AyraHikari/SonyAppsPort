.class public Lcom/android/launcher3/uioverrides/PredictedAppIcon;
.super Lcom/android/launcher3/views/DoubleShadowBubbleTextView;
.source "PredictedAppIcon.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/uioverrides/PredictedAppIcon$PredictedIconOutlineDrawing;
    }
.end annotation


# static fields
.field private static final ICON_CHANGE_ANIM_DURATION:J = 0x168L

.field private static final ICON_CHANGE_ANIM_STAGGER:J = 0x32L

.field private static final RING_EFFECT_RATIO:F = 0.095f

.field private static final RING_SHADOW_COLOR:I = -0x67000000

.field private static final SLOT_MACHINE_TRANSLATION_Y:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/android/launcher3/uioverrides/PredictedAppIcon;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

.field mDrawForDrag:Z

.field private final mIconRingPaint:Landroid/graphics/Paint;

.field mIsDrawingDot:Z

.field private mIsPinned:Z

.field private final mNormalizedIconSize:I

.field private mPlateColor:I

.field private final mRingPath:Landroid/graphics/Path;

.field private final mShadowFilter:Landroid/graphics/BlurMaskFilter;

.field private final mShapePath:Landroid/graphics/Path;

.field private mSlotMachineAnim:Landroid/animation/Animator;

.field private mSlotMachineIconTranslationY:F

.field private mSlotMachineIcons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpMatrix:Landroid/graphics/Matrix;


# direct methods
.method static bridge synthetic -$$Nest$fgetmShapePath(Lcom/android/launcher3/uioverrides/PredictedAppIcon;)Landroid/graphics/Path;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->mShapePath:Landroid/graphics/Path;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSlotMachineIconTranslationY(Lcom/android/launcher3/uioverrides/PredictedAppIcon;)F
    .locals 0

    iget p0, p0, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->mSlotMachineIconTranslationY:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmSlotMachineIconTranslationY(Lcom/android/launcher3/uioverrides/PredictedAppIcon;F)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->mSlotMachineIconTranslationY:F

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetOutlineOffsetX(Lcom/android/launcher3/uioverrides/PredictedAppIcon;)I
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->getOutlineOffsetX()I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetOutlineOffsetY(Lcom/android/launcher3/uioverrides/PredictedAppIcon;)I
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->getOutlineOffsetY()I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 97
    new-instance v0, Lcom/android/launcher3/uioverrides/PredictedAppIcon$1;

    const-string v1, "slotMachineTranslationY"

    invoke-direct {v0, v1}, Lcom/android/launcher3/uioverrides/PredictedAppIcon$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->SLOT_MACHINE_TRANSLATION_Y:Landroid/util/FloatProperty;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 112
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher3/uioverrides/PredictedAppIcon;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 113
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 116
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/uioverrides/PredictedAppIcon;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 117
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 120
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/views/DoubleShadowBubbleTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->mIsDrawingDot:Z

    .line 80
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->mIconRingPaint:Landroid/graphics/Paint;

    .line 81
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->mRingPath:Landroid/graphics/Path;

    .line 84
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->mTmpMatrix:Landroid/graphics/Matrix;

    .line 88
    iput-boolean v0, p0, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->mIsPinned:Z

    .line 90
    iput-boolean v0, p0, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->mDrawForDrag:Z

    .line 121
    invoke-static {p1}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    .line 122
    invoke-virtual {p0}, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->getIconSize()I

    move-result v0

    invoke-static {v0}, Lcom/android/launcher3/icons/IconNormalizer;->getNormalizedCircleSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->mNormalizedIconSize:I

    .line 123
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/launcher3/R$dimen;->blur_size_thin_outline:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 125
    .local v1, "shadowSize":I
    new-instance v2, Landroid/graphics/BlurMaskFilter;

    int-to-float v3, v1

    sget-object v4, Landroid/graphics/BlurMaskFilter$Blur;->OUTER:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v2, v3, v4}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    iput-object v2, p0, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->mShadowFilter:Landroid/graphics/BlurMaskFilter;

    .line 126
    invoke-static {v0}, Lcom/android/launcher3/icons/GraphicsUtils;->getShapePath(I)Landroid/graphics/Path;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->mShapePath:Landroid/graphics/Path;

    .line 127
    return-void
.end method

.method public static createIcon(Landroid/view/ViewGroup;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Lcom/android/launcher3/uioverrides/PredictedAppIcon;
    .locals 3
    .param p0, "parent"    # Landroid/view/ViewGroup;
    .param p1, "info"    # Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    .line 386
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/launcher3/R$layout;->predicted_app_icon:I

    .line 387
    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/uioverrides/PredictedAppIcon;

    .line 388
    .local v0, "icon":Lcom/android/launcher3/uioverrides/PredictedAppIcon;
    invoke-virtual {v0, p1}, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->applyFromWorkspaceItem(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    .line 389
    sget-object v1, Lcom/android/launcher3/touch/ItemClickHandler;->INSTANCE:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 390
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getFocusHandler()Lcom/android/launcher3/keyboard/ViewGroupFocusHelper;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 391
    return-object v0
.end method

.method private drawEffect(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 351
    iget-boolean v0, p0, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->mDrawForDrag:Z

    if-eqz v0, :cond_0

    .line 352
    return-void

    .line 354
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->mIconRingPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x67000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 355
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->mIconRingPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->mShadowFilter:Landroid/graphics/BlurMaskFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 356
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->mRingPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->mIconRingPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 357
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->mIconRingPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->mPlateColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 358
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->mIconRingPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 359
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->mRingPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->mIconRingPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 360
    return-void
.end method

.method private drawSlotMachineIcons(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 151
    invoke-virtual {p0}, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->getIconSize()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 152
    invoke-virtual {p0}, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->getIconSize()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v2, v1

    iget v1, p0, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->mSlotMachineIconTranslationY:F

    add-float/2addr v2, v1

    .line 151
    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 153
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->mSlotMachineIcons:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    .line 154
    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->getIconSize()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->getIconSize()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 155
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 156
    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->getSlotMachineIconPlusSpacingSize()F

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 157
    .end local v1    # "icon":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 158
    :cond_0
    return-void
.end method

.method private getOutlineOffsetX()I
    .locals 2

    .line 302
    invoke-virtual {p0}, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->mNormalizedIconSize:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method private getOutlineOffsetY()I
    .locals 2

    .line 306
    iget v0, p0, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->mDisplay:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 307
    invoke-virtual {p0}, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->getPaddingTop()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget v1, v1, Lcom/android/launcher3/DeviceProfile;->folderIconOffsetYPx:I

    add-int/2addr v0, v1

    return v0

    .line 309
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->getMeasuredHeight()I

    move-result v0

    iget v1, p0, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->mNormalizedIconSize:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method private getSlotMachineIconPlusSpacingSize()F
    .locals 2

    .line 161
    invoke-virtual {p0}, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->getIconSize()I

    move-result v0

    invoke-direct {p0}, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->getOutlineOffsetY()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    return v0
.end method

.method private updateRingPath()V
    .locals 8

    .line 325
    const/4 v0, 0x0

    .line 326
    .local v0, "isBadged":Z
    invoke-virtual {p0}, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz v1, :cond_2

    .line 327
    invoke-virtual {p0}, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    .line 328
    .local v1, "info":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    iget-object v3, v1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v2, v3}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    iget v2, v1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->itemType:I

    if-eq v2, v3, :cond_1

    iget v2, v1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->itemType:I

    const/4 v4, 0x6

    if-ne v2, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :cond_1
    :goto_0
    move v0, v3

    .line 333
    .end local v1    # "info":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->mRingPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 334
    iget-object v1, p0, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-direct {p0}, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->getOutlineOffsetX()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {p0}, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->getOutlineOffsetY()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 336
    iget-object v1, p0, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->mRingPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->mShapePath:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 337
    if-eqz v0, :cond_3

    .line 338
    iget v1, p0, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->mNormalizedIconSize:I

    int-to-float v1, v1

    const v2, 0x3dc28f5c    # 0.095f

    mul-float/2addr v1, v2

    .line 339
    .local v1, "outlineSize":F
    invoke-virtual {p0}, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->getIconSize()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3f4f5c29    # 0.81f

    mul-float/2addr v2, v3

    .line 340
    .local v2, "iconSize":F
    float-to-int v3, v2

    invoke-static {v3}, Lcom/android/launcher3/icons/LauncherIcons;->getBadgeSizeForIconSize(I)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v1

    .line 341
    .local v3, "badgeSize":F
    iget v4, p0, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->mNormalizedIconSize:I

    int-to-float v5, v4

    div-float v5, v3, v5

    .line 342
    .local v5, "scale":F
    iget-object v6, p0, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->mTmpMatrix:Landroid/graphics/Matrix;

    int-to-float v7, v4

    int-to-float v4, v4

    invoke-virtual {v6, v7, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 343
    iget-object v4, p0, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v5, v5}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 344
    iget-object v4, p0, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->mTmpMatrix:Landroid/graphics/Matrix;

    iget v6, p0, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->mNormalizedIconSize:I

    neg-int v7, v6

    int-to-float v7, v7

    neg-int v6, v6

    int-to-float v6, v6

    invoke-virtual {v4, v7, v6}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 345
    iget-object v4, p0, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->mRingPath:Landroid/graphics/Path;

    iget-object v6, p0, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->mShapePath:Landroid/graphics/Path;

    iget-object v7, p0, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v6, v7}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 347
    .end local v1    # "outlineSize":F
    .end local v2    # "iconSize":F
    .end local v3    # "badgeSize":F
    .end local v5    # "scale":F
    :cond_3
    return-void
.end method


# virtual methods
.method public applyFromWorkspaceItem(Lcom/android/launcher3/model/data/WorkspaceItemInfo;ZI)V
    .locals 9
    .param p1, "info"    # Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    .param p2, "animate"    # Z
    .param p3, "staggerIndex"    # I

    .line 178
    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 179
    iget-object v1, p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->createSlotMachineAnim(Ljava/util/List;Z)Landroid/animation/Animator;

    move-result-object v1

    goto :goto_0

    .line 180
    :cond_0
    const/4 v1, 0x0

    :goto_0
    nop

    .line 181
    .local v1, "slotMachineAnim":Landroid/animation/Animator;
    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher3/views/DoubleShadowBubbleTextView;->applyFromWorkspaceItem(Lcom/android/launcher3/model/data/WorkspaceItemInfo;ZI)V

    .line 182
    iget v2, p0, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->mPlateColor:I

    .line 183
    .local v2, "oldPlateColor":I
    iget-object v3, p0, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->mDotParams:Lcom/android/launcher3/icons/DotRenderer$DrawParams;

    iget v3, v3, Lcom/android/launcher3/icons/DotRenderer$DrawParams;->appColor:I

    const/16 v4, 0xc8

    invoke-static {v3, v4}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v3

    .line 184
    .local v3, "newPlateColor":I
    if-nez p2, :cond_1

    .line 185
    iput v3, p0, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->mPlateColor:I

    .line 187
    :cond_1
    iget-boolean v4, p0, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->mIsPinned:Z

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    .line 188
    iget-object v4, p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->contentDescription:Ljava/lang/CharSequence;

    invoke-virtual {p0, v4}, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 190
    :cond_2
    nop

    .line 191
    invoke-virtual {p0}, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v6, Lcom/android/launcher3/R$string;->hotseat_prediction_content_description:I

    new-array v7, v5, [Ljava/lang/Object;

    iget-object v8, p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->contentDescription:Ljava/lang/CharSequence;

    aput-object v8, v7, v0

    invoke-virtual {v4, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 190
    invoke-virtual {p0, v4}, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 195
    :goto_1
    if-eqz p2, :cond_4

    .line 196
    new-instance v4, Landroid/animation/ArgbEvaluator;

    invoke-direct {v4}, Landroid/animation/ArgbEvaluator;-><init>()V

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    .line 197
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v5

    .line 196
    invoke-static {v4, v6}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 198
    .local v0, "plateColorAnim":Landroid/animation/ValueAnimator;
    new-instance v4, Lcom/android/launcher3/uioverrides/PredictedAppIcon$$ExternalSyntheticLambda3;

    invoke-direct {v4, p0}, Lcom/android/launcher3/uioverrides/PredictedAppIcon$$ExternalSyntheticLambda3;-><init>(Lcom/android/launcher3/uioverrides/PredictedAppIcon;)V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 202
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 203
    .local v4, "changeIconAnim":Landroid/animation/AnimatorSet;
    if-eqz v1, :cond_3

    .line 204
    invoke-virtual {v4, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 206
    :cond_3
    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 207
    int-to-long v5, p3

    const-wide/16 v7, 0x32

    mul-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 208
    const-wide/16 v5, 0x168

    invoke-virtual {v4, v5, v6}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object v5

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    .line 210
    .end local v0    # "plateColorAnim":Landroid/animation/ValueAnimator;
    .end local v4    # "changeIconAnim":Landroid/animation/AnimatorSet;
    :cond_4
    return-void
.end method

.method public createSlotMachineAnim(Ljava/util/List;)Landroid/animation/Animator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/icons/BitmapInfo;",
            ">;)",
            "Landroid/animation/Animator;"
        }
    .end annotation

    .line 217
    .local p1, "iconsToAnimate":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/icons/BitmapInfo;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->createSlotMachineAnim(Ljava/util/List;Z)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public createSlotMachineAnim(Ljava/util/List;Z)Landroid/animation/Animator;
    .locals 8
    .param p2, "endWithOriginalIcon"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/icons/BitmapInfo;",
            ">;Z)",
            "Landroid/animation/Animator;"
        }
    .end annotation

    .line 229
    .local p1, "iconsToAnimate":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/icons/BitmapInfo;>;"
    iget-boolean v0, p0, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->mIsPinned:Z

    if-nez v0, :cond_3

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->mSlotMachineAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    .line 233
    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    .line 237
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->mSlotMachineIcons:Ljava/util/List;

    .line 238
    invoke-virtual {p0}, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->getIcon()Lcom/android/launcher3/icons/FastBitmapDrawable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/uioverrides/PredictedAppIcon$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/launcher3/uioverrides/PredictedAppIcon$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/uioverrides/PredictedAppIcon;)V

    .line 240
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->mSlotMachineIcons:Ljava/util/List;

    .line 241
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/launcher3/uioverrides/PredictedAppIcon$$ExternalSyntheticLambda1;

    invoke-direct {v3, v1}, Lcom/android/launcher3/uioverrides/PredictedAppIcon$$ExternalSyntheticLambda1;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v3}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 242
    if-eqz p2, :cond_2

    .line 243
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->mSlotMachineIcons:Ljava/util/List;

    invoke-virtual {p0}, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->getIcon()Lcom/android/launcher3/icons/FastBitmapDrawable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    :cond_2
    invoke-direct {p0}, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->getSlotMachineIconPlusSpacingSize()F

    move-result v0

    neg-float v0, v0

    iget-object v1, p0, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->mSlotMachineIcons:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    int-to-float v1, v1

    mul-float/2addr v0, v1

    .line 247
    .local v0, "finalTrans":F
    const/4 v1, 0x3

    new-array v1, v1, [Landroid/animation/Keyframe;

    .line 248
    const/4 v4, 0x0

    invoke-static {v4, v4}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v1, v5

    const v4, 0x3f51eb85    # 0.82f

    .line 249
    invoke-direct {p0}, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->getOutlineOffsetY()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    sub-float v6, v0, v6

    invoke-static {v4, v6}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v4

    aput-object v4, v1, v3

    const/high16 v4, 0x3f800000    # 1.0f

    .line 250
    invoke-static {v4, v0}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v4

    aput-object v4, v1, v2

    .line 252
    .local v1, "keyframes":[Landroid/animation/Keyframe;
    aget-object v4, v1, v3

    sget-object v6, Lcom/android/launcher3/anim/Interpolators;->ACCEL_DEACCEL:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v6}, Landroid/animation/Keyframe;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 253
    aget-object v2, v1, v2

    sget-object v4, Lcom/android/launcher3/anim/Interpolators;->ACCEL_DEACCEL:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v4}, Landroid/animation/Keyframe;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 255
    new-array v2, v3, [Landroid/animation/PropertyValuesHolder;

    sget-object v3, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->SLOT_MACHINE_TRANSLATION_Y:Landroid/util/FloatProperty;

    .line 256
    invoke-static {v3, v1}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Landroid/util/Property;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    aput-object v3, v2, v5

    .line 255
    invoke-static {p0, v2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->mSlotMachineAnim:Landroid/animation/Animator;

    .line 257
    new-instance v3, Lcom/android/launcher3/uioverrides/PredictedAppIcon$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0}, Lcom/android/launcher3/uioverrides/PredictedAppIcon$$ExternalSyntheticLambda2;-><init>(Lcom/android/launcher3/uioverrides/PredictedAppIcon;)V

    invoke-static {v3}, Lcom/android/launcher3/anim/AnimatorListeners;->forEndCallback(Ljava/lang/Runnable;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 263
    iget-object v2, p0, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->mSlotMachineAnim:Landroid/animation/Animator;

    return-object v2

    .line 230
    .end local v0    # "finalTrans":F
    .end local v1    # "keyframes":[Landroid/animation/Keyframe;
    :cond_3
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected drawDotIfNecessary(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 166
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->mIsDrawingDot:Z

    .line 167
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 168
    .local v0, "count":I
    invoke-virtual {p0}, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->getWidth()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    const v2, 0x3dc28f5c    # 0.095f

    mul-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->getHeight()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    mul-float/2addr v3, v2

    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 169
    const v1, 0x3f9851ec    # 1.19f

    invoke-virtual {p1, v1, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 170
    invoke-super {p0, p1}, Lcom/android/launcher3/views/DoubleShadowBubbleTextView;->drawDotIfNecessary(Landroid/graphics/Canvas;)V

    .line 171
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 172
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->mIsDrawingDot:Z

    .line 173
    return-void
.end method

.method public finishBinding(Landroid/view/View$OnLongClickListener;)V
    .locals 2
    .param p1, "longClickListener"    # Landroid/view/View$OnLongClickListener;

    .line 282
    invoke-virtual {p0, p1}, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 283
    invoke-virtual {p0}, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout$LayoutParams;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->canReorder:Z

    .line 284
    invoke-virtual {p0, v1}, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->setTextVisibility(Z)V

    .line 285
    invoke-virtual {p0}, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->verifyHighRes()V

    .line 286
    return-void
.end method

.method public getIconBounds(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "outBounds"    # Landroid/graphics/Rect;

    .line 290
    invoke-super {p0, p1}, Lcom/android/launcher3/views/DoubleShadowBubbleTextView;->getIconBounds(Landroid/graphics/Rect;)V

    .line 291
    iget-boolean v0, p0, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->mIsPinned:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->mIsDrawingDot:Z

    if-nez v0, :cond_0

    .line 292
    invoke-virtual {p0}, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->getIconSize()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3dc28f5c    # 0.095f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 293
    .local v0, "predictionInset":I
    invoke-virtual {p1, v0, v0}, Landroid/graphics/Rect;->inset(II)V

    .line 295
    .end local v0    # "predictionInset":I
    :cond_0
    return-void
.end method

.method public getSourceVisualDragBounds(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 364
    invoke-super {p0, p1}, Lcom/android/launcher3/views/DoubleShadowBubbleTextView;->getSourceVisualDragBounds(Landroid/graphics/Rect;)V

    .line 365
    iget-boolean v0, p0, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->mIsPinned:Z

    if-nez v0, :cond_0

    .line 366
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3dc28f5c    # 0.095f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 367
    .local v0, "internalSize":I
    invoke-virtual {p1, v0, v0}, Landroid/graphics/Rect;->inset(II)V

    .line 369
    .end local v0    # "internalSize":I
    :cond_0
    return-void
.end method

.method public isPinned()Z
    .locals 1

    .line 298
    iget-boolean v0, p0, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->mIsPinned:Z

    return v0
.end method

.method synthetic lambda$applyFromWorkspaceItem$0$com-android-launcher3-uioverrides-PredictedAppIcon(Landroid/animation/ValueAnimator;)V
    .locals 1
    .param p1, "valueAnimator"    # Landroid/animation/ValueAnimator;

    .line 199
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->mPlateColor:I

    .line 200
    invoke-virtual {p0}, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->invalidate()V

    .line 201
    return-void
.end method

.method synthetic lambda$createSlotMachineAnim$1$com-android-launcher3-uioverrides-PredictedAppIcon(Lcom/android/launcher3/icons/BitmapInfo;)Lcom/android/launcher3/icons/FastBitmapDrawable;
    .locals 2
    .param p1, "iconInfo"    # Lcom/android/launcher3/icons/BitmapInfo;

    .line 240
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/android/launcher3/icons/BitmapInfo;->newIcon(Landroid/content/Context;I)Lcom/android/launcher3/icons/FastBitmapDrawable;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$createSlotMachineAnim$2$com-android-launcher3-uioverrides-PredictedAppIcon()V
    .locals 1

    .line 258
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->mSlotMachineIcons:Ljava/util/List;

    .line 259
    iput-object v0, p0, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->mSlotMachineAnim:Landroid/animation/Animator;

    .line 260
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->mSlotMachineIconTranslationY:F

    .line 261
    invoke-virtual {p0}, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->invalidate()V

    .line 262
    return-void
.end method

.method synthetic lambda$prepareDrawDragView$3$com-android-launcher3-uioverrides-PredictedAppIcon(Lcom/android/launcher3/util/SafeCloseable;)V
    .locals 1
    .param p1, "r"    # Lcom/android/launcher3/util/SafeCloseable;

    .line 377
    invoke-interface {p1}, Lcom/android/launcher3/util/SafeCloseable;->close()V

    .line 378
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->mDrawForDrag:Z

    .line 379
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 131
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 132
    .local v0, "count":I
    iget-object v1, p0, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->mSlotMachineAnim:Landroid/animation/Animator;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 133
    .local v1, "isSlotMachineAnimRunning":Z
    :goto_0
    iget-boolean v2, p0, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->mIsPinned:Z

    if-nez v2, :cond_2

    .line 134
    invoke-direct {p0, p1}, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->drawEffect(Landroid/graphics/Canvas;)V

    .line 135
    if-eqz v1, :cond_1

    .line 137
    iget-object v2, p0, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->mRingPath:Landroid/graphics/Path;

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 139
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3dc28f5c    # 0.095f

    mul-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v3

    invoke-virtual {p1, v2, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 140
    const v2, 0x3f4f5c29    # 0.81f

    invoke-virtual {p1, v2, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 142
    :cond_2
    if-eqz v1, :cond_3

    .line 143
    invoke-direct {p0, p1}, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->drawSlotMachineIcons(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 145
    :cond_3
    invoke-super {p0, p1}, Lcom/android/launcher3/views/DoubleShadowBubbleTextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 147
    :goto_1
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 148
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 314
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/launcher3/views/DoubleShadowBubbleTextView;->onSizeChanged(IIII)V

    .line 315
    invoke-direct {p0}, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->updateRingPath()V

    .line 316
    return-void
.end method

.method public pin(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V
    .locals 2
    .param p1, "info"    # Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    .line 270
    iget-boolean v0, p0, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->mIsPinned:Z

    if-eqz v0, :cond_0

    return-void

    .line 271
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->mIsPinned:Z

    .line 272
    invoke-virtual {p0, p1}, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->applyFromWorkspaceItem(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    .line 273
    sget-object v1, Lcom/android/launcher3/touch/ItemLongClickListener;->INSTANCE_WORKSPACE:Landroid/view/View$OnLongClickListener;

    invoke-virtual {p0, v1}, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 274
    invoke-virtual {p0}, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/CellLayout$LayoutParams;

    iput-boolean v0, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->canReorder:Z

    .line 275
    invoke-virtual {p0}, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->invalidate()V

    .line 276
    return-void
.end method

.method public prepareDrawDragView()Lcom/android/launcher3/util/SafeCloseable;
    .locals 2

    .line 373
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->mDrawForDrag:Z

    .line 374
    invoke-virtual {p0}, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->invalidate()V

    .line 375
    invoke-super {p0}, Lcom/android/launcher3/views/DoubleShadowBubbleTextView;->prepareDrawDragView()Lcom/android/launcher3/util/SafeCloseable;

    move-result-object v0

    .line 376
    .local v0, "r":Lcom/android/launcher3/util/SafeCloseable;
    new-instance v1, Lcom/android/launcher3/uioverrides/PredictedAppIcon$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, v0}, Lcom/android/launcher3/uioverrides/PredictedAppIcon$$ExternalSyntheticLambda4;-><init>(Lcom/android/launcher3/uioverrides/PredictedAppIcon;Lcom/android/launcher3/util/SafeCloseable;)V

    return-object v1
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/Object;

    .line 320
    invoke-super {p0, p1}, Lcom/android/launcher3/views/DoubleShadowBubbleTextView;->setTag(Ljava/lang/Object;)V

    .line 321
    invoke-direct {p0}, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->updateRingPath()V

    .line 322
    return-void
.end method
