.class public Lcom/sonymobile/systemui/shared/ISystemUIExtensionProxy$Default;
.super Ljava/lang/Object;
.source "ISystemUIExtensionProxy.java"

# interfaces
.implements Lcom/sonymobile/systemui/shared/ISystemUIExtensionProxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/systemui/shared/ISystemUIExtensionProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 49
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRunningSplitTaskIds()[I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 33
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSplitScreen()Lcom/android/wm/shell/splitscreen/ISplitScreen;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17
    const/4 v0, 0x0

    return-object v0
.end method

.method public onInitialize(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13
    return-void
.end method

.method public registerSplitScreenListener(Lcom/android/wm/shell/splitscreen/ISplitScreenListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/wm/shell/splitscreen/ISplitScreenListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    return-void
.end method

.method public reverseSideStagePosition()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 38
    return-void
.end method

.method public startIntentAndTask(Landroid/app/PendingIntent;Landroid/content/Intent;ILandroid/os/Bundle;Landroid/os/Bundle;IF)V
    .locals 0
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p2, "fillInIntent"    # Landroid/content/Intent;
    .param p3, "taskId"    # I
    .param p4, "mainOptions"    # Landroid/os/Bundle;
    .param p5, "sideOptions"    # Landroid/os/Bundle;
    .param p6, "sidePosition"    # I
    .param p7, "splitRatio"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 46
    return-void
.end method

.method public startTasks(ILandroid/os/Bundle;ILandroid/os/Bundle;IF)V
    .locals 0
    .param p1, "mainTaskId"    # I
    .param p2, "mainOptions"    # Landroid/os/Bundle;
    .param p3, "sideTaskId"    # I
    .param p4, "sideOptions"    # Landroid/os/Bundle;
    .param p5, "sidePosition"    # I
    .param p6, "splitRatio"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 42
    return-void
.end method

.method public unregisterSplitScreenListener(Lcom/android/wm/shell/splitscreen/ISplitScreenListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/wm/shell/splitscreen/ISplitScreenListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    return-void
.end method
