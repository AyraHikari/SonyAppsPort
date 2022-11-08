.class public Lcom/android/systemui/shared/system/smartspace/ILauncherUnlockAnimationController$Default;
.super Ljava/lang/Object;
.source "ILauncherUnlockAnimationController.java"

# interfaces
.implements Lcom/android/systemui/shared/system/smartspace/ILauncherUnlockAnimationController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/shared/system/smartspace/ILauncherUnlockAnimationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 42
    const/4 v0, 0x0

    return-object v0
.end method

.method public dispatchSmartspaceStateToSysui()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 39
    return-void
.end method

.method public playUnlockAnimation(ZJJ)V
    .locals 0
    .param p1, "unlocked"    # Z
    .param p2, "duration"    # J
    .param p4, "startDelay"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    return-void
.end method

.method public prepareForUnlock(ZLandroid/graphics/Rect;I)V
    .locals 0
    .param p1, "animateSmartspace"    # Z
    .param p2, "lockscreenSmartspaceBounds"    # Landroid/graphics/Rect;
    .param p3, "selectedPage"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15
    return-void
.end method

.method public setSmartspaceSelectedPage(I)V
    .locals 0
    .param p1, "selectedPage"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 30
    return-void
.end method

.method public setSmartspaceVisibility(I)V
    .locals 0
    .param p1, "visibility"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 34
    return-void
.end method

.method public setUnlockAmount(FZ)V
    .locals 0
    .param p1, "amount"    # F
    .param p2, "forceIfAnimating"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    return-void
.end method
