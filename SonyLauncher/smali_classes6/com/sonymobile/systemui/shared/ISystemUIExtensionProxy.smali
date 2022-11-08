.class public interface abstract Lcom/sonymobile/systemui/shared/ISystemUIExtensionProxy;
.super Ljava/lang/Object;
.source "ISystemUIExtensionProxy.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/systemui/shared/ISystemUIExtensionProxy$Stub;,
        Lcom/sonymobile/systemui/shared/ISystemUIExtensionProxy$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.sonymobile.systemui.shared.ISystemUIExtensionProxy"


# virtual methods
.method public abstract getRunningSplitTaskIds()[I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getSplitScreen()Lcom/android/wm/shell/splitscreen/ISplitScreen;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onInitialize(Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract registerSplitScreenListener(Lcom/android/wm/shell/splitscreen/ISplitScreenListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract reverseSideStagePosition()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract startIntentAndTask(Landroid/app/PendingIntent;Landroid/content/Intent;ILandroid/os/Bundle;Landroid/os/Bundle;IF)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract startTasks(ILandroid/os/Bundle;ILandroid/os/Bundle;IF)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unregisterSplitScreenListener(Lcom/android/wm/shell/splitscreen/ISplitScreenListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
