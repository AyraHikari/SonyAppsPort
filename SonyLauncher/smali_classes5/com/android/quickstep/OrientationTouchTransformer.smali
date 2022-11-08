.class Lcom/android/quickstep/OrientationTouchTransformer;
.super Ljava/lang/Object;
.source "OrientationTouchTransformer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quickstep/OrientationTouchTransformer$QuickStepContractInfo;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final QUICKSTEP_ROTATION_UNINITIALIZED:I = -0x1

.field private static final TAG:Ljava/lang/String; = "OrientationTouchTransformer"


# instance fields
.field private mActiveTouchRotation:I

.field private final mAssistantLeftRegion:Landroid/graphics/RectF;

.field private final mAssistantRightRegion:Landroid/graphics/RectF;

.field private mCachedDisplayInfo:Lcom/android/launcher3/util/window/CachedDisplayInfo;

.field private mContractInfo:Lcom/android/quickstep/OrientationTouchTransformer$QuickStepContractInfo;

.field private mEnableMultipleRegions:Z

.field private mLastRectTouched:Lcom/android/quickstep/OrientationRectF;

.field private mMode:Lcom/android/launcher3/util/DisplayController$NavigationMode;

.field private mNavBarGesturalHeight:I

.field private final mNavBarLargerGesturalHeight:I

.field private final mOneHandedModeRegion:Landroid/graphics/RectF;

.field private mQuickStepStartingRotation:I

.field private mResources:Landroid/content/res/Resources;

.field private final mSwipeTouchRegions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/launcher3/util/window/CachedDisplayInfo;",
            "Lcom/android/quickstep/OrientationRectF;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/res/Resources;Lcom/android/launcher3/util/DisplayController$NavigationMode;Lcom/android/quickstep/OrientationTouchTransformer$QuickStepContractInfo;)V
    .locals 2
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "mode"    # Lcom/android/launcher3/util/DisplayController$NavigationMode;
    .param p3, "contractInfo"    # Lcom/android/quickstep/OrientationTouchTransformer$QuickStepContractInfo;

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/OrientationTouchTransformer;->mSwipeTouchRegions:Ljava/util/Map;

    .line 61
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/OrientationTouchTransformer;->mAssistantLeftRegion:Landroid/graphics/RectF;

    .line 62
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/OrientationTouchTransformer;->mAssistantRightRegion:Landroid/graphics/RectF;

    .line 63
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/OrientationTouchTransformer;->mOneHandedModeRegion:Landroid/graphics/RectF;

    .line 64
    new-instance v0, Lcom/android/launcher3/util/window/CachedDisplayInfo;

    invoke-direct {v0}, Lcom/android/launcher3/util/window/CachedDisplayInfo;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/OrientationTouchTransformer;->mCachedDisplayInfo:Lcom/android/launcher3/util/window/CachedDisplayInfo;

    .line 93
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/quickstep/OrientationTouchTransformer;->mQuickStepStartingRotation:I

    .line 103
    iput-object p1, p0, Lcom/android/quickstep/OrientationTouchTransformer;->mResources:Landroid/content/res/Resources;

    .line 104
    iput-object p2, p0, Lcom/android/quickstep/OrientationTouchTransformer;->mMode:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    .line 105
    iput-object p3, p0, Lcom/android/quickstep/OrientationTouchTransformer;->mContractInfo:Lcom/android/quickstep/OrientationTouchTransformer$QuickStepContractInfo;

    .line 106
    const-string v0, "navigation_bar_gesture_height"

    invoke-direct {p0, v0}, Lcom/android/quickstep/OrientationTouchTransformer;->getNavbarSize(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/quickstep/OrientationTouchTransformer;->mNavBarGesturalHeight:I

    .line 107
    const-string v1, "navigation_bar_gesture_larger_height"

    invoke-static {v1, p1, v0}, Lcom/android/launcher3/ResourceUtils;->getDimenByName(Ljava/lang/String;Landroid/content/res/Resources;I)I

    move-result v0

    iput v0, p0, Lcom/android/quickstep/OrientationTouchTransformer;->mNavBarLargerGesturalHeight:I

    .line 110
    return-void
.end method

.method private createRegionForDisplay(Lcom/android/launcher3/util/DisplayController$Info;)Lcom/android/quickstep/OrientationRectF;
    .locals 10
    .param p1, "display"    # Lcom/android/launcher3/util/DisplayController$Info;

    .line 238
    iget-object v0, p1, Lcom/android/launcher3/util/DisplayController$Info;->currentSize:Landroid/graphics/Point;

    .line 239
    .local v0, "size":Landroid/graphics/Point;
    iget v7, p1, Lcom/android/launcher3/util/DisplayController$Info;->rotation:I

    .line 240
    .local v7, "rotation":I
    iget v8, p0, Lcom/android/quickstep/OrientationTouchTransformer;->mNavBarGesturalHeight:I

    .line 241
    .local v8, "touchHeight":I
    new-instance v9, Lcom/android/quickstep/OrientationRectF;

    iget v1, v0, Landroid/graphics/Point;->x:I

    int-to-float v4, v1

    iget v1, v0, Landroid/graphics/Point;->y:I

    int-to-float v5, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, v9

    move v6, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/quickstep/OrientationRectF;-><init>(FFFFI)V

    .line 242
    .local v1, "orientationRectF":Lcom/android/quickstep/OrientationRectF;
    iget-object v2, p0, Lcom/android/quickstep/OrientationTouchTransformer;->mMode:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    sget-object v3, Lcom/android/launcher3/util/DisplayController$NavigationMode;->NO_BUTTON:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    if-ne v2, v3, :cond_0

    .line 243
    iget v2, v1, Lcom/android/quickstep/OrientationRectF;->bottom:F

    int-to-float v3, v8

    sub-float/2addr v2, v3

    iput v2, v1, Lcom/android/quickstep/OrientationRectF;->top:F

    .line 244
    invoke-direct {p0, v1}, Lcom/android/quickstep/OrientationTouchTransformer;->updateAssistantRegions(Lcom/android/quickstep/OrientationRectF;)V

    goto :goto_0

    .line 246
    :cond_0
    iget-object v2, p0, Lcom/android/quickstep/OrientationTouchTransformer;->mAssistantLeftRegion:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->setEmpty()V

    .line 247
    iget-object v2, p0, Lcom/android/quickstep/OrientationTouchTransformer;->mAssistantRightRegion:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->setEmpty()V

    .line 248
    const-string v2, "navigation_bar_width"

    invoke-direct {p0, v2}, Lcom/android/quickstep/OrientationTouchTransformer;->getNavbarSize(Ljava/lang/String;)I

    move-result v2

    .line 249
    .local v2, "navbarSize":I
    packed-switch v7, :pswitch_data_0

    .line 259
    :pswitch_0
    iget v3, v1, Lcom/android/quickstep/OrientationRectF;->bottom:F

    int-to-float v4, v8

    sub-float/2addr v3, v4

    iput v3, v1, Lcom/android/quickstep/OrientationRectF;->top:F

    goto :goto_0

    .line 255
    :pswitch_1
    iget v3, v1, Lcom/android/quickstep/OrientationRectF;->left:F

    int-to-float v4, v2

    add-float/2addr v3, v4

    iput v3, v1, Lcom/android/quickstep/OrientationRectF;->right:F

    .line 257
    goto :goto_0

    .line 251
    :pswitch_2
    iget v3, v1, Lcom/android/quickstep/OrientationRectF;->right:F

    int-to-float v4, v2

    sub-float/2addr v3, v4

    iput v3, v1, Lcom/android/quickstep/OrientationRectF;->left:F

    .line 253
    nop

    .line 263
    .end local v2    # "navbarSize":I
    :goto_0
    iget-object v2, p0, Lcom/android/quickstep/OrientationTouchTransformer;->mOneHandedModeRegion:Landroid/graphics/RectF;

    const/4 v3, 0x0

    iget v4, v1, Lcom/android/quickstep/OrientationRectF;->bottom:F

    iget v5, p0, Lcom/android/quickstep/OrientationTouchTransformer;->mNavBarLargerGesturalHeight:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iget v5, v0, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    iget v6, v0, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 266
    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getNavbarSize(Ljava/lang/String;)I
    .locals 1
    .param p1, "resName"    # Ljava/lang/String;

    .line 295
    iget-object v0, p0, Lcom/android/quickstep/OrientationTouchTransformer;->mResources:Landroid/content/res/Resources;

    invoke-static {p1, v0}, Lcom/android/launcher3/ResourceUtils;->getNavbarSize(Ljava/lang/String;Landroid/content/res/Resources;)I

    move-result v0

    return v0
.end method

.method private refreshTouchRegion(Lcom/android/launcher3/util/DisplayController$Info;Landroid/content/res/Resources;)V
    .locals 1
    .param p1, "info"    # Lcom/android/launcher3/util/DisplayController$Info;
    .param p2, "newRes"    # Landroid/content/res/Resources;

    .line 116
    iput-object p2, p0, Lcom/android/quickstep/OrientationTouchTransformer;->mResources:Landroid/content/res/Resources;

    .line 117
    iget-object v0, p0, Lcom/android/quickstep/OrientationTouchTransformer;->mSwipeTouchRegions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 118
    invoke-direct {p0, p1}, Lcom/android/quickstep/OrientationTouchTransformer;->resetSwipeRegions(Lcom/android/launcher3/util/DisplayController$Info;)V

    .line 119
    return-void
.end method

.method private resetSwipeRegions()V
    .locals 3

    .line 224
    iget-object v0, p0, Lcom/android/quickstep/OrientationTouchTransformer;->mSwipeTouchRegions:Ljava/util/Map;

    iget-object v1, p0, Lcom/android/quickstep/OrientationTouchTransformer;->mCachedDisplayInfo:Lcom/android/launcher3/util/window/CachedDisplayInfo;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/OrientationRectF;

    .line 225
    .local v0, "regionToKeep":Lcom/android/quickstep/OrientationRectF;
    iget-object v1, p0, Lcom/android/quickstep/OrientationTouchTransformer;->mSwipeTouchRegions:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 226
    if-eqz v0, :cond_0

    .line 227
    iget-object v1, p0, Lcom/android/quickstep/OrientationTouchTransformer;->mSwipeTouchRegions:Ljava/util/Map;

    iget-object v2, p0, Lcom/android/quickstep/OrientationTouchTransformer;->mCachedDisplayInfo:Lcom/android/launcher3/util/window/CachedDisplayInfo;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    invoke-direct {p0, v0}, Lcom/android/quickstep/OrientationTouchTransformer;->updateAssistantRegions(Lcom/android/quickstep/OrientationRectF;)V

    .line 230
    :cond_0
    return-void
.end method

.method private resetSwipeRegions(Lcom/android/launcher3/util/DisplayController$Info;)V
    .locals 3
    .param p1, "region"    # Lcom/android/launcher3/util/DisplayController$Info;

    .line 213
    new-instance v0, Lcom/android/launcher3/util/window/CachedDisplayInfo;

    iget-object v1, p1, Lcom/android/launcher3/util/DisplayController$Info;->currentSize:Landroid/graphics/Point;

    iget v2, p1, Lcom/android/launcher3/util/DisplayController$Info;->rotation:I

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/util/window/CachedDisplayInfo;-><init>(Landroid/graphics/Point;I)V

    iput-object v0, p0, Lcom/android/quickstep/OrientationTouchTransformer;->mCachedDisplayInfo:Lcom/android/launcher3/util/window/CachedDisplayInfo;

    .line 214
    iget-object v1, p0, Lcom/android/quickstep/OrientationTouchTransformer;->mSwipeTouchRegions:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/OrientationRectF;

    .line 215
    .local v0, "regionToKeep":Lcom/android/quickstep/OrientationRectF;
    if-nez v0, :cond_0

    .line 216
    invoke-direct {p0, p1}, Lcom/android/quickstep/OrientationTouchTransformer;->createRegionForDisplay(Lcom/android/launcher3/util/DisplayController$Info;)Lcom/android/quickstep/OrientationRectF;

    move-result-object v0

    .line 218
    :cond_0
    iget-object v1, p0, Lcom/android/quickstep/OrientationTouchTransformer;->mSwipeTouchRegions:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 219
    iget-object v1, p0, Lcom/android/quickstep/OrientationTouchTransformer;->mSwipeTouchRegions:Ljava/util/Map;

    iget-object v2, p0, Lcom/android/quickstep/OrientationTouchTransformer;->mCachedDisplayInfo:Lcom/android/launcher3/util/window/CachedDisplayInfo;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    invoke-direct {p0, v0}, Lcom/android/quickstep/OrientationTouchTransformer;->updateAssistantRegions(Lcom/android/quickstep/OrientationRectF;)V

    .line 221
    return-void
.end method

.method private updateAssistantRegions(Lcom/android/quickstep/OrientationRectF;)V
    .locals 6
    .param p1, "orientationRectF"    # Lcom/android/quickstep/OrientationRectF;

    .line 270
    const-string v0, "navigation_bar_gesture_height"

    invoke-direct {p0, v0}, Lcom/android/quickstep/OrientationTouchTransformer;->getNavbarSize(Ljava/lang/String;)I

    move-result v0

    .line 271
    .local v0, "navbarHeight":I
    iget-object v1, p0, Lcom/android/quickstep/OrientationTouchTransformer;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/android/launcher3/R$dimen;->gestures_assistant_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 272
    .local v1, "assistantWidth":I
    int-to-float v2, v0

    iget-object v3, p0, Lcom/android/quickstep/OrientationTouchTransformer;->mContractInfo:Lcom/android/quickstep/OrientationTouchTransformer$QuickStepContractInfo;

    invoke-interface {v3}, Lcom/android/quickstep/OrientationTouchTransformer$QuickStepContractInfo;->getWindowCornerRadius()F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 273
    .local v2, "assistantHeight":F
    iget-object v3, p0, Lcom/android/quickstep/OrientationTouchTransformer;->mAssistantLeftRegion:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/android/quickstep/OrientationTouchTransformer;->mAssistantRightRegion:Landroid/graphics/RectF;

    iget v5, p1, Lcom/android/quickstep/OrientationRectF;->bottom:F

    iput v5, v4, Landroid/graphics/RectF;->bottom:F

    iput v5, v3, Landroid/graphics/RectF;->bottom:F

    .line 274
    iget-object v3, p0, Lcom/android/quickstep/OrientationTouchTransformer;->mAssistantLeftRegion:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/android/quickstep/OrientationTouchTransformer;->mAssistantRightRegion:Landroid/graphics/RectF;

    iget v5, p1, Lcom/android/quickstep/OrientationRectF;->bottom:F

    sub-float/2addr v5, v2

    iput v5, v4, Landroid/graphics/RectF;->top:F

    iput v5, v3, Landroid/graphics/RectF;->top:F

    .line 277
    iget-object v3, p0, Lcom/android/quickstep/OrientationTouchTransformer;->mAssistantLeftRegion:Landroid/graphics/RectF;

    const/4 v4, 0x0

    iput v4, v3, Landroid/graphics/RectF;->left:F

    .line 278
    iget-object v3, p0, Lcom/android/quickstep/OrientationTouchTransformer;->mAssistantLeftRegion:Landroid/graphics/RectF;

    int-to-float v4, v1

    iput v4, v3, Landroid/graphics/RectF;->right:F

    .line 280
    iget-object v3, p0, Lcom/android/quickstep/OrientationTouchTransformer;->mAssistantRightRegion:Landroid/graphics/RectF;

    iget v4, p1, Lcom/android/quickstep/OrientationRectF;->right:F

    iput v4, v3, Landroid/graphics/RectF;->right:F

    .line 281
    iget-object v3, p0, Lcom/android/quickstep/OrientationTouchTransformer;->mAssistantRightRegion:Landroid/graphics/RectF;

    iget v4, p1, Lcom/android/quickstep/OrientationRectF;->right:F

    int-to-float v5, v1

    sub-float/2addr v4, v5

    iput v4, v3, Landroid/graphics/RectF;->left:F

    .line 282
    return-void
.end method


# virtual methods
.method createOrAddTouchRegion(Lcom/android/launcher3/util/DisplayController$Info;)V
    .locals 4
    .param p1, "info"    # Lcom/android/launcher3/util/DisplayController$Info;

    .line 149
    new-instance v0, Lcom/android/launcher3/util/window/CachedDisplayInfo;

    iget-object v1, p1, Lcom/android/launcher3/util/DisplayController$Info;->currentSize:Landroid/graphics/Point;

    iget v2, p1, Lcom/android/launcher3/util/DisplayController$Info;->rotation:I

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/util/window/CachedDisplayInfo;-><init>(Landroid/graphics/Point;I)V

    iput-object v0, p0, Lcom/android/quickstep/OrientationTouchTransformer;->mCachedDisplayInfo:Lcom/android/launcher3/util/window/CachedDisplayInfo;

    .line 151
    iget v1, p0, Lcom/android/quickstep/OrientationTouchTransformer;->mQuickStepStartingRotation:I

    const/4 v2, -0x1

    if-le v1, v2, :cond_0

    iget v0, v0, Lcom/android/launcher3/util/window/CachedDisplayInfo;->rotation:I

    iget v1, p0, Lcom/android/quickstep/OrientationTouchTransformer;->mQuickStepStartingRotation:I

    if-ne v0, v1, :cond_0

    .line 155
    invoke-direct {p0, p1}, Lcom/android/quickstep/OrientationTouchTransformer;->resetSwipeRegions(Lcom/android/launcher3/util/DisplayController$Info;)V

    .line 156
    return-void

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/OrientationTouchTransformer;->mSwipeTouchRegions:Ljava/util/Map;

    iget-object v1, p0, Lcom/android/quickstep/OrientationTouchTransformer;->mCachedDisplayInfo:Lcom/android/launcher3/util/window/CachedDisplayInfo;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/OrientationRectF;

    .line 159
    .local v0, "region":Lcom/android/quickstep/OrientationRectF;
    if-eqz v0, :cond_1

    .line 160
    return-void

    .line 163
    :cond_1
    iget-boolean v1, p0, Lcom/android/quickstep/OrientationTouchTransformer;->mEnableMultipleRegions:Z

    if-eqz v1, :cond_2

    .line 164
    iget-object v1, p0, Lcom/android/quickstep/OrientationTouchTransformer;->mSwipeTouchRegions:Ljava/util/Map;

    iget-object v2, p0, Lcom/android/quickstep/OrientationTouchTransformer;->mCachedDisplayInfo:Lcom/android/launcher3/util/window/CachedDisplayInfo;

    invoke-direct {p0, p1}, Lcom/android/quickstep/OrientationTouchTransformer;->createRegionForDisplay(Lcom/android/launcher3/util/DisplayController$Info;)Lcom/android/quickstep/OrientationRectF;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 166
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/quickstep/OrientationTouchTransformer;->resetSwipeRegions(Lcom/android/launcher3/util/DisplayController$Info;)V

    .line 168
    :goto_0
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 6
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 391
    const-string v0, "OrientationTouchTransformerState: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 392
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  currentActiveRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/quickstep/OrientationTouchTransformer;->getCurrentActiveRotation()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 393
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  lastTouchedRegion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/OrientationTouchTransformer;->mLastRectTouched:Lcom/android/quickstep/OrientationRectF;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 394
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  multipleRegionsEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/quickstep/OrientationTouchTransformer;->mEnableMultipleRegions:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 395
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  currentTouchableRotations="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 396
    .local v0, "regions":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/quickstep/OrientationTouchTransformer;->mSwipeTouchRegions:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/util/window/CachedDisplayInfo;

    .line 397
    .local v2, "key":Lcom/android/launcher3/util/window/CachedDisplayInfo;
    iget-object v3, p0, Lcom/android/quickstep/OrientationTouchTransformer;->mSwipeTouchRegions:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/quickstep/OrientationRectF;

    .line 398
    .local v3, "rectF":Lcom/android/quickstep/OrientationRectF;
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    .end local v2    # "key":Lcom/android/launcher3/util/window/CachedDisplayInfo;
    .end local v3    # "rectF":Lcom/android/quickstep/OrientationRectF;
    goto :goto_0

    .line 400
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 401
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mNavBarGesturalHeight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/quickstep/OrientationTouchTransformer;->mNavBarGesturalHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 402
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mNavBarLargerGesturalHeight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/quickstep/OrientationTouchTransformer;->mNavBarLargerGesturalHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 403
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mOneHandedModeRegion="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/quickstep/OrientationTouchTransformer;->mOneHandedModeRegion:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 404
    return-void
.end method

.method enableMultipleRegions(ZLcom/android/launcher3/util/DisplayController$Info;)V
    .locals 3
    .param p1, "enableMultipleRegions"    # Z
    .param p2, "info"    # Lcom/android/launcher3/util/DisplayController$Info;

    .line 178
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/quickstep/OrientationTouchTransformer;->mMode:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    sget-object v2, Lcom/android/launcher3/util/DisplayController$NavigationMode;->TWO_BUTTONS:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iput-boolean v1, p0, Lcom/android/quickstep/OrientationTouchTransformer;->mEnableMultipleRegions:Z

    .line 179
    if-eqz v1, :cond_1

    .line 180
    iget v0, p2, Lcom/android/launcher3/util/DisplayController$Info;->rotation:I

    iput v0, p0, Lcom/android/quickstep/OrientationTouchTransformer;->mQuickStepStartingRotation:I

    goto :goto_1

    .line 182
    :cond_1
    iput v0, p0, Lcom/android/quickstep/OrientationTouchTransformer;->mActiveTouchRotation:I

    .line 183
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/quickstep/OrientationTouchTransformer;->mQuickStepStartingRotation:I

    .line 185
    :goto_1
    invoke-direct {p0, p2}, Lcom/android/quickstep/OrientationTouchTransformer;->resetSwipeRegions(Lcom/android/launcher3/util/DisplayController$Info;)V

    .line 186
    return-void
.end method

.method getCurrentActiveRotation()I
    .locals 1

    .line 310
    iget v0, p0, Lcom/android/quickstep/OrientationTouchTransformer;->mActiveTouchRotation:I

    return v0
.end method

.method getQuickStepStartingRotation()I
    .locals 1

    .line 314
    iget v0, p0, Lcom/android/quickstep/OrientationTouchTransformer;->mQuickStepStartingRotation:I

    return v0
.end method

.method setGesturalHeight(ILcom/android/launcher3/util/DisplayController$Info;Landroid/content/res/Resources;)V
    .locals 1
    .param p1, "newGesturalHeight"    # I
    .param p2, "info"    # Lcom/android/launcher3/util/DisplayController$Info;
    .param p3, "newRes"    # Landroid/content/res/Resources;

    .line 133
    iget v0, p0, Lcom/android/quickstep/OrientationTouchTransformer;->mNavBarGesturalHeight:I

    if-ne v0, p1, :cond_0

    .line 134
    return-void

    .line 136
    :cond_0
    iput p1, p0, Lcom/android/quickstep/OrientationTouchTransformer;->mNavBarGesturalHeight:I

    .line 137
    invoke-direct {p0, p2, p3}, Lcom/android/quickstep/OrientationTouchTransformer;->refreshTouchRegion(Lcom/android/launcher3/util/DisplayController$Info;Landroid/content/res/Resources;)V

    .line 138
    return-void
.end method

.method setNavigationMode(Lcom/android/launcher3/util/DisplayController$NavigationMode;Lcom/android/launcher3/util/DisplayController$Info;Landroid/content/res/Resources;)V
    .locals 1
    .param p1, "newMode"    # Lcom/android/launcher3/util/DisplayController$NavigationMode;
    .param p2, "info"    # Lcom/android/launcher3/util/DisplayController$Info;
    .param p3, "newRes"    # Landroid/content/res/Resources;

    .line 125
    iget-object v0, p0, Lcom/android/quickstep/OrientationTouchTransformer;->mMode:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    if-ne v0, p1, :cond_0

    .line 126
    return-void

    .line 128
    :cond_0
    iput-object p1, p0, Lcom/android/quickstep/OrientationTouchTransformer;->mMode:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    .line 129
    invoke-direct {p0, p2, p3}, Lcom/android/quickstep/OrientationTouchTransformer;->refreshTouchRegion(Lcom/android/launcher3/util/DisplayController$Info;Landroid/content/res/Resources;)V

    .line 130
    return-void
.end method

.method setSingleActiveRegion(Lcom/android/launcher3/util/DisplayController$Info;)V
    .locals 1
    .param p1, "displayInfo"    # Lcom/android/launcher3/util/DisplayController$Info;

    .line 198
    iget v0, p1, Lcom/android/launcher3/util/DisplayController$Info;->rotation:I

    iput v0, p0, Lcom/android/quickstep/OrientationTouchTransformer;->mActiveTouchRotation:I

    .line 199
    invoke-direct {p0, p1}, Lcom/android/quickstep/OrientationTouchTransformer;->resetSwipeRegions(Lcom/android/launcher3/util/DisplayController$Info;)V

    .line 200
    return-void
.end method

.method touchInAssistantRegion(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 285
    iget-object v0, p0, Lcom/android/quickstep/OrientationTouchTransformer;->mAssistantLeftRegion:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/quickstep/OrientationTouchTransformer;->mAssistantRightRegion:Landroid/graphics/RectF;

    .line 286
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 285
    :goto_1
    return v0
.end method

.method touchInOneHandedModeRegion(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 291
    iget-object v0, p0, Lcom/android/quickstep/OrientationTouchTransformer;->mOneHandedModeRegion:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    return v0
.end method

.method touchInValidSwipeRegions(FF)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 303
    iget-object v0, p0, Lcom/android/quickstep/OrientationTouchTransformer;->mLastRectTouched:Lcom/android/quickstep/OrientationRectF;

    if-eqz v0, :cond_0

    .line 304
    invoke-virtual {v0, p1, p2}, Lcom/android/quickstep/OrientationRectF;->contains(FF)Z

    move-result v0

    return v0

    .line 306
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public transform(Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 318
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 319
    .local v0, "eventAction":I
    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_2

    .line 321
    :pswitch_1
    iget-object v2, p0, Lcom/android/quickstep/OrientationTouchTransformer;->mLastRectTouched:Lcom/android/quickstep/OrientationRectF;

    if-nez v2, :cond_0

    .line 322
    return-void

    .line 324
    :cond_0
    sget-boolean v2, Lcom/android/quickstep/TaskAnimationManager;->SHELL_TRANSITIONS_ROTATION:Z

    if-eqz v2, :cond_1

    .line 325
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSurfaceRotation()I

    move-result v2

    iget v3, p0, Lcom/android/quickstep/OrientationTouchTransformer;->mActiveTouchRotation:I

    if-eq v2, v3, :cond_9

    .line 328
    iget-object v2, p0, Lcom/android/quickstep/OrientationTouchTransformer;->mLastRectTouched:Lcom/android/quickstep/OrientationRectF;

    .line 329
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSurfaceRotation()I

    move-result v3

    iget v4, p0, Lcom/android/quickstep/OrientationTouchTransformer;->mActiveTouchRotation:I

    invoke-static {v3, v4}, Lcom/android/launcher3/states/RotationHelper;->deltaRotation(II)I

    move-result v3

    .line 328
    invoke-virtual {v2, p1, v3, v1}, Lcom/android/quickstep/OrientationRectF;->applyTransform(Landroid/view/MotionEvent;IZ)Z

    goto/16 :goto_2

    .line 333
    :cond_1
    iget-object v2, p0, Lcom/android/quickstep/OrientationTouchTransformer;->mLastRectTouched:Lcom/android/quickstep/OrientationRectF;

    iget-object v3, p0, Lcom/android/quickstep/OrientationTouchTransformer;->mCachedDisplayInfo:Lcom/android/launcher3/util/window/CachedDisplayInfo;

    iget v3, v3, Lcom/android/launcher3/util/window/CachedDisplayInfo;->rotation:I

    invoke-virtual {v2, p1, v3, v1}, Lcom/android/quickstep/OrientationRectF;->applyTransformFromRotation(Landroid/view/MotionEvent;IZ)Z

    .line 336
    goto/16 :goto_2

    .line 340
    :pswitch_2
    iget-object v2, p0, Lcom/android/quickstep/OrientationTouchTransformer;->mLastRectTouched:Lcom/android/quickstep/OrientationRectF;

    if-nez v2, :cond_2

    .line 341
    return-void

    .line 343
    :cond_2
    sget-boolean v2, Lcom/android/quickstep/TaskAnimationManager;->SHELL_TRANSITIONS_ROTATION:Z

    if-eqz v2, :cond_3

    .line 344
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSurfaceRotation()I

    move-result v2

    iget v3, p0, Lcom/android/quickstep/OrientationTouchTransformer;->mActiveTouchRotation:I

    if-eq v2, v3, :cond_4

    .line 347
    iget-object v2, p0, Lcom/android/quickstep/OrientationTouchTransformer;->mLastRectTouched:Lcom/android/quickstep/OrientationRectF;

    .line 348
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSurfaceRotation()I

    move-result v3

    iget v4, p0, Lcom/android/quickstep/OrientationTouchTransformer;->mActiveTouchRotation:I

    invoke-static {v3, v4}, Lcom/android/launcher3/states/RotationHelper;->deltaRotation(II)I

    move-result v3

    .line 347
    invoke-virtual {v2, p1, v3, v1}, Lcom/android/quickstep/OrientationRectF;->applyTransform(Landroid/view/MotionEvent;IZ)Z

    goto :goto_0

    .line 352
    :cond_3
    iget-object v2, p0, Lcom/android/quickstep/OrientationTouchTransformer;->mLastRectTouched:Lcom/android/quickstep/OrientationRectF;

    iget-object v3, p0, Lcom/android/quickstep/OrientationTouchTransformer;->mCachedDisplayInfo:Lcom/android/launcher3/util/window/CachedDisplayInfo;

    iget v3, v3, Lcom/android/launcher3/util/window/CachedDisplayInfo;->rotation:I

    invoke-virtual {v2, p1, v3, v1}, Lcom/android/quickstep/OrientationRectF;->applyTransformFromRotation(Landroid/view/MotionEvent;IZ)Z

    .line 355
    :cond_4
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/quickstep/OrientationTouchTransformer;->mLastRectTouched:Lcom/android/quickstep/OrientationRectF;

    .line 356
    goto :goto_2

    .line 360
    :pswitch_3
    iget-object v1, p0, Lcom/android/quickstep/OrientationTouchTransformer;->mLastRectTouched:Lcom/android/quickstep/OrientationRectF;

    if-eqz v1, :cond_5

    .line 361
    return-void

    .line 364
    :cond_5
    iget-object v1, p0, Lcom/android/quickstep/OrientationTouchTransformer;->mSwipeTouchRegions:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/quickstep/OrientationRectF;

    .line 365
    .local v2, "rect":Lcom/android/quickstep/OrientationRectF;
    if-nez v2, :cond_6

    .line 366
    goto :goto_1

    .line 368
    :cond_6
    iget-object v3, p0, Lcom/android/quickstep/OrientationTouchTransformer;->mCachedDisplayInfo:Lcom/android/launcher3/util/window/CachedDisplayInfo;

    iget v3, v3, Lcom/android/launcher3/util/window/CachedDisplayInfo;->rotation:I

    const/4 v4, 0x0

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/quickstep/OrientationRectF;->applyTransformFromRotation(Landroid/view/MotionEvent;IZ)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 370
    iput-object v2, p0, Lcom/android/quickstep/OrientationTouchTransformer;->mLastRectTouched:Lcom/android/quickstep/OrientationRectF;

    .line 371
    invoke-virtual {v2}, Lcom/android/quickstep/OrientationRectF;->getRotation()I

    move-result v1

    iput v1, p0, Lcom/android/quickstep/OrientationTouchTransformer;->mActiveTouchRotation:I

    .line 372
    iget-boolean v1, p0, Lcom/android/quickstep/OrientationTouchTransformer;->mEnableMultipleRegions:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/quickstep/OrientationTouchTransformer;->mCachedDisplayInfo:Lcom/android/launcher3/util/window/CachedDisplayInfo;

    iget v1, v1, Lcom/android/launcher3/util/window/CachedDisplayInfo;->rotation:I

    iget v3, p0, Lcom/android/quickstep/OrientationTouchTransformer;->mActiveTouchRotation:I

    if-ne v1, v3, :cond_7

    .line 376
    iget-object v1, p0, Lcom/android/quickstep/OrientationTouchTransformer;->mLastRectTouched:Lcom/android/quickstep/OrientationRectF;

    invoke-virtual {v1}, Lcom/android/quickstep/OrientationRectF;->getRotation()I

    move-result v1

    iput v1, p0, Lcom/android/quickstep/OrientationTouchTransformer;->mQuickStepStartingRotation:I

    .line 377
    invoke-direct {p0}, Lcom/android/quickstep/OrientationTouchTransformer;->resetSwipeRegions()V

    .line 382
    :cond_7
    return-void

    .line 384
    .end local v2    # "rect":Lcom/android/quickstep/OrientationRectF;
    :cond_8
    goto :goto_1

    .line 388
    :cond_9
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
