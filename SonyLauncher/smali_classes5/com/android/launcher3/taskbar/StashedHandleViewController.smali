.class public Lcom/android/launcher3/taskbar/StashedHandleViewController;
.super Ljava/lang/Object;
.source "StashedHandleViewController.java"

# interfaces
.implements Lcom/android/launcher3/taskbar/TaskbarControllers$LoggableTaskbarController;


# static fields
.field public static final ALPHA_INDEX_HOME_DISABLED:I = 0x1

.field public static final ALPHA_INDEX_STASHED:I = 0x0

.field private static final NUM_ALPHA_CHANNELS:I = 0x2

.field private static final SHARED_PREFS_STASHED_HANDLE_REGION_DARK_KEY:Ljava/lang/String; = "stashed_handle_region_is_dark"


# instance fields
.field private final mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

.field private mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

.field private final mPrefs:Landroid/content/SharedPreferences;

.field private final mRegionSamplingHelper:Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;

.field private mStartProgressForNextRevealAnim:F

.field private final mStashedHandleBounds:Landroid/graphics/Rect;

.field private final mStashedHandleHeight:I

.field private mStashedHandleRadius:F

.field private final mStashedHandleView:Lcom/android/launcher3/taskbar/StashedHandleView;

.field private final mStashedHandleWidth:I

.field private final mTaskbarStashedHandleAlpha:Lcom/android/launcher3/util/MultiValueAlpha;

.field private final mTaskbarStashedHandleHintScale:Lcom/android/quickstep/AnimatedFloat;

.field private mWasLastRevealAnimReversed:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmPrefs(Lcom/android/launcher3/taskbar/StashedHandleViewController;)Landroid/content/SharedPreferences;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/StashedHandleViewController;->mPrefs:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStashedHandleBounds(Lcom/android/launcher3/taskbar/StashedHandleViewController;)Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/StashedHandleViewController;->mStashedHandleBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStashedHandleHeight(Lcom/android/launcher3/taskbar/StashedHandleViewController;)I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/taskbar/StashedHandleViewController;->mStashedHandleHeight:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmStashedHandleRadius(Lcom/android/launcher3/taskbar/StashedHandleViewController;)F
    .locals 0

    iget p0, p0, Lcom/android/launcher3/taskbar/StashedHandleViewController;->mStashedHandleRadius:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmStashedHandleView(Lcom/android/launcher3/taskbar/StashedHandleViewController;)Lcom/android/launcher3/taskbar/StashedHandleView;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/StashedHandleViewController;->mStashedHandleView:Lcom/android/launcher3/taskbar/StashedHandleView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStashedHandleWidth(Lcom/android/launcher3/taskbar/StashedHandleViewController;)I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/taskbar/StashedHandleViewController;->mStashedHandleWidth:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmStartProgressForNextRevealAnim(Lcom/android/launcher3/taskbar/StashedHandleViewController;F)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/taskbar/StashedHandleViewController;->mStartProgressForNextRevealAnim:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmStashedHandleRadius(Lcom/android/launcher3/taskbar/StashedHandleViewController;F)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/taskbar/StashedHandleViewController;->mStashedHandleRadius:F

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;Lcom/android/launcher3/taskbar/StashedHandleView;)V
    .locals 4
    .param p1, "activity"    # Lcom/android/launcher3/taskbar/TaskbarActivityContext;
    .param p2, "stashedHandleView"    # Lcom/android/launcher3/taskbar/StashedHandleView;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Lcom/android/quickstep/AnimatedFloat;

    new-instance v1, Lcom/android/launcher3/taskbar/StashedHandleViewController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/launcher3/taskbar/StashedHandleViewController$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/taskbar/StashedHandleViewController;)V

    invoke-direct {v0, v1}, Lcom/android/quickstep/AnimatedFloat;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/StashedHandleViewController;->mTaskbarStashedHandleHintScale:Lcom/android/quickstep/AnimatedFloat;

    .line 68
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/StashedHandleViewController;->mStashedHandleBounds:Landroid/graphics/Rect;

    .line 78
    iput-object p1, p0, Lcom/android/launcher3/taskbar/StashedHandleViewController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    .line 79
    invoke-static {p1}, Lcom/android/launcher3/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/taskbar/StashedHandleViewController;->mPrefs:Landroid/content/SharedPreferences;

    .line 80
    iput-object p2, p0, Lcom/android/launcher3/taskbar/StashedHandleViewController;->mStashedHandleView:Lcom/android/launcher3/taskbar/StashedHandleView;

    .line 81
    new-instance v1, Lcom/android/launcher3/util/MultiValueAlpha;

    const/4 v2, 0x2

    invoke-direct {v1, p2, v2}, Lcom/android/launcher3/util/MultiValueAlpha;-><init>(Landroid/view/View;I)V

    iput-object v1, p0, Lcom/android/launcher3/taskbar/StashedHandleViewController;->mTaskbarStashedHandleAlpha:Lcom/android/launcher3/util/MultiValueAlpha;

    .line 82
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/MultiValueAlpha;->setUpdateVisibility(Z)V

    .line 83
    nop

    .line 84
    const-string v1, "stashed_handle_region_is_dark"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 83
    invoke-virtual {p2, v0, v2}, Lcom/android/launcher3/taskbar/StashedHandleView;->updateHandleColor(ZZ)V

    .line 86
    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 87
    .local v0, "resources":Landroid/content/res/Resources;
    sget v1, Lcom/android/launcher3/R$dimen;->taskbar_stashed_handle_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/taskbar/StashedHandleViewController;->mStashedHandleWidth:I

    .line 88
    sget v1, Lcom/android/launcher3/R$dimen;->taskbar_stashed_handle_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/taskbar/StashedHandleViewController;->mStashedHandleHeight:I

    .line 90
    new-instance v1, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;

    new-instance v2, Lcom/android/launcher3/taskbar/StashedHandleViewController$1;

    invoke-direct {v2, p0}, Lcom/android/launcher3/taskbar/StashedHandleViewController$1;-><init>(Lcom/android/launcher3/taskbar/StashedHandleViewController;)V

    sget-object v3, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-direct {v1, p2, v2, v3}, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;-><init>(Landroid/view/View;Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper$SamplingCallback;Ljava/util/concurrent/Executor;)V

    iput-object v1, p0, Lcom/android/launcher3/taskbar/StashedHandleViewController;->mRegionSamplingHelper:Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;

    .line 104
    return-void
.end method

.method static synthetic lambda$init$0(ILandroid/view/View;IIIIIIII)V
    .locals 3
    .param p0, "stashedTaskbarHeight"    # I
    .param p1, "view"    # Landroid/view/View;
    .param p2, "i"    # I
    .param p3, "i1"    # I
    .param p4, "i2"    # I
    .param p5, "i3"    # I
    .param p6, "i4"    # I
    .param p7, "i5"    # I
    .param p8, "i6"    # I
    .param p9, "i7"    # I

    .line 131
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 132
    .local v0, "stashedCenterX":I
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v2, p0, 0x2

    sub-int/2addr v1, v2

    .line 134
    .local v1, "stashedCenterY":I
    int-to-float v2, v0

    invoke-virtual {p1, v2}, Landroid/view/View;->setPivotX(F)V

    .line 135
    int-to-float v2, v1

    invoke-virtual {p1, v2}, Landroid/view/View;->setPivotY(F)V

    .line 136
    return-void
.end method


# virtual methods
.method public createRevealAnimToIsStashed(Z)Landroid/animation/Animator;
    .locals 5
    .param p1, "isStashed"    # Z

    .line 157
    new-instance v0, Lcom/android/launcher3/anim/RoundedRectRevealOutlineProvider;

    iget v1, p0, Lcom/android/launcher3/taskbar/StashedHandleViewController;->mStashedHandleRadius:F

    iget-object v2, p0, Lcom/android/launcher3/taskbar/StashedHandleViewController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v2, v2, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarViewController:Lcom/android/launcher3/taskbar/TaskbarViewController;

    .line 159
    invoke-virtual {v2}, Lcom/android/launcher3/taskbar/TaskbarViewController;->getIconLayoutBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/taskbar/StashedHandleViewController;->mStashedHandleBounds:Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v2, v3}, Lcom/android/launcher3/anim/RoundedRectRevealOutlineProvider;-><init>(FFLandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 161
    .local v0, "handleRevealProvider":Lcom/android/launcher3/anim/RevealOutlineAnimation;
    xor-int/lit8 v1, p1, 0x1

    .line 162
    .local v1, "isReversed":Z
    iget-boolean v2, p0, Lcom/android/launcher3/taskbar/StashedHandleViewController;->mWasLastRevealAnimReversed:Z

    if-eq v2, v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 163
    .local v2, "changingDirection":Z
    :goto_0
    iput-boolean v1, p0, Lcom/android/launcher3/taskbar/StashedHandleViewController;->mWasLastRevealAnimReversed:Z

    .line 164
    if-eqz v2, :cond_1

    .line 165
    const/high16 v3, 0x3f800000    # 1.0f

    iget v4, p0, Lcom/android/launcher3/taskbar/StashedHandleViewController;->mStartProgressForNextRevealAnim:F

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/android/launcher3/taskbar/StashedHandleViewController;->mStartProgressForNextRevealAnim:F

    .line 168
    :cond_1
    iget-object v3, p0, Lcom/android/launcher3/taskbar/StashedHandleViewController;->mStashedHandleView:Lcom/android/launcher3/taskbar/StashedHandleView;

    iget v4, p0, Lcom/android/launcher3/taskbar/StashedHandleViewController;->mStartProgressForNextRevealAnim:F

    invoke-virtual {v0, v3, v1, v4}, Lcom/android/launcher3/anim/RevealOutlineAnimation;->createRevealAnimator(Landroid/view/View;ZF)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 170
    .local v3, "revealAnim":Landroid/animation/ValueAnimator;
    new-instance v4, Lcom/android/launcher3/taskbar/StashedHandleViewController$3;

    invoke-direct {v4, p0}, Lcom/android/launcher3/taskbar/StashedHandleViewController$3;-><init>(Lcom/android/launcher3/taskbar/StashedHandleViewController;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 176
    return-object v3
.end method

.method public dumpLogs(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 5
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "StashedHandleViewController:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 211
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 212
    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/StashedHandleViewController;->isStashedHandleVisible()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v1, v4

    .line 211
    const-string v3, "%s\tisStashedHandleVisible=%b"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 213
    new-array v1, v0, [Ljava/lang/Object;

    aput-object p1, v1, v2

    iget v3, p0, Lcom/android/launcher3/taskbar/StashedHandleViewController;->mStashedHandleWidth:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v4

    const-string v3, "%s\tmStashedHandleWidth=%dpx"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 214
    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v2

    iget v1, p0, Lcom/android/launcher3/taskbar/StashedHandleViewController;->mStashedHandleHeight:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    const-string v1, "%s\tmStashedHandleHeight=%dpx"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 215
    iget-object v0, p0, Lcom/android/launcher3/taskbar/StashedHandleViewController;->mRegionSamplingHelper:Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 216
    return-void
.end method

.method public getStashedHandleAlpha()Lcom/android/launcher3/util/MultiValueAlpha;
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/android/launcher3/taskbar/StashedHandleViewController;->mTaskbarStashedHandleAlpha:Lcom/android/launcher3/util/MultiValueAlpha;

    return-object v0
.end method

.method public getStashedHandleHintScale()Lcom/android/quickstep/AnimatedFloat;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/android/launcher3/taskbar/StashedHandleViewController;->mTaskbarStashedHandleHintScale:Lcom/android/quickstep/AnimatedFloat;

    return-object v0
.end method

.method public init(Lcom/android/launcher3/taskbar/TaskbarControllers;)V
    .locals 3
    .param p1, "controllers"    # Lcom/android/launcher3/taskbar/TaskbarControllers;

    .line 107
    iput-object p1, p0, Lcom/android/launcher3/taskbar/StashedHandleViewController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    .line 108
    iget-object v0, p0, Lcom/android/launcher3/taskbar/StashedHandleViewController;->mStashedHandleView:Lcom/android/launcher3/taskbar/StashedHandleView;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/StashedHandleView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/taskbar/StashedHandleViewController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v1

    iget v1, v1, Lcom/android/launcher3/DeviceProfile;->taskbarSize:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 110
    iget-object v0, p0, Lcom/android/launcher3/taskbar/StashedHandleViewController;->mTaskbarStashedHandleAlpha:Lcom/android/launcher3/util/MultiValueAlpha;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MultiValueAlpha;->getProperty(I)Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;->setValue(F)V

    .line 111
    iget-object v0, p0, Lcom/android/launcher3/taskbar/StashedHandleViewController;->mTaskbarStashedHandleHintScale:Lcom/android/quickstep/AnimatedFloat;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/quickstep/AnimatedFloat;->updateValue(F)V

    .line 113
    iget-object v0, p0, Lcom/android/launcher3/taskbar/StashedHandleViewController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarStashController:Lcom/android/launcher3/taskbar/TaskbarStashController;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->getStashedHeight()I

    move-result v0

    .line 114
    .local v0, "stashedTaskbarHeight":I
    iget-object v1, p0, Lcom/android/launcher3/taskbar/StashedHandleViewController;->mStashedHandleView:Lcom/android/launcher3/taskbar/StashedHandleView;

    new-instance v2, Lcom/android/launcher3/taskbar/StashedHandleViewController$2;

    invoke-direct {v2, p0, v0}, Lcom/android/launcher3/taskbar/StashedHandleViewController$2;-><init>(Lcom/android/launcher3/taskbar/StashedHandleViewController;I)V

    invoke-virtual {v1, v2}, Lcom/android/launcher3/taskbar/StashedHandleView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 130
    iget-object v1, p0, Lcom/android/launcher3/taskbar/StashedHandleViewController;->mStashedHandleView:Lcom/android/launcher3/taskbar/StashedHandleView;

    new-instance v2, Lcom/android/launcher3/taskbar/StashedHandleViewController$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Lcom/android/launcher3/taskbar/StashedHandleViewController$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/android/launcher3/taskbar/StashedHandleView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 137
    return-void
.end method

.method public isStashedHandleVisible()Z
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/android/launcher3/taskbar/StashedHandleViewController;->mStashedHandleView:Lcom/android/launcher3/taskbar/StashedHandleView;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/StashedHandleView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onDestroy()V
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/android/launcher3/taskbar/StashedHandleViewController;->mRegionSamplingHelper:Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;

    invoke-virtual {v0}, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->stopAndDestroy()V

    .line 141
    return-void
.end method

.method public onIsStashedChanged(Z)V
    .locals 2
    .param p1, "isStashed"    # Z

    .line 181
    iget-object v0, p0, Lcom/android/launcher3/taskbar/StashedHandleViewController;->mRegionSamplingHelper:Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->setWindowVisible(Z)V

    .line 182
    if-eqz p1, :cond_0

    .line 183
    iget-object v0, p0, Lcom/android/launcher3/taskbar/StashedHandleViewController;->mStashedHandleView:Lcom/android/launcher3/taskbar/StashedHandleView;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/StashedHandleViewController;->mStashedHandleBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/taskbar/StashedHandleView;->updateSampledRegion(Landroid/graphics/Rect;)V

    .line 184
    iget-object v0, p0, Lcom/android/launcher3/taskbar/StashedHandleViewController;->mRegionSamplingHelper:Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/StashedHandleViewController;->mStashedHandleView:Lcom/android/launcher3/taskbar/StashedHandleView;

    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/StashedHandleView;->getSampledRegion()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->start(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/taskbar/StashedHandleViewController;->mRegionSamplingHelper:Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;

    invoke-virtual {v0}, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->stop()V

    .line 188
    :goto_0
    return-void
.end method

.method public setIsHomeButtonDisabled(Z)V
    .locals 2
    .param p1, "homeDisabled"    # Z

    .line 199
    iget-object v0, p0, Lcom/android/launcher3/taskbar/StashedHandleViewController;->mTaskbarStashedHandleAlpha:Lcom/android/launcher3/util/MultiValueAlpha;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MultiValueAlpha;->getProperty(I)Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;

    move-result-object v0

    .line 200
    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    .line 199
    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;->setValue(F)V

    .line 201
    return-void
.end method

.method protected updateStashedHandleHintScale()V
    .locals 2

    .line 191
    iget-object v0, p0, Lcom/android/launcher3/taskbar/StashedHandleViewController;->mStashedHandleView:Lcom/android/launcher3/taskbar/StashedHandleView;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/StashedHandleViewController;->mTaskbarStashedHandleHintScale:Lcom/android/quickstep/AnimatedFloat;

    iget v1, v1, Lcom/android/quickstep/AnimatedFloat;->value:F

    invoke-virtual {v0, v1}, Lcom/android/launcher3/taskbar/StashedHandleView;->setScaleX(F)V

    .line 192
    iget-object v0, p0, Lcom/android/launcher3/taskbar/StashedHandleViewController;->mStashedHandleView:Lcom/android/launcher3/taskbar/StashedHandleView;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/StashedHandleViewController;->mTaskbarStashedHandleHintScale:Lcom/android/quickstep/AnimatedFloat;

    iget v1, v1, Lcom/android/quickstep/AnimatedFloat;->value:F

    invoke-virtual {v0, v1}, Lcom/android/launcher3/taskbar/StashedHandleView;->setScaleY(F)V

    .line 193
    return-void
.end method
