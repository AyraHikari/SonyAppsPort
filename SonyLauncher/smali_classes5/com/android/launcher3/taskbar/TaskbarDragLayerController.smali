.class public Lcom/android/launcher3/taskbar/TaskbarDragLayerController;
.super Ljava/lang/Object;
.source "TaskbarDragLayerController.java"

# interfaces
.implements Lcom/android/launcher3/taskbar/TaskbarControllers$LoggableTaskbarController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/taskbar/TaskbarDragLayerController$TaskbarDragLayerCallbacks;
    }
.end annotation


# instance fields
.field private final mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

.field private final mBgNavbar:Lcom/android/quickstep/AnimatedFloat;

.field private final mBgOffset:Lcom/android/quickstep/AnimatedFloat;

.field private final mBgOverride:Lcom/android/quickstep/AnimatedFloat;

.field private final mBgTaskbar:Lcom/android/quickstep/AnimatedFloat;

.field private mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

.field private final mFolderMargin:I

.field private final mImeBgTaskbar:Lcom/android/quickstep/AnimatedFloat;

.field private final mKeyguardBgTaskbar:Lcom/android/quickstep/AnimatedFloat;

.field private mLastSetBackgroundAlpha:F

.field private mNavButtonDarkIntensityMultiplier:Lcom/android/quickstep/AnimatedFloat;

.field private final mNotificationShadeBgTaskbar:Lcom/android/quickstep/AnimatedFloat;

.field private final mTaskbarDragLayer:Lcom/android/launcher3/taskbar/TaskbarDragLayer;


# direct methods
.method public static synthetic $r8$lambda$NMVoCkYXUHu-mY0Jg3YdFpdDDgY(Lcom/android/launcher3/taskbar/TaskbarDragLayerController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->updateBackgroundAlpha()V

    return-void
.end method

.method public static synthetic $r8$lambda$RNdRsgT6uhDUq5CmoXhdv-ZSkk0(Lcom/android/launcher3/taskbar/TaskbarDragLayerController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->updateBackgroundOffset()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmActivity(Lcom/android/launcher3/taskbar/TaskbarDragLayerController;)Lcom/android/launcher3/taskbar/TaskbarActivityContext;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmControllers(Lcom/android/launcher3/taskbar/TaskbarDragLayerController;)Lcom/android/launcher3/taskbar/TaskbarControllers;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    return-object p0
.end method

.method public constructor <init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;Lcom/android/launcher3/taskbar/TaskbarDragLayer;)V
    .locals 2
    .param p1, "activity"    # Lcom/android/launcher3/taskbar/TaskbarActivityContext;
    .param p2, "taskbarDragLayer"    # Lcom/android/launcher3/taskbar/TaskbarDragLayer;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lcom/android/quickstep/AnimatedFloat;

    new-instance v1, Lcom/android/launcher3/taskbar/TaskbarDragLayerController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/launcher3/taskbar/TaskbarDragLayerController$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/taskbar/TaskbarDragLayerController;)V

    invoke-direct {v0, v1}, Lcom/android/quickstep/AnimatedFloat;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->mBgTaskbar:Lcom/android/quickstep/AnimatedFloat;

    .line 39
    new-instance v0, Lcom/android/quickstep/AnimatedFloat;

    new-instance v1, Lcom/android/launcher3/taskbar/TaskbarDragLayerController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/launcher3/taskbar/TaskbarDragLayerController$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/taskbar/TaskbarDragLayerController;)V

    invoke-direct {v0, v1}, Lcom/android/quickstep/AnimatedFloat;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->mBgNavbar:Lcom/android/quickstep/AnimatedFloat;

    .line 40
    new-instance v0, Lcom/android/quickstep/AnimatedFloat;

    new-instance v1, Lcom/android/launcher3/taskbar/TaskbarDragLayerController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/launcher3/taskbar/TaskbarDragLayerController$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/taskbar/TaskbarDragLayerController;)V

    invoke-direct {v0, v1}, Lcom/android/quickstep/AnimatedFloat;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->mKeyguardBgTaskbar:Lcom/android/quickstep/AnimatedFloat;

    .line 41
    new-instance v0, Lcom/android/quickstep/AnimatedFloat;

    new-instance v1, Lcom/android/launcher3/taskbar/TaskbarDragLayerController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/launcher3/taskbar/TaskbarDragLayerController$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/taskbar/TaskbarDragLayerController;)V

    invoke-direct {v0, v1}, Lcom/android/quickstep/AnimatedFloat;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->mNotificationShadeBgTaskbar:Lcom/android/quickstep/AnimatedFloat;

    .line 43
    new-instance v0, Lcom/android/quickstep/AnimatedFloat;

    new-instance v1, Lcom/android/launcher3/taskbar/TaskbarDragLayerController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/launcher3/taskbar/TaskbarDragLayerController$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/taskbar/TaskbarDragLayerController;)V

    invoke-direct {v0, v1}, Lcom/android/quickstep/AnimatedFloat;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->mImeBgTaskbar:Lcom/android/quickstep/AnimatedFloat;

    .line 45
    new-instance v0, Lcom/android/quickstep/AnimatedFloat;

    new-instance v1, Lcom/android/launcher3/taskbar/TaskbarDragLayerController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/launcher3/taskbar/TaskbarDragLayerController$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/taskbar/TaskbarDragLayerController;)V

    invoke-direct {v0, v1}, Lcom/android/quickstep/AnimatedFloat;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->mBgOverride:Lcom/android/quickstep/AnimatedFloat;

    .line 48
    new-instance v0, Lcom/android/quickstep/AnimatedFloat;

    new-instance v1, Lcom/android/launcher3/taskbar/TaskbarDragLayerController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/launcher3/taskbar/TaskbarDragLayerController$$ExternalSyntheticLambda1;-><init>(Lcom/android/launcher3/taskbar/TaskbarDragLayerController;)V

    invoke-direct {v0, v1}, Lcom/android/quickstep/AnimatedFloat;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->mBgOffset:Lcom/android/quickstep/AnimatedFloat;

    .line 58
    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    .line 59
    iput-object p2, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->mTaskbarDragLayer:Lcom/android/launcher3/taskbar/TaskbarDragLayer;

    .line 60
    invoke-virtual {p2}, Lcom/android/launcher3/taskbar/TaskbarDragLayer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 61
    .local v0, "resources":Landroid/content/res/Resources;
    sget v1, Lcom/android/launcher3/R$dimen;->taskbar_folder_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->mFolderMargin:I

    .line 62
    return-void
.end method

.method private updateBackgroundAlpha()V
    .locals 4

    .line 122
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->mBgNavbar:Lcom/android/quickstep/AnimatedFloat;

    iget v0, v0, Lcom/android/quickstep/AnimatedFloat;->value:F

    .line 123
    .local v0, "bgNavbar":F
    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->mBgTaskbar:Lcom/android/quickstep/AnimatedFloat;

    iget v1, v1, Lcom/android/quickstep/AnimatedFloat;->value:F

    iget-object v2, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->mKeyguardBgTaskbar:Lcom/android/quickstep/AnimatedFloat;

    iget v2, v2, Lcom/android/quickstep/AnimatedFloat;->value:F

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->mNotificationShadeBgTaskbar:Lcom/android/quickstep/AnimatedFloat;

    iget v2, v2, Lcom/android/quickstep/AnimatedFloat;->value:F

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->mImeBgTaskbar:Lcom/android/quickstep/AnimatedFloat;

    iget v2, v2, Lcom/android/quickstep/AnimatedFloat;->value:F

    mul-float/2addr v1, v2

    .line 125
    .local v1, "bgTaskbar":F
    iget-object v2, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->mBgOverride:Lcom/android/quickstep/AnimatedFloat;

    iget v2, v2, Lcom/android/quickstep/AnimatedFloat;->value:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v3

    mul-float/2addr v2, v3

    iput v2, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->mLastSetBackgroundAlpha:F

    .line 126
    iget-object v3, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->mTaskbarDragLayer:Lcom/android/launcher3/taskbar/TaskbarDragLayer;

    invoke-virtual {v3, v2}, Lcom/android/launcher3/taskbar/TaskbarDragLayer;->setTaskbarBackgroundAlpha(F)V

    .line 128
    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->updateNavBarDarkIntensityMultiplier()V

    .line 129
    return-void
.end method

.method private updateBackgroundOffset()V
    .locals 2

    .line 132
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->mTaskbarDragLayer:Lcom/android/launcher3/taskbar/TaskbarDragLayer;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->mBgOffset:Lcom/android/quickstep/AnimatedFloat;

    iget v1, v1, Lcom/android/quickstep/AnimatedFloat;->value:F

    invoke-virtual {v0, v1}, Lcom/android/launcher3/taskbar/TaskbarDragLayer;->setTaskbarBackgroundOffset(F)V

    .line 134
    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->updateNavBarDarkIntensityMultiplier()V

    .line 135
    return-void
.end method

.method private updateNavBarDarkIntensityMultiplier()V
    .locals 3

    .line 139
    iget v0, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->mLastSetBackgroundAlpha:F

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->mBgOffset:Lcom/android/quickstep/AnimatedFloat;

    iget v1, v1, Lcom/android/quickstep/AnimatedFloat;->value:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v1, v2, v1

    mul-float/2addr v0, v1

    .line 140
    .local v0, "effectiveBgAlpha":F
    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->mNavButtonDarkIntensityMultiplier:Lcom/android/quickstep/AnimatedFloat;

    sub-float/2addr v2, v0

    invoke-virtual {v1, v2}, Lcom/android/quickstep/AnimatedFloat;->updateValue(F)V

    .line 141
    return-void
.end method


# virtual methods
.method public dumpLogs(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 5
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "TaskbarDragLayerController:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 147
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    iget-object v3, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->mBgOffset:Lcom/android/quickstep/AnimatedFloat;

    iget v3, v3, Lcom/android/quickstep/AnimatedFloat;->value:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v1, v4

    const-string v3, "%s\tmBgOffset=%.2f"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 148
    new-array v1, v0, [Ljava/lang/Object;

    aput-object p1, v1, v2

    iget v3, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->mFolderMargin:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v4

    const-string v3, "%s\tmFolderMargin=%dpx"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 149
    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v2

    iget v1, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->mLastSetBackgroundAlpha:F

    .line 150
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v0, v4

    .line 149
    const-string v1, "%s\tmLastSetBackgroundAlpha=%.2f"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 151
    return-void
.end method

.method public getFolderBoundingBox()Landroid/graphics/Rect;
    .locals 4

    .line 87
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->mTaskbarDragLayer:Lcom/android/launcher3/taskbar/TaskbarDragLayer;

    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/TaskbarDragLayer;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->mTaskbarDragLayer:Lcom/android/launcher3/taskbar/TaskbarDragLayer;

    .line 88
    invoke-virtual {v2}, Lcom/android/launcher3/taskbar/TaskbarDragLayer;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v3}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v3

    iget v3, v3, Lcom/android/launcher3/DeviceProfile;->taskbarSize:I

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 89
    .local v0, "boundingBox":Landroid/graphics/Rect;
    iget v1, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->mFolderMargin:I

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Rect;->inset(II)V

    .line 90
    return-object v0
.end method

.method public getImeBgTaskbar()Lcom/android/quickstep/AnimatedFloat;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->mImeBgTaskbar:Lcom/android/quickstep/AnimatedFloat;

    return-object v0
.end method

.method public getKeyguardBgTaskbar()Lcom/android/quickstep/AnimatedFloat;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->mKeyguardBgTaskbar:Lcom/android/quickstep/AnimatedFloat;

    return-object v0
.end method

.method public getNavbarBackgroundAlpha()Lcom/android/quickstep/AnimatedFloat;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->mBgNavbar:Lcom/android/quickstep/AnimatedFloat;

    return-object v0
.end method

.method public getNotificationShadeBgTaskbar()Lcom/android/quickstep/AnimatedFloat;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->mNotificationShadeBgTaskbar:Lcom/android/quickstep/AnimatedFloat;

    return-object v0
.end method

.method public getOverrideBackgroundAlpha()Lcom/android/quickstep/AnimatedFloat;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->mBgOverride:Lcom/android/quickstep/AnimatedFloat;

    return-object v0
.end method

.method public getTaskbarBackgroundAlpha()Lcom/android/quickstep/AnimatedFloat;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->mBgTaskbar:Lcom/android/quickstep/AnimatedFloat;

    return-object v0
.end method

.method public getTaskbarBackgroundOffset()Lcom/android/quickstep/AnimatedFloat;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->mBgOffset:Lcom/android/quickstep/AnimatedFloat;

    return-object v0
.end method

.method public init(Lcom/android/launcher3/taskbar/TaskbarControllers;)V
    .locals 2
    .param p1, "controllers"    # Lcom/android/launcher3/taskbar/TaskbarControllers;

    .line 65
    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    .line 66
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->mTaskbarDragLayer:Lcom/android/launcher3/taskbar/TaskbarDragLayer;

    new-instance v1, Lcom/android/launcher3/taskbar/TaskbarDragLayerController$TaskbarDragLayerCallbacks;

    invoke-direct {v1, p0}, Lcom/android/launcher3/taskbar/TaskbarDragLayerController$TaskbarDragLayerCallbacks;-><init>(Lcom/android/launcher3/taskbar/TaskbarDragLayerController;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/taskbar/TaskbarDragLayer;->init(Lcom/android/launcher3/taskbar/TaskbarDragLayerController$TaskbarDragLayerCallbacks;)V

    .line 68
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->navbarButtonsViewController:Lcom/android/launcher3/taskbar/NavbarButtonsViewController;

    .line 69
    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->getNavButtonDarkIntensityMultiplier()Lcom/android/quickstep/AnimatedFloat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->mNavButtonDarkIntensityMultiplier:Lcom/android/quickstep/AnimatedFloat;

    .line 71
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->mBgTaskbar:Lcom/android/quickstep/AnimatedFloat;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Lcom/android/quickstep/AnimatedFloat;->value:F

    .line 72
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->mKeyguardBgTaskbar:Lcom/android/quickstep/AnimatedFloat;

    iput v1, v0, Lcom/android/quickstep/AnimatedFloat;->value:F

    .line 73
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->mNotificationShadeBgTaskbar:Lcom/android/quickstep/AnimatedFloat;

    iput v1, v0, Lcom/android/quickstep/AnimatedFloat;->value:F

    .line 74
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->mImeBgTaskbar:Lcom/android/quickstep/AnimatedFloat;

    iput v1, v0, Lcom/android/quickstep/AnimatedFloat;->value:F

    .line 75
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->mBgOverride:Lcom/android/quickstep/AnimatedFloat;

    iput v1, v0, Lcom/android/quickstep/AnimatedFloat;->value:F

    .line 76
    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->updateBackgroundAlpha()V

    .line 77
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->mTaskbarDragLayer:Lcom/android/launcher3/taskbar/TaskbarDragLayer;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarDragLayer;->onDestroy()V

    .line 81
    return-void
.end method
