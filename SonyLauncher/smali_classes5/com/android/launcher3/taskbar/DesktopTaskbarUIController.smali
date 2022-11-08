.class public Lcom/android/launcher3/taskbar/DesktopTaskbarUIController;
.super Lcom/android/launcher3/taskbar/TaskbarUIController;
.source "DesktopTaskbarUIController.java"


# instance fields
.field private final mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/BaseQuickstepLauncher;)V
    .locals 0
    .param p1, "launcher"    # Lcom/android/launcher3/BaseQuickstepLauncher;

    .line 29
    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarUIController;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/android/launcher3/taskbar/DesktopTaskbarUIController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    .line 31
    return-void
.end method


# virtual methods
.method protected init(Lcom/android/launcher3/taskbar/TaskbarControllers;)V
    .locals 2
    .param p1, "taskbarControllers"    # Lcom/android/launcher3/taskbar/TaskbarControllers;

    .line 35
    iget-object v0, p0, Lcom/android/launcher3/taskbar/DesktopTaskbarUIController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseQuickstepLauncher;->getHotseat()Lcom/android/launcher3/Hotseat;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Hotseat;->setIconsAlpha(F)V

    .line 36
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 40
    iget-object v0, p0, Lcom/android/launcher3/taskbar/DesktopTaskbarUIController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseQuickstepLauncher;->getHotseat()Lcom/android/launcher3/Hotseat;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Hotseat;->setIconsAlpha(F)V

    .line 41
    return-void
.end method

.method public supportsVisualStashing()Z
    .locals 1

    .line 46
    const/4 v0, 0x0

    return v0
.end method
