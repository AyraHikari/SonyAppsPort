.class public Lcom/android/quickstep/util/AnimatorControllerWithResistance;
.super Ljava/lang/Object;
.source "AnimatorControllerWithResistance.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsParams;,
        Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsResistanceParams;
    }
.end annotation


# static fields
.field private static final RECENTS_SCALE_RESIST_INTERPOLATOR:Landroid/animation/TimeInterpolator;

.field private static final RECENTS_TRANSLATE_RESIST_INTERPOLATOR:Landroid/animation/TimeInterpolator;


# instance fields
.field private mLastNormalProgress:F

.field private mLastResistProgress:F

.field private final mNormalController:Lcom/android/launcher3/anim/AnimatorPlaybackController;

.field private final mResistanceController:Lcom/android/launcher3/anim/AnimatorPlaybackController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 86
    sget-object v0, Lcom/android/launcher3/anim/Interpolators;->DEACCEL:Landroid/view/animation/Interpolator;

    sput-object v0, Lcom/android/quickstep/util/AnimatorControllerWithResistance;->RECENTS_SCALE_RESIST_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 87
    sget-object v0, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    sput-object v0, Lcom/android/quickstep/util/AnimatorControllerWithResistance;->RECENTS_TRANSLATE_RESIST_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/anim/AnimatorPlaybackController;Lcom/android/launcher3/anim/AnimatorPlaybackController;)V
    .locals 1
    .param p1, "normalController"    # Lcom/android/launcher3/anim/AnimatorPlaybackController;
    .param p2, "resistanceController"    # Lcom/android/launcher3/anim/AnimatorPlaybackController;

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/quickstep/util/AnimatorControllerWithResistance;->mLastNormalProgress:F

    .line 98
    iput-object p1, p0, Lcom/android/quickstep/util/AnimatorControllerWithResistance;->mNormalController:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    .line 99
    iput-object p2, p0, Lcom/android/quickstep/util/AnimatorControllerWithResistance;->mResistanceController:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    .line 100
    return-void
.end method

.method public static createForRecents(Lcom/android/launcher3/anim/AnimatorPlaybackController;Landroid/content/Context;Lcom/android/quickstep/util/RecentsOrientedState;Lcom/android/launcher3/DeviceProfile;Ljava/lang/Object;Landroid/util/FloatProperty;Ljava/lang/Object;Landroid/util/FloatProperty;)Lcom/android/quickstep/util/AnimatorControllerWithResistance;
    .locals 10
    .param p0, "normalController"    # Lcom/android/launcher3/anim/AnimatorPlaybackController;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "recentsOrientedState"    # Lcom/android/quickstep/util/RecentsOrientedState;
    .param p3, "dp"    # Lcom/android/launcher3/DeviceProfile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<SCA",
            "LE:Ljava/lang/Object;",
            "TRANS",
            "LATION:Ljava/lang/Object;",
            ">(",
            "Lcom/android/launcher3/anim/AnimatorPlaybackController;",
            "Landroid/content/Context;",
            "Lcom/android/quickstep/util/RecentsOrientedState;",
            "Lcom/android/launcher3/DeviceProfile;",
            "TSCA",
            "LE;",
            "Landroid/util/FloatProperty<",
            "TSCA",
            "LE;",
            ">;TTRANS",
            "LATION;",
            "Landroid/util/FloatProperty<",
            "TTRANS",
            "LATION;",
            ">;)",
            "Lcom/android/quickstep/util/AnimatorControllerWithResistance;"
        }
    .end annotation

    .line 144
    .local p4, "scaleTarget":Ljava/lang/Object;, "TSCALE;"
    .local p5, "scaleProperty":Landroid/util/FloatProperty;, "Landroid/util/FloatProperty<TSCALE;>;"
    .local p6, "translationTarget":Ljava/lang/Object;, "TTRANSLATION;"
    .local p7, "translationProperty":Landroid/util/FloatProperty;, "Landroid/util/FloatProperty<TTRANSLATION;>;"
    new-instance v9, Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsParams;

    const/4 v8, 0x0

    move-object v0, v9

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsParams;-><init>(Landroid/content/Context;Lcom/android/quickstep/util/RecentsOrientedState;Lcom/android/launcher3/DeviceProfile;Ljava/lang/Object;Landroid/util/FloatProperty;Ljava/lang/Object;Landroid/util/FloatProperty;Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsParams-IA;)V

    .line 146
    .local v0, "params":Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsParams;
    invoke-static {v0}, Lcom/android/quickstep/util/AnimatorControllerWithResistance;->createRecentsResistanceAnim(Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsParams;)Lcom/android/launcher3/anim/PendingAnimation;

    move-result-object v1

    .line 148
    .local v1, "resistAnim":Lcom/android/launcher3/anim/PendingAnimation;
    invoke-virtual {v1}, Lcom/android/launcher3/anim/PendingAnimation;->createPlaybackController()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object v2

    .line 149
    .local v2, "resistanceController":Lcom/android/launcher3/anim/AnimatorPlaybackController;
    new-instance v3, Lcom/android/quickstep/util/AnimatorControllerWithResistance;

    move-object v4, p0

    invoke-direct {v3, p0, v2}, Lcom/android/quickstep/util/AnimatorControllerWithResistance;-><init>(Lcom/android/launcher3/anim/AnimatorPlaybackController;Lcom/android/launcher3/anim/AnimatorPlaybackController;)V

    return-object v3
.end method

.method public static createRecentsResistanceAnim(Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsParams;)Lcom/android/launcher3/anim/PendingAnimation;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<SCA",
            "LE:Ljava/lang/Object;",
            "TRANS",
            "LATION:Ljava/lang/Object;",
            ">(",
            "Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsParams<",
            "TSCA",
            "LE;",
            "TTRANS",
            "LATION;",
            ">;)",
            "Lcom/android/launcher3/anim/PendingAnimation;"
        }
    .end annotation

    .line 158
    .local p0, "params":Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsParams;, "Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsParams<TSCALE;TTRANSLATION;>;"
    move-object/from16 v0, p0

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 159
    .local v1, "startRect":Landroid/graphics/Rect;
    iget-object v2, v0, Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsParams;->recentsOrientedState:Lcom/android/quickstep/util/RecentsOrientedState;

    .line 160
    invoke-virtual {v2}, Lcom/android/quickstep/util/RecentsOrientedState;->getOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v2

    .line 161
    .local v2, "orientationHandler":Lcom/android/launcher3/touch/PagedOrientationHandler;
    sget-object v3, Lcom/android/quickstep/LauncherActivityInterface;->INSTANCE:Lcom/android/quickstep/LauncherActivityInterface;

    iget-object v4, v0, Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsParams;->context:Landroid/content/Context;

    iget-object v5, v0, Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsParams;->dp:Lcom/android/launcher3/DeviceProfile;

    invoke-virtual {v3, v4, v5, v1}, Lcom/android/quickstep/LauncherActivityInterface;->calculateTaskSize(Landroid/content/Context;Lcom/android/launcher3/DeviceProfile;Landroid/graphics/Rect;)V

    .line 162
    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    int-to-long v3, v3

    .line 163
    .local v3, "distanceToCover":J
    iget-object v5, v0, Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsParams;->resistAnim:Lcom/android/launcher3/anim/PendingAnimation;

    if-eqz v5, :cond_0

    .line 164
    iget-object v5, v0, Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsParams;->resistAnim:Lcom/android/launcher3/anim/PendingAnimation;

    goto :goto_0

    .line 165
    :cond_0
    new-instance v5, Lcom/android/launcher3/anim/PendingAnimation;

    const-wide/16 v6, 0x2

    mul-long/2addr v6, v3

    invoke-direct {v5, v6, v7}, Lcom/android/launcher3/anim/PendingAnimation;-><init>(J)V

    :goto_0
    nop

    .line 167
    .local v5, "resistAnim":Lcom/android/launcher3/anim/PendingAnimation;
    new-instance v6, Landroid/graphics/PointF;

    invoke-direct {v6}, Landroid/graphics/PointF;-><init>()V

    move-object v12, v6

    .line 168
    .local v12, "pivot":Landroid/graphics/PointF;
    iget-object v6, v0, Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsParams;->recentsOrientedState:Lcom/android/quickstep/util/RecentsOrientedState;

    iget-object v7, v0, Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsParams;->dp:Lcom/android/launcher3/DeviceProfile;

    invoke-virtual {v6, v1, v7, v12}, Lcom/android/quickstep/util/RecentsOrientedState;->getFullScreenScaleAndPivot(Landroid/graphics/Rect;Lcom/android/launcher3/DeviceProfile;Landroid/graphics/PointF;)F

    move-result v13

    .line 172
    .local v13, "fullscreenScale":F
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    move-object v14, v6

    .line 173
    .local v14, "endRectF":Landroid/graphics/RectF;
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    move-object v15, v6

    .line 174
    .local v15, "temp":Landroid/graphics/Matrix;
    iget-object v6, v0, Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsParams;->resistanceParams:Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsResistanceParams;

    iget v6, v6, Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsResistanceParams;->scaleMaxResist:F

    iget-object v7, v0, Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsParams;->resistanceParams:Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsResistanceParams;

    iget v7, v7, Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsResistanceParams;->scaleMaxResist:F

    iget v8, v12, Landroid/graphics/PointF;->x:F

    iget v9, v12, Landroid/graphics/PointF;->y:F

    invoke-virtual {v15, v6, v7, v8, v9}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 176
    invoke-virtual {v15, v14}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 178
    iget v6, v14, Landroid/graphics/RectF;->top:F

    .line 179
    invoke-interface {v2}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getSecondaryTranslationDirectionFactor()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v6, v7

    iget-object v7, v0, Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsParams;->resistanceParams:Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsResistanceParams;

    iget v7, v7, Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsResistanceParams;->translationFactor:F

    mul-float v16, v6, v7

    .line 181
    .local v16, "endTranslation":F
    iget-object v7, v0, Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsParams;->translationTarget:Ljava/lang/Object;

    iget-object v8, v0, Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsParams;->translationProperty:Landroid/util/FloatProperty;

    iget v9, v0, Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsParams;->startTranslation:F

    sget-object v11, Lcom/android/quickstep/util/AnimatorControllerWithResistance;->RECENTS_TRANSLATE_RESIST_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    move-object v6, v5

    move/from16 v10, v16

    invoke-virtual/range {v6 .. v11}, Lcom/android/launcher3/anim/PendingAnimation;->addFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FFLandroid/animation/TimeInterpolator;)V

    .line 184
    iget v6, v0, Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsParams;->startScale:F

    sub-float v6, v13, v6

    iget-object v7, v0, Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsParams;->dp:Lcom/android/launcher3/DeviceProfile;

    iget v7, v7, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    iget v8, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    div-float v17, v6, v7

    .line 187
    .local v17, "prevScaleRate":F
    iget v6, v0, Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsParams;->startScale:F

    long-to-float v7, v3

    mul-float v7, v7, v17

    sub-float v10, v6, v7

    .line 190
    .local v10, "endScale":F
    iget-object v6, v0, Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsParams;->resistanceParams:Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsResistanceParams;

    iget v6, v6, Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsResistanceParams;->scaleStartResist:F

    iget v7, v0, Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsParams;->startScale:F

    invoke-static {v6, v7, v10}, Lcom/android/launcher3/Utilities;->getProgress(FFF)F

    move-result v9

    .line 192
    .local v9, "startResist":F
    iget-object v6, v0, Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsParams;->resistanceParams:Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsResistanceParams;

    iget v6, v6, Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsResistanceParams;->scaleMaxResist:F

    iget v7, v0, Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsParams;->startScale:F

    invoke-static {v6, v7, v10}, Lcom/android/launcher3/Utilities;->getProgress(FFF)F

    move-result v8

    .line 195
    .local v8, "maxResist":F
    iget-object v6, v0, Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsParams;->resistanceParams:Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsResistanceParams;

    iget-boolean v6, v6, Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsResistanceParams;->stopScalingAtTop:Z

    const/high16 v7, 0x3f800000    # 1.0f

    if-eqz v6, :cond_1

    iget v6, v1, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    iget v11, v14, Landroid/graphics/RectF;->top:F

    div-float/2addr v6, v11

    sub-float/2addr v7, v6

    .line 196
    .local v7, "stopResist":F
    :cond_1
    new-instance v11, Lcom/android/quickstep/util/AnimatorControllerWithResistance$$ExternalSyntheticLambda0;

    invoke-direct {v11, v9, v7, v8}, Lcom/android/quickstep/util/AnimatorControllerWithResistance$$ExternalSyntheticLambda0;-><init>(FFF)V

    .line 207
    .local v11, "scaleInterpolator":Landroid/animation/TimeInterpolator;
    iget-object v6, v0, Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsParams;->scaleTarget:Ljava/lang/Object;

    move-object/from16 v18, v1

    .end local v1    # "startRect":Landroid/graphics/Rect;
    .local v18, "startRect":Landroid/graphics/Rect;
    iget-object v1, v0, Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsParams;->scaleProperty:Landroid/util/FloatProperty;

    move-object/from16 v19, v2

    .end local v2    # "orientationHandler":Lcom/android/launcher3/touch/PagedOrientationHandler;
    .local v19, "orientationHandler":Lcom/android/launcher3/touch/PagedOrientationHandler;
    iget v2, v0, Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsParams;->startScale:F

    move-object/from16 v20, v6

    move-object v6, v5

    move/from16 v21, v7

    .end local v7    # "stopResist":F
    .local v21, "stopResist":F
    move-object/from16 v7, v20

    move/from16 v20, v8

    .end local v8    # "maxResist":F
    .local v20, "maxResist":F
    move-object v8, v1

    move v1, v9

    .end local v9    # "startResist":F
    .local v1, "startResist":F
    move v9, v2

    move v2, v10

    .end local v10    # "endScale":F
    .local v2, "endScale":F
    invoke-virtual/range {v6 .. v11}, Lcom/android/launcher3/anim/PendingAnimation;->addFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FFLandroid/animation/TimeInterpolator;)V

    .line 210
    return-object v5
.end method

.method public static createRecentsResistanceFromOverviewAnim(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/anim/PendingAnimation;)Lcom/android/launcher3/anim/PendingAnimation;
    .locals 11
    .param p0, "launcher"    # Lcom/android/launcher3/Launcher;
    .param p1, "resistanceAnim"    # Lcom/android/launcher3/anim/PendingAnimation;

    .line 219
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/views/RecentsView;

    .line 220
    .local v0, "recentsView":Lcom/android/quickstep/views/RecentsView;
    new-instance v10, Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsParams;

    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->getPagedViewOrientedState()Lcom/android/quickstep/util/RecentsOrientedState;

    move-result-object v3

    .line 221
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v4

    sget-object v6, Lcom/android/quickstep/views/RecentsView;->RECENTS_SCALE_PROPERTY:Landroid/util/FloatProperty;

    sget-object v8, Lcom/android/quickstep/views/RecentsView;->TASK_SECONDARY_TRANSLATION:Landroid/util/FloatProperty;

    const/4 v9, 0x0

    move-object v1, v10

    move-object v2, p0

    move-object v5, v0

    move-object v7, v0

    invoke-direct/range {v1 .. v9}, Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsParams;-><init>(Landroid/content/Context;Lcom/android/quickstep/util/RecentsOrientedState;Lcom/android/launcher3/DeviceProfile;Ljava/lang/Object;Landroid/util/FloatProperty;Ljava/lang/Object;Landroid/util/FloatProperty;Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsParams-IA;)V

    .line 223
    invoke-static {v10, p1}, Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsParams;->-$$Nest$msetResistAnim(Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsParams;Lcom/android/launcher3/anim/PendingAnimation;)Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsParams;

    move-result-object v1

    sget-object v2, Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsResistanceParams;->FROM_OVERVIEW:Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsResistanceParams;

    .line 224
    invoke-static {v1, v2}, Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsParams;->-$$Nest$msetResistanceParams(Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsParams;Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsResistanceParams;)Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsParams;

    move-result-object v1

    .line 225
    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->getScaleX()F

    move-result v2

    invoke-static {v1, v2}, Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsParams;->-$$Nest$msetStartScale(Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsParams;F)Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsParams;

    move-result-object v1

    .line 226
    .local v1, "params":Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsParams;
    invoke-static {v1}, Lcom/android/quickstep/util/AnimatorControllerWithResistance;->createRecentsResistanceAnim(Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsParams;)Lcom/android/launcher3/anim/PendingAnimation;

    move-result-object v2

    return-object v2
.end method

.method static synthetic lambda$createRecentsResistanceAnim$0(FFFF)F
    .locals 2
    .param p0, "startResist"    # F
    .param p1, "stopResist"    # F
    .param p2, "maxResist"    # F
    .param p3, "t"    # F

    .line 197
    cmpg-float v0, p3, p0

    if-gez v0, :cond_0

    .line 198
    return p3

    .line 200
    :cond_0
    cmpl-float v0, p3, p1

    if-lez v0, :cond_1

    .line 201
    return p2

    .line 203
    :cond_1
    invoke-static {p3, p0, p1}, Lcom/android/launcher3/Utilities;->getProgress(FFF)F

    move-result v0

    .line 204
    .local v0, "resistProgress":F
    sget-object v1, Lcom/android/quickstep/util/AnimatorControllerWithResistance;->RECENTS_SCALE_RESIST_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-interface {v1, v0}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v0

    .line 205
    sub-float v1, p2, p0

    mul-float/2addr v1, v0

    add-float/2addr v1, p0

    return v1
.end method


# virtual methods
.method public getNormalController()Lcom/android/launcher3/anim/AnimatorPlaybackController;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/android/quickstep/util/AnimatorControllerWithResistance;->mNormalController:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    return-object v0
.end method

.method public setProgress(FF)V
    .locals 4
    .param p1, "progress"    # F
    .param p2, "maxProgress"    # F

    .line 112
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, v0, v1}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result v2

    .line 113
    .local v2, "normalProgress":F
    iget v3, p0, Lcom/android/quickstep/util/AnimatorControllerWithResistance;->mLastNormalProgress:F

    cmpl-float v3, v2, v3

    if-eqz v3, :cond_0

    .line 114
    iput v2, p0, Lcom/android/quickstep/util/AnimatorControllerWithResistance;->mLastNormalProgress:F

    .line 115
    iget-object v3, p0, Lcom/android/quickstep/util/AnimatorControllerWithResistance;->mNormalController:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {v3, v2}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->setPlayFraction(F)V

    .line 117
    :cond_0
    cmpg-float v3, p2, v1

    if-gtz v3, :cond_1

    .line 118
    return-void

    .line 120
    :cond_1
    cmpg-float v3, p1, v1

    if-gtz v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {p1, v1, p2}, Lcom/android/launcher3/Utilities;->getProgress(FFF)F

    move-result v0

    .line 121
    .local v0, "resistProgress":F
    :goto_0
    iget v1, p0, Lcom/android/quickstep/util/AnimatorControllerWithResistance;->mLastResistProgress:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_3

    .line 122
    iput v0, p0, Lcom/android/quickstep/util/AnimatorControllerWithResistance;->mLastResistProgress:F

    .line 123
    iget-object v1, p0, Lcom/android/quickstep/util/AnimatorControllerWithResistance;->mResistanceController:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->setPlayFraction(F)V

    .line 125
    :cond_3
    return-void
.end method
