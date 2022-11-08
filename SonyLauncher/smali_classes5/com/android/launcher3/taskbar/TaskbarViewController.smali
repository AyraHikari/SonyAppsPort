.class public Lcom/android/launcher3/taskbar/TaskbarViewController;
.super Ljava/lang/Object;
.source "TaskbarViewController.java"

# interfaces
.implements Lcom/android/launcher3/taskbar/TaskbarControllers$LoggableTaskbarController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/taskbar/TaskbarViewController$TaskbarViewCallbacks;
    }
.end annotation


# static fields
.field public static final ALPHA_INDEX_HOME:I = 0x0

.field public static final ALPHA_INDEX_KEYGUARD:I = 0x1

.field public static final ALPHA_INDEX_NOTIFICATION_EXPANDED:I = 0x4

.field public static final ALPHA_INDEX_RECENTS_DISABLED:I = 0x3

.field public static final ALPHA_INDEX_STASH:I = 0x2

.field public static final ICON_TRANSLATE_X:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private static final NO_OP:Ljava/lang/Runnable;

.field private static final NUM_ALPHA_CHANNELS:I = 0x5

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

.field private mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

.field private mIconAlignControllerLazy:Lcom/android/launcher3/anim/AnimatorPlaybackController;

.field private final mModelCallbacks:Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;

.field private mOnControllerPreCreateCallback:Ljava/lang/Runnable;

.field private final mTaskbarIconAlpha:Lcom/android/launcher3/util/MultiValueAlpha;

.field private final mTaskbarIconScaleForStash:Lcom/android/quickstep/AnimatedFloat;

.field private final mTaskbarIconTranslationYForHome:Lcom/android/quickstep/AnimatedFloat;

.field private final mTaskbarIconTranslationYForStash:Lcom/android/quickstep/AnimatedFloat;

.field private mTaskbarNavButtonTranslationY:Lcom/android/quickstep/AnimatedFloat;

.field private mTaskbarNavButtonTranslationYForInAppDisplay:Lcom/android/quickstep/AnimatedFloat;

.field private final mTaskbarView:Lcom/android/launcher3/taskbar/TaskbarView;

.field private final mThemeIconsBackground:Lcom/android/quickstep/AnimatedFloat;

.field private mThemeIconsColor:I


# direct methods
.method public static synthetic $r8$lambda$1DW0r-fa_FdSVa1ZzSw0eVLcjGQ(Lcom/android/launcher3/taskbar/TaskbarViewController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarViewController;->updateIconsBackground()V

    return-void
.end method

.method public static synthetic $r8$lambda$BCRZAIGFHp7XS6q7sxjldbRWbC0(Lcom/android/launcher3/taskbar/TaskbarViewController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarViewController;->updateTranslationY()V

    return-void
.end method

.method public static synthetic $r8$lambda$Sv0feYsMQAilEC_eVgBZmuqmjbs(Lcom/android/launcher3/taskbar/TaskbarViewController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarViewController;->updateScale()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmActivity(Lcom/android/launcher3/taskbar/TaskbarViewController;)Lcom/android/launcher3/taskbar/TaskbarActivityContext;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmControllers(Lcom/android/launcher3/taskbar/TaskbarViewController;)Lcom/android/launcher3/taskbar/TaskbarControllers;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 57
    const-class v0, Lcom/android/launcher3/taskbar/TaskbarViewController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/taskbar/TaskbarViewController;->TAG:Ljava/lang/String;

    .line 59
    new-instance v0, Lcom/android/launcher3/taskbar/TaskbarViewController$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/launcher3/taskbar/TaskbarViewController$$ExternalSyntheticLambda3;-><init>()V

    sput-object v0, Lcom/android/launcher3/taskbar/TaskbarViewController;->NO_OP:Ljava/lang/Runnable;

    .line 396
    new-instance v0, Lcom/android/launcher3/taskbar/TaskbarViewController$1;

    const-string v1, "taskbarAligmentTranslateX"

    invoke-direct {v0, v1}, Lcom/android/launcher3/taskbar/TaskbarViewController$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher3/taskbar/TaskbarViewController;->ICON_TRANSLATE_X:Landroid/util/FloatProperty;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;Lcom/android/launcher3/taskbar/TaskbarView;)V
    .locals 2
    .param p1, "activity"    # Lcom/android/launcher3/taskbar/TaskbarActivityContext;
    .param p2, "taskbarView"    # Lcom/android/launcher3/taskbar/TaskbarView;

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Lcom/android/quickstep/AnimatedFloat;

    new-instance v1, Lcom/android/launcher3/taskbar/TaskbarViewController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/launcher3/taskbar/TaskbarViewController$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/taskbar/TaskbarViewController;)V

    invoke-direct {v0, v1}, Lcom/android/quickstep/AnimatedFloat;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarIconScaleForStash:Lcom/android/quickstep/AnimatedFloat;

    .line 72
    new-instance v0, Lcom/android/quickstep/AnimatedFloat;

    new-instance v1, Lcom/android/launcher3/taskbar/TaskbarViewController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/launcher3/taskbar/TaskbarViewController$$ExternalSyntheticLambda1;-><init>(Lcom/android/launcher3/taskbar/TaskbarViewController;)V

    invoke-direct {v0, v1}, Lcom/android/quickstep/AnimatedFloat;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarIconTranslationYForHome:Lcom/android/quickstep/AnimatedFloat;

    .line 74
    new-instance v0, Lcom/android/quickstep/AnimatedFloat;

    new-instance v1, Lcom/android/launcher3/taskbar/TaskbarViewController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/launcher3/taskbar/TaskbarViewController$$ExternalSyntheticLambda1;-><init>(Lcom/android/launcher3/taskbar/TaskbarViewController;)V

    invoke-direct {v0, v1}, Lcom/android/quickstep/AnimatedFloat;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarIconTranslationYForStash:Lcom/android/quickstep/AnimatedFloat;

    .line 79
    new-instance v0, Lcom/android/quickstep/AnimatedFloat;

    new-instance v1, Lcom/android/launcher3/taskbar/TaskbarViewController$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/launcher3/taskbar/TaskbarViewController$$ExternalSyntheticLambda2;-><init>(Lcom/android/launcher3/taskbar/TaskbarViewController;)V

    invoke-direct {v0, v1}, Lcom/android/quickstep/AnimatedFloat;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mThemeIconsBackground:Lcom/android/quickstep/AnimatedFloat;

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mIconAlignControllerLazy:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    .line 90
    sget-object v0, Lcom/android/launcher3/taskbar/TaskbarViewController;->NO_OP:Ljava/lang/Runnable;

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mOnControllerPreCreateCallback:Ljava/lang/Runnable;

    .line 95
    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    .line 96
    iput-object p2, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarView:Lcom/android/launcher3/taskbar/TaskbarView;

    .line 97
    new-instance v0, Lcom/android/launcher3/util/MultiValueAlpha;

    const/4 v1, 0x5

    invoke-direct {v0, p2, v1}, Lcom/android/launcher3/util/MultiValueAlpha;-><init>(Landroid/view/View;I)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarIconAlpha:Lcom/android/launcher3/util/MultiValueAlpha;

    .line 98
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MultiValueAlpha;->setUpdateVisibility(Z)V

    .line 99
    new-instance v0, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;

    invoke-direct {v0, p1, p2}, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;-><init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;Lcom/android/launcher3/taskbar/TaskbarView;)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mModelCallbacks:Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;

    .line 100
    return-void
.end method

.method private createIconAlignmentController(Lcom/android/launcher3/DeviceProfile;)Lcom/android/launcher3/anim/AnimatorPlaybackController;
    .locals 17
    .param p1, "launcherDp"    # Lcom/android/launcher3/DeviceProfile;

    .line 228
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mOnControllerPreCreateCallback:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 229
    new-instance v2, Lcom/android/launcher3/anim/PendingAnimation;

    const-wide/16 v3, 0x64

    invoke-direct {v2, v3, v4}, Lcom/android/launcher3/anim/PendingAnimation;-><init>(J)V

    .line 230
    .local v2, "setter":Lcom/android/launcher3/anim/PendingAnimation;
    iget-object v3, v0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v1, v3}, Lcom/android/launcher3/DeviceProfile;->getHotseatLayoutPadding(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v3

    .line 231
    .local v3, "hotseatPadding":Landroid/graphics/Rect;
    iget v4, v1, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    int-to-float v4, v4

    iget-object v5, v0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v5}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v5

    iget v5, v5, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 232
    .local v4, "scaleUp":F
    iget v11, v1, Lcom/android/launcher3/DeviceProfile;->hotseatBorderSpace:I

    .line 233
    .local v11, "borderSpacing":I
    iget v5, v1, Lcom/android/launcher3/DeviceProfile;->availableWidthPx:I

    iget v6, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    iget v6, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v6

    iget v6, v1, Lcom/android/launcher3/DeviceProfile;->numShownHotseatIcons:I

    invoke-static {v5, v11, v6}, Lcom/android/launcher3/DeviceProfile;->calculateCellWidth(III)I

    move-result v12

    .line 238
    .local v12, "hotseatCellSize":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/DeviceProfile;->getTaskbarOffsetY()I

    move-result v13

    .line 239
    .local v13, "offsetY":I
    iget-object v5, v0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarIconTranslationYForHome:Lcom/android/quickstep/AnimatedFloat;

    sget-object v6, Lcom/android/quickstep/AnimatedFloat;->VALUE:Landroid/util/FloatProperty;

    neg-int v7, v13

    int-to-float v7, v7

    sget-object v8, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v5, v6, v7, v8}, Lcom/android/launcher3/anim/PendingAnimation;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    .line 240
    iget-object v5, v0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarNavButtonTranslationY:Lcom/android/quickstep/AnimatedFloat;

    sget-object v6, Lcom/android/quickstep/AnimatedFloat;->VALUE:Landroid/util/FloatProperty;

    neg-int v7, v13

    int-to-float v7, v7

    sget-object v8, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v5, v6, v7, v8}, Lcom/android/launcher3/anim/PendingAnimation;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    .line 241
    iget-object v5, v0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarNavButtonTranslationYForInAppDisplay:Lcom/android/quickstep/AnimatedFloat;

    sget-object v6, Lcom/android/quickstep/AnimatedFloat;->VALUE:Landroid/util/FloatProperty;

    int-to-float v7, v13

    sget-object v8, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v5, v6, v7, v8}, Lcom/android/launcher3/anim/PendingAnimation;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    .line 243
    iget-object v5, v0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarView:Lcom/android/launcher3/taskbar/TaskbarView;

    invoke-virtual {v5}, Lcom/android/launcher3/taskbar/TaskbarView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/launcher3/Utilities;->isDarkTheme(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 244
    iget-object v6, v0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mThemeIconsBackground:Lcom/android/quickstep/AnimatedFloat;

    sget-object v7, Lcom/android/quickstep/AnimatedFloat;->VALUE:Landroid/util/FloatProperty;

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    sget-object v10, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    move-object v5, v2

    invoke-virtual/range {v5 .. v10}, Lcom/android/launcher3/anim/PendingAnimation;->addFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FFLandroid/animation/TimeInterpolator;)V

    .line 247
    :cond_0
    iget-object v5, v0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v5}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getDefaultTaskbarWindowHeight()I

    move-result v5

    .line 248
    .local v5, "collapsedHeight":I
    iget-object v6, v0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    .line 249
    invoke-virtual {v6}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v6

    iget v6, v6, Lcom/android/launcher3/DeviceProfile;->taskbarSize:I

    add-int/2addr v6, v13

    .line 248
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 250
    .local v6, "expandedHeight":I
    new-instance v7, Lcom/android/launcher3/taskbar/TaskbarViewController$$ExternalSyntheticLambda4;

    invoke-direct {v7, v0, v6, v5}, Lcom/android/launcher3/taskbar/TaskbarViewController$$ExternalSyntheticLambda4;-><init>(Lcom/android/launcher3/taskbar/TaskbarViewController;II)V

    invoke-virtual {v2, v7}, Lcom/android/launcher3/anim/PendingAnimation;->addOnFrameListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 253
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    iget-object v8, v0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarView:Lcom/android/launcher3/taskbar/TaskbarView;

    invoke-virtual {v8}, Lcom/android/launcher3/taskbar/TaskbarView;->getChildCount()I

    move-result v8

    if-ge v7, v8, :cond_5

    .line 254
    iget-object v8, v0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarView:Lcom/android/launcher3/taskbar/TaskbarView;

    invoke-virtual {v8, v7}, Lcom/android/launcher3/taskbar/TaskbarView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 257
    .local v8, "child":Landroid/view/View;
    sget-object v9, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_ALL_APPS_IN_TASKBAR:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v9}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v9

    if-eqz v9, :cond_2

    iget-object v9, v0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarView:Lcom/android/launcher3/taskbar/TaskbarView;

    .line 258
    invoke-virtual {v9}, Lcom/android/launcher3/taskbar/TaskbarView;->getAllAppsButtonView()Landroid/view/View;

    move-result-object v9

    if-ne v8, v9, :cond_2

    .line 261
    invoke-virtual {v8}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-static {v9}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 262
    const/4 v9, -0x1

    goto :goto_1

    .line 263
    :cond_1
    iget-object v9, v0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v9}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v9

    iget v9, v9, Lcom/android/launcher3/DeviceProfile;->numShownHotseatIcons:I

    :goto_1
    nop

    .line 265
    .local v9, "positionInHotseat":I
    sget-object v10, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_ALL_APPS_BUTTON_IN_HOTSEAT:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v10}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v10

    if-nez v10, :cond_3

    .line 266
    const/4 v10, 0x0

    sget-object v14, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v8, v10, v14}, Lcom/android/launcher3/anim/PendingAnimation;->setViewAlpha(Landroid/view/View;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    goto :goto_2

    .line 268
    .end local v9    # "positionInHotseat":I
    :cond_2
    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    instance-of v9, v9, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v9, :cond_4

    .line 269
    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/launcher3/model/data/ItemInfo;

    iget v9, v9, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    .line 275
    .restart local v9    # "positionInHotseat":I
    :cond_3
    :goto_2
    iget v10, v3, Landroid/graphics/Rect;->left:I

    add-int v14, v12, v11

    mul-int/2addr v14, v9

    add-int/2addr v10, v14

    int-to-float v10, v10

    int-to-float v14, v12

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v14, v15

    add-float/2addr v10, v14

    .line 279
    .local v10, "hotseatIconCenter":F
    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v14

    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v16

    add-int v14, v14, v16

    int-to-float v14, v14

    div-float/2addr v14, v15

    .line 280
    .local v14, "childCenter":F
    sget-object v15, Lcom/android/launcher3/taskbar/TaskbarViewController;->ICON_TRANSLATE_X:Landroid/util/FloatProperty;

    sub-float v1, v10, v14

    move-object/from16 v16, v3

    .end local v3    # "hotseatPadding":Landroid/graphics/Rect;
    .local v16, "hotseatPadding":Landroid/graphics/Rect;
    sget-object v3, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v8, v15, v1, v3}, Lcom/android/launcher3/anim/PendingAnimation;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    .line 282
    sget-object v1, Lcom/android/launcher3/LauncherAnimUtils;->SCALE_PROPERTY:Landroid/util/FloatProperty;

    sget-object v3, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v8, v1, v4, v3}, Lcom/android/launcher3/anim/PendingAnimation;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    goto :goto_3

    .line 271
    .end local v9    # "positionInHotseat":I
    .end local v10    # "hotseatIconCenter":F
    .end local v14    # "childCenter":F
    .end local v16    # "hotseatPadding":Landroid/graphics/Rect;
    .restart local v3    # "hotseatPadding":Landroid/graphics/Rect;
    :cond_4
    move-object/from16 v16, v3

    .end local v3    # "hotseatPadding":Landroid/graphics/Rect;
    .restart local v16    # "hotseatPadding":Landroid/graphics/Rect;
    sget-object v1, Lcom/android/launcher3/taskbar/TaskbarViewController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unsupported view found in createIconAlignmentController, v="

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    nop

    .line 253
    .end local v8    # "child":Landroid/view/View;
    :goto_3
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v1, p1

    move-object/from16 v3, v16

    goto/16 :goto_0

    .end local v16    # "hotseatPadding":Landroid/graphics/Rect;
    .restart local v3    # "hotseatPadding":Landroid/graphics/Rect;
    :cond_5
    move-object/from16 v16, v3

    .line 285
    .end local v3    # "hotseatPadding":Landroid/graphics/Rect;
    .end local v7    # "i":I
    .restart local v16    # "hotseatPadding":Landroid/graphics/Rect;
    invoke-virtual {v2}, Lcom/android/launcher3/anim/PendingAnimation;->createPlaybackController()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object v1

    .line 286
    .local v1, "controller":Lcom/android/launcher3/anim/AnimatorPlaybackController;
    new-instance v3, Lcom/android/launcher3/taskbar/TaskbarViewController$$ExternalSyntheticLambda5;

    invoke-direct {v3, v1}, Lcom/android/launcher3/taskbar/TaskbarViewController$$ExternalSyntheticLambda5;-><init>(Lcom/android/launcher3/anim/AnimatorPlaybackController;)V

    iput-object v3, v0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mOnControllerPreCreateCallback:Ljava/lang/Runnable;

    .line 287
    return-object v1
.end method

.method static synthetic lambda$createIconAlignmentController$2(Lcom/android/launcher3/anim/AnimatorPlaybackController;)V
    .locals 1
    .param p0, "controller"    # Lcom/android/launcher3/anim/AnimatorPlaybackController;

    .line 286
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->setPlayFraction(F)V

    return-void
.end method

.method static synthetic lambda$static$0()V
    .locals 0

    .line 59
    return-void
.end method

.method private updateIconsBackground()V
    .locals 4

    .line 199
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarView:Lcom/android/launcher3/taskbar/TaskbarView;

    iget v1, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mThemeIconsColor:I

    iget v2, v0, Lcom/android/launcher3/taskbar/TaskbarView;->mThemeIconsBackground:I

    iget-object v3, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mThemeIconsBackground:Lcom/android/quickstep/AnimatedFloat;

    iget v3, v3, Lcom/android/quickstep/AnimatedFloat;->value:F

    .line 200
    invoke-static {v1, v2, v3}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v1

    .line 199
    invoke-virtual {v0, v1}, Lcom/android/launcher3/taskbar/TaskbarView;->setThemedIconsBackgroundColor(I)V

    .line 205
    return-void
.end method

.method private updateScale()V
    .locals 2

    .line 188
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarIconScaleForStash:Lcom/android/quickstep/AnimatedFloat;

    iget v0, v0, Lcom/android/quickstep/AnimatedFloat;->value:F

    .line 189
    .local v0, "scale":F
    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarView:Lcom/android/launcher3/taskbar/TaskbarView;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/taskbar/TaskbarView;->setScaleX(F)V

    .line 190
    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarView:Lcom/android/launcher3/taskbar/TaskbarView;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/taskbar/TaskbarView;->setScaleY(F)V

    .line 191
    return-void
.end method

.method private updateTranslationY()V
    .locals 3

    .line 194
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarView:Lcom/android/launcher3/taskbar/TaskbarView;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarIconTranslationYForHome:Lcom/android/quickstep/AnimatedFloat;

    iget v1, v1, Lcom/android/quickstep/AnimatedFloat;->value:F

    iget-object v2, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarIconTranslationYForStash:Lcom/android/quickstep/AnimatedFloat;

    iget v2, v2, Lcom/android/quickstep/AnimatedFloat;->value:F

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/android/launcher3/taskbar/TaskbarView;->setTranslationY(F)V

    .line 196
    return-void
.end method


# virtual methods
.method public addOneTimePreDrawListener(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "listener"    # Ljava/lang/Runnable;

    .line 161
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarView:Lcom/android/launcher3/taskbar/TaskbarView;

    invoke-static {v0, p1}, Landroidx/core/view/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Landroidx/core/view/OneShotPreDrawListener;

    .line 162
    return-void
.end method

.method public areIconsVisible()Z
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarView:Lcom/android/launcher3/taskbar/TaskbarView;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarView;->areIconsVisible()Z

    move-result v0

    return v0
.end method

.method public dumpLogs(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 328
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "TaskbarViewController:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 329
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mModelCallbacks:Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->dumpLogs(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 330
    return-void
.end method

.method public getAllAppsButtonView()Landroid/view/View;
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarView:Lcom/android/launcher3/taskbar/TaskbarView;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarView;->getAllAppsButtonView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getFirstIconMatch(Ljava/util/function/Predicate;)Landroid/view/View;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation

    .line 314
    .local p1, "matcher":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/launcher3/model/data/ItemInfo;>;"
    invoke-static {p1}, Lcom/android/launcher3/util/ItemInfoMatcher;->forFolderMatch(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object v0

    .line 315
    .local v0, "folderMatcher":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/launcher3/model/data/ItemInfo;>;"
    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarView:Lcom/android/launcher3/taskbar/TaskbarView;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/util/function/Predicate;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/android/launcher3/taskbar/TaskbarView;->getFirstMatch([Ljava/util/function/Predicate;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public getIconLayoutBounds()Landroid/graphics/Rect;
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarView:Lcom/android/launcher3/taskbar/TaskbarView;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarView;->getIconLayoutBounds()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getIconViews()[Landroid/view/View;
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarView:Lcom/android/launcher3/taskbar/TaskbarView;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarView;->getIconViews()[Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getTaskbarIconAlpha()Lcom/android/launcher3/util/MultiValueAlpha;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarIconAlpha:Lcom/android/launcher3/util/MultiValueAlpha;

    return-object v0
.end method

.method public getTaskbarIconScaleForStash()Lcom/android/quickstep/AnimatedFloat;
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarIconScaleForStash:Lcom/android/quickstep/AnimatedFloat;

    return-object v0
.end method

.method public getTaskbarIconTranslationYForStash()Lcom/android/quickstep/AnimatedFloat;
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarIconTranslationYForStash:Lcom/android/quickstep/AnimatedFloat;

    return-object v0
.end method

.method public init(Lcom/android/launcher3/taskbar/TaskbarControllers;)V
    .locals 2
    .param p1, "controllers"    # Lcom/android/launcher3/taskbar/TaskbarControllers;

    .line 103
    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    .line 104
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarView:Lcom/android/launcher3/taskbar/TaskbarView;

    new-instance v1, Lcom/android/launcher3/taskbar/TaskbarViewController$TaskbarViewCallbacks;

    invoke-direct {v1, p0}, Lcom/android/launcher3/taskbar/TaskbarViewController$TaskbarViewCallbacks;-><init>(Lcom/android/launcher3/taskbar/TaskbarViewController;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/taskbar/TaskbarView;->init(Lcom/android/launcher3/taskbar/TaskbarViewController$TaskbarViewCallbacks;)V

    .line 105
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarView:Lcom/android/launcher3/taskbar/TaskbarView;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v1

    iget v1, v1, Lcom/android/launcher3/DeviceProfile;->taskbarSize:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 106
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarView:Lcom/android/launcher3/taskbar/TaskbarView;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/icons/ThemedIconDrawable;->getColors(Landroid/content/Context;)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mThemeIconsColor:I

    .line 108
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarIconScaleForStash:Lcom/android/quickstep/AnimatedFloat;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/quickstep/AnimatedFloat;->updateValue(F)V

    .line 110
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mModelCallbacks:Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->init(Lcom/android/launcher3/taskbar/TaskbarControllers;)V

    .line 111
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->isUserSetupComplete()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-static {v0}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mModelCallbacks:Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherModel;->addCallbacksAndLoad(Lcom/android/launcher3/model/BgDataModel$Callbacks;)Z

    .line 115
    :cond_0
    iget-object v0, p1, Lcom/android/launcher3/taskbar/TaskbarControllers;->navbarButtonsViewController:Lcom/android/launcher3/taskbar/NavbarButtonsViewController;

    .line 116
    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->getTaskbarNavButtonTranslationY()Lcom/android/quickstep/AnimatedFloat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarNavButtonTranslationY:Lcom/android/quickstep/AnimatedFloat;

    .line 117
    iget-object v0, p1, Lcom/android/launcher3/taskbar/TaskbarControllers;->navbarButtonsViewController:Lcom/android/launcher3/taskbar/NavbarButtonsViewController;

    .line 118
    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->getTaskbarNavButtonTranslationYForInAppDisplay()Lcom/android/quickstep/AnimatedFloat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarNavButtonTranslationYForInAppDisplay:Lcom/android/quickstep/AnimatedFloat;

    .line 119
    return-void
.end method

.method public isEventOverAnyItem(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 323
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarView:Lcom/android/launcher3/taskbar/TaskbarView;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/taskbar/TaskbarView;->isEventOverAnyItem(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method synthetic lambda$createIconAlignmentController$1$com-android-launcher3-taskbar-TaskbarViewController(IILandroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "expandedHeight"    # I
    .param p2, "collapsedHeight"    # I
    .param p3, "anim"    # Landroid/animation/ValueAnimator;

    .line 250
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    .line 251
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    move v1, p1

    goto :goto_0

    :cond_0
    move v1, p2

    .line 250
    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->setTaskbarWindowHeight(I)V

    return-void
.end method

.method public mapOverItems(Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;)V
    .locals 1
    .param p1, "op"    # Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;

    .line 304
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarView:Lcom/android/launcher3/taskbar/TaskbarView;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/taskbar/TaskbarView;->mapOverItems(Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;)V

    .line 305
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 122
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-static {v0}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mModelCallbacks:Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherModel;->removeCallbacks(Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    .line 123
    return-void
.end method

.method public onRotationChanged(Lcom/android/launcher3/DeviceProfile;)V
    .locals 3
    .param p1, "deviceProfile"    # Lcom/android/launcher3/DeviceProfile;

    .line 291
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarStashController:Lcom/android/launcher3/taskbar/TaskbarStashController;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->isInApp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 293
    return-void

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    iget v1, p1, Lcom/android/launcher3/DeviceProfile;->taskbarSize:I

    .line 296
    invoke-virtual {p1}, Lcom/android/launcher3/DeviceProfile;->getTaskbarOffsetY()I

    move-result v2

    add-int/2addr v1, v2

    .line 295
    invoke-virtual {v0, v1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->setTaskbarWindowHeight(I)V

    .line 297
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarNavButtonTranslationY:Lcom/android/quickstep/AnimatedFloat;

    invoke-virtual {p1}, Lcom/android/launcher3/DeviceProfile;->getTaskbarOffsetY()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/android/quickstep/AnimatedFloat;->updateValue(F)V

    .line 298
    return-void
.end method

.method public setClickAndLongClickListenersForIcon(Landroid/view/View;)V
    .locals 1
    .param p1, "icon"    # Landroid/view/View;

    .line 152
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarView:Lcom/android/launcher3/taskbar/TaskbarView;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/taskbar/TaskbarView;->setClickAndLongClickListenersForIcon(Landroid/view/View;)V

    .line 153
    return-void
.end method

.method public setImeIsVisible(Z)V
    .locals 2
    .param p1, "isImeVisible"    # Z

    .line 137
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarView:Lcom/android/launcher3/taskbar/TaskbarView;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/taskbar/TaskbarView;->setTouchesEnabled(Z)V

    .line 138
    return-void
.end method

.method public setLauncherIconAlignment(FLcom/android/launcher3/DeviceProfile;)V
    .locals 1
    .param p1, "alignmentRatio"    # F
    .param p2, "launcherDp"    # Lcom/android/launcher3/DeviceProfile;

    .line 214
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mIconAlignControllerLazy:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    if-nez v0, :cond_0

    .line 215
    invoke-direct {p0, p2}, Lcom/android/launcher3/taskbar/TaskbarViewController;->createIconAlignmentController(Lcom/android/launcher3/DeviceProfile;)Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mIconAlignControllerLazy:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mIconAlignControllerLazy:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->setPlayFraction(F)V

    .line 218
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_2

    .line 220
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mIconAlignControllerLazy:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    .line 222
    :cond_2
    return-void
.end method

.method public setRecentsButtonDisabled(Z)V
    .locals 2
    .param p1, "isDisabled"    # Z

    .line 145
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarIconAlpha:Lcom/android/launcher3/util/MultiValueAlpha;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MultiValueAlpha;->getProperty(I)Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;

    move-result-object v0

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;->setValue(F)V

    .line 146
    return-void
.end method
