.class Lcom/android/quickstep/views/AllAppsEduView$AllAppsEduTouchController;
.super Lcom/android/launcher3/uioverrides/touchcontrollers/PortraitStatesTouchController;
.source "AllAppsEduView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/views/AllAppsEduView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AllAppsEduTouchController"
.end annotation


# direct methods
.method static bridge synthetic -$$Nest$minitAllAppsAnimation(Lcom/android/quickstep/views/AllAppsEduView$AllAppsEduTouchController;)Lcom/android/launcher3/anim/AnimatorPlaybackController;
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/views/AllAppsEduView$AllAppsEduTouchController;->initAllAppsAnimation()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$misDraggingOrSettling(Lcom/android/quickstep/views/AllAppsEduView$AllAppsEduTouchController;)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/views/AllAppsEduView$AllAppsEduTouchController;->isDraggingOrSettling()Z

    move-result p0

    return p0
.end method

.method private constructor <init>(Lcom/android/launcher3/Launcher;)V
    .locals 0
    .param p1, "l"    # Lcom/android/launcher3/Launcher;

    .line 293
    invoke-direct {p0, p1}, Lcom/android/launcher3/uioverrides/touchcontrollers/PortraitStatesTouchController;-><init>(Lcom/android/launcher3/Launcher;)V

    .line 294
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher3/Launcher;Lcom/android/quickstep/views/AllAppsEduView$AllAppsEduTouchController-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/views/AllAppsEduView$AllAppsEduTouchController;-><init>(Lcom/android/launcher3/Launcher;)V

    return-void
.end method

.method private initAllAppsAnimation()Lcom/android/launcher3/anim/AnimatorPlaybackController;
    .locals 1

    .line 302
    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    iput-object v0, p0, Lcom/android/quickstep/views/AllAppsEduView$AllAppsEduTouchController;->mFromState:Lcom/android/launcher3/LauncherState;

    .line 303
    sget-object v0, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    iput-object v0, p0, Lcom/android/quickstep/views/AllAppsEduView$AllAppsEduTouchController;->mToState:Lcom/android/launcher3/LauncherState;

    .line 304
    invoke-virtual {p0}, Lcom/android/quickstep/views/AllAppsEduView$AllAppsEduTouchController;->initCurrentAnimation()F

    move-result v0

    iput v0, p0, Lcom/android/quickstep/views/AllAppsEduView$AllAppsEduTouchController;->mProgressMultiplier:F

    .line 305
    iget-object v0, p0, Lcom/android/quickstep/views/AllAppsEduView$AllAppsEduTouchController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    return-object v0
.end method

.method private isDraggingOrSettling()Z
    .locals 1

    .line 309
    iget-object v0, p0, Lcom/android/quickstep/views/AllAppsEduView$AllAppsEduTouchController;->mDetector:Lcom/android/launcher3/touch/SingleAxisSwipeDetector;

    invoke-virtual {v0}, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;->isDraggingOrSettling()Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected canInterceptTouch(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 298
    const/4 v0, 0x1

    return v0
.end method
